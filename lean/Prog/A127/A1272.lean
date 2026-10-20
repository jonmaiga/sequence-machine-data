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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
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
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.Opaque.C000
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
# A127200: Numerator of n-th partial sum of the Van der Waerden-Ulam binary measure of the primes.

The programs for A127200, there is no canonical definition to state claims against.
-/

/-! ## A127200.P2426346268828782704

`A000265(∑[A072762(n+2)])`
-/

namespace A127200.P2426346268828782704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072762 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127200.P2426346268828782704

/-! ## A127200.P13120736318872147938

`A000265(A072762(n+3)-A000720(n+3))`
-/

namespace A127200.P13120736318872147938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A072762 (n + 3) - A000720 (n + 3)).toNat

end

end A127200.P13120736318872147938

/-! ## A127200.P12143362835472429726

`A324377(A072762(n+2))`
-/

namespace A127200.P12143362835472429726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324377 (A072762 (n + 2)).toNat

end

end A127200.P12143362835472429726

/-!
# A127201: Base-2 logarithms of denominators corresponding to A127200.

The programs for A127201, there is no canonical definition to state claims against.
-/

/-! ## A127201.P12020226023893616136

`A070939(A127200(n+2)+A000586(n))`
-/

namespace A127201.P12020226023893616136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A127200 (n + 2) + A000586 n).toNat

end

end A127201.P12020226023893616136

/-! ## A127201.P2434949177062187532

`A070939(A127200(n+2)+A000931(n))`
-/

namespace A127201.P2434949177062187532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A127200 (n + 2) + A000931 n).toNat

end

end A127201.P2434949177062187532

/-! ## A127201.P14417278689370254254

`A113473(A127200(n+2)+A010059(n))`
-/

namespace A127201.P14417278689370254254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113473 (A127200 (n + 2) + A010059 n).toNat

end

end A127201.P14417278689370254254

/-! ## A127201.P7388833972945273219

`A070939(A173908(n)+A127200(n+2))`
-/

namespace A127201.P7388833972945273219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A173908 n + A127200 (n + 2)).toNat

end

end A127201.P7388833972945273219

/-! ## A127201.P12925661980429234105

`A302291(A127200(n+2)+A000586(n))`
-/

namespace A127201.P12925661980429234105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302291 (A127200 (n + 2) + A000586 n).toNat

end

end A127201.P12925661980429234105

/-!
# A127203: a(n) = gcd(A127202(n), A127202(n+1)).

The programs for A127203, there is no canonical definition to state claims against.
-/

/-! ## A127203.P6686441220631549530

`gcd(A127202(n+1), A127202(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A127203.P6686441220631549530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127202 (n + 1)) (A127202 (n + 2))

end

end A127203.P6686441220631549530

/-! ## A127203.P8713034628998980757

`gcd(A049310(A107597(n)), A338358(n+1))`
-/

namespace A127203.P8713034628998980757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049310 (A107597 n).toNat) (A338358 (n + 1))

end

end A127203.P8713034628998980757

/-! ## A127203.P9306820735549287030

`A227288(C(A007602(n+1), n))`
-/

namespace A127203.P9306820735549287030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227288 (Nat.choose (A007602 (n + 1)).toNat n)

end

end A127203.P9306820735549287030

/-! ## A127203.P10237632623718507048

`gcd(A007998(n+1), A278148(∑[n+2]+4))`
-/

namespace A127203.P10237632623718507048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007998 (n + 1)) (A278148 (∑ j ∈ Finset.range (n + 1), f1 j + 4))

end

end A127203.P10237632623718507048

/-!
# A127204: A monotonic doubly-fractal sequence. Erase the last (rightmost) digit of every integer: what is left is the sequence itself. The erased digits, one by one, form also the sequence itself.

The programs for A127204, there is no canonical definition to state claims against.
-/

/-! ## A127204.P1925610397717503007

`A375759(A262069(n+2))`
-/

namespace A127204.P1925610397717503007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375759 (A262069 (n + 2)).toNat

end

end A127204.P1925610397717503007

/-! ## A127204.P6717107444871212157

`A115570(A127296(n))+A048334(n)`
-/

namespace A127204.P6717107444871212157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115570 (A127296 n).toNat + A048334 n

end

end A127204.P6717107444871212157

/-! ## A127204.P734738180895031142

`A048306(n)+A014709(A288549(n))`
-/

namespace A127204.P734738180895031142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048306 n + A014709 (A288549 (n + 10)).toNat

end

end A127204.P734738180895031142

/-! ## A127204.P3294830723886369586

`A048320(n)+A014709(A288549(n))`
-/

namespace A127204.P3294830723886369586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048320 n + A014709 (A288549 (n + 10)).toNat

end

end A127204.P3294830723886369586

/-! ## A127204.P8482913346219531384

`A048334(n)+A014709(A288549(n))`
-/

namespace A127204.P8482913346219531384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048334 n + A014709 (A288549 (n + 10)).toNat

end

end A127204.P8482913346219531384

/-!
# A127207: Half-indexed Lucas numbers a(n)=round(sqrt((1+sqrt(5))/2)^n) a(2n)=L(n)=A000032, so a(n)=L(n/2).

The programs for A127207, the canonical program `A127207.P11699552124259406630` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127207 has offset 1).

The definition of A127207 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(sqrt((1+sqrt(5))/2)^(n+1))` (program `A127207.P11699552124259406630`, by `A127207.P11699552124259406630.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127207.P11699552124259406630

`round(sqrt((1+sqrt(5))/2)^(n+1))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127207

/-- `round(sqrt((1+sqrt(5))/2)^(n+1))` -/
def P11699552124259406630.Spec : Prop :=
  ∀ n, P11699552124259406630.a n = A127207 (n + 1)

theorem P11699552124259406630.correct : P11699552124259406630.Spec := by
  intro n
  simp only [A127207, Nat.add_sub_cancel]

end A127207

/-! ## A127207.P12776638335943523855

`ceil(floor(sqrt(A022410(n)))/2)`
-/

namespace A127207.P12776638335943523855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.sqrt (A022410 n) : ℚ) / 2⌉

end

end A127207.P12776638335943523855

namespace A127207

/-- `ceil(floor(sqrt(A022410(n)))/2)` -/
def P12776638335943523855.Spec : Prop :=
  ∀ n, P12776638335943523855.a n = A127207 (n + 1)

end A127207

/-! ## A127207.P6946755351940246298

`and(round(sqrt(A000204(n+1))), -1)`
-/

namespace A127207.P6946755351940246298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (Real.sqrt (A000204 (n + 1) : ℝ))) (-1)

end

end A127207.P6946755351940246298

namespace A127207

/-- `and(round(sqrt(A000204(n+1))), -1)` -/
def P6946755351940246298.Spec : Prop :=
  ∀ n, P6946755351940246298.a n = A127207 (n + 1)

end A127207

/-! ## A127207.P691035924805922263

`ceil(abs(sqrt(A000032(n+1))-1/2))`
-/

namespace A127207.P691035924805922263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.sqrt (A000032 (n + 1) : ℝ) - ((1 : ℚ) / 2 : ℝ)|⌉

end

end A127207.P691035924805922263

namespace A127207

/-- `ceil(abs(sqrt(A000032(n+1))-1/2))` -/
def P691035924805922263.Spec : Prop :=
  ∀ n, P691035924805922263.a n = A127207 (n + 1)

end A127207

/-! ## A127207.P16922278657032636507

`A000027(round(sqrt(A000032(n+1))))`
-/

namespace A127207.P16922278657032636507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (A000032 (n + 1) : ℝ))).toNat

end

end A127207.P16922278657032636507

namespace A127207

/-- `A000027(round(sqrt(A000032(n+1))))` -/
def P16922278657032636507.Spec : Prop :=
  ∀ n, P16922278657032636507.a n = A127207 (n + 1)

end A127207

/-!
# A127208: Union of all n-step Lucas sequences, that is, all sequences s(1-n) = s(2-n) = ... = s(-1) = -1, s(0) = n and for k > 0, s(k) = s(k-1) + ... + s(k-n).

The programs for A127208, there is no canonical definition to state claims against.
-/

/-! ## A127208.P16960925792282484056

`lt[0, char[A125127(n+1)]]`
-/

namespace A127208.P16960925792282484056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125127 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A127208.P16960925792282484056

/-! ## A127208.P8016706393329181587

`lt[0, char[A185722(n+1)]]`
-/

namespace A127208.P8016706393329181587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185722 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A127208.P8016706393329181587

/-! ## A127208.P14577647972205211413

`eq[1, char[A125127(n+2)]]`
-/

namespace A127208.P14577647972205211413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125127 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A127208.P14577647972205211413

/-! ## A127208.P15617025738624184034

`eq[1, char[A185722(n+3)]]`
-/

namespace A127208.P15617025738624184034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185722 (n + 3)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A127208.P15617025738624184034

/-!
# A127209: Primes p such that there exists at least one x in 2..p-1 with x = order(x) modulo p.

The programs for A127209, there is no canonical definition to state claims against.
-/

/-! ## A127209.P9453243977164731805

`p?[A066157(n+1)]`
-/

namespace A127209.P9453243977164731805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127209.P9453243977164731805

/-! ## A127209.P15905117720205587439

`filter[A066157(n+1), A010051(#)]`
-/

namespace A127209.P15905117720205587439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A127209.P15905117720205587439

/-! ## A127209.P11935825027566287038

`filter[A066157(n+1), A010055(#)]`
-/

namespace A127209.P11935825027566287038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A127209.P11935825027566287038

/-! ## A127209.P16502492609897740457

`filter[A066157(n+1), A069513(#)]`
-/

namespace A127209.P16502492609897740457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A127209.P16502492609897740457

/-! ## A127209.P899770617711631338

`filter[A066157(n+1), A080339(#)]`
-/

namespace A127209.P899770617711631338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A127209.P899770617711631338

/-! ## A127209.P4927164325903543722

`filter[A066157(n+1), A080545(#)]`
-/

namespace A127209.P4927164325903543722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A127209.P4927164325903543722

/-! ## A127209.P7692820145905318184

`filter[A066157(n+1), A174275(#)]`
-/

namespace A127209.P7692820145905318184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174275 (f1 j).toNat = 1) n)

end

end A127209.P7692820145905318184

/-! ## A127209.P16579286658677731369

`filter[A066157(n+1), A174897(#)]`
-/

namespace A127209.P16579286658677731369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A127209.P16579286658677731369

/-! ## A127209.P16300717203232944407

`filter[A066157(n+1), A257531(#)]`
-/

namespace A127209.P16300717203232944407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A127209.P16300717203232944407

/-! ## A127209.P5827260795796463119

`filter[A066157(n+1), A302777(#)]`
-/

namespace A127209.P5827260795796463119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A127209.P5827260795796463119

/-!
# A127210: a(n) = 3^n*Lucas(n), where Lucas = A000204.

The programs for A127210, the canonical program `A127210.P8472365847222884913` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127210 has offset 1).

The definition of A127210 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127210.P8472365847222884913

`3*a(n-1)+9*a(n-2)` with `a(0)=3, a(1)=27`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127210

/-- `3*a(n-1)+9*a(n-2)` -/
def P8472365847222884913.Spec : Prop :=
  ∀ n, (P8472365847222884913.a n : ℤ) = A127210 (n + 1)

theorem P8472365847222884913.correct : P8472365847222884913.Spec := by
  intro n
  simp only [A127210, Nat.add_sub_cancel]

end A127210

/-! ## A127210.P7546097429717376059

`3*A099012(n+1)+18*A099012(n)`
-/

namespace A127210.P7546097429717376059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A099012 (n + 1) + 18 * A099012 n

end

end A127210.P7546097429717376059

namespace A127210

/-- `3*A099012(n+1)+18*A099012(n)` -/
def P7546097429717376059.Spec : Prop :=
  ∀ n, P7546097429717376059.a n = A127210 (n + 1)

end A127210

/-! ## A127210.P9280924230705577584

`ogf((3+18x)/(1-3x-9x^2))`
-/

namespace A127210.P9280924230705577584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 18] [1, -3, -9] n

end

end A127210.P9280924230705577584

namespace A127210

/-- `ogf((3+18x)/(1-3x-9x^2))` -/
def P9280924230705577584.Spec : Prop :=
  ∀ n, P9280924230705577584.a n = A127210 (n + 1)

end A127210

/-! ## A127210.P11162311258135427074

`3^n*A022379(n)`
-/

namespace A127210.P11162311258135427074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A022379 n

end

end A127210.P11162311258135427074

namespace A127210

/-- `3^n*A022379(n)` -/
def P11162311258135427074.Spec : Prop :=
  ∀ n, P11162311258135427074.a n = A127210 (n + 1)

end A127210

/-! ## A127210.P9770112725973498092

`3^(n+1)*A000032(n+1)`
-/

namespace A127210.P9770112725973498092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) * A000032 (n + 1)

end

end A127210.P9770112725973498092

namespace A127210

/-- `3^(n+1)*A000032(n+1)` -/
def P9770112725973498092.Spec : Prop :=
  ∀ n, P9770112725973498092.a n = A127210 (n + 1)

end A127210

/-! ## A127210.P7650395500207252638

`3^(n+1)*A000204(n+1)`
-/

namespace A127210.P7650395500207252638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) * A000204 (n + 1)

end

end A127210.P7650395500207252638

namespace A127210

/-- `3^(n+1)*A000204(n+1)` -/
def P7650395500207252638.Spec : Prop :=
  ∀ n, P7650395500207252638.a n = A127210 (n + 1)

end A127210

/-! ## A127210.P14730299623409333734

`3^(n+1)*A329723(n+3)`
-/

namespace A127210.P14730299623409333734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) * A329723 (n + 3)

end

end A127210.P14730299623409333734

namespace A127210

/-- `3^(n+1)*A329723(n+3)` -/
def P14730299623409333734.Spec : Prop :=
  ∀ n, P14730299623409333734.a n = A127210 (n + 1)

end A127210

/-! ## A127210.P9005078444553150784

`Δ[A000032(n+2)]/3^-(n+1)`
-/

namespace A127210.P9005078444553150784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (3 : ℚ) ^ (-(n + 1 : ℤ) : ℤ)

end

end A127210.P9005078444553150784

namespace A127210

/-- `Δ[A000032(n+2)]/3^-(n+1)` -/
def P9005078444553150784.Spec : Prop :=
  ∀ n, P9005078444553150784.a n = (A127210 (n + 1) : ℚ)

end A127210

/-! ## A127210.P14983397450666457399

`A000032(n+1)*A000244(n+1)`
-/

namespace A127210.P14983397450666457399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A000244 (n + 1)

end

end A127210.P14983397450666457399

namespace A127210

/-- `A000032(n+1)*A000244(n+1)` -/
def P14983397450666457399.Spec : Prop :=
  ∀ n, P14983397450666457399.a n = A127210 (n + 1)

end A127210

/-! ## A127210.P10308970295909327285

`A000204(n+1)*A000244(n+1)`
-/

namespace A127210.P10308970295909327285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) * A000244 (n + 1)

end

end A127210.P10308970295909327285

namespace A127210

/-- `A000204(n+1)*A000244(n+1)` -/
def P10308970295909327285.Spec : Prop :=
  ∀ n, P10308970295909327285.a n = A127210 (n + 1)

end A127210

/-! ## A127210.P17785322768328166356

`A000032(n+1)*A038754(2*(n+1))`
-/

namespace A127210.P17785322768328166356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A038754 (2 * (n + 1))

end

end A127210.P17785322768328166356

namespace A127210

/-- `A000032(n+1)*A038754(2*(n+1))` -/
def P17785322768328166356.Spec : Prop :=
  ∀ n, P17785322768328166356.a n = A127210 (n + 1)

end A127210

/-! ## A127210.P13592798430983161305

`A115339(2*(n+1))/2*A008776(n+1)`
-/

namespace A127210.P13592798430983161305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115339 (2 * (n + 1)) : ℚ) / 2 * (A008776 (n + 1) : ℚ)

end

end A127210.P13592798430983161305

namespace A127210

/-- `A115339(2*(n+1))/2*A008776(n+1)` -/
def P13592798430983161305.Spec : Prop :=
  ∀ n, P13592798430983161305.a n = (A127210 (n + 1) : ℚ)

end A127210

/-! ## A127210.P15832044324213990630

`(A001060(n)+A000285(n))*A000244(n)`
-/

namespace A127210.P15832044324213990630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001060 n + A000285 n) * A000244 n

end

end A127210.P15832044324213990630

namespace A127210

/-- `(A001060(n)+A000285(n))*A000244(n)` -/
def P15832044324213990630.Spec : Prop :=
  ∀ n, P15832044324213990630.a n = A127210 (n + 1)

end A127210

/-! ## A127210.P12375211009247687828

`(A022121(n)+A000045(n))*A000244(n)`
-/

namespace A127210.P12375211009247687828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022121 n + A000045 n) * A000244 n

end

end A127210.P12375211009247687828

namespace A127210

/-- `(A022121(n)+A000045(n))*A000244(n)` -/
def P12375211009247687828.Spec : Prop :=
  ∀ n, P12375211009247687828.a n = A127210 (n + 1)

end A127210

/-! ## A127210.P4155056277683058432

`(A022122(n)-A000045(n))*A000244(n)`
-/

namespace A127210.P4155056277683058432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022122 n - A000045 n) * A000244 n

end

end A127210.P4155056277683058432

namespace A127210

/-- `(A022122(n)-A000045(n))*A000244(n)` -/
def P4155056277683058432.Spec : Prop :=
  ∀ n, P4155056277683058432.a n = A127210 (n + 1)

end A127210

/-! ## A127210.P4420191762914348983

`(A000285(n)-A000045(n))*A000244(n+1)`
-/

namespace A127210.P4420191762914348983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000285 n - A000045 n) * A000244 (n + 1)

end

end A127210.P4420191762914348983

namespace A127210

/-- `(A000285(n)-A000045(n))*A000244(n+1)` -/
def P4420191762914348983.Spec : Prop :=
  ∀ n, P4420191762914348983.a n = A127210 (n + 1)

end A127210

/-! ## A127210.P12415831411797860334

`(A135992(n+1)+A108362(n+1))*A000244(n+1)`
-/

namespace A127210.P12415831411797860334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A135992 (n + 1) + A108362 (n + 1)) * A000244 (n + 1)

end

end A127210.P12415831411797860334

namespace A127210

/-- `(A135992(n+1)+A108362(n+1))*A000244(n+1)` -/
def P12415831411797860334.Spec : Prop :=
  ∀ n, P12415831411797860334.a n = A127210 (n + 1)

end A127210

/-! ## A127210.P3339524971782488392

`A000032(n+1)*A034472(n+1)-A000032(n+1)`
-/

namespace A127210.P3339524971782488392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A034472 (n + 1) - A000032 (n + 1)

end

end A127210.P3339524971782488392

namespace A127210

/-- `A000032(n+1)*A034472(n+1)-A000032(n+1)` -/
def P3339524971782488392.Spec : Prop :=
  ∀ n, P3339524971782488392.a n = A127210 (n + 1)

end A127210

/-! ## A127210.P6209238937753113609

`A000204(n+1)*A034472(n+1)-A000204(n+1)`
-/

namespace A127210.P6209238937753113609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) * A034472 (n + 1) - A000204 (n + 1)

end

end A127210.P6209238937753113609

namespace A127210

/-- `A000204(n+1)*A034472(n+1)-A000204(n+1)` -/
def P6209238937753113609.Spec : Prop :=
  ∀ n, P6209238937753113609.a n = A127210 (n + 1)

end A127210

/-! ## A127210.P8996010057330567427

`A000244(n+1)/A000045(n+1)*A001906(n+1)`
-/

namespace A127210.P8996010057330567427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 (n + 1) : ℚ) / (A000045 (n + 1) : ℚ) * (A001906 (n + 1) : ℚ)

end

end A127210.P8996010057330567427

namespace A127210

/-- `A000244(n+1)/A000045(n+1)*A001906(n+1)` -/
def P8996010057330567427.Spec : Prop :=
  ∀ n, P8996010057330567427.a n = (A127210 (n + 1) : ℚ)

end A127210

/-!
# A127211: a(n) = 4^n*Lucas(n), where Lucas = A000032.

The programs for A127211, the canonical program `A127211.P17848149068613523012` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127211 has offset 0).

The definition of A127211 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127211.P17848149068613523012

`4*a(n-1)+16*a(n-2)` with `a(0)=2, a(1)=4`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127211

/-- `4*a(n-1)+16*a(n-2)` -/
def P17848149068613523012.Spec : Prop :=
  ∀ n, (P17848149068613523012.a n : ℤ) = A127211 n

theorem P17848149068613523012.correct : P17848149068613523012.Spec := by
  intro n
  simp only [A127211]

end A127211

/-! ## A127211.P8581944926886505156

`2^n*A087131(n)`
-/

namespace A127211.P8581944926886505156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A087131 n

end

end A127211.P8581944926886505156

namespace A127211

/-- `2^n*A087131(n)` -/
def P8581944926886505156.Spec : Prop :=
  ∀ n, P8581944926886505156.a n = A127211 n

end A127211

/-! ## A127211.P16243876396445831799

`ogf((-2+4x)/(-1+4x+16x^2))`
-/

namespace A127211.P16243876396445831799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4] [1, -4, -16] n

end

end A127211.P16243876396445831799

namespace A127211

/-- `ogf((-2+4x)/(-1+4x+16x^2))` -/
def P16243876396445831799.Spec : Prop :=
  ∀ n, P16243876396445831799.a n = A127211 n

end A127211

/-! ## A127211.P3852391047542696308

`2^(n+1)*A084057(n)`
-/

namespace A127211.P3852391047542696308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A084057 n

end

end A127211.P3852391047542696308

namespace A127211

/-- `2^(n+1)*A084057(n)` -/
def P3852391047542696308.Spec : Prop :=
  ∀ n, P3852391047542696308.a n = A127211 n

end A127211

/-! ## A127211.P709300515733596127

`A000032(n)*A000302(n)`
-/

namespace A127211.P709300515733596127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A000302 n

end

end A127211.P709300515733596127

namespace A127211

/-- `A000032(n)*A000302(n)` -/
def P709300515733596127.Spec : Prop :=
  ∀ n, P709300515733596127.a n = A127211 n

end A127211

/-! ## A127211.P16347605866455018519

`A000032(n)*A000079(n)²`
-/

namespace A127211.P16347605866455018519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A000079 n ^ 2

end

end A127211.P16347605866455018519

namespace A127211

/-- `A000032(n)*A000079(n)²` -/
def P16347605866455018519.Spec : Prop :=
  ∀ n, P16347605866455018519.a n = A127211 n

end A127211

/-! ## A127211.P3920529002599155053

`A000032(n)*A122803(n)²`
-/

namespace A127211.P3920529002599155053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A122803 n ^ 2

end

end A127211.P3920529002599155053

namespace A127211

/-- `A000032(n)*A122803(n)²` -/
def P3920529002599155053.Spec : Prop :=
  ∀ n, P3920529002599155053.a n = A127211 n

end A127211

/-! ## A127211.P10654916454134213931

`Δ[A002450(n)]*A000032(n)`
-/

namespace A127211.P10654916454134213931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000032 n

end

end A127211.P10654916454134213931

namespace A127211

/-- `Δ[A002450(n)]*A000032(n)` -/
def P10654916454134213931.Spec : Prop :=
  ∀ n, P10654916454134213931.a n = A127211 n

end A127211

/-! ## A127211.P1617631064412085556

`A000032(n)*A000079(2*n)`
-/

namespace A127211.P1617631064412085556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A000079 (2 * n)

end

end A127211.P1617631064412085556

namespace A127211

/-- `A000032(n)*A000079(2*n)` -/
def P1617631064412085556.Spec : Prop :=
  ∀ n, P1617631064412085556.a n = A127211 n

end A127211

/-! ## A127211.P10614347076673065696

`2*A000079(n)*A084057(n)`
-/

namespace A127211.P10614347076673065696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000079 n * A084057 n)

end

end A127211.P10614347076673065696

namespace A127211

/-- `2*A000079(n)*A084057(n)` -/
def P10614347076673065696.Spec : Prop :=
  ∀ n, P10614347076673065696.a n = A127211 n

end A127211

/-! ## A127211.P4618884905802150888

`A000032(n)*A122803(2*n)`
-/

namespace A127211.P4618884905802150888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A122803 (2 * n)

end

end A127211.P4618884905802150888

namespace A127211

/-- `A000032(n)*A122803(2*n)` -/
def P4618884905802150888.Spec : Prop :=
  ∀ n, P4618884905802150888.a n = A127211 n

end A127211

/-! ## A127211.P6334395796058017437

`A000032(n)*A199572(2*n)`
-/

namespace A127211.P6334395796058017437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A199572 (2 * n)

end

end A127211.P6334395796058017437

namespace A127211

/-- `A000032(n)*A199572(2*n)` -/
def P6334395796058017437.Spec : Prop :=
  ∀ n, P6334395796058017437.a n = A127211 n

end A127211

/-! ## A127211.P7254267400926285076

`A000032(n)/2*A004171(n)`
-/

namespace A127211.P7254267400926285076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 n : ℚ) / 2 * (A004171 n : ℚ)

end

end A127211.P7254267400926285076

namespace A127211

/-- `A000032(n)/2*A004171(n)` -/
def P7254267400926285076.Spec : Prop :=
  ∀ n, P7254267400926285076.a n = (A127211 n : ℚ)

end A127211

/-! ## A127211.P13605845228978931014

`∑[A011782(n)]²*A000032(n)`
-/

namespace A127211.P13605845228978931014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 * A000032 n

end

end A127211.P13605845228978931014

namespace A127211

/-- `∑[A011782(n)]²*A000032(n)` -/
def P13605845228978931014.Spec : Prop :=
  ∀ n, P13605845228978931014.a n = A127211 n

end A127211

/-! ## A127211.P9164186671101113590

`Δ[A000051(n)]²*A000032(n)`
-/

namespace A127211.P9164186671101113590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A000032 n

end

end A127211.P9164186671101113590

namespace A127211

/-- `Δ[A000051(n)]²*A000032(n)` -/
def P9164186671101113590.Spec : Prop :=
  ∀ n, P9164186671101113590.a n = A127211 n

end A127211

/-! ## A127211.P951233719073182323

`Δ[A000225(n)]²*A000032(n)`
-/

namespace A127211.P951233719073182323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A000032 n

end

end A127211.P951233719073182323

namespace A127211

/-- `Δ[A000225(n)]²*A000032(n)` -/
def P951233719073182323.Spec : Prop :=
  ∀ n, P951233719073182323.a n = A127211 n

end A127211

/-! ## A127211.P3341972339318921831

`Δ[A168616(n)]²*A000032(n)`
-/

namespace A127211.P3341972339318921831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A000032 n

end

end A127211.P3341972339318921831

namespace A127211

/-- `Δ[A168616(n)]²*A000032(n)` -/
def P3341972339318921831.Spec : Prop :=
  ∀ n, P3341972339318921831.a n = A127211 n

end A127211

/-! ## A127211.P10397786942967435817

`A000032(n)*A011782(2*n+1)`
-/

namespace A127211.P10397786942967435817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A011782 (2 * n + 1)

end

end A127211.P10397786942967435817

namespace A127211

/-- `A000032(n)*A011782(2*n+1)` -/
def P10397786942967435817.Spec : Prop :=
  ∀ n, P10397786942967435817.a n = A127211 n

end A127211

/-! ## A127211.P4738616066028500426

`A000032(n)*A131577(2*n+1)`
-/

namespace A127211.P4738616066028500426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A131577 (2 * n + 1)

end

end A127211.P4738616066028500426

namespace A127211

/-- `A000032(n)*A131577(2*n+1)` -/
def P4738616066028500426.Spec : Prop :=
  ∀ n, P4738616066028500426.a n = A127211 n

end A127211

/-! ## A127211.P5356227887746011155

`A000079(n)²*A090244(2*n+1)`
-/

namespace A127211.P5356227887746011155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * A090244 (2 * n + 1)

end

end A127211.P5356227887746011155

namespace A127211

/-- `A000079(n)²*A090244(2*n+1)` -/
def P5356227887746011155.Spec : Prop :=
  ∀ n, P5356227887746011155.a n = A127211 n

end A127211

/-!
# A127212: a(n) = 5^n*Lucas(n), where Lucas = A000204.

The programs for A127212, the canonical program `A127212.P15980616748462530564` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127212 has offset 1).

The definition of A127212 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127212.P15980616748462530564

`5*a(n-1)+25*a(n-2)` with `a(0)=5, a(1)=75`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127212

/-- `5*a(n-1)+25*a(n-2)` -/
def P15980616748462530564.Spec : Prop :=
  ∀ n, (P15980616748462530564.a n : ℤ) = A127212 (n + 1)

theorem P15980616748462530564.correct : P15980616748462530564.Spec := by
  intro n
  simp only [A127212, Nat.add_sub_cancel]

end A127212

/-! ## A127212.P11949474892771299192

`lcm(5^(n+1), A075193(n))`
-/

namespace A127212.P11949474892771299192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (5 ^ (n + 1) : ℤ) (A075193 n)

end

end A127212.P11949474892771299192

namespace A127212

/-- `lcm(5^(n+1), A075193(n))` -/
def P11949474892771299192.Spec : Prop :=
  ∀ n, (P11949474892771299192.a n : ℤ) = A127212 (n + 1)

end A127212

/-! ## A127212.P8290671855376702806

`5^(n+1)*A000032(n+1)`
-/

namespace A127212.P8290671855376702806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ (n + 1) : ℤ) * A000032 (n + 1)

end

end A127212.P8290671855376702806

namespace A127212

/-- `5^(n+1)*A000032(n+1)` -/
def P8290671855376702806.Spec : Prop :=
  ∀ n, P8290671855376702806.a n = A127212 (n + 1)

end A127212

/-! ## A127212.P14794112740914829686

`5^(n+1)*A000204(n+1)`
-/

namespace A127212.P14794112740914829686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ (n + 1) : ℤ) * A000204 (n + 1)

end

end A127212.P14794112740914829686

namespace A127212

/-- `5^(n+1)*A000204(n+1)` -/
def P14794112740914829686.Spec : Prop :=
  ∀ n, P14794112740914829686.a n = A127212 (n + 1)

end A127212

/-! ## A127212.P7010450886644825174

`Δ[A000032(n+2)]/5^-(n+1)`
-/

namespace A127212.P7010450886644825174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (5 : ℚ) ^ (-(n + 1 : ℤ) : ℤ)

end

end A127212.P7010450886644825174

namespace A127212

/-- `Δ[A000032(n+2)]/5^-(n+1)` -/
def P7010450886644825174.Spec : Prop :=
  ∀ n, P7010450886644825174.a n = (A127212 (n + 1) : ℚ)

end A127212

/-! ## A127212.P17918916973570191976

`A000032(n+1)*A000351(n+1)`
-/

namespace A127212.P17918916973570191976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A000351 (n + 1)

end

end A127212.P17918916973570191976

namespace A127212

/-- `A000032(n+1)*A000351(n+1)` -/
def P17918916973570191976.Spec : Prop :=
  ∀ n, P17918916973570191976.a n = A127212 (n + 1)

end A127212

/-! ## A127212.P8732649834644004061

`A000204(n+1)*A000351(n+1)`
-/

namespace A127212.P8732649834644004061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) * A000351 (n + 1)

end

end A127212.P8732649834644004061

namespace A127212

/-- `A000204(n+1)*A000351(n+1)` -/
def P8732649834644004061.Spec : Prop :=
  ∀ n, P8732649834644004061.a n = A127212 (n + 1)

end A127212

/-! ## A127212.P3967840217702755847

`A000032(n+1)*A056451(2*(n+1))`
-/

namespace A127212.P3967840217702755847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A056451 (2 * (n + 1))

end

end A127212.P3967840217702755847

namespace A127212

/-- `A000032(n+1)*A056451(2*(n+1))` -/
def P3967840217702755847.Spec : Prop :=
  ∀ n, P3967840217702755847.a n = A127212 (n + 1)

end A127212

/-! ## A127212.P14675467930992698360

`A000204(n+1)*A056487(2*(n+1))`
-/

namespace A127212.P14675467930992698360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) * A056487 (2 * (n + 1))

end

end A127212.P14675467930992698360

namespace A127212

/-- `A000204(n+1)*A056487(2*(n+1))` -/
def P14675467930992698360.Spec : Prop :=
  ∀ n, P14675467930992698360.a n = A127212 (n + 1)

end A127212

/-! ## A127212.P2730028104199772955

`A000032(n+1)*A162963(2*(n+1))`
-/

namespace A127212.P2730028104199772955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A162963 (2 * (n + 1))

end

end A127212.P2730028104199772955

namespace A127212

/-- `A000032(n+1)*A162963(2*(n+1))` -/
def P2730028104199772955.Spec : Prop :=
  ∀ n, P2730028104199772955.a n = A127212 (n + 1)

end A127212

/-! ## A127212.P7787062955275814404

`A000032(n+1)*A163114(2*(n+1))`
-/

namespace A127212.P7787062955275814404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A163114 (2 * (n + 1))

end

end A127212.P7787062955275814404

namespace A127212

/-- `A000032(n+1)*A163114(2*(n+1))` -/
def P7787062955275814404.Spec : Prop :=
  ∀ n, P7787062955275814404.a n = A127212 (n + 1)

end A127212

/-! ## A127212.P14220878927096921023

`A000032(n+1)*A163141(2*(n+1))`
-/

namespace A127212.P14220878927096921023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A163141 (2 * (n + 1))

end

end A127212.P14220878927096921023

namespace A127212

/-- `A000032(n+1)*A163141(2*(n+1))` -/
def P14220878927096921023.Spec : Prop :=
  ∀ n, P14220878927096921023.a n = A127212 (n + 1)

end A127212

/-! ## A127212.P10500690679266612833

`A000204(n+1)*A163114(2*(n+1))`
-/

namespace A127212.P10500690679266612833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) * A163114 (2 * (n + 1))

end

end A127212.P10500690679266612833

namespace A127212

/-- `A000204(n+1)*A163114(2*(n+1))` -/
def P10500690679266612833.Spec : Prop :=
  ∀ n, P10500690679266612833.a n = A127212 (n + 1)

end A127212

/-! ## A127212.P17121252964899518432

`A020876(n+1)/A000045(n+1)*A030191(n)`
-/

namespace A127212.P17121252964899518432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020876 (n + 1) : ℚ) / (A000045 (n + 1) : ℚ) * (A030191 n : ℚ)

end

end A127212.P17121252964899518432

namespace A127212

/-- `A020876(n+1)/A000045(n+1)*A030191(n)` -/
def P17121252964899518432.Spec : Prop :=
  ∀ n, P17121252964899518432.a n = (A127212 (n + 1) : ℚ)

end A127212

/-! ## A127212.P9231654597504704373

`A000204(n+1)*A034474(n+1)-A000204(n+1)`
-/

namespace A127212.P9231654597504704373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) * A034474 (n + 1) - A000204 (n + 1)

end

end A127212.P9231654597504704373

namespace A127212

/-- `A000204(n+1)*A034474(n+1)-A000204(n+1)` -/
def P9231654597504704373.Spec : Prop :=
  ∀ n, P9231654597504704373.a n = A127212 (n + 1)

end A127212

/-! ## A127212.P18356106363336089918

`A020876(n+1)/A000045(n+1)*A093131(n+1)`
-/

namespace A127212.P18356106363336089918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020876 (n + 1) : ℚ) / (A000045 (n + 1) : ℚ) * (A093131 (n + 1) : ℚ)

end

end A127212.P18356106363336089918

namespace A127212

/-- `A020876(n+1)/A000045(n+1)*A093131(n+1)` -/
def P18356106363336089918.Spec : Prop :=
  ∀ n, P18356106363336089918.a n = (A127212 (n + 1) : ℚ)

end A127212

/-!
# A127213: a(n) = 6^n*Lucas(n), where Lucas = A000204.

The programs for A127213, the canonical program `A127213.P4843990588406993148` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127213 has offset 1).

The definition of A127213 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127213.P4843990588406993148

`6*a(n-1)+36*a(n-2)` with `a(0)=6, a(1)=108`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127213

/-- `6*a(n-1)+36*a(n-2)` -/
def P4843990588406993148.Spec : Prop :=
  ∀ n, (P4843990588406993148.a n : ℤ) = A127213 (n + 1)

theorem P4843990588406993148.correct : P4843990588406993148.Spec := by
  intro n
  simp only [A127213, Nat.add_sub_cancel]

end A127213

/-! ## A127213.P4207795244690033590

`6^(n+1)*A182001(∑[n])`
-/

namespace A127213.P4207795244690033590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ (n + 1) : ℤ) * A182001 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127213.P4207795244690033590

namespace A127213

/-- `6^(n+1)*A182001(∑[n])` -/
def P4207795244690033590.Spec : Prop :=
  ∀ n, P4207795244690033590.a n = A127213 (n + 1)

end A127213

/-! ## A127213.P11678733185024347810

`6^(n+1)*Δ[A014739(n)]`
-/

namespace A127213.P11678733185024347810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ (n + 1) : ℤ) * (f1 (n + 1) - f1 n)

end

end A127213.P11678733185024347810

namespace A127213

/-- `6^(n+1)*Δ[A014739(n)]` -/
def P11678733185024347810.Spec : Prop :=
  ∀ n, P11678733185024347810.a n = A127213 (n + 1)

end A127213

/-! ## A127213.P3393788502171038477

`3^(n+1)*A087131(n+1)`
-/

namespace A127213.P3393788502171038477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) * A087131 (n + 1)

end

end A127213.P3393788502171038477

namespace A127213

/-- `3^(n+1)*A087131(n+1)` -/
def P3393788502171038477.Spec : Prop :=
  ∀ n, P3393788502171038477.a n = A127213 (n + 1)

end A127213

/-! ## A127213.P4280940692100929010

`6^(n+1)*A000032(n+1)`
-/

namespace A127213.P4280940692100929010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ (n + 1) : ℤ) * A000032 (n + 1)

end

end A127213.P4280940692100929010

namespace A127213

/-- `6^(n+1)*A000032(n+1)` -/
def P4280940692100929010.Spec : Prop :=
  ∀ n, P4280940692100929010.a n = A127213 (n + 1)

end A127213

/-! ## A127213.P14820174213224561326

`6^(n+1)*A000204(n+1)`
-/

namespace A127213.P14820174213224561326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ (n + 1) : ℤ) * A000204 (n + 1)

end

end A127213.P14820174213224561326

namespace A127213

/-- `6^(n+1)*A000204(n+1)` -/
def P14820174213224561326.Spec : Prop :=
  ∀ n, P14820174213224561326.a n = A127213 (n + 1)

end A127213

/-! ## A127213.P15163366143881532745

`(A001610(n)+1)*6^(n+1)`
-/

namespace A127213.P15163366143881532745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001610 n + 1) * (6 ^ (n + 1) : ℤ)

end

end A127213.P15163366143881532745

namespace A127213

/-- `(A001610(n)+1)*6^(n+1)` -/
def P15163366143881532745.Spec : Prop :=
  ∀ n, P15163366143881532745.a n = A127213 (n + 1)

end A127213

/-! ## A127213.P10429516290981588153

`Δ[A048578(n)]*A127210(n+1)`
-/

namespace A127213.P10429516290981588153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A127210 (n + 1)

end

end A127213.P10429516290981588153

namespace A127213

/-- `Δ[A048578(n)]*A127210(n+1)` -/
def P10429516290981588153.Spec : Prop :=
  ∀ n, P10429516290981588153.a n = A127213 (n + 1)

end A127213

/-! ## A127213.P13369734767838449723

`A000032(n+1)*A000400(n+1)`
-/

namespace A127213.P13369734767838449723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A000400 (n + 1)

end

end A127213.P13369734767838449723

namespace A127213

/-- `A000032(n+1)*A000400(n+1)` -/
def P13369734767838449723.Spec : Prop :=
  ∀ n, P13369734767838449723.a n = A127213 (n + 1)

end A127213

/-! ## A127213.P3238836993277541082

`A000204(n+1)*A000400(n+1)`
-/

namespace A127213.P3238836993277541082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) * A000400 (n + 1)

end

end A127213.P3238836993277541082

namespace A127213

/-- `A000204(n+1)*A000400(n+1)` -/
def P3238836993277541082.Spec : Prop :=
  ∀ n, P3238836993277541082.a n = A127213 (n + 1)

end A127213

/-! ## A127213.P6067337591389866619

`A025192(n+2)*A084057(n+1)`
-/

namespace A127213.P6067337591389866619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 (n + 2) * A084057 (n + 1)

end

end A127213.P6067337591389866619

namespace A127213

/-- `A025192(n+2)*A084057(n+1)` -/
def P6067337591389866619.Spec : Prop :=
  ∀ n, P6067337591389866619.a n = A127213 (n + 1)

end A127213

/-! ## A127213.P17078832502691901856

`Δ[A000225(n+1)]*A127210(n+1)`
-/

namespace A127213.P17078832502691901856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A127210 (n + 1)

end

end A127213.P17078832502691901856

namespace A127213

/-- `Δ[A000225(n+1)]*A127210(n+1)` -/
def P17078832502691901856.Spec : Prop :=
  ∀ n, P17078832502691901856.a n = A127213 (n + 1)

end A127213

/-! ## A127213.P2937354693767807948

`record[A166450(n+2)]*A084057(n+1)`
-/

namespace A127213.P2937354693767807948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166450 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A084057 (n + 1)

end

end A127213.P2937354693767807948

namespace A127213

/-- `record[A166450(n+2)]*A084057(n+1)` -/
def P2937354693767807948.Spec : Prop :=
  ∀ n, P2937354693767807948.a n = A127213 (n + 1)

end A127213

/-! ## A127213.P12597593043185064364

`A084057(n+1)*A166450(2*(n+1))`
-/

namespace A127213.P12597593043185064364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084057 (n + 1) * A166450 (2 * (n + 1))

end

end A127213.P12597593043185064364

namespace A127213

/-- `A084057(n+1)*A166450(2*(n+1))` -/
def P12597593043185064364.Spec : Prop :=
  ∀ n, P12597593043185064364.a n = A127213 (n + 1)

end A127213

/-! ## A127213.P7737511537438628683

`A000204(n+1)*A026532(2*n+3)`
-/

namespace A127213.P7737511537438628683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) * A026532 (2 * n + 3)

end

end A127213.P7737511537438628683

namespace A127213

/-- `A000204(n+1)*A026532(2*n+3)` -/
def P7737511537438628683.Spec : Prop :=
  ∀ n, P7737511537438628683.a n = A127213 (n + 1)

end A127213

/-! ## A127213.P503170540611674198

`A087131(n+1)/A023424(n)*A127222(n+1)`
-/

namespace A127213.P503170540611674198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087131 (n + 1) : ℚ) / (A023424 n : ℚ) * (A127222 (n + 1) : ℚ)

end

end A127213.P503170540611674198

namespace A127213

/-- `A087131(n+1)/A023424(n)*A127222(n+1)` -/
def P503170540611674198.Spec : Prop :=
  ∀ n, P503170540611674198.a n = (A127213 (n + 1) : ℚ)

end A127213

/-! ## A127213.P9031838599953758747

`A127210(n+1)/A001644(n+1)*A127214(n+1)`
-/

namespace A127213.P9031838599953758747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127210 (n + 1) : ℚ) / (A001644 (n + 1) : ℚ) * (A127214 (n + 1) : ℚ)

end

end A127213.P9031838599953758747

namespace A127213

/-- `A127210(n+1)/A001644(n+1)*A127214(n+1)` -/
def P9031838599953758747.Spec : Prop :=
  ∀ n, P9031838599953758747.a n = (A127213 (n + 1) : ℚ)

end A127213

/-! ## A127213.P14042364178969937347

`A127210(n+1)/A001648(n+1)*A127216(n+1)`
-/

namespace A127213.P14042364178969937347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127210 (n + 1) : ℚ) / (A001648 (n + 1) : ℚ) * (A127216 (n + 1) : ℚ)

end

end A127213.P14042364178969937347

namespace A127213

/-- `A127210(n+1)/A001648(n+1)*A127216(n+1)` -/
def P14042364178969937347.Spec : Prop :=
  ∀ n, P14042364178969937347.a n = (A127213 (n + 1) : ℚ)

end A127213

/-! ## A127213.P3531564855561455857

`A087131(n+1)/A074048(n+1)*A127222(n+1)`
-/

namespace A127213.P3531564855561455857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087131 (n + 1) : ℚ) / (A074048 (n + 1) : ℚ) * (A127222 (n + 1) : ℚ)

end

end A127213.P3531564855561455857

namespace A127213

/-- `A087131(n+1)/A074048(n+1)*A127222(n+1)` -/
def P3531564855561455857.Spec : Prop :=
  ∀ n, P3531564855561455857.a n = (A127213 (n + 1) : ℚ)

end A127213

/-! ## A127213.P17108499064012277842

`A127210(n+1)/A073817(n+1)*A127216(n+1)`
-/

namespace A127213.P17108499064012277842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127210 (n + 1) : ℚ) / (A073817 (n + 1) : ℚ) * (A127216 (n + 1) : ℚ)

end

end A127213.P17108499064012277842

namespace A127213

/-- `A127210(n+1)/A073817(n+1)*A127216(n+1)` -/
def P17108499064012277842.Spec : Prop :=
  ∀ n, P17108499064012277842.a n = (A127213 (n + 1) : ℚ)

end A127213

/-!
# A127214: a(n) = 2^n*tribonacci(n) or (2^n)*A001644(n+1).

The programs for A127214, the canonical program `A127214.P12019303537521758473` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127214 has offset 1).

The definition of A127214 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+1)*A001644(n+1)` (program `A127214.P12019303537521758473`, by `A127214.P12019303537521758473.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127214.P13565072628199397625

`2*a(n-1)+4*a(n-2)+8*a(n-3)` with `a(0)=2, a(1)=12, a(2)=56`
-/

namespace A127214.P13565072628199397625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 12, 56] fun n a =>
  2 * a (n - 1) + 4 * a (n - 2) + 8 * a (n - 3)

end

end A127214.P13565072628199397625

namespace A127214

/-- `2*a(n-1)+4*a(n-2)+8*a(n-3)` -/
def P13565072628199397625.Spec : Prop :=
  ∀ n, (P13565072628199397625.a n : ℤ) = A127214 (n + 1)

end A127214

/-! ## A127214.P12019303537521758473

`2^(n+1)*A001644(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A127214

/-- `2^(n+1)*A001644(n+1)` -/
def P12019303537521758473.Spec : Prop :=
  ∀ n, P12019303537521758473.a n = A127214 (n + 1)

theorem P12019303537521758473.correct : P12019303537521758473.Spec := by
  intro n
  simp only [A127214, Nat.add_sub_cancel]

end A127214

/-! ## A127214.P16121779051028948652

`A075115(3*(n+1))`
-/

namespace A127214.P16121779051028948652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075115 (3 * (n + 1))

end

end A127214.P16121779051028948652

namespace A127214

/-- `A075115(3*(n+1))` -/
def P16121779051028948652.Spec : Prop :=
  ∀ n, P16121779051028948652.a n = A127214 (n + 1)

end A127214

/-! ## A127214.P14420584807227542078

`record[A075115(A004483(n)+1)]`
-/

namespace A127214.P14420584807227542078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075115 (A004483 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127214.P14420584807227542078

namespace A127214

/-- `record[A075115(A004483(n)+1)]` -/
def P14420584807227542078.Spec : Prop :=
  ∀ n, P14420584807227542078.a n = A127214 (n + 1)

end A127214

/-! ## A127214.P16109127204077916087

`A001644(n+1)*A011782(n+2)`
-/

namespace A127214.P16109127204077916087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 (n + 1) * A011782 (n + 2)

end

end A127214.P16109127204077916087

namespace A127214

/-- `A001644(n+1)*A011782(n+2)` -/
def P16109127204077916087.Spec : Prop :=
  ∀ n, P16109127204077916087.a n = A127214 (n + 1)

end A127214

/-! ## A127214.P14870560826476541916

`lcm(A000079(n+1), A001644(n+1))`
-/

namespace A127214.P14870560826476541916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 (n + 1)) (A001644 (n + 1))

end

end A127214.P14870560826476541916

namespace A127214

/-- `lcm(A000079(n+1), A001644(n+1))` -/
def P14870560826476541916.Spec : Prop :=
  ∀ n, (P14870560826476541916.a n : ℤ) = A127214 (n + 1)

end A127214

/-! ## A127214.P15290925978399577455

`A001644(n+1)*A048675(A000040(n+2))`
-/

namespace A127214.P15290925978399577455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 (n + 1) * A048675 (A000040 (n + 2)).toNat

end

end A127214.P15290925978399577455

namespace A127214

/-- `A001644(n+1)*A048675(A000040(n+2))` -/
def P15290925978399577455.Spec : Prop :=
  ∀ n, P15290925978399577455.a n = A127214 (n + 1)

end A127214

/-! ## A127214.P17493439867521997912

`A001644(n+1)+A000225(n+1)*A001644(n+1)`
-/

namespace A127214.P17493439867521997912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 (n + 1) + A000225 (n + 1) * A001644 (n + 1)

end

end A127214.P17493439867521997912

namespace A127214

/-- `A001644(n+1)+A000225(n+1)*A001644(n+1)` -/
def P17493439867521997912.Spec : Prop :=
  ∀ n, P17493439867521997912.a n = A127214 (n + 1)

end A127214

/-! ## A127214.P2308010562205764533

`A000051(n+1)*A001644(n+1)-A001644(n+1)`
-/

namespace A127214.P2308010562205764533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) * A001644 (n + 1) - A001644 (n + 1)

end

end A127214.P2308010562205764533

namespace A127214

/-- `A000051(n+1)*A001644(n+1)-A001644(n+1)` -/
def P2308010562205764533.Spec : Prop :=
  ∀ n, P2308010562205764533.a n = A127214 (n + 1)

end A127214

/-! ## A127214.P7038569862021147348

`(A213661(n+2)-A000079(n+1))*A000079(n+1)`
-/

namespace A127214.P7038569862021147348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A213661 (n + 2) - A000079 (n + 1)) * A000079 (n + 1)

end

end A127214.P7038569862021147348

namespace A127214

/-- `(A213661(n+2)-A000079(n+1))*A000079(n+1)` -/
def P7038569862021147348.Spec : Prop :=
  ∀ n, P7038569862021147348.a n = A127214 (n + 1)

end A127214

/-! ## A127214.P7840699021774720621

`(A213661(n+2)-A060546(2*(n+1)))*A060546(2*(n+1))`
-/

namespace A127214.P7840699021774720621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A213661 (n + 2) - A060546 (2 * (n + 1))) * A060546 (2 * (n + 1))

end

end A127214.P7840699021774720621

namespace A127214

/-- `(A213661(n+2)-A060546(2*(n+1)))*A060546(2*(n+1))` -/
def P7840699021774720621.Spec : Prop :=
  ∀ n, P7840699021774720621.a n = A127214 (n + 1)

end A127214

/-! ## A127214.P3789881417442112799

`A001644(n+1)/A001648(n+1)*A127216(n+1)`
-/

namespace A127214.P3789881417442112799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001644 (n + 1) : ℚ) / (A001648 (n + 1) : ℚ) * (A127216 (n + 1) : ℚ)

end

end A127214.P3789881417442112799

namespace A127214

/-- `A001644(n+1)/A001648(n+1)*A127216(n+1)` -/
def P3789881417442112799.Spec : Prop :=
  ∀ n, P3789881417442112799.a n = (A127214 (n + 1) : ℚ)

end A127214

/-! ## A127214.P8677557067792905055

`A001644(n+1)/A073817(n+1)*A127216(n+1)`
-/

namespace A127214.P8677557067792905055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001644 (n + 1) : ℚ) / (A073817 (n + 1) : ℚ) * (A127216 (n + 1) : ℚ)

end

end A127214.P8677557067792905055

namespace A127214

/-- `A001644(n+1)/A073817(n+1)*A127216(n+1)` -/
def P8677557067792905055.Spec : Prop :=
  ∀ n, P8677557067792905055.a n = (A127214 (n + 1) : ℚ)

end A127214

/-! ## A127214.P10152070647086334730

`A001644(n+1)/A023424(n)*A127221(n+1)`
-/

namespace A127214.P10152070647086334730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001644 (n + 1) : ℚ) / (A023424 n : ℚ) * (A127221 (n + 1) : ℚ)

end

end A127214.P10152070647086334730

namespace A127214

/-- `A001644(n+1)/A023424(n)*A127221(n+1)` -/
def P10152070647086334730.Spec : Prop :=
  ∀ n, P10152070647086334730.a n = (A127214 (n + 1) : ℚ)

end A127214

/-! ## A127214.P6516070816976943283

`A001644(n+1)/A074048(n+1)*A127221(n+1)`
-/

namespace A127214.P6516070816976943283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001644 (n + 1) : ℚ) / (A074048 (n + 1) : ℚ) * (A127221 (n + 1) : ℚ)

end

end A127214.P6516070816976943283

namespace A127214

/-- `A001644(n+1)/A074048(n+1)*A127221(n+1)` -/
def P6516070816976943283.Spec : Prop :=
  ∀ n, P6516070816976943283.a n = (A127214 (n + 1) : ℚ)

end A127214

/-! ## A127214.P15246554319085188506

`A087131(n+1)/A127210(n+1)*A127215(n+1)`
-/

namespace A127214.P15246554319085188506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087131 (n + 1) : ℚ) / (A127210 (n + 1) : ℚ) * (A127215 (n + 1) : ℚ)

end

end A127214.P15246554319085188506

namespace A127214

/-- `A087131(n+1)/A127210(n+1)*A127215(n+1)` -/
def P15246554319085188506.Spec : Prop :=
  ∀ n, P15246554319085188506.a n = (A127214 (n + 1) : ℚ)

end A127214

/-! ## A127214.P2019290146955640798

`A001644(n+1)/A087131(n+1)*A127211(n+1)`
-/

namespace A127214.P2019290146955640798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001644 (n + 1) : ℚ) / (A087131 (n + 1) : ℚ) * (A127211 (n + 1) : ℚ)

end

end A127214.P2019290146955640798

namespace A127214

/-- `A001644(n+1)/A087131(n+1)*A127211(n+1)` -/
def P2019290146955640798.Spec : Prop :=
  ∀ n, P2019290146955640798.a n = (A127214 (n + 1) : ℚ)

end A127214

/-! ## A127214.P10093698302534558092

`A001644(n+1)/A127210(n+1)*A127213(n+1)`
-/

namespace A127214.P10093698302534558092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001644 (n + 1) : ℚ) / (A127210 (n + 1) : ℚ) * (A127213 (n + 1) : ℚ)

end

end A127214.P10093698302534558092

namespace A127214

/-- `A001644(n+1)/A127210(n+1)*A127213(n+1)` -/
def P10093698302534558092.Spec : Prop :=
  ∀ n, P10093698302534558092.a n = (A127214 (n + 1) : ℚ)

end A127214

/-!
# A127215: a(n) = 3^n*tribonacci(n) or (3^n)*A001644(n+1).

The programs for A127215, the canonical program `A127215.P7958708193143260324` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127215 has offset 1).

The definition of A127215 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^(n+1)*A001644(n+1)` (program `A127215.P7958708193143260324`, by `A127215.P7958708193143260324.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127215.P3293898628227016426

`3*a(n-1)+9*a(n-2)+27*a(n-3)` with `a(0)=3, a(1)=27, a(2)=189`
-/

namespace A127215.P3293898628227016426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 27, 189] fun n a =>
  3 * a (n - 1) + 9 * a (n - 2) + 27 * a (n - 3)

end

end A127215.P3293898628227016426

namespace A127215

/-- `3*a(n-1)+9*a(n-2)+27*a(n-3)` -/
def P3293898628227016426.Spec : Prop :=
  ∀ n, (P3293898628227016426.a n : ℤ) = A127215 (n + 1)

end A127215

/-! ## A127215.P7958708193143260324

`3^(n+1)*A001644(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A127215

/-- `3^(n+1)*A001644(n+1)` -/
def P7958708193143260324.Spec : Prop :=
  ∀ n, P7958708193143260324.a n = A127215 (n + 1)

theorem P7958708193143260324.correct : P7958708193143260324.Spec := by
  intro n
  simp only [A127215, Nat.add_sub_cancel]

end A127215

/-! ## A127215.P16141613443051020960

`record[A001644(A003056(n))*A175840(n)]`
-/

namespace A127215.P16141613443051020960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 (A003056 n).toNat * A175840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127215.P16141613443051020960

namespace A127215

/-- `record[A001644(A003056(n))*A175840(n)]` -/
def P16141613443051020960.Spec : Prop :=
  ∀ n, P16141613443051020960.a n = A127215 (n + 1)

end A127215

/-! ## A127215.P10881109942539457498

`A001644(n+1)*A034472(n+1)-A001644(n+1)`
-/

namespace A127215.P10881109942539457498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 (n + 1) * A034472 (n + 1) - A001644 (n + 1)

end

end A127215.P10881109942539457498

namespace A127215

/-- `A001644(n+1)*A034472(n+1)-A001644(n+1)` -/
def P10881109942539457498.Spec : Prop :=
  ∀ n, P10881109942539457498.a n = A127215 (n + 1)

end A127215

/-! ## A127215.P11383495439288354623

`A001644(n+1)/A000032(n+1)*A127210(n+1)`
-/

namespace A127215.P11383495439288354623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001644 (n + 1) : ℚ) / (A000032 (n + 1) : ℚ) * (A127210 (n + 1) : ℚ)

end

end A127215.P11383495439288354623

namespace A127215

/-- `A001644(n+1)/A000032(n+1)*A127210(n+1)` -/
def P11383495439288354623.Spec : Prop :=
  ∀ n, P11383495439288354623.a n = (A127215 (n + 1) : ℚ)

end A127215

/-! ## A127215.P12440650440284167473

`A001644(n+1)/A000204(n+1)*A127210(n+1)`
-/

namespace A127215.P12440650440284167473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001644 (n + 1) : ℚ) / (A000204 (n + 1) : ℚ) * (A127210 (n + 1) : ℚ)

end

end A127215.P12440650440284167473

namespace A127215

/-- `A001644(n+1)/A000204(n+1)*A127210(n+1)` -/
def P12440650440284167473.Spec : Prop :=
  ∀ n, P12440650440284167473.a n = (A127215 (n + 1) : ℚ)

end A127215

/-! ## A127215.P3859423475410506405

`A127210(n+1)/A087131(n+1)*A127214(n+1)`
-/

namespace A127215.P3859423475410506405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127210 (n + 1) : ℚ) / (A087131 (n + 1) : ℚ) * (A127214 (n + 1) : ℚ)

end

end A127215.P3859423475410506405

namespace A127215

/-- `A127210(n+1)/A087131(n+1)*A127214(n+1)` -/
def P3859423475410506405.Spec : Prop :=
  ∀ n, P3859423475410506405.a n = (A127215 (n + 1) : ℚ)

end A127215

/-! ## A127215.P2660064757656671280

`A001644(n+1)/A001648(n+1)*A127220(n+1)`
-/

namespace A127215.P2660064757656671280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001644 (n + 1) : ℚ) / (A001648 (n + 1) : ℚ) * (A127220 (n + 1) : ℚ)

end

end A127215.P2660064757656671280

namespace A127215

/-- `A001644(n+1)/A001648(n+1)*A127220(n+1)` -/
def P2660064757656671280.Spec : Prop :=
  ∀ n, P2660064757656671280.a n = (A127215 (n + 1) : ℚ)

end A127215

/-! ## A127215.P5504793727787967412

`A001644(n+1)/A073817(n+1)*A127220(n+1)`
-/

namespace A127215.P5504793727787967412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001644 (n + 1) : ℚ) / (A073817 (n + 1) : ℚ) * (A127220 (n + 1) : ℚ)

end

end A127215.P5504793727787967412

namespace A127215

/-- `A001644(n+1)/A073817(n+1)*A127220(n+1)` -/
def P5504793727787967412.Spec : Prop :=
  ∀ n, P5504793727787967412.a n = (A127215 (n + 1) : ℚ)

end A127215

/-! ## A127215.P4272316474271048625

`A001644(n+1)/A074048(n+1)*A127222(n+1)`
-/

namespace A127215.P4272316474271048625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001644 (n + 1) : ℚ) / (A074048 (n + 1) : ℚ) * (A127222 (n + 1) : ℚ)

end

end A127215.P4272316474271048625

namespace A127215

/-- `A001644(n+1)/A074048(n+1)*A127222(n+1)` -/
def P4272316474271048625.Spec : Prop :=
  ∀ n, P4272316474271048625.a n = (A127215 (n + 1) : ℚ)

end A127215

/-! ## A127215.P2233691990386049843

`A127213(n+1)/A127211(n+1)*A127214(n+1)`
-/

namespace A127215.P2233691990386049843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127213 (n + 1) : ℚ) / (A127211 (n + 1) : ℚ) * (A127214 (n + 1) : ℚ)

end

end A127215.P2233691990386049843

namespace A127215

/-- `A127213(n+1)/A127211(n+1)*A127214(n+1)` -/
def P2233691990386049843.Spec : Prop :=
  ∀ n, P2233691990386049843.a n = (A127215 (n + 1) : ℚ)

end A127215

/-!
# A127216: a(n) = 2^n*tetranacci(n) or (2^n)*A001648(n).

The programs for A127216, the canonical program `A127216.P15922572375641362652` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127216 has offset 1).

The definition of A127216 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127216.P4113834519866938201

`2*a(n-1)+4*a(n-2)+8*a(n-3)+16*a(n-4)` with `a(0)=2, a(1)=12, a(2)=56, a(3)=240`
-/

namespace A127216.P4113834519866938201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 12, 56, 240] fun n a =>
  2 * a (n - 1) + 4 * a (n - 2) + 8 * a (n - 3) + 16 * a (n - 4)

end

end A127216.P4113834519866938201

namespace A127216

/-- `2*a(n-1)+4*a(n-2)+8*a(n-3)+16*a(n-4)` -/
def P4113834519866938201.Spec : Prop :=
  ∀ n, (P4113834519866938201.a n : ℤ) = A127216 (n + 1)

end A127216

/-! ## A127216.P15922572375641362652

`2^(n+1)*A001648(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A127216

/-- `2^(n+1)*A001648(n+1)` -/
def P15922572375641362652.Spec : Prop :=
  ∀ n, P15922572375641362652.a n = A127216 (n + 1)

theorem P15922572375641362652.correct : P15922572375641362652.Spec := by
  intro n
  simp only [A127216, Nat.add_sub_cancel]

end A127216

/-! ## A127216.P11509184009881785637

`2^(n+1)*A073817(n+1)`
-/

namespace A127216.P11509184009881785637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A073817 (n + 1)

end

end A127216.P11509184009881785637

namespace A127216

/-- `2^(n+1)*A073817(n+1)` -/
def P11509184009881785637.Spec : Prop :=
  ∀ n, P11509184009881785637.a n = A127216 (n + 1)

end A127216

/-! ## A127216.P9330621640450181157

`A073817(n+1)*A166444(n+3)`
-/

namespace A127216.P9330621640450181157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073817 (n + 1) * A166444 (n + 3)

end

end A127216.P9330621640450181157

namespace A127216

/-- `A073817(n+1)*A166444(n+3)` -/
def P9330621640450181157.Spec : Prop :=
  ∀ n, P9330621640450181157.a n = A127216 (n + 1)

end A127216

/-! ## A127216.P13249035563055843992

`A001648(n+1)+A000225(n+1)*A001648(n+1)`
-/

namespace A127216.P13249035563055843992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001648 (n + 1) + A000225 (n + 1) * A001648 (n + 1)

end

end A127216.P13249035563055843992

namespace A127216

/-- `A001648(n+1)+A000225(n+1)*A001648(n+1)` -/
def P13249035563055843992.Spec : Prop :=
  ∀ n, P13249035563055843992.a n = A127216 (n + 1)

end A127216

/-! ## A127216.P15096199181111954092

`A000051(n+1)*A001648(n+1)-A001648(n+1)`
-/

namespace A127216.P15096199181111954092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) * A001648 (n + 1) - A001648 (n + 1)

end

end A127216.P15096199181111954092

namespace A127216

/-- `A000051(n+1)*A001648(n+1)-A001648(n+1)` -/
def P15096199181111954092.Spec : Prop :=
  ∀ n, P15096199181111954092.a n = A127216 (n + 1)

end A127216

/-! ## A127216.P17708354837182260154

`A001648(n+1)/A001644(n+1)*A127214(n+1)`
-/

namespace A127216.P17708354837182260154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001648 (n + 1) : ℚ) / (A001644 (n + 1) : ℚ) * (A127214 (n + 1) : ℚ)

end

end A127216.P17708354837182260154

namespace A127216

/-- `A001648(n+1)/A001644(n+1)*A127214(n+1)` -/
def P17708354837182260154.Spec : Prop :=
  ∀ n, P17708354837182260154.a n = (A127216 (n + 1) : ℚ)

end A127216

/-! ## A127216.P13893919978082491923

`A001648(n+1)/A023424(n)*A127221(n+1)`
-/

namespace A127216.P13893919978082491923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001648 (n + 1) : ℚ) / (A023424 n : ℚ) * (A127221 (n + 1) : ℚ)

end

end A127216.P13893919978082491923

namespace A127216

/-- `A001648(n+1)/A023424(n)*A127221(n+1)` -/
def P13893919978082491923.Spec : Prop :=
  ∀ n, P13893919978082491923.a n = (A127216 (n + 1) : ℚ)

end A127216

/-! ## A127216.P7098379840487189510

`A073817(n+1)/A023424(n)*A127221(n+1)`
-/

namespace A127216.P7098379840487189510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073817 (n + 1) : ℚ) / (A023424 n : ℚ) * (A127221 (n + 1) : ℚ)

end

end A127216.P7098379840487189510

namespace A127216

/-- `A073817(n+1)/A023424(n)*A127221(n+1)` -/
def P7098379840487189510.Spec : Prop :=
  ∀ n, P7098379840487189510.a n = (A127216 (n + 1) : ℚ)

end A127216

/-! ## A127216.P370962164219878353

`A001648(n+1)/A074048(n+1)*A127221(n+1)`
-/

namespace A127216.P370962164219878353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001648 (n + 1) : ℚ) / (A074048 (n + 1) : ℚ) * (A127221 (n + 1) : ℚ)

end

end A127216.P370962164219878353

namespace A127216

/-- `A001648(n+1)/A074048(n+1)*A127221(n+1)` -/
def P370962164219878353.Spec : Prop :=
  ∀ n, P370962164219878353.a n = (A127216 (n + 1) : ℚ)

end A127216

/-! ## A127216.P14905558221569473538

`A073817(n+1)/A074048(n+1)*A127221(n+1)`
-/

namespace A127216.P14905558221569473538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073817 (n + 1) : ℚ) / (A074048 (n + 1) : ℚ) * (A127221 (n + 1) : ℚ)

end

end A127216.P14905558221569473538

namespace A127216

/-- `A073817(n+1)/A074048(n+1)*A127221(n+1)` -/
def P14905558221569473538.Spec : Prop :=
  ∀ n, P14905558221569473538.a n = (A127216 (n + 1) : ℚ)

end A127216

/-! ## A127216.P4973612608776163505

`A087131(n+1)/A127210(n+1)*A127220(n+1)`
-/

namespace A127216.P4973612608776163505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087131 (n + 1) : ℚ) / (A127210 (n + 1) : ℚ) * (A127220 (n + 1) : ℚ)

end

end A127216.P4973612608776163505

namespace A127216

/-- `A087131(n+1)/A127210(n+1)*A127220(n+1)` -/
def P4973612608776163505.Spec : Prop :=
  ∀ n, P4973612608776163505.a n = (A127216 (n + 1) : ℚ)

end A127216

/-! ## A127216.P15111551460949143258

`A127214(n+1)/A127215(n+1)*A127220(n+1)`
-/

namespace A127216.P15111551460949143258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127214 (n + 1) : ℚ) / (A127215 (n + 1) : ℚ) * (A127220 (n + 1) : ℚ)

end

end A127216.P15111551460949143258

namespace A127216

/-- `A127214(n+1)/A127215(n+1)*A127220(n+1)` -/
def P15111551460949143258.Spec : Prop :=
  ∀ n, P15111551460949143258.a n = (A127216 (n + 1) : ℚ)

end A127216

/-! ## A127216.P12655817598603018561

`A127220(n+1)/A127222(n+1)*A127221(n+1)`
-/

namespace A127216.P12655817598603018561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127220 (n + 1) : ℚ) / (A127222 (n + 1) : ℚ) * (A127221 (n + 1) : ℚ)

end

end A127216.P12655817598603018561

namespace A127216

/-- `A127220(n+1)/A127222(n+1)*A127221(n+1)` -/
def P12655817598603018561.Spec : Prop :=
  ∀ n, P12655817598603018561.a n = (A127216 (n + 1) : ℚ)

end A127216

/-! ## A127216.P4411780198253147707

`A001648(n+1)/A087131(n+1)*A127211(n+1)`
-/

namespace A127216.P4411780198253147707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001648 (n + 1) : ℚ) / (A087131 (n + 1) : ℚ) * (A127211 (n + 1) : ℚ)

end

end A127216.P4411780198253147707

namespace A127216

/-- `A001648(n+1)/A087131(n+1)*A127211(n+1)` -/
def P4411780198253147707.Spec : Prop :=
  ∀ n, P4411780198253147707.a n = (A127216 (n + 1) : ℚ)

end A127216

/-! ## A127216.P13821006335596629687

`A001648(n+1)/A127210(n+1)*A127213(n+1)`
-/

namespace A127216.P13821006335596629687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001648 (n + 1) : ℚ) / (A127210 (n + 1) : ℚ) * (A127213 (n + 1) : ℚ)

end

end A127216.P13821006335596629687

namespace A127216

/-- `A001648(n+1)/A127210(n+1)*A127213(n+1)` -/
def P13821006335596629687.Spec : Prop :=
  ∀ n, P13821006335596629687.a n = (A127216 (n + 1) : ℚ)

end A127216

/-!
# A127217: Half-indexed Fibonacci numbers a(n)=round(sqrt((1+sqrt(5))/2)^n/sqrt(5)) a(2n)=F(n)=A000045, so a(n)=F(n/2).

The programs for A127217, the canonical program `A127217.P13076675814810649247` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127217 has offset 1).

The definition of A127217 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(sqrt((1+sqrt(5))/2)^(n+1)/sqrt(5))` (program `A127217.P9840610236694439818`, by `A127217.P9840610236694439818.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127217.P13076675814810649247

`round(sqrt(ϕ)^(n+1)/sqrt(5))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127217

/-- `round(sqrt(ϕ)^(n+1)/sqrt(5))` -/
def P13076675814810649247.Spec : Prop :=
  ∀ n, P13076675814810649247.a n = A127217 (n + 1)

theorem P13076675814810649247.correct : P13076675814810649247.Spec := by
  intro n
  simp only [A127217, Nat.add_sub_cancel]

end A127217

/-! ## A127217.P9840610236694439818

`round(sqrt((1+sqrt(5))/2)^(n+1)/sqrt(5))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A127217.P9840610236694439818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((1 + Real.sqrt (5 : ℝ)) / 2) ^ (n + 1) / Real.sqrt (5 : ℝ))

end

end A127217.P9840610236694439818

namespace A127217

/-- `round(sqrt((1+sqrt(5))/2)^(n+1)/sqrt(5))` -/
def P9840610236694439818.Spec : Prop :=
  ∀ n, P9840610236694439818.a n = A127217 (n + 1)

theorem P9840610236694439818.correct : P9840610236694439818.Spec := by
  intro n
  simp only [A127217, Nat.add_sub_cancel, A127217.P9840610236694439818.a, A127217.P13076675814810649247.a, SequenceMachineLib.memo_apply]

end A127217

/-! ## A127217.P3933923511683601065

`round(sqrt((1+sqrt(5))/2)^(n+1)/sqrt(5))*a(1)` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A127217.P3933923511683601065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.roundAway (Real.sqrt ((1 + Real.sqrt (5 : ℝ)) / 2) ^ (n + 1) / Real.sqrt (5 : ℝ)) * a 1

end

end A127217.P3933923511683601065

namespace A127217

/-- `round(sqrt((1+sqrt(5))/2)^(n+1)/sqrt(5))*a(1)` -/
def P3933923511683601065.Spec : Prop :=
  ∀ n, P3933923511683601065.a n = A127217 (n + 1)

end A127217

/-! ## A127217.P11271533325322864455

`round(sqrt(A074677(n)))+C(2, n+2)`
-/

namespace A127217.P11271533325322864455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A074677 n : ℝ)) + (Nat.choose 2 (n + 2) : ℤ)

end

end A127217.P11271533325322864455

namespace A127217

/-- `round(sqrt(A074677(n)))+C(2, n+2)` -/
def P11271533325322864455.Spec : Prop :=
  ∀ n, P11271533325322864455.a n = A127217 (n + 1)

end A127217

/-! ## A127217.P612714079639396343

`A000007(n)+round(sqrt(A074677(n)))`
-/

namespace A127217.P612714079639396343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + SequenceMachineLib.roundAway (Real.sqrt (A074677 n : ℝ))

end

end A127217.P612714079639396343

namespace A127217

/-- `A000007(n)+round(sqrt(A074677(n)))` -/
def P612714079639396343.Spec : Prop :=
  ∀ n, P612714079639396343.a n = A127217 (n + 1)

end A127217

/-!
# A127218: Half-indexed Lucas numbers second version L(n)=A000032=Lucas numbers a(0)=2, a(1)=2, a(2)=1, a(3)=2, a(4)=3, a(5)=3, a(2n)=L(n), for n>2: a(2n+1)=L(n)+L(n-3)=2*L(n-1) for n>5: a(n)+a(n+2)=a(n+4) a(2n)=L(n), so a(n)=L(n/2).

The programs for A127218, the canonical program `A127218.P15243934197128887519` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127218 has offset 0).

The definition of A127218 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127218.P15243934197128887519

`a(n-2)+a(n-4)` with `a(0)=2, a(1)=2, a(2)=1, a(3)=2, a(4)=3, a(5)=3, a(6)=4, a(7)=6, a(8)=7, a(9)=8`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127218

/-- `a(n-2)+a(n-4)` -/
def P15243934197128887519.Spec : Prop :=
  ∀ n, (P15243934197128887519.a n : ℤ) = A127218 n

theorem P15243934197128887519.correct : P15243934197128887519.Spec := by
  intro n
  simp only [A127218]

end A127218

/-! ## A127218.P8089850240594816606

`Δ[A003056(A192754(n)+A099545(n+1))]`
-/

namespace A127218.P8089850240594816606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A192754 n + A099545 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127218.P8089850240594816606

namespace A127218

/-- `Δ[A003056(A192754(n)+A099545(n+1))]` -/
def P8089850240594816606.Spec : Prop :=
  ∀ n, P8089850240594816606.a n = A127218 n

end A127218

/-!
# A127219: Even numbers with an even number of partitions.

The programs for A127219, there is no canonical definition to state claims against.
-/

/-! ## A127219.P12409239409676005050

`2*A163098(n+1)`
-/

namespace A127219.P12409239409676005050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163098 (n + 1)

end

end A127219.P12409239409676005050

/-! ## A127219.P7862631254704268791

`2*comp[A163099(n+1)]`
-/

namespace A127219.P7862631254704268791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A127219.P7862631254704268791

/-! ## A127219.P10068597452059084842

`A004277(A163098(n+1))`
-/

namespace A127219.P10068597452059084842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A163098 (n + 1)).toNat

end

end A127219.P10068597452059084842

/-! ## A127219.P12338178834877624696

`∩[2*n, A001560(n+1)]`
-/

namespace A127219.P12338178834877624696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127219.P12338178834877624696

/-! ## A127219.P1035904974219642954

`∩[A001560(n+1), A004271(n)]`
-/

namespace A127219.P1035904974219642954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127219.P1035904974219642954

/-! ## A127219.P7872151479130048665

`∩[A001560(n+1), A004272(n)]`
-/

namespace A127219.P7872151479130048665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127219.P7872151479130048665

/-! ## A127219.P12980090202107112766

`∩[A001560(n+1), A004275(n)]`
-/

namespace A127219.P12980090202107112766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127219.P12980090202107112766

/-! ## A127219.P2882426639278370241

`∩[A001560(n+1), A004277(n)]`
-/

namespace A127219.P2882426639278370241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127219.P2882426639278370241

/-! ## A127219.P4370831672623549442

`∩[A001560(n+1), A004279(n)]`
-/

namespace A127219.P4370831672623549442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127219.P4370831672623549442

/-! ## A127219.P1199530662213178166

`∩[A001560(n+1), A005843(n)]`
-/

namespace A127219.P1199530662213178166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127219.P1199530662213178166

/-! ## A127219.P5088636180428625305

`∩[A001560(n+1), A004278(n+1)]`
-/

namespace A127219.P5088636180428625305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127219.P5088636180428625305

/-! ## A127219.P8471854115936825494

`∩[A001560(n+1), A316571(n+1)]`
-/

namespace A127219.P8471854115936825494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127219.P8471854115936825494

/-! ## A127219.P6218754336800026664

`2*lt[0, A278478(2*n)]`
-/

namespace A127219.P6218754336800026664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A127219.P6218754336800026664

/-! ## A127219.P15627160907300982075

`filter[A001560(n+1), A135528(#)]`
-/

namespace A127219.P15627160907300982075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001560 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A127219.P15627160907300982075

/-! ## A127219.P17308292043132021203

`lt[A040051(n), (-1)^n]`
-/

namespace A127219.P17308292043132021203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A127219.P17308292043132021203

/-! ## A127219.P12200517967265844823

`2*eq[0, A040051(2*n)]`
-/

namespace A127219.P12200517967265844823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127219.P12200517967265844823

/-! ## A127219.P2578642956602951704

`eq[A010673(n), A040051(n)]`
-/

namespace A127219.P2578642956602951704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A127219.P2578642956602951704

/-! ## A127219.P6999235987908749456

`eq[A010674(n), A040051(n)]`
-/

namespace A127219.P6999235987908749456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010674 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A127219.P6999235987908749456

/-!
# A127220: a(n) = 3^n*tetranacci(n) or (2^n)*A001648(n).

The programs for A127220, the canonical program `A127220.P3789298513524943245` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127220 has offset 1).

The definition of A127220 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127220.P3789298513524943245

`3^(n+1)*A001648(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A127220

/-- `3^(n+1)*A001648(n+1)` -/
def P3789298513524943245.Spec : Prop :=
  ∀ n, P3789298513524943245.a n = A127220 (n + 1)

theorem P3789298513524943245.correct : P3789298513524943245.Spec := by
  intro n
  simp only [A127220, Nat.add_sub_cancel]

end A127220

/-! ## A127220.P16495230654371275825

`3^(n+1)*A073817(n+1)`
-/

namespace A127220.P16495230654371275825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) * A073817 (n + 1)

end

end A127220.P16495230654371275825

namespace A127220

/-- `3^(n+1)*A073817(n+1)` -/
def P16495230654371275825.Spec : Prop :=
  ∀ n, P16495230654371275825.a n = A127220 (n + 1)

end A127220

/-! ## A127220.P7608689688586237131

`3*A001648(n+1)*A000244(n)`
-/

namespace A127220.P7608689688586237131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001648 (n + 1) * A000244 n

end

end A127220.P7608689688586237131

namespace A127220

/-- `3*A001648(n+1)*A000244(n)` -/
def P7608689688586237131.Spec : Prop :=
  ∀ n, P7608689688586237131.a n = A127220 (n + 1)

end A127220

/-! ## A127220.P11643899425538875195

`A001648(n+1)/A000032(n+1)*A127210(n+1)`
-/

namespace A127220.P11643899425538875195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001648 (n + 1) : ℚ) / (A000032 (n + 1) : ℚ) * (A127210 (n + 1) : ℚ)

end

end A127220.P11643899425538875195

namespace A127220

/-- `A001648(n+1)/A000032(n+1)*A127210(n+1)` -/
def P11643899425538875195.Spec : Prop :=
  ∀ n, P11643899425538875195.a n = (A127220 (n + 1) : ℚ)

end A127220

/-! ## A127220.P4913837072918814576

`A001648(n+1)/A000204(n+1)*A127210(n+1)`
-/

namespace A127220.P4913837072918814576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001648 (n + 1) : ℚ) / (A000204 (n + 1) : ℚ) * (A127210 (n + 1) : ℚ)

end

end A127220.P4913837072918814576

namespace A127220

/-- `A001648(n+1)/A000204(n+1)*A127210(n+1)` -/
def P4913837072918814576.Spec : Prop :=
  ∀ n, P4913837072918814576.a n = (A127220 (n + 1) : ℚ)

end A127220

/-! ## A127220.P14161531274458616480

`A001648(n+1)/A001644(n+1)*A127215(n+1)`
-/

namespace A127220.P14161531274458616480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001648 (n + 1) : ℚ) / (A001644 (n + 1) : ℚ) * (A127215 (n + 1) : ℚ)

end

end A127220.P14161531274458616480

namespace A127220

/-- `A001648(n+1)/A001644(n+1)*A127215(n+1)` -/
def P14161531274458616480.Spec : Prop :=
  ∀ n, P14161531274458616480.a n = (A127220 (n + 1) : ℚ)

end A127220

/-! ## A127220.P11664144091663416997

`A073817(n+1)/A000204(n+1)*A127210(n+1)`
-/

namespace A127220.P11664144091663416997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073817 (n + 1) : ℚ) / (A000204 (n + 1) : ℚ) * (A127210 (n + 1) : ℚ)

end

end A127220.P11664144091663416997

namespace A127220

/-- `A073817(n+1)/A000204(n+1)*A127210(n+1)` -/
def P11664144091663416997.Spec : Prop :=
  ∀ n, P11664144091663416997.a n = (A127220 (n + 1) : ℚ)

end A127220

/-! ## A127220.P4442569861175121727

`A127210(n+1)/A087131(n+1)*A127216(n+1)`
-/

namespace A127220.P4442569861175121727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127210 (n + 1) : ℚ) / (A087131 (n + 1) : ℚ) * (A127216 (n + 1) : ℚ)

end

end A127220.P4442569861175121727

namespace A127220

/-- `A127210(n+1)/A087131(n+1)*A127216(n+1)` -/
def P4442569861175121727.Spec : Prop :=
  ∀ n, P4442569861175121727.a n = (A127220 (n + 1) : ℚ)

end A127220

/-! ## A127220.P4642606527732299113

`A001648(n+1)/A023424(n)*A127222(n+1)`
-/

namespace A127220.P4642606527732299113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001648 (n + 1) : ℚ) / (A023424 n : ℚ) * (A127222 (n + 1) : ℚ)

end

end A127220.P4642606527732299113

namespace A127220

/-- `A001648(n+1)/A023424(n)*A127222(n+1)` -/
def P4642606527732299113.Spec : Prop :=
  ∀ n, P4642606527732299113.a n = (A127220 (n + 1) : ℚ)

end A127220

/-! ## A127220.P13106054651922768532

`A073817(n+1)/A023424(n)*A127222(n+1)`
-/

namespace A127220.P13106054651922768532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073817 (n + 1) : ℚ) / (A023424 n : ℚ) * (A127222 (n + 1) : ℚ)

end

end A127220.P13106054651922768532

namespace A127220

/-- `A073817(n+1)/A023424(n)*A127222(n+1)` -/
def P13106054651922768532.Spec : Prop :=
  ∀ n, P13106054651922768532.a n = (A127220 (n + 1) : ℚ)

end A127220

/-! ## A127220.P2860598424425016886

`A001648(n+1)/A074048(n+1)*A127222(n+1)`
-/

namespace A127220.P2860598424425016886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001648 (n + 1) : ℚ) / (A074048 (n + 1) : ℚ) * (A127222 (n + 1) : ℚ)

end

end A127220.P2860598424425016886

namespace A127220

/-- `A001648(n+1)/A074048(n+1)*A127222(n+1)` -/
def P2860598424425016886.Spec : Prop :=
  ∀ n, P2860598424425016886.a n = (A127220 (n + 1) : ℚ)

end A127220

/-! ## A127220.P7049843076970277494

`A073817(n+1)/A074048(n+1)*A127222(n+1)`
-/

namespace A127220.P7049843076970277494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073817 (n + 1) : ℚ) / (A074048 (n + 1) : ℚ) * (A127222 (n + 1) : ℚ)

end

end A127220.P7049843076970277494

namespace A127220

/-- `A073817(n+1)/A074048(n+1)*A127222(n+1)` -/
def P7049843076970277494.Spec : Prop :=
  ∀ n, P7049843076970277494.a n = (A127220 (n + 1) : ℚ)

end A127220

/-! ## A127220.P9186011054359017523

`A127216(n+1)/A127221(n+1)*A127222(n+1)`
-/

namespace A127220.P9186011054359017523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127216 (n + 1) : ℚ) / (A127221 (n + 1) : ℚ) * (A127222 (n + 1) : ℚ)

end

end A127220.P9186011054359017523

namespace A127220

/-- `A127216(n+1)/A127221(n+1)*A127222(n+1)` -/
def P9186011054359017523.Spec : Prop :=
  ∀ n, P9186011054359017523.a n = (A127220 (n + 1) : ℚ)

end A127220

/-! ## A127220.P2637729913143492749

`A001648(n+1)/A087131(n+1)*A127213(n+1)`
-/

namespace A127220.P2637729913143492749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001648 (n + 1) : ℚ) / (A087131 (n + 1) : ℚ) * (A127213 (n + 1) : ℚ)

end

end A127220.P2637729913143492749

namespace A127220

/-- `A001648(n+1)/A087131(n+1)*A127213(n+1)` -/
def P2637729913143492749.Spec : Prop :=
  ∀ n, P2637729913143492749.a n = (A127220 (n + 1) : ℚ)

end A127220

/-! ## A127220.P9078574616295996178

`A127213(n+1)/A127211(n+1)*A127216(n+1)`
-/

namespace A127220.P9078574616295996178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127213 (n + 1) : ℚ) / (A127211 (n + 1) : ℚ) * (A127216 (n + 1) : ℚ)

end

end A127220.P9078574616295996178

namespace A127220

/-- `A127213(n+1)/A127211(n+1)*A127216(n+1)` -/
def P9078574616295996178.Spec : Prop :=
  ∀ n, P9078574616295996178.a n = (A127220 (n + 1) : ℚ)

end A127220

/-!
# A127221: a(n) = 2^n*pentanacci(n) or (2^n)*A023424(n-1).

The programs for A127221, the canonical program `A127221.P17885748224761537627` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127221 has offset 1).

The definition of A127221 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+1)*A023424(n)` (program `A127221.P17885748224761537627`, by `A127221.P17885748224761537627.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127221.P17885748224761537627

`2^(n+1)*A023424(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A127221

/-- `2^(n+1)*A023424(n)` -/
def P17885748224761537627.Spec : Prop :=
  ∀ n, P17885748224761537627.a n = A127221 (n + 1)

theorem P17885748224761537627.correct : P17885748224761537627.Spec := by
  intro n
  simp only [A127221, Nat.add_sub_cancel]

end A127221

/-! ## A127221.P9192085564338980055

`2^(n+1)*A074048(n+1)`
-/

namespace A127221.P9192085564338980055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A074048 (n + 1)

end

end A127221.P9192085564338980055

namespace A127221

/-- `2^(n+1)*A074048(n+1)` -/
def P9192085564338980055.Spec : Prop :=
  ∀ n, P9192085564338980055.a n = A127221 (n + 1)

end A127221

/-! ## A127221.P8837666746873302650

`lcm(Δ[A077925(n)], A023424(n))`
-/

namespace A127221.P8837666746873302650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A023424 n)

end

end A127221.P8837666746873302650

namespace A127221

/-- `lcm(Δ[A077925(n)], A023424(n))` -/
def P8837666746873302650.Spec : Prop :=
  ∀ n, (P8837666746873302650.a n : ℤ) = A127221 (n + 1)

end A127221

/-! ## A127221.P16029590171481794312

`A023424(n)*A131577(n+2)`
-/

namespace A127221.P16029590171481794312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023424 n * A131577 (n + 2)

end

end A127221.P16029590171481794312

namespace A127221

/-- `A023424(n)*A131577(n+2)` -/
def P16029590171481794312.Spec : Prop :=
  ∀ n, P16029590171481794312.a n = A127221 (n + 1)

end A127221

/-! ## A127221.P925196148381543838

`A074048(n+1)*A131577(n+2)`
-/

namespace A127221.P925196148381543838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074048 (n + 1) * A131577 (n + 2)

end

end A127221.P925196148381543838

namespace A127221

/-- `A074048(n+1)*A131577(n+2)` -/
def P925196148381543838.Spec : Prop :=
  ∀ n, P925196148381543838.a n = A127221 (n + 1)

end A127221

/-! ## A127221.P10199351830452899213

`lcm(A000079(n+1), A074048(n+1))`
-/

namespace A127221.P10199351830452899213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 (n + 1)) (A074048 (n + 1))

end

end A127221.P10199351830452899213

namespace A127221

/-- `lcm(A000079(n+1), A074048(n+1))` -/
def P10199351830452899213.Spec : Prop :=
  ∀ n, (P10199351830452899213.a n : ℤ) = A127221 (n + 1)

end A127221

/-! ## A127221.P4447091731979001210

`A074048(n+1)+A000225(n+1)*A074048(n+1)`
-/

namespace A127221.P4447091731979001210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074048 (n + 1) + A000225 (n + 1) * A074048 (n + 1)

end

end A127221.P4447091731979001210

namespace A127221

/-- `A074048(n+1)+A000225(n+1)*A074048(n+1)` -/
def P4447091731979001210.Spec : Prop :=
  ∀ n, P4447091731979001210.a n = A127221 (n + 1)

end A127221

/-! ## A127221.P14561105706968478873

`A023424(n)*A048483(∑[n+1])`
-/

namespace A127221.P14561105706968478873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023424 n * A048483 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127221.P14561105706968478873

namespace A127221

/-- `A023424(n)*A048483(∑[n+1])` -/
def P14561105706968478873.Spec : Prop :=
  ∀ n, P14561105706968478873.a n = A127221 (n + 1)

end A127221

/-! ## A127221.P5975607830589647594

`A023424(n)*A130321(C(n+2, 2))`
-/

namespace A127221.P5975607830589647594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023424 n * A130321 (Nat.choose (n + 2) 2)

end

end A127221.P5975607830589647594

namespace A127221

/-- `A023424(n)*A130321(C(n+2, 2))` -/
def P5975607830589647594.Spec : Prop :=
  ∀ n, P5975607830589647594.a n = A127221 (n + 1)

end A127221

/-! ## A127221.P18247621545990003443

`A087131(n+1)/A127210(n+1)*A127222(n+1)`
-/

namespace A127221.P18247621545990003443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087131 (n + 1) : ℚ) / (A127210 (n + 1) : ℚ) * (A127222 (n + 1) : ℚ)

end

end A127221.P18247621545990003443

namespace A127221

/-- `A087131(n+1)/A127210(n+1)*A127222(n+1)` -/
def P18247621545990003443.Spec : Prop :=
  ∀ n, P18247621545990003443.a n = (A127221 (n + 1) : ℚ)

end A127221

/-! ## A127221.P11412183605323071483

`A127216(n+1)/A127220(n+1)*A127222(n+1)`
-/

namespace A127221.P11412183605323071483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127216 (n + 1) : ℚ) / (A127220 (n + 1) : ℚ) * (A127222 (n + 1) : ℚ)

end

end A127221.P11412183605323071483

namespace A127221

/-- `A127216(n+1)/A127220(n+1)*A127222(n+1)` -/
def P11412183605323071483.Spec : Prop :=
  ∀ n, P11412183605323071483.a n = (A127221 (n + 1) : ℚ)

end A127221

/-! ## A127221.P5437496033173591042

`A074048(n+1)/A087131(n+1)*A127211(n+1)`
-/

namespace A127221.P5437496033173591042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074048 (n + 1) : ℚ) / (A087131 (n + 1) : ℚ) * (A127211 (n + 1) : ℚ)

end

end A127221.P5437496033173591042

namespace A127221

/-- `A074048(n+1)/A087131(n+1)*A127211(n+1)` -/
def P5437496033173591042.Spec : Prop :=
  ∀ n, P5437496033173591042.a n = (A127221 (n + 1) : ℚ)

end A127221

/-! ## A127221.P11833216458566376501

`A127211(n+1)/A127213(n+1)*A127222(n+1)`
-/

namespace A127221.P11833216458566376501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127211 (n + 1) : ℚ) / (A127213 (n + 1) : ℚ) * (A127222 (n + 1) : ℚ)

end

end A127221.P11833216458566376501

namespace A127221

/-- `A127211(n+1)/A127213(n+1)*A127222(n+1)` -/
def P11833216458566376501.Spec : Prop :=
  ∀ n, P11833216458566376501.a n = (A127221 (n + 1) : ℚ)

end A127221

/-!
# A127222: a(n) = 3^n*pentanacci(n) or (3^n)*A023424(n-1).

The programs for A127222, the canonical program `A127222.P7118341410658629518` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127222 has offset 1).

The definition of A127222 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^(n+1)*A023424(n)` (program `A127222.P7118341410658629518`, by `A127222.P7118341410658629518.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127222.P7118341410658629518

`3^(n+1)*A023424(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A127222

/-- `3^(n+1)*A023424(n)` -/
def P7118341410658629518.Spec : Prop :=
  ∀ n, P7118341410658629518.a n = A127222 (n + 1)

theorem P7118341410658629518.correct : P7118341410658629518.Spec := by
  intro n
  simp only [A127222, Nat.add_sub_cancel]

end A127222

/-! ## A127222.P10707822623913272655

`3^(n+1)*A074048(n+1)`
-/

namespace A127222.P10707822623913272655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) * A074048 (n + 1)

end

end A127222.P10707822623913272655

namespace A127222

/-- `3^(n+1)*A074048(n+1)` -/
def P10707822623913272655.Spec : Prop :=
  ∀ n, P10707822623913272655.a n = A127222 (n + 1)

end A127222

/-! ## A127222.P13766509090889281171

`A023424(n)*A133494(n+2)`
-/

namespace A127222.P13766509090889281171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023424 n * A133494 (n + 2)

end

end A127222.P13766509090889281171

namespace A127222

/-- `A023424(n)*A133494(n+2)` -/
def P13766509090889281171.Spec : Prop :=
  ∀ n, P13766509090889281171.a n = A127222 (n + 1)

end A127222

/-! ## A127222.P4103585798273620164

`A023424(n)*A108411(A051755(n+2))`
-/

namespace A127222.P4103585798273620164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023424 n * A108411 (A051755 (n + 2)).toNat

end

end A127222.P4103585798273620164

namespace A127222

/-- `A023424(n)*A108411(A051755(n+2))` -/
def P4103585798273620164.Spec : Prop :=
  ∀ n, P4103585798273620164.a n = A127222 (n + 1)

end A127222

/-! ## A127222.P10995606677946013806

`A127220(n+1)/A127216(n+1)*A127221(n+1)`
-/

namespace A127222.P10995606677946013806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127220 (n + 1) : ℚ) / (A127216 (n + 1) : ℚ) * (A127221 (n + 1) : ℚ)

end

end A127222.P10995606677946013806

namespace A127222

/-- `A127220(n+1)/A127216(n+1)*A127221(n+1)` -/
def P10995606677946013806.Spec : Prop :=
  ∀ n, P10995606677946013806.a n = (A127222 (n + 1) : ℚ)

end A127222

/-! ## A127222.P5810217823974561409

`A074048(n+1)/A087131(n+1)*A127213(n+1)`
-/

namespace A127222.P5810217823974561409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074048 (n + 1) : ℚ) / (A087131 (n + 1) : ℚ) * (A127213 (n + 1) : ℚ)

end

end A127222.P5810217823974561409

namespace A127222

/-- `A074048(n+1)/A087131(n+1)*A127213(n+1)` -/
def P5810217823974561409.Spec : Prop :=
  ∀ n, P5810217823974561409.a n = (A127222 (n + 1) : ℚ)

end A127222

/-! ## A127222.P2664427776580037448

`A127213(n+1)/A127211(n+1)*A127221(n+1)`
-/

namespace A127222.P2664427776580037448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127213 (n + 1) : ℚ) / (A127211 (n + 1) : ℚ) * (A127221 (n + 1) : ℚ)

end

end A127222.P2664427776580037448

namespace A127222

/-- `A127213(n+1)/A127211(n+1)*A127221(n+1)` -/
def P2664427776580037448.Spec : Prop :=
  ∀ n, P2664427776580037448.a n = (A127222 (n + 1) : ℚ)

end A127222

/-!
# A127223: a(n) = (n^2)!/n!.

The programs for A127223, the canonical program `A127223.P11359124860038309251` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127223 has offset 0).

The definition of A127223 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127223.P11359124860038309251

`n²!/n!`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127223

/-- `n²!/n!` -/
def P11359124860038309251.Spec : Prop :=
  ∀ n, P11359124860038309251.a n = (A127223 n : ℚ)

end A127223

/-! ## A127223.P9732495025416374370

`∏{digits}[n, (n*#)!]/n!`
-/

namespace A127223.P9732495025416374370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial (n * x)).prod : ℕ) : ℚ) / (Nat.factorial n : ℚ)

end

end A127223.P9732495025416374370

namespace A127223

/-- `∏{digits}[n, (n*#)!]/n!` -/
def P9732495025416374370.Spec : Prop :=
  ∀ n, P9732495025416374370.a n = (A127223 n : ℚ)

end A127223

/-! ## A127223.P15790670606843479697

`∑{digits}[n, n*#]!/∑{digits}[n, #!]`
-/

namespace A127223.P15790670606843479697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => n * x).sum : ℚ) / ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.factorial x).sum : ℕ) : ℚ)

end

end A127223.P15790670606843479697

namespace A127223

/-- `∑{digits}[n, n*#]!/∑{digits}[n, #!]` -/
def P15790670606843479697.Spec : Prop :=
  ∀ n, P15790670606843479697.a n = (A127223 n : ℚ)

end A127223

/-! ## A127223.P16425628176681244622

`(n^ceil(atan(n)))!^(n-abs(1-n))/n!`
-/

namespace A127223.P16425628176681244622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat : ℚ) ^ ((n : ℤ) - |1 - (n : ℤ)| : ℤ) / (Nat.factorial n : ℚ)

end

end A127223.P16425628176681244622

namespace A127223

/-- `(n^ceil(atan(n)))!^(n-abs(1-n))/n!` -/
def P16425628176681244622.Spec : Prop :=
  ∀ n, P16425628176681244622.a n = (A127223 n : ℚ)

end A127223

/-! ## A127223.P10291675755793209780

`n!*A088021(n)`
-/

namespace A127223.P10291675755793209780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A088021 n

end

end A127223.P10291675755793209780

namespace A127223

/-- `n!*A088021(n)` -/
def P10291675755793209780.Spec : Prop :=
  ∀ n, P10291675755793209780.a n = A127223 n

end A127223

/-!
# A127226: a(n) = 2*a(n-1) + 6*a(n-2) with a(0)=2, a(1)=2.

The programs for A127226, the canonical program `A127226.P6418333570478261737` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127226 has offset 0).

The definition of A127226 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+6*a(n-2)` (program `A127226.P6418333570478261737`, by `A127226.P6418333570478261737.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127226.P6418333570478261737

`2*a(n-1)+6*a(n-2)` with `a(0)=2, a(1)=2`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127226

/-- `2*a(n-1)+6*a(n-2)` -/
def P6418333570478261737.Spec : Prop :=
  ∀ n, (P6418333570478261737.a n : ℤ) = A127226 n

theorem P6418333570478261737.correct : P6418333570478261737.Spec := by
  intro n
  simp only [A127226]

end A127226

/-! ## A127226.P13988618728480226373

`2*A083098(n)`
-/

namespace A127226.P13988618728480226373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083098 n

end

end A127226.P13988618728480226373

namespace A127226

/-- `2*A083098(n)` -/
def P13988618728480226373.Spec : Prop :=
  ∀ n, P13988618728480226373.a n = A127226 n

end A127226

/-! ## A127226.P2162648915688875153

`ogf((-2+2x)/(-1+2x+6x^2))`
-/

namespace A127226.P2162648915688875153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2] [1, -2, -6] n

end

end A127226.P2162648915688875153

namespace A127226

/-- `ogf((-2+2x)/(-1+2x+6x^2))` -/
def P2162648915688875153.Spec : Prop :=
  ∀ n, P2162648915688875153.a n = A127226 n

end A127226

/-! ## A127226.P2927247753607259739

`(1+sqrt(7))^n+(1-sqrt(7))^n`
-/

namespace A127226.P2927247753607259739
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 + Real.sqrt (7 : ℝ)) ^ n + (1 - Real.sqrt (7 : ℝ)) ^ n

end

end A127226.P2927247753607259739

namespace A127226

/-- `(1+sqrt(7))^n+(1-sqrt(7))^n` -/
def P2927247753607259739.Spec : Prop :=
  ∀ n, P2927247753607259739.a n = (A127226 n : ℝ)

end A127226

/-! ## A127226.P17521327464861616737

`2*(4*a(n-2)-(a(n-2)-a(n-1)))` with `a(0)=2, a(1)=2`
-/

namespace A127226.P17521327464861616737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  2 * (4 * a (n - 2) - (a (n - 2) - a (n - 1)))

end

end A127226.P17521327464861616737

namespace A127226

/-- `2*(4*a(n-2)-(a(n-2)-a(n-1)))` -/
def P17521327464861616737.Spec : Prop :=
  ∀ n, P17521327464861616737.a n = A127226 n

end A127226

/-! ## A127226.P14350248341860686857

`2*Δ[A083099(n)]`
-/

namespace A127226.P14350248341860686857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A127226.P14350248341860686857

namespace A127226

/-- `2*Δ[A083099(n)]` -/
def P14350248341860686857.Spec : Prop :=
  ∀ n, P14350248341860686857.a n = A127226 n

end A127226

/-! ## A127226.P15620690260961643217

`A002537(n)*A016116(n+2)`
-/

namespace A127226.P15620690260961643217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002537 n * A016116 (n + 2)

end

end A127226.P15620690260961643217

namespace A127226

/-- `A002537(n)*A016116(n+2)` -/
def P15620690260961643217.Spec : Prop :=
  ∀ n, P15620690260961643217.a n = A127226 n

end A127226

/-! ## A127226.P3507745782714868586

`2*A002537(n)*A016116(n)`
-/

namespace A127226.P3507745782714868586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002537 n * A016116 n)

end

end A127226.P3507745782714868586

namespace A127226

/-- `2*A002537(n)*A016116(n)` -/
def P3507745782714868586.Spec : Prop :=
  ∀ n, P3507745782714868586.a n = A127226 n

end A127226

/-! ## A127226.P16418445569166820002

`2*Δ[A002536(n)*A016116(n)]`
-/

namespace A127226.P16418445569166820002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002536 n * A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A127226.P16418445569166820002

namespace A127226

/-- `2*Δ[A002536(n)*A016116(n)]` -/
def P16418445569166820002.Spec : Prop :=
  ∀ n, P16418445569166820002.a n = A127226 n

end A127226

/-! ## A127226.P9335859971890223160

`2*Δ[A002536(n)*A131572(n)]`
-/

namespace A127226.P9335859971890223160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002536 n * A131572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A127226.P9335859971890223160

namespace A127226

/-- `2*Δ[A002536(n)*A131572(n)]` -/
def P9335859971890223160.Spec : Prop :=
  ∀ n, P9335859971890223160.a n = A127226 n

end A127226

/-! ## A127226.P8001950669861163554

`2*(A083099(n+1)-A083099(n))`
-/

namespace A127226.P8001950669861163554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A083099 (n + 1) - A083099 n)

end

end A127226.P8001950669861163554

namespace A127226

/-- `2*(A083099(n+1)-A083099(n))` -/
def P8001950669861163554.Spec : Prop :=
  ∀ n, P8001950669861163554.a n = A127226 n

end A127226

/-! ## A127226.P1612163653755056734

`Δ[A274520(n)]`
-/

namespace A127226.P1612163653755056734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127226.P1612163653755056734

namespace A127226

/-- `Δ[A274520(n)]` -/
def P1612163653755056734.Spec : Prop :=
  ∀ n, P1612163653755056734.a n = A127226 n

end A127226

/-!
# A127227: a(n)= numerator of ((n + 3)! - (n - 3)!)/(n!).

The programs for A127227, the canonical program `A127227.P11919975617093875234` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127227 has offset 3).

The definition of A127227 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127227.P11919975617093875234

`(n+6)!/n!-1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127227

/-- `(n+6)!/n!-1` -/
def P11919975617093875234.Spec : Prop :=
  ∀ n, P11919975617093875234.a n = (A127227 (n + 3) : ℚ)

end A127227

/-! ## A127227.P10154361126692571820

`(n+6)*(n+5)*(n+4)*(n+3)*(n+2)*(n+1)-1`
-/

namespace A127227.P10154361126692571820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 6) * ((n + 5) * ((n + 4) * ((n + 3) * ((n + 2) * (n + 1))))) : ℤ) - 1

end

end A127227.P10154361126692571820

namespace A127227

/-- `(n+6)*(n+5)*(n+4)*(n+3)*(n+2)*(n+1)-1` -/
def P10154361126692571820.Spec : Prop :=
  ∀ n, P10154361126692571820.a n = A127227 (n + 3)

end A127227

/-!
# A127228: a(n) = numerator of ((n + 4)! - (n - 4)!)/(n!).

The programs for A127228, the canonical program `A127228.P15680257364631138101` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127228 has offset 4).

The definition of A127228 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127228.P15680257364631138101

`(n+8)*(n+7)*(n+6)*(n+5)*(n+4)*(n+3)*(n+2)*(n+1)-1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127228

/-- `(n+8)*(n+7)*(n+6)*(n+5)*(n+4)*(n+3)*(n+2)*(n+1)-1` -/
def P15680257364631138101.Spec : Prop :=
  ∀ n, P15680257364631138101.a n = A127228 (n + 4)

theorem P15680257364631138101.correct : P15680257364631138101.Spec := by
  intro n
  simp only [A127228, Nat.add_sub_cancel]

end A127228

/-! ## A127228.P756562957986095376

`Δ[∑[A239035(n)]-n]`
-/

namespace A127228.P756562957986095376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239035 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127228.P756562957986095376

namespace A127228

/-- `Δ[∑[A239035(n)]-n]` -/
def P756562957986095376.Spec : Prop :=
  ∀ n, P756562957986095376.a n = A127228 (n + 4)

end A127228

/-! ## A127228.P1691675459949640900

`A127229(n+5)%A239035(n+1)`
-/

namespace A127228.P1691675459949640900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A239035 (n + 1))

end

end A127228.P1691675459949640900

namespace A127228

/-- `A127229(n+5)%A239035(n+1)` -/
def P1691675459949640900.Spec : Prop :=
  ∀ n, P1691675459949640900.a n = A127228 (n + 4)

end A127228

/-!
# A127229: a(n) = numerator of ((n + 5)! - (n - 5)!)/n!.

The programs for A127229, the canonical program `A127229.P7457771375734457595` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127229 has offset 5).

The definition of A127229 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127229.P7457771375734457595

`(n+10)!/n!-1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127229

/-- `(n+10)!/n!-1` -/
def P7457771375734457595.Spec : Prop :=
  ∀ n, P7457771375734457595.a n = (A127229 (n + 5) : ℚ)

end A127229

/-! ## A127229.P734444752625520889

`∏{digits}[A050278(n+1), n+1+#]-1`
-/

namespace A127229.P734444752625520889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => n + 1 + x).prod : ℕ) : ℤ) - 1

end

end A127229.P734444752625520889

namespace A127229

/-- `∏{digits}[A050278(n+1), n+1+#]-1` -/
def P734444752625520889.Spec : Prop :=
  ∀ n, P734444752625520889.a n = A127229 (n + 5)

end A127229

/-! ## A127229.P5642326535285500650

`∏{digits}[A318788(n+1), n+1+#]-1`
-/

namespace A127229.P5642326535285500650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => n + 1 + x).prod : ℕ) : ℤ) - 1

end

end A127229.P5642326535285500650

namespace A127229

/-- `∏{digits}[A318788(n+1), n+1+#]-1` -/
def P5642326535285500650.Spec : Prop :=
  ∀ n, P5642326535285500650.a n = A127229 (n + 5)

end A127229

/-! ## A127229.P10992708029262261590

`floor(A033312(n+10)/A000142(n))`
-/

namespace A127229.P10992708029262261590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033312 (n + 10) : ℚ) / (A000142 n : ℚ)⌋

end

end A127229.P10992708029262261590

namespace A127229

/-- `floor(A033312(n+10)/A000142(n))` -/
def P10992708029262261590.Spec : Prop :=
  ∀ n, P10992708029262261590.a n = A127229 (n + 5)

end A127229

/-! ## A127229.P5991108879582726508

`A000142(n+10)/A000142(n)-1`
-/

namespace A127229.P5991108879582726508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 10) : ℚ) / (A000142 n : ℚ) - 1

end

end A127229.P5991108879582726508

namespace A127229

/-- `A000142(n+10)/A000142(n)-1` -/
def P5991108879582726508.Spec : Prop :=
  ∀ n, P5991108879582726508.a n = (A127229 (n + 5) : ℚ)

end A127229

/-!
# A127230: a(n) = (2n)! - 1.

The programs for A127230, the canonical program `A127230.P17370992227337733006` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127230 has offset 1).

The definition of A127230 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1))!-1` (program `A127230.P17370992227337733006`, by `A127230.P17370992227337733006.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127230.P17370992227337733006

`(2*(n+1))!-1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127230

/-- `(2*(n+1))!-1` -/
def P17370992227337733006.Spec : Prop :=
  ∀ n, P17370992227337733006.a n = A127230 (n + 1)

theorem P17370992227337733006.correct : P17370992227337733006.Spec := by
  intro n
  simp only [A127230, Nat.add_sub_cancel]

end A127230

/-! ## A127230.P9666650957439013647

`∑[abs(Δ[(2*n)!])]`
-/

namespace A127230.P9666650957439013647
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127230.P9666650957439013647

namespace A127230

/-- `∑[abs(Δ[(2*n)!])]` -/
def P9666650957439013647.Spec : Prop :=
  ∀ n, P9666650957439013647.a n = A127230 (n + 1)

end A127230

/-! ## A127230.P5973064711719947434

`Δ[∑[(2*n)!]-n]`
-/

namespace A127230.P5973064711719947434
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127230.P5973064711719947434

namespace A127230

/-- `Δ[∑[(2*n)!]-n]` -/
def P5973064711719947434.Spec : Prop :=
  ∀ n, P5973064711719947434.a n = A127230 (n + 1)

end A127230

/-! ## A127230.P3989900576378648103

`∑[-Δ[-(2*n)!]]`
-/

namespace A127230.P3989900576378648103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.factorial (2 * n) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127230.P3989900576378648103

namespace A127230

/-- `∑[-Δ[-(2*n)!]]` -/
def P3989900576378648103.Spec : Prop :=
  ∀ n, P3989900576378648103.a n = A127230 (n + 1)

end A127230

/-! ## A127230.P7611609196406963636

`abs(1-(n+2+n)!)`
-/

namespace A127230.P7611609196406963636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.factorial (n + 2 + n) : ℤ)|

end

end A127230.P7611609196406963636

namespace A127230

/-- `abs(1-(n+2+n)!)` -/
def P7611609196406963636.Spec : Prop :=
  ∀ n, P7611609196406963636.a n = A127230 (n + 1)

end A127230

/-!
# A127231: a(n) = (2n)! + 1.

The programs for A127231, the canonical program `A127231.P4820773278180268995` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127231 has offset 0).

The definition of A127231 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n)!+1` (program `A127231.P4820773278180268995`, by `A127231.P4820773278180268995.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127231.P4820773278180268995

`(2*n)!+1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127231

/-- `(2*n)!+1` -/
def P4820773278180268995.Spec : Prop :=
  ∀ n, (P4820773278180268995.a n : ℤ) = A127231 n

theorem P4820773278180268995.correct : P4820773278180268995.Spec := by
  intro n
  simp only [A127231]

end A127231

/-! ## A127231.P12103275914401643983

`abs(xor((2*n)!, -1))`
-/

namespace A127231.P12103275914401643983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (Nat.factorial (2 * n) : ℤ) (-1)|

end

end A127231.P12103275914401643983

namespace A127231

/-- `abs(xor((2*n)!, -1))` -/
def P12103275914401643983.Spec : Prop :=
  ∀ n, P12103275914401643983.a n = A127231 n

end A127231

/-! ## A127231.P5327000740727784716

`-xor((2*n)!, -1)`
-/

namespace A127231.P5327000740727784716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (Nat.factorial (2 * n) : ℤ) (-1)

end

end A127231.P5327000740727784716

namespace A127231

/-- `-xor((2*n)!, -1)` -/
def P5327000740727784716.Spec : Prop :=
  ∀ n, P5327000740727784716.a n = A127231 n

end A127231

/-! ## A127231.P2824277642869475860

`or(4, (2*n)!)-3`
-/

namespace A127231.P2824277642869475860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 4 (Nat.factorial (2 * n)) : ℤ) - 3

end

end A127231.P2824277642869475860

namespace A127231

/-- `or(4, (2*n)!)-3` -/
def P2824277642869475860.Spec : Prop :=
  ∀ n, P2824277642869475860.a n = A127231 n

end A127231

/-! ## A127231.P3838152353028835068

`1+A010050(n)`
-/

namespace A127231.P3838152353028835068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A010050 n

end

end A127231.P3838152353028835068

namespace A127231

/-- `1+A010050(n)` -/
def P3838152353028835068.Spec : Prop :=
  ∀ n, P3838152353028835068.a n = A127231 n

end A127231

/-!
# A127232: 

The programs for A127232, there is no canonical definition to state claims against.
-/

/-! ## A127232.P3670934964372371

`A000295(record[Δ[A055249(n)]])`
-/

namespace A127232.P3670934964372371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055249 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A127232.P3670934964372371

/-!
# A127233: a(n) = n!*(n*(n+1)/2)!.

The programs for A127233, the canonical program `A127233.P2810820005293644416` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127233 has offset 0).

The definition of A127233 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!*(n*(n+1)/2)!` (program `A127233.P2810820005293644416`, by `A127233.P2810820005293644416.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127233.P2810820005293644416

`n!*(n*(n+1)/2)!`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127233

/-- `n!*(n*(n+1)/2)!` -/
def P2810820005293644416.Spec : Prop :=
  ∀ n, (P2810820005293644416.a n : ℤ) = A127233 n

theorem P2810820005293644416.correct : P2810820005293644416.Spec := by
  intro n
  simp only [A127233]

end A127233

/-! ## A127233.P11982695846745087246

`n!*A052295(n)`
-/

namespace A127233.P11982695846745087246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A052295 n

end

end A127233.P11982695846745087246

namespace A127233

/-- `n!*A052295(n)` -/
def P11982695846745087246.Spec : Prop :=
  ∀ n, P11982695846745087246.a n = A127233 n

end A127233

/-! ## A127233.P4691817978796457072

`A127234(n+1)/(n+1)`
-/

namespace A127233.P4691817978796457072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127234 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A127233.P4691817978796457072

namespace A127233

/-- `A127234(n+1)/(n+1)` -/
def P4691817978796457072.Spec : Prop :=
  ∀ n, P4691817978796457072.a n = (A127233 n : ℚ)

end A127233

/-! ## A127233.P18125362614754356366

`n*a(n-1)*A057003(n)` with `a(0)=1`
-/

namespace A127233.P18125362614754356366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (a (n - 1) * A057003 n)

end

end A127233.P18125362614754356366

namespace A127233

/-- `n*a(n-1)*A057003(n)` -/
def P18125362614754356366.Spec : Prop :=
  ∀ n, P18125362614754356366.a n = A127233 n

end A127233

/-!
# A127234: a(n) = n! (sum(1..n-1))!.

The programs for A127234, the canonical program `A127234.P16010751882252016748` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127234 has offset 1).

The definition of A127234 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127234.P16010751882252016748

`(n+1)!*((n+1)*n/2)!`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127234

/-- `(n+1)!*((n+1)*n/2)!` -/
def P16010751882252016748.Spec : Prop :=
  ∀ n, (P16010751882252016748.a n : ℤ) = A127234 (n + 1)

theorem P16010751882252016748.correct : P16010751882252016748.Spec := by
  intro n
  simp only [A127234, Nat.add_sub_cancel]

end A127234

/-! ## A127234.P14335060934545885144

`∑[n]!/∏[1/(n+1)]`
-/

namespace A127234.P14335060934545885144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A127234.P14335060934545885144

namespace A127234

/-- `∑[n]!/∏[1/(n+1)]` -/
def P14335060934545885144.Spec : Prop :=
  ∀ n, P14335060934545885144.a n = (A127234 (n + 1) : ℚ)

end A127234

/-! ## A127234.P9128956136729397406

`∏[C(∑[n], n)*∏[n+1]]`
-/

namespace A127234.P9128956136729397406
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) n * (∏ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A127234.P9128956136729397406

namespace A127234

/-- `∏[C(∑[n], n)*∏[n+1]]` -/
def P9128956136729397406.Spec : Prop :=
  ∀ n, (P9128956136729397406.a n : ℤ) = A127234 (n + 1)

end A127234

/-! ## A127234.P2729016813323590378

`(n+1)*A127233(n)`
-/

namespace A127234.P2729016813323590378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A127233 n

end

end A127234.P2729016813323590378

namespace A127234

/-- `(n+1)*A127233(n)` -/
def P2729016813323590378.Spec : Prop :=
  ∀ n, P2729016813323590378.a n = A127234 (n + 1)

end A127234

/-! ## A127234.P9189522310140585776

`(n+1)*A052295(n)*n!`
-/

namespace A127234.P9189522310140585776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A052295 n * (Nat.factorial n : ℤ)

end

end A127234.P9189522310140585776

namespace A127234

/-- `(n+1)*A052295(n)*n!` -/
def P9189522310140585776.Spec : Prop :=
  ∀ n, P9189522310140585776.a n = A127234 (n + 1)

end A127234

/-!
# A127235: 

The programs for A127235, there is no canonical definition to state claims against.
-/

/-! ## A127235.P1232725836216083576

`∑[2*n]!*(n+1)!`
-/

namespace A127235.P1232725836216083576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) * Nat.factorial (n + 1)

end

end A127235.P1232725836216083576

/-! ## A127235.P13255781112596210667

`(n+1)²!/C((n+1)², n+1)`
-/

namespace A127235.P13255781112596210667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((n + 1) ^ 2) : ℚ) / (Nat.choose ((n + 1) ^ 2) (n + 1) : ℚ)

end

end A127235.P13255781112596210667

/-! ## A127235.P5022433921038360948

`lcm(n, n+1)!*A000142(n+1)`
-/

namespace A127235.P5022433921038360948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.lcm n (n + 1)) : ℤ) * A000142 (n + 1)

end

end A127235.P5022433921038360948

/-!
# A127236: A Thue-Morse binomial triangle.

The programs for A127236, the canonical program `A127236.P7586648182986212788` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127236 has offset 0).

The definition of A127236 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127236.P9429794372579996833

`A174038(n)%2`
-/

namespace A127236.P9429794372579996833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174038 n) 2

end

end A127236.P9429794372579996833

namespace A127236

/-- `A174038(n)%2` -/
def P9429794372579996833.Spec : Prop :=
  ∀ n, P9429794372579996833.a n = A127236 n

end A127236

/-! ## A127236.P7532311375898639160

`and(A131843(n), A174038(n))`
-/

namespace A127236.P7532311375898639160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131843 n) (A174038 n)

end

end A127236.P7532311375898639160

namespace A127236

/-- `and(A131843(n), A174038(n))` -/
def P7532311375898639160.Spec : Prop :=
  ∀ n, P7532311375898639160.a n = A127236 n

end A127236

/-! ## A127236.P7586648182986212788

`A174032(n)%2`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A127236

/-- `A174032(n)%2` -/
def P7586648182986212788.Spec : Prop :=
  ∀ n, P7586648182986212788.a n = A127236 n

theorem P7586648182986212788.correct : P7586648182986212788.Spec := by
  intro n
  simp only [A127236]

end A127236

/-! ## A127236.P5030972253418557619

`and(A131843(n), A174032(n))`
-/

namespace A127236.P5030972253418557619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131843 n) (A174032 n)

end

end A127236.P5030972253418557619

namespace A127236

/-- `and(A131843(n), A174032(n))` -/
def P5030972253418557619.Spec : Prop :=
  ∀ n, P5030972253418557619.a n = A127236 n

end A127236

/-! ## A127236.P6663526616251106781

`and(A158388(n), A174032(n))`
-/

namespace A127236.P6663526616251106781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A174032 n)

end

end A127236.P6663526616251106781

namespace A127236

/-- `and(A158388(n), A174032(n))` -/
def P6663526616251106781.Spec : Prop :=
  ∀ n, P6663526616251106781.a n = A127236 n

end A127236

/-! ## A127236.P9804585939996861132

`and(A077860(n), A174032(n))`
-/

namespace A127236.P9804585939996861132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077860 n) (A174032 n)

end

end A127236.P9804585939996861132

namespace A127236

/-- `and(A077860(n), A174032(n))` -/
def P9804585939996861132.Spec : Prop :=
  ∀ n, P9804585939996861132.a n = A127236 n

end A127236

/-! ## A127236.P16910354952030100911

`and(A077860(n), A174038(n))`
-/

namespace A127236.P16910354952030100911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077860 n) (A174038 n)

end

end A127236.P16910354952030100911

namespace A127236

/-- `and(A077860(n), A174038(n))` -/
def P16910354952030100911.Spec : Prop :=
  ∀ n, P16910354952030100911.a n = A127236 n

end A127236

/-! ## A127236.P9637897579293428854

`and(A077924(n), A174032(n))`
-/

namespace A127236.P9637897579293428854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077924 n) (A174032 n)

end

end A127236.P9637897579293428854

namespace A127236

/-- `and(A077924(n), A174032(n))` -/
def P9637897579293428854.Spec : Prop :=
  ∀ n, P9637897579293428854.a n = A127236 n

end A127236

/-! ## A127236.P9362544251182287179

`and(A077853(n), A174032(n))`
-/

namespace A127236.P9362544251182287179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077853 n) (A174032 n)

end

end A127236.P9362544251182287179

namespace A127236

/-- `and(A077853(n), A174032(n))` -/
def P9362544251182287179.Spec : Prop :=
  ∀ n, P9362544251182287179.a n = A127236 n

end A127236

/-! ## A127236.P6793856226068596609

`and(A077891(n), A174032(n))`
-/

namespace A127236.P6793856226068596609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077891 n) (A174032 n)

end

end A127236.P6793856226068596609

namespace A127236

/-- `and(A077891(n), A174032(n))` -/
def P6793856226068596609.Spec : Prop :=
  ∀ n, P6793856226068596609.a n = A127236 n

end A127236

/-! ## A127236.P1379480101253262440

`and(A077881(n), A174032(n))`
-/

namespace A127236.P1379480101253262440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077881 n) (A174032 n)

end

end A127236.P1379480101253262440

namespace A127236

/-- `and(A077881(n), A174032(n))` -/
def P1379480101253262440.Spec : Prop :=
  ∀ n, P1379480101253262440.a n = A127236 n

end A127236

/-! ## A127236.P5757860960833836116

`and(A083318(n), A174032(n))`
-/

namespace A127236.P5757860960833836116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083318 n) (A174032 n)

end

end A127236.P5757860960833836116

namespace A127236

/-- `and(A083318(n), A174032(n))` -/
def P5757860960833836116.Spec : Prop :=
  ∀ n, P5757860960833836116.a n = A127236 n

end A127236

/-! ## A127236.P15319601844316957576

`and(A083318(n), A174038(n))`
-/

namespace A127236.P15319601844316957576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083318 n) (A174038 n)

end

end A127236.P15319601844316957576

namespace A127236

/-- `and(A083318(n), A174038(n))` -/
def P15319601844316957576.Spec : Prop :=
  ∀ n, P15319601844316957576.a n = A127236 n

end A127236

/-! ## A127236.P4740221225245562682

`and(A048578(n), A174032(n))`
-/

namespace A127236.P4740221225245562682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A174032 n)

end

end A127236.P4740221225245562682

namespace A127236

/-- `and(A048578(n), A174032(n))` -/
def P4740221225245562682.Spec : Prop :=
  ∀ n, P4740221225245562682.a n = A127236 n

end A127236

/-! ## A127236.P17731824157063478674

`and(A048578(n), A174038(n))`
-/

namespace A127236.P17731824157063478674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A174038 n)

end

end A127236.P17731824157063478674

namespace A127236

/-- `and(A048578(n), A174038(n))` -/
def P17731824157063478674.Spec : Prop :=
  ∀ n, P17731824157063478674.a n = A127236 n

end A127236

/-! ## A127236.P1550349530013725908

`and(A114001(n), A174032(n))`
-/

namespace A127236.P1550349530013725908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A114001 n) (A174032 n)

end

end A127236.P1550349530013725908

namespace A127236

/-- `and(A114001(n), A174032(n))` -/
def P1550349530013725908.Spec : Prop :=
  ∀ n, P1550349530013725908.a n = A127236 n

end A127236

/-! ## A127236.P5218280477827568649

`and(A114001(n), A174038(n))`
-/

namespace A127236.P5218280477827568649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A114001 n) (A174038 n)

end

end A127236.P5218280477827568649

namespace A127236

/-- `and(A114001(n), A174038(n))` -/
def P5218280477827568649.Spec : Prop :=
  ∀ n, P5218280477827568649.a n = A127236 n

end A127236

/-! ## A127236.P1353856083270788002

`and(A020737(n), A174032(n))`
-/

namespace A127236.P1353856083270788002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A174032 n)

end

end A127236.P1353856083270788002

namespace A127236

/-- `and(A020737(n), A174032(n))` -/
def P1353856083270788002.Spec : Prop :=
  ∀ n, P1353856083270788002.a n = A127236 n

end A127236

/-! ## A127236.P10641043516399070196

`and(A020737(n), A174038(n))`
-/

namespace A127236.P10641043516399070196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A174038 n)

end

end A127236.P10641043516399070196

namespace A127236

/-- `and(A020737(n), A174038(n))` -/
def P10641043516399070196.Spec : Prop :=
  ∀ n, P10641043516399070196.a n = A127236 n

end A127236

/-! ## A127236.P4533679352026735631

`and(A033622(n), A174032(n))`
-/

namespace A127236.P4533679352026735631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033622 n) (A174032 n)

end

end A127236.P4533679352026735631

namespace A127236

/-- `and(A033622(n), A174032(n))` -/
def P4533679352026735631.Spec : Prop :=
  ∀ n, P4533679352026735631.a n = A127236 n

end A127236

/-!
# A127237: Row sums of Thue-Morse binomial triangle A127236.

The programs for A127237, there is no canonical definition to state claims against.
-/

/-! ## A127237.P16603587290834167756

`A001222(A001316(A249664(n)))`
-/

namespace A127237.P16603587290834167756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001316 (A249664 n).toNat).toNat

end

end A127237.P16603587290834167756

/-! ## A127237.P3850006865374761577

`∑{d}[A001316(A249664(n)), A001221(#)]`
-/

namespace A127237.P3850006865374761577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A249664 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A127237.P3850006865374761577

/-! ## A127237.P9913089462611795826

`A274036(A249664(n))`
-/

namespace A127237.P9913089462611795826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274036 (A249664 n).toNat

end

end A127237.P9913089462611795826

/-! ## A127237.P7457836227979803278

`A000120(2*A249664(n))`
-/

namespace A127237.P7457836227979803278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (2 * A249664 n).toNat

end

end A127237.P7457836227979803278

/-! ## A127237.P8901865327831971054

`A000120(lcm(2, A249664(n)))`
-/

namespace A127237.P8901865327831971054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lcm 2 (A249664 n))

end

end A127237.P8901865327831971054

/-!
# A127239: Central coefficients of Thue-Morse binomial triangle A127236.

The programs for A127239, there is no canonical definition to state claims against.
-/

/-! ## A127239.P18162240136301575281

`A082481(n)%2`
-/

namespace A127239.P18162240136301575281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082481 n) 2

end

end A127239.P18162240136301575281

/-! ## A127239.P13868585147194974804

`A000035(A082481(n))`
-/

namespace A127239.P13868585147194974804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A082481 n).toNat

end

end A127239.P13868585147194974804

/-! ## A127239.P17656005377750925946

`and(A082481(n), A158388(n))`
-/

namespace A127239.P17656005377750925946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082481 n) (A158388 n)

end

end A127239.P17656005377750925946

/-! ## A127239.P5754942876470825519

`and(A082481(n), A267537(n))`
-/

namespace A127239.P5754942876470825519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082481 n) (A267537 n)

end

end A127239.P5754942876470825519

/-! ## A127239.P8124830267350663827

`and(A082481(n), A267869(n))`
-/

namespace A127239.P8124830267350663827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082481 n) (A267869 n)

end

end A127239.P8124830267350663827

/-! ## A127239.P3670298621376646555

`A010873(2*A082481(n))/2`
-/

namespace A127239.P3670298621376646555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010873 (2 * A082481 n).toNat : ℚ) / 2

end

end A127239.P3670298621376646555

/-! ## A127239.P15816325979597943997

`and(A080076(n+1), A082481(n))`
-/

namespace A127239.P15816325979597943997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080076 (n + 1)) (A082481 n)

end

end A127239.P15816325979597943997

/-! ## A127239.P15279495659453461597

`and(1, A082481(n)*A239609(n))`
-/

namespace A127239.P15279495659453461597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A082481 n * A239609 n)

end

end A127239.P15279495659453461597

/-! ## A127239.P9773135949999002663

`and(1, A082481(n)*A243134(n))`
-/

namespace A127239.P9773135949999002663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A082481 n * A243134 n)

end

end A127239.P9773135949999002663

/-! ## A127239.P12163388626910377715

`and(1, A082481(n)²*A305722(n))`
-/

namespace A127239.P12163388626910377715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A082481 n ^ 2 * A305722 n)

end

end A127239.P12163388626910377715

/-! ## A127239.P17334488843023216448

`A007877(2*A082481(n))/2`
-/

namespace A127239.P17334488843023216448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007877 (2 * A082481 n).toNat : ℚ) / 2

end

end A127239.P17334488843023216448

/-! ## A127239.P16288301236946269872

`and(A082481(n), A176410(n))`
-/

namespace A127239.P16288301236946269872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082481 n) (A176410 n)

end

end A127239.P16288301236946269872

/-! ## A127239.P1712449981703793606

`and(A082481(n), A176793(n))`
-/

namespace A127239.P1712449981703793606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082481 n) (A176793 n)

end

end A127239.P1712449981703793606

/-! ## A127239.P13126261967977019934

`and(A082481(n), A176794(n))`
-/

namespace A127239.P13126261967977019934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082481 n) (A176794 n)

end

end A127239.P13126261967977019934

/-! ## A127239.P14366493316105757413

`and(A082481(n), A176795(n))`
-/

namespace A127239.P14366493316105757413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082481 n) (A176795 n)

end

end A127239.P14366493316105757413

/-! ## A127239.P17407120350612714471

`A127237(2*n)%2`
-/

namespace A127239.P17407120350612714471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127237 (2 * n)) 2

end

end A127239.P17407120350612714471

/-! ## A127239.P6816019727814237221

`and(A077860(n), A082481(n))`
-/

namespace A127239.P6816019727814237221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077860 n) (A082481 n)

end

end A127239.P6816019727814237221

/-! ## A127239.P398279172558948375

`and(A082481(n), A083318(n))`
-/

namespace A127239.P398279172558948375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082481 n) (A083318 n)

end

end A127239.P398279172558948375

/-! ## A127239.P5305081726110945895

`and(A048578(n), A082481(n))`
-/

namespace A127239.P5305081726110945895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A082481 n)

end

end A127239.P5305081726110945895

/-! ## A127239.P205014299705164414

`and(A082481(n), A114001(n))`
-/

namespace A127239.P205014299705164414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082481 n) (A114001 n)

end

end A127239.P205014299705164414

/-!
# A127240: Partial sums of central coefficients of Thue-Morse binomial triangle A127236.

The programs for A127240, there is no canonical definition to state claims against.
-/

/-! ## A127240.P16247676390424601820

`∑[A127239(n)]`
-/

namespace A127240.P16247676390424601820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127239 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127240.P16247676390424601820

/-! ## A127240.P6176078188524231453

`∑[A082481(n)%2]`
-/

namespace A127240.P6176078188524231453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082481 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127240.P6176078188524231453

/-! ## A127240.P3300422546828775790

`∑[A000035(A082481(n))]`
-/

namespace A127240.P3300422546828775790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A082481 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127240.P3300422546828775790

/-! ## A127240.P2817137569123259

`∑[and(A082481(n), A267537(n))]`
-/

namespace A127240.P2817137569123259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082481 n) (A267537 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127240.P2817137569123259

/-! ## A127240.P17228563040823763304

`∑[A010873(2*A082481(n))/2]`
-/

namespace A127240.P17228563040823763304
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010873 (2 * A082481 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127240.P17228563040823763304

/-! ## A127240.P14135606551148526954

`∑[A127237(2*n)%2]`
-/

namespace A127240.P14135606551148526954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127237 (2 * n)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127240.P14135606551148526954

/-! ## A127240.P10449376830914272774

`∑[and(A002064(n), A082481(n))]`
-/

namespace A127240.P10449376830914272774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002064 n) (A082481 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127240.P10449376830914272774

/-! ## A127240.P3022846825433361935

`∑[A010873(A082481(n)²)]`
-/

namespace A127240.P3022846825433361935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A082481 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127240.P3022846825433361935

/-! ## A127240.P6537022211800564416

`∑[A096271(A082481(n)²)]`
-/

namespace A127240.P6537022211800564416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096271 (A082481 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127240.P6537022211800564416

/-! ## A127240.P14167317784164901106

`∑[A007877(A082481(n)²)]`
-/

namespace A127240.P14167317784164901106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (A082481 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127240.P14167317784164901106

/-!
# A127241: A Thue-Morse triangle.

The programs for A127241, the canonical program `A127241.P4160861950596534893` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127241 has offset 0).

The definition of A127241 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127241.P5289056631372722635

`A010060(C(n-C(∑[char[∑[n]]], 2), C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A127241.P5289056631372722635
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Nat.choose ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)).toNat ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat)

end

end A127241.P5289056631372722635

namespace A127241

/-- `A010060(C(n-C(∑[char[∑[n]]], 2), C(comp[∑[n]]-n, 2)-(n+1)))` -/
def P5289056631372722635.Spec : Prop :=
  ∀ n, P5289056631372722635.a n = A127241 n

end A127241

/-! ## A127241.P4160861950596534893

`A010060(A026729(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A127241

/-- `A010060(A026729(n))` -/
def P4160861950596534893.Spec : Prop :=
  ∀ n, P4160861950596534893.a n = A127241 n

theorem P4160861950596534893.correct : P4160861950596534893.Spec := by
  intro n
  simp only [A127241]

end A127241

/-! ## A127241.P15238413799083191832

`A010060(abs(A109466(n)))`
-/

namespace A127241.P15238413799083191832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 |A109466 n|.toNat

end

end A127241.P15238413799083191832

namespace A127241

/-- `A010060(abs(A109466(n)))` -/
def P15238413799083191832.Spec : Prop :=
  ∀ n, P15238413799083191832.a n = A127241 n

end A127241

/-! ## A127241.P4642279891999023041

`A010060(lcm(2, A109466(n)))`
-/

namespace A127241.P4642279891999023041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Int.lcm 2 (A109466 n))

end

end A127241.P4642279891999023041

namespace A127241

/-- `A010060(lcm(2, A109466(n)))` -/
def P4642279891999023041.Spec : Prop :=
  ∀ n, P4642279891999023041.a n = A127241 n

end A127241

/-! ## A127241.P7123600130565060713

`A080813(A026729(n)+7)`
-/

namespace A127241.P7123600130565060713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080813 (A026729 n + 7).toNat

end

end A127241.P7123600130565060713

namespace A127241

/-- `A080813(A026729(n)+7)` -/
def P7123600130565060713.Spec : Prop :=
  ∀ n, P7123600130565060713.a n = A127241 n

end A127241

/-! ## A127241.P8093647037552476699

`A010060(A113953(n))`
-/

namespace A127241.P8093647037552476699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A113953 n).toNat

end

end A127241.P8093647037552476699

namespace A127241

/-- `A010060(A113953(n))` -/
def P8093647037552476699.Spec : Prop :=
  ∀ n, P8093647037552476699.a n = A127241 n

end A127241

/-! ## A127241.P16479875012641661438

`A010060(abs(A110509(n)))`
-/

namespace A127241.P16479875012641661438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 |A110509 n|.toNat

end

end A127241.P16479875012641661438

namespace A127241

/-- `A010060(abs(A110509(n)))` -/
def P16479875012641661438.Spec : Prop :=
  ∀ n, P16479875012641661438.a n = A127241 n

end A127241

/-! ## A127241.P17890786867270170210

`A254377(A099089(n)+1)`
-/

namespace A127241.P17890786867270170210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 (A099089 n + 1).toNat

end

end A127241.P17890786867270170210

namespace A127241

/-- `A254377(A099089(n)+1)` -/
def P17890786867270170210.Spec : Prop :=
  ∀ n, P17890786867270170210.a n = A127241 n

end A127241

/-! ## A127241.P10244805480743250551

`A010060(A099089(n))`
-/

namespace A127241.P10244805480743250551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A099089 n).toNat

end

end A127241.P10244805480743250551

namespace A127241

/-- `A010060(A099089(n))` -/
def P10244805480743250551.Spec : Prop :=
  ∀ n, P10244805480743250551.a n = A127241 n

end A127241

/-! ## A127241.P9351126502334962239

`A010060(A099040(n))`
-/

namespace A127241.P9351126502334962239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A099040 n).toNat

end

end A127241.P9351126502334962239

namespace A127241

/-- `A010060(A099040(n))` -/
def P9351126502334962239.Spec : Prop :=
  ∀ n, P9351126502334962239.a n = A127241 n

end A127241

/-!
# A127242: Diagonal sums of Thue-Morse triangle A127241.

The programs for A127242, there is no canonical definition to state claims against.
-/

/-! ## A127242.P6339538394605768950

`A327928(A137997(n+1)²)`
-/

namespace A127242.P6339538394605768950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327928 (A137997 (n + 1) ^ 2).toNat

end

end A127242.P6339538394605768950

/-! ## A127242.P4291287121601723928

`A327928(A137997(n+1)^2)`
-/

namespace A127242.P4291287121601723928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327928 (A137997 (n + 1) ^ 2).toNat

end

end A127242.P4291287121601723928

/-! ## A127242.P6897367407179964193

`A001222(∑{e}[A247820(2*n+5), #])`
-/

namespace A127242.P6897367407179964193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247820 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A127242.P6897367407179964193

/-! ## A127242.P2931325489602234332

`A004526(∑{e}[A247820(2*n+5), #])`
-/

namespace A127242.P2931325489602234332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247820 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A127242.P2931325489602234332

/-! ## A127242.P626428578921052674

`A071330(∑{e}[A247820(2*n+5), #])`
-/

namespace A127242.P626428578921052674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247820 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071330 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A127242.P626428578921052674

/-!
# A127243: Triangle whose k-th column is generated by (1+A010060(1+k)x)*x^k.

The programs for A127243, there is no canonical definition to state claims against.
-/

/-! ## A127243.P13355059109784870242

`abs(A127248(n))`
-/

namespace A127243.P13355059109784870242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A127248 n|

end

end A127243.P13355059109784870242

/-! ## A127243.P9515166618743541202

`dr(and(29, A127251(n)))`
-/

namespace A127243.P9515166618743541202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.land 29 (A127251 n))

end

end A127243.P9515166618743541202

/-! ## A127243.P12860438252966433271

`A127248(char[1]+n)²`
-/

namespace A127243.P12860438252966433271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127248 ((if ∃ j, f1 j = n then 1 else 0) + n) ^ 2

end

end A127243.P12860438252966433271

/-! ## A127243.P16076886804504559583

`dr(A127248(n-char[1]))`
-/

namespace A127243.P16076886804504559583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A127248 (n - (if ∃ j, f1 j = n then 1 else 0)))

end

end A127243.P16076886804504559583

/-! ## A127243.P18192711821204873592

`and(1, A127248(char[4]+n))`
-/

namespace A127243.P18192711821204873592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A127248 ((if ∃ j, f1 j = n then 1 else 0) + n))

end

end A127243.P18192711821204873592

/-! ## A127243.P15869149481833618984

`A010060(A134082(n))`
-/

namespace A127243.P15869149481833618984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A134082 n).toNat

end

end A127243.P15869149481833618984

/-! ## A127243.P10037688897086351261

`A010060(A128229(n+1))`
-/

namespace A127243.P10037688897086351261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A128229 (n + 1)).toNat

end

end A127243.P10037688897086351261

/-! ## A127243.P1342264848600278242

`A010060(A145677(n+1))`
-/

namespace A127243.P1342264848600278242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A145677 (n + 1)).toNat

end

end A127243.P1342264848600278242

/-! ## A127243.P10287422171794568223

`A052308(n)*A127248(n)`
-/

namespace A127243.P10287422171794568223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052308 n * A127248 n

end

end A127243.P10287422171794568223

/-! ## A127243.P5438152009206506414

`A052311(n)*A127248(n)`
-/

namespace A127243.P5438152009206506414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052311 n * A127248 n

end

end A127243.P5438152009206506414

/-!
# A127244: A Thue-Morse signed falling factorial triangle.

The programs for A127244, there is no canonical definition to state claims against.
-/

/-! ## A127244.P4783610465881947384

`A097807(n)*A127247(n)`
-/

namespace A127244.P4783610465881947384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A127247 n

end

end A127244.P4783610465881947384

/-! ## A127244.P4418863615283092691

`A110515(n)*A127247(n)`
-/

namespace A127244.P4418863615283092691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110515 n * A127247 n

end

end A127244.P4418863615283092691

/-! ## A127244.P9679975820916132648

`A127247(n)*A147768(n)`
-/

namespace A127244.P9679975820916132648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127247 n * A147768 n

end

end A127244.P9679975820916132648

/-! ## A127244.P11548919271250651087

`A127247(n)*A257196(A099375(n))`
-/

namespace A127244.P11548919271250651087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127247 n * A257196 (A099375 n).toNat

end

end A127244.P11548919271250651087

/-! ## A127244.P7682298769888035952

`A127247(n)*A127248(A025581(n))`
-/

namespace A127244.P7682298769888035952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127247 n * A127248 (A025581 n).toNat

end

end A127244.P7682298769888035952

/-! ## A127244.P5948068044769924750

`A107045(n)*A127247(n)`
-/

namespace A127244.P5948068044769924750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107045 n * A127247 n

end

end A127244.P5948068044769924750

/-! ## A127244.P8924216861078402587

`A106180(A122204(n))*A127247(n)`
-/

namespace A127244.P8924216861078402587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106180 (A122204 n).toNat * A127247 n

end

end A127244.P8924216861078402587

/-! ## A127244.P5199236025057586501

`round(sin(A127251(n)))`
-/

namespace A127244.P5199236025057586501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (A127251 n : ℝ))

end

end A127244.P5199236025057586501

/-! ## A127244.P15251218789753508668

`ceil(A127251(char[2]+n)/2)`
-/

namespace A127244.P15251218789753508668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A127251 ((if ∃ j, f1 j = n then 1 else 0) + n) : ℚ) / 2⌉

end

end A127244.P15251218789753508668

/-! ## A127244.P4631454195463493122

`round(A127251(char[7]+n)/2)`
-/

namespace A127244.P4631454195463493122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A127251 ((if ∃ j, f1 j = n then 1 else 0) + n) : ℚ) / 2)

end

end A127244.P4631454195463493122

/-!
# A127245: Row sums of a signed Thue-Morse related triangle.

The programs for A127245, the canonical program `A127245.P10214430626137893152` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127245 has offset 0).

The definition of A127245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3381 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127245.P17178202387130036712

`char[ceil(xor(n, 2*n)/2)]`
-/

namespace A127245.P17178202387130036712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor n (2 * n) : ℚ) / 2⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A127245.P17178202387130036712

namespace A127245

/-- `char[ceil(xor(n, 2*n)/2)]` -/
def P17178202387130036712.Spec : Prop :=
  ∀ n, (P17178202387130036712.a n : ℤ) = A127245 n

end A127245

/-! ## A127245.P16733293782360892000

`char[round(xor(n, 2*n)/2)]`
-/

namespace A127245.P16733293782360892000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor n (2 * n) : ℚ) / 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A127245.P16733293782360892000

namespace A127245

/-- `char[round(xor(n, 2*n)/2)]` -/
def P16733293782360892000.Spec : Prop :=
  ∀ n, (P16733293782360892000.a n : ℤ) = A127245 n

end A127245

/-! ## A127245.P10561324438198111927

`char[abs(xor(n, -ceil(n/2)))]`
-/

namespace A127245.P10561324438198111927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-⌈(n : ℚ) / 2⌉)|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A127245.P10561324438198111927

namespace A127245

/-- `char[abs(xor(n, -ceil(n/2)))]` -/
def P10561324438198111927.Spec : Prop :=
  ∀ n, (P10561324438198111927.a n : ℤ) = A127245 n

end A127245

/-! ## A127245.P16853712900614253265

`char[-xor(n, -ceil(n/2))]`
-/

namespace A127245.P16853712900614253265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (-⌈(n : ℚ) / 2⌉)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A127245.P16853712900614253265

namespace A127245

/-- `char[-xor(n, -ceil(n/2))]` -/
def P16853712900614253265.Spec : Prop :=
  ∀ n, (P16853712900614253265.a n : ℤ) = A127245 n

end A127245

/-! ## A127245.P8748279529916510828

`char[char[xor(n, Δ[n²])]+n]`
-/

namespace A127245.P8748279529916510828
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A127245.P8748279529916510828

namespace A127245

/-- `char[char[xor(n, Δ[n²])]+n]` -/
def P8748279529916510828.Spec : Prop :=
  ∀ n, (P8748279529916510828.a n : ℤ) = A127245 n

end A127245

/-! ## A127245.P15603456325747793800

`char[char[comp[xor(n, 2*n)]]+n]`
-/

namespace A127245.P15603456325747793800
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A127245.P15603456325747793800

namespace A127245

/-- `char[char[comp[xor(n, 2*n)]]+n]` -/
def P15603456325747793800.Spec : Prop :=
  ∀ n, (P15603456325747793800.a n : ℤ) = A127245 n

end A127245

/-! ## A127245.P13220687033709657977

`char[floor((xor(n, 2*n)+1)/2)]`
-/

namespace A127245.P13220687033709657977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor n (2 * n) + 1 : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A127245.P13220687033709657977

namespace A127245

/-- `char[floor((xor(n, 2*n)+1)/2)]` -/
def P13220687033709657977.Spec : Prop :=
  ∀ n, (P13220687033709657977.a n : ℤ) = A127245 n

end A127245

/-! ## A127245.P1913469372311803722

`char[xor(n, floor(n/2))+n%2]`
-/

namespace A127245.P1913469372311803722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ + ((n % 2 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A127245.P1913469372311803722

namespace A127245

/-- `char[xor(n, floor(n/2))+n%2]` -/
def P1913469372311803722.Spec : Prop :=
  ∀ n, (P1913469372311803722.a n : ℤ) = A127245 n

end A127245

/-! ## A127245.P1817078146540770061

`char[1-char[xor(n, 2*n)]+n]`
-/

namespace A127245.P1817078146540770061
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A127245.P1817078146540770061

namespace A127245

/-- `char[1-char[xor(n, 2*n)]+n]` -/
def P1817078146540770061.Spec : Prop :=
  ∀ n, (P1817078146540770061.a n : ℤ) = A127245 n

end A127245

/-! ## A127245.P15338425186641485738

`char[xor(n, floor(n/2))+and(1, n)]`
-/

namespace A127245.P15338425186641485738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ + (Nat.land 1 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A127245.P15338425186641485738

namespace A127245

/-- `char[xor(n, floor(n/2))+and(1, n)]` -/
def P15338425186641485738.Spec : Prop :=
  ∀ n, (P15338425186641485738.a n : ℤ) = A127245 n

end A127245

/-! ## A127245.P17109650805061222355

`A127254(2*n)`
-/

namespace A127245.P17109650805061222355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127254 (2 * n)

end

end A127245.P17109650805061222355

namespace A127245

/-- `A127254(2*n)` -/
def P17109650805061222355.Spec : Prop :=
  ∀ n, P17109650805061222355.a n = A127245 n

end A127245

/-! ## A127245.P3604168153808860708

`A268727(n)%2`
-/

namespace A127245.P3604168153808860708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268727 n) 2

end

end A127245.P3604168153808860708

namespace A127245

/-- `A268727(n)%2` -/
def P3604168153808860708.Spec : Prop :=
  ∀ n, P3604168153808860708.a n = A127245 n

end A127245

/-! ## A127245.P10214430626137893152

`(1-A101671(n))²`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A127245

/-- `(1-A101671(n))²` -/
def P10214430626137893152.Spec : Prop :=
  ∀ n, P10214430626137893152.a n = A127245 n

theorem P10214430626137893152.correct : P10214430626137893152.Spec := by
  intro n
  simp only [A127245]

end A127245

/-! ## A127245.P2528251575870747440

`char[A093505(n+1)]`
-/

namespace A127245.P2528251575870747440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A127245.P2528251575870747440

namespace A127245

/-- `char[A093505(n+1)]` -/
def P2528251575870747440.Spec : Prop :=
  ∀ n, (P2528251575870747440.a n : ℤ) = A127245 n

end A127245

/-! ## A127245.P8181567127002269605

`char[A115384(2*n)]`
-/

namespace A127245.P8181567127002269605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A127245.P8181567127002269605

namespace A127245

/-- `char[A115384(2*n)]` -/
def P8181567127002269605.Spec : Prop :=
  ∀ n, (P8181567127002269605.a n : ℤ) = A127245 n

end A127245

/-! ## A127245.P16107761426143595211

`char[A010060(n)+n]`
-/

namespace A127245.P16107761426143595211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A127245.P16107761426143595211

namespace A127245

/-- `char[A010060(n)+n]` -/
def P16107761426143595211.Spec : Prop :=
  ∀ n, (P16107761426143595211.a n : ℤ) = A127245 n

end A127245

/-! ## A127245.P4911833845296244742

`A005680(n+1)%2`
-/

namespace A127245.P4911833845296244742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005680 (n + 1)) 2

end

end A127245.P4911833845296244742

namespace A127245

/-- `A005680(n+1)%2` -/
def P4911833845296244742.Spec : Prop :=
  ∀ n, P4911833845296244742.a n = A127245 n

end A127245

/-! ## A127245.P7089249625984769247

`A232637(n+1)%2`
-/

namespace A127245.P7089249625984769247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232637 (n + 1)) 2

end

end A127245.P7089249625984769247

namespace A127245

/-- `A232637(n+1)%2` -/
def P7089249625984769247.Spec : Prop :=
  ∀ n, P7089249625984769247.a n = A127245 n

end A127245

/-! ## A127245.P3040174789683368717

`and(1, A268726(n)+1)`
-/

namespace A127245.P3040174789683368717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A268726 n + 1)

end

end A127245.P3040174789683368717

namespace A127245

/-- `and(1, A268726(n)+1)` -/
def P3040174789683368717.Spec : Prop :=
  ∀ n, P3040174789683368717.a n = A127245 n

end A127245

/-! ## A127245.P3862297304228197692

`char[abs(A285779(2*n))]`
-/

namespace A127245.P3862297304228197692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A285779 (2 * n)|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A127245.P3862297304228197692

namespace A127245

/-- `char[abs(A285779(2*n))]` -/
def P3862297304228197692.Spec : Prop :=
  ∀ n, (P3862297304228197692.a n : ℤ) = A127245 n

end A127245

/-!
# A127246: Row sums of a Thue-Morse related triangle.

The programs for A127246, the canonical program `A127246.P14720288942938943665` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127246 has offset 0).

The definition of A127246 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127245, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A127246.P14720288942938943665

`A127245(n)+2*A010060(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A127246

/-- `A127245(n)+2*A010060(n)` -/
def P14720288942938943665.Spec : Prop :=
  ∀ n, P14720288942938943665.a n = A127246 n

theorem P14720288942938943665.correct : P14720288942938943665.Spec := by
  intro n
  simp only [A127246]

end A127246

/-! ## A127246.P14139483387008184576

`xor(n, n-a(n-1))%3+1` with `a(0)=1`
-/

namespace A127246.P14139483387008184576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - a (n - 1))) 3 + 1

end

end A127246.P14139483387008184576

namespace A127246

/-- `xor(n, n-a(n-1))%3+1` -/
def P14139483387008184576.Spec : Prop :=
  ∀ n, P14139483387008184576.a n = A127246 n

end A127246

/-! ## A127246.P9825567770960003561

`(val(comp[xor(n, 2*n)], 2)-1)%2+2`
-/

namespace A127246.P9825567770960003561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) 2 : ℤ) - 1) 2 + 2

end

end A127246.P9825567770960003561

namespace A127246

/-- `(val(comp[xor(n, 2*n)], 2)-1)%2+2` -/
def P9825567770960003561.Spec : Prop :=
  ∀ n, P9825567770960003561.a n = A127246 n

end A127246

/-! ## A127246.P17882621405409942294

`a(n-1)*char[xor(n, Δ[n²])]+1` with `a(0)=1`
-/

namespace A127246.P17882621405409942294
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A127246.P17882621405409942294

namespace A127246

/-- `a(n-1)*char[xor(n, Δ[n²])]+1` -/
def P17882621405409942294.Spec : Prop :=
  ∀ n, (P17882621405409942294.a n : ℤ) = A127246 n

end A127246

/-! ## A127246.P15251857790320268211

`a(n-1)*char[comp[xor(n, 2*n)]]+1` with `a(0)=1`
-/

namespace A127246.P15251857790320268211
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (if ∃ j, f1 j = n then 1 else 0) + 1

end

end A127246.P15251857790320268211

namespace A127246

/-- `a(n-1)*char[comp[xor(n, 2*n)]]+1` -/
def P15251857790320268211.Spec : Prop :=
  ∀ n, (P15251857790320268211.a n : ℤ) = A127246 n

end A127246

/-! ## A127246.P1602794418145575393

`and(n, -n)%3*char[xor(n, Δ[n²])]+1`
-/

namespace A127246.P1602794418145575393
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n : ℤ) (-(n : ℤ))) 3 * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + 1

end

end A127246.P1602794418145575393

namespace A127246

/-- `and(n, -n)%3*char[xor(n, Δ[n²])]+1` -/
def P1602794418145575393.Spec : Prop :=
  ∀ n, P1602794418145575393.a n = A127246 n

end A127246

/-! ## A127246.P6591214210017298940

`(1-char[xor(n, 2*n)])*a(n-1)+1` with `a(0)=1`
-/

namespace A127246.P6591214210017298940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * a (n - 1) + 1

end

end A127246.P6591214210017298940

namespace A127246

/-- `(1-char[xor(n, 2*n)])*a(n-1)+1` -/
def P6591214210017298940.Spec : Prop :=
  ∀ n, P6591214210017298940.a n = A127246 n

end A127246

/-! ## A127246.P12462611771820704755

`val(12*a(n-1), a(and(n, n-1))+1)` with `a(0)=1`
-/

namespace A127246.P12462611771820704755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.valuation (12 * a (n - 1)) (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1)

end

end A127246.P12462611771820704755

namespace A127246

/-- `val(12*a(n-1), a(and(n, n-1))+1)` -/
def P12462611771820704755.Spec : Prop :=
  ∀ n, (P12462611771820704755.a n : ℤ) = A127246 n

end A127246

/-! ## A127246.P3951570423752741938

`round(ϕ*a(n-1))^(1-char[xor(n, 2*n)])` with `a(0)=1`
-/

namespace A127246.P3951570423752741938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ)) : ℚ) ^ (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A127246.P3951570423752741938

namespace A127246

/-- `round(ϕ*a(n-1))^(1-char[xor(n, 2*n)])` -/
def P3951570423752741938.Spec : Prop :=
  ∀ n, P3951570423752741938.a n = (A127246 n : ℚ)

end A127246

/-! ## A127246.P6306145783729236954

`gcd(a(n-1)+1, 2*n-comp[xor(n, 2*n)])` with `a(0)=1`
-/

namespace A127246.P6306145783729236954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (a (n - 1) + 1 : ℤ) ((2 * n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ))

end

end A127246.P6306145783729236954

namespace A127246

/-- `gcd(a(n-1)+1, 2*n-comp[xor(n, 2*n)])` -/
def P6306145783729236954.Spec : Prop :=
  ∀ n, (P6306145783729236954.a n : ℤ) = A127246 n

end A127246

/-! ## A127246.P3483849514727543811

`A101671(n)+1`
-/

namespace A127246.P3483849514727543811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101671 n + 1

end

end A127246.P3483849514727543811

namespace A127246

/-- `A101671(n)+1` -/
def P3483849514727543811.Spec : Prop :=
  ∀ n, P3483849514727543811.a n = A127246 n

end A127246

/-! ## A127246.P12983282567064676464

`A232637(n+1)%4`
-/

namespace A127246.P12983282567064676464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232637 (n + 1)) 4

end

end A127246.P12983282567064676464

namespace A127246

/-- `A232637(n+1)%4` -/
def P12983282567064676464.Spec : Prop :=
  ∀ n, P12983282567064676464.a n = A127246 n

end A127246

/-! ## A127246.P9133733969832432079

`A010873(A232637(n+1))`
-/

namespace A127246.P9133733969832432079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A232637 (n + 1)).toNat

end

end A127246.P9133733969832432079

namespace A127246

/-- `A010873(A232637(n+1))` -/
def P9133733969832432079.Spec : Prop :=
  ∀ n, P9133733969832432079.a n = A127246 n

end A127246

/-! ## A127246.P16328110623530828706

`A134451(A268726(n))+1`
-/

namespace A127246.P16328110623530828706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A268726 n).toNat + 1

end

end A127246.P16328110623530828706

namespace A127246

/-- `A134451(A268726(n))+1` -/
def P16328110623530828706.Spec : Prop :=
  ∀ n, P16328110623530828706.a n = A127246 n

end A127246

/-! ## A127246.P16426442780542842016

`A191254(A000069(n+1))+1`
-/

namespace A127246.P16426442780542842016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191254 (A000069 (n + 1)).toNat + 1

end

end A127246.P16426442780542842016

namespace A127246

/-- `A191254(A000069(n+1))+1` -/
def P16426442780542842016.Spec : Prop :=
  ∀ n, P16426442780542842016.a n = A127246 n

end A127246

/-! ## A127246.P1318362196994835749

`A191254(A066194(n+1))+1`
-/

namespace A127246.P1318362196994835749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191254 (A066194 (n + 1)).toNat + 1

end

end A127246.P1318362196994835749

namespace A127246

/-- `A191254(A066194(n+1))+1` -/
def P1318362196994835749.Spec : Prop :=
  ∀ n, P1318362196994835749.a n = A127246 n

end A127246

/-! ## A127246.P14973281012512871432

`A001285(n)+1-A127254(n)`
-/

namespace A127246.P14973281012512871432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n + (1 - A127254 n)

end

end A127246.P14973281012512871432

namespace A127246

/-- `A001285(n)+1-A127254(n)` -/
def P14973281012512871432.Spec : Prop :=
  ∀ n, P14973281012512871432.a n = A127246 n

end A127246

/-! ## A127246.P1273811741428218844

`n+1-A001969(A159481(n))`
-/

namespace A127246.P1273811741428218844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001969 (A159481 n).toNat

end

end A127246.P1273811741428218844

namespace A127246

/-- `n+1-A001969(A159481(n))` -/
def P1273811741428218844.Spec : Prop :=
  ∀ n, P1273811741428218844.a n = A127246 n

end A127246

/-! ## A127246.P17654952196315495698

`A010060(n)+2-A127254(n)`
-/

namespace A127246.P17654952196315495698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n + (2 - A127254 n)

end

end A127246.P17654952196315495698

namespace A127246

/-- `A010060(n)+2-A127254(n)` -/
def P17654952196315495698.Spec : Prop :=
  ∀ n, P17654952196315495698.a n = A127246 n

end A127246

/-! ## A127246.P274958213236334383

`gcd(A005680(n+1), A036579(n))`
-/

namespace A127246.P274958213236334383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005680 (n + 1)) (A036579 n)

end

end A127246.P274958213236334383

namespace A127246

/-- `gcd(A005680(n+1), A036579(n))` -/
def P274958213236334383.Spec : Prop :=
  ∀ n, (P274958213236334383.a n : ℤ) = A127246 n

end A127246

/-!
# A127247: A Thue-Morse falling factorial triangle.

The programs for A127247, there is no canonical definition to state claims against.
-/

/-! ## A127247.P9282723135039973330

`abs(A127244(n))`
-/

namespace A127247.P9282723135039973330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A127244 n|

end

end A127247.P9282723135039973330

/-! ## A127247.P1541817256372232768

`A127244(char[1]+n)²`
-/

namespace A127247.P1541817256372232768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127244 ((if ∃ j, f1 j = n then 1 else 0) + n) ^ 2

end

end A127247.P1541817256372232768

/-! ## A127247.P16460265570552426864

`dr(A127244(n-char[1]))`
-/

namespace A127247.P16460265570552426864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A127244 (n - (if ∃ j, f1 j = n then 1 else 0)))

end

end A127247.P16460265570552426864

/-! ## A127247.P10864326104184601208

`A097807(n)*A127244(n)`
-/

namespace A127247.P10864326104184601208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A127244 n

end

end A127247.P10864326104184601208

/-! ## A127247.P2310107009886746897

`A110515(n)*A127244(n)`
-/

namespace A127247.P2310107009886746897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110515 n * A127244 n

end

end A127247.P2310107009886746897

/-! ## A127247.P14378534436540367663

`A127244(n)*A147768(n)`
-/

namespace A127247.P14378534436540367663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127244 n * A147768 n

end

end A127247.P14378534436540367663

/-! ## A127247.P14803529590707161591

`gcd(A000038(n), A127244(n))`
-/

namespace A127247.P14803529590707161591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A127244 n)

end

end A127247.P14803529590707161591

/-! ## A127247.P14732438254101057493

`and(A046854(n), A127244(n))`
-/

namespace A127247.P14732438254101057493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046854 n) (A127244 n)

end

end A127247.P14732438254101057493

/-! ## A127247.P8028905900001885363

`and(A063686(n), A127244(n))`
-/

namespace A127247.P8028905900001885363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063686 n) (A127244 n)

end

end A127247.P8028905900001885363

/-! ## A127247.P2419356499225946159

`and(A071024(n), A127244(n))`
-/

namespace A127247.P2419356499225946159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071024 n) (A127244 n)

end

end A127247.P2419356499225946159

/-! ## A127247.P13986841208231752245

`and(A071025(n), A127244(n))`
-/

namespace A127247.P13986841208231752245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071025 n) (A127244 n)

end

end A127247.P13986841208231752245

/-! ## A127247.P4247638224790353700

`and(A057790(n+1), A127244(n))`
-/

namespace A127247.P4247638224790353700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057790 (n + 1)) (A127244 n)

end

end A127247.P4247638224790353700

/-! ## A127247.P7533608659682659087

`and(A008550(n), A127244(n))`
-/

namespace A127247.P7533608659682659087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008550 n) (A127244 n)

end

end A127247.P7533608659682659087

/-! ## A127247.P4117328697595301552

`and(A064094(n), A127244(n))`
-/

namespace A127247.P4117328697595301552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A064094 n) (A127244 n)

end

end A127247.P4117328697595301552

/-! ## A127247.P10644057857800580712

`and(A064334(n), A127244(n))`
-/

namespace A127247.P10644057857800580712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A064334 n) (A127244 n)

end

end A127247.P10644057857800580712

/-! ## A127247.P17125019754940791093

`A127245(A127244(n)+A091855(n+1))`
-/

namespace A127247.P17125019754940791093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127245 (A127244 n + A091855 (n + 1)).toNat

end

end A127247.P17125019754940791093

/-! ## A127247.P4032985429580195245

`and(A069777(n), A127244(n))`
-/

namespace A127247.P4032985429580195245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A069777 n) (A127244 n)

end

end A127247.P4032985429580195245

/-! ## A127247.P14064127719621852160

`and(A090182(n), A127244(n))`
-/

namespace A127247.P14064127719621852160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A090182 n) (A127244 n)

end

end A127247.P14064127719621852160

/-! ## A127247.P11960082081294056382

`A107045(n)*A127244(n)`
-/

namespace A127247.P11960082081294056382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107045 n * A127244 n

end

end A127247.P11960082081294056382

/-! ## A127247.P4417650966715414860

`and(A008327(n+1), A127244(n))`
-/

namespace A127247.P4417650966715414860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008327 (n + 1)) (A127244 n)

end

end A127247.P4417650966715414860

/-!
# A127248: Triangle whose k-th column is generated by (1-A010060(1+k)*x)*x^k.

The programs for A127248, there is no canonical definition to state claims against.
-/

/-! ## A127248.P13123588727075497886

`round(sin(and(5, A127251(n))))`
-/

namespace A127248.P13123588727075497886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (Int.land 5 (A127251 n) : ℝ))

end

end A127248.P13123588727075497886

/-! ## A127248.P8058952975572359198

`char[∑[n-1]]+floor(A127244(n)/2)`
-/

namespace A127248.P8058952975572359198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ⌊(A127244 n : ℚ) / 2⌋

end

end A127248.P8058952975572359198

/-! ## A127248.P17316427446572980129

`(2*char[∑[n-1]]-1)*A127243(n)`
-/

namespace A127248.P17316427446572980129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ) - 1) * A127243 n

end

end A127248.P17316427446572980129

/-! ## A127248.P686078887425802305

`A036579(A134082(n))-1`
-/

namespace A127248.P686078887425802305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036579 (A134082 n).toNat - 1

end

end A127248.P686078887425802305

/-! ## A127248.P18119477591728449977

`A156707(A134082(n)+7)`
-/

namespace A127248.P18119477591728449977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156707 (A134082 n + 7).toNat

end

end A127248.P18119477591728449977

/-! ## A127248.P16778893130209349171

`A073202(n)*A127244(n)`
-/

namespace A127248.P16778893130209349171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073202 n * A127244 n

end

end A127248.P16778893130209349171

/-! ## A127248.P12368021517829782558

`A097806(n)*A127244(n)`
-/

namespace A127248.P12368021517829782558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A127244 n

end

end A127248.P12368021517829782558

/-! ## A127248.P85126223543617714

`A127243(n)*A127244(n)`
-/

namespace A127248.P85126223543617714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127243 n * A127244 n

end

end A127248.P85126223543617714

/-! ## A127248.P11951875896515334211

`A127243(n)*A127543(n)`
-/

namespace A127248.P11951875896515334211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127243 n * A127543 n

end

end A127248.P11951875896515334211

/-! ## A127248.P12086460744364743455

`A127244(n)*A127872(n)`
-/

namespace A127248.P12086460744364743455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127244 n * A127872 n

end

end A127248.P12086460744364743455

/-!
# A127249: A product of Thue-Morse related triangles.

The programs for A127249, there is no canonical definition to state claims against.
-/

/-! ## A127249.P7835499290993243721

`abs(A127251(n))`
-/

namespace A127249.P7835499290993243721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A127251 n|

end

end A127249.P7835499290993243721

/-! ## A127249.P9889140180507294899

`and(3, A127251(char[3]+n))`
-/

namespace A127249.P9889140180507294899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A127251 ((if ∃ j, f1 j = n then 1 else 0) + n))

end

end A127249.P9889140180507294899

/-! ## A127249.P3881973249589092637

`17%(A127251(char[7]+n)²+1)`
-/

namespace A127249.P3881973249589092637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 17 (A127251 ((if ∃ j, f1 j = n then 1 else 0) + n) ^ 2 + 1)

end

end A127249.P3881973249589092637

/-! ## A127249.P1630938441709508962

`(char[comp[∑[n-1]]]+1)*A127247(n)`
-/

namespace A127249.P1630938441709508962
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) * A127247 n

end

end A127249.P1630938441709508962

/-! ## A127249.P11860912899633731475

`lcm(3*char[∑[n-1]]-2, A127244(n))`
-/

namespace A127249.P11860912899633731475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((3 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ) - 2) (A127244 n)

end

end A127249.P11860912899633731475

/-! ## A127249.P9796413568373296015

`A097807(n)*A127251(n)`
-/

namespace A127249.P9796413568373296015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A127251 n

end

end A127249.P9796413568373296015

/-! ## A127249.P14126512095904917682

`A107045(n)*A127251(n)`
-/

namespace A127249.P14126512095904917682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107045 n * A127251 n

end

end A127249.P14126512095904917682

/-! ## A127249.P3825719789731807339

`A110515(n)*A127251(n)`
-/

namespace A127249.P3825719789731807339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110515 n * A127251 n

end

end A127249.P3825719789731807339

/-! ## A127249.P9737461777246546289

`A127244(n)*A127251(n)`
-/

namespace A127249.P9737461777246546289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127244 n * A127251 n

end

end A127249.P9737461777246546289

/-! ## A127249.P17969376854056008169

`A127247(n)*A144083(n)`
-/

namespace A127249.P17969376854056008169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127247 n * A144083 n

end

end A127249.P17969376854056008169

/-!
# A127250: Sequence consisting of 1,3 or 5 with 3's occurring at the odious indices given by A091855 and 5's occurring at twice these odious indices.

The programs for A127250, there is no canonical definition to state claims against.
-/

/-! ## A127250.P17826065413822650955

`gcd(15, 2*a(floor(n/2))-(-1)^n)` with `a(0)=1`
-/

namespace A127250.P17826065413822650955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd 15 ((2 * a ⌊(n : ℚ) / 2⌋.toNat : ℤ) - (-1) ^ n)

end

end A127250.P17826065413822650955

/-! ## A127250.P4520172762410766080

`gcd(a(n-1)+2, 1-a(and(n, n-1)))` with `a(0)=1`
-/

namespace A127250.P4520172762410766080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (a (n - 1) + 2 : ℤ) (1 - (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat : ℤ))

end

end A127250.P4520172762410766080

/-! ## A127250.P17613290100822863028

`(a(n-1)+2)^(1-char[xor(n, 2*n)])` with `a(0)=1`
-/

namespace A127250.P17613290100822863028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 2) ^ (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A127250.P17613290100822863028

/-! ## A127250.P583857889827640465

`C(a(n-1)+2, 1-char[xor(n, 2*n)])` with `a(0)=1`
-/

namespace A127250.P583857889827640465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (a (n - 1) + 2) (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A127250.P583857889827640465

/-! ## A127250.P6974663004762777180

`(a(n-1)+1)*char[xor(n, Δ[n²])]+1` with `a(0)=1`
-/

namespace A127250.P6974663004762777180
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 1) * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A127250.P6974663004762777180

/-! ## A127250.P6927415710918211898

`(a(n-1)+1)*char[comp[xor(n, 2*n)]]+1` with `a(0)=1`
-/

namespace A127250.P6927415710918211898
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 1) * (if ∃ j, f1 j = n then 1 else 0) + 1

end

end A127250.P6927415710918211898

/-! ## A127250.P6252786479909189617

`(a(n-1)+2)^(comp[xor(n, 2*n+1)]%2)` with `a(0)=1`
-/

namespace A127250.P6252786479909189617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 2) ^ (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2)

end

end A127250.P6252786479909189617

/-! ## A127250.P8423501079769942651

`(a(n-1)+2)^and(1, comp[xor(n, 2*n+1)])` with `a(0)=1`
-/

namespace A127250.P8423501079769942651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 2) ^ Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A127250.P8423501079769942651

/-! ## A127250.P2657557233291554933

`(a(n-1)+2)^C(2*n, comp[xor(n, 2*n)])` with `a(0)=1`
-/

namespace A127250.P2657557233291554933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 2) ^ Nat.choose (2 * n) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A127250.P2657557233291554933

/-! ## A127250.P16017717688102600589

`(a(n-1)+2)^xor(2*n+1, comp[xor(n, 2*n)])` with `a(0)=1`
-/

namespace A127250.P16017717688102600589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 2) ^ Nat.xor (2 * n + 1) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A127250.P16017717688102600589

/-!
# A127251: Inverse of number triangle A127249.

The programs for A127251, there is no canonical definition to state claims against.
-/

/-! ## A127251.P6241957237378102111

`abs(3*char[∑[n-1]]-2)*A127244(n)`
-/

namespace A127251.P6241957237378102111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((3 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ) - 2| * A127244 n

end

end A127251.P6241957237378102111

/-! ## A127251.P2184932967965941165

`A097807(n)*A127249(n)`
-/

namespace A127251.P2184932967965941165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A127249 n

end

end A127251.P2184932967965941165

/-! ## A127251.P2452171727394471923

`A107045(n)*A127249(n)`
-/

namespace A127251.P2452171727394471923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107045 n * A127249 n

end

end A127251.P2452171727394471923

/-! ## A127251.P17392666655529388371

`A110515(n)*A127249(n)`
-/

namespace A127251.P17392666655529388371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110515 n * A127249 n

end

end A127251.P17392666655529388371

/-! ## A127251.P15452866127117539155

`A127244(n)*A127249(n)`
-/

namespace A127251.P15452866127117539155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127244 n * A127249 n

end

end A127251.P15452866127117539155

/-! ## A127251.P4399066195784824510

`A127244(n)*A144083(n)`
-/

namespace A127251.P4399066195784824510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127244 n * A144083 n

end

end A127251.P4399066195784824510

/-! ## A127251.P13779672032156297458

`A127249(n)*A147768(n)`
-/

namespace A127251.P13779672032156297458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127249 n * A147768 n

end

end A127251.P13779672032156297458

/-! ## A127251.P2341402057366378339

`A127249(n)*A257075(n)`
-/

namespace A127251.P2341402057366378339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127249 n * A257075 n

end

end A127251.P2341402057366378339

/-! ## A127251.P266928714439925346

`A127244(n)*A272171(n+1)`
-/

namespace A127251.P266928714439925346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127244 n * A272171 (n + 1)

end

end A127251.P266928714439925346

/-! ## A127251.P12189425099282451968

`A127244(n)*A320140(A025581(n))`
-/

namespace A127251.P12189425099282451968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127244 n * A320140 (A025581 n).toNat

end

end A127251.P12189425099282451968

/-!
# A127252: Sequence composed of 1 and -1 with the -1's occurring at odious indexed positions given by A091855.

The programs for A127252, there is no canonical definition to state claims against.
-/

/-! ## A127252.P4056778865743544826

`(-1)^val(comp[xor(n, 2*n)], 2)`
-/

namespace A127252.P4056778865743544826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) 2

end

end A127252.P4056778865743544826

/-! ## A127252.P17921421686722426271

`cos(π*val(comp[xor(n, 2*n)], 2))`
-/

namespace A127252.P17921421686722426271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (Real.pi * (SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) 2 : ℝ))

end

end A127252.P17921421686722426271

/-! ## A127252.P2856579844371770747

`2*char[ceil(xor(n, 2*n)/2)]-1`
-/

namespace A127252.P2856579844371770747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor n (2 * n) : ℚ) / 2⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ) - 1

end

end A127252.P2856579844371770747

/-! ## A127252.P13421556154497153656

`2*char[char[xor(n, Δ[n²])]+n]-1`
-/

namespace A127252.P13421556154497153656
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ) - 1

end

end A127252.P13421556154497153656

/-! ## A127252.P13606748563601520875

`(-a(n-1))^∑[and(n, -n)%3]` with `a(0)=1`
-/

namespace A127252.P13606748563601520875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n : ℤ) (-(n : ℤ))) 3

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (-a (n - 1)) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A127252.P13606748563601520875

/-! ## A127252.P10917155131002402994

`(-a(n-1))^∑[∑{e}[xor(n, -n), #]]` with `a(0)=1`
-/

namespace A127252.P10917155131002402994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (-a (n - 1)) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127252.P10917155131002402994

/-! ## A127252.P11753242643207164960

`(-a(n-1))^comp[xor(n, 2*n+1)]` with `a(0)=1`
-/

namespace A127252.P11753242643207164960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (-a (n - 1)) ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A127252.P11753242643207164960

/-! ## A127252.P4141516837286810441

`(-a(n-1))^(n-∑[∑{e}[and(n, -n), #]])` with `a(0)=1`
-/

namespace A127252.P4141516837286810441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (-a (n - 1)) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ)

end

end A127252.P4141516837286810441

/-! ## A127252.P10045756502567573252

`(1-(a(n-1)+a(floor(n/2))))^(xor(n, n-1)%3)²` with `a(0)=1`
-/

namespace A127252.P10045756502567573252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (1 - (a (n - 1) + a ⌊(n : ℚ) / 2⌋.toNat)) ^ (Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 1)) 3 ^ 2 : ℤ)

end

end A127252.P10045756502567573252

/-! ## A127252.P5283592876356199143

`2*A127245(n)-1`
-/

namespace A127252.P5283592876356199143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127245 n - 1

end

end A127252.P5283592876356199143

/-!
# A127253: Product of number triangles A127243 and A127248.

The programs for A127253, there is no canonical definition to state claims against.
-/

/-! ## A127253.P8507585873758376837

`ceil(A060821(n)%3/2)`
-/

namespace A127253.P8507585873758376837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.tmod (A060821 n) 3 : ℚ) / 2⌉

end

end A127253.P8507585873758376837

/-! ## A127253.P10709544111257073876

`char[∑[n-1]]-char[A084512(n+1)]`
-/

namespace A127253.P10709544111257073876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084512 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A127253.P10709544111257073876

/-! ## A127253.P14510095751574537279

`char[∑[n-1]]-char[A084522(n+1)]`
-/

namespace A127253.P14510095751574537279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084522 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A127253.P14510095751574537279

/-! ## A127253.P16458084882183606966

`char[∑[n-1]]-char[A220857(n+1)]`
-/

namespace A127253.P16458084882183606966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220857 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A127253.P16458084882183606966

/-! ## A127253.P12302599937781682501

`char[∑[n-1]]-char[A268621(n+1)]`
-/

namespace A127253.P12302599937781682501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268621 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A127253.P12302599937781682501

/-! ## A127253.P100612436504077920

`char[∑[n-1]]-char[A269046(n+1)]`
-/

namespace A127253.P100612436504077920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269046 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A127253.P100612436504077920

/-! ## A127253.P17381689012494946748

`char[∑[n-1]]-char[A032443(2*n+1)]`
-/

namespace A127253.P17381689012494946748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032443 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A127253.P17381689012494946748

/-! ## A127253.P2792392695854860581

`char[∑[n-1]]-char[A038048(2*(n+1))]`
-/

namespace A127253.P2792392695854860581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038048 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A127253.P2792392695854860581

/-! ## A127253.P5062345327482404459

`char[∑[n-1]]-char[A054886(5*n+1)]`
-/

namespace A127253.P5062345327482404459
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054886 (5 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A127253.P5062345327482404459

/-! ## A127253.P12437247901715432585

`char[∑[n-1]]-char[A213598(7*n+3)]`
-/

namespace A127253.P12437247901715432585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 (7 * n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A127253.P12437247901715432585

/-!
# A127254: (0,1) sequence whose zero positions are indexed by twice the odious numbers given by A091855.

The programs for A127254, the canonical program `A127254.P8491110763917439245` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127254 has offset 0).

The definition of A127254 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127254.P17759230617361126045

`char[char[xor(n, 2*or(1, n))]+n]`
-/

namespace A127254.P17759230617361126045
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * Nat.lor 1 n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A127254.P17759230617361126045

namespace A127254

/-- `char[char[xor(n, 2*or(1, n))]+n]` -/
def P17759230617361126045.Spec : Prop :=
  ∀ n, (P17759230617361126045.a n : ℤ) = A127254 n

end A127254

/-! ## A127254.P8491110763917439245

`2-A101671(n)!`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A127254

/-- `2-A101671(n)!` -/
def P8491110763917439245.Spec : Prop :=
  ∀ n, P8491110763917439245.a n = A127254 n

theorem P8491110763917439245.correct : P8491110763917439245.Spec := by
  intro n
  simp only [A127254]

end A127254

/-! ## A127254.P16658063146400349002

`char[A095190(n)+n]`
-/

namespace A127254.P16658063146400349002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095190 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A127254.P16658063146400349002

namespace A127254

/-- `char[A095190(n)+n]` -/
def P16658063146400349002.Spec : Prop :=
  ∀ n, (P16658063146400349002.a n : ℤ) = A127254 n

end A127254

/-! ## A127254.P14284625801905795903

`A254378(n+1)!%5`
-/

namespace A127254.P14284625801905795903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A254378 (n + 1)).toNat % 5

end

end A127254.P14284625801905795903

namespace A127254

/-- `A254378(n+1)!%5` -/
def P14284625801905795903.Spec : Prop :=
  ∀ n, (P14284625801905795903.a n : ℤ) = A127254 n

end A127254

/-! ## A127254.P16808167769097281926

`1-char[A036554(Δ[n²])]`
-/

namespace A127254.P16808167769097281926
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A127254.P16808167769097281926

namespace A127254

/-- `1-char[A036554(Δ[n²])]` -/
def P16808167769097281926.Spec : Prop :=
  ∀ n, P16808167769097281926.a n = A127254 n

end A127254

/-! ## A127254.P13911579033389377664

`A254651(n*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A127254.P13911579033389377664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A254651 ((n : ℤ) * a (n - 2)).toNat

end

end A127254.P13911579033389377664

namespace A127254

/-- `A254651(n*a(n-2))` -/
def P13911579033389377664.Spec : Prop :=
  ∀ n, P13911579033389377664.a n = A127254 n

end A127254

/-! ## A127254.P4021769670597001647

`1-char[2*A091855(n+1)]`
-/

namespace A127254.P4021769670597001647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091855 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A127254.P4021769670597001647

namespace A127254

/-- `1-char[2*A091855(n+1)]` -/
def P4021769670597001647.Spec : Prop :=
  ∀ n, P4021769670597001647.a n = A127254 n

end A127254

/-! ## A127254.P8993074197724655296

`char[comp[A079523(2*n+1)+1]]`
-/

namespace A127254.P8993074197724655296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079523 (2 * n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A127254.P8993074197724655296

namespace A127254

/-- `char[comp[A079523(2*n+1)+1]]` -/
def P8993074197724655296.Spec : Prop :=
  ∀ n, (P8993074197724655296.a n : ℤ) = A127254 n

end A127254

/-! ## A127254.P13238141908932620671

`A254377(n-char[comp[xor(n, 2*n)]])`
-/

namespace A127254.P13238141908932620671
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A127254.P13238141908932620671

namespace A127254

/-- `A254377(n-char[comp[xor(n, 2*n)]])` -/
def P13238141908932620671.Spec : Prop :=
  ∀ n, P13238141908932620671.a n = A127254 n

end A127254

/-! ## A127254.P9388011560548024832

`1-char[2*A003159(2*n+1)]`
-/

namespace A127254.P9388011560548024832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003159 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A127254.P9388011560548024832

namespace A127254

/-- `1-char[2*A003159(2*n+1)]` -/
def P9388011560548024832.Spec : Prop :=
  ∀ n, P9388011560548024832.a n = A127254 n

end A127254

/-! ## A127254.P3152575688507322809

`A010059(A161560(n+1))`
-/

namespace A127254.P3152575688507322809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A161560 (n + 1)).toNat

end

end A127254.P3152575688507322809

namespace A127254

/-- `A010059(A161560(n+1))` -/
def P3152575688507322809.Spec : Prop :=
  ∀ n, P3152575688507322809.a n = A127254 n

end A127254

/-! ## A127254.P7100667233341306110

`A359832(A000069(n+1))`
-/

namespace A127254.P7100667233341306110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359832 (A000069 (n + 1)).toNat

end

end A127254.P7100667233341306110

namespace A127254

/-- `A359832(A000069(n+1))` -/
def P7100667233341306110.Spec : Prop :=
  ∀ n, P7100667233341306110.a n = A127254 n

end A127254

/-! ## A127254.P5725853719904629866

`A359832(A066194(n+1))`
-/

namespace A127254.P5725853719904629866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359832 (A066194 (n + 1)).toNat

end

end A127254.P5725853719904629866

namespace A127254

/-- `A359832(A066194(n+1))` -/
def P5725853719904629866.Spec : Prop :=
  ∀ n, P5725853719904629866.a n = A127254 n

end A127254

/-! ## A127254.P11519828876698914034

`A166486(A286057(n+1))`
-/

namespace A127254.P11519828876698914034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (A286057 (n + 1)).toNat

end

end A127254.P11519828876698914034

namespace A127254

/-- `A166486(A286057(n+1))` -/
def P11519828876698914034.Spec : Prop :=
  ∀ n, P11519828876698914034.a n = A127254 n

end A127254

/-! ## A127254.P12383461117544886191

`A035263(A036579(n)+n)`
-/

namespace A127254.P12383461117544886191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (A036579 n + (n : ℤ)).toNat

end

end A127254.P12383461117544886191

namespace A127254

/-- `A035263(A036579(n)+n)` -/
def P12383461117544886191.Spec : Prop :=
  ∀ n, P12383461117544886191.a n = A127254 n

end A127254

/-! ## A127254.P11863516427130671642

`A010059(n-A010060(n))`
-/

namespace A127254.P11863516427130671642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 ((n : ℤ) - A010060 n).toNat

end

end A127254.P11863516427130671642

namespace A127254

/-- `A010059(n-A010060(n))` -/
def P11863516427130671642.Spec : Prop :=
  ∀ n, P11863516427130671642.a n = A127254 n

end A127254

/-! ## A127254.P8435179146243617249

`A001285(n)-A101671(n)`
-/

namespace A127254.P8435179146243617249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n - A101671 n

end

end A127254.P8435179146243617249

namespace A127254

/-- `A001285(n)-A101671(n)` -/
def P8435179146243617249.Spec : Prop :=
  ∀ n, P8435179146243617249.a n = A127254 n

end A127254

/-! ## A127254.P8183516892662223641

`A254377(n-A010060(n))`
-/

namespace A127254.P8183516892662223641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 ((n : ℤ) - A010060 n).toNat

end

end A127254.P8183516892662223641

namespace A127254

/-- `A254377(n-A010060(n))` -/
def P8183516892662223641.Spec : Prop :=
  ∀ n, P8183516892662223641.a n = A127254 n

end A127254

/-! ## A127254.P3800457160792869922

`char[A334173(n+1)+n]`
-/

namespace A127254.P3800457160792869922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334173 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A127254.P3800457160792869922

namespace A127254

/-- `char[A334173(n+1)+n]` -/
def P3800457160792869922.Spec : Prop :=
  ∀ n, (P3800457160792869922.a n : ℤ) = A127254 n

end A127254

/-!
# A127255: Partial sums of A127252.

The programs for A127255, there is no canonical definition to state claims against.
-/

/-! ## A127255.P4200717931678171536

`or(1, ∑[and(n, -n)%3])-n`
-/

namespace A127255.P4200717931678171536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n : ℤ) (-(n : ℤ))) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A127255.P4200717931678171536

/-! ## A127255.P14099236590488807693

`∑[(-1)^val(comp[xor(n, 2*n)], 2)]`
-/

namespace A127255.P14099236590488807693
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127255.P14099236590488807693

/-! ## A127255.P16115142576511161629

`∑[cos(π*val(comp[xor(n, 2*n)], 2))]`
-/

namespace A127255.P16115142576511161629
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (Real.pi * (SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) 2 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127255.P16115142576511161629

/-! ## A127255.P9150366653377264862

`∑[2*char[ceil(xor(n, 2*n)/2)]-1]`
-/

namespace A127255.P9150366653377264862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor n (2 * n) : ℚ) / 2⌉

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (if ∃ j, f2 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127255.P9150366653377264862

/-! ## A127255.P10271859026362215411

`∑[(-a(n-1))^comp[xor(n, 2*n+1)]]` with `a(0)=1`
-/

namespace A127255.P10271859026362215411
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (-f1 (n - 1)) ^ SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127255.P10271859026362215411

/-! ## A127255.P8266384708854952062

`a(n-1)+(-1)^val(comp[xor(n, 2*n)], 2)` with `a(0)=1`
-/

namespace A127255.P8266384708854952062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (-1) ^ SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) 2

end

end A127255.P8266384708854952062

/-! ## A127255.P17001755916204193064

`∑[A127252(n)]`
-/

namespace A127255.P17001755916204193064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127255.P17001755916204193064

/-! ## A127255.P9702778044475532083

`or(1, A197911(n))-n`
-/

namespace A127255.P9702778044475532083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A197911 n) - (n : ℤ)

end

end A127255.P9702778044475532083

/-! ## A127255.P4844802543078805126

`∑[(-1)^A101671(n)]`
-/

namespace A127255.P4844802543078805126
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A101671 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127255.P4844802543078805126

/-! ## A127255.P8861227814247527255

`∑[(-1)^A229764(n)]`
-/

namespace A127255.P8861227814247527255
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A229764 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127255.P8861227814247527255

/-!
# A127260: Indices n of odd numbers of the form 8*n+1 that are not primes.

The programs for A127260, there is no canonical definition to state claims against.
-/

/-! ## A127260.P6616449233364065736

`comp[floor(p?[8*n+1]/8)]`
-/

namespace A127260.P6616449233364065736
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℚ) / 8⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A127260.P6616449233364065736

/-! ## A127260.P6883407475731916423

`comp[round(p?[8*n+1]/8)]`
-/

namespace A127260.P6883407475731916423
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℚ) / 8)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A127260.P6883407475731916423

/-! ## A127260.P17445026937159150074

`comp[ceil((p?[8*n+1]-2)/8)]`
-/

namespace A127260.P17445026937159150074
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 2 : ℚ) / 8⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A127260.P17445026937159150074

/-! ## A127260.P11650490899395463027

`comp[A005123(n+1)]`
-/

namespace A127260.P11650490899395463027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A127260.P11650490899395463027

/-! ## A127260.P8612968384330545198

`eq[0, A101264(4*n)]`
-/

namespace A127260.P8612968384330545198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127260.P8612968384330545198

/-! ## A127260.P5775871251139773297

`lt[1, A237053(4*n)]`
-/

namespace A127260.P5775871251139773297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A127260.P5775871251139773297

/-! ## A127260.P11750153729504272600

`comp[A153762(n+1)+1]`
-/

namespace A127260.P11750153729504272600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153762 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A127260.P11750153729504272600

/-! ## A127260.P16385936132231137507

`lt[1, A046069(2*n+1)]`
-/

namespace A127260.P16385936132231137507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046069 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A127260.P16385936132231137507

/-! ## A127260.P4745569001863508231

`eq[0, A010051(8*n+1)]`
-/

namespace A127260.P4745569001863508231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (8 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127260.P4745569001863508231

/-! ## A127260.P14167803221796955401

`eq[1, A005171(8*n+1)]`
-/

namespace A127260.P14167803221796955401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (8 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127260.P14167803221796955401

/-!
# A127261: a(n) = 2*a(n-1) + 10*a(n-2), with a(0) = 2 and a(1) = 2.

The programs for A127261, the canonical program `A127261.P12791947469268497038` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127261 has offset 0).

The definition of A127261 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+10*a(n-2)` (program `A127261.P12791947469268497038`, by `A127261.P12791947469268497038.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127261.P12791947469268497038

`2*a(n-1)+10*a(n-2)` with `a(0)=2, a(1)=2`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127261

/-- `2*a(n-1)+10*a(n-2)` -/
def P12791947469268497038.Spec : Prop :=
  ∀ n, (P12791947469268497038.a n : ℤ) = A127261 n

theorem P12791947469268497038.correct : P12791947469268497038.Spec := by
  intro n
  simp only [A127261]

end A127261

/-! ## A127261.P2757434874999988735

`2*A133294(n)`
-/

namespace A127261.P2757434874999988735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133294 n

end

end A127261.P2757434874999988735

namespace A127261

/-- `2*A133294(n)` -/
def P2757434874999988735.Spec : Prop :=
  ∀ n, P2757434874999988735.a n = A127261 n

end A127261

/-! ## A127261.P1332174219026451734

`ogf((-2+2x)/(-1+2x+10x^2))`
-/

namespace A127261.P1332174219026451734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2] [1, -2, -10] n

end

end A127261.P1332174219026451734

namespace A127261

/-- `ogf((-2+2x)/(-1+2x+10x^2))` -/
def P1332174219026451734.Spec : Prop :=
  ∀ n, P1332174219026451734.a n = A127261 n

end A127261

/-! ## A127261.P8322231403096478314

`(1+sqrt(11))^n+(1-sqrt(11))^n`
-/

namespace A127261.P8322231403096478314
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 + Real.sqrt (11 : ℝ)) ^ n + (1 - Real.sqrt (11 : ℝ)) ^ n

end

end A127261.P8322231403096478314

namespace A127261

/-- `(1+sqrt(11))^n+(1-sqrt(11))^n` -/
def P8322231403096478314.Spec : Prop :=
  ∀ n, P8322231403096478314.a n = (A127261 n : ℝ)

end A127261

/-! ## A127261.P830425254755913835

`2*(2*3*a(n-2)-(a(n-2)-a(n-1)))` with `a(0)=2, a(1)=2`
-/

namespace A127261.P830425254755913835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  2 * (2 * (3 * a (n - 2)) - (a (n - 2) - a (n - 1)))

end

end A127261.P830425254755913835

namespace A127261

/-- `2*(2*3*a(n-2)-(a(n-2)-a(n-1)))` -/
def P830425254755913835.Spec : Prop :=
  ∀ n, P830425254755913835.a n = A127261 n

end A127261

/-! ## A127261.P1868818974165293619

`Δ[A274526(n)]`
-/

namespace A127261.P1868818974165293619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127261.P1868818974165293619

namespace A127261

/-- `Δ[A274526(n)]` -/
def P1868818974165293619.Spec : Prop :=
  ∀ n, P1868818974165293619.a n = A127261 n

end A127261

/-! ## A127261.P12202947076721232170

`2*A083101(log2(A011782(n)))`
-/

namespace A127261.P12202947076721232170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083101 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A127261.P12202947076721232170

namespace A127261

/-- `2*A083101(log2(A011782(n)))` -/
def P12202947076721232170.Spec : Prop :=
  ∀ n, P12202947076721232170.a n = A127261 n

end A127261

/-! ## A127261.P12542961439178548313

`2*A083101(A289207(n+1))`
-/

namespace A127261.P12542961439178548313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083101 (A289207 (n + 1)).toNat

end

end A127261.P12542961439178548313

namespace A127261

/-- `2*A083101(A289207(n+1))` -/
def P12542961439178548313.Spec : Prop :=
  ∀ n, P12542961439178548313.a n = A127261 n

end A127261

/-! ## A127261.P8422408842172349848

`2*A083101(A028310(n)-1)`
-/

namespace A127261.P8422408842172349848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083101 (A028310 n - 1).toNat

end

end A127261.P8422408842172349848

namespace A127261

/-- `2*A083101(A028310(n)-1)` -/
def P8422408842172349848.Spec : Prop :=
  ∀ n, P8422408842172349848.a n = A127261 n

end A127261

/-! ## A127261.P13437233040770127484

`2*A083101(A004273(n)-n)`
-/

namespace A127261.P13437233040770127484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083101 (A004273 n - (n : ℤ)).toNat

end

end A127261.P13437233040770127484

namespace A127261

/-- `2*A083101(A004273(n)-n)` -/
def P13437233040770127484.Spec : Prop :=
  ∀ n, P13437233040770127484.a n = A127261 n

end A127261

/-!
# A127262: a(0)=2, a(1)=2, a(n) = 2*a(n-1) + 12*a(n-2).

The programs for A127262, the canonical program `A127262.P17526997605573927124` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127262 has offset 0).

The definition of A127262 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+12*a(n-2)` (program `A127262.P17526997605573927124`, by `A127262.P17526997605573927124.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127262.P17526997605573927124

`2*a(n-1)+12*a(n-2)` with `a(0)=2, a(1)=2`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127262

/-- `2*a(n-1)+12*a(n-2)` -/
def P17526997605573927124.Spec : Prop :=
  ∀ n, (P17526997605573927124.a n : ℤ) = A127262 n

theorem P17526997605573927124.correct : P17526997605573927124.Spec := by
  intro n
  simp only [A127262]

end A127262

/-! ## A127262.P2778865050513149270

`2*A125816(n+1)`
-/

namespace A127262.P2778865050513149270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125816 (n + 1)

end

end A127262.P2778865050513149270

namespace A127262

/-- `2*A125816(n+1)` -/
def P2778865050513149270.Spec : Prop :=
  ∀ n, P2778865050513149270.a n = A127262 n

end A127262

/-! ## A127262.P15176632368278919886

`ogf((-2+2x)/(-1+2x+12x^2))`
-/

namespace A127262.P15176632368278919886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2] [1, -2, -12] n

end

end A127262.P15176632368278919886

namespace A127262

/-- `ogf((-2+2x)/(-1+2x+12x^2))` -/
def P15176632368278919886.Spec : Prop :=
  ∀ n, P15176632368278919886.a n = A127262 n

end A127262

/-! ## A127262.P12914854813075023132

`(1+sqrt(13))^n+(1-sqrt(13))^n`
-/

namespace A127262.P12914854813075023132
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 + Real.sqrt (13 : ℝ)) ^ n + (1 - Real.sqrt (13 : ℝ)) ^ n

end

end A127262.P12914854813075023132

namespace A127262

/-- `(1+sqrt(13))^n+(1-sqrt(13))^n` -/
def P12914854813075023132.Spec : Prop :=
  ∀ n, P12914854813075023132.a n = (A127262 n : ℝ)

end A127262

/-! ## A127262.P17516568923452475970

`2*(a(n-1)-3*(a(n-2)-3*a(n-2)))` with `a(0)=2, a(1)=2`
-/

namespace A127262.P17516568923452475970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  2 * (a (n - 1) - 3 * (a (n - 2) - 3 * a (n - 2)))

end

end A127262.P17516568923452475970

namespace A127262

/-- `2*(a(n-1)-3*(a(n-2)-3*a(n-2)))` -/
def P17516568923452475970.Spec : Prop :=
  ∀ n, P17516568923452475970.a n = A127262 n

end A127262

/-! ## A127262.P408825661204300262

`2^n*A075118(n)`
-/

namespace A127262.P408825661204300262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A075118 n

end

end A127262.P408825661204300262

namespace A127262

/-- `2^n*A075118(n)` -/
def P408825661204300262.Spec : Prop :=
  ∀ n, P408825661204300262.a n = A127262 n

end A127262

/-! ## A127262.P8742487190511179210

`(A052533(n)+A006130(n))*A000079(n)`
-/

namespace A127262.P8742487190511179210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052533 n + A006130 n) * A000079 n

end

end A127262.P8742487190511179210

namespace A127262

/-- `(A052533(n)+A006130(n))*A000079(n)` -/
def P8742487190511179210.Spec : Prop :=
  ∀ n, P8742487190511179210.a n = A127262 n

end A127262

/-!
# A127263: Numbers k such that k^3 divides 2^(k^2)+1.

The programs for A127263, there is no canonical definition to state claims against.
-/

/-! ## A127263.P14224990863137706242

`∩[A093546(n+1), A129212(n+1)]`
-/

namespace A127263.P14224990863137706242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127263.P14224990863137706242

/-! ## A127263.P10764758997856171472

`∩[A015955(n+1), A129212(n+1)]`
-/

namespace A127263.P10764758997856171472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127263.P10764758997856171472

/-!
# A127264: Nearest integer to 2*(Sum_{i=1..10^n/2} 1/i) - 1.

The programs for A127264, there is no canonical definition to state claims against.
-/

/-! ## A127264.P5714523700602092709

`floor(log(A199687(n)²))`
-/

namespace A127264.P5714523700602092709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A199687 n ^ 2 : ℝ)⌋

end

end A127264.P5714523700602092709

/-! ## A127264.P16375496910955153659

`A002024(∑[13*n+2]+3)+1+n`
-/

namespace A127264.P16375496910955153659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j + 3) + 1 + (n : ℤ)

end

end A127264.P16375496910955153659

/-! ## A127264.P8588191371872237431

`A003056(A017101(∑[A047408(n+1)]))`
-/

namespace A127264.P8588191371872237431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A017101 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A127264.P8588191371872237431

/-! ## A127264.P114041687475789616

`A003056(A299259(2*n+1)+A004768(n))`
-/

namespace A127264.P114041687475789616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A299259 (2 * n + 1) + A004768 n).toNat

end

end A127264.P114041687475789616

/-! ## A127264.P9465645060178635031

`A110654(A090848(2*n+3))+A004273(n)`
-/

namespace A127264.P9465645060178635031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A090848 (2 * n + 3)).toNat + A004273 n

end

end A127264.P9465645060178635031

/-!
# A127265: a(n) = floor((n + 1/2)^(n + 1/2)).

The programs for A127265, the canonical program `A127265.P10294449887850091161` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127265 has offset 0).

The definition of A127265 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1/2)^(n+1/2))` (program `A127265.P10294449887850091161`, by `A127265.P10294449887850091161.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127265.P10294449887850091161

`floor((n+1/2)^(n+1/2))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127265

/-- `floor((n+1/2)^(n+1/2))` -/
def P10294449887850091161.Spec : Prop :=
  ∀ n, P10294449887850091161.a n = A127265 n

theorem P10294449887850091161.correct : P10294449887850091161.Spec := by
  intro n
  simp only [A127265]

end A127265

/-! ## A127265.P15543810970580682974

`record[floor((xor(1, n)/2)^(xor(1, n)/2))]`
-/

namespace A127265.P15543810970580682974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.xor 1 n : ℚ) / 2 : ℝ) ^ ((Nat.xor 1 n : ℚ) / 2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127265.P15543810970580682974

namespace A127265

/-- `record[floor((xor(1, n)/2)^(xor(1, n)/2))]` -/
def P15543810970580682974.Spec : Prop :=
  ∀ n, P15543810970580682974.a n = A127265 n

end A127265

/-!
# A127266: Expansion of 1/Pi in base 2.

The programs for A127266, the canonical program `A127266.P10258065024436302759` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127266 has offset 0).

The definition of A127266 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127266.P10258065024436302759

`abs(floor(sin(2^(n+1))))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127266

/-- `abs(floor(sin(2^(n+1))))` -/
def P10258065024436302759.Spec : Prop :=
  ∀ n, P10258065024436302759.a n = A127266 n

theorem P10258065024436302759.correct : P10258065024436302759.Spec := by
  intro n
  simp only [A127266]

end A127266

/-! ## A127266.P17850790926963143016

`-floor(sin(2^(n+1)))`
-/

namespace A127266.P17850790926963143016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊Real.sin (2 ^ (n + 1) : ℝ)⌋

end

end A127266.P17850790926963143016

namespace A127266

/-- `-floor(sin(2^(n+1)))` -/
def P17850790926963143016.Spec : Prop :=
  ∀ n, P17850790926963143016.a n = A127266 n

end A127266

/-! ## A127266.P8919915000178983482

`ceil(sin(-2^(n+1)))`
-/

namespace A127266.P8919915000178983482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (-(2 ^ (n + 1) : ℤ) : ℝ)⌉

end

end A127266.P8919915000178983482

namespace A127266

/-- `ceil(sin(-2^(n+1)))` -/
def P8919915000178983482.Spec : Prop :=
  ∀ n, P8919915000178983482.a n = A127266 n

end A127266

/-! ## A127266.P12991523161310908590

`floor(sin(2^(n+1)))²`
-/

namespace A127266.P12991523161310908590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (2 ^ (n + 1) : ℝ)⌋ ^ 2

end

end A127266.P12991523161310908590

namespace A127266

/-- `floor(sin(2^(n+1)))²` -/
def P12991523161310908590.Spec : Prop :=
  ∀ n, P12991523161310908590.a n = A127266 n

end A127266

/-! ## A127266.P5502731927167079171

`dr(floor(sin(2^(n+1))))`
-/

namespace A127266.P5502731927167079171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ⌊Real.sin (2 ^ (n + 1) : ℝ)⌋

end

end A127266.P5502731927167079171

namespace A127266

/-- `dr(floor(sin(2^(n+1))))` -/
def P5502731927167079171.Spec : Prop :=
  ∀ n, (P5502731927167079171.a n : ℤ) = A127266 n

end A127266

/-! ## A127266.P13543066994799537123

`1-ceil(sin(2^(n+1)))`
-/

namespace A127266.P13543066994799537123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌈Real.sin (2 ^ (n + 1) : ℝ)⌉

end

end A127266.P13543066994799537123

namespace A127266

/-- `1-ceil(sin(2^(n+1)))` -/
def P13543066994799537123.Spec : Prop :=
  ∀ n, P13543066994799537123.a n = A127266 n

end A127266

/-! ## A127266.P12778450657883888384

`floor(sin(2^(n+1)))^4`
-/

namespace A127266.P12778450657883888384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (2 ^ (n + 1) : ℝ)⌋ ^ 4

end

end A127266.P12778450657883888384

namespace A127266

/-- `floor(sin(2^(n+1)))^4` -/
def P12778450657883888384.Spec : Prop :=
  ∀ n, P12778450657883888384.a n = A127266 n

end A127266

/-! ## A127266.P9677365051121162807

`and(2, A024810(n+1))/2`
-/

namespace A127266.P9677365051121162807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A024810 (n + 1)) : ℚ) / 2

end

end A127266.P9677365051121162807

namespace A127266

/-- `and(2, A024810(n+1))/2` -/
def P9677365051121162807.Spec : Prop :=
  ∀ n, P9677365051121162807.a n = (A127266 n : ℚ)

end A127266

/-!
# A127267: a(n) = floor(n/pi(n)), where pi(n)=A000720(n) is the number of primes <=n.

The programs for A127267, the canonical program `A127267.P11390009319995840991` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127267 has offset 2).

The definition of A127267 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097456, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A127267.P11390009319995840991

`A097456(n+2)+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A127267

/-- `A097456(n+2)+1` -/
def P11390009319995840991.Spec : Prop :=
  ∀ n, P11390009319995840991.a n = A127267 (n + 2)

theorem P11390009319995840991.correct : P11390009319995840991.Spec := by
  intro n
  simp only [A127267, Nat.add_sub_cancel]

end A127267

/-! ## A127267.P9924443984800917951

`floor((n+2)/A000720(n+2))`
-/

namespace A127267.P9924443984800917951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / (A000720 (n + 2) : ℚ)⌋

end

end A127267.P9924443984800917951

namespace A127267

/-- `floor((n+2)/A000720(n+2))` -/
def P9924443984800917951.Spec : Prop :=
  ∀ n, P9924443984800917951.a n = A127267 (n + 2)

end A127267

/-! ## A127267.P18429508763205603743

`floor((n+2)/∑[A010051(n+2)])`
-/

namespace A127267.P18429508763205603743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋

end

end A127267.P18429508763205603743

namespace A127267

/-- `floor((n+2)/∑[A010051(n+2)])` -/
def P18429508763205603743.Spec : Prop :=
  ∀ n, P18429508763205603743.a n = A127267 (n + 2)

end A127267

/-! ## A127267.P2657134314401428359

`floor((n+2)/∑[char[A040976(n+1)]])`
-/

namespace A127267.P2657134314401428359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋

end

end A127267.P2657134314401428359

namespace A127267

/-- `floor((n+2)/∑[char[A040976(n+1)]])` -/
def P2657134314401428359.Spec : Prop :=
  ∀ n, P2657134314401428359.a n = A127267 (n + 2)

end A127267

/-! ## A127267.P6858554222736645138

`floor((n+2)/∑[C(2, A000005(n+2))])`
-/

namespace A127267.P6858554222736645138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000005 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋

end

end A127267.P6858554222736645138

namespace A127267

/-- `floor((n+2)/∑[C(2, A000005(n+2))])` -/
def P6858554222736645138.Spec : Prop :=
  ∀ n, P6858554222736645138.a n = A127267 (n + 2)

end A127267

/-! ## A127267.P210101825821561990

`floor((n+2)/∑[C(A000010(n+2), n+1)])`
-/

namespace A127267.P210101825821561990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000010 (n + 2)).toNat (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋

end

end A127267.P210101825821561990

namespace A127267

/-- `floor((n+2)/∑[C(A000010(n+2), n+1)])` -/
def P210101825821561990.Spec : Prop :=
  ∀ n, P210101825821561990.a n = A127267 (n + 2)

end A127267

/-! ## A127267.P16987760381081004219

`floor((n+2)/A099802(A080513(n)))`
-/

namespace A127267.P16987760381081004219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / (A099802 (A080513 n).toNat : ℚ)⌋

end

end A127267.P16987760381081004219

namespace A127267

/-- `floor((n+2)/A099802(A080513(n)))` -/
def P16987760381081004219.Spec : Prop :=
  ∀ n, P16987760381081004219.a n = A127267 (n + 2)

end A127267

/-! ## A127267.P143298684721044874

`floor((n+2)/Δ[A046992(n+1)])`
-/

namespace A127267.P143298684721044874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A127267.P143298684721044874

namespace A127267

/-- `floor((n+2)/Δ[A046992(n+1)])` -/
def P143298684721044874.Spec : Prop :=
  ∀ n, P143298684721044874.a n = A127267 (n + 2)

end A127267

/-! ## A127267.P3305577324007971339

`floor((n+2)/(A033270(n+2)+1))`
-/

namespace A127267.P3305577324007971339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / (A033270 (n + 2) + 1 : ℚ)⌋

end

end A127267.P3305577324007971339

namespace A127267

/-- `floor((n+2)/(A033270(n+2)+1))` -/
def P3305577324007971339.Spec : Prop :=
  ∀ n, P3305577324007971339.a n = A127267 (n + 2)

end A127267

/-! ## A127267.P7470967625725222347

`floor((n+2)/(A036234(n+2)-1))`
-/

namespace A127267.P7470967625725222347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / (A036234 (n + 2) - 1 : ℚ)⌋

end

end A127267.P7470967625725222347

namespace A127267

/-- `floor((n+2)/(A036234(n+2)-1))` -/
def P7470967625725222347.Spec : Prop :=
  ∀ n, P7470967625725222347.a n = A127267 (n + 2)

end A127267

/-! ## A127267.P14905495830046509000

`floor((n+2)/A230980(n+2))`
-/

namespace A127267.P14905495830046509000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / (A230980 (n + 2) : ℚ)⌋

end

end A127267.P14905495830046509000

namespace A127267

/-- `floor((n+2)/A230980(n+2))` -/
def P14905495830046509000.Spec : Prop :=
  ∀ n, P14905495830046509000.a n = A127267 (n + 2)

end A127267

/-! ## A127267.P12459339561809640666

`val(A000079(n+2), A000079(A000720(n+2)))`
-/

namespace A127267.P12459339561809640666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000079 (n + 2)).toNat (A000079 (A000720 (n + 2)).toNat).toNat

end

end A127267.P12459339561809640666

namespace A127267

/-- `val(A000079(n+2), A000079(A000720(n+2)))` -/
def P12459339561809640666.Spec : Prop :=
  ∀ n, (P12459339561809640666.a n : ℤ) = A127267 (n + 2)

end A127267

/-! ## A127267.P17859577462783207539

`val(A000079(n+2), A000079(A230980(n+2)))`
-/

namespace A127267.P17859577462783207539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000079 (n + 2)).toNat (A000079 (A230980 (n + 2)).toNat).toNat

end

end A127267.P17859577462783207539

namespace A127267

/-- `val(A000079(n+2), A000079(A230980(n+2)))` -/
def P17859577462783207539.Spec : Prop :=
  ∀ n, (P17859577462783207539.a n : ℤ) = A127267 (n + 2)

end A127267

/-! ## A127267.P18245883042548145195

`val(A011782(n+3), A011782(A036234(n+2)))`
-/

namespace A127267.P18245883042548145195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A011782 (n + 3)).toNat (A011782 (A036234 (n + 2)).toNat).toNat

end

end A127267.P18245883042548145195

namespace A127267

/-- `val(A011782(n+3), A011782(A036234(n+2)))` -/
def P18245883042548145195.Spec : Prop :=
  ∀ n, (P18245883042548145195.a n : ℤ) = A127267 (n + 2)

end A127267

/-! ## A127267.P17954033152731260607

`A010783(A256885(n+2)+1)`
-/

namespace A127267.P17954033152731260607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (A256885 (n + 2) + 1).toNat

end

end A127267.P17954033152731260607

namespace A127267

/-- `A010783(A256885(n+2)+1)` -/
def P17954033152731260607.Spec : Prop :=
  ∀ n, P17954033152731260607.a n = A127267 (n + 2)

end A127267

/-!
# A127268: If the prime factorization of n is n = Product_{p|n} p^b(p,n) (p = distinct prime divisors of n, each b(p,n) is a positive integer), then a(n) is (Sum_{p|n} p^b(p,n)) taken mod (Sum_{p|n} p).

The programs for A127268, the canonical program `A127268.P10382840147593154222` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127268 has offset 1).

The definition of A127268 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127268.P4211288243438848397

`∑{p}[n+1, #^val(n+1, #)]%A028310(∑{p}[n+1, #])`
-/

namespace A127268.P4211288243438848397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) (A028310 (∑ p ∈ Nat.primeFactors (f2 n), p))

end

end A127268.P4211288243438848397

namespace A127268

/-- `∑{p}[n+1, #^val(n+1, #)]%A028310(∑{p}[n+1, #])` -/
def P4211288243438848397.Spec : Prop :=
  ∀ n, P4211288243438848397.a n = A127268 (n + 1)

end A127268

/-! ## A127268.P9870875196871541621

`A222416(n+1)%A222416(∏{p}[n+1, #])`
-/

namespace A127268.P9870875196871541621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222416 (n + 1)) (A222416 (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A127268.P9870875196871541621

namespace A127268

/-- `A222416(n+1)%A222416(∏{p}[n+1, #])` -/
def P9870875196871541621.Spec : Prop :=
  ∀ n, P9870875196871541621.a n = A127268 (n + 1)

end A127268

/-! ## A127268.P10382840147593154222

`A008475(n+1)%A028310(Δ[A024924(n)])`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A127268

/-- `A008475(n+1)%A028310(Δ[A024924(n)])` -/
def P10382840147593154222.Spec : Prop :=
  ∀ n, P10382840147593154222.a n = A127268 (n + 1)

theorem P10382840147593154222.correct : P10382840147593154222.Spec := by
  intro n
  simp only [A127268, Nat.add_sub_cancel]

end A127268

/-! ## A127268.P8610038565297237582

`A222416(n+1)%A028310(A008472(n+1))`
-/

namespace A127268.P8610038565297237582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222416 (n + 1)) (A028310 (A008472 (n + 1)).toNat)

end

end A127268.P8610038565297237582

namespace A127268

/-- `A222416(n+1)%A028310(A008472(n+1))` -/
def P8610038565297237582.Spec : Prop :=
  ∀ n, P8610038565297237582.a n = A127268 (n + 1)

end A127268

/-! ## A127268.P940918275632317032

`A028310(A008475(n+1))%A028310(A008472(n+1))`
-/

namespace A127268.P940918275632317032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (A008475 (n + 1)).toNat) (A028310 (A008472 (n + 1)).toNat)

end

end A127268.P940918275632317032

namespace A127268

/-- `A028310(A008475(n+1))%A028310(A008472(n+1))` -/
def P940918275632317032.Spec : Prop :=
  ∀ n, P940918275632317032.a n = A127268 (n + 1)

end A127268

/-!
# A127269: Suppose the sum of the prime factors of the composites between prime(n) and prime(n+1) is prime. Sequence gives prime(n).

The programs for A127269, there is no canonical definition to state claims against.
-/

/-! ## A127269.P14262026445329701250

`A116641(record[A089839(n+1)])`
-/

namespace A127269.P14262026445329701250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116641 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A127269.P14262026445329701250

/-! ## A127269.P8670521350558110657

`filter[A007529(n+1), A334460(#)]`
-/

namespace A127269.P8670521350558110657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A334460 (f1 j).toNat = 1) n)

end

end A127269.P8670521350558110657

/-!
# A127270: Primes prime(k) such that the sum of the composites between prime(k) and prime(k+2) is prime.

The programs for A127270, there is no canonical definition to state claims against.
-/

/-! ## A127270.P10908672591578923432

`A137189(xor(A124302(n), A137189(n)))`
-/

namespace A127270.P10908672591578923432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137189 (Int.xor (A124302 n) (A137189 n)).toNat

end

end A127270.P10908672591578923432

/-!
# A127271: Numbers n such that sum of the digits of n and n+2 divides n+1, n >= 1.

The programs for A127271, the canonical program `A127271.P1641139788662325747` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127271 has offset 1).

The definition of A127271 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 687 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127271.P1641139788662325747

`eq[0, (n+1)%(A007953(n+2)+A007953(n))]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A127271

/-- `eq[0, (n+1)%(A007953(n+2)+A007953(n))]` -/
def P1641139788662325747.Spec : Prop :=
  ∀ n, (P1641139788662325747.a n : ℤ) = A127271 (n + 1)

theorem P1641139788662325747.correct : P1641139788662325747.Spec := by
  intro n
  simp only [A127271, Nat.add_sub_cancel]

end A127271

/-! ## A127271.P10635779674107899435

`A016789(lt[A000700(n), A353338(n+1)])`
-/

namespace A127271.P10635779674107899435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A127271.P10635779674107899435

namespace A127271

/-- `A016789(lt[A000700(n), A353338(n+1)])` -/
def P10635779674107899435.Spec : Prop :=
  ∀ n, P10635779674107899435.a n = A127271 (n + 1)

end A127271

/-! ## A127271.P449905452012850116

`lt[A303907(n), A037810(A342086(n+1)+1)]`
-/

namespace A127271.P449905452012850116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303907 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037810 (A342086 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A127271.P449905452012850116

namespace A127271

/-- `lt[A303907(n), A037810(A342086(n+1)+1)]` -/
def P449905452012850116.Spec : Prop :=
  ∀ n, (P449905452012850116.a n : ℤ) = A127271 (n + 1)

end A127271

/-! ## A127271.P46157237878869409

`A107257(A008864(2*n+1))-A008864(2*n+1)`
-/

namespace A127271.P46157237878869409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107257 (A008864 (2 * n + 1)).toNat - A008864 (2 * n + 1)

end

end A127271.P46157237878869409

namespace A127271

/-- `A107257(A008864(2*n+1))-A008864(2*n+1)` -/
def P46157237878869409.Spec : Prop :=
  ∀ n, P46157237878869409.a n = A127271 (n + 1)

end A127271

/-!
# A127272: Suppose the sum of the digits of prime(n) and prime(n+1) divides prime(n) + prime(n+1). Sequence gives prime(n).

The programs for A127272, there is no canonical definition to state claims against.
-/

/-! ## A127272.P510416443096810523

`filter[A129990(n+1), A092079(#)]`
-/

namespace A127272.P510416443096810523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092079 (f1 j).toNat = 1) n)

end

end A127272.P510416443096810523

/-! ## A127272.P14770509041426867251

`p?[A330977(∑[A326850(n+1)])]`
-/

namespace A127272.P14770509041426867251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326850 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330977 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127272.P14770509041426867251

/-! ## A127272.P5396822098910839924

`and(A238528(n+1), A238541(A238545(n+2)))`
-/

namespace A127272.P5396822098910839924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A238528 (n + 1)) (A238541 (A238545 (n + 2)).toNat)

end

end A127272.P5396822098910839924

/-!
# A127273: Numbers n such that sum of the digits of n and of n+1 divides n + (n+1), n >= 1.

The programs for A127273, there is no canonical definition to state claims against.
-/

/-! ## A127273.P14714220154753437572

`eq[2, A062545(n)%A118137(n)]`
-/

namespace A127273.P14714220154753437572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062545 n) (A118137 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127273.P14714220154753437572

/-! ## A127273.P17118938544802938259

`eq[1, (2*(n+1))%(A007953(n+1)+A007953(n))]`
-/

namespace A127273.P17118938544802938259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * (n + 1) : ℤ) (A007953 (n + 1) + A007953 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127273.P17118938544802938259

/-! ## A127273.P6122002224716185618

`∑[∏{e}[∏[A338988(n)], #]]`
-/

namespace A127273.P6122002224716185618
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338988 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127273.P6122002224716185618

/-!
# A127275: Expansion of (sqrt(1-4x)-x)/(1-4x).

The programs for A127275, the canonical program `A127275.P8872795402174168779` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127275 has offset 0).

The definition of A127275 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127275.P8872795402174168779

`A000984(n)-floor(4^(n-1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A127275

/-- `A000984(n)-floor(4^(n-1))` -/
def P8872795402174168779.Spec : Prop :=
  ∀ n, P8872795402174168779.a n = A127275 n

theorem P8872795402174168779.correct : P8872795402174168779.Spec := by
  intro n
  simp only [A127275]

end A127275

/-! ## A127275.P12429980876593251009

`2*A088218(n)-A011782(n)²`
-/

namespace A127275.P12429980876593251009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088218 n - A011782 n ^ 2

end

end A127275.P12429980876593251009

namespace A127275

/-- `2*A088218(n)-A011782(n)²` -/
def P12429980876593251009.Spec : Prop :=
  ∀ n, P12429980876593251009.a n = A127275 n

end A127275

/-! ## A127275.P1884109715861722487

`A001405(2*n)-A131577(n)²`
-/

namespace A127275.P1884109715861722487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) - A131577 n ^ 2

end

end A127275.P1884109715861722487

namespace A127275

/-- `A001405(2*n)-A131577(n)²` -/
def P1884109715861722487.Spec : Prop :=
  ∀ n, P1884109715861722487.a n = A127275 n

end A127275

/-! ## A127275.P14734795972730495328

`A126869(2*n)-A131577(n)²`
-/

namespace A127275.P14734795972730495328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * n) - A131577 n ^ 2

end

end A127275.P14734795972730495328

namespace A127275

/-- `A126869(2*n)-A131577(n)²` -/
def P14734795972730495328.Spec : Prop :=
  ∀ n, P14734795972730495328.a n = A127275 n

end A127275

/-! ## A127275.P15311006166574932158

`A028329(n)/2-A131577(n)²`
-/

namespace A127275.P15311006166574932158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028329 n : ℚ) / 2 - (A131577 n ^ 2 : ℚ)

end

end A127275.P15311006166574932158

namespace A127275

/-- `A028329(n)/2-A131577(n)²` -/
def P15311006166574932158.Spec : Prop :=
  ∀ n, P15311006166574932158.a n = (A127275 n : ℚ)

end A127275

/-! ## A127275.P7830650737258670407

`A001405(2*n)-A034008(n+1)²`
-/

namespace A127275.P7830650737258670407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) - A034008 (n + 1) ^ 2

end

end A127275.P7830650737258670407

namespace A127275

/-- `A001405(2*n)-A034008(n+1)²` -/
def P7830650737258670407.Spec : Prop :=
  ∀ n, P7830650737258670407.a n = A127275 n

end A127275

/-! ## A127275.P16869391887720227459

`A063886(2*n)-A034008(n+1)²`
-/

namespace A127275.P16869391887720227459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (2 * n) - A034008 (n + 1) ^ 2

end

end A127275.P16869391887720227459

namespace A127275

/-- `A063886(2*n)-A034008(n+1)²` -/
def P16869391887720227459.Spec : Prop :=
  ∀ n, P16869391887720227459.a n = A127275 n

end A127275

/-! ## A127275.P5593395548359244435

`A210736(2*n+1)-A131577(n)²`
-/

namespace A127275.P5593395548359244435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (2 * n + 1) - A131577 n ^ 2

end

end A127275.P5593395548359244435

namespace A127275

/-- `A210736(2*n+1)-A131577(n)²` -/
def P5593395548359244435.Spec : Prop :=
  ∀ n, P5593395548359244435.a n = A127275 n

end A127275

/-! ## A127275.P8705019530203866473

`A001405(2*n)-A158780(2*n)²`
-/

namespace A127275.P8705019530203866473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) - A158780 (2 * n) ^ 2

end

end A127275.P8705019530203866473

namespace A127275

/-- `A001405(2*n)-A158780(2*n)²` -/
def P8705019530203866473.Spec : Prop :=
  ∀ n, P8705019530203866473.a n = A127275 n

end A127275

/-! ## A127275.P1937446745629362942

`A128014(2*n)-A158780(2*n)²`
-/

namespace A127275.P1937446745629362942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128014 (2 * n) - A158780 (2 * n) ^ 2

end

end A127275.P1937446745629362942

namespace A127275

/-- `A128014(2*n)-A158780(2*n)²` -/
def P1937446745629362942.Spec : Prop :=
  ∀ n, P1937446745629362942.a n = A127275 n

end A127275

/-! ## A127275.P7531984797659921610

`A210736(2*n+1)-A166444(2*n)`
-/

namespace A127275.P7531984797659921610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (2 * n + 1) - A166444 (2 * n)

end

end A127275.P7531984797659921610

namespace A127275

/-- `A210736(2*n+1)-A166444(2*n)` -/
def P7531984797659921610.Spec : Prop :=
  ∀ n, P7531984797659921610.a n = A127275 n

end A127275

/-! ## A127275.P12354644567584035293

`A002001(n)-A068551(n)`
-/

namespace A127275.P12354644567584035293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002001 n - A068551 n

end

end A127275.P12354644567584035293

namespace A127275

/-- `A002001(n)-A068551(n)` -/
def P12354644567584035293.Spec : Prop :=
  ∀ n, P12354644567584035293.a n = A127275 n

end A127275

/-! ## A127275.P5732542420326825141

`A001700(n)-A391222(n+1)`
-/

namespace A127275.P5732542420326825141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n - A391222 (n + 1)

end

end A127275.P5732542420326825141

namespace A127275

/-- `A001700(n)-A391222(n+1)` -/
def P5732542420326825141.Spec : Prop :=
  ∀ n, P5732542420326825141.a n = A127275 n

end A127275

/-! ## A127275.P15057152340008879306

`A114121(n)-A058622(2*n)`
-/

namespace A127275.P15057152340008879306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114121 n - A058622 (2 * n)

end

end A127275.P15057152340008879306

namespace A127275

/-- `A114121(n)-A058622(2*n)` -/
def P15057152340008879306.Spec : Prop :=
  ∀ n, P15057152340008879306.a n = A127275 n

end A127275

/-! ## A127275.P8501552856231381280

`A114121(n)-A294175(2*n)`
-/

namespace A127275.P8501552856231381280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114121 n - A294175 (2 * n)

end

end A127275.P8501552856231381280

namespace A127275

/-- `A114121(n)-A294175(2*n)` -/
def P8501552856231381280.Spec : Prop :=
  ∀ n, P8501552856231381280.a n = A127275 n

end A127275

/-! ## A127275.P3250122588930015594

`A116406(2*n)-A058622(2*n)`
-/

namespace A127275.P3250122588930015594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116406 (2 * n) - A058622 (2 * n)

end

end A127275.P3250122588930015594

namespace A127275

/-- `A116406(2*n)-A058622(2*n)` -/
def P3250122588930015594.Spec : Prop :=
  ∀ n, P3250122588930015594.a n = A127275 n

end A127275

/-! ## A127275.P7195054572745393607

`A116406(2*n)-A294175(2*n)`
-/

namespace A127275.P7195054572745393607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116406 (2 * n) - A294175 (2 * n)

end

end A127275.P7195054572745393607

namespace A127275

/-- `A116406(2*n)-A294175(2*n)` -/
def P7195054572745393607.Spec : Prop :=
  ∀ n, P7195054572745393607.a n = A127275 n

end A127275

/-! ## A127275.P10591105655254346363

`A001405(2*n)-A131577(2*n)/2`
-/

namespace A127275.P10591105655254346363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 (2 * n) : ℚ) - (A131577 (2 * n) : ℚ) / 2

end

end A127275.P10591105655254346363

namespace A127275

/-- `A001405(2*n)-A131577(2*n)/2` -/
def P10591105655254346363.Spec : Prop :=
  ∀ n, P10591105655254346363.a n = (A127275 n : ℚ)

end A127275

/-! ## A127275.P15963337290453992423

`A126869(2*n)-A131577(2*n)/2`
-/

namespace A127275.P15963337290453992423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126869 (2 * n) : ℚ) - (A131577 (2 * n) : ℚ) / 2

end

end A127275.P15963337290453992423

namespace A127275

/-- `A126869(2*n)-A131577(2*n)/2` -/
def P15963337290453992423.Spec : Prop :=
  ∀ n, P15963337290453992423.a n = (A127275 n : ℚ)

end A127275

/-! ## A127275.P16554972903568215095

`A001405(2*n)-A034008(2*n+1)/2`
-/

namespace A127275.P16554972903568215095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 (2 * n) : ℚ) - (A034008 (2 * n + 1) : ℚ) / 2

end

end A127275.P16554972903568215095

namespace A127275

/-- `A001405(2*n)-A034008(2*n+1)/2` -/
def P16554972903568215095.Spec : Prop :=
  ∀ n, P16554972903568215095.a n = (A127275 n : ℚ)

end A127275

/-!
# A127276: Hankel transform of A127275.

The programs for A127276, the canonical program `A127276.P7685925921189660610` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127276 has offset 0).

The definition of A127276 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127276.P7685925921189660610

`2^n-n*(n+1)*2^(n-2)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127276

/-- `2^n-n*(n+1)*2^(n-2)` -/
def P7685925921189660610.Spec : Prop :=
  ∀ n, P7685925921189660610.a n = (A127276 n : ℚ)

end A127276

/-! ## A127276.P15960987442529927589

`∑[(1-n)*A045891(n)]`
-/

namespace A127276.P15960987442529927589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A045891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127276.P15960987442529927589

namespace A127276

/-- `∑[(1-n)*A045891(n)]` -/
def P15960987442529927589.Spec : Prop :=
  ∀ n, P15960987442529927589.a n = A127276 n

end A127276

/-!
# A127277: Number of cycles in range [A014137(n-1)..A014138(n-1)] of permutation A126313/A126314.

The programs for A127277, there is no canonical definition to state claims against.
-/

/-! ## A127277.P10453847288572579150

`A140202(A001405(n))-A193238(n)`
-/

namespace A127277.P10453847288572579150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140202 (A001405 n).toNat - A193238 n

end

end A127277.P10453847288572579150

/-!
# A127279: Maximum cycle size in range [A014137(n-1)..A014138(n-1)] of permutation A126313/A126314.

The programs for A127279, there is no canonical definition to state claims against.
-/

/-! ## A127279.P3971231548635958762

`filter[A117144(2*n), A130093(#)]`
-/

namespace A127279.P3971231548635958762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117144 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A130093 (f1 j).toNat = 1) n)

end

end A127279.P3971231548635958762

/-!
# A127280: Least common multiple of all cycle sizes in range [A014137(n-1)..A014138(n-1)] of permutation A126313/A126314.

The programs for A127280, there is no canonical definition to state claims against.
-/

/-! ## A127280.P16140150188879519371

`A004442(A001248(2*a(n-2)))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=4`
-/

namespace A127280.P16140150188879519371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 4] fun n a =>
  A004442 (A001248 (2 * a (n - 2)).toNat).toNat

end

end A127280.P16140150188879519371

/-! ## A127280.P13007154099866637840

`A116417(A362522(n)-A000045(n))`
-/

namespace A127280.P13007154099866637840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116417 (A362522 n - A000045 n).toNat

end

end A127280.P13007154099866637840

/-! ## A127280.P8160414221356438495

`A116417(A362522(n)-A003056(n))`
-/

namespace A127280.P8160414221356438495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116417 (A362522 n - A003056 n).toNat

end

end A127280.P8160414221356438495

/-!
# A127284: a(n) = number of valleys (DU-steps) in the Dyck path encoded by A014486(n).

The programs for A127284, there is no canonical definition to state claims against.
-/

/-! ## A127284.P9652107031147594623

`floor(log(cosh(A057514(n))))`
-/

namespace A127284.P9652107031147594623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.cosh (A057514 n : ℝ))⌋

end

end A127284.P9652107031147594623

/-! ## A127284.P9508278285419250067

`A057514(ceil(abs(γ-n)))-1`
-/

namespace A127284.P9508278285419250067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057514 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat - 1

end

end A127284.P9508278285419250067

/-! ## A127284.P2098426867110717294

`(A057514(abs(1-n)+1)-1)%(n+1)`
-/

namespace A127284.P2098426867110717294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057514 (|1 - (n : ℤ)| + 1).toNat - 1) (n + 1 : ℤ)

end

end A127284.P2098426867110717294

/-! ## A127284.P2159178559216006669

`(A057514(n)-1)*and(1, A000040(n+1))`
-/

namespace A127284.P2159178559216006669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057514 n - 1) * Int.land 1 (A000040 (n + 1))

end

end A127284.P2159178559216006669

/-! ## A127284.P15018986824349403976

`A126306(A057163(n))`
-/

namespace A127284.P15018986824349403976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126306 (A057163 n).toNat

end

end A127284.P15018986824349403976

/-! ## A127284.P564418904232851007

`A126306(A057505(n))`
-/

namespace A127284.P564418904232851007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126306 (A057505 n).toNat

end

end A127284.P564418904232851007

/-! ## A127284.P9805886475390072612

`A126306(A057506(n))`
-/

namespace A127284.P9805886475390072612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126306 (A057506 n).toNat

end

end A127284.P9805886475390072612

/-! ## A127284.P15818902617623461108

`A126306(A071663(n))`
-/

namespace A127284.P15818902617623461108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126306 (A071663 n).toNat

end

end A127284.P15818902617623461108

/-! ## A127284.P6455706046098444982

`A126306(A071664(n))`
-/

namespace A127284.P6455706046098444982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126306 (A071664 n).toNat

end

end A127284.P6455706046098444982

/-! ## A127284.P12073048754201296069

`A126306(A071667(n))`
-/

namespace A127284.P12073048754201296069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126306 (A071667 n).toNat

end

end A127284.P12073048754201296069

/-! ## A127284.P18426095955942570573

`A126306(A071668(n))`
-/

namespace A127284.P18426095955942570573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126306 (A071668 n).toNat

end

end A127284.P18426095955942570573

/-! ## A127284.P1787650569034266233

`A126306(A073282(n))`
-/

namespace A127284.P1787650569034266233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126306 (A073282 n).toNat

end

end A127284.P1787650569034266233

/-! ## A127284.P2917698706422400593

`A126306(A073283(n))`
-/

namespace A127284.P2917698706422400593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126306 (A073283 n).toNat

end

end A127284.P2917698706422400593

/-! ## A127284.P3773965402803290646

`A126306(A085173(n))`
-/

namespace A127284.P3773965402803290646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126306 (A085173 n).toNat

end

end A127284.P3773965402803290646

/-! ## A127284.P4849811223913251707

`A126306(A085174(n))`
-/

namespace A127284.P4849811223913251707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126306 (A085174 n).toNat

end

end A127284.P4849811223913251707

/-! ## A127284.P14734479881570130650

`A126306(A080067(n))`
-/

namespace A127284.P14734479881570130650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126306 (A080067 n).toNat

end

end A127284.P14734479881570130650

/-! ## A127284.P7745374796037793448

`A126306(A125976(n))`
-/

namespace A127284.P7745374796037793448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126306 (A125976 n).toNat

end

end A127284.P7745374796037793448

/-! ## A127284.P6429837266476705384

`A126306(A125985(n))`
-/

namespace A127284.P6429837266476705384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126306 (A125985 n).toNat

end

end A127284.P6429837266476705384

/-! ## A127284.P5075402557260729976

`A037800(A057520(n))`
-/

namespace A127284.P5075402557260729976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A057520 n).toNat

end

end A127284.P5075402557260729976

/-! ## A127284.P5314919451641166582

`A033264(A072800(n))`
-/

namespace A127284.P5314919451641166582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (A072800 n).toNat

end

end A127284.P5314919451641166582

/-!
# A127285: Signature-permutation of a Catalan automorphism: SPINE-transformation of *A057508.

The programs for A127285, there is no canonical definition to state claims against.
-/

/-! ## A127285.P15845869912393583187

`A127287(A057508(n))`
-/

namespace A127285.P15845869912393583187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127287 (A057508 n).toNat

end

end A127285.P15845869912393583187

/-! ## A127285.P7214491863095292502

`A130374(A127287(n))`
-/

namespace A127285.P7214491863095292502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130374 (A127287 n).toNat

end

end A127285.P7214491863095292502

/-! ## A127285.P5654260169789992599

`A127287(A057161(A069768(n)))`
-/

namespace A127285.P5654260169789992599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127287 (A057161 (A069768 n).toNat).toNat

end

end A127285.P5654260169789992599

/-! ## A127285.P10140057064005721315

`A127287(A057163(A069769(A057163(n))))`
-/

namespace A127285.P10140057064005721315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127287 (A057163 (A069769 (A057163 n).toNat).toNat).toNat

end

end A127285.P10140057064005721315

/-! ## A127285.P10767915022324956461

`A057510(A127286(A057510(n)))`
-/

namespace A127285.P10767915022324956461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057510 (A127286 (A057510 n).toNat).toNat

end

end A127285.P10767915022324956461

/-! ## A127285.P3475718549161870387

`A130945(A127286(A130945(n)))`
-/

namespace A127285.P3475718549161870387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130945 (A127286 (A130945 n).toNat).toNat

end

end A127285.P3475718549161870387

/-! ## A127285.P6935501339970108260

`A057164(A057509(A127286(A057164(A057509(n)))))`
-/

namespace A127285.P6935501339970108260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A057509 (A127286 (A057164 (A057509 n).toNat).toNat).toNat).toNat

end

end A127285.P6935501339970108260

/-! ## A127285.P2912688582308427663

`A057509(A127286(A127286(A057509(A127286(n)))))`
-/

namespace A127285.P2912688582308427663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057509 (A127286 (A127286 (A057509 (A127286 n).toNat).toNat).toNat).toNat

end

end A127285.P2912688582308427663

/-!
# A127286: Signature-permutation of a Catalan automorphism: ENIPS-transformation of *A057508.

The programs for A127286, there is no canonical definition to state claims against.
-/

/-! ## A127286.P3810124174123583833

`A057508(A127288(n))`
-/

namespace A127286.P3810124174123583833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057508 (A127288 n).toNat

end

end A127286.P3810124174123583833

/-! ## A127286.P12885684047793529678

`A057509(A057509(A129606(n)))`
-/

namespace A127286.P12885684047793529678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057509 (A057509 (A129606 n).toNat).toNat

end

end A127286.P12885684047793529678

/-! ## A127286.P9504948295672219725

`A127288(A130374(n))`
-/

namespace A127286.P9504948295672219725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127288 (A130374 n).toNat

end

end A127286.P9504948295672219725

/-! ## A127286.P5725739349351374151

`A127287(A072796(n)%A255549(2*(n+1)))`
-/

namespace A127286.P5725739349351374151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127287 (Int.tmod (A072796 n) (A255549 (2 * (n + 1)))).toNat

end

end A127286.P5725739349351374151

/-!
# A127287: Signature-permutation of a Catalan automorphism: composition of A127285 and A057508.

The programs for A127287, there is no canonical definition to state claims against.
-/

/-! ## A127287.P15215256109736443288

`A127285(A057508(n))`
-/

namespace A127287.P15215256109736443288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127285 (A057508 n).toNat

end

end A127287.P15215256109736443288

/-! ## A127287.P4448929754671908142

`A130374(A127285(n))`
-/

namespace A127287.P4448929754671908142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130374 (A127285 n).toNat

end

end A127287.P4448929754671908142

/-! ## A127287.P1457319423395175636

`A072796(A089854(A123718(n)))`
-/

namespace A127287.P1457319423395175636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072796 (A089854 (A123718 n).toNat).toNat

end

end A127287.P1457319423395175636

/-! ## A127287.P7828808822100757362

`A127285(A127288(A127285(A127285(A127286(n)))))`
-/

namespace A127287.P7828808822100757362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127285 (A127288 (A127285 (A127285 (A127286 n).toNat).toNat).toNat).toNat

end

end A127287.P7828808822100757362

/-! ## A127287.P17164967164429882852

`A127288(A127288(A127288(A127288(A127288(n)))))`
-/

namespace A127287.P17164967164429882852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127288 (A127288 (A127288 (A127288 (A127288 n).toNat).toNat).toNat).toNat

end

end A127287.P17164967164429882852

/-!
# A127288: Signature-permutation of a Catalan automorphism: composition of A057508 and A127286.

The programs for A127288, there is no canonical definition to state claims against.
-/

/-! ## A127288.P3722346326647002061

`A057508(A127286(n))`
-/

namespace A127288.P3722346326647002061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057508 (A127286 n).toNat

end

end A127288.P3722346326647002061

/-! ## A127288.P4309981889121495580

`A057501(A069770(A127287(A057501(A069770(n)))))`
-/

namespace A127288.P4309981889121495580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A069770 (A127287 (A057501 (A069770 n).toNat).toNat).toNat).toNat

end

end A127288.P4309981889121495580

/-! ## A127288.P16792970829832743723

`A127287(A127287(A127287(A127287(A127287(n)))))`
-/

namespace A127288.P16792970829832743723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127287 (A127287 (A127287 (A127287 (A127287 n).toNat).toNat).toNat).toNat

end

end A127288.P16792970829832743723

/-! ## A127288.P8286912916279424413

`A127286(A130374(n))`
-/

namespace A127288.P8286912916279424413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127286 (A130374 n).toNat

end

end A127288.P8286912916279424413

/-! ## A127288.P6979918108552288621

`A123717(A089854(A123500(A089854(A123499(n)))))`
-/

namespace A127288.P6979918108552288621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123717 (A089854 (A123500 (A089854 (A123499 n).toNat).toNat).toNat).toNat

end

end A127288.P6979918108552288621

/-!
# A127289: Signature-permutation of a Catalan automorphism: composition of A127291 and A057164.

The programs for A127289, there is no canonical definition to state claims against.
-/

/-! ## A127289.P6227173980399980069

`A127291(A057164(n))`
-/

namespace A127289.P6227173980399980069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127291 (A057164 n).toNat

end

end A127289.P6227173980399980069

/-! ## A127289.P9055543059300027726

`A127291(A057505(A057163(n)))`
-/

namespace A127289.P9055543059300027726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127291 (A057505 (A057163 n).toNat).toNat

end

end A127289.P9055543059300027726

/-! ## A127289.P5749334951660293828

`A127291(A057163(A057506(n)))`
-/

namespace A127289.P5749334951660293828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127291 (A057163 (A057506 n).toNat).toNat

end

end A127289.P5749334951660293828

/-! ## A127289.P507534760586742987

`A057164(A127299(n))`
-/

namespace A127289.P507534760586742987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A127299 n).toNat

end

end A127289.P507534760586742987

/-! ## A127289.P5945166831318648760

`A127299(A069771(n))`
-/

namespace A127289.P5945166831318648760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127299 (A069771 n).toNat

end

end A127289.P5945166831318648760

/-! ## A127289.P12052111938380868328

`A127291(A127299(A127290(n)))`
-/

namespace A127289.P12052111938380868328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127291 (A127299 (A127290 n).toNat).toNat

end

end A127289.P12052111938380868328

/-! ## A127289.P2455213985133317238

`A127291(A127290(A127291(n)))`
-/

namespace A127289.P2455213985133317238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127291 (A127290 (A127291 n).toNat).toNat

end

end A127289.P2455213985133317238

/-! ## A127289.P5852739944776247738

`A127299(A127290(A127299(A127299(A127300(n)))))`
-/

namespace A127289.P5852739944776247738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127299 (A127290 (A127299 (A127299 (A127300 n).toNat).toNat).toNat).toNat

end

end A127289.P5852739944776247738

/-!
# A127290: Signature-permutation of a Catalan automorphism: composition of A057164 and A127292.

The programs for A127290, there is no canonical definition to state claims against.
-/

/-! ## A127290.P13067094026815426534

`A057164(A127292(n))`
-/

namespace A127290.P13067094026815426534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A127292 n).toNat

end

end A127290.P13067094026815426534

/-! ## A127290.P16224385351779728866

`A069771(A127300(n))`
-/

namespace A127290.P16224385351779728866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069771 (A127300 n).toNat

end

end A127290.P16224385351779728866

/-! ## A127290.P15609196229912097807

`A127292(A127289(A127292(A127292(A127291(n)))))`
-/

namespace A127290.P15609196229912097807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127292 (A127289 (A127292 (A127292 (A127291 n).toNat).toNat).toNat).toNat

end

end A127290.P15609196229912097807

/-! ## A127290.P13667432276413243660

`A127300(A057164(n))`
-/

namespace A127290.P13667432276413243660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127300 (A057164 n).toNat

end

end A127290.P13667432276413243660

/-! ## A127290.P10550961106037920158

`A127300(A057505(A057163(n)))`
-/

namespace A127290.P10550961106037920158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127300 (A057505 (A057163 n).toNat).toNat

end

end A127290.P10550961106037920158

/-! ## A127290.P15319428197658404457

`A127300(A057163(A057506(n)))`
-/

namespace A127290.P15319428197658404457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127300 (A057163 (A057506 n).toNat).toNat

end

end A127290.P15319428197658404457

/-! ## A127290.P1233917230710927139

`A127300(A127292(A127289(n)))`
-/

namespace A127290.P1233917230710927139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127300 (A127292 (A127289 n).toNat).toNat

end

end A127290.P1233917230710927139

/-! ## A127290.P10385091778640913138

`A127292(A127289(A127292(A127286(A127285(n)))))`
-/

namespace A127290.P10385091778640913138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127292 (A127289 (A127292 (A127286 (A127285 n).toNat).toNat).toNat).toNat

end

end A127290.P10385091778640913138

/-!
# A127291: Signature-permutation of Elizalde's and Deutsch's 2003 bijection for Dyck paths.

The programs for A127291, there is no canonical definition to state claims against.
-/

/-! ## A127291.P9025589050966593374

`A127289(A057164(n))`
-/

namespace A127291.P9025589050966593374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127289 (A057164 n).toNat

end

end A127291.P9025589050966593374

/-! ## A127291.P9939399521413158389

`A127289(A057505(A057163(n)))`
-/

namespace A127291.P9939399521413158389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127289 (A057505 (A057163 n).toNat).toNat

end

end A127291.P9939399521413158389

/-! ## A127291.P4474228678795082282

`A127289(A057163(A057506(n)))`
-/

namespace A127291.P4474228678795082282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127289 (A057163 (A057506 n).toNat).toNat

end

end A127291.P4474228678795082282

/-! ## A127291.P5629746156303609846

`A127289(A127292(A127289(n)))`
-/

namespace A127291.P5629746156303609846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127289 (A127292 (A127289 n).toNat).toNat

end

end A127291.P5629746156303609846

/-! ## A127291.P3162584911768155982

`A127299(A069772(n))`
-/

namespace A127291.P3162584911768155982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127299 (A069772 n).toNat

end

end A127291.P3162584911768155982

/-! ## A127291.P14112626768833214651

`A127289(A127289(A127300(n)))`
-/

namespace A127291.P14112626768833214651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127289 (A127289 (A127300 n).toNat).toNat

end

end A127291.P14112626768833214651

/-! ## A127291.P12736565152058874253

`A127299(A127292(A127299(n)))`
-/

namespace A127291.P12736565152058874253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127299 (A127292 (A127299 n).toNat).toNat

end

end A127291.P12736565152058874253

/-! ## A127291.P4575355848093638195

`A057164(A127299(A057501(A057164(A057501(n)))))`
-/

namespace A127291.P4575355848093638195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A127299 (A057501 (A057164 (A057501 n).toNat).toNat).toNat).toNat

end

end A127291.P4575355848093638195

/-! ## A127291.P18170693816015987835

`A057164(A127299(A057502(A057164(A057502(n)))))`
-/

namespace A127291.P18170693816015987835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A127299 (A057502 (A057164 (A057502 n).toNat).toNat).toNat).toNat

end

end A127291.P18170693816015987835

/-! ## A127291.P729456901905298459

`A057164(A127299(A057508(A057164(A057508(n)))))`
-/

namespace A127291.P729456901905298459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A127299 (A057508 (A057164 (A057508 n).toNat).toNat).toNat).toNat

end

end A127291.P729456901905298459

/-!
# A127292: Signature-permutation of the inverse of Elizalde's and Deutsch's 2003 bijection for Dyck paths.

The programs for A127292, there is no canonical definition to state claims against.
-/

/-! ## A127292.P6126854254752395772

`A057164(A127290(n))`
-/

namespace A127292.P6126854254752395772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A127290 n).toNat

end

end A127292.P6126854254752395772

/-! ## A127292.P9211118288295240078

`A069772(A127300(n))`
-/

namespace A127292.P9211118288295240078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069772 (A127300 n).toNat

end

end A127292.P9211118288295240078

/-! ## A127292.P14552600149910813691

`A127290(A127291(A127290(2*n-n)))`
-/

namespace A127292.P14552600149910813691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127290 (A127291 (A127290 (2 * n - n)).toNat).toNat

end

end A127292.P14552600149910813691

/-! ## A127292.P8700009769161088297

`A057164(A127300(A057164(n)))`
-/

namespace A127292.P8700009769161088297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A127300 (A057164 n).toNat).toNat

end

end A127292.P8700009769161088297

/-! ## A127292.P9890892388476135424

`A127299(A127290(A127290(A127290(A127289(n)))))`
-/

namespace A127292.P9890892388476135424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127299 (A127290 (A127290 (A127290 (A127289 n).toNat).toNat).toNat).toNat

end

end A127292.P9890892388476135424

/-! ## A127292.P8396225570674332658

`A127299(A127290(A127290(A127300(A127299(n)))))`
-/

namespace A127292.P8396225570674332658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127299 (A127290 (A127290 (A127300 (A127299 n).toNat).toNat).toNat).toNat

end

end A127292.P8396225570674332658

/-!
# A127295: Least common multiple of all cycle sizes in range [A014137(n-1)..A014138(n-1)] of permutation A127291/A127292.

The programs for A127295, there is no canonical definition to state claims against.
-/

/-! ## A127295.P1479494841090762637

`A278222(A000351(n)%A121413(n))`
-/

namespace A127295.P1479494841090762637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (Int.tmod (A000351 n) (A121413 n)).toNat

end

end A127295.P1479494841090762637

/-! ## A127295.P13808624485542417093

`A278241(or(A278241(n), A324621(n)))`
-/

namespace A127295.P13808624485542417093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 (Int.lor (A278241 n) (A324621 n)).toNat

end

end A127295.P13808624485542417093

/-! ## A127295.P767530644973734534

`A278222(A001407(n+1)*A071626(n+1))`
-/

namespace A127295.P767530644973734534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A001407 (n + 1) * A071626 (n + 1)).toNat

end

end A127295.P767530644973734534

/-!
# A127298: Least common multiple of all cycle sizes in range [A014137(n-1)..A014138(n-1)] of permutation A127289/A127290.

The programs for A127298, there is no canonical definition to state claims against.
-/

/-! ## A127298.P3636419895187150215

`6*A330099(a(n-1))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A127298.P3636419895187150215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 5] fun n a =>
  6 * A330099 (a (n - 1)).toNat

end

end A127298.P3636419895187150215

/-! ## A127298.P1892155048100924547

`A137760(A069727(n))`
-/

namespace A127298.P1892155048100924547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137760 (A069727 n).toNat

end

end A127298.P1892155048100924547

/-!
# A127299: Signature-permutation of A057164-conjugate of Elizalde's and Deutsch's 2003 bijection for Dyck paths.

The programs for A127299, there is no canonical definition to state claims against.
-/

/-! ## A127299.P6728695572975016850

`A057164(A127289(n))`
-/

namespace A127299.P6728695572975016850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A127289 n).toNat

end

end A127299.P6728695572975016850

/-! ## A127299.P13314374291374666376

`A127289(A069771(n))`
-/

namespace A127299.P13314374291374666376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127289 (A069771 n).toNat

end

end A127299.P13314374291374666376

/-! ## A127299.P13428996501083164173

`A127291(A069772(n))`
-/

namespace A127299.P13428996501083164173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127291 (A069772 n).toNat

end

end A127299.P13428996501083164173

/-! ## A127299.P2615716528503112862

`A057164(A127291(A057164(n)))`
-/

namespace A127299.P2615716528503112862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A127291 (A057164 n).toNat).toNat

end

end A127299.P2615716528503112862

/-! ## A127299.P9738737700168496870

`A127292(A127289(A127289(A127289(A127290(n)))))`
-/

namespace A127299.P9738737700168496870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127292 (A127289 (A127289 (A127289 (A127290 n).toNat).toNat).toNat).toNat

end

end A127299.P9738737700168496870

/-! ## A127299.P11058041509384831612

`A127292(A127289(A127289(A127291(A127292(n)))))`
-/

namespace A127299.P11058041509384831612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127292 (A127289 (A127289 (A127291 (A127292 n).toNat).toNat).toNat).toNat

end

end A127299.P11058041509384831612

/-! ## A127299.P1464688017937119466

`A127292(A127289(A127289(A127286(A127285(n)))))`
-/

namespace A127299.P1464688017937119466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127292 (A127289 (A127289 (A127286 (A127285 n).toNat).toNat).toNat).toNat

end

end A127299.P1464688017937119466

/-! ## A127299.P7966524453117811611

`A127291(A127300(A127291(n)))`
-/

namespace A127299.P7966524453117811611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127291 (A127300 (A127291 n).toNat).toNat

end

end A127299.P7966524453117811611

/-! ## A127299.P10130264667718985574

`A127290(A127291(A127289(2*n-n)))`
-/

namespace A127299.P10130264667718985574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127290 (A127291 (A127289 (2 * n - n)).toNat).toNat

end

end A127299.P10130264667718985574

/-! ## A127299.P1104939652783102514

`A127289(A127300(A127289(A057508(A057508(n)))))`
-/

namespace A127299.P1104939652783102514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127289 (A127300 (A127289 (A057508 (A057508 n).toNat).toNat).toNat).toNat

end

end A127299.P1104939652783102514

