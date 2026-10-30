import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C047
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C014
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
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
import Seq.Opaque.C012
import Seq.Opaque.C013
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
# A108012: a(n)= 8*a(n-1) -16*a(n-2) +4*a(n-4).

The programs for A108012, the canonical program `A108012.P425875185975206085` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108012 has offset 0).

The definition of A108012 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)-16*a(n-2)+4*a(n-4)` (program `A108012.P425875185975206085`, by `A108012.P425875185975206085.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108012.P17982956298953205696

`ogf((4x-14x^2-4x^3)/(1-8x+16x^2-4x^4))`
-/

namespace A108012.P17982956298953205696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, -14, -4] [1, -8, 16, 0, -4] n

end

end A108012.P17982956298953205696

namespace A108012

/-- `ogf((4x-14x^2-4x^3)/(1-8x+16x^2-4x^4))` -/
def P17982956298953205696.Spec : Prop :=
  ∀ n, P17982956298953205696.a n = A108012 n

end A108012

/-! ## A108012.P425875185975206085

`8*a(n-1)-16*a(n-2)+4*a(n-4)` with `a(0)=0, a(1)=4, a(2)=18, a(3)=76`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A108012

/-- `8*a(n-1)-16*a(n-2)+4*a(n-4)` -/
def P425875185975206085.Spec : Prop :=
  ∀ n, P425875185975206085.a n = A108012 n

theorem P425875185975206085.correct : P425875185975206085.Spec := by
  intro n
  simp only [A108012]

end A108012

/-!
# A108013: Primes p such that p + 2 and p*(p + 2) + 2 are primes.

The programs for A108013, there is no canonical definition to state claims against.
-/

/-! ## A108013.P8449844543503528978

`A070155(n+1)-1`
-/

namespace A108013.P8449844543503528978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070155 (n + 1) - 1

end

end A108013.P8449844543503528978

/-! ## A108013.P10264584491640040237

`A129293(n+2)-1`
-/

namespace A108013.P10264584491640040237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129293 (n + 2) - 1

end

end A108013.P10264584491640040237

/-! ## A108013.P17685930196015910841

`floor(sqrt(A051779(n+1)))-1`
-/

namespace A108013.P17685930196015910841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A051779 (n + 1)) - 1

end

end A108013.P17685930196015910841

/-! ## A108013.P4719103609274405547

`∩[A001359(n+1), A051507(n+1)]`
-/

namespace A108013.P4719103609274405547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051507 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108013.P4719103609274405547

/-! ## A108013.P16452035314008552832

`∩[A051507(n+1), A378983(n+1)]`
-/

namespace A108013.P16452035314008552832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108013.P16452035314008552832

/-! ## A108013.P15944558983297036424

`A354821(A301916(n+1))+A070155(n+1)`
-/

namespace A108013.P15944558983297036424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354821 (A301916 (n + 1)).toNat + A070155 (n + 1)

end

end A108013.P15944558983297036424

/-! ## A108013.P2721112865982963922

`∩[A001359(n+1), A157468(n+1)]`
-/

namespace A108013.P2721112865982963922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108013.P2721112865982963922

/-! ## A108013.P11310055744039752412

`∩[A157468(n+1), A378983(n+1)]`
-/

namespace A108013.P11310055744039752412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108013.P11310055744039752412

/-! ## A108013.P5222662431612861000

`∩[A051507(n+1), A054799(n+1)]`
-/

namespace A108013.P5222662431612861000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108013.P5222662431612861000

/-! ## A108013.P2350479809865798417

`∩[A051507(n+1), A063700(n+1)]`
-/

namespace A108013.P2350479809865798417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108013.P2350479809865798417

/-! ## A108013.P5883061029975047254

`∩[A051507(n+1), A124588(n+1)]`
-/

namespace A108013.P5883061029975047254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108013.P5883061029975047254

/-! ## A108013.P8525552871592130657

`∩[A054799(n+1), A157468(n+1)]`
-/

namespace A108013.P8525552871592130657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108013.P8525552871592130657

/-! ## A108013.P12037694825092540621

`∩[A063700(n+1), A157468(n+1)]`
-/

namespace A108013.P12037694825092540621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108013.P12037694825092540621

/-! ## A108013.P17181816684639378461

`∩[A051507(n+1), A181747(n+1)]`
-/

namespace A108013.P17181816684639378461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108013.P17181816684639378461

/-! ## A108013.P15111088072740020599

`∩[A124588(n+1), A157468(n+1)]`
-/

namespace A108013.P15111088072740020599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108013.P15111088072740020599

/-! ## A108013.P9392429282151058800

`∩[A051507(n+1), A280255(n+1)]`
-/

namespace A108013.P9392429282151058800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108013.P9392429282151058800

/-! ## A108013.P6728378247871534234

`∩[A157468(n+1), A181747(n+1)]`
-/

namespace A108013.P6728378247871534234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108013.P6728378247871534234

/-! ## A108013.P657282866536767897

`∩[A157468(n+1), A238528(n+1)]`
-/

namespace A108013.P657282866536767897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108013.P657282866536767897

/-! ## A108013.P7847421443175526301

`∩[A157468(n+1), A280255(n+1)]`
-/

namespace A108013.P7847421443175526301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108013.P7847421443175526301

/-! ## A108013.P17287600337853127970

`∩[A014574(n+1), A067720(n+1)]-1`
-/

namespace A108013.P17287600337853127970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067720 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A108013.P17287600337853127970

/-!
# A108014: Expansion of (x^2-2*x)/(x^4-x^2+2*x-1).

The programs for A108014, the canonical program `A108014.P8563384080155378819` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108014 has offset 0).

The definition of A108014 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2x-x^2)/(1-2x+x^2-x^4))` (program `A108014.P8563384080155378819`, by `A108014.P8563384080155378819.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108014.P8563384080155378819

`ogf((2x-x^2)/(1-2x+x^2-x^4))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A108014

/-- `ogf((2x-x^2)/(1-2x+x^2-x^4))` -/
def P8563384080155378819.Spec : Prop :=
  ∀ n, P8563384080155378819.a n = A108014 n

theorem P8563384080155378819.correct : P8563384080155378819.Spec := by
  intro n
  simp only [A108014]

end A108014

/-! ## A108014.P11978945598734303668

`2*a(n-1)-a(n-2)+a(n-4)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A108014.P11978945598734303668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 4] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 4)

end

end A108014.P11978945598734303668

namespace A108014

/-- `2*a(n-1)-a(n-2)+a(n-4)` -/
def P11978945598734303668.Spec : Prop :=
  ∀ n, P11978945598734303668.a n = A108014 n

end A108014

/-! ## A108014.P8412262820627960381

`1/2*(A000032(n+1)+2*cos((n+4)*π/3))`
-/

namespace A108014.P8412262820627960381
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 2 : ℝ) * ((A000032 (n + 1) : ℝ) + 2 * Real.cos ((n + 4 : ℝ) * Real.pi / 3))

end

end A108014.P8412262820627960381

namespace A108014

/-- `1/2*(A000032(n+1)+2*cos((n+4)*π/3))` -/
def P8412262820627960381.Spec : Prop :=
  ∀ n, P8412262820627960381.a n = (A108014 n : ℝ)

end A108014

/-! ## A108014.P12983642789551873441

`1/2*(A000032(n+1)+A057079(n+5))`
-/

namespace A108014.P12983642789551873441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A000032 (n + 1) + A057079 (n + 5) : ℚ)

end

end A108014.P12983642789551873441

namespace A108014

/-- `1/2*(A000032(n+1)+A057079(n+5))` -/
def P12983642789551873441.Spec : Prop :=
  ∀ n, P12983642789551873441.a n = (A108014 n : ℚ)

end A108014

/-! ## A108014.P6137010002766516435

`a(n-1)+a(n-1)+a(n-4)-a(n-2)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A108014.P6137010002766516435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 4] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 4) - a (n - 2)))

end

end A108014.P6137010002766516435

namespace A108014

/-- `a(n-1)+a(n-1)+a(n-4)-a(n-2)` -/
def P6137010002766516435.Spec : Prop :=
  ∀ n, P6137010002766516435.a n = A108014 n

end A108014

/-! ## A108014.P3133290490615469389

`a(n-1)-(a(n-2)-a(n-1)-a(n-4))` with `a(0)=0, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A108014.P3133290490615469389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 4] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - a (n - 4))

end

end A108014.P3133290490615469389

namespace A108014

/-- `a(n-1)-(a(n-2)-a(n-1)-a(n-4))` -/
def P3133290490615469389.Spec : Prop :=
  ∀ n, P3133290490615469389.a n = A108014 n

end A108014

/-! ## A108014.P8539778903210290049

`A000032(n)-a(n-3)` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A108014.P8539778903210290049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3] fun n a =>
  A000032 n - a (n - 3)

end

end A108014.P8539778903210290049

namespace A108014

/-- `A000032(n)-a(n-3)` -/
def P8539778903210290049.Spec : Prop :=
  ∀ n, P8539778903210290049.a n = A108014 n

end A108014

/-! ## A108014.P6063142129836968392

`A278718(n)+A173714(n)`
-/

namespace A108014.P6063142129836968392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278718 n + A173714 n

end

end A108014.P6063142129836968392

namespace A108014

/-- `A278718(n)+A173714(n)` -/
def P6063142129836968392.Spec : Prop :=
  ∀ n, P6063142129836968392.a n = A108014 n

end A108014

/-! ## A108014.P9784933157492924171

`A366043(n+1)-A117188(n)`
-/

namespace A108014.P9784933157492924171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366043 (n + 1) - A117188 n

end

end A108014.P9784933157492924171

namespace A108014

/-- `A366043(n+1)-A117188(n)` -/
def P9784933157492924171.Spec : Prop :=
  ∀ n, P9784933157492924171.a n = A108014 n

end A108014

/-! ## A108014.P853637552834258900

`A226956(n+1)-A010892(n+1)`
-/

namespace A108014.P853637552834258900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226956 (n + 1) - A010892 (n + 1)

end

end A108014.P853637552834258900

namespace A108014

/-- `A226956(n+1)-A010892(n+1)` -/
def P853637552834258900.Spec : Prop :=
  ∀ n, P853637552834258900.a n = A108014 n

end A108014

/-! ## A108014.P17705011808926798443

`A226956(n+1)-A128834(n+2)`
-/

namespace A108014.P17705011808926798443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226956 (n + 1) - A128834 (n + 2)

end

end A108014.P17705011808926798443

namespace A108014

/-- `A226956(n+1)-A128834(n+2)` -/
def P17705011808926798443.Spec : Prop :=
  ∀ n, P17705011808926798443.a n = A108014 n

end A108014

/-! ## A108014.P2659253290160425878

`A000045(n)+A005252(n)-A010892(n+1)`
-/

namespace A108014.P2659253290160425878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A005252 n - A010892 (n + 1))

end

end A108014.P2659253290160425878

namespace A108014

/-- `A000045(n)+A005252(n)-A010892(n+1)` -/
def P2659253290160425878.Spec : Prop :=
  ∀ n, P2659253290160425878.a n = A108014 n

end A108014

/-! ## A108014.P12358992068329565496

`A024490(n+2)+A000045(n)-A005252(n+1)`
-/

namespace A108014.P12358992068329565496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024490 (n + 2) + (A000045 n - A005252 (n + 1))

end

end A108014.P12358992068329565496

namespace A108014

/-- `A024490(n+2)+A000045(n)-A005252(n+1)` -/
def P12358992068329565496.Spec : Prop :=
  ∀ n, P12358992068329565496.a n = A108014 n

end A108014

/-! ## A108014.P784799795665013568

`(A297667(n+1)-(n+1))/2`
-/

namespace A108014.P784799795665013568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297667 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A108014.P784799795665013568

namespace A108014

/-- `(A297667(n+1)-(n+1))/2` -/
def P784799795665013568.Spec : Prop :=
  ∀ n, P784799795665013568.a n = (A108014 n : ℚ)

end A108014

/-! ## A108014.P16376089281222522786

`A000204(n+1)-A007039(n+1)/2`
-/

namespace A108014.P16376089281222522786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000204 (n + 1) : ℚ) - (A007039 (n + 1) : ℚ) / 2

end

end A108014.P16376089281222522786

namespace A108014

/-- `A000204(n+1)-A007039(n+1)/2` -/
def P16376089281222522786.Spec : Prop :=
  ∀ n, P16376089281222522786.a n = (A108014 n : ℚ)

end A108014

/-! ## A108014.P5460970309405151145

`(A000032(n+1)-A087204(n+1))/2`
-/

namespace A108014.P5460970309405151145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (n + 1) - A087204 (n + 1) : ℚ) / 2

end

end A108014.P5460970309405151145

namespace A108014

/-- `(A000032(n+1)-A087204(n+1))/2` -/
def P5460970309405151145.Spec : Prop :=
  ∀ n, P5460970309405151145.a n = (A108014 n : ℚ)

end A108014

/-! ## A108014.P4470353884682246379

`(A000032(n+1)-A100051(n+1))/2`
-/

namespace A108014.P4470353884682246379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (n + 1) - A100051 (n + 1) : ℚ) / 2

end

end A108014.P4470353884682246379

namespace A108014

/-- `(A000032(n+1)-A100051(n+1))/2` -/
def P4470353884682246379.Spec : Prop :=
  ∀ n, P4470353884682246379.a n = (A108014 n : ℚ)

end A108014

/-! ## A108014.P780434136385699163

`A024490(n+3)-(A010892(n+1)+A000045(n+1))`
-/

namespace A108014.P780434136385699163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024490 (n + 3) - (A010892 (n + 1) + A000045 (n + 1))

end

end A108014.P780434136385699163

namespace A108014

/-- `A024490(n+3)-(A010892(n+1)+A000045(n+1))` -/
def P780434136385699163.Spec : Prop :=
  ∀ n, P780434136385699163.a n = A108014 n

end A108014

/-! ## A108014.P7399428960050648486

`Δ[A199935(n+2)]`
-/

namespace A108014.P7399428960050648486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199935 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108014.P7399428960050648486

namespace A108014

/-- `Δ[A199935(n+2)]` -/
def P7399428960050648486.Spec : Prop :=
  ∀ n, P7399428960050648486.a n = A108014 n

end A108014

/-!
# A108016: Primes of the form p*(p+2)+6 where p and p+2 are primes.

The programs for A108016, there is no canonical definition to state claims against.
-/

/-! ## A108016.P13632838048934760308

`∩[A056905(n+1), A098061(n+1)]`
-/

namespace A108016.P13632838048934760308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108016.P13632838048934760308

/-! ## A108016.P13763717626708436777

`∩[A098061(n+1), A173960(n+1)]`
-/

namespace A108016.P13763717626708436777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108016.P13763717626708436777

/-!
# A108018: a(n) = the number of primes representable as the sum of some subset of the set of first n primes.

The programs for A108018, there is no canonical definition to state claims against.
-/

/-! ## A108018.P5219342600515679081

`Δ[eq[2, A256015(n+1)]]`
-/

namespace A108018.P5219342600515679081
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256015 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A108018.P5219342600515679081

/-!
# A108019: a(n) = (8^n - 1)*4/7.

The programs for A108019, the canonical program `A108019.P2847691314268216021` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108019 has offset 0).

The definition of A108019 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8^n-1)*4/7` (program `A108019.P16749406412506497739`, by `A108019.P16749406412506497739.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108019.P13115378417776182271

`ogf(4x/(1-9x+8x^2))`
-/

namespace A108019.P13115378417776182271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4] [1, -9, 8] n

end

end A108019.P13115378417776182271

namespace A108019

/-- `ogf(4x/(1-9x+8x^2))` -/
def P13115378417776182271.Spec : Prop :=
  ∀ n, P13115378417776182271.a n = A108019 n

end A108019

/-! ## A108019.P2847691314268216021

`8*a(n-1)+4` with `a(0)=0`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A108019

/-- `8*a(n-1)+4` -/
def P2847691314268216021.Spec : Prop :=
  ∀ n, (P2847691314268216021.a n : ℤ) = A108019 n

theorem P2847691314268216021.correct : P2847691314268216021.Spec := by
  intro n
  simp only [A108019]

end A108019

/-! ## A108019.P18025038773847648995

`4*A023001(n)`
-/

namespace A108019.P18025038773847648995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A023001 n

end

end A108019.P18025038773847648995

namespace A108019

/-- `4*A023001(n)` -/
def P18025038773847648995.Spec : Prop :=
  ∀ n, P18025038773847648995.a n = A108019 n

end A108019

/-! ## A108019.P13876181962287002903

`2*A125835(n+1)`
-/

namespace A108019.P13876181962287002903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125835 (n + 1)

end

end A108019.P13876181962287002903

namespace A108019

/-- `2*A125835(n+1)` -/
def P13876181962287002903.Spec : Prop :=
  ∀ n, P13876181962287002903.a n = A108019 n

end A108019

/-! ## A108019.P16749406412506497739

`(8^n-1)*4/7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A108019.P16749406412506497739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((8 ^ n : ℤ) - 1) * 4 : ℚ) / 7

end

end A108019.P16749406412506497739

namespace A108019

/-- `(8^n-1)*4/7` -/
def P16749406412506497739.Spec : Prop :=
  ∀ n, P16749406412506497739.a n = (A108019 n : ℚ)

theorem P16749406412506497739.correct : P16749406412506497739.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A108019, Nat.add_sub_cancel, A108019.P16749406412506497739.a, A108019.P2847691314268216021.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A108019, Nat.add_sub_cancel, A108019.P16749406412506497739.a, A108019.P2847691314268216021.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A108019

/-! ## A108019.P16095545689324837819

`or(4, 8*a(n-1))` with `a(0)=0`
-/

namespace A108019.P16095545689324837819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 4 (8 * a (n - 1))

end

end A108019.P16095545689324837819

namespace A108019

/-- `or(4, 8*a(n-1))` -/
def P16095545689324837819.Spec : Prop :=
  ∀ n, (P16095545689324837819.a n : ℤ) = A108019 n

end A108019

/-! ## A108019.P10641333628506541426

`xor(4, 8*a(n-1))` with `a(0)=0`
-/

namespace A108019.P10641333628506541426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 4 (8 * a (n - 1))

end

end A108019.P10641333628506541426

namespace A108019

/-- `xor(4, 8*a(n-1))` -/
def P10641333628506541426.Spec : Prop :=
  ∀ n, (P10641333628506541426.a n : ℤ) = A108019 n

end A108019

/-! ## A108019.P8354020977271173507

`∑[8*a(n-1)]` with `a(0)=0, a(1)=4`
-/

namespace A108019.P8354020977271173507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  8 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108019.P8354020977271173507

namespace A108019

/-- `∑[8*a(n-1)]` -/
def P8354020977271173507.Spec : Prop :=
  ∀ n, (P8354020977271173507.a n : ℤ) = A108019 n

end A108019

/-! ## A108019.P635906499929708455

`4*(3-2*(1-a(n-1)))` with `a(0)=0`
-/

namespace A108019.P635906499929708455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  4 * (3 - 2 * (1 - a (n - 1)))

end

end A108019.P635906499929708455

namespace A108019

/-- `4*(3-2*(1-a(n-1)))` -/
def P635906499929708455.Spec : Prop :=
  ∀ n, P635906499929708455.a n = A108019 n

end A108019

/-! ## A108019.P12980898250290222728

`xor(1, ∑[4^n*ceil(2^(n-1))])`
-/

namespace A108019.P12980898250290222728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108019.P12980898250290222728

namespace A108019

/-- `xor(1, ∑[4^n*ceil(2^(n-1))])` -/
def P12980898250290222728.Spec : Prop :=
  ∀ n, P12980898250290222728.a n = A108019 n

end A108019

/-! ## A108019.P11553482453598490436

`lcm(4, a(n-1)+a(n-1)+1)` with `a(0)=0`
-/

namespace A108019.P11553482453598490436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 4 (a (n - 1) + (a (n - 1) + 1))

end

end A108019.P11553482453598490436

namespace A108019

/-- `lcm(4, a(n-1)+a(n-1)+1)` -/
def P11553482453598490436.Spec : Prop :=
  ∀ n, (P11553482453598490436.a n : ℤ) = A108019 n

end A108019

/-! ## A108019.P16771761599409164747

`and(-2, ∑[4^n*ceil(2^(n-1))])`
-/

namespace A108019.P16771761599409164747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108019.P16771761599409164747

namespace A108019

/-- `and(-2, ∑[4^n*ceil(2^(n-1))])` -/
def P16771761599409164747.Spec : Prop :=
  ∀ n, P16771761599409164747.a n = A108019 n

end A108019

/-! ## A108019.P4588809562466433712

`A046636(n)-1`
-/

namespace A108019.P4588809562466433712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046636 n - 1

end

end A108019.P4588809562466433712

namespace A108019

/-- `A046636(n)-1` -/
def P4588809562466433712.Spec : Prop :=
  ∀ n, P4588809562466433712.a n = A108019 n

end A108019

/-! ## A108019.P15280084540289632347

`∑[A092811(n)]-1`
-/

namespace A108019.P15280084540289632347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A108019.P15280084540289632347

namespace A108019

/-- `∑[A092811(n)]-1` -/
def P15280084540289632347.Spec : Prop :=
  ∀ n, P15280084540289632347.a n = A108019 n

end A108019

/-! ## A108019.P15590959040695043812

`∑[A131577(3*n)]`
-/

namespace A108019.P15590959040695043812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108019.P15590959040695043812

namespace A108019

/-- `∑[A131577(3*n)]` -/
def P15590959040695043812.Spec : Prop :=
  ∀ n, P15590959040695043812.a n = A108019 n

end A108019

/-! ## A108019.P18045655247597529386

`A078010(3*n+1)`
-/

namespace A108019.P18045655247597529386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078010 (3 * n + 1)

end

end A108019.P18045655247597529386

namespace A108019

/-- `A078010(3*n+1)` -/
def P18045655247597529386.Spec : Prop :=
  ∀ n, P18045655247597529386.a n = A108019 n

end A108019

/-! ## A108019.P6924047114875466806

`A046630(3*n)-1`
-/

namespace A108019.P6924047114875466806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046630 (3 * n) - 1

end

end A108019.P6924047114875466806

namespace A108019

/-- `A046630(3*n)-1` -/
def P6924047114875466806.Spec : Prop :=
  ∀ n, P6924047114875466806.a n = A108019 n

end A108019

/-! ## A108019.P1899752549892093619

`A077947(3*n)-1`
-/

namespace A108019.P1899752549892093619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077947 (3 * n) - 1

end

end A108019.P1899752549892093619

namespace A108019

/-- `A077947(3*n)-1` -/
def P1899752549892093619.Spec : Prop :=
  ∀ n, P1899752549892093619.a n = A108019 n

end A108019

/-! ## A108019.P11848736908884404149

`A152732(3*n+2)`
-/

namespace A108019.P11848736908884404149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152732 (3 * n + 2)

end

end A108019.P11848736908884404149

namespace A108019

/-- `A152732(3*n+2)` -/
def P11848736908884404149.Spec : Prop :=
  ∀ n, P11848736908884404149.a n = A108019 n

end A108019

/-! ## A108019.P3726282229255434918

`A155803(3*n+2)`
-/

namespace A108019.P3726282229255434918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155803 (3 * n + 2)

end

end A108019.P3726282229255434918

namespace A108019

/-- `A155803(3*n+2)` -/
def P3726282229255434918.Spec : Prop :=
  ∀ n, P3726282229255434918.a n = A108019 n

end A108019

/-!
# A108020: a(n) is the number whose binary representation is the concatenation of n strings of the four digits "1100".

The programs for A108020, the canonical program `A108020.P10716569607337704714` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108020 has offset 0).

The definition of A108020 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108020.P1582106115348361506

`ogf(12x/(1-17x+16x^2))`
-/

namespace A108020.P1582106115348361506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 12] [1, -17, 16] n

end

end A108020.P1582106115348361506

namespace A108020

/-- `ogf(12x/(1-17x+16x^2))` -/
def P1582106115348361506.Spec : Prop :=
  ∀ n, P1582106115348361506.a n = A108020 n

end A108020

/-! ## A108020.P10716569607337704714

`17*a(n-1)-16*a(n-2)` with `a(0)=0, a(1)=12`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A108020

/-- `17*a(n-1)-16*a(n-2)` -/
def P10716569607337704714.Spec : Prop :=
  ∀ n, P10716569607337704714.a n = A108020 n

theorem P10716569607337704714.correct : P10716569607337704714.Spec := by
  intro n
  simp only [A108020]

end A108020

/-! ## A108020.P16748923242948768383

`3*A141032(n)`
-/

namespace A108020.P16748923242948768383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A141032 n

end

end A108020.P16748923242948768383

namespace A108020

/-- `3*A141032(n)` -/
def P16748923242948768383.Spec : Prop :=
  ∀ n, P16748923242948768383.a n = A108020 n

end A108020

/-! ## A108020.P3501708741042199212

`4*A182512(n)`
-/

namespace A108020.P3501708741042199212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A182512 n

end

end A108020.P3501708741042199212

namespace A108020

/-- `4*A182512(n)` -/
def P3501708741042199212.Spec : Prop :=
  ∀ n, P3501708741042199212.a n = A108020 n

end A108020

/-! ## A108020.P3907130317702414577

`12*(16^n-1)/15`
-/

namespace A108020.P3907130317702414577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 * ((16 ^ n : ℤ) - 1) : ℚ) / 15

end

end A108020.P3907130317702414577

namespace A108020

/-- `12*(16^n-1)/15` -/
def P3907130317702414577.Spec : Prop :=
  ∀ n, P3907130317702414577.a n = (A108020 n : ℚ)

theorem P3907130317702414577.correct : P3907130317702414577.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A108020, Nat.add_sub_cancel, A108020.P3907130317702414577.a, A108020.P10716569607337704714.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A108020, Nat.add_sub_cancel, A108020.P3907130317702414577.a, A108020.P10716569607337704714.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A108020

/-! ## A108020.P16657181456717561989

`lcm(4, floor(16^n/5))`
-/

namespace A108020.P16657181456717561989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 ⌊(16 ^ n : ℚ) / 5⌋

end

end A108020.P16657181456717561989

namespace A108020

/-- `lcm(4, floor(16^n/5))` -/
def P16657181456717561989.Spec : Prop :=
  ∀ n, (P16657181456717561989.a n : ℤ) = A108020 n

end A108020

/-! ## A108020.P12799341180381521940

`record[∑[(-4)^n]-1]`
-/

namespace A108020.P12799341180381521940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-4) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108020.P12799341180381521940

namespace A108020

/-- `record[∑[(-4)^n]-1]` -/
def P12799341180381521940.Spec : Prop :=
  ∀ n, P12799341180381521940.a n = A108020 n

end A108020

/-! ## A108020.P4148916325928083479

`16*a(n-1)+12` with `a(0)=0`
-/

namespace A108020.P4148916325928083479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  16 * a (n - 1) + 12

end

end A108020.P4148916325928083479

namespace A108020

/-- `16*a(n-1)+12` -/
def P4148916325928083479.Spec : Prop :=
  ∀ n, (P4148916325928083479.a n : ℤ) = A108020 n

end A108020

/-! ## A108020.P9285078765861294278

`or(12, 16*a(n-1))` with `a(0)=0`
-/

namespace A108020.P9285078765861294278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 12 (16 * a (n - 1))

end

end A108020.P9285078765861294278

namespace A108020

/-- `or(12, 16*a(n-1))` -/
def P9285078765861294278.Spec : Prop :=
  ∀ n, (P9285078765861294278.a n : ℤ) = A108020 n

end A108020

/-! ## A108020.P11081759288881691060

`∑[16*a(n-1)]` with `a(0)=0, a(1)=12`
-/

namespace A108020.P11081759288881691060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 12] fun n f1 =>
  16 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108020.P11081759288881691060

namespace A108020

/-- `∑[16*a(n-1)]` -/
def P11081759288881691060.Spec : Prop :=
  ∀ n, (P11081759288881691060.a n : ℤ) = A108020 n

end A108020

/-!
# A108021: Numbers n whose binary representation is the first Fibonacci(n) binary digits of the pattern 1010101010101010...

The programs for A108021, there is no canonical definition to state claims against.
-/

/-! ## A108021.P10902297528469323642

`A000975(Δ[round(ϕ*a(n-1))])` with `a(0)=1`
-/

namespace A108021.P10902297528469323642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (f1 (n + 1) - f1 n).toNat

end

end A108021.P10902297528469323642

/-! ## A108021.P15128703200243276412

`floor(2*2^A000045(n+1)/3)`
-/

namespace A108021.P15128703200243276412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (2 : ℚ) ^ (A000045 (n + 1) : ℤ) / 3⌋

end

end A108021.P15128703200243276412

/-! ## A108021.P14328674353926459448

`A000975(∑[round(ϕ*a(n-1))])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A108021.P14328674353926459448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A108021.P14328674353926459448

/-! ## A108021.P17383503976740698180

`A000975(∑[2*a(n-2)+a(n-3)])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A108021.P17383503976740698180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  2 * f1 (n - 2) + f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108021.P17383503976740698180

/-!
# A108031: Inverse Moebius transform of Lucas numbers (A000032).

The programs for A108031, the canonical program `A108031.P3615489872226532230` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108031 has offset 1).

The definition of A108031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108031.P3615489872226532230

`∑{d}[n+1, abs(A061084(#))]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A108031

/-- `∑{d}[n+1, abs(A061084(#))]` -/
def P3615489872226532230.Spec : Prop :=
  ∀ n, P3615489872226532230.a n = A108031 (n + 1)

theorem P3615489872226532230.correct : P3615489872226532230.Spec := by
  intro n
  simp only [A108031, Nat.add_sub_cancel]

end A108031

/-! ## A108031.P6674450161380928944

`∑{d}[n+1, A329723(#+1)]`
-/

namespace A108031.P6674450161380928944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A329723 (d + 1)

end

end A108031.P6674450161380928944

namespace A108031

/-- `∑{d}[n+1, A329723(#+1)]` -/
def P6674450161380928944.Spec : Prop :=
  ∀ n, P6674450161380928944.a n = A108031 (n + 1)

end A108031

/-! ## A108031.P636731213083666684

`∑{d}[n+1, A000032(#-1)]`
-/

namespace A108031.P636731213083666684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000032 (d - 1)

end

end A108031.P636731213083666684

namespace A108031

/-- `∑{d}[n+1, A000032(#-1)]` -/
def P636731213083666684.Spec : Prop :=
  ∀ n, P636731213083666684.a n = A108031 (n + 1)

end A108031

/-! ## A108031.P5297420480463581239

`record[∑{d}[A024000(n), A000032(#-1)]]`
-/

namespace A108031.P5297420480463581239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A000032 (d - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108031.P5297420480463581239

namespace A108031

/-- `record[∑{d}[A024000(n), A000032(#-1)]]` -/
def P5297420480463581239.Spec : Prop :=
  ∀ n, P5297420480463581239.a n = A108031 (n + 1)

end A108031

/-! ## A108031.P736090828291505384

`record[∑{d}[A123108(n), A000032(#-1)]]`
-/

namespace A108031.P736090828291505384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A000032 (d - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108031.P736090828291505384

namespace A108031

/-- `record[∑{d}[A123108(n), A000032(#-1)]]` -/
def P736090828291505384.Spec : Prop :=
  ∀ n, P736090828291505384.a n = A108031 (n + 1)

end A108031

/-! ## A108031.P4870619853087289046

`A007435(n+1)+A007435(n+1)-A108046(n+1)`
-/

namespace A108031.P4870619853087289046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007435 (n + 1) + (A007435 (n + 1) - A108046 (n + 1))

end

end A108031.P4870619853087289046

namespace A108031

/-- `A007435(n+1)+A007435(n+1)-A108046(n+1)` -/
def P4870619853087289046.Spec : Prop :=
  ∀ n, P4870619853087289046.a n = A108031 (n + 1)

end A108031

/-! ## A108031.P2456434884992322658

`2*A007435(n+1)-A108046(n+1)`
-/

namespace A108031.P2456434884992322658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007435 (n + 1) - A108046 (n + 1)

end

end A108031.P2456434884992322658

namespace A108031

/-- `2*A007435(n+1)-A108046(n+1)` -/
def P2456434884992322658.Spec : Prop :=
  ∀ n, P2456434884992322658.a n = A108031 (n + 1)

end A108031

/-!
# A108032: Triangle T(n,k), 0<=k<=n, read by rows, defined by : T(0,0) = 1, T(n,k) = 0 if n<k or if k<0, T(n,k) = k*T(n-1, k-1) + (2n-2k-1)*T(n-1, k).

The programs for A108032, the canonical program `A108032.P2889567196329678215` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108032 has offset 0).

The definition of A108032 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `col(n)*T(n-1,k-1)+(2*row(n)-2*col(n)-1)*T(n-1,k)` (program `A108032.P2889567196329678215`, by `A108032.P2889567196329678215.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108032.P2889567196329678215

`col(n)*T(n-1,k-1)+(2*row(n)-2*col(n)-1)*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A108032

/-- `col(n)*T(n-1,k-1)+(2*row(n)-2*col(n)-1)*T(n-1,k)` -/
def P2889567196329678215.Spec : Prop :=
  ∀ n, P2889567196329678215.a n = A108032 n

theorem P2889567196329678215.correct : P2889567196329678215.Spec := by
  intro n
  simp only [A108032]

end A108032

/-! ## A108032.P14352667528445834330

`A001147(row(n)-col(n))*col(n)!*C(row(n), col(n))`
-/

namespace A108032.P14352667528445834330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) * (Nat.factorial (SequenceMachineLib.triCol n) : ℤ) * (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ)

end

end A108032.P14352667528445834330

namespace A108032

/-- `A001147(row(n)-col(n))*col(n)!*C(row(n), col(n))` -/
def P14352667528445834330.Spec : Prop :=
  ∀ n, P14352667528445834330.a n = A108032 n

end A108032

/-! ## A108032.P10230373760433652678

`col(n)*T(n-1,k-1)+(2*row(n)-(2*col(n)+1))*T(n-1,k)` with `a(0)=1`
-/

namespace A108032.P10230373760433652678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triCol n : ℤ) * SequenceMachineLib.triUpLeft a n + ((2 * SequenceMachineLib.triRow n : ℤ) - (2 * SequenceMachineLib.triCol n + 1 : ℤ)) * SequenceMachineLib.triUp a n

end

end A108032.P10230373760433652678

namespace A108032

/-- `col(n)*T(n-1,k-1)+(2*row(n)-(2*col(n)+1))*T(n-1,k)` -/
def P10230373760433652678.Spec : Prop :=
  ∀ n, P10230373760433652678.a n = A108032 n

theorem P10230373760433652678.correct : P10230373760433652678.Spec := by
  intro n
  simp only [A108032, Nat.add_sub_cancel, A108032.P10230373760433652678.a, A108032.P2889567196329678215.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A108032

/-! ## A108032.P15488247431013768291

`A368235(n)/A013609(n)`
-/

namespace A108032.P15488247431013768291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368235 n : ℚ) / (A013609 n : ℚ)

end

end A108032.P15488247431013768291

namespace A108032

/-- `A368235(n)/A013609(n)` -/
def P15488247431013768291.Spec : Prop :=
  ∀ n, P15488247431013768291.a n = (A108032 n : ℚ)

end A108032

/-! ## A108032.P6557906007600230206

`A001147(C(comp[∑[n]]-n, 2)-(n+1))*A008279(n)`
-/

namespace A108032.P6557906007600230206
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) * A008279 n

end

end A108032.P6557906007600230206

namespace A108032

/-- `A001147(C(comp[∑[n]]-n, 2)-(n+1))*A008279(n)` -/
def P6557906007600230206.Spec : Prop :=
  ∀ n, P6557906007600230206.a n = A108032 n

end A108032

/-!
# A108033: n!*(3*n^2-13*n+14)/6.

The programs for A108033, the canonical program `A108033.P5139287918288322434` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108033 has offset 2).

The definition of A108033 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108033.P5139287918288322434

`(n+2)!*(3*(n+2)²-13*(n+2)+14)/6`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A108033

/-- `(n+2)!*(3*(n+2)²-13*(n+2)+14)/6` -/
def P5139287918288322434.Spec : Prop :=
  ∀ n, P5139287918288322434.a n = (A108033 (n + 2) : ℚ)

end A108033

/-! ## A108033.P16304595881035037373

`C(3*n, 2)/9*(n+2)!`
-/

namespace A108033.P16304595881035037373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) 2 : ℚ) / 9 * (Nat.factorial (n + 2) : ℚ)

end

end A108033.P16304595881035037373

namespace A108033

/-- `C(3*n, 2)/9*(n+2)!` -/
def P16304595881035037373.Spec : Prop :=
  ∀ n, P16304595881035037373.a n = (A108033 (n + 2) : ℚ)

end A108033

/-! ## A108033.P842561106580290599

`(3*n-1)*n!*∑[∑[n]]`
-/

namespace A108033.P842561106580290599
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * n : ℤ) - 1) * ((Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A108033.P842561106580290599

namespace A108033

/-- `(3*n-1)*n!*∑[∑[n]]` -/
def P842561106580290599.Spec : Prop :=
  ∀ n, P842561106580290599.a n = A108033 (n + 2)

end A108033

/-! ## A108033.P15744070256408030725

`Δ[A056199(n+1)]*A000326(n)`
-/

namespace A108033.P15744070256408030725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000326 n

end

end A108033.P15744070256408030725

namespace A108033

/-- `Δ[A056199(n+1)]*A000326(n)` -/
def P15744070256408030725.Spec : Prop :=
  ∀ n, P15744070256408030725.a n = A108033 (n + 2)

end A108033

/-! ## A108033.P9229520323747759538

`record[A014682(n)]*A005990(n+1)`
-/

namespace A108033.P9229520323747759538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A005990 (n + 1)

end

end A108033.P9229520323747759538

namespace A108033

/-- `record[A014682(n)]*A005990(n+1)` -/
def P9229520323747759538.Spec : Prop :=
  ∀ n, P9229520323747759538.a n = A108033 (n + 2)

end A108033

/-! ## A108033.P365734931162917588

`(A008486(n)-1)*A005990(n+1)`
-/

namespace A108033.P365734931162917588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008486 n - 1) * A005990 (n + 1)

end

end A108033.P365734931162917588

namespace A108033

/-- `(A008486(n)-1)*A005990(n+1)` -/
def P365734931162917588.Spec : Prop :=
  ∀ n, P365734931162917588.a n = A108033 (n + 2)

end A108033

/-! ## A108033.P3892838243816995072

`(A004273(n)+n)*A005990(n+1)`
-/

namespace A108033.P3892838243816995072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004273 n + (n : ℤ)) * A005990 (n + 1)

end

end A108033.P3892838243816995072

namespace A108033

/-- `(A004273(n)+n)*A005990(n+1)` -/
def P3892838243816995072.Spec : Prop :=
  ∀ n, P3892838243816995072.a n = A108033 (n + 2)

end A108033

/-! ## A108033.P12270046135784930595

`∏[A134478(A133263(n))]*A000326(n)`
-/

namespace A108033.P12270046135784930595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (A133263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A000326 n

end

end A108033.P12270046135784930595

namespace A108033

/-- `∏[A134478(A133263(n))]*A000326(n)` -/
def P12270046135784930595.Spec : Prop :=
  ∀ n, P12270046135784930595.a n = A108033 (n + 2)

end A108033

/-! ## A108033.P9720351501205404464

`A049450(n)*A094587(A167614(n+1))`
-/

namespace A108033.P9720351501205404464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049450 n * A094587 (A167614 (n + 1)).toNat

end

end A108033.P9720351501205404464

namespace A108033

/-- `A049450(n)*A094587(A167614(n+1))` -/
def P9720351501205404464.Spec : Prop :=
  ∀ n, P9720351501205404464.a n = A108033 (n + 2)

end A108033

/-!
# A108034: n!*(9*n^4-78*n^3+235*n^2-438*n+680)/72.

The programs for A108034, the canonical program `A108034.P4888784378222429153` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108034 has offset 4).

The definition of A108034 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108034.P4888784378222429153

`(n+4)!*(9*(n+4)^4-78*(n+4)^3+235*(n+4)²-438*(n+4)+680)/72`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A108034

/-- `(n+4)!*(9*(n+4)^4-78*(n+4)^3+235*(n+4)²-438*(n+4)+680)/72` -/
def P4888784378222429153.Spec : Prop :=
  ∀ n, P4888784378222429153.a n = (A108034 (n + 4) : ℚ)

end A108034

/-!
# A108035: Triangle read by rows: n-th row consists of n copies of the n-th nonzero Fibonacci number.

The programs for A108035, the canonical program `A108035.P3509439464980621154` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108035 has offset 1).

The definition of A108035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108035.P8820183772317642753

`A000045(2+row(n))`
-/

namespace A108035.P8820183772317642753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 + SequenceMachineLib.triRow n)

end

end A108035.P8820183772317642753

namespace A108035

/-- `A000045(2+row(n))` -/
def P8820183772317642753.Spec : Prop :=
  ∀ n, P8820183772317642753.a n = A108035 (n + 1)

end A108035

/-! ## A108035.P9242987780519703261

`A212804(row(n)+3)`
-/

namespace A108035.P9242987780519703261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (SequenceMachineLib.triRow n + 3)

end

end A108035.P9242987780519703261

namespace A108035

/-- `A212804(row(n)+3)` -/
def P9242987780519703261.Spec : Prop :=
  ∀ n, P9242987780519703261.a n = A108035 (n + 1)

end A108035

/-! ## A108035.P8485246860947126931

`A324969(row(n)+3)`
-/

namespace A108035.P8485246860947126931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (SequenceMachineLib.triRow n + 3)

end

end A108035.P8485246860947126931

namespace A108035

/-- `A324969(row(n)+3)` -/
def P8485246860947126931.Spec : Prop :=
  ∀ n, P8485246860947126931.a n = A108035 (n + 1)

end A108035

/-! ## A108035.P7548519247176211481

`A096748(2*row(n))`
-/

namespace A108035.P7548519247176211481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096748 (2 * SequenceMachineLib.triRow n)

end

end A108035.P7548519247176211481

namespace A108035

/-- `A096748(2*row(n))` -/
def P7548519247176211481.Spec : Prop :=
  ∀ n, P7548519247176211481.a n = A108035 (n + 1)

end A108035

/-! ## A108035.P11014285613403286605

`A035506(n-col(n))`
-/

namespace A108035.P11014285613403286605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035506 (n - SequenceMachineLib.triCol n)

end

end A108035.P11014285613403286605

namespace A108035

/-- `A035506(n-col(n))` -/
def P11014285613403286605.Spec : Prop :=
  ∀ n, P11014285613403286605.a n = A108035 (n + 1)

end A108035

/-! ## A108035.P13237597081889505829

`A094442(n-col(n))`
-/

namespace A108035.P13237597081889505829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094442 (n - SequenceMachineLib.triCol n)

end

end A108035.P13237597081889505829

namespace A108035

/-- `A094442(n-col(n))` -/
def P13237597081889505829.Spec : Prop :=
  ∀ n, P13237597081889505829.a n = A108035 (n + 1)

end A108035

/-! ## A108035.P8532556412618438988

`A122075(n-col(n))`
-/

namespace A108035.P8532556412618438988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122075 (n - SequenceMachineLib.triCol n)

end

end A108035.P8532556412618438988

namespace A108035

/-- `A122075(n-col(n))` -/
def P8532556412618438988.Spec : Prop :=
  ∀ n, P8532556412618438988.a n = A108035 (n + 1)

end A108035

/-! ## A108035.P15224906487401562959

`A154929(n-col(n))`
-/

namespace A108035.P15224906487401562959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154929 (n - SequenceMachineLib.triCol n)

end

end A108035.P15224906487401562959

namespace A108035

/-- `A154929(n-col(n))` -/
def P15224906487401562959.Spec : Prop :=
  ∀ n, P15224906487401562959.a n = A108035 (n + 1)

end A108035

/-! ## A108035.P14513994461855145678

`A000045(comp[∑[n]]-n)`
-/

namespace A108035.P14513994461855145678
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)

end

end A108035.P14513994461855145678

namespace A108035

/-- `A000045(comp[∑[n]]-n)` -/
def P14513994461855145678.Spec : Prop :=
  ∀ n, P14513994461855145678.a n = A108035 (n + 1)

end A108035

/-! ## A108035.P11749724783217927320

`A053602(2*(row(n)+2))`
-/

namespace A108035.P11749724783217927320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * (SequenceMachineLib.triRow n + 2))

end

end A108035.P11749724783217927320

namespace A108035

/-- `A053602(2*(row(n)+2))` -/
def P11749724783217927320.Spec : Prop :=
  ∀ n, P11749724783217927320.a n = A108035 (n + 1)

end A108035

/-! ## A108035.P11940450068586641689

`A035513(n+1-col(n))`
-/

namespace A108035.P11940450068586641689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035513 (n + 1 - SequenceMachineLib.triCol n)

end

end A108035.P11940450068586641689

namespace A108035

/-- `A035513(n+1-col(n))` -/
def P11940450068586641689.Spec : Prop :=
  ∀ n, P11940450068586641689.a n = A108035 (n + 1)

end A108035

/-! ## A108035.P3647232384915046617

`A127647(n)+a(n-1)` with `a(0)=1`
-/

namespace A108035.P3647232384915046617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A127647 n + a (n - 1)

end

end A108035.P3647232384915046617

namespace A108035

/-- `A127647(n)+a(n-1)` -/
def P3647232384915046617.Spec : Prop :=
  ∀ n, P3647232384915046617.a n = A108035 (n + 1)

end A108035

/-! ## A108035.P2347030725510901932

`A000071(∑[char[∑[n]]]+1)+1`
-/

namespace A108035.P2347030725510901932
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1

end

end A108035.P2347030725510901932

namespace A108035

/-- `A000071(∑[char[∑[n]]]+1)+1` -/
def P2347030725510901932.Spec : Prop :=
  ∀ n, P2347030725510901932.a n = A108035 (n + 1)

end A108035

/-! ## A108035.P17585082626637623792

`A001611(∑[char[∑[n]]]+1)-1`
-/

namespace A108035.P17585082626637623792
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1

end

end A108035.P17585082626637623792

namespace A108035

/-- `A001611(∑[char[∑[n]]]+1)-1` -/
def P17585082626637623792.Spec : Prop :=
  ∀ n, P17585082626637623792.a n = A108035 (n + 1)

end A108035

/-! ## A108035.P8901869111615535106

`A035506(A057944(n))`
-/

namespace A108035.P8901869111615535106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035506 (A057944 n).toNat

end

end A108035.P8901869111615535106

namespace A108035

/-- `A035506(A057944(n))` -/
def P8901869111615535106.Spec : Prop :=
  ∀ n, P8901869111615535106.a n = A108035 (n + 1)

end A108035

/-! ## A108035.P3509439464980621154

`A053602(A131507(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A108035

/-- `A053602(A131507(n))` -/
def P3509439464980621154.Spec : Prop :=
  ∀ n, P3509439464980621154.a n = A108035 (n + 1)

theorem P3509439464980621154.correct : P3509439464980621154.Spec := by
  intro n
  simp only [A108035, Nat.add_sub_cancel]

end A108035

/-! ## A108035.P13837632113897655640

`A096748(A279891(n))`
-/

namespace A108035.P13837632113897655640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096748 (A279891 n).toNat

end

end A108035.P13837632113897655640

namespace A108035

/-- `A096748(A279891(n))` -/
def P13837632113897655640.Spec : Prop :=
  ∀ n, P13837632113897655640.a n = A108035 (n + 1)

end A108035

/-! ## A108035.P4482642580492878140

`∑[A127647(A028310(n))]`
-/

namespace A108035.P4482642580492878140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127647 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108035.P4482642580492878140

namespace A108035

/-- `∑[A127647(A028310(n))]` -/
def P4482642580492878140.Spec : Prop :=
  ∀ n, P4482642580492878140.a n = A108035 (n + 1)

end A108035

/-! ## A108035.P12060602062103659468

`A120250(A005145(n+1))`
-/

namespace A108035.P12060602062103659468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120250 (A005145 (n + 1)).toNat

end

end A108035.P12060602062103659468

namespace A108035

/-- `A120250(A005145(n+1))` -/
def P12060602062103659468.Spec : Prop :=
  ∀ n, P12060602062103659468.a n = A108035 (n + 1)

end A108035

/-!
# A108036: Triangle read by rows: the triangle in A108035 surrounded by a border of 0's.

The programs for A108036, the canonical program `A108036.P4284321019539104631` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108036 has offset 0).

The definition of A108036 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108036.P4284321019539104631

`A108037((n-1)%A007318(n)²)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A108036

/-- `A108037((n-1)%A007318(n)²)` -/
def P4284321019539104631.Spec : Prop :=
  ∀ n, P4284321019539104631.a n = A108036 n

theorem P4284321019539104631.correct : P4284321019539104631.Spec := by
  intro n
  simp only [A108036]

end A108036

/-! ## A108036.P218009727075344271

`A000045(A003056(n)%A008288(n))`
-/

namespace A108036.P218009727075344271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (A003056 n) (A008288 n)).toNat

end

end A108036.P218009727075344271

namespace A108036

/-- `A000045(A003056(n)%A008288(n))` -/
def P218009727075344271.Spec : Prop :=
  ∀ n, P218009727075344271.a n = A108036 n

end A108036

/-! ## A108036.P16196106795057441908

`A000045(∑[A023531(n)]%A106597(n))`
-/

namespace A108036.P16196106795057441908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A106597 n)).toNat

end

end A108036.P16196106795057441908

namespace A108036

/-- `A000045(∑[A023531(n)]%A106597(n))` -/
def P16196106795057441908.Spec : Prop :=
  ∀ n, P16196106795057441908.a n = A108036 n

end A108036

/-! ## A108036.P12123875158351201379

`A000045(Δ[A006463(n)]%A007318(n)²)`
-/

namespace A108036.P12123875158351201379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (f1 (n + 1) - f1 n) (A007318 n ^ 2)).toNat

end

end A108036.P12123875158351201379

namespace A108036

/-- `A000045(Δ[A006463(n)]%A007318(n)²)` -/
def P12123875158351201379.Spec : Prop :=
  ∀ n, P12123875158351201379.a n = A108036 n

end A108036

/-! ## A108036.P7408631539634118111

`A000045(∑[A010054(n+1)]%A026374(n))`
-/

namespace A108036.P7408631539634118111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A026374 n)).toNat

end

end A108036.P7408631539634118111

namespace A108036

/-- `A000045(∑[A010054(n+1)]%A026374(n))` -/
def P7408631539634118111.Spec : Prop :=
  ∀ n, P7408631539634118111.a n = A108036 n

end A108036

/-! ## A108036.P17581003244686887155

`A000045(A003056(n))%A119726(n+1)`
-/

namespace A108036.P17581003244686887155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (A003056 n).toNat) (A119726 (n + 1))

end

end A108036.P17581003244686887155

namespace A108036

/-- `A000045(A003056(n))%A119726(n+1)` -/
def P17581003244686887155.Spec : Prop :=
  ∀ n, P17581003244686887155.a n = A108036 n

end A108036

/-! ## A108036.P6028704395135763369

`A000045(row(n)%A047969(n))`
-/

namespace A108036.P6028704395135763369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (SequenceMachineLib.triRow n : ℤ) (A047969 n)).toNat

end

end A108036.P6028704395135763369

namespace A108036

/-- `A000045(row(n)%A047969(n))` -/
def P6028704395135763369.Spec : Prop :=
  ∀ n, P6028704395135763369.a n = A108036 n

end A108036

/-! ## A108036.P6072782110350704914

`A108037(n%A056940(n))`
-/

namespace A108036.P6072782110350704914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108037 (Int.tmod (n : ℤ) (A056940 n)).toNat

end

end A108036.P6072782110350704914

namespace A108036

/-- `A108037(n%A056940(n))` -/
def P6072782110350704914.Spec : Prop :=
  ∀ n, P6072782110350704914.a n = A108036 n

end A108036

/-! ## A108036.P930370855330720180

`A000045(∑[A073424(n)]%A008277(n+1))`
-/

namespace A108036.P930370855330720180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A008277 (n + 1))).toNat

end

end A108036.P930370855330720180

namespace A108036

/-- `A000045(∑[A073424(n)]%A008277(n+1))` -/
def P930370855330720180.Spec : Prop :=
  ∀ n, P930370855330720180.a n = A108036 n

end A108036

/-! ## A108036.P17853957941404637624

`A000045((n-A083920(n))%A008292(n+1))`
-/

namespace A108036.P17853957941404637624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod ((n : ℤ) - A083920 n) (A008292 (n + 1))).toNat

end

end A108036.P17853957941404637624

namespace A108036

/-- `A000045((n-A083920(n))%A008292(n+1))` -/
def P17853957941404637624.Spec : Prop :=
  ∀ n, P17853957941404637624.a n = A108036 n

end A108036

/-! ## A108036.P4662703901415025385

`A000045(row(n))%A173077(n)`
-/

namespace A108036.P4662703901415025385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (SequenceMachineLib.triRow n)) (A173077 n)

end

end A108036.P4662703901415025385

namespace A108036

/-- `A000045(row(n))%A173077(n)` -/
def P4662703901415025385.Spec : Prop :=
  ∀ n, P4662703901415025385.a n = A108036 n

end A108036

/-! ## A108036.P3516240163367233578

`A108037(n%A015117(n))`
-/

namespace A108036.P3516240163367233578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108037 (Int.tmod (n : ℤ) (A015117 n)).toNat

end

end A108036.P3516240163367233578

namespace A108036

/-- `A108037(n%A015117(n))` -/
def P3516240163367233578.Spec : Prop :=
  ∀ n, P3516240163367233578.a n = A108036 n

end A108036

/-! ## A108036.P9401622302071293957

`A108037(n*A057427(A098356(n)))`
-/

namespace A108036.P9401622302071293957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108037 ((n : ℤ) * A057427 (A098356 n).toNat).toNat

end

end A108036.P9401622302071293957

namespace A108036

/-- `A108037(n*A057427(A098356(n)))` -/
def P9401622302071293957.Spec : Prop :=
  ∀ n, P9401622302071293957.a n = A108036 n

end A108036

/-! ## A108036.P1237832496489375823

`A108037(n)%A008300(n)`
-/

namespace A108036.P1237832496489375823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108037 n) (A008300 n)

end

end A108036.P1237832496489375823

namespace A108036

/-- `A108037(n)%A008300(n)` -/
def P1237832496489375823.Spec : Prop :=
  ∀ n, P1237832496489375823.a n = A108036 n

end A108036

/-! ## A108036.P1043875180999238770

`A000045(A003056(n))%A008300(n)`
-/

namespace A108036.P1043875180999238770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (A003056 n).toNat) (A008300 n)

end

end A108036.P1043875180999238770

namespace A108036

/-- `A000045(A003056(n))%A008300(n)` -/
def P1043875180999238770.Spec : Prop :=
  ∀ n, P1043875180999238770.a n = A108036 n

end A108036

/-! ## A108036.P17953447745685885538

`A212804(A002024(n+1))%A209330(n)`
-/

namespace A108036.P17953447745685885538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212804 (A002024 (n + 1)).toNat) (A209330 n)

end

end A108036.P17953447745685885538

namespace A108036

/-- `A212804(A002024(n+1))%A209330(n)` -/
def P17953447745685885538.Spec : Prop :=
  ∀ n, P17953447745685885538.a n = A108036 n

end A108036

/-!
# A108037: Triangle read by rows: n-th row is n-th nonzero Fibonacci number repeated n+1 times.

The programs for A108037, the canonical program `A108037.P17027528278419021511` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108037 has offset 0).

The definition of A108037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108037.P3211514340446614386

`A000045(row(n))`
-/

namespace A108037.P3211514340446614386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.triRow n)

end

end A108037.P3211514340446614386

namespace A108037

/-- `A000045(row(n))` -/
def P3211514340446614386.Spec : Prop :=
  ∀ n, P3211514340446614386.a n = A108037 n

end A108037

/-! ## A108037.P18352014083108884921

`sqrt(A007598(row(n)))`
-/

namespace A108037.P18352014083108884921
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A007598 (SequenceMachineLib.triRow n) : ℝ)

end

end A108037.P18352014083108884921

namespace A108037

/-- `sqrt(A007598(row(n)))` -/
def P18352014083108884921.Spec : Prop :=
  ∀ n, P18352014083108884921.a n = (A108037 n : ℝ)

end A108037

/-! ## A108037.P5419167578156413515

`A212804(∑[char[∑[n]]])`
-/

namespace A108037.P5419167578156413515
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108037.P5419167578156413515

namespace A108037

/-- `A212804(∑[char[∑[n]]])` -/
def P5419167578156413515.Spec : Prop :=
  ∀ n, P5419167578156413515.a n = A108037 n

end A108037

/-! ## A108037.P16227229633515957804

`A001611(row(n))-1`
-/

namespace A108037.P16227229633515957804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (SequenceMachineLib.triRow n) - 1

end

end A108037.P16227229633515957804

namespace A108037

/-- `A001611(row(n))-1` -/
def P16227229633515957804.Spec : Prop :=
  ∀ n, P16227229633515957804.a n = A108037 n

end A108037

/-! ## A108037.P2021416158669410431

`A053602(2*row(n))`
-/

namespace A108037.P2021416158669410431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * SequenceMachineLib.triRow n)

end

end A108037.P2021416158669410431

namespace A108037

/-- `A053602(2*row(n))` -/
def P2021416158669410431.Spec : Prop :=
  ∀ n, P2021416158669410431.a n = A108037 n

end A108037

/-! ## A108037.P10600809396155612232

`A108362(xor(1, row(n)))`
-/

namespace A108037.P10600809396155612232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108362 (Nat.xor 1 (SequenceMachineLib.triRow n))

end

end A108037.P10600809396155612232

namespace A108037

/-- `A108362(xor(1, row(n)))` -/
def P10600809396155612232.Spec : Prop :=
  ∀ n, P10600809396155612232.a n = A108037 n

end A108037

/-! ## A108037.P5941885774022904362

`A000045(∑[abs(T(n-1,k))])` with `a(0)=0, a(1)=1`
-/

namespace A108037.P5941885774022904362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  SequenceMachineLib.triUp f1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108037.P5941885774022904362

namespace A108037

/-- `A000045(∑[abs(T(n-1,k))])` -/
def P5941885774022904362.Spec : Prop :=
  ∀ n, P5941885774022904362.a n = A108037 n

end A108037

/-! ## A108037.P13819933571144793646

`ceil(A062114(row(n))/2)`
-/

namespace A108037.P13819933571144793646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A062114 (SequenceMachineLib.triRow n) : ℚ) / 2⌉

end

end A108037.P13819933571144793646

namespace A108037

/-- `ceil(A062114(row(n))/2)` -/
def P13819933571144793646.Spec : Prop :=
  ∀ n, P13819933571144793646.a n = A108037 n

end A108037

/-! ## A108037.P4879177108964948071

`A053602(row(n)+row(n))`
-/

namespace A108037.P4879177108964948071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (SequenceMachineLib.triRow n + SequenceMachineLib.triRow n)

end

end A108037.P4879177108964948071

namespace A108037

/-- `A053602(row(n)+row(n))` -/
def P4879177108964948071.Spec : Prop :=
  ∀ n, P4879177108964948071.a n = A108037 n

end A108037

/-! ## A108037.P7400803339389626591

`A000045(∑[char[∑[n+1]]])`
-/

namespace A108037.P7400803339389626591
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108037.P7400803339389626591

namespace A108037

/-- `A000045(∑[char[∑[n+1]]])` -/
def P7400803339389626591.Spec : Prop :=
  ∀ n, P7400803339389626591.a n = A108037 n

end A108037

/-! ## A108037.P8987345041506118527

`A001611(∑[char[∑[n+1]]])-1`
-/

namespace A108037.P8987345041506118527
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A108037.P8987345041506118527

namespace A108037

/-- `A001611(∑[char[∑[n+1]]])-1` -/
def P8987345041506118527.Spec : Prop :=
  ∀ n, P8987345041506118527.a n = A108037 n

end A108037

/-! ## A108037.P8900596431066721811

`A103609(2*∑[char[∑[n+1]]])`
-/

namespace A108037.P8900596431066721811
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A108037.P8900596431066721811

namespace A108037

/-- `A103609(2*∑[char[∑[n+1]]])` -/
def P8900596431066721811.Spec : Prop :=
  ∀ n, P8900596431066721811.a n = A108037 n

end A108037

/-! ## A108037.P4750109862907764483

`A017125(A057944(n))`
-/

namespace A108037.P4750109862907764483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017125 (A057944 n).toNat

end

end A108037.P4750109862907764483

namespace A108037

/-- `A017125(A057944(n))` -/
def P4750109862907764483.Spec : Prop :=
  ∀ n, P4750109862907764483.a n = A108037 n

end A108037

/-! ## A108037.P17027528278419021511

`A053602(A279891(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A108037

/-- `A053602(A279891(n))` -/
def P17027528278419021511.Spec : Prop :=
  ∀ n, P17027528278419021511.a n = A108037 n

theorem P17027528278419021511.correct : P17027528278419021511.Spec := by
  intro n
  simp only [A108037]

end A108037

/-! ## A108037.P15231962337918852969

`A247049(A111652(n+1))`
-/

namespace A108037.P15231962337918852969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247049 (A111652 (n + 1)).toNat

end

end A108037.P15231962337918852969

namespace A108037

/-- `A247049(A111652(n+1))` -/
def P15231962337918852969.Spec : Prop :=
  ∀ n, P15231962337918852969.a n = A108037 n

end A108037

/-! ## A108037.P11028174169196691165

`A053602(A131507(n)-1)`
-/

namespace A108037.P11028174169196691165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A131507 n - 1).toNat

end

end A108037.P11028174169196691165

namespace A108037

/-- `A053602(A131507(n)-1)` -/
def P11028174169196691165.Spec : Prop :=
  ∀ n, P11028174169196691165.a n = A108037 n

end A108037

/-! ## A108037.P16594652233481579704

`A302126(A131507(n)-1)`
-/

namespace A108037.P16594652233481579704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (A131507 n - 1).toNat

end

end A108037.P16594652233481579704

namespace A108037

/-- `A302126(A131507(n)-1)` -/
def P16594652233481579704.Spec : Prop :=
  ∀ n, P16594652233481579704.a n = A108037 n

end A108037

/-! ## A108037.P7124627319110051102

`A050610(n-A002262(n))`
-/

namespace A108037.P7124627319110051102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050610 ((n : ℤ) - A002262 n).toNat

end

end A108037.P7124627319110051102

namespace A108037

/-- `A050610(n-A002262(n))` -/
def P7124627319110051102.Spec : Prop :=
  ∀ n, P7124627319110051102.a n = A108037 n

end A108037

/-! ## A108037.P17552696487857790519

`A039913(n)-A098356(n)`
-/

namespace A108037.P17552696487857790519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039913 n - A098356 n

end

end A108037.P17552696487857790519

namespace A108037

/-- `A039913(n)-A098356(n)` -/
def P17552696487857790519.Spec : Prop :=
  ∀ n, P17552696487857790519.a n = A108037 n

theorem P17552696487857790519.correct : P17552696487857790519.Spec := by
  intro n
  simp only [A108037, Nat.add_sub_cancel, A108037.P17552696487857790519.a, A108037.P17027528278419021511.a, A039913, A039913.P15406212472898835494.a, A053602, A053602.P1781669924282634466.a, A098356, A098356.P9777268572316018789.a, A279891, A279891.P11915647867805557395.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A108037

/-!
# A108038: Triangle read by rows: g.f. = (x+y+x*y)/((1-x-x^2)*(1-y-y^2)).

The programs for A108038, the canonical program `A108038.P12143658067925174717` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108038 has offset 0).

The definition of A108038 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108038.P12143658067925174717

`A000045(col(n))*A000045(row(n)-col(n)+2)+A000045(col(n)+1)*A000045(row(n)-col(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A108038

/-- `A000045(col(n))*A000045(row(n)-col(n)+2)+A000045(col(n)+1)*A000045(row(n)-col(n))` -/
def P12143658067925174717.Spec : Prop :=
  ∀ n, P12143658067925174717.a n = A108038 n

theorem P12143658067925174717.correct : P12143658067925174717.Spec := by
  intro n
  simp only [A108038]

end A108038

/-! ## A108038.P4361987690758279684

`A098356(n)+A039913(n)`
-/

namespace A108038.P4361987690758279684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098356 n + A039913 n

end

end A108038.P4361987690758279684

namespace A108038

/-- `A098356(n)+A039913(n)` -/
def P4361987690758279684.Spec : Prop :=
  ∀ n, P4361987690758279684.a n = A108038 n

end A108038

/-! ## A108038.P748003239838837553

`A108037(n)+2*A098356(n)`
-/

namespace A108038.P748003239838837553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108037 n + 2 * A098356 n

end

end A108038.P748003239838837553

namespace A108038

/-- `A108037(n)+2*A098356(n)` -/
def P748003239838837553.Spec : Prop :=
  ∀ n, P748003239838837553.a n = A108038 n

end A108038

/-! ## A108038.P10650244826733274622

`2*A039913(n)-A108037(n)`
-/

namespace A108038.P10650244826733274622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A039913 n - A108037 n

end

end A108038.P10650244826733274622

namespace A108038

/-- `2*A039913(n)-A108037(n)` -/
def P10650244826733274622.Spec : Prop :=
  ∀ n, P10650244826733274622.a n = A108038 n

end A108038

/-! ## A108038.P1918973566430791633

`A000045(A003056(n))+2*A098356(n)`
-/

namespace A108038.P1918973566430791633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A003056 n).toNat + 2 * A098356 n

end

end A108038.P1918973566430791633

namespace A108038

/-- `A000045(A003056(n))+2*A098356(n)` -/
def P1918973566430791633.Spec : Prop :=
  ∀ n, P1918973566430791633.a n = A108038 n

end A108038

/-! ## A108038.P11304022442880464303

`2*A039913(n)-A039913(A057944(n))`
-/

namespace A108038.P11304022442880464303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A039913 n - A039913 (A057944 n).toNat

end

end A108038.P11304022442880464303

namespace A108038

/-- `2*A039913(n)-A039913(A057944(n))` -/
def P11304022442880464303.Spec : Prop :=
  ∀ n, P11304022442880464303.a n = A108038 n

end A108038

/-! ## A108038.P16845118864791110808

`A005843(A039913(n))-A039913(A057944(n))`
-/

namespace A108038.P16845118864791110808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A039913 n).toNat - A039913 (A057944 n).toNat

end

end A108038.P16845118864791110808

namespace A108038

/-- `A005843(A039913(n))-A039913(A057944(n))` -/
def P16845118864791110808.Spec : Prop :=
  ∀ n, P16845118864791110808.a n = A108038 n

end A108038

/-! ## A108038.P18420160293009034036

`A106408(n+1)-A058071(n)`
-/

namespace A108038.P18420160293009034036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106408 (n + 1) - A058071 n

end

end A108038.P18420160293009034036

namespace A108038

/-- `A106408(n+1)-A058071(n)` -/
def P18420160293009034036.Spec : Prop :=
  ∀ n, P18420160293009034036.a n = A108038 n

end A108038

/-!
# A108040: Reflection of triangle in A008280 in vertical axis.

The programs for A108040, the canonical program `A108040.P9717987136740058663` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108040 has offset 0).

The definition of A108040 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008280, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A108040.P9717987136740058663

`A008280(C(row(n)+1, 2)+row(n)-col(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A108040

/-- `A008280(C(row(n)+1, 2)+row(n)-col(n))` -/
def P9717987136740058663.Spec : Prop :=
  ∀ n, P9717987136740058663.a n = A108040 n

theorem P9717987136740058663.correct : P9717987136740058663.Spec := by
  intro n
  simp only [A108040]

end A108040

/-! ## A108040.P8905302678868812728

`A008280(∑[char[∑[n]]]²-(n+1))`
-/

namespace A108040.P8905302678868812728
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008280 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A108040.P8905302678868812728

namespace A108040

/-- `A008280(∑[char[∑[n]]]²-(n+1))` -/
def P8905302678868812728.Spec : Prop :=
  ∀ n, P8905302678868812728.a n = A108040 n

end A108040

/-! ## A108040.P13604716611328595210

`A008281(A056011(n+1)-1)`
-/

namespace A108040.P13604716611328595210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 (A056011 (n + 1) - 1).toNat

end

end A108040.P13604716611328595210

namespace A108040

/-- `A008281(A056011(n+1)-1)` -/
def P13604716611328595210.Spec : Prop :=
  ∀ n, P13604716611328595210.a n = A108040 n

end A108040

/-! ## A108040.P9130860315405976504

`gcd(A000038(n), A008280(A061579(n)))`
-/

namespace A108040.P9130860315405976504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A008280 (A061579 n).toNat)

end

end A108040.P9130860315405976504

namespace A108040

/-- `gcd(A000038(n), A008280(A061579(n)))` -/
def P9130860315405976504.Spec : Prop :=
  ∀ n, (P9130860315405976504.a n : ℤ) = A108040 n

end A108040

/-! ## A108040.P14821121338041649089

`A008280(A038722(n+1)-1)+A000038(n+1)`
-/

namespace A108040.P14821121338041649089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008280 (A038722 (n + 1) - 1).toNat + A000038 (n + 1)

end

end A108040.P14821121338041649089

namespace A108040

/-- `A008280(A038722(n+1)-1)+A000038(n+1)` -/
def P14821121338041649089.Spec : Prop :=
  ∀ n, P14821121338041649089.a n = A108040 n

end A108040

/-! ## A108040.P183732667964149552

`A000035(2*n+1)*A008280(A114327(n)+n)`
-/

namespace A108040.P183732667964149552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1) * A008280 (A114327 n + (n : ℤ)).toNat

end

end A108040.P183732667964149552

namespace A108040

/-- `A000035(2*n+1)*A008280(A114327(n)+n)` -/
def P183732667964149552.Spec : Prop :=
  ∀ n, P183732667964149552.a n = A108040 n

end A108040

/-! ## A108040.P1710488369407127851

`A010051(A007774(n+1))+A008280(A114327(n)+n)`
-/

namespace A108040.P1710488369407127851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A007774 (n + 1)).toNat + A008280 (A114327 n + (n : ℤ)).toNat

end

end A108040.P1710488369407127851

namespace A108040

/-- `A010051(A007774(n+1))+A008280(A114327(n)+n)` -/
def P1710488369407127851.Spec : Prop :=
  ∀ n, P1710488369407127851.a n = A108040 n

end A108040

/-! ## A108040.P8731884661105526266

`A010051(A033993(n+1))+A008280(A114327(n)+n)`
-/

namespace A108040.P8731884661105526266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A033993 (n + 1)).toNat + A008280 (A114327 n + (n : ℤ)).toNat

end

end A108040.P8731884661105526266

namespace A108040

/-- `A010051(A033993(n+1))+A008280(A114327(n)+n)` -/
def P8731884661105526266.Spec : Prop :=
  ∀ n, P8731884661105526266.a n = A108040 n

end A108040

/-! ## A108040.P15271029061801347687

`A010051(A100367(n+1))+A008280(A114327(n)+n)`
-/

namespace A108040.P15271029061801347687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A100367 (n + 1)).toNat + A008280 (A114327 n + (n : ℤ)).toNat

end

end A108040.P15271029061801347687

namespace A108040

/-- `A010051(A100367(n+1))+A008280(A114327(n)+n)` -/
def P15271029061801347687.Spec : Prop :=
  ∀ n, P15271029061801347687.a n = A108040 n

end A108040

/-! ## A108040.P8198477902560753128

`A008280(A114327(n)+n)^A001222(A008578(n+1))`
-/

namespace A108040.P8198477902560753128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008280 (A114327 n + (n : ℤ)).toNat : ℚ) ^ (A001222 (A008578 (n + 1)).toNat : ℤ)

end

end A108040.P8198477902560753128

namespace A108040

/-- `A008280(A114327(n)+n)^A001222(A008578(n+1))` -/
def P8198477902560753128.Spec : Prop :=
  ∀ n, P8198477902560753128.a n = (A108040 n : ℚ)

end A108040

/-! ## A108040.P10618539869562090321

`A008280(A114327(n)+n)^A008683(A001748(n+1))`
-/

namespace A108040.P10618539869562090321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008280 (A114327 n + (n : ℤ)).toNat : ℚ) ^ (A008683 (A001748 (n + 1)).toNat : ℤ)

end

end A108040.P10618539869562090321

namespace A108040

/-- `A008280(A114327(n)+n)^A008683(A001748(n+1))` -/
def P10618539869562090321.Spec : Prop :=
  ∀ n, P10618539869562090321.a n = (A108040 n : ℚ)

end A108040

/-! ## A108040.P15992672380241906664

`A001222(A065091(n+1))*A008280(A038722(n+1)-1)`
-/

namespace A108040.P15992672380241906664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A065091 (n + 1)).toNat * A008280 (A038722 (n + 1) - 1).toNat

end

end A108040.P15992672380241906664

namespace A108040

/-- `A001222(A065091(n+1))*A008280(A038722(n+1)-1)` -/
def P15992672380241906664.Spec : Prop :=
  ∀ n, P15992672380241906664.a n = A108040 n

end A108040

/-! ## A108040.P6821529380565706477

`A001222(A114262(n+2))*A008280(A038722(n+1)-1)`
-/

namespace A108040.P6821529380565706477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A114262 (n + 2)).toNat * A008280 (A038722 (n + 1) - 1).toNat

end

end A108040.P6821529380565706477

namespace A108040

/-- `A001222(A114262(n+2))*A008280(A038722(n+1)-1)` -/
def P6821529380565706477.Spec : Prop :=
  ∀ n, P6821529380565706477.a n = A108040 n

end A108040

/-! ## A108040.P15008161169191540407

`A001222(A151799(n+3))*A008280(A038722(n+1)-1)`
-/

namespace A108040.P15008161169191540407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A151799 (n + 3)).toNat * A008280 (A038722 (n + 1) - 1).toNat

end

end A108040.P15008161169191540407

namespace A108040

/-- `A001222(A151799(n+3))*A008280(A038722(n+1)-1)` -/
def P15008161169191540407.Spec : Prop :=
  ∀ n, P15008161169191540407.a n = A108040 n

end A108040

/-! ## A108040.P17495849601912923925

`A001221(A006093(n+1)+1)*A008280(A114327(n)+n)`
-/

namespace A108040.P17495849601912923925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A006093 (n + 1) + 1).toNat * A008280 (A114327 n + (n : ℤ)).toNat

end

end A108040.P17495849601912923925

namespace A108040

/-- `A001221(A006093(n+1)+1)*A008280(A114327(n)+n)` -/
def P17495849601912923925.Spec : Prop :=
  ∀ n, P17495849601912923925.a n = A108040 n

end A108040

/-! ## A108040.P1707161049440412917

`A001222(A270310(n+1))*A008280(A038722(n+1)-1)`
-/

namespace A108040.P1707161049440412917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A270310 (n + 1)).toNat * A008280 (A038722 (n + 1) - 1).toNat

end

end A108040.P1707161049440412917

namespace A108040

/-- `A001222(A270310(n+1))*A008280(A038722(n+1)-1)` -/
def P1707161049440412917.Spec : Prop :=
  ∀ n, P1707161049440412917.a n = A108040 n

end A108040

/-! ## A108040.P15715477759468984693

`A010051(A001750(n+1))+A008280(A114327(n)+n)`
-/

namespace A108040.P15715477759468984693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A001750 (n + 1)).toNat + A008280 (A114327 n + (n : ℤ)).toNat

end

end A108040.P15715477759468984693

namespace A108040

/-- `A010051(A001750(n+1))+A008280(A114327(n)+n)` -/
def P15715477759468984693.Spec : Prop :=
  ∀ n, P15715477759468984693.a n = A108040 n

end A108040

/-! ## A108040.P15682004032469828656

`A035673(2*n+1)+A008280(A114327(n)+n)`
-/

namespace A108040.P15682004032469828656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035673 (2 * n + 1) + A008280 (A114327 n + (n : ℤ)).toNat

end

end A108040.P15682004032469828656

namespace A108040

/-- `A035673(2*n+1)+A008280(A114327(n)+n)` -/
def P15682004032469828656.Spec : Prop :=
  ∀ n, P15682004032469828656.a n = A108040 n

end A108040

/-! ## A108040.P3315858015463069523

`A010051(A051270(n+1))+A008280(A114327(n)+n)`
-/

namespace A108040.P3315858015463069523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A051270 (n + 1)).toNat + A008280 (A114327 n + (n : ℤ)).toNat

end

end A108040.P3315858015463069523

namespace A108040

/-- `A010051(A051270(n+1))+A008280(A114327(n)+n)` -/
def P3315858015463069523.Spec : Prop :=
  ∀ n, P3315858015463069523.a n = A108040 n

end A108040

/-!
# A108042: Leading diagonal of triangle A108041.

The programs for A108042, there is no canonical definition to state claims against.
-/

/-! ## A108042.P5005651139246549530

`A108041(∑[n])`
-/

namespace A108042.P5005651139246549530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108041 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108042.P5005651139246549530

/-! ## A108042.P10595984994790439657

`A108041(A000217(n))+char[9]`
-/

namespace A108042.P10595984994790439657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108041 (A000217 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A108042.P10595984994790439657

/-! ## A108042.P9593117024677582102

`A151949(n)+A108041(A000217(n))`
-/

namespace A108042.P9593117024677582102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 n + A108041 (A000217 n).toNat

end

end A108042.P9593117024677582102

/-! ## A108042.P1276386281544135046

`A178798(n)+A108041(A000217(n))`
-/

namespace A108042.P1276386281544135046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 n + A108041 (A000217 n).toNat

end

end A108042.P1276386281544135046

/-! ## A108042.P14966328585939187501

`A326456(n)+A108041(A000217(n))`
-/

namespace A108042.P14966328585939187501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326456 n + A108041 (A000217 n).toNat

end

end A108042.P14966328585939187501

/-!
# A108043: Row sums of triangle A108041.

The programs for A108043, there is no canonical definition to state claims against.
-/

/-! ## A108043.P9351939301459608012

`Δ[A108042(n)+∑[A108042(n)]]`
-/

namespace A108043.P9351939301459608012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108042 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108042 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108043.P9351939301459608012

/-! ## A108043.P12231247110631404397

`A108042(n+1)+Δ[A108042(n)]`
-/

namespace A108043.P12231247110631404397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108042 (n + 1) + (f1 (n + 1) - f1 n)

end

end A108043.P12231247110631404397

/-!
# A108044: Triangle read by rows: right half of Pascal's triangle (A007318) interspersed with 0's.

The programs for A108044, the canonical program `A108044.P8862669361882078575` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108044 has offset 0).

The definition of A108044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108044.P16927846500057993798

`(T(n-1,k-1)+T(n-1,k+1))*(T(T(n-1,k-1), 2*T(n-1,k-1))+1)` with `a(0)=1`
-/

namespace A108044.P16927846500057993798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUpRight a n) * (SequenceMachineLib.triAt a ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ) (2 * SequenceMachineLib.triUpLeft a n : ℤ) + 1)

end

end A108044.P16927846500057993798

namespace A108044

/-- `(T(n-1,k-1)+T(n-1,k+1))*(T(T(n-1,k-1), 2*T(n-1,k-1))+1)` -/
def P16927846500057993798.Spec : Prop :=
  ∀ n, (P16927846500057993798.a n : ℤ) = A108044 n

end A108044

/-! ## A108044.P12796500948044706391

`(1+(-1)^(row(n)-col(n)))/2*C(row(n), floor((row(n)-col(n))/2))`
-/

namespace A108044.P12796500948044706391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + (-1 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)) / 2 * (Nat.choose (SequenceMachineLib.triRow n) ⌊((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℚ) / 2⌋.toNat : ℚ)

end

end A108044.P12796500948044706391

namespace A108044

/-- `(1+(-1)^(row(n)-col(n)))/2*C(row(n), floor((row(n)-col(n))/2))` -/
def P12796500948044706391.Spec : Prop :=
  ∀ n, P12796500948044706391.a n = (A108044 n : ℚ)

end A108044

/-! ## A108044.P7574098386148527545

`abs(A120616(n))`
-/

namespace A108044.P7574098386148527545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A120616 n|

end

end A108044.P7574098386148527545

namespace A108044

/-- `abs(A120616(n))` -/
def P7574098386148527545.Spec : Prop :=
  ∀ n, P7574098386148527545.a n = A108044 n

end A108044

/-! ## A108044.P9355703134735792837

`A109187(n)/A046854(n)`
-/

namespace A108044.P9355703134735792837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109187 n : ℚ) / (A046854 n : ℚ)

end

end A108044.P9355703134735792837

namespace A108044

/-- `A109187(n)/A046854(n)` -/
def P9355703134735792837.Spec : Prop :=
  ∀ n, P9355703134735792837.a n = (A108044 n : ℚ)

end A108044

/-! ## A108044.P14701602218223355869

`A109187(n)/A134513(n)`
-/

namespace A108044.P14701602218223355869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109187 n : ℚ) / (A134513 n : ℚ)

end

end A108044.P14701602218223355869

namespace A108044

/-- `A109187(n)/A134513(n)` -/
def P14701602218223355869.Spec : Prop :=
  ∀ n, P14701602218223355869.a n = (A108044 n : ℚ)

end A108044

/-! ## A108044.P549132321982191109

`gcd(A000038(n), A120616(n))`
-/

namespace A108044.P549132321982191109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A120616 n)

end

end A108044.P549132321982191109

namespace A108044

/-- `gcd(A000038(n), A120616(n))` -/
def P549132321982191109.Spec : Prop :=
  ∀ n, (P549132321982191109.a n : ℤ) = A108044 n

end A108044

/-! ## A108044.P12772680217340304554

`lcm(A020985(n), A120616(n))`
-/

namespace A108044.P12772680217340304554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A120616 n)

end

end A108044.P12772680217340304554

namespace A108044

/-- `lcm(A020985(n), A120616(n))` -/
def P12772680217340304554.Spec : Prop :=
  ∀ n, (P12772680217340304554.a n : ℤ) = A108044 n

end A108044

/-! ## A108044.P8862669361882078575

`A061554(n)*A128174(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A108044

/-- `A061554(n)*A128174(n+1)` -/
def P8862669361882078575.Spec : Prop :=
  ∀ n, P8862669361882078575.a n = A108044 n

theorem P8862669361882078575.correct : P8862669361882078575.Spec := by
  intro n
  simp only [A108044]

end A108044

/-! ## A108044.P1876086428948851699

`A109187(n)/A134505(n+1)`
-/

namespace A108044.P1876086428948851699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109187 n : ℚ) / (A134505 (n + 1) : ℚ)

end

end A108044.P1876086428948851699

namespace A108044

/-- `A109187(n)/A134505(n+1)` -/
def P1876086428948851699.Spec : Prop :=
  ∀ n, P1876086428948851699.a n = (A108044 n : ℚ)

end A108044

/-! ## A108044.P7557399617557585630

`(A117178(n)+A053121(n))/2`
-/

namespace A108044.P7557399617557585630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117178 n + A053121 n : ℚ) / 2

end

end A108044.P7557399617557585630

namespace A108044

/-- `(A117178(n)+A053121(n))/2` -/
def P7557399617557585630.Spec : Prop :=
  ∀ n, P7557399617557585630.a n = (A108044 n : ℚ)

end A108044

/-! ## A108044.P14768397093770672378

`A053121(n)/A039598(n)*A111418(n)`
-/

namespace A108044.P14768397093770672378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053121 n : ℚ) / (A039598 n : ℚ) * (A111418 n : ℚ)

end

end A108044.P14768397093770672378

namespace A108044

/-- `A053121(n)/A039598(n)*A111418(n)` -/
def P14768397093770672378.Spec : Prop :=
  ∀ n, P14768397093770672378.a n = (A108044 n : ℚ)

end A108044

/-! ## A108044.P15932357946789623193

`A061554(n)%(A061554(n)+A053121(n))`
-/

namespace A108044.P15932357946789623193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061554 n) (A061554 n + A053121 n)

end

end A108044.P15932357946789623193

namespace A108044

/-- `A061554(n)%(A061554(n)+A053121(n))` -/
def P15932357946789623193.Spec : Prop :=
  ∀ n, P15932357946789623193.a n = A108044 n

end A108044

/-! ## A108044.P10218687987822002334

`A053121(n)^A053121(n+1)*A061554(n)`
-/

namespace A108044.P10218687987822002334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053121 n : ℚ) ^ (A053121 (n + 1) : ℤ) * (A061554 n : ℚ)

end

end A108044.P10218687987822002334

namespace A108044

/-- `A053121(n)^A053121(n+1)*A061554(n)` -/
def P10218687987822002334.Spec : Prop :=
  ∀ n, P10218687987822002334.a n = (A108044 n : ℚ)

end A108044

/-! ## A108044.P4957081223731230528

`A128174(n+1)*A249095(A063657(n+1)-1)`
-/

namespace A108044.P4957081223731230528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A249095 (A063657 (n + 1) - 1).toNat

end

end A108044.P4957081223731230528

namespace A108044

/-- `A128174(n+1)*A249095(A063657(n+1)-1)` -/
def P4957081223731230528.Spec : Prop :=
  ∀ n, P4957081223731230528.a n = A108044 n

end A108044

/-!
# A108045: Triangle read by rows: lower triangular matrix obtained by inverting the lower triangular matrix in A108044.

The programs for A108045, the canonical program `A108045.P2627185786432173892` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108045 has offset 0).

The definition of A108045 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108045.P2627185786432173892

`T(n-1,k-1)-T(n-2,k)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=-2`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A108045

/-- `T(n-1,k-1)-T(n-2,k)` -/
def P2627185786432173892.Spec : Prop :=
  ∀ n, P2627185786432173892.a n = A108045 n

theorem P2627185786432173892.correct : P2627185786432173892.Spec := by
  intro n
  simp only [A108045]

end A108045

/-! ## A108045.P18206147790763832184

`A117179(n)+T(n-1,k+1)` with `a(0)=1`
-/

namespace A108045.P18206147790763832184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A117179 n + SequenceMachineLib.triUpRight a n

end

end A108045.P18206147790763832184

namespace A108045

/-- `A117179(n)+T(n-1,k+1)` -/
def P18206147790763832184.Spec : Prop :=
  ∀ n, P18206147790763832184.a n = A108045 n

end A108045

/-! ## A108045.P16968537899506256008

`A127672(abs(1-n)+1)`
-/

namespace A108045.P16968537899506256008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127672 (|1 - (n : ℤ)| + 1).toNat

end

end A108045.P16968537899506256008

namespace A108045

/-- `A127672(abs(1-n)+1)` -/
def P16968537899506256008.Spec : Prop :=
  ∀ n, P16968537899506256008.a n = A108045 n

end A108045

/-! ## A108045.P7005181171138599307

`A127672(n)-A000007(n)`
-/

namespace A108045.P7005181171138599307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127672 n - A000007 n

end

end A108045.P7005181171138599307

namespace A108045

/-- `A127672(n)-A000007(n)` -/
def P7005181171138599307.Spec : Prop :=
  ∀ n, P7005181171138599307.a n = A108045 n

end A108045

/-! ## A108045.P13495650889799729810

`A123185(n)*A369736(n)`
-/

namespace A108045.P13495650889799729810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123185 n * A369736 n

end

end A108045.P13495650889799729810

namespace A108045

/-- `A123185(n)*A369736(n)` -/
def P13495650889799729810.Spec : Prop :=
  ∀ n, P13495650889799729810.a n = A108045 n

end A108045

/-! ## A108045.P11653609715060914123

`A127672(n)/A054977(n)`
-/

namespace A108045.P11653609715060914123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127672 n : ℚ) / (A054977 n : ℚ)

end

end A108045.P11653609715060914123

namespace A108045

/-- `A127672(n)/A054977(n)` -/
def P11653609715060914123.Spec : Prop :=
  ∀ n, P11653609715060914123.a n = (A108045 n : ℚ)

end A108045

/-! ## A108045.P8631500066152709156

`A127672(n)/A141044(n)`
-/

namespace A108045.P8631500066152709156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127672 n : ℚ) / (A141044 n : ℚ)

end

end A108045.P8631500066152709156

namespace A108045

/-- `A127672(n)/A141044(n)` -/
def P8631500066152709156.Spec : Prop :=
  ∀ n, P8631500066152709156.a n = (A108045 n : ℚ)

end A108045

/-! ## A108045.P13869872850670776407

`A127672(n)/(A169585(n)+1)`
-/

namespace A108045.P13869872850670776407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127672 n : ℚ) / (A169585 n + 1 : ℚ)

end

end A108045.P13869872850670776407

namespace A108045

/-- `A127672(n)/(A169585(n)+1)` -/
def P13869872850670776407.Spec : Prop :=
  ∀ n, P13869872850670776407.a n = (A108045 n : ℚ)

end A108045

/-! ## A108045.P3740137778970473984

`A127672(n)/A287704(n+1)`
-/

namespace A108045.P3740137778970473984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127672 n : ℚ) / (A287704 (n + 1) : ℚ)

end

end A108045.P3740137778970473984

namespace A108045

/-- `A127672(n)/A287704(n+1)` -/
def P3740137778970473984.Spec : Prop :=
  ∀ n, P3740137778970473984.a n = (A108045 n : ℚ)

end A108045

/-! ## A108045.P17524913442905411320

`A127672(n)-A000038(n)/2`
-/

namespace A108045.P17524913442905411320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127672 n : ℚ) - (A000038 n : ℚ) / 2

end

end A108045.P17524913442905411320

namespace A108045

/-- `A127672(n)-A000038(n)/2` -/
def P17524913442905411320.Spec : Prop :=
  ∀ n, P17524913442905411320.a n = (A108045 n : ℚ)

end A108045

/-! ## A108045.P4698200323120093065

`A127672(n)-A000010(n+2)%2`
-/

namespace A108045.P4698200323120093065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127672 n - Int.tmod (A000010 (n + 2)) 2

end

end A108045.P4698200323120093065

namespace A108045

/-- `A127672(n)-A000010(n+2)%2` -/
def P4698200323120093065.Spec : Prop :=
  ∀ n, P4698200323120093065.a n = A108045 n

end A108045

/-! ## A108045.P10435918705271801791

`A127672(n)/gcd(2, A000040(n+1))`
-/

namespace A108045.P10435918705271801791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127672 n : ℚ) / (Int.gcd 2 (A000040 (n + 1)) : ℚ)

end

end A108045.P10435918705271801791

namespace A108045

/-- `A127672(n)/gcd(2, A000040(n+1))` -/
def P10435918705271801791.Spec : Prop :=
  ∀ n, P10435918705271801791.a n = (A108045 n : ℚ)

end A108045

/-! ## A108045.P6895687171609943709

`A127672(n)-and(1, A006093(n+1))`
-/

namespace A108045.P6895687171609943709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127672 n - Int.land 1 (A006093 (n + 1))

end

end A108045.P6895687171609943709

namespace A108045

/-- `A127672(n)-and(1, A006093(n+1))` -/
def P6895687171609943709.Spec : Prop :=
  ∀ n, P6895687171609943709.a n = A108045 n

end A108045

/-! ## A108045.P6469626021215278000

`A127672(n)-A010054(A010054(n)+n)`
-/

namespace A108045.P6469626021215278000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127672 n - A010054 (A010054 n + (n : ℤ)).toNat

end

end A108045.P6469626021215278000

namespace A108045

/-- `A127672(n)-A010054(A010054(n)+n)` -/
def P6469626021215278000.Spec : Prop :=
  ∀ n, P6469626021215278000.a n = A108045 n

end A108045

/-! ## A108045.P5155865299685568818

`A110162(n)+A127672(n)-A127677(n)`
-/

namespace A108045.P5155865299685568818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110162 n + (A127672 n - A127677 n)

end

end A108045.P5155865299685568818

namespace A108045

/-- `A110162(n)+A127672(n)-A127677(n)` -/
def P5155865299685568818.Spec : Prop :=
  ∀ n, P5155865299685568818.a n = A108045 n

end A108045

/-! ## A108045.P7632095592025291906

`A127672(n)+A132460(n)-A213234(n)`
-/

namespace A108045.P7632095592025291906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127672 n + (A132460 n - A213234 n)

end

end A108045.P7632095592025291906

namespace A108045

/-- `A127672(n)+A132460(n)-A213234(n)` -/
def P7632095592025291906.Spec : Prop :=
  ∀ n, P7632095592025291906.a n = A108045 n

end A108045

/-! ## A108045.P4039098269489655993

`A127672(n)/A060680(A000010(n+1)+2)`
-/

namespace A108045.P4039098269489655993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127672 n : ℚ) / (A060680 (A000010 (n + 1) + 2).toNat : ℚ)

end

end A108045.P4039098269489655993

namespace A108045

/-- `A127672(n)/A060680(A000010(n+1)+2)` -/
def P4039098269489655993.Spec : Prop :=
  ∀ n, P4039098269489655993.a n = (A108045 n : ℚ)

end A108045

/-!
# A108046: Inverse Moebius transform of Fibonacci numbers 0, 1, 1, 2, 3, 5, 8, ...

The programs for A108046, the canonical program `A108046.P11021715180848033602` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108046 has offset 1).

The definition of A108046 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108046.P11021715180848033602

`∑{d}[n+1, A000045(#-1)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A108046

/-- `∑{d}[n+1, A000045(#-1)]` -/
def P11021715180848033602.Spec : Prop :=
  ∀ n, P11021715180848033602.a n = A108046 (n + 1)

theorem P11021715180848033602.correct : P11021715180848033602.Spec := by
  intro n
  simp only [A108046, Nat.add_sub_cancel]

end A108046

/-! ## A108046.P18072612520715236881

`∑{d}[n+1, A212804(#)]`
-/

namespace A108046.P18072612520715236881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A212804 d

end

end A108046.P18072612520715236881

namespace A108046

/-- `∑{d}[n+1, A212804(#)]` -/
def P18072612520715236881.Spec : Prop :=
  ∀ n, P18072612520715236881.a n = A108046 (n + 1)

end A108046

/-! ## A108046.P11230682032218413836

`∑{d}[n+1, A113166(#)*A130054((n+1)/#)]`
-/

namespace A108046.P11230682032218413836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A113166 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A108046.P11230682032218413836

namespace A108046

/-- `∑{d}[n+1, A113166(#)*A130054((n+1)/#)]` -/
def P11230682032218413836.Spec : Prop :=
  ∀ n, P11230682032218413836.a n = A108046 (n + 1)

end A108046

/-! ## A108046.P10910297620473088894

`∑{d}[n+1, A000005(#)*A381936((n+1)/#)]`
-/

namespace A108046.P10910297620473088894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A381936 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A108046.P10910297620473088894

namespace A108046

/-- `∑{d}[n+1, A000005(#)*A381936((n+1)/#)]` -/
def P10910297620473088894.Spec : Prop :=
  ∀ n, P10910297620473088894.a n = A108046 (n + 1)

end A108046

/-! ## A108046.P13158947738065939152

`∑{d}[n+1, A179942(#)*A381936((n+1)/#)]`
-/

namespace A108046.P13158947738065939152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A179942 d * A381936 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A108046.P13158947738065939152

namespace A108046

/-- `∑{d}[n+1, A179942(#)*A381936((n+1)/#)]` -/
def P13158947738065939152.Spec : Prop :=
  ∀ n, P13158947738065939152.a n = A108046 (n + 1)

end A108046

/-! ## A108046.P10166225843984032378

`A245282(n+1)-A007435(n+1)`
-/

namespace A108046.P10166225843984032378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245282 (n + 1) - A007435 (n + 1)

end

end A108046.P10166225843984032378

namespace A108046

/-- `A245282(n+1)-A007435(n+1)` -/
def P10166225843984032378.Spec : Prop :=
  ∀ n, P10166225843984032378.a n = A108046 (n + 1)

theorem P10166225843984032378.correct : P10166225843984032378.Spec := by
  intro n
  simp only [A108046, Nat.add_sub_cancel, A108046.P10166225843984032378.a, A108046.P11021715180848033602.f1, A108046.P11021715180848033602.a, A000045, A000045.P11838749114346432762.a, A007435, A007435.P9180709624338983869.a, A245282, A245282.P6452615831386113322.f1, A245282.P6452615831386113322.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A108046

/-! ## A108046.P8869475462104553061

`A007435(n+1)+A007435(n+1)-A108031(n+1)`
-/

namespace A108046.P8869475462104553061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007435 (n + 1) + (A007435 (n + 1) - A108031 (n + 1))

end

end A108046.P8869475462104553061

namespace A108046

/-- `A007435(n+1)+A007435(n+1)-A108031(n+1)` -/
def P8869475462104553061.Spec : Prop :=
  ∀ n, P8869475462104553061.a n = A108046 (n + 1)

end A108046

/-! ## A108046.P3204648866153548665

`A100107(n+1)-A245282(n+1)`
-/

namespace A108046.P3204648866153548665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100107 (n + 1) - A245282 (n + 1)

end

end A108046.P3204648866153548665

namespace A108046

/-- `A100107(n+1)-A245282(n+1)` -/
def P3204648866153548665.Spec : Prop :=
  ∀ n, P3204648866153548665.a n = A108046 (n + 1)

end A108046

/-! ## A108046.P10369068084486414780

`2*A007435(n+1)-A108031(n+1)`
-/

namespace A108046.P10369068084486414780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007435 (n + 1) - A108031 (n + 1)

end

end A108046.P10369068084486414780

namespace A108046

/-- `2*A007435(n+1)-A108031(n+1)` -/
def P10369068084486414780.Spec : Prop :=
  ∀ n, P10369068084486414780.a n = A108046 (n + 1)

end A108046

/-! ## A108046.P10823464279089080833

`A034729(n+1)-A130711(n+1)`
-/

namespace A108046.P10823464279089080833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034729 (n + 1) - A130711 (n + 1)

end

end A108046.P10823464279089080833

namespace A108046

/-- `A034729(n+1)-A130711(n+1)` -/
def P10823464279089080833.Spec : Prop :=
  ∀ n, P10823464279089080833.a n = A108046 (n + 1)

end A108046

/-!
# A108047: Concatenation of the previous pair of numbers, with the first two terms both 1.

The programs for A108047, the canonical program `A108047.P16253337058790100000` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108047 has offset 1).

The definition of A108047 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108047.P1188458641701392153

`(10^A000045(n+1)-1)/9`
-/

namespace A108047.P1188458641701392153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 : ℚ) ^ (A000045 (n + 1) : ℤ) - 1) / 9

end

end A108047.P1188458641701392153

namespace A108047

/-- `(10^A000045(n+1)-1)/9` -/
def P1188458641701392153.Spec : Prop :=
  ∀ n, P1188458641701392153.a n = (A108047 (n + 1) : ℚ)

end A108047

/-! ## A108047.P16253337058790100000

`A000042(A000045(n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A108047

/-- `A000042(A000045(n+1))` -/
def P16253337058790100000.Spec : Prop :=
  ∀ n, P16253337058790100000.a n = A108047 (n + 1)

theorem P16253337058790100000.correct : P16253337058790100000.Spec := by
  intro n
  simp only [A108047, Nat.add_sub_cancel]

end A108047

/-! ## A108047.P13459560036357755199

`A131293(n+1)`
-/

namespace A108047.P13459560036357755199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131293 (n + 1)

end

end A108047.P13459560036357755199

namespace A108047

/-- `A131293(n+1)` -/
def P13459560036357755199.Spec : Prop :=
  ∀ n, P13459560036357755199.a n = A108047 (n + 1)

end A108047

/-!
# A108049: Integers k such that 10^k + 43 is a prime number.

The programs for A108049, there is no canonical definition to state claims against.
-/

/-! ## A108049.P11488784157923817317

`A028234(∑[∑[A154245(n+1)]])`
-/

namespace A108049.P11488784157923817317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154245 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A108049.P11488784157923817317

/-!
# A108050: Integers k such that 10^k+21 is prime.

The programs for A108050, there is no canonical definition to state claims against.
-/

/-! ## A108050.P3718931172789134983

`A008837(n+1)-A108730(A094373(2*n))`
-/

namespace A108050.P3718931172789134983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 1) - A108730 (A094373 (2 * n)).toNat

end

end A108050.P3718931172789134983

/-!
# A108051: a(n+1) = 4*(a(n)+a(n-1)) for n>1, a(1)=1, a(2)=6.

The programs for A108051, the canonical program `A108051.P6197140555649183950` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108051 has offset 0).

The definition of A108051 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108051.P6197140555649183950

`ogf((x+2x^2)/(1-4x-4x^2))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A108051

/-- `ogf((x+2x^2)/(1-4x-4x^2))` -/
def P6197140555649183950.Spec : Prop :=
  ∀ n, P6197140555649183950.a n = A108051 n

theorem P6197140555649183950.correct : P6197140555649183950.Spec := by
  intro n
  simp only [A108051]

end A108051

/-! ## A108051.P14203656388108453725

`4*(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1, a(2)=6`
-/

namespace A108051.P14203656388108453725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 6] fun n a =>
  4 * (a (n - 1) + a (n - 2))

end

end A108051.P14203656388108453725

namespace A108051

/-- `4*(a(n-1)+a(n-2))` -/
def P14203656388108453725.Spec : Prop :=
  ∀ n, (P14203656388108453725.a n : ℤ) = A108051 n

end A108051

/-! ## A108051.P15143036278779920649

`floor(2^(n-1))*A001333(n)`
-/

namespace A108051.P15143036278779920649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ * A001333 n

end

end A108051.P15143036278779920649

namespace A108051

/-- `floor(2^(n-1))*A001333(n)` -/
def P15143036278779920649.Spec : Prop :=
  ∀ n, P15143036278779920649.a n = A108051 n

end A108051

/-! ## A108051.P11601256759139873218

`abs(floor(2^(n-1))*A123335(n))`
-/

namespace A108051.P11601256759139873218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ * A123335 n|

end

end A108051.P11601256759139873218

namespace A108051

/-- `abs(floor(2^(n-1))*A123335(n))` -/
def P11601256759139873218.Spec : Prop :=
  ∀ n, P11601256759139873218.a n = A108051 n

end A108051

/-! ## A108051.P1878750607879181408

`floor(2^(n-1))*Δ[A000129(n)]`
-/

namespace A108051.P1878750607879181408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ * (f1 (n + 1) - f1 n)

end

end A108051.P1878750607879181408

namespace A108051

/-- `floor(2^(n-1))*Δ[A000129(n)]` -/
def P1878750607879181408.Spec : Prop :=
  ∀ n, P1878750607879181408.a n = A108051 n

end A108051

/-! ## A108051.P13747098406484489297

`floor(2^(n-1))*A249576(3*n+1)`
-/

namespace A108051.P13747098406484489297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ * A249576 (3 * n + 1)

end

end A108051.P13747098406484489297

namespace A108051

/-- `floor(2^(n-1))*A249576(3*n+1)` -/
def P13747098406484489297.Spec : Prop :=
  ∀ n, P13747098406484489297.a n = A108051 n

end A108051

/-! ## A108051.P3900393005679494332

`Δ[ceil(2^(n-1))]*A078057((n-1)%(n+1))`
-/

namespace A108051.P3900393005679494332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A078057 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A108051.P3900393005679494332

namespace A108051

/-- `Δ[ceil(2^(n-1))]*A078057((n-1)%(n+1))` -/
def P3900393005679494332.Spec : Prop :=
  ∀ n, P3900393005679494332.a n = A108051 n

end A108051

/-! ## A108051.P7720089942508580207

`A084137(n)-A011782(n)`
-/

namespace A108051.P7720089942508580207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084137 n - A011782 n

end

end A108051.P7720089942508580207

namespace A108051

/-- `A084137(n)-A011782(n)` -/
def P7720089942508580207.Spec : Prop :=
  ∀ n, P7720089942508580207.a n = A108051 n

end A108051

/-! ## A108051.P17549381479661390074

`A001333(n)*A131577(n)`
-/

namespace A108051.P17549381479661390074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n * A131577 n

end

end A108051.P17549381479661390074

namespace A108051

/-- `A001333(n)*A131577(n)` -/
def P17549381479661390074.Spec : Prop :=
  ∀ n, P17549381479661390074.a n = A108051 n

end A108051

/-! ## A108051.P15896499692979075744

`lcm(A123335(n), A131577(n))`
-/

namespace A108051.P15896499692979075744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A123335 n) (A131577 n)

end

end A108051.P15896499692979075744

namespace A108051

/-- `lcm(A123335(n), A131577(n))` -/
def P15896499692979075744.Spec : Prop :=
  ∀ n, (P15896499692979075744.a n : ℤ) = A108051 n

end A108051

/-! ## A108051.P11764285182270719112

`Δ[A000129(n)]*A131577(n)`
-/

namespace A108051.P11764285182270719112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A131577 n

end

end A108051.P11764285182270719112

namespace A108051

/-- `Δ[A000129(n)]*A131577(n)` -/
def P11764285182270719112.Spec : Prop :=
  ∀ n, P11764285182270719112.a n = A108051 n

end A108051

/-! ## A108051.P12521880236502074740

`A001333(n)*A158780(2*n)`
-/

namespace A108051.P12521880236502074740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n * A158780 (2 * n)

end

end A108051.P12521880236502074740

namespace A108051

/-- `A001333(n)*A158780(2*n)` -/
def P12521880236502074740.Spec : Prop :=
  ∀ n, P12521880236502074740.a n = A108051 n

end A108051

/-! ## A108051.P16280629028453287072

`A002203(n)/2*A131577(n)`
-/

namespace A108051.P16280629028453287072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002203 n : ℚ) / 2 * (A131577 n : ℚ)

end

end A108051.P16280629028453287072

namespace A108051

/-- `A002203(n)/2*A131577(n)` -/
def P16280629028453287072.Spec : Prop :=
  ∀ n, P16280629028453287072.a n = (A108051 n : ℚ)

end A108051

/-! ## A108051.P5077551213080393924

`floor(A000079(n)/2*A001333(n))`
-/

namespace A108051.P5077551213080393924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000079 n : ℚ) / 2 * (A001333 n : ℚ)⌋

end

end A108051.P5077551213080393924

namespace A108051

/-- `floor(A000079(n)/2*A001333(n))` -/
def P5077551213080393924.Spec : Prop :=
  ∀ n, P5077551213080393924.a n = A108051 n

end A108051

/-! ## A108051.P1170367643392941744

`(A001333(n)-A000007(n))*A011782(n)`
-/

namespace A108051.P1170367643392941744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001333 n - A000007 n) * A011782 n

end

end A108051.P1170367643392941744

namespace A108051

/-- `(A001333(n)-A000007(n))*A011782(n)` -/
def P1170367643392941744.Spec : Prop :=
  ∀ n, P1170367643392941744.a n = A108051 n

end A108051

/-! ## A108051.P13842299163275793248

`∑[A011782(n)]*A171842(n)-A011782(n)`
-/

namespace A108051.P13842299163275793248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A171842 n - A011782 n

end

end A108051.P13842299163275793248

namespace A108051

/-- `∑[A011782(n)]*A171842(n)-A011782(n)` -/
def P13842299163275793248.Spec : Prop :=
  ∀ n, P13842299163275793248.a n = A108051 n

end A108051

/-! ## A108051.P18287199467761092856

`(A000129(n+1)-A000129(n))*A131577(n)`
-/

namespace A108051.P18287199467761092856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000129 (n + 1) - A000129 n) * A131577 n

end

end A108051.P18287199467761092856

namespace A108051

/-- `(A000129(n+1)-A000129(n))*A131577(n)` -/
def P18287199467761092856.Spec : Prop :=
  ∀ n, P18287199467761092856.a n = A108051 n

end A108051

/-! ## A108051.P17578381832037806898

`∑{#}[n, (-1)^(n-#)*C(n, #)*A001108(#)]`
-/

namespace A108051.P17578381832037806898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A001108 k : ℚ)

end

end A108051.P17578381832037806898

namespace A108051

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A001108(#)]` -/
def P17578381832037806898.Spec : Prop :=
  ∀ n, P17578381832037806898.a n = (A108051 n : ℚ)

end A108051

/-!
# A108054: Integers k such that 10^k+49 is prime.

The programs for A108054, there is no canonical definition to state claims against.
-/

/-! ## A108054.P14580792664544347377

`record[and(A097434(n+1), A303719(n+1))]`
-/

namespace A108054.P14580792664544347377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097434 (n + 1)) (A303719 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108054.P14580792664544347377

/-!
# A108056: Numbers of the form (7^i)*(13^j).

The programs for A108056, there is no canonical definition to state claims against.
-/

/-! ## A108056.P594902617041529157

`∩[A074402(n+1), A339112(n+1)]`
-/

namespace A108056.P594902617041529157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108056.P594902617041529157

/-! ## A108056.P5188661586311033898

`∩[A080197(n+1), A339112(n+1)]`
-/

namespace A108056.P5188661586311033898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080197 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108056.P5188661586311033898

/-! ## A108056.P15885992697802666618

`∩[A080681(n+1), A339112(n+1)]`
-/

namespace A108056.P15885992697802666618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108056.P15885992697802666618

/-! ## A108056.P2854600465683647709

`∩[A080682(n+1), A339112(n+1)]`
-/

namespace A108056.P2854600465683647709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108056.P2854600465683647709

/-! ## A108056.P17022426165318046164

`∩[A004611(n+1), A080197(n+1)]`
-/

namespace A108056.P17022426165318046164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108056.P17022426165318046164

/-!
# A108058: Numbers k such that 179*k + 181 is prime.

The programs for A108058, there is no canonical definition to state claims against.
-/

/-! ## A108058.P3462474347921428436

`eq[1, A323014(A066164(n+3)-n+1)]`
-/

namespace A108058.P3462474347921428436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (A066164 (n + 3) - (n : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108058.P3462474347921428436

/-!
# A108060: Numbers k such that 191*k + 193 is prime.

The programs for A108060, there is no canonical definition to state claims against.
-/

/-! ## A108060.P9218787254134146940

`eq[2, A000005(A157956(n+1)+n-A017365(n))]`
-/

namespace A108060.P9218787254134146940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A157956 (n + 1) + (n : ℤ) - A017365 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108060.P9218787254134146940

/-!
# A108062: Numbers k such that 2^(2k-1) + 2^k + 1 is prime.

The programs for A108062, there is no canonical definition to state claims against.
-/

/-! ## A108062.P3651042267399440990

`A006599(n+1)+1`
-/

namespace A108062.P3651042267399440990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006599 (n + 1) + 1

end

end A108062.P3651042267399440990

/-! ## A108062.P4597049583290491147

`ceil(A007671(n+1)/2)`
-/

namespace A108062.P4597049583290491147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007671 (n + 1) : ℚ) / 2⌉

end

end A108062.P4597049583290491147

/-! ## A108062.P14369814490593527497

`-xor(A006599(-xor(n, -1)), -1)`
-/

namespace A108062.P14369814490593527497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (A006599 (-Int.xor (n : ℤ) (-1)).toNat) (-1)

end

end A108062.P14369814490593527497

/-! ## A108062.P7550736437354587427

`floor((A348940(n+1)+A007671(n+1))/2)`
-/

namespace A108062.P7550736437354587427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A348940 (n + 1) + A007671 (n + 1) : ℚ) / 2⌋

end

end A108062.P7550736437354587427

/-! ## A108062.P16232348256849676164

`A000034(2*n)+floor(A007671(n+1)/2)`
-/

namespace A108062.P16232348256849676164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) + ⌊(A007671 (n + 1) : ℚ) / 2⌋

end

end A108062.P16232348256849676164

/-!
# A108063: Triangle, read by rows, where T(n,k) = A006498(n+1) - A106408(n,k). A006498 are the central numbers of A106408.

The programs for A108063, the canonical program `A108063.P12610813069636294894` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108063 has offset 1).

The definition of A108063 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108063.P16588098129950752510

`A006498(row(n)+2)-A106408(C(row(n)+1, 2)+col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A108063.P16588098129950752510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (SequenceMachineLib.triRow n + 2) - A106408 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n + 1)

end

end A108063.P16588098129950752510

namespace A108063

/-- `A006498(row(n)+2)-A106408(C(row(n)+1, 2)+col(n)+1)` -/
def P16588098129950752510.Spec : Prop :=
  ∀ n, P16588098129950752510.a n = A108063 (n + 1)

end A108063

/-! ## A108063.P12610813069636294894

`A058071(n)-A006498(A003056(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A108063

/-- `A058071(n)-A006498(A003056(n))` -/
def P12610813069636294894.Spec : Prop :=
  ∀ n, P12610813069636294894.a n = A108063 (n + 1)

theorem P12610813069636294894.correct : P12610813069636294894.Spec := by
  intro n
  simp only [A108063, Nat.add_sub_cancel]

end A108063

/-! ## A108063.P1685068719678805510

`A058071(n)-A006498(∑[A073424(n)])`
-/

namespace A108063.P1685068719678805510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 n - A006498 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A108063.P1685068719678805510

namespace A108063

/-- `A058071(n)-A006498(∑[A073424(n)])` -/
def P1685068719678805510.Spec : Prop :=
  ∀ n, P1685068719678805510.a n = A108063 (n + 1)

end A108063

/-! ## A108063.P2809141286655410367

`A058071(n)-A074677(A002024(n+1))`
-/

namespace A108063.P2809141286655410367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 n - A074677 (A002024 (n + 1)).toNat

end

end A108063.P2809141286655410367

namespace A108063

/-- `A058071(n)-A074677(A002024(n+1))` -/
def P2809141286655410367.Spec : Prop :=
  ∀ n, P2809141286655410367.a n = A108063 (n + 1)

end A108063

/-! ## A108063.P14730834238853668824

`A058071(n)-A074677(A000194(2*(n+1)))`
-/

namespace A108063.P14730834238853668824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 n - A074677 (A000194 (2 * (n + 1))).toNat

end

end A108063.P14730834238853668824

namespace A108063

/-- `A058071(n)-A074677(A000194(2*(n+1)))` -/
def P14730834238853668824.Spec : Prop :=
  ∀ n, P14730834238853668824.a n = A108063 (n + 1)

end A108063

/-! ## A108063.P8871102562426101350

`A006498(comp[∑[n]]-n)-A106408(n+1)`
-/

namespace A108063.P8871102562426101350
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n) - A106408 (n + 1)

end

end A108063.P8871102562426101350

namespace A108063

/-- `A006498(comp[∑[n]]-n)-A106408(n+1)` -/
def P8871102562426101350.Spec : Prop :=
  ∀ n, P8871102562426101350.a n = A108063 (n + 1)

end A108063

/-!
# A108066: Number of distinct ways to dissect a square into n rectangles of equal area.

The programs for A108066, there is no canonical definition to state claims against.
-/

/-! ## A108066.P8244398493156622695

`A065033(A219861(n+1))`
-/

namespace A108066.P8244398493156622695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A219861 (n + 1)).toNat

end

end A108066.P8244398493156622695

/-! ## A108066.P16242385623687893445

`A004526(A219861(n+1)+1)`
-/

namespace A108066.P16242385623687893445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A219861 (n + 1) + 1).toNat

end

end A108066.P16242385623687893445

/-! ## A108066.P642366640108116336

`A123108(A219861(n+1)+1)`
-/

namespace A108066.P642366640108116336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A219861 (n + 1) + 1).toNat

end

end A108066.P642366640108116336

/-! ## A108066.P7624496109368914246

`A008619(A219861(n+1)-1)`
-/

namespace A108066.P7624496109368914246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A219861 (n + 1) - 1).toNat

end

end A108066.P7624496109368914246

/-!
# A108069: Number of ordered pairs (i,j) with i>=1, j>=1 and i!*j! = n.

The programs for A108069, there is no canonical definition to state claims against.
-/

/-! ## A108069.P17153728622673584186

`A276949(∑[n]*A108068(n))`
-/

namespace A108069.P17153728622673584186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276949 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A108068 n).toNat

end

end A108069.P17153728622673584186

/-! ## A108069.P197404722664397435

`A268238(lcm(A108068(n), A232487(n+1)))`
-/

namespace A108069.P197404722664397435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268238 (Int.lcm (A108068 n) (A232487 (n + 1)))

end

end A108069.P197404722664397435

/-! ## A108069.P16113453946424539849

`∑{p}[(∑[n+2]+3)²*A108068(n), A001222(#)]`
-/

namespace A108069.P16113453946424539849
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j + 3) ^ 2 : ℕ) : ℤ) * A108068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A108069.P16113453946424539849

/-! ## A108069.P6213126624743763238

`A035168(A345912(2*(n+2))+A009000(n+5))`
-/

namespace A108069.P6213126624743763238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035168 (A345912 (2 * (n + 2)) + A009000 (n + 5)).toNat

end

end A108069.P6213126624743763238

/-! ## A108069.P13709501413484363321

`A255647(A345912(2*(n+2))+A009000(n+5))`
-/

namespace A108069.P13709501413484363321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255647 (A345912 (2 * (n + 2)) + A009000 (n + 5)).toNat

end

end A108069.P13709501413484363321

/-!
# A108070: Number of fusenes with n hexagons.

The programs for A108070, there is no canonical definition to state claims against.
-/

/-! ## A108070.P16422558110876221501

`A247983(A038147(n+1)+n)`
-/

namespace A108070.P16422558110876221501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247983 (A038147 (n + 1) + (n : ℤ)).toNat

end

end A108070.P16422558110876221501

/-! ## A108070.P12303205121625636720

`A110656(A006139(n)+∑[4*n])`
-/

namespace A108070.P12303205121625636720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A006139 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A108070.P12303205121625636720

/-! ## A108070.P15371141382789788945

`A038145(n+1)+A323930(n+1)%p?[2^n-1]`
-/

namespace A108070.P15371141382789788945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038145 (n + 1) + Int.tmod (A323930 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A108070.P15371141382789788945

/-!
# A108071: Number of inner dual graphs of planar polyhexes with n hexagons.

The programs for A108071, there is no canonical definition to state claims against.
-/

/-! ## A108071.P2853956206435230628

`A164836(ceil(2^(n-1)))+1`
-/

namespace A108071.P2853956206435230628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164836 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + 1

end

end A108071.P2853956206435230628

/-! ## A108071.P11093551006284072831

`A356955(A331934(n+2))`
-/

namespace A108071.P11093551006284072831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356955 (A331934 (n + 2)).toNat

end

end A108071.P11093551006284072831

/-! ## A108071.P9160157340585030704

`A172471(∏[∑[A058394(n)]])`
-/

namespace A108071.P9160157340585030704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058394 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A108071.P9160157340585030704

/-! ## A108071.P17842315890007178056

`A067086(A347741(n)+A022493(n))`
-/

namespace A108071.P17842315890007178056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067086 (A347741 n + A022493 n).toNat

end

end A108071.P17842315890007178056

/-!
# A108073: Triangle in A071943 with rows reversed.

The programs for A108073, the canonical program `A108073.P2787569573135128725` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108073 has offset 0).

The definition of A108073 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108073.P2682468307067198374

`A071943(∑[2*n]%comp[∑[n]])`
-/

namespace A108073.P2682468307067198374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071943 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A108073.P2682468307067198374

namespace A108073

/-- `A071943(∑[2*n]%comp[∑[n]])` -/
def P2682468307067198374.Spec : Prop :=
  ∀ n, P2682468307067198374.a n = A108073 n

end A108073

/-! ## A108073.P15616263641032174672

`A071943(∑[char[∑[n]]]²-(n+1))`
-/

namespace A108073.P15616263641032174672
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071943 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A108073.P15616263641032174672

namespace A108073

/-- `A071943(∑[char[∑[n]]]²-(n+1))` -/
def P15616263641032174672.Spec : Prop :=
  ∀ n, P15616263641032174672.a n = A108073 n

end A108073

/-! ## A108073.P2787569573135128725

`xor(1, xor(1, A071943(A061579(n))))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A108073

/-- `xor(1, xor(1, A071943(A061579(n))))` -/
def P2787569573135128725.Spec : Prop :=
  ∀ n, P2787569573135128725.a n = A108073 n

theorem P2787569573135128725.correct : P2787569573135128725.Spec := by
  intro n
  simp only [A108073]

end A108073

/-! ## A108073.P12852450871599804078

`gcd(A000038(n), A071943(A061579(n)))`
-/

namespace A108073.P12852450871599804078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A071943 (A061579 n).toNat)

end

end A108073.P12852450871599804078

namespace A108073

/-- `gcd(A000038(n), A071943(A061579(n)))` -/
def P12852450871599804078.Spec : Prop :=
  ∀ n, (P12852450871599804078.a n : ℤ) = A108073 n

end A108073

/-! ## A108073.P14374846521543400790

`A007318(C(2, n))*A071943(A061579(n))`
-/

namespace A108073.P14374846521543400790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A071943 (A061579 n).toNat

end

end A108073.P14374846521543400790

namespace A108073

/-- `A007318(C(2, n))*A071943(A061579(n))` -/
def P14374846521543400790.Spec : Prop :=
  ∀ n, P14374846521543400790.a n = A108073 n

end A108073

/-! ## A108073.P3084289424066156722

`A071943(A061579(n))+A008683(4*(n+1))`
-/

namespace A108073.P3084289424066156722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071943 (A061579 n).toNat + A008683 (4 * (n + 1))

end

end A108073.P3084289424066156722

namespace A108073

/-- `A071943(A061579(n))+A008683(4*(n+1))` -/
def P3084289424066156722.Spec : Prop :=
  ∀ n, P3084289424066156722.a n = A108073 n

end A108073

/-! ## A108073.P6575296899765553879

`C(A071943(A061579(n)), A000203(((-1)^n)²))`
-/

namespace A108073.P6575296899765553879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A071943 (A061579 n).toNat).toNat (A000203 (((-1) ^ n) ^ 2).toNat).toNat

end

end A108073.P6575296899765553879

namespace A108073

/-- `C(A071943(A061579(n)), A000203(((-1)^n)²))` -/
def P6575296899765553879.Spec : Prop :=
  ∀ n, (P6575296899765553879.a n : ℤ) = A108073 n

end A108073

/-! ## A108073.P4104088684583048973

`A000040(n+2)%2*A071943(A061579(n))`
-/

namespace A108073.P4104088684583048973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * A071943 (A061579 n).toNat

end

end A108073.P4104088684583048973

namespace A108073

/-- `A000040(n+2)%2*A071943(A061579(n))` -/
def P4104088684583048973.Spec : Prop :=
  ∀ n, P4104088684583048973.a n = A108073 n

end A108073

/-! ## A108073.P8547659754422116270

`lcm(A007318(C(n, 2)), A071943(A061579(n)))`
-/

namespace A108073.P8547659754422116270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 (Nat.choose n 2)) (A071943 (A061579 n).toNat)

end

end A108073.P8547659754422116270

namespace A108073

/-- `lcm(A007318(C(n, 2)), A071943(A061579(n)))` -/
def P8547659754422116270.Spec : Prop :=
  ∀ n, (P8547659754422116270.a n : ℤ) = A108073 n

end A108073

/-!
# A108074: Triangle in A071944 with rows reversed.

The programs for A108074, the canonical program `A108074.P540550161222459640` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108074 has offset 0).

The definition of A108074 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108074.P774827910872453160

`A071944(∑[2*n]%comp[∑[n]])`
-/

namespace A108074.P774827910872453160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071944 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A108074.P774827910872453160

namespace A108074

/-- `A071944(∑[2*n]%comp[∑[n]])` -/
def P774827910872453160.Spec : Prop :=
  ∀ n, P774827910872453160.a n = A108074 n

end A108074

/-! ## A108074.P7125032370282649165

`A071944(∑[char[∑[n]]]²-(n+1))`
-/

namespace A108074.P7125032370282649165
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071944 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A108074.P7125032370282649165

namespace A108074

/-- `A071944(∑[char[∑[n]]]²-(n+1))` -/
def P7125032370282649165.Spec : Prop :=
  ∀ n, P7125032370282649165.a n = A108074 n

end A108074

/-! ## A108074.P540550161222459640

`gcd(A000038(n), A071944(A061579(n)))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A108074

/-- `gcd(A000038(n), A071944(A061579(n)))` -/
def P540550161222459640.Spec : Prop :=
  ∀ n, (P540550161222459640.a n : ℤ) = A108074 n

theorem P540550161222459640.correct : P540550161222459640.Spec := by
  intro n
  simp only [A108074]

end A108074

/-! ## A108074.P17710870075523507379

`lcm(A033999(n), A071944(A061579(n)))`
-/

namespace A108074.P17710870075523507379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A071944 (A061579 n).toNat)

end

end A108074.P17710870075523507379

namespace A108074

/-- `lcm(A033999(n), A071944(A061579(n)))` -/
def P17710870075523507379.Spec : Prop :=
  ∀ n, (P17710870075523507379.a n : ℤ) = A108074 n

end A108074

/-! ## A108074.P11910882332220903325

`A007318(C(2, n)+1)*A071944(A061579(n))`
-/

namespace A108074.P11910882332220903325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n + 1) * A071944 (A061579 n).toNat

end

end A108074.P11910882332220903325

namespace A108074

/-- `A007318(C(2, n)+1)*A071944(A061579(n))` -/
def P11910882332220903325.Spec : Prop :=
  ∀ n, P11910882332220903325.a n = A108074 n

end A108074

/-! ## A108074.P12724833337671461977

`A071944(A061579(n))%A000045(n+3)`
-/

namespace A108074.P12724833337671461977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071944 (A061579 n).toNat) (A000045 (n + 3))

end

end A108074.P12724833337671461977

namespace A108074

/-- `A071944(A061579(n))%A000045(n+3)` -/
def P12724833337671461977.Spec : Prop :=
  ∀ n, P12724833337671461977.a n = A108074 n

end A108074

/-!
# A108075: Triangle in A071945 with rows reversed.

The programs for A108075, there is no canonical definition to state claims against.
-/

/-! ## A108075.P16948117973241000347

`A071945(∑[2*n]%comp[∑[n]])`
-/

namespace A108075.P16948117973241000347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071945 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A108075.P16948117973241000347

/-! ## A108075.P2402011161647716015

`A071945(∑[char[∑[n]]]²-(n+1))`
-/

namespace A108075.P2402011161647716015
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071945 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A108075.P2402011161647716015

/-! ## A108075.P16581112065564095872

`or(1, A071945(A061579(n)))`
-/

namespace A108075.P16581112065564095872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A071945 (A061579 n).toNat)

end

end A108075.P16581112065564095872

/-! ## A108075.P3518871983324985937

`A071945(A061579(n))%A017116(n)`
-/

namespace A108075.P3518871983324985937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071945 (A061579 n).toNat) (A017116 n)

end

end A108075.P3518871983324985937

/-! ## A108075.P15306243462525170223

`gcd(A000038(n), A071945(A061579(n)))`
-/

namespace A108075.P15306243462525170223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A071945 (A061579 n).toNat)

end

end A108075.P15306243462525170223

/-! ## A108075.P15607129559240349434

`lcm(A033999(n), A071945(A061579(n)))`
-/

namespace A108075.P15607129559240349434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A071945 (A061579 n).toNat)

end

end A108075.P15607129559240349434

/-! ## A108075.P10999671427485484296

`A071945(A061579(n))+A008683(64*(n+1))`
-/

namespace A108075.P10999671427485484296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071945 (A061579 n).toNat + A008683 (64 * (n + 1))

end

end A108075.P10999671427485484296

/-! ## A108075.P14126159975074118898

`(A000040(n+1)%2)!*A071945(A061579(n))`
-/

namespace A108075.P14126159975074118898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000040 (n + 1)) 2).toNat : ℤ) * A071945 (A061579 n).toNat

end

end A108075.P14126159975074118898

/-! ## A108075.P4287448387553774736

`A071945(A061579(n))^(A000040(n²+1)%2)!`
-/

namespace A108075.P4287448387553774736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071945 (A061579 n).toNat ^ Nat.factorial (Int.tmod (A000040 (n ^ 2 + 1)) 2).toNat

end

end A108075.P4287448387553774736

/-!
# A108076: Triangle in A071946 with rows reversed.

The programs for A108076, the canonical program `A108076.P16302876531450126638` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108076 has offset 0).

The definition of A108076 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108076.P16302876531450126638

`A071946(C(row(n)+1, 2)+row(n)-col(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A108076

/-- `A071946(C(row(n)+1, 2)+row(n)-col(n))` -/
def P16302876531450126638.Spec : Prop :=
  ∀ n, P16302876531450126638.a n = A108076 n

theorem P16302876531450126638.correct : P16302876531450126638.Spec := by
  intro n
  simp only [A108076]

end A108076

/-! ## A108076.P10671714267483842046

`A071946(∑[2*n]%comp[∑[n]])`
-/

namespace A108076.P10671714267483842046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071946 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A108076.P10671714267483842046

namespace A108076

/-- `A071946(∑[2*n]%comp[∑[n]])` -/
def P10671714267483842046.Spec : Prop :=
  ∀ n, P10671714267483842046.a n = A108076 n

end A108076

/-! ## A108076.P9349639288812846911

`A071946(∑[char[∑[n]]]²-(n+1))`
-/

namespace A108076.P9349639288812846911
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071946 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A108076.P9349639288812846911

namespace A108076

/-- `A071946(∑[char[∑[n]]]²-(n+1))` -/
def P9349639288812846911.Spec : Prop :=
  ∀ n, P9349639288812846911.a n = A108076 n

end A108076

/-! ## A108076.P13955037280056738961

`xor(1, xor(1, A071946(A061579(n))))`
-/

namespace A108076.P13955037280056738961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A071946 (A061579 n).toNat))

end

end A108076.P13955037280056738961

namespace A108076

/-- `xor(1, xor(1, A071946(A061579(n))))` -/
def P13955037280056738961.Spec : Prop :=
  ∀ n, P13955037280056738961.a n = A108076 n

end A108076

/-! ## A108076.P16488489767699293996

`gcd(A000038(n), A071946(A061579(n)))`
-/

namespace A108076.P16488489767699293996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A071946 (A061579 n).toNat)

end

end A108076.P16488489767699293996

namespace A108076

/-- `gcd(A000038(n), A071946(A061579(n)))` -/
def P16488489767699293996.Spec : Prop :=
  ∀ n, (P16488489767699293996.a n : ℤ) = A108076 n

end A108076

/-! ## A108076.P6994038754510596889

`lcm(A033999(n), A071946(A061579(n)))`
-/

namespace A108076.P6994038754510596889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A071946 (A061579 n).toNat)

end

end A108076.P6994038754510596889

namespace A108076

/-- `lcm(A033999(n), A071946(A061579(n)))` -/
def P6994038754510596889.Spec : Prop :=
  ∀ n, (P6994038754510596889.a n : ℤ) = A108076 n

end A108076

/-! ## A108076.P7515806007561007139

`or(A000007(n), A071946(A061579(n)))`
-/

namespace A108076.P7515806007561007139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A071946 (A061579 n).toNat)

end

end A108076.P7515806007561007139

namespace A108076

/-- `or(A000007(n), A071946(A061579(n)))` -/
def P7515806007561007139.Spec : Prop :=
  ∀ n, P7515806007561007139.a n = A108076 n

end A108076

/-! ## A108076.P12456716318609702451

`A071946(A061579(n))-A000005(a((3%n)%2))+1` with `a(0)=1, a(1)=1`
-/

namespace A108076.P12456716318609702451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A071946 (A061579 n).toNat - A000005 (a (3 % n % 2)).toNat + 1

end

end A108076.P12456716318609702451

namespace A108076

/-- `A071946(A061579(n))-A000005(a((3%n)%2))+1` -/
def P12456716318609702451.Spec : Prop :=
  ∀ n, P12456716318609702451.a n = A108076 n

end A108076

/-!
# A108077: Largest prime p such that p-1 divides n.

The programs for A108077, the canonical program `A108077.P8095265619995363254` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108077 has offset 1).

The definition of A108077 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A027760, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A108077.P8095265619995363254

`A006530(A027760(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A108077

/-- `A006530(A027760(n+1))` -/
def P8095265619995363254.Spec : Prop :=
  ∀ n, P8095265619995363254.a n = A108077 (n + 1)

theorem P8095265619995363254.correct : P8095265619995363254.Spec := by
  intro n
  simp only [A108077, Nat.add_sub_cancel]

end A108077

/-! ## A108077.P9708111249472974916

`A166333((n+1)^(n%2))`
-/

namespace A108077.P9708111249472974916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 ((n + 1) ^ (n % 2))

end

end A108077.P9708111249472974916

namespace A108077

/-- `A166333((n+1)^(n%2))` -/
def P9708111249472974916.Spec : Prop :=
  ∀ n, P9708111249472974916.a n = A108077 (n + 1)

end A108077

/-! ## A108077.P3510462386503850390

`A166333(C(n+1, or(1, n)))`
-/

namespace A108077.P3510462386503850390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (Nat.choose (n + 1) (Nat.lor 1 n))

end

end A108077.P3510462386503850390

namespace A108077

/-- `A166333(C(n+1, or(1, n)))` -/
def P3510462386503850390.Spec : Prop :=
  ∀ n, P3510462386503850390.a n = A108077 (n + 1)

end A108077

/-! ## A108077.P8551034375577582231

`A007918(A166333(n+1))`
-/

namespace A108077.P8551034375577582231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A166333 (n + 1)).toNat

end

end A108077.P8551034375577582231

namespace A108077

/-- `A007918(A166333(n+1))` -/
def P8551034375577582231.Spec : Prop :=
  ∀ n, P8551034375577582231.a n = A108077 (n + 1)

end A108077

/-! ## A108077.P3431926198879225046

`A151800(A166333(n+1)-1)`
-/

namespace A108077.P3431926198879225046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A166333 (n + 1) - 1).toNat

end

end A108077.P3431926198879225046

namespace A108077

/-- `A151800(A166333(n+1)-1)` -/
def P3431926198879225046.Spec : Prop :=
  ∀ n, P3431926198879225046.a n = A108077 (n + 1)

end A108077

/-! ## A108077.P16122429960160968609

`A006530(2*A166333(n+1))`
-/

namespace A108077.P16122429960160968609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A166333 (n + 1)).toNat

end

end A108077.P16122429960160968609

namespace A108077

/-- `A006530(2*A166333(n+1))` -/
def P16122429960160968609.Spec : Prop :=
  ∀ n, P16122429960160968609.a n = A108077 (n + 1)

end A108077

/-! ## A108077.P5627635886388682758

`A006530(lcm(2, A166333(n+1)))`
-/

namespace A108077.P5627635886388682758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 2 (A166333 (n + 1)))

end

end A108077.P5627635886388682758

namespace A108077

/-- `A006530(lcm(2, A166333(n+1)))` -/
def P5627635886388682758.Spec : Prop :=
  ∀ n, P5627635886388682758.a n = A108077 (n + 1)

end A108077

/-! ## A108077.P7181439542821792328

`A166333(n*A000035(n)+1)`
-/

namespace A108077.P7181439542821792328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 ((n : ℤ) * A000035 n + 1).toNat

end

end A108077.P7181439542821792328

namespace A108077

/-- `A166333(n*A000035(n)+1)` -/
def P7181439542821792328.Spec : Prop :=
  ∀ n, P7181439542821792328.a n = A108077 (n + 1)

end A108077

/-! ## A108077.P11436917349048780223

`p?[A166333(n)*A166333(A166333(n))]`
-/

namespace A108077.P11436917349048780223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 n * A166333 (A166333 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108077.P11436917349048780223

namespace A108077

/-- `p?[A166333(n)*A166333(A166333(n))]` -/
def P11436917349048780223.Spec : Prop :=
  ∀ n, P11436917349048780223.a n = A108077 (n + 1)

end A108077

/-! ## A108077.P14740248076865593161

`A006530(A166333(n+1)+A166333(n+1))`
-/

namespace A108077.P14740248076865593161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A166333 (n + 1) + A166333 (n + 1)).toNat

end

end A108077.P14740248076865593161

namespace A108077

/-- `A006530(A166333(n+1)+A166333(n+1))` -/
def P14740248076865593161.Spec : Prop :=
  ∀ n, P14740248076865593161.a n = A108077 (n + 1)

end A108077

/-! ## A108077.P11011304030030143633

`A166333(n+1)+A147612(A166333(A166333(n))²)`
-/

namespace A108077.P11011304030030143633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (n + 1) + A147612 (A166333 (A166333 n).toNat ^ 2).toNat

end

end A108077.P11011304030030143633

namespace A108077

/-- `A166333(n+1)+A147612(A166333(A166333(n))²)` -/
def P11011304030030143633.Spec : Prop :=
  ∀ n, P11011304030030143633.a n = A108077 (n + 1)

end A108077

/-! ## A108077.P12584257939532624975

`A166333(A346467(n+2))`
-/

namespace A108077.P12584257939532624975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (A346467 (n + 2)).toNat

end

end A108077.P12584257939532624975

namespace A108077

/-- `A166333(A346467(n+2))` -/
def P12584257939532624975.Spec : Prop :=
  ∀ n, P12584257939532624975.a n = A108077 (n + 1)

end A108077

/-! ## A108077.P11302384522442287727

`A253236(2*A166333(n+1))`
-/

namespace A108077.P11302384522442287727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253236 (2 * A166333 (n + 1)).toNat

end

end A108077.P11302384522442287727

namespace A108077

/-- `A253236(2*A166333(n+1))` -/
def P11302384522442287727.Spec : Prop :=
  ∀ n, P11302384522442287727.a n = A108077 (n + 1)

end A108077

/-! ## A108077.P15718846667085657677

`A037800(2*n+1)+A166333(n+1)-A037800(n)`
-/

namespace A108077.P15718846667085657677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (2 * n + 1) + (A166333 (n + 1) - A037800 n)

end

end A108077.P15718846667085657677

namespace A108077

/-- `A037800(2*n+1)+A166333(n+1)-A037800(n)` -/
def P15718846667085657677.Spec : Prop :=
  ∀ n, P15718846667085657677.a n = A108077 (n + 1)

end A108077

/-! ## A108077.P13314683205251783878

`A166333(n+1)+A165560(A166333(3*n))`
-/

namespace A108077.P13314683205251783878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (n + 1) + A165560 (A166333 (3 * n)).toNat

end

end A108077.P13314683205251783878

namespace A108077

/-- `A166333(n+1)+A165560(A166333(3*n))` -/
def P13314683205251783878.Spec : Prop :=
  ∀ n, P13314683205251783878.a n = A108077 (n + 1)

end A108077

/-! ## A108077.P3082016737886158717

`A166120(n+1)*A166333(n+1)/A356655(n)`
-/

namespace A108077.P3082016737886158717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166120 (n + 1) * A166333 (n + 1) : ℚ) / (A356655 n : ℚ)

end

end A108077.P3082016737886158717

namespace A108077

/-- `A166120(n+1)*A166333(n+1)/A356655(n)` -/
def P3082016737886158717.Spec : Prop :=
  ∀ n, P3082016737886158717.a n = (A108077 (n + 1) : ℚ)

end A108077

/-!
# A108078: Determinant of a Hankel matrix with factorial elements.

The programs for A108078, the canonical program `A108078.P9221918094347988259` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108078 has offset 0).

The definition of A108078 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108078.P9221918094347988259

`A059332(n)*(n+1)!`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A108078

/-- `A059332(n)*(n+1)!` -/
def P9221918094347988259.Spec : Prop :=
  ∀ n, P9221918094347988259.a n = A108078 n

theorem P9221918094347988259.correct : P9221918094347988259.Spec := by
  intro n
  simp only [A108078]

end A108078

/-! ## A108078.P17174070897810059885

`(n+1)*∏[n!²]`
-/

namespace A108078.P17174070897810059885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A108078.P17174070897810059885

namespace A108078

/-- `(n+1)*∏[n!²]` -/
def P17174070897810059885.Spec : Prop :=
  ∀ n, (P17174070897810059885.a n : ℤ) = A108078 n

end A108078

/-! ## A108078.P8845228390473954859

`(n+1)*∏[sqrt(n!)]^4`
-/

namespace A108078.P8845228390473954859
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.factorial n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * (∏ j ∈ Finset.range (n + 1), f1 j) ^ 4

end

end A108078.P8845228390473954859

namespace A108078

/-- `(n+1)*∏[sqrt(n!)]^4` -/
def P8845228390473954859.Spec : Prop :=
  ∀ n, P8845228390473954859.a n = (A108078 n : ℝ)

end A108078

/-! ## A108078.P2738700405547549535

`(n+1)*exp(∑[log(n!²)])`
-/

namespace A108078.P2738700405547549535
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (Nat.factorial n ^ 2 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.exp (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108078.P2738700405547549535

namespace A108078

/-- `(n+1)*exp(∑[log(n!²)])` -/
def P2738700405547549535.Spec : Prop :=
  ∀ n, P2738700405547549535.a n = (A108078 n : ℝ)

end A108078

/-! ## A108078.P6618928649477511842

`∏[(n+1)!*abs(1-n)!]`
-/

namespace A108078.P6618928649477511842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) * Nat.factorial |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A108078.P6618928649477511842

namespace A108078

/-- `∏[(n+1)!*abs(1-n)!]` -/
def P6618928649477511842.Spec : Prop :=
  ∀ n, (P6618928649477511842.a n : ℤ) = A108078 n

end A108078

/-!
# A108079: a(n) = Sum_{i=0..n} C(2n+i,n+i).

The programs for A108079, the canonical program `A108079.P3704575892807214509` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108079 has offset 0).

The definition of A108079 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(2*n+#, n)]` (program `A108079.P3704575892807214509`, by `A108079.P3704575892807214509.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108079.P3704575892807214509

`∑{#}[n, C(2*n+#, n)]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A108079

/-- `∑{#}[n, C(2*n+#, n)]` -/
def P3704575892807214509.Spec : Prop :=
  ∀ n, (P3704575892807214509.a n : ℤ) = A108079 n

theorem P3704575892807214509.correct : P3704575892807214509.Spec := by
  intro n
  simp only [A108079]

end A108079

/-! ## A108079.P7549351452521250096

`∑{#}[n, C(2*n+#, n+#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A108079.P7549351452521250096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose (2 * n + k) (n + k)

end

end A108079.P7549351452521250096

namespace A108079

/-- `∑{#}[n, C(2*n+#, n+#)]` -/
def P7549351452521250096.Spec : Prop :=
  ∀ n, (P7549351452521250096.a n : ℤ) = A108079 n

end A108079

/-! ## A108079.P2571972727151902477

`A117671(n)-A001791(n)`
-/

namespace A108079.P2571972727151902477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117671 n - A001791 n

end

end A108079.P2571972727151902477

namespace A108079

/-- `A117671(n)-A001791(n)` -/
def P2571972727151902477.Spec : Prop :=
  ∀ n, P2571972727151902477.a n = A108079 n

end A108079

/-! ## A108079.P9829029623520517654

`A099576(2*n)-A001791(n)`
-/

namespace A108079.P9829029623520517654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099576 (2 * n) - A001791 n

end

end A108079.P9829029623520517654

namespace A108079

/-- `A099576(2*n)-A001791(n)` -/
def P9829029623520517654.Spec : Prop :=
  ∀ n, P9829029623520517654.a n = A108079 n

end A108079

/-! ## A108079.P15988840891268352500

`A117671(n)-n*A000108(n)`
-/

namespace A108079.P15988840891268352500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117671 n - (n : ℤ) * A000108 n

end

end A108079.P15988840891268352500

namespace A108079

/-- `A117671(n)-n*A000108(n)` -/
def P15988840891268352500.Spec : Prop :=
  ∀ n, P15988840891268352500.a n = A108079 n

end A108079

/-! ## A108079.P1515902960890990044

`C(3*n+1, n+1)-C(2*n, n+1)`
-/

namespace A108079.P1515902960890990044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n + 1) (n + 1) : ℤ) - (Nat.choose (2 * n) (n + 1) : ℤ)

end

end A108079.P1515902960890990044

namespace A108079

/-- `C(3*n+1, n+1)-C(2*n, n+1)` -/
def P1515902960890990044.Spec : Prop :=
  ∀ n, P1515902960890990044.a n = A108079 n

end A108079

/-! ## A108079.P132124255955042579

`A046899(A001844(n))-A001791(n)`
-/

namespace A108079.P132124255955042579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A001844 n).toNat - A001791 n

end

end A108079.P132124255955042579

namespace A108079

/-- `A046899(A001844(n))-A001791(n)` -/
def P132124255955042579.Spec : Prop :=
  ∀ n, P132124255955042579.a n = A108079 n

end A108079

/-! ## A108079.P6266991827865510895

`A085475(A056220(n+1))`
-/

namespace A108079.P6266991827865510895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085475 (A056220 (n + 1)).toNat

end

end A108079.P6266991827865510895

namespace A108079

/-- `A085475(A056220(n+1))` -/
def P6266991827865510895.Spec : Prop :=
  ∀ n, P6266991827865510895.a n = A108079 n

end A108079

/-! ## A108079.P16855926162290691758

`A085475(A000217(2*n+1)+n)`
-/

namespace A108079.P16855926162290691758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085475 (A000217 (2 * n + 1) + (n : ℤ)).toNat

end

end A108079.P16855926162290691758

namespace A108079

/-- `A085475(A000217(2*n+1)+n)` -/
def P16855926162290691758.Spec : Prop :=
  ∀ n, P16855926162290691758.a n = A108079 n

end A108079

/-!
# A108080: a(n) = Sum_{i=0..n} binomial(2*n+i,n-i).

The programs for A108080, the canonical program `A108080.P12415611282408289334` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108080 has offset 0).

The definition of A108080 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(2*n+#, n-#)]` (program `A108080.P12415611282408289334`, by `A108080.P12415611282408289334.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108080.P12415611282408289334

`∑{#}[n, C(2*n+#, n-#)]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A108080

/-- `∑{#}[n, C(2*n+#, n-#)]` -/
def P12415611282408289334.Spec : Prop :=
  ∀ n, (P12415611282408289334.a n : ℤ) = A108080 n

theorem P12415611282408289334.correct : P12415611282408289334.Spec := by
  intro n
  simp only [A108080]

end A108080

/-! ## A108080.P17206432539219488920

`A026847(2*n)`
-/

namespace A108080.P17206432539219488920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026847 (2 * n)

end

end A108080.P17206432539219488920

namespace A108080

/-- `A026847(2*n)` -/
def P17206432539219488920.Spec : Prop :=
  ∀ n, P17206432539219488920.a n = A108080 n

end A108080

/-! ## A108080.P4881722485322927603

`A010752(3*n)`
-/

namespace A108080.P4881722485322927603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010752 (3 * n)

end

end A108080.P4881722485322927603

namespace A108080

/-- `A010752(3*n)` -/
def P4881722485322927603.Spec : Prop :=
  ∀ n, P4881722485322927603.a n = A108080 n

end A108080

/-! ## A108080.P2903653301592482270

`∑{#}[n, C(n, #)*A116387(#)]`
-/

namespace A108080.P2903653301592482270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A116387 k

end

end A108080.P2903653301592482270

namespace A108080

/-- `∑{#}[n, C(n, #)*A116387(#)]` -/
def P2903653301592482270.Spec : Prop :=
  ∀ n, P2903653301592482270.a n = A108080 n

end A108080

/-! ## A108080.P6003054440888230054

`A054441(n)+A026726(n)`
-/

namespace A108080.P6003054440888230054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054441 n + A026726 n

end

end A108080.P6003054440888230054

namespace A108080

/-- `A054441(n)+A026726(n)` -/
def P6003054440888230054.Spec : Prop :=
  ∀ n, P6003054440888230054.a n = A108080 n

end A108080

/-! ## A108080.P13413829006600517900

`A390266(n)-A054441(n)`
-/

namespace A108080.P13413829006600517900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390266 n - A054441 n

end

end A108080.P13413829006600517900

namespace A108080

/-- `A390266(n)-A054441(n)` -/
def P13413829006600517900.Spec : Prop :=
  ∀ n, P13413829006600517900.a n = A108080 n

end A108080

/-! ## A108080.P8390521742846474733

`record[A026847(n)^A033999(n)]`
-/

namespace A108080.P8390521742846474733
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026847 n : ℚ) ^ (A033999 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108080.P8390521742846474733

namespace A108080

/-- `record[A026847(n)^A033999(n)]` -/
def P8390521742846474733.Spec : Prop :=
  ∀ n, P8390521742846474733.a n = (A108080 n : ℚ)

end A108080

/-! ## A108080.P6019588501101700512

`A026674(n+1)-A001791(n)`
-/

namespace A108080.P6019588501101700512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026674 (n + 1) - A001791 n

end

end A108080.P6019588501101700512

namespace A108080

/-- `A026674(n+1)-A001791(n)` -/
def P6019588501101700512.Spec : Prop :=
  ∀ n, P6019588501101700512.a n = A108080 n

end A108080

/-! ## A108080.P1216694288336923875

`A165201(n+1)-A001791(n)`
-/

namespace A108080.P1216694288336923875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165201 (n + 1) - A001791 n

end

end A108080.P1216694288336923875

namespace A108080

/-- `A165201(n+1)-A001791(n)` -/
def P1216694288336923875.Spec : Prop :=
  ∀ n, P1216694288336923875.a n = A108080 n

end A108080

/-! ## A108080.P6374282953499573718

`A026676(2*n+1)-A001791(n)`
-/

namespace A108080.P6374282953499573718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026676 (2 * n + 1) - A001791 n

end

end A108080.P6374282953499573718

namespace A108080

/-- `A026676(2*n+1)-A001791(n)` -/
def P6374282953499573718.Spec : Prop :=
  ∀ n, P6374282953499573718.a n = A108080 n

end A108080

/-! ## A108080.P1506267078162022569

`A026674(n+1)-n*A000108(n)`
-/

namespace A108080.P1506267078162022569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026674 (n + 1) - (n : ℤ) * A000108 n

end

end A108080.P1506267078162022569

namespace A108080

/-- `A026674(n+1)-n*A000108(n)` -/
def P1506267078162022569.Spec : Prop :=
  ∀ n, P1506267078162022569.a n = A108080 n

end A108080

/-! ## A108080.P13820916180985608279

`(A026731(2*n)+A026678(2*n))/2`
-/

namespace A108080.P13820916180985608279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026731 (2 * n) + A026678 (2 * n) : ℚ) / 2

end

end A108080.P13820916180985608279

namespace A108080

/-- `(A026731(2*n)+A026678(2*n))/2` -/
def P13820916180985608279.Spec : Prop :=
  ∀ n, P13820916180985608279.a n = (A108080 n : ℚ)

end A108080

/-! ## A108080.P292680468230360646

`(A026743(2*n)+A026731(2*n))/2`
-/

namespace A108080.P292680468230360646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026743 (2 * n) + A026731 (2 * n) : ℚ) / 2

end

end A108080.P292680468230360646

namespace A108080

/-- `(A026743(2*n)+A026731(2*n))/2` -/
def P292680468230360646.Spec : Prop :=
  ∀ n, P292680468230360646.a n = (A108080 n : ℚ)

end A108080

/-! ## A108080.P139621792789653740

`(A026742(2*n+1)+A026733(2*n))/2`
-/

namespace A108080.P139621792789653740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026742 (2 * n + 1) + A026733 (2 * n) : ℚ) / 2

end

end A108080.P139621792789653740

namespace A108080

/-- `(A026742(2*n+1)+A026733(2*n))/2` -/
def P139621792789653740.Spec : Prop :=
  ∀ n, P139621792789653740.a n = (A108080 n : ℚ)

end A108080

/-! ## A108080.P7699662515639086057

`A026732(2*n+1)+A026732(2*n)-A026677(2*n+1)`
-/

namespace A108080.P7699662515639086057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026732 (2 * n + 1) + (A026732 (2 * n) - A026677 (2 * n + 1))

end

end A108080.P7699662515639086057

namespace A108080

/-- `A026732(2*n+1)+A026732(2*n)-A026677(2*n+1)` -/
def P7699662515639086057.Spec : Prop :=
  ∀ n, P7699662515639086057.a n = A108080 n

end A108080

/-! ## A108080.P11039341322683889472

`A026743(2*n+1)+A026732(2*n)-A026732(2*n+1)`
-/

namespace A108080.P11039341322683889472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026743 (2 * n + 1) + (A026732 (2 * n) - A026732 (2 * n + 1))

end

end A108080.P11039341322683889472

namespace A108080

/-- `A026743(2*n+1)+A026732(2*n)-A026732(2*n+1)` -/
def P11039341322683889472.Spec : Prop :=
  ∀ n, P11039341322683889472.a n = A108080 n

end A108080

/-!
# A108081: a(n) = Sum_{i=0..n} binomial(2*n-i, n+i).

The programs for A108081, the canonical program `A108081.P3679127045119666609` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108081 has offset 0).

The definition of A108081 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(2*n-#, n+#)]` (program `A108081.P3679127045119666609`, by `A108081.P3679127045119666609.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108081.P3679127045119666609

`∑{#}[n, C(2*n-#, n+#)]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A108081

/-- `∑{#}[n, C(2*n-#, n+#)]` -/
def P3679127045119666609.Spec : Prop :=
  ∀ n, (P3679127045119666609.a n : ℤ) = A108081 n

theorem P3679127045119666609.correct : P3679127045119666609.Spec := by
  intro n
  simp only [A108081]

end A108081

/-! ## A108081.P10192310842843197706

`A010757(3*n)`
-/

namespace A108081.P10192310842843197706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010757 (3 * n)

end

end A108081.P10192310842843197706

namespace A108081

/-- `A010757(3*n)` -/
def P10192310842843197706.Spec : Prop :=
  ∀ n, P10192310842843197706.a n = A108081 n

end A108081

/-! ## A108081.P10512458907243981229

`A257838(n)+A081696(n)`
-/

namespace A108081.P10512458907243981229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257838 n + A081696 n

end

end A108081.P10512458907243981229

namespace A108081

/-- `A257838(n)+A081696(n)` -/
def P10512458907243981229.Spec : Prop :=
  ∀ n, P10512458907243981229.a n = A108081 n

end A108081

/-! ## A108081.P6630090265248375343

`A371870(n)+A176085(n)`
-/

namespace A108081.P6630090265248375343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371870 n + A176085 n

end

end A108081.P6630090265248375343

namespace A108081

/-- `A371870(n)+A176085(n)` -/
def P6630090265248375343.Spec : Prop :=
  ∀ n, P6630090265248375343.a n = A108081 n

end A108081

/-! ## A108081.P10199581490510874834

`A028329(n)-A268407(n)`
-/

namespace A108081.P10199581490510874834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028329 n - A268407 n

end

end A108081.P10199581490510874834

namespace A108081

/-- `A028329(n)-A268407(n)` -/
def P10199581490510874834.Spec : Prop :=
  ∀ n, P10199581490510874834.a n = A108081 n

end A108081

/-! ## A108081.P1249269570781850362

`A277287(n)-A176085(n)`
-/

namespace A108081.P1249269570781850362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277287 n - A176085 n

end

end A108081.P1249269570781850362

namespace A108081

/-- `A277287(n)-A176085(n)` -/
def P1249269570781850362.Spec : Prop :=
  ∀ n, P1249269570781850362.a n = A108081 n

end A108081

/-! ## A108081.P11245459625169713428

`A176085(n+1)-A257838(n)`
-/

namespace A108081.P11245459625169713428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176085 (n + 1) - A257838 n

end

end A108081.P11245459625169713428

namespace A108081

/-- `A176085(n+1)-A257838(n)` -/
def P11245459625169713428.Spec : Prop :=
  ∀ n, P11245459625169713428.a n = A108081 n

end A108081

/-! ## A108081.P10054116864490734997

`2*A000984(n)-A268407(n)`
-/

namespace A108081.P10054116864490734997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000984 n - A268407 n

end

end A108081.P10054116864490734997

namespace A108081

/-- `2*A000984(n)-A268407(n)` -/
def P10054116864490734997.Spec : Prop :=
  ∀ n, P10054116864490734997.a n = A108081 n

end A108081

/-! ## A108081.P7831467908129053517

`A010756(A008486(n))+record[A126869(n)]`
-/

namespace A108081.P7831467908129053517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010756 (A008486 n).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108081.P7831467908129053517

namespace A108081

/-- `A010756(A008486(n))+record[A126869(n)]` -/
def P7831467908129053517.Spec : Prop :=
  ∀ n, P7831467908129053517.a n = A108081 n

end A108081

/-! ## A108081.P344260604236616114

`A126869(2*n)+A010756(A008486(n))`
-/

namespace A108081.P344260604236616114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * n) + A010756 (A008486 n).toNat

end

end A108081.P344260604236616114

namespace A108081

/-- `A126869(2*n)+A010756(A008486(n))` -/
def P344260604236616114.Spec : Prop :=
  ∀ n, P344260604236616114.a n = A108081 n

end A108081

/-! ## A108081.P16439004350572547239

`A000984(n)-(A176085(n)-A257838(n))`
-/

namespace A108081.P16439004350572547239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - (A176085 n - A257838 n)

end

end A108081.P16439004350572547239

namespace A108081

/-- `A000984(n)-(A176085(n)-A257838(n))` -/
def P16439004350572547239.Spec : Prop :=
  ∀ n, P16439004350572547239.a n = A108081 n

end A108081

/-! ## A108081.P231910471409058271

`A109262(n)+Δ[A176085(n)]-A176085(n)`
-/

namespace A108081.P231910471409058271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109262 n + (f1 (n + 1) - f1 n - A176085 n)

end

end A108081.P231910471409058271

namespace A108081

/-- `A109262(n)+Δ[A176085(n)]-A176085(n)` -/
def P231910471409058271.Spec : Prop :=
  ∀ n, P231910471409058271.a n = A108081 n

end A108081

/-! ## A108081.P12364739596179310731

`A026671(n)+A257838(n)-A014445(n)`
-/

namespace A108081.P12364739596179310731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026671 n + (A257838 n - A014445 n)

end

end A108081.P12364739596179310731

namespace A108081

/-- `A026671(n)+A257838(n)-A014445(n)` -/
def P12364739596179310731.Spec : Prop :=
  ∀ n, P12364739596179310731.a n = A108081 n

end A108081

/-! ## A108081.P8525630226468994990

`A176280(n)+A257838(n)-A001076(n)`
-/

namespace A108081.P8525630226468994990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176280 n + (A257838 n - A001076 n)

end

end A108081.P8525630226468994990

namespace A108081

/-- `A176280(n)+A257838(n)-A001076(n)` -/
def P8525630226468994990.Spec : Prop :=
  ∀ n, P8525630226468994990.a n = A108081 n

end A108081

/-!
# A108082: a(n) = Sum_{i=0..n} binomial(2n+i,2i).

The programs for A108082, the canonical program `A108082.P9629988117145687163` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108082 has offset 0).

The definition of A108082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108082.P9629988117145687163

`A010759(4*n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A108082

/-- `A010759(4*n)` -/
def P9629988117145687163.Spec : Prop :=
  ∀ n, P9629988117145687163.a n = A108082 n

theorem P9629988117145687163.correct : P9629988117145687163.Spec := by
  intro n
  simp only [A108082]

end A108082

/-! ## A108082.P11455561112678597725

`∑{#}[n, C(2*n+#, 2*#)]`
-/

namespace A108082.P11455561112678597725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose (2 * n + k) (2 * k)

end

end A108082.P11455561112678597725

namespace A108082

/-- `∑{#}[n, C(2*n+#, 2*#)]` -/
def P11455561112678597725.Spec : Prop :=
  ∀ n, (P11455561112678597725.a n : ℤ) = A108082 n

end A108082

/-! ## A108082.P2590962405017982605

`A027935(A062728(n))`
-/

namespace A108082.P2590962405017982605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027935 (A062728 n).toNat

end

end A108082.P2590962405017982605

namespace A108082

/-- `A027935(A062728(n))` -/
def P2590962405017982605.Spec : Prop :=
  ∀ n, P2590962405017982605.a n = A108082 n

end A108082

/-! ## A108082.P11130874662418719873

`A105809(A062725(n))`
-/

namespace A108082.P11130874662418719873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105809 (A062725 n).toNat

end

end A108082.P11130874662418719873

namespace A108082

/-- `A105809(A062725(n))` -/
def P11130874662418719873.Spec : Prop :=
  ∀ n, P11130874662418719873.a n = A108082 n

end A108082

/-! ## A108082.P7665052778428351499

`A228074(A064225(n))`
-/

namespace A108082.P7665052778428351499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228074 (A064225 n).toNat

end

end A108082.P7665052778428351499

namespace A108082

/-- `A228074(A064225(n))` -/
def P7665052778428351499.Spec : Prop :=
  ∀ n, P7665052778428351499.a n = A108082 n

end A108082

/-!
# A108083: Triangle, read by rows, where T(0,0) = 1, T(n,k) = (-1)^n*(2n+1)*T(n-1,k) - T(n-1,k-1).

The programs for A108083, the canonical program `A108083.P402916931645829095` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108083 has offset 0).

The definition of A108083 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^row(n)*(2*row(n)+1)*T(n-1,k)-T(n-1,k-1)` (program `A108083.P402916931645829095`, by `A108083.P402916931645829095.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108083.P402916931645829095

`(-1)^row(n)*(2*row(n)+1)*T(n-1,k)-T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A108083

/-- `(-1)^row(n)*(2*row(n)+1)*T(n-1,k)-T(n-1,k-1)` -/
def P402916931645829095.Spec : Prop :=
  ∀ n, P402916931645829095.a n = A108083 n

theorem P402916931645829095.correct : P402916931645829095.Spec := by
  intro n
  simp only [A108083]

end A108083

/-!
# A108084: Triangle, read by rows, where T(0,0) = 1, T(n,k) = 2^n*T(n-1,k) + T(n-1,k-1).

The programs for A108084, the canonical program `A108084.P10663486117864416255` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108084 has offset 0).

The definition of A108084 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^row(n)*T(n-1,k)+T(n-1,k-1)` (program `A108084.P10663486117864416255`, by `A108084.P10663486117864416255.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108084.P10663486117864416255

`2^row(n)*T(n-1,k)+T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A108084

/-- `2^row(n)*T(n-1,k)+T(n-1,k-1)` -/
def P10663486117864416255.Spec : Prop :=
  ∀ n, (P10663486117864416255.a n : ℤ) = A108084 n

theorem P10663486117864416255.correct : P10663486117864416255.Spec := by
  intro n
  simp only [A108084]

end A108084

/-! ## A108084.P9899136137077343846

`2^C(row(n)+1-col(n), 2)*A022166(C(row(n)+1, 2)+col(n))`
-/

namespace A108084.P9899136137077343846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.choose ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat 2 : ℤ) * A022166 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n)

end

end A108084.P9899136137077343846

namespace A108084

/-- `2^C(row(n)+1-col(n), 2)*A022166(C(row(n)+1, 2)+col(n))` -/
def P9899136137077343846.Spec : Prop :=
  ∀ n, P9899136137077343846.a n = A108084 n

end A108084

/-! ## A108084.P238809893475433101

`abs(A108085(n))`
-/

namespace A108084.P238809893475433101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108085 n|

end

end A108084.P238809893475433101

namespace A108084

/-- `abs(A108085(n))` -/
def P238809893475433101.Spec : Prop :=
  ∀ n, P238809893475433101.a n = A108084 n

end A108084

/-! ## A108084.P10925179326564607717

`A000079(row(n))*T(n-1,k)+T(n-1,k-1)` with `a(0)=1, a(1)=2`
-/

namespace A108084.P10925179326564607717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000079 (SequenceMachineLib.triRow n) * SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n

end

end A108084.P10925179326564607717

namespace A108084

/-- `A000079(row(n))*T(n-1,k)+T(n-1,k-1)` -/
def P10925179326564607717.Spec : Prop :=
  ∀ n, P10925179326564607717.a n = A108084 n

end A108084

/-! ## A108084.P17262436125948002947

`gcd(A000038(n), A108085(n))`
-/

namespace A108084.P17262436125948002947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A108085 n)

end

end A108084.P17262436125948002947

namespace A108084

/-- `gcd(A000038(n), A108085(n))` -/
def P17262436125948002947.Spec : Prop :=
  ∀ n, (P17262436125948002947.a n : ℤ) = A108084 n

end A108084

/-! ## A108084.P3917923396284400450

`lcm(A020985(n), A108085(n))`
-/

namespace A108084.P3917923396284400450
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A108085 n)

end

end A108084.P3917923396284400450

namespace A108084

/-- `lcm(A020985(n), A108085(n))` -/
def P3917923396284400450.Spec : Prop :=
  ∀ n, (P3917923396284400450.a n : ℤ) = A108084 n

end A108084

/-! ## A108084.P8998143154129049507

`abs(A130321(n)*A135950(n))`
-/

namespace A108084.P8998143154129049507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130321 n * A135950 n|

end

end A108084.P8998143154129049507

namespace A108084

/-- `abs(A130321(n)*A135950(n))` -/
def P8998143154129049507.Spec : Prop :=
  ∀ n, P8998143154129049507.a n = A108084 n

end A108084

/-! ## A108084.P12611852116423697231

`abs(A130321(n)*A157963(n))`
-/

namespace A108084.P12611852116423697231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130321 n * A157963 n|

end

end A108084.P12611852116423697231

namespace A108084

/-- `abs(A130321(n)*A157963(n))` -/
def P12611852116423697231.Spec : Prop :=
  ∀ n, P12611852116423697231.a n = A108084 n

end A108084

/-! ## A108084.P10629519839912542763

`gcd(A135950(n), A157963(n))*A130321(n)`
-/

namespace A108084.P10629519839912542763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A135950 n) (A157963 n) : ℤ) * A130321 n

end

end A108084.P10629519839912542763

namespace A108084

/-- `gcd(A135950(n), A157963(n))*A130321(n)` -/
def P10629519839912542763.Spec : Prop :=
  ∀ n, P10629519839912542763.a n = A108084 n

end A108084

/-! ## A108084.P3837626051282740051

`sqrt(A157963(n)²*A262616(n))`
-/

namespace A108084.P3837626051282740051
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A157963 n ^ 2 * A262616 n : ℝ)

end

end A108084.P3837626051282740051

namespace A108084

/-- `sqrt(A157963(n)²*A262616(n))` -/
def P3837626051282740051.Spec : Prop :=
  ∀ n, P3837626051282740051.a n = (A108084 n : ℝ)

end A108084

/-! ## A108084.P11231519038920863746

`sqrt(A108085(n)^A108077(2*n+1))`
-/

namespace A108084.P11231519038920863746
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A108085 n : ℚ) ^ (A108077 (2 * n + 1) : ℤ) : ℝ)

end

end A108084.P11231519038920863746

namespace A108084

/-- `sqrt(A108085(n)^A108077(2*n+1))` -/
def P11231519038920863746.Spec : Prop :=
  ∀ n, P11231519038920863746.a n = (A108084 n : ℝ)

end A108084

/-! ## A108084.P9025888374425849278

`abs(A157963(n))*A001316(A173787(n))`
-/

namespace A108084.P9025888374425849278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157963 n| * A001316 (A173787 n).toNat

end

end A108084.P9025888374425849278

namespace A108084

/-- `abs(A157963(n))*A001316(A173787(n))` -/
def P9025888374425849278.Spec : Prop :=
  ∀ n, P9025888374425849278.a n = A108084 n

end A108084

/-!
# A108085: Triangle, read by rows, where T(0,0) = 1, T(n,k) = 2^n*T(n-1,k) - T(n-1,k-1).

The programs for A108085, the canonical program `A108085.P2507995457997016193` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108085 has offset 0).

The definition of A108085 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^row(n)*T(n-1,k)-T(n-1,k-1)` (program `A108085.P2507995457997016193`, by `A108085.P2507995457997016193.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108085.P2507995457997016193

`2^row(n)*T(n-1,k)-T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A108085

/-- `2^row(n)*T(n-1,k)-T(n-1,k-1)` -/
def P2507995457997016193.Spec : Prop :=
  ∀ n, P2507995457997016193.a n = A108085 n

theorem P2507995457997016193.correct : P2507995457997016193.Spec := by
  intro n
  simp only [A108085]

end A108085

/-! ## A108085.P14630417568497995609

`A130321(n)*A157963(n)`
-/

namespace A108085.P14630417568497995609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A157963 n

end

end A108085.P14630417568497995609

namespace A108085

/-- `A130321(n)*A157963(n)` -/
def P14630417568497995609.Spec : Prop :=
  ∀ n, P14630417568497995609.a n = A108085 n

end A108085

/-! ## A108085.P13815962823668866666

`sqrt(A262616(n))*A157963(n)`
-/

namespace A108085.P13815962823668866666
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ) * (A157963 n : ℝ)

end

end A108085.P13815962823668866666

namespace A108085

/-- `sqrt(A262616(n))*A157963(n)` -/
def P13815962823668866666.Spec : Prop :=
  ∀ n, P13815962823668866666.a n = (A108085 n : ℝ)

end A108085

/-! ## A108085.P10179664951853442057

`A000079(A025581(n))*A157963(n)`
-/

namespace A108085.P10179664951853442057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat * A157963 n

end

end A108085.P10179664951853442057

namespace A108085

/-- `A000079(A025581(n))*A157963(n)` -/
def P10179664951853442057.Spec : Prop :=
  ∀ n, P10179664951853442057.a n = A108085 n

end A108085

/-! ## A108085.P5503211169138213314

`A033999(A061885(n))*A108084(n)`
-/

namespace A108085.P5503211169138213314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A061885 n).toNat * A108084 n

end

end A108085.P5503211169138213314

namespace A108085

/-- `A033999(A061885(n))*A108084(n)` -/
def P5503211169138213314.Spec : Prop :=
  ∀ n, P5503211169138213314.a n = A108085 n

end A108085

/-! ## A108085.P184769198859341058

`A001316(A173787(n))*A157963(n)`
-/

namespace A108085.P184769198859341058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A173787 n).toNat * A157963 n

end

end A108085.P184769198859341058

namespace A108085

/-- `A001316(A173787(n))*A157963(n)` -/
def P184769198859341058.Spec : Prop :=
  ∀ n, P184769198859341058.a n = A108085 n

end A108085

/-!
# A108086: Triangle, read by rows, where T(0,0) = 1, T(n,k) = (-1)^(n+k)*T(n-1,k) + T(n-1,k-1); a signed version of Pascal's triangle.

The programs for A108086, the canonical program `A108086.P12891985006379442408` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108086 has offset 0).

The definition of A108086 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^(row(n)+col(n))*T(n-1,k)+T(n-1,k-1)` (program `A108086.P12891985006379442408`, by `A108086.P12891985006379442408.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108086.P12891985006379442408

`(-1)^(row(n)+col(n))*T(n-1,k)+T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A108086

/-- `(-1)^(row(n)+col(n))*T(n-1,k)+T(n-1,k-1)` -/
def P12891985006379442408.Spec : Prop :=
  ∀ n, P12891985006379442408.a n = A108086 n

theorem P12891985006379442408.correct : P12891985006379442408.Spec := by
  intro n
  simp only [A108086]

end A108086

/-! ## A108086.P10114353277879013678

`(-1)^(row(n)+1+col(n)+1)*T(n-1,k)+T(n-1,k-1)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A108086.P10114353277879013678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (-1) ^ (SequenceMachineLib.triRow n + 1 + (SequenceMachineLib.triCol n + 1)) * SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n

end

end A108086.P10114353277879013678

namespace A108086

/-- `(-1)^(row(n)+1+col(n)+1)*T(n-1,k)+T(n-1,k-1)` -/
def P10114353277879013678.Spec : Prop :=
  ∀ n, P10114353277879013678.a n = A108086 n

theorem P10114353277879013678.correct : P10114353277879013678.Spec := by
  intro n
  simp only [A108086, Nat.add_sub_cancel, A108086.P10114353277879013678.a, A108086.P12891985006379442408.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A108086

/-! ## A108086.P10177052179745702965

`(-1)^floor((row(n)-col(n)+1)/2)*A007318(C(row(n)+1, 2)+col(n))`
-/

namespace A108086.P10177052179745702965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 : ℚ) / 2⌋ : ℤ) * (A007318 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) : ℚ)

end

end A108086.P10177052179745702965

namespace A108086

/-- `(-1)^floor((row(n)-col(n)+1)/2)*A007318(C(row(n)+1, 2)+col(n))` -/
def P10177052179745702965.Spec : Prop :=
  ∀ n, P10177052179745702965.a n = (A108086 n : ℚ)

end A108086

/-! ## A108086.P13392091715245900337

`A097807(n)*A117440(n)`
-/

namespace A108086.P13392091715245900337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A117440 n

end

end A108086.P13392091715245900337

namespace A108086

/-- `A097807(n)*A117440(n)` -/
def P13392091715245900337.Spec : Prop :=
  ∀ n, P13392091715245900337.a n = A108086 n

end A108086

/-! ## A108086.P12141036559264490002

`A007318(n)*A087960(A025581(n))`
-/

namespace A108086.P12141036559264490002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A087960 (A025581 n).toNat

end

end A108086.P12141036559264490002

namespace A108086

/-- `A007318(n)*A087960(A025581(n))` -/
def P12141036559264490002.Spec : Prop :=
  ∀ n, P12141036559264490002.a n = A108086 n

end A108086

/-! ## A108086.P6463315538255710407

`A007318(n)*A046980(A099375(n))`
-/

namespace A108086.P6463315538255710407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A046980 (A099375 n).toNat

end

end A108086.P6463315538255710407

namespace A108086

/-- `A007318(n)*A046980(A099375(n))` -/
def P6463315538255710407.Spec : Prop :=
  ∀ n, P6463315538255710407.a n = A108086 n

end A108086

/-! ## A108086.P14188011247634610846

`A057077(A025581(n))*A130595(n)`
-/

namespace A108086.P14188011247634610846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A025581 n).toNat * A130595 n

end

end A108086.P14188011247634610846

namespace A108086

/-- `A057077(A025581(n))*A130595(n)` -/
def P14188011247634610846.Spec : Prop :=
  ∀ n, P14188011247634610846.a n = A108086 n

end A108086

/-! ## A108086.P8068745868440065399

`A007318(n)*A057077(A004736(n+1))`
-/

namespace A108086.P8068745868440065399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A057077 (A004736 (n + 1)).toNat

end

end A108086.P8068745868440065399

namespace A108086

/-- `A007318(n)*A057077(A004736(n+1))` -/
def P8068745868440065399.Spec : Prop :=
  ∀ n, P8068745868440065399.a n = A108086 n

end A108086

/-! ## A108086.P2384351061011716840

`A007318(n)*A057077(A025581(n)+1)`
-/

namespace A108086.P2384351061011716840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A057077 (A025581 n + 1).toNat

end

end A108086.P2384351061011716840

namespace A108086

/-- `A007318(n)*A057077(A025581(n)+1)` -/
def P2384351061011716840.Spec : Prop :=
  ∀ n, P2384351061011716840.a n = A108086 n

end A108086

/-! ## A108086.P16191609933759311779

`A062157(A004736(n+1))*A117440(n)`
-/

namespace A108086.P16191609933759311779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A004736 (n + 1)).toNat * A117440 n

end

end A108086.P16191609933759311779

namespace A108086

/-- `A062157(A004736(n+1))*A117440(n)` -/
def P16191609933759311779.Spec : Prop :=
  ∀ n, P16191609933759311779.a n = A108086 n

end A108086

/-! ## A108086.P11232234114991726157

`A007318(n)*A257170(A099375(n)+2)`
-/

namespace A108086.P11232234114991726157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A257170 (A099375 n + 2).toNat

end

end A108086.P11232234114991726157

namespace A108086

/-- `A007318(n)*A257170(A099375(n)+2)` -/
def P11232234114991726157.Spec : Prop :=
  ∀ n, P11232234114991726157.a n = A108086 n

end A108086

/-! ## A108086.P4205134497857209555

`A007318(n)*A117440(n)/A130595(n)`
-/

namespace A108086.P4205134497857209555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n * A117440 n : ℚ) / (A130595 n : ℚ)

end

end A108086.P4205134497857209555

namespace A108086

/-- `A007318(n)*A117440(n)/A130595(n)` -/
def P4205134497857209555.Spec : Prop :=
  ∀ n, P4205134497857209555.a n = (A108086 n : ℚ)

end A108086

/-! ## A108086.P17436599155692373653

`A057077(A004736(n+1)-1)*A130595(n)`
-/

namespace A108086.P17436599155692373653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A004736 (n + 1) - 1).toNat * A130595 n

end

end A108086.P17436599155692373653

namespace A108086

/-- `A057077(A004736(n+1)-1)*A130595(n)` -/
def P17436599155692373653.Spec : Prop :=
  ∀ n, P17436599155692373653.a n = A108086 n

end A108086

/-! ## A108086.P5663014172389629182

`ceil(A134059(n)/3)*A057077(A004736(n+1))`
-/

namespace A108086.P5663014172389629182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134059 n : ℚ) / 3⌉ * A057077 (A004736 (n + 1)).toNat

end

end A108086.P5663014172389629182

namespace A108086

/-- `ceil(A134059(n)/3)*A057077(A004736(n+1))` -/
def P5663014172389629182.Spec : Prop :=
  ∀ n, P5663014172389629182.a n = A108086 n

end A108086

/-! ## A108086.P8327161989061454125

`A134059(A028310(n))/3*A057077(A004736(n+1))`
-/

namespace A108086.P8327161989061454125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134059 (A028310 n).toNat : ℚ) / 3 * (A057077 (A004736 (n + 1)).toNat : ℚ)

end

end A108086.P8327161989061454125

namespace A108086

/-- `A134059(A028310(n))/3*A057077(A004736(n+1))` -/
def P8327161989061454125.Spec : Prop :=
  ∀ n, P8327161989061454125.a n = (A108086 n : ℚ)

end A108086

/-! ## A108086.P12688941561585511334

`(A285118(n)+A285116(n))*A057077(A004736(n+1))`
-/

namespace A108086.P12688941561585511334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A285118 n + A285116 n) * A057077 (A004736 (n + 1)).toNat

end

end A108086.P12688941561585511334

namespace A108086

/-- `(A285118(n)+A285116(n))*A057077(A004736(n+1))` -/
def P12688941561585511334.Spec : Prop :=
  ∀ n, P12688941561585511334.a n = A108086 n

end A108086

/-! ## A108086.P8887842536886943947

`(A028276(n)-A028263(n))*A057077(A004736(n+1))`
-/

namespace A108086.P8887842536886943947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028276 n - A028263 n) * A057077 (A004736 (n + 1)).toNat

end

end A108086.P8887842536886943947

namespace A108086

/-- `(A028276(n)-A028263(n))*A057077(A004736(n+1))` -/
def P8887842536886943947.Spec : Prop :=
  ∀ n, P8887842536886943947.a n = A108086 n

end A108086

/-! ## A108086.P8669798063033698893

`A176348(n)/A176346(n)*A057077(A004736(n+1))`
-/

namespace A108086.P8669798063033698893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176348 n : ℚ) / (A176346 n : ℚ) * (A057077 (A004736 (n + 1)).toNat : ℚ)

end

end A108086.P8669798063033698893

namespace A108086

/-- `A176348(n)/A176346(n)*A057077(A004736(n+1))` -/
def P8669798063033698893.Spec : Prop :=
  ∀ n, P8669798063033698893.a n = (A108086 n : ℚ)

end A108086

/-! ## A108086.P4061721758963928343

`A007318(n)*A033999(A245300(n))`
-/

namespace A108086.P4061721758963928343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A033999 (A245300 n).toNat

end

end A108086.P4061721758963928343

namespace A108086

/-- `A007318(n)*A033999(A245300(n))` -/
def P4061721758963928343.Spec : Prop :=
  ∀ n, P4061721758963928343.a n = A108086 n

end A108086

/-! ## A108086.P13049679452034080500

`A117440(A103217(n))*A117440(n)`
-/

namespace A108086.P13049679452034080500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117440 (A103217 n).toNat * A117440 n

end

end A108086.P13049679452034080500

namespace A108086

/-- `A117440(A103217(n))*A117440(n)` -/
def P13049679452034080500.Spec : Prop :=
  ∀ n, P13049679452034080500.a n = A108086 n

end A108086

/-!
# A108087: Array, read by antidiagonals, where A(n,k) = exp(-1)*Sum_{i>=0} (i+k)^n/i!.

The programs for A108087, there is no canonical definition to state claims against.
-/

/-! ## A108087.P8207709795491203287

`A123158(n)-A082503(A143632(n))`
-/

namespace A108087.P8207709795491203287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123158 n - A082503 (A143632 n).toNat

end

end A108087.P8207709795491203287

/-! ## A108087.P1727737553825600583

`A123158(n)-A025469(A007053(n))`
-/

namespace A108087.P1727737553825600583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123158 n - A025469 (A007053 n).toNat

end

end A108087.P1727737553825600583

/-! ## A108087.P278375362992675605

`A123158(n)-A018843(A278818(n))`
-/

namespace A108087.P278375362992675605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123158 n - A018843 (A278818 n).toNat

end

end A108087.P278375362992675605

/-! ## A108087.P9394079559176965887

`A123158(n)-A321379(A131668(n))`
-/

namespace A108087.P9394079559176965887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123158 n - A321379 (A131668 n).toNat

end

end A108087.P9394079559176965887

/-! ## A108087.P2137708850880156181

`A306202(A033184(n+1))+A151665(A078370(3*n+2))`
-/

namespace A108087.P2137708850880156181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306202 (A033184 (n + 1)).toNat + A151665 (A078370 (3 * n + 2)).toNat

end

end A108087.P2137708850880156181

/-!
# A108090: Numbers of the form (11^i)*(13^j).

The programs for A108090, there is no canonical definition to state claims against.
-/

/-! ## A108090.P11448020710237504308

`record[A324395(16*n)]`
-/

namespace A108090.P11448020710237504308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324395 (16 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108090.P11448020710237504308

/-! ## A108090.P16031936447655058052

`A324395(16*A089633(n))`
-/

namespace A108090.P16031936447655058052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324395 (16 * A089633 n).toNat

end

end A108090.P16031936447655058052

/-! ## A108090.P14003551552807401040

`A045970(A036561(n))^ceil(sin(n)²)`
-/

namespace A108090.P14003551552807401040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045970 (A036561 n).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A108090.P14003551552807401040

/-! ## A108090.P5484565010389887749

`gcd(A000038(n), A045970(A036561(n)))`
-/

namespace A108090.P5484565010389887749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A045970 (A036561 n).toNat)

end

end A108090.P5484565010389887749

/-! ## A108090.P9989508261619411780

`A045970(A036561(n))%A122220(n+1)`
-/

namespace A108090.P9989508261619411780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045970 (A036561 n).toNat) (A122220 (n + 1))

end

end A108090.P9989508261619411780

/-!
# A108091: Coefficients of series whose 8th power is the theta series of E_8 (see A004009).

The programs for A108091, there is no canonical definition to state claims against.
-/

/-! ## A108091.P10039670308362937036

`A108093(n)+30*A108772(n)`
-/

namespace A108091.P10039670308362937036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108093 n + 30 * A108772 n

end

end A108091.P10039670308362937036

/-!
# A108093: Coefficients of series whose 24th power is the theta series of the Leech lattice (see A008408).

The programs for A108093, there is no canonical definition to state claims against.
-/

/-! ## A108093.P6262007841626063661

`A108091(n)-30*A108772(n)`
-/

namespace A108093.P6262007841626063661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108091 n - 30 * A108772 n

end

end A108093.P6262007841626063661

/-!
# A108098: Numbers m such that there is no k <= 2*m for which m! + k! - 1 is prime.

The programs for A108098, there is no canonical definition to state claims against.
-/

/-! ## A108098.P13412359087070459932

`A002024(A061779(n+1)+∑[A052606(n)])`
-/

namespace A108098.P13412359087070459932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052606 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A061779 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A108098.P13412359087070459932

/-!
# A108099: a(n) = 8*n^2 + 8*n + 4.

The programs for A108099, the canonical program `A108099.P5915517825114269260` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108099 has offset 0).

The definition of A108099 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*n²+8*n+4` (program `A108099.P5915517825114269260`, by `A108099.P5915517825114269260.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108099.P2870501101402048889

`8*n*(n+1)+4`
-/

namespace A108099.P2870501101402048889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n * (n + 1) + 4

end

end A108099.P2870501101402048889

namespace A108099

/-- `8*n*(n+1)+4` -/
def P2870501101402048889.Spec : Prop :=
  ∀ n, (P2870501101402048889.a n : ℤ) = A108099 n

theorem P2870501101402048889.correct : P2870501101402048889.Spec := by
  intro n
  simp only [A108099, Nat.add_sub_cancel, A108099.P2870501101402048889.a, A108099.P5915517825114269260.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A108099

/-! ## A108099.P3661150163219720465

`ogf((4+8x+4x^2)/(1-3x+3x^2-x^3))`
-/

namespace A108099.P3661150163219720465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 8, 4] [1, -3, 3, -1] n

end

end A108099.P3661150163219720465

namespace A108099

/-- `ogf((4+8x+4x^2)/(1-3x+3x^2-x^3))` -/
def P3661150163219720465.Spec : Prop :=
  ∀ n, P3661150163219720465.a n = A108099 n

end A108099

/-! ## A108099.P5915517825114269260

`8*n²+8*n+4`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A108099

/-- `8*n²+8*n+4` -/
def P5915517825114269260.Spec : Prop :=
  ∀ n, (P5915517825114269260.a n : ℤ) = A108099 n

theorem P5915517825114269260.correct : P5915517825114269260.Spec := by
  intro n
  simp only [A108099]

end A108099

/-! ## A108099.P13475171938011081300

`2*A069894(n)`
-/

namespace A108099.P13475171938011081300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069894 n

end

end A108099.P13475171938011081300

namespace A108099

/-- `2*A069894(n)` -/
def P13475171938011081300.Spec : Prop :=
  ∀ n, P13475171938011081300.a n = A108099 n

theorem P13475171938011081300.correct : P13475171938011081300.Spec := by
  intro n
  simp only [A108099, Nat.add_sub_cancel, A108099.P13475171938011081300.a, A108099.P5915517825114269260.a, A069894, A069894.P6207372148760126868.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A108099

/-! ## A108099.P9825923537254038049

`4*A001844(n)`
-/

namespace A108099.P9825923537254038049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001844 n

end

end A108099.P9825923537254038049

namespace A108099

/-- `4*A001844(n)` -/
def P9825923537254038049.Spec : Prop :=
  ∀ n, P9825923537254038049.a n = A108099 n

theorem P9825923537254038049.correct : P9825923537254038049.Spec := by
  intro n
  simp only [A108099, Nat.add_sub_cancel, A108099.P9825923537254038049.a, A108099.P5915517825114269260.a, A001844, A001844.P5037395199076350534.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A108099

/-! ## A108099.P14905048051516979285

`or(4, ∑[16*n])`
-/

namespace A108099.P14905048051516979285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108099.P14905048051516979285

namespace A108099

/-- `or(4, ∑[16*n])` -/
def P14905048051516979285.Spec : Prop :=
  ∀ n, (P14905048051516979285.a n : ℤ) = A108099 n

end A108099

/-! ## A108099.P5063669998503149569

`xor(4, ∑[16*n])`
-/

namespace A108099.P5063669998503149569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108099.P5063669998503149569

namespace A108099

/-- `xor(4, ∑[16*n])` -/
def P5063669998503149569.Spec : Prop :=
  ∀ n, (P5063669998503149569.a n : ℤ) = A108099 n

end A108099

/-! ## A108099.P14899097922743246889

`lcm(2, Δ[n²]²)+2`
-/

namespace A108099.P14899097922743246889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) + 2

end

end A108099.P14899097922743246889

namespace A108099

/-- `lcm(2, Δ[n²]²)+2` -/
def P14899097922743246889.Spec : Prop :=
  ∀ n, (P14899097922743246889.a n : ℤ) = A108099 n

end A108099

/-! ## A108099.P15923020801209313337

`∑[a(n-1)+16]` with `a(0)=4, a(1)=16`
-/

namespace A108099.P15923020801209313337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 16] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108099.P15923020801209313337

namespace A108099

/-- `∑[a(n-1)+16]` -/
def P15923020801209313337.Spec : Prop :=
  ∀ n, (P15923020801209313337.a n : ℤ) = A108099 n

end A108099

/-! ## A108099.P8707574229464264520

`∑[ogf((4+8x+4x^2)/(1-2x+x^2))]`
-/

namespace A108099.P8707574229464264520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 8, 4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108099.P8707574229464264520

namespace A108099

/-- `∑[ogf((4+8x+4x^2)/(1-2x+x^2))]` -/
def P8707574229464264520.Spec : Prop :=
  ∀ n, P8707574229464264520.a n = A108099 n

end A108099

/-! ## A108099.P3395053309538069717

`or(4, Δ[(2*n)^3])/3`
-/

namespace A108099.P3395053309538069717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 4 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / 3

end

end A108099.P3395053309538069717

namespace A108099

/-- `or(4, Δ[(2*n)^3])/3` -/
def P3395053309538069717.Spec : Prop :=
  ∀ n, P3395053309538069717.a n = (A108099 n : ℚ)

end A108099

/-! ## A108099.P7679795698346387958

`xor(4, Δ[(2*n)^3])/3`
-/

namespace A108099.P7679795698346387958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 4 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / 3

end

end A108099.P7679795698346387958

namespace A108099

/-- `xor(4, Δ[(2*n)^3])/3` -/
def P7679795698346387958.Spec : Prop :=
  ∀ n, P7679795698346387958.a n = (A108099 n : ℚ)

end A108099

/-! ## A108099.P11793004729320277128

`ceil(2/acot(n+1+n)²)`
-/

namespace A108099.P11793004729320277128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n + 1 + n : ℝ) ^ 2⌉

end

end A108099.P11793004729320277128

namespace A108099

/-- `ceil(2/acot(n+1+n)²)` -/
def P11793004729320277128.Spec : Prop :=
  ∀ n, P11793004729320277128.a n = A108099 n

end A108099

/-! ## A108099.P11653061556774896094

`2/sin(acot(n+1+n))²`
-/

namespace A108099.P11653061556774896094
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 / Real.sin (SequenceMachineLib.acot (n + 1 + n : ℝ)) ^ 2

end

end A108099.P11653061556774896094

namespace A108099

/-- `2/sin(acot(n+1+n))²` -/
def P11653061556774896094.Spec : Prop :=
  ∀ n, P11653061556774896094.a n = (A108099 n : ℝ)

end A108099

/-! ## A108099.P7989345242332695039

`4*(1-∑[a(n-1)-4])` with `a(0)=0`
-/

namespace A108099.P7989345242332695039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108099.P7989345242332695039

namespace A108099

/-- `4*(1-∑[a(n-1)-4])` -/
def P7989345242332695039.Spec : Prop :=
  ∀ n, P7989345242332695039.a n = A108099 n

end A108099

/-! ## A108099.P8809064960257580391

`record[4-(2*n-lcm(n-1, 2*n))]`
-/

namespace A108099.P8809064960257580391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ((2 * n : ℤ) - (Int.lcm ((n : ℤ) - 1) (2 * n : ℤ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108099.P8809064960257580391

namespace A108099

/-- `record[4-(2*n-lcm(n-1, 2*n))]` -/
def P8809064960257580391.Spec : Prop :=
  ∀ n, P8809064960257580391.a n = A108099 n

end A108099

/-! ## A108099.P11355464146377836885

`Δ[A171272(n)]`
-/

namespace A108099.P11355464146377836885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108099.P11355464146377836885

namespace A108099

/-- `Δ[A171272(n)]` -/
def P11355464146377836885.Spec : Prop :=
  ∀ n, P11355464146377836885.a n = A108099 n

end A108099

/-! ## A108099.P10170649828753986092

`4*sqrt(A007204(n))`
-/

namespace A108099.P10170649828753986092
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  4 * Real.sqrt (A007204 n : ℝ)

end

end A108099.P10170649828753986092

namespace A108099

/-- `4*sqrt(A007204(n))` -/
def P10170649828753986092.Spec : Prop :=
  ∀ n, P10170649828753986092.a n = (A108099 n : ℝ)

end A108099

/-! ## A108099.P11682053234843847623

`Δ[2*A035597(n)]`
-/

namespace A108099.P11682053234843847623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035597 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108099.P11682053234843847623

namespace A108099

/-- `Δ[2*A035597(n)]` -/
def P11682053234843847623.Spec : Prop :=
  ∀ n, P11682053234843847623.a n = A108099 n

end A108099

/-! ## A108099.P5240861006008823561

`2*(A016754(n)+1)`
-/

namespace A108099.P5240861006008823561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A016754 n + 1)

end

end A108099.P5240861006008823561

namespace A108099

/-- `2*(A016754(n)+1)` -/
def P5240861006008823561.Spec : Prop :=
  ∀ n, P5240861006008823561.a n = A108099 n

theorem P5240861006008823561.correct : P5240861006008823561.Spec := by
  intro n
  simp only [A108099, Nat.add_sub_cancel, A108099.P5240861006008823561.a, A108099.P5915517825114269260.a, A016754, A016754.P2987865549988322084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A108099

