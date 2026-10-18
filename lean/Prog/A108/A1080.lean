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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
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
# A108012: a(n)= 8*a(n-1) -16*a(n-2) +4*a(n-4).

The programs for A108012, the canonical program `A108012.P425875185975206085` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108012 has offset 0).

The definition of A108012 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)-16*a(n-2)+4*a(n-4)` (program `A108012.P425875185975206085`, by `A108012.P425875185975206085.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108012.P425875185975206085

`8*a(n-1)-16*a(n-2)+4*a(n-4)` with `a(0)=0, a(1)=4, a(2)=18, a(3)=76`

The canonical program, it is in `Seq.B000.C014`.
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

/-! ## A108013.P15944558983297036424

`A354821(A301916(n+1))+A070155(n+1)`
-/

namespace A108013.P15944558983297036424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354821 (A301916 (n + 1)).toNat + A070155 (n + 1)

end

end A108013.P15944558983297036424

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

/-! ## A108013.P5447175338910819456

`∩[A014574(n+1), A070689(n+1)]-1`
-/

namespace A108013.P5447175338910819456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070689 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A108013.P5447175338910819456

/-! ## A108013.P6658690108728661210

`∩[A067720(n+1), A217259(n+1)]-1`
-/

namespace A108013.P6658690108728661210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A108013.P6658690108728661210

/-!
# A108014: Expansion of (x^2-2*x)/(x^4-x^2+2*x-1).

The programs for A108014, the canonical program `A108014.P11978945598734303668` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108014 has offset 0).

The definition of A108014 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108014.P11978945598734303668

`2*a(n-1)-a(n-2)+a(n-4)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A108014

/-- `2*a(n-1)-a(n-2)+a(n-4)` -/
def P11978945598734303668.Spec : Prop :=
  ∀ n, P11978945598734303668.a n = A108014 n

theorem P11978945598734303668.correct : P11978945598734303668.Spec := by
  intro n
  simp only [A108014]

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

theorem P3133290490615469389.correct : P3133290490615469389.Spec := by
  intro n
  simp only [A108014, Nat.add_sub_cancel, A108014.P3133290490615469389.a, A108014.P11978945598734303668.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

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

/-! ## A108014.P11153064485647462434

`Δ[abs(A111734(n+2))]`
-/

namespace A108014.P11153064485647462434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A111734 (n + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108014.P11153064485647462434

namespace A108014

/-- `Δ[abs(A111734(n+2))]` -/
def P11153064485647462434.Spec : Prop :=
  ∀ n, P11153064485647462434.a n = A108014 n

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

The programs for A108019, the canonical program `A108019.P2847691314268216021` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108019 has offset 0).

The definition of A108019 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8^n-1)*4/7` (program `A108019.P12161533131717061230`, by `A108019.P12161533131717061230.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108019.P2847691314268216021

`8*a(n-1)+4` with `a(0)=0`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A108019

/-- `8*a(n-1)+4` -/
def P2847691314268216021.Spec : Prop :=
  ∀ n, (P2847691314268216021.a n : ℤ) = A108019 n

theorem P2847691314268216021.correct : P2847691314268216021.Spec := by
  intro n
  simp only [A108019]

end A108019

/-! ## A108019.P12161533131717061230

`(8^n-1)*4/7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A108019.P12161533131717061230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 ^ n : ℤ) - 1 : ℚ) * ((4 : ℚ) / 7)

end

end A108019.P12161533131717061230

namespace A108019

/-- `(8^n-1)*4/7` -/
def P12161533131717061230.Spec : Prop :=
  ∀ n, P12161533131717061230.a n = (A108019 n : ℚ)

theorem P12161533131717061230.correct : P12161533131717061230.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A108019, Nat.add_sub_cancel, A108019.P12161533131717061230.a, A108019.P2847691314268216021.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A108019, Nat.add_sub_cancel, A108019.P12161533131717061230.a, A108019.P2847691314268216021.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

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

/-! ## A108019.P549616713793501342

`A083713(n)+A023001(n)`
-/

namespace A108019.P549616713793501342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083713 n + A023001 n

end

end A108019.P549616713793501342

namespace A108019

/-- `A083713(n)+A023001(n)` -/
def P549616713793501342.Spec : Prop :=
  ∀ n, P549616713793501342.a n = A108019 n

end A108019

/-! ## A108019.P17440746926836103030

`A023001(n)+A125835(n+1)+A023001(n)`
-/

namespace A108019.P17440746926836103030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 n + (A125835 (n + 1) + A023001 n)

end

end A108019.P17440746926836103030

namespace A108019

/-- `A023001(n)+A125835(n+1)+A023001(n)` -/
def P17440746926836103030.Spec : Prop :=
  ∀ n, P17440746926836103030.a n = A108019 n

end A108019

/-! ## A108019.P10187256312030084770

`a(n-1)+8^n/2` with `a(0)=0`
-/

namespace A108019.P10187256312030084770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (8 ^ n : ℚ) / 2

end

end A108019.P10187256312030084770

namespace A108019

/-- `a(n-1)+8^n/2` -/
def P10187256312030084770.Spec : Prop :=
  ∀ n, P10187256312030084770.a n = (A108019 n : ℚ)

end A108019

/-!
# A108020: a(n) is the number whose binary representation is the concatenation of n strings of the four digits "1100".

The programs for A108020, the canonical program `A108020.P10716569607337704714` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108020 has offset 0).

The definition of A108020 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108020.P17414626758081552829

`12*(16^n-1)/15`
-/

namespace A108020.P17414626758081552829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  12 * (((16 ^ n : ℤ) - 1 : ℚ) / 15)

end

end A108020.P17414626758081552829

namespace A108020

/-- `12*(16^n-1)/15` -/
def P17414626758081552829.Spec : Prop :=
  ∀ n, P17414626758081552829.a n = (A108020 n : ℚ)

theorem P17414626758081552829.correct : P17414626758081552829.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A108020, Nat.add_sub_cancel, A108020.P17414626758081552829.a, A108020.P10716569607337704714.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A108020, Nat.add_sub_cancel, A108020.P17414626758081552829.a, A108020.P10716569607337704714.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A108020

/-! ## A108020.P10716569607337704714

`17*a(n-1)-16*a(n-2)` with `a(0)=0, a(1)=12`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A108020

/-- `17*a(n-1)-16*a(n-2)` -/
def P10716569607337704714.Spec : Prop :=
  ∀ n, P10716569607337704714.a n = A108020 n

theorem P10716569607337704714.correct : P10716569607337704714.Spec := by
  intro n
  simp only [A108020]

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

/-! ## A108020.P6029843369847068245

`A299960(n)-1`
-/

namespace A108020.P6029843369847068245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299960 n - 1

end

end A108020.P6029843369847068245

namespace A108020

/-- `A299960(n)-1` -/
def P6029843369847068245.Spec : Prop :=
  ∀ n, P6029843369847068245.a n = A108020 n

end A108020

/-! ## A108020.P7673387420443295336

`A115243(2*n)`
-/

namespace A108020.P7673387420443295336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115243 (2 * n)

end

end A108020.P7673387420443295336

namespace A108020

/-- `A115243(2*n)` -/
def P7673387420443295336.Spec : Prop :=
  ∀ n, P7673387420443295336.a n = A108020 n

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

/-! ## A108021.P7658558422773504843

`A000975(A185357(n))`
-/

namespace A108021.P7658558422773504843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (A185357 n).toNat

end

end A108021.P7658558422773504843

/-! ## A108021.P15344944359453336609

`A287744(A001595(n))`
-/

namespace A108021.P15344944359453336609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287744 (A001595 n).toNat

end

end A108021.P15344944359453336609

/-! ## A108021.P8714010893434543767

`A287744(A154327(n))`
-/

namespace A108021.P8714010893434543767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287744 (A154327 n).toNat

end

end A108021.P8714010893434543767

/-!
# A108031: Inverse Moebius transform of Lucas numbers (A000032).

The programs for A108031, the canonical program `A108031.P3615489872226532230` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108031 has offset 1).

The definition of A108031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108031.P3615489872226532230

`∑{d}[n+1, abs(A061084(#))]`

The canonical program, it is in `Seq.B001.C003`.
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
# A108032: Triangle T(n,k), 0<=k<=n, read by rows, defined by : T(0,0) = 1, T(n,k) = 0 if n

The programs for A108032, there is no canonical definition to state claims against.
-/

/-! ## A108032.P15488247431013768291

`A368235(n)/A013609(n)`
-/

namespace A108032.P15488247431013768291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368235 n : ℚ) / (A013609 n : ℚ)

end

end A108032.P15488247431013768291

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

/-! ## A108032.P4364916014143493305

`A001147(A025581(n))*A008279(n)`
-/

namespace A108032.P4364916014143493305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (A025581 n).toNat * A008279 n

end

end A108032.P4364916014143493305

/-! ## A108032.P8789505217156237990

`A008279(n)*A133221(A099375(n))`
-/

namespace A108032.P8789505217156237990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A133221 (A099375 n).toNat

end

end A108032.P8789505217156237990

/-! ## A108032.P7758484631356197630

`A008279(n)*A124794(A140303(n))`
-/

namespace A108032.P7758484631356197630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A124794 (A140303 n).toNat

end

end A108032.P7758484631356197630

/-!
# A108033: n!*(3*n^2-13*n+14)/6.

The programs for A108033, the canonical program `A108033.P1116780111964730201` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108033 has offset 2).

The definition of A108033 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108033.P1116780111964730201

`(n+2)!*(3*(n+2)²-13*(n+2)+14)/6`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A108033

/-- `(n+2)!*(3*(n+2)²-13*(n+2)+14)/6` -/
def P1116780111964730201.Spec : Prop :=
  ∀ n, P1116780111964730201.a n = (A108033 (n + 2) : ℚ)

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

The programs for A108034, the canonical program `A108034.P14212735552757629682` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108034 has offset 4).

The definition of A108034 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108034.P14212735552757629682

`(n+4)!*(9*(n+4)^4-78*(n+4)^3+235*(n+4)²-438*(n+4)+680)/72`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A108034

/-- `(n+4)!*(9*(n+4)^4-78*(n+4)^3+235*(n+4)²-438*(n+4)+680)/72` -/
def P14212735552757629682.Spec : Prop :=
  ∀ n, P14212735552757629682.a n = (A108034 (n + 4) : ℚ)

end A108034

/-!
# A108035: Triangle read by rows: n-th row consists of n copies of the n-th nonzero Fibonacci number.

The programs for A108035, the canonical program `A108035.P3509439464980621154` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108035 has offset 1).

The definition of A108035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

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

The canonical program, it is in `Seq.B001.C003`.
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

/-! ## A108035.P13949808376590167998

`A079977(A111650(n+1))`
-/

namespace A108035.P13949808376590167998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (A111650 (n + 1)).toNat

end

end A108035.P13949808376590167998

namespace A108035

/-- `A079977(A111650(n+1))` -/
def P13949808376590167998.Spec : Prop :=
  ∀ n, P13949808376590167998.a n = A108035 (n + 1)

end A108035

/-! ## A108035.P10674464762963800830

`A209746(A057944(n)+1)`
-/

namespace A108035.P10674464762963800830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209746 (A057944 n + 1).toNat

end

end A108035.P10674464762963800830

namespace A108035

/-- `A209746(A057944(n)+1)` -/
def P10674464762963800830.Spec : Prop :=
  ∀ n, P10674464762963800830.a n = A108035 (n + 1)

end A108035

/-! ## A108035.P10566564746753050502

`A053602(A279891(n)+1)`
-/

namespace A108035.P10566564746753050502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A279891 n + 1).toNat

end

end A108035.P10566564746753050502

namespace A108035

/-- `A053602(A279891(n)+1)` -/
def P10566564746753050502.Spec : Prop :=
  ∀ n, P10566564746753050502.a n = A108035 (n + 1)

end A108035

/-! ## A108035.P14718865928255809579

`A212804(A133196(n+1))`
-/

namespace A108035.P14718865928255809579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A133196 (n + 1)).toNat

end

end A108035.P14718865928255809579

namespace A108035

/-- `A212804(A133196(n+1))` -/
def P14718865928255809579.Spec : Prop :=
  ∀ n, P14718865928255809579.a n = A108035 (n + 1)

end A108035

/-! ## A108035.P4011076415060461522

`A123231(A131507(n)+2)`
-/

namespace A108035.P4011076415060461522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123231 (A131507 n + 2).toNat

end

end A108035.P4011076415060461522

namespace A108035

/-- `A123231(A131507(n)+2)` -/
def P4011076415060461522.Spec : Prop :=
  ∀ n, P4011076415060461522.a n = A108035 (n + 1)

end A108035

/-! ## A108035.P1419023291627278700

`A079977(A279891(n)+2)`
-/

namespace A108035.P1419023291627278700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (A279891 n + 2).toNat

end

end A108035.P1419023291627278700

namespace A108035

/-- `A079977(A279891(n)+2)` -/
def P1419023291627278700.Spec : Prop :=
  ∀ n, P1419023291627278700.a n = A108035 (n + 1)

end A108035

/-! ## A108035.P6569890688584195707

`A058071(n)+A039913(n)`
-/

namespace A108035.P6569890688584195707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 n + A039913 n

end

end A108035.P6569890688584195707

namespace A108035

/-- `A058071(n)+A039913(n)` -/
def P6569890688584195707.Spec : Prop :=
  ∀ n, P6569890688584195707.a n = A108035 (n + 1)

end A108035

/-! ## A108035.P4064558040819229303

`A035506(n-A002262(n))`
-/

namespace A108035.P4064558040819229303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035506 ((n : ℤ) - A002262 n).toNat

end

end A108035.P4064558040819229303

namespace A108035

/-- `A035506(n-A002262(n))` -/
def P4064558040819229303.Spec : Prop :=
  ∀ n, P4064558040819229303.a n = A108035 (n + 1)

end A108035

/-! ## A108035.P17978368048633854836

`A324969(A002024(n+1)+2)`
-/

namespace A108035.P17978368048633854836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (A002024 (n + 1) + 2).toNat

end

end A108035.P17978368048633854836

namespace A108035

/-- `A324969(A002024(n+1)+2)` -/
def P17978368048633854836.Spec : Prop :=
  ∀ n, P17978368048633854836.a n = A108035 (n + 1)

end A108035

/-! ## A108035.P4210036985511517593

`A128588(A003056(n)+2)/2`
-/

namespace A108035.P4210036985511517593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128588 (A003056 n + 2).toNat : ℚ) / 2

end

end A108035.P4210036985511517593

namespace A108035

/-- `A128588(A003056(n)+2)/2` -/
def P4210036985511517593.Spec : Prop :=
  ∀ n, P4210036985511517593.a n = (A108035 (n + 1) : ℚ)

end A108035

/-! ## A108035.P16708459786461593604

`A193999(A004736(n+1)+n)`
-/

namespace A108035.P16708459786461593604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193999 (A004736 (n + 1) + (n : ℤ)).toNat

end

end A108035.P16708459786461593604

namespace A108035

/-- `A193999(A004736(n+1)+n)` -/
def P16708459786461593604.Spec : Prop :=
  ∀ n, P16708459786461593604.a n = A108035 (n + 1)

end A108035

/-!
# A108036: Triangle read by rows: the triangle in A108035 surrounded by a border of 0's.

The programs for A108036, the canonical program `A108036.P4284321019539104631` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108036 has offset 0).

The definition of A108036 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108036.P4284321019539104631

`A108037((n-1)%A007318(n)²)`

The canonical program, it is in `Seq.B006.C000`.
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

/-! ## A108036.P10719074908860595988

`A108037(n)%A015117(n)`
-/

namespace A108036.P10719074908860595988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108037 n) (A015117 n)

end

end A108036.P10719074908860595988

namespace A108036

/-- `A108037(n)%A015117(n)` -/
def P10719074908860595988.Spec : Prop :=
  ∀ n, P10719074908860595988.a n = A108036 n

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

The programs for A108037, the canonical program `A108037.P17027528278419021511` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108037 has offset 0).

The definition of A108037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

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

The canonical program, it is in `Seq.B001.C003`.
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

end A108037

/-! ## A108037.P12268057527942836874

`2*A039913(n)-A108038(n)`
-/

namespace A108037.P12268057527942836874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A039913 n - A108038 n

end

end A108037.P12268057527942836874

namespace A108037

/-- `2*A039913(n)-A108038(n)` -/
def P12268057527942836874.Spec : Prop :=
  ∀ n, P12268057527942836874.a n = A108037 n

end A108037

/-! ## A108037.P720340973408520567

`A108038(n)-2*A098356(n)`
-/

namespace A108037.P720340973408520567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108038 n - 2 * A098356 n

end

end A108037.P720340973408520567

namespace A108037

/-- `A108038(n)-2*A098356(n)` -/
def P720340973408520567.Spec : Prop :=
  ∀ n, P720340973408520567.a n = A108037 n

end A108037

/-! ## A108037.P4040551966282425144

`A039913(1-A002260(n+1)+n)`
-/

namespace A108037.P4040551966282425144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039913 (1 - A002260 (n + 1) + (n : ℤ)).toNat

end

end A108037.P4040551966282425144

namespace A108037

/-- `A039913(1-A002260(n+1)+n)` -/
def P4040551966282425144.Spec : Prop :=
  ∀ n, P4040551966282425144.a n = A108037 n

end A108037

/-! ## A108037.P468328257343108068

`A108035(n+1)-A131410(n+1)`
-/

namespace A108037.P468328257343108068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108035 (n + 1) - A131410 (n + 1)

end

end A108037.P468328257343108068

namespace A108037

/-- `A108035(n+1)-A131410(n+1)` -/
def P468328257343108068.Spec : Prop :=
  ∀ n, P468328257343108068.a n = A108037 n

end A108037

/-! ## A108037.P14758591229744265209

`A057427(n)*A212804(A002024(n+1))`
-/

namespace A108037.P14758591229744265209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A212804 (A002024 (n + 1)).toNat

end

end A108037.P14758591229744265209

namespace A108037

/-- `A057427(n)*A212804(A002024(n+1))` -/
def P14758591229744265209.Spec : Prop :=
  ∀ n, P14758591229744265209.a n = A108037 n

end A108037

/-! ## A108037.P10005089327107890417

`A075148(A286109(n))`
-/

namespace A108037.P10005089327107890417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075148 (A286109 n).toNat

end

end A108037.P10005089327107890417

namespace A108037

/-- `A075148(A286109(n))` -/
def P10005089327107890417.Spec : Prop :=
  ∀ n, P10005089327107890417.a n = A108037 n

end A108037

/-! ## A108037.P5204105959901724188

`A091562(A127739(n+1))`
-/

namespace A108037.P5204105959901724188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091562 (A127739 (n + 1)).toNat

end

end A108037.P5204105959901724188

namespace A108037

/-- `A091562(A127739(n+1))` -/
def P5204105959901724188.Spec : Prop :=
  ∀ n, P5204105959901724188.a n = A108037 n

end A108037

/-! ## A108037.P12554345740511368380

`A050609(A025581(n)+n)`
-/

namespace A108037.P12554345740511368380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050609 (A025581 n + (n : ℤ)).toNat

end

end A108037.P12554345740511368380

namespace A108037

/-- `A050609(A025581(n)+n)` -/
def P12554345740511368380.Spec : Prop :=
  ∀ n, P12554345740511368380.a n = A108037 n

end A108037

/-! ## A108037.P16974754894254401914

`A075148(A025581(n)+n)`
-/

namespace A108037.P16974754894254401914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075148 (A025581 n + (n : ℤ)).toNat

end

end A108037.P16974754894254401914

namespace A108037

/-- `A075148(A025581(n)+n)` -/
def P16974754894254401914.Spec : Prop :=
  ∀ n, P16974754894254401914.a n = A108037 n

end A108037

/-!
# A108038: Triangle read by rows: g.f. = (x+y+x*y)/((1-x-x^2)*(1-y-y^2)).

The programs for A108038, the canonical program `A108038.P748003239838837553` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108038 has offset 0).

The definition of A108038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

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

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A108038

/-- `A108037(n)+2*A098356(n)` -/
def P748003239838837553.Spec : Prop :=
  ∀ n, P748003239838837553.a n = A108038 n

theorem P748003239838837553.correct : P748003239838837553.Spec := by
  intro n
  simp only [A108038]

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

The programs for A108040, there is no canonical definition to state claims against.
-/

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

/-! ## A108040.P13604716611328595210

`A008281(A056011(n+1)-1)`
-/

namespace A108040.P13604716611328595210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 (A056011 (n + 1) - 1).toNat

end

end A108040.P13604716611328595210

/-! ## A108040.P9130860315405976504

`gcd(A000038(n), A008280(A061579(n)))`
-/

namespace A108040.P9130860315405976504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A008280 (A061579 n).toNat)

end

end A108040.P9130860315405976504

/-! ## A108040.P14821121338041649089

`A008280(A038722(n+1)-1)+A000038(n+1)`
-/

namespace A108040.P14821121338041649089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008280 (A038722 (n + 1) - 1).toNat + A000038 (n + 1)

end

end A108040.P14821121338041649089

/-! ## A108040.P183732667964149552

`A000035(2*n+1)*A008280(A114327(n)+n)`
-/

namespace A108040.P183732667964149552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1) * A008280 (A114327 n + (n : ℤ)).toNat

end

end A108040.P183732667964149552

/-! ## A108040.P1710488369407127851

`A010051(A007774(n+1))+A008280(A114327(n)+n)`
-/

namespace A108040.P1710488369407127851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A007774 (n + 1)).toNat + A008280 (A114327 n + (n : ℤ)).toNat

end

end A108040.P1710488369407127851

/-! ## A108040.P8731884661105526266

`A010051(A033993(n+1))+A008280(A114327(n)+n)`
-/

namespace A108040.P8731884661105526266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A033993 (n + 1)).toNat + A008280 (A114327 n + (n : ℤ)).toNat

end

end A108040.P8731884661105526266

/-! ## A108040.P15271029061801347687

`A010051(A100367(n+1))+A008280(A114327(n)+n)`
-/

namespace A108040.P15271029061801347687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A100367 (n + 1)).toNat + A008280 (A114327 n + (n : ℤ)).toNat

end

end A108040.P15271029061801347687

/-! ## A108040.P8198477902560753128

`A008280(A114327(n)+n)^A001222(A008578(n+1))`
-/

namespace A108040.P8198477902560753128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008280 (A114327 n + (n : ℤ)).toNat : ℚ) ^ (A001222 (A008578 (n + 1)).toNat : ℤ)

end

end A108040.P8198477902560753128

/-! ## A108040.P10618539869562090321

`A008280(A114327(n)+n)^A008683(A001748(n+1))`
-/

namespace A108040.P10618539869562090321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008280 (A114327 n + (n : ℤ)).toNat : ℚ) ^ (A008683 (A001748 (n + 1)).toNat : ℤ)

end

end A108040.P10618539869562090321

/-! ## A108040.P15992672380241906664

`A001222(A065091(n+1))*A008280(A038722(n+1)-1)`
-/

namespace A108040.P15992672380241906664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A065091 (n + 1)).toNat * A008280 (A038722 (n + 1) - 1).toNat

end

end A108040.P15992672380241906664

/-! ## A108040.P6821529380565706477

`A001222(A114262(n+2))*A008280(A038722(n+1)-1)`
-/

namespace A108040.P6821529380565706477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A114262 (n + 2)).toNat * A008280 (A038722 (n + 1) - 1).toNat

end

end A108040.P6821529380565706477

/-! ## A108040.P17495849601912923925

`A001221(A006093(n+1)+1)*A008280(A114327(n)+n)`
-/

namespace A108040.P17495849601912923925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A006093 (n + 1) + 1).toNat * A008280 (A114327 n + (n : ℤ)).toNat

end

end A108040.P17495849601912923925

/-! ## A108040.P1707161049440412917

`A001222(A270310(n+1))*A008280(A038722(n+1)-1)`
-/

namespace A108040.P1707161049440412917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A270310 (n + 1)).toNat * A008280 (A038722 (n + 1) - 1).toNat

end

end A108040.P1707161049440412917

/-! ## A108040.P15715477759468984693

`A010051(A001750(n+1))+A008280(A114327(n)+n)`
-/

namespace A108040.P15715477759468984693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A001750 (n + 1)).toNat + A008280 (A114327 n + (n : ℤ)).toNat

end

end A108040.P15715477759468984693

/-! ## A108040.P15682004032469828656

`A035673(2*n+1)+A008280(A114327(n)+n)`
-/

namespace A108040.P15682004032469828656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035673 (2 * n + 1) + A008280 (A114327 n + (n : ℤ)).toNat

end

end A108040.P15682004032469828656

/-! ## A108040.P3315858015463069523

`A010051(A051270(n+1))+A008280(A114327(n)+n)`
-/

namespace A108040.P3315858015463069523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A051270 (n + 1)).toNat + A008280 (A114327 n + (n : ℤ)).toNat

end

end A108040.P3315858015463069523

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

The programs for A108044, the canonical program `A108044.P8862669361882078575` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108044 has offset 0).

The definition of A108044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

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

The canonical program, it is in `Seq.B005.C000`.
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

The programs for A108045, the canonical program `A108045.P11058483694618656926` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108045 has offset 0).

The definition of A108045 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108045.P11058483694618656926

`A127672(2-(2-n)%(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A108045

/-- `A127672(2-(2-n)%(n+1))` -/
def P11058483694618656926.Spec : Prop :=
  ∀ n, P11058483694618656926.a n = A108045 n

theorem P11058483694618656926.correct : P11058483694618656926.Spec := by
  intro n
  simp only [A108045]

end A108045

/-! ## A108045.P3677500238724064532

`A127672(A000038(n)+n)`
-/

namespace A108045.P3677500238724064532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127672 (A000038 n + (n : ℤ)).toNat

end

end A108045.P3677500238724064532

namespace A108045

/-- `A127672(A000038(n)+n)` -/
def P3677500238724064532.Spec : Prop :=
  ∀ n, P3677500238724064532.a n = A108045 n

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

/-! ## A108045.P2385616259293887595

`A127672(2*A000007(n)+n)`
-/

namespace A108045.P2385616259293887595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127672 (2 * A000007 n + (n : ℤ)).toNat

end

end A108045.P2385616259293887595

namespace A108045

/-- `A127672(2*A000007(n)+n)` -/
def P2385616259293887595.Spec : Prop :=
  ∀ n, P2385616259293887595.a n = A108045 n

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

/-! ## A108045.P12394657468824805877

`A127672(n)-∏{p}[2*n, A332548(#)]`
-/

namespace A108045.P12394657468824805877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127672 n - ∏ p ∈ Nat.primeFactors (f1 n), A332548 p

end

end A108045.P12394657468824805877

namespace A108045

/-- `A127672(n)-∏{p}[2*n, A332548(#)]` -/
def P12394657468824805877.Spec : Prop :=
  ∀ n, P12394657468824805877.a n = A108045 n

end A108045

/-! ## A108045.P17882625413451628257

`A127672(A000007(n)+A000007(n)+n)`
-/

namespace A108045.P17882625413451628257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127672 (A000007 n + (A000007 n + (n : ℤ))).toNat

end

end A108045.P17882625413451628257

namespace A108045

/-- `A127672(A000007(n)+A000007(n)+n)` -/
def P17882625413451628257.Spec : Prop :=
  ∀ n, P17882625413451628257.a n = A108045 n

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

/-! ## A108045.P9712293775699115279

`A127672(A127672(n)*A169585(n)+n)`
-/

namespace A108045.P9712293775699115279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127672 (A127672 n * A169585 n + (n : ℤ)).toNat

end

end A108045.P9712293775699115279

namespace A108045

/-- `A127672(A127672(n)*A169585(n)+n)` -/
def P9712293775699115279.Spec : Prop :=
  ∀ n, P9712293775699115279.a n = A108045 n

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

/-! ## A108045.P8995241066626526918

`A127672(n)-A127672(A127677(n)/A110162(n))`
-/

namespace A108045.P8995241066626526918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127672 n - A127672 (SequenceMachineLib.roundAway ((A127677 n : ℚ) / (A110162 n : ℚ))).toNat

end

end A108045.P8995241066626526918

namespace A108045

/-- `A127672(n)-A127672(A127677(n)/A110162(n))` -/
def P8995241066626526918.Spec : Prop :=
  ∀ n, P8995241066626526918.a n = A108045 n

end A108045

/-!
# A108046: Inverse Moebius transform of Fibonacci numbers 0, 1, 1, 2, 3, 5, 8, ...

The programs for A108046, the canonical program `A108046.P11021715180848033602` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108046 has offset 1).

The definition of A108046 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

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

/-! ## A108046.P11021715180848033602

`∑{d}[n+1, A000045(#-1)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A108046

/-- `∑{d}[n+1, A000045(#-1)]` -/
def P11021715180848033602.Spec : Prop :=
  ∀ n, P11021715180848033602.a n = A108046 (n + 1)

theorem P11021715180848033602.correct : P11021715180848033602.Spec := by
  intro n
  simp only [A108046, Nat.add_sub_cancel]

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

The programs for A108047, the canonical program `A108047.P16253337058790100000` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108047 has offset 1).

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

The canonical program, it is in `Seq.B001.C003`.
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

/-! ## A108047.P10624976613964876977

`A214326(∑[n+1])`
-/

namespace A108047.P10624976613964876977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214326 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108047.P10624976613964876977

namespace A108047

/-- `A214326(∑[n+1])` -/
def P10624976613964876977.Spec : Prop :=
  ∀ n, P10624976613964876977.a n = A108047 (n + 1)

end A108047

/-! ## A108047.P11729150616890358973

`A214679(∑[n+1])`
-/

namespace A108047.P11729150616890358973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214679 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108047.P11729150616890358973

namespace A108047

/-- `A214679(∑[n+1])` -/
def P11729150616890358973.Spec : Prop :=
  ∀ n, P11729150616890358973.a n = A108047 (n + 1)

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

The programs for A108051, the canonical program `A108051.P14203656388108453725` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108051 has offset 0).

The definition of A108051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108051.P14203656388108453725

`4*(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1, a(2)=6`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A108051

/-- `4*(a(n-1)+a(n-2))` -/
def P14203656388108453725.Spec : Prop :=
  ∀ n, (P14203656388108453725.a n : ℤ) = A108051 n

theorem P14203656388108453725.correct : P14203656388108453725.Spec := by
  intro n
  simp only [A108051]

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

/-! ## A108062.P9785813707830515258

`(A353756(2*n+5)+A007671(n+1))/2`
-/

namespace A108062.P9785813707830515258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353756 (2 * n + 5) + A007671 (n + 1) : ℚ) / 2

end

end A108062.P9785813707830515258

/-!
# A108063: Triangle, read by rows, where T(n,k) = A006498(n+1) - A106408(n,k). A006498 are the central numbers of A106408.

The programs for A108063, the canonical program `A108063.P12610813069636294894` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108063 has offset 1).

The definition of A108063 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108063.P12610813069636294894

`A058071(n)-A006498(A003056(n))`

The canonical program, it is in `Seq.B005.C000`.
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

The programs for A108073, there is no canonical definition to state claims against.
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

/-! ## A108073.P2787569573135128725

`xor(1, xor(1, A071943(A061579(n))))`
-/

namespace A108073.P2787569573135128725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A071943 (A061579 n).toNat))

end

end A108073.P2787569573135128725

/-! ## A108073.P12852450871599804078

`gcd(A000038(n), A071943(A061579(n)))`
-/

namespace A108073.P12852450871599804078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A071943 (A061579 n).toNat)

end

end A108073.P12852450871599804078

/-! ## A108073.P14374846521543400790

`A007318(C(2, n))*A071943(A061579(n))`
-/

namespace A108073.P14374846521543400790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A071943 (A061579 n).toNat

end

end A108073.P14374846521543400790

/-! ## A108073.P3084289424066156722

`A071943(A061579(n))+A008683(4*(n+1))`
-/

namespace A108073.P3084289424066156722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071943 (A061579 n).toNat + A008683 (4 * (n + 1))

end

end A108073.P3084289424066156722

/-! ## A108073.P6575296899765553879

`C(A071943(A061579(n)), A000203(((-1)^n)²))`
-/

namespace A108073.P6575296899765553879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A071943 (A061579 n).toNat).toNat (A000203 (((-1) ^ n) ^ 2).toNat).toNat

end

end A108073.P6575296899765553879

/-! ## A108073.P4104088684583048973

`A000040(n+2)%2*A071943(A061579(n))`
-/

namespace A108073.P4104088684583048973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * A071943 (A061579 n).toNat

end

end A108073.P4104088684583048973

/-! ## A108073.P8547659754422116270

`lcm(A007318(C(n, 2)), A071943(A061579(n)))`
-/

namespace A108073.P8547659754422116270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 (Nat.choose n 2)) (A071943 (A061579 n).toNat)

end

end A108073.P8547659754422116270

/-!
# A108074: Triangle in A071944 with rows reversed.

The programs for A108074, there is no canonical definition to state claims against.
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

/-! ## A108074.P540550161222459640

`gcd(A000038(n), A071944(A061579(n)))`
-/

namespace A108074.P540550161222459640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A071944 (A061579 n).toNat)

end

end A108074.P540550161222459640

/-! ## A108074.P17710870075523507379

`lcm(A033999(n), A071944(A061579(n)))`
-/

namespace A108074.P17710870075523507379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A071944 (A061579 n).toNat)

end

end A108074.P17710870075523507379

/-! ## A108074.P11910882332220903325

`A007318(C(2, n)+1)*A071944(A061579(n))`
-/

namespace A108074.P11910882332220903325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n + 1) * A071944 (A061579 n).toNat

end

end A108074.P11910882332220903325

/-! ## A108074.P12724833337671461977

`A071944(A061579(n))%A000045(n+3)`
-/

namespace A108074.P12724833337671461977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071944 (A061579 n).toNat) (A000045 (n + 3))

end

end A108074.P12724833337671461977

/-! ## A108074.P9862394143878990506

`∑{d}[A071944(A061579(n)), A000010(#)]`
-/

namespace A108074.P9862394143878990506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071944 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A108074.P9862394143878990506

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

The programs for A108076, there is no canonical definition to state claims against.
-/

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

/-! ## A108076.P13955037280056738961

`xor(1, xor(1, A071946(A061579(n))))`
-/

namespace A108076.P13955037280056738961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A071946 (A061579 n).toNat))

end

end A108076.P13955037280056738961

/-! ## A108076.P16488489767699293996

`gcd(A000038(n), A071946(A061579(n)))`
-/

namespace A108076.P16488489767699293996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A071946 (A061579 n).toNat)

end

end A108076.P16488489767699293996

/-! ## A108076.P6994038754510596889

`lcm(A033999(n), A071946(A061579(n)))`
-/

namespace A108076.P6994038754510596889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A071946 (A061579 n).toNat)

end

end A108076.P6994038754510596889

/-! ## A108076.P7515806007561007139

`or(A000007(n), A071946(A061579(n)))`
-/

namespace A108076.P7515806007561007139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A071946 (A061579 n).toNat)

end

end A108076.P7515806007561007139

/-! ## A108076.P12456716318609702451

`A071946(A061579(n))-A000005(a((3%n)%2))+1` with `a(0)=1, a(1)=1`
-/

namespace A108076.P12456716318609702451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A071946 (A061579 n).toNat - A000005 (a (3 % n % 2)).toNat + 1

end

end A108076.P12456716318609702451

/-!
# A108077: Largest prime p such that p-1 divides n.

The programs for A108077, the canonical program `A108077.P8095265619995363254` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108077 has offset 1).

The definition of A108077 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A027760, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A108077.P8095265619995363254

`A006530(A027760(n+1))`

The canonical program, it is in `Seq.B014.C000`.
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

/-!
# A108078: Determinant of a Hankel matrix with factorial elements.

The programs for A108078, the canonical program `A108078.P9221918094347988259` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108078 has offset 0).

The definition of A108078 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108078.P9221918094347988259

`A059332(n)*(n+1)!`

The canonical program, it is in `Seq.B001.C003`.
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

The programs for A108079, the canonical program `A108079.P2571972727151902477` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108079 has offset 0).

The definition of A108079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108079.P2571972727151902477

`A117671(n)-A001791(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A108079

/-- `A117671(n)-A001791(n)` -/
def P2571972727151902477.Spec : Prop :=
  ∀ n, P2571972727151902477.a n = A108079 n

theorem P2571972727151902477.correct : P2571972727151902477.Spec := by
  intro n
  simp only [A108079]

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

The programs for A108080, there is no canonical definition to state claims against.
-/

/-! ## A108080.P17206432539219488920

`A026847(2*n)`
-/

namespace A108080.P17206432539219488920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026847 (2 * n)

end

end A108080.P17206432539219488920

/-! ## A108080.P4881722485322927603

`A010752(3*n)`
-/

namespace A108080.P4881722485322927603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010752 (3 * n)

end

end A108080.P4881722485322927603

/-! ## A108080.P6003054440888230054

`A054441(n)+A026726(n)`
-/

namespace A108080.P6003054440888230054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054441 n + A026726 n

end

end A108080.P6003054440888230054

/-! ## A108080.P13413829006600517900

`A390266(n)-A054441(n)`
-/

namespace A108080.P13413829006600517900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390266 n - A054441 n

end

end A108080.P13413829006600517900

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

/-! ## A108080.P6019588501101700512

`A026674(n+1)-A001791(n)`
-/

namespace A108080.P6019588501101700512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026674 (n + 1) - A001791 n

end

end A108080.P6019588501101700512

/-! ## A108080.P1216694288336923875

`A165201(n+1)-A001791(n)`
-/

namespace A108080.P1216694288336923875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165201 (n + 1) - A001791 n

end

end A108080.P1216694288336923875

/-! ## A108080.P6374282953499573718

`A026676(2*n+1)-A001791(n)`
-/

namespace A108080.P6374282953499573718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026676 (2 * n + 1) - A001791 n

end

end A108080.P6374282953499573718

/-! ## A108080.P1506267078162022569

`A026674(n+1)-n*A000108(n)`
-/

namespace A108080.P1506267078162022569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026674 (n + 1) - (n : ℤ) * A000108 n

end

end A108080.P1506267078162022569

/-! ## A108080.P13820916180985608279

`(A026731(2*n)+A026678(2*n))/2`
-/

namespace A108080.P13820916180985608279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026731 (2 * n) + A026678 (2 * n) : ℚ) / 2

end

end A108080.P13820916180985608279

/-! ## A108080.P292680468230360646

`(A026743(2*n)+A026731(2*n))/2`
-/

namespace A108080.P292680468230360646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026743 (2 * n) + A026731 (2 * n) : ℚ) / 2

end

end A108080.P292680468230360646

/-! ## A108080.P139621792789653740

`(A026742(2*n+1)+A026733(2*n))/2`
-/

namespace A108080.P139621792789653740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026742 (2 * n + 1) + A026733 (2 * n) : ℚ) / 2

end

end A108080.P139621792789653740

/-! ## A108080.P7699662515639086057

`A026732(2*n+1)+A026732(2*n)-A026677(2*n+1)`
-/

namespace A108080.P7699662515639086057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026732 (2 * n + 1) + (A026732 (2 * n) - A026677 (2 * n + 1))

end

end A108080.P7699662515639086057

/-! ## A108080.P11039341322683889472

`A026743(2*n+1)+A026732(2*n)-A026732(2*n+1)`
-/

namespace A108080.P11039341322683889472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026743 (2 * n + 1) + (A026732 (2 * n) - A026732 (2 * n + 1))

end

end A108080.P11039341322683889472

/-!
# A108081: a(n) = Sum_{i=0..n} binomial(2*n-i, n+i).

The programs for A108081, there is no canonical definition to state claims against.
-/

/-! ## A108081.P10192310842843197706

`A010757(3*n)`
-/

namespace A108081.P10192310842843197706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010757 (3 * n)

end

end A108081.P10192310842843197706

/-! ## A108081.P10512458907243981229

`A257838(n)+A081696(n)`
-/

namespace A108081.P10512458907243981229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257838 n + A081696 n

end

end A108081.P10512458907243981229

/-! ## A108081.P6630090265248375343

`A371870(n)+A176085(n)`
-/

namespace A108081.P6630090265248375343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371870 n + A176085 n

end

end A108081.P6630090265248375343

/-! ## A108081.P10199581490510874834

`A028329(n)-A268407(n)`
-/

namespace A108081.P10199581490510874834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028329 n - A268407 n

end

end A108081.P10199581490510874834

/-! ## A108081.P1249269570781850362

`A277287(n)-A176085(n)`
-/

namespace A108081.P1249269570781850362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277287 n - A176085 n

end

end A108081.P1249269570781850362

/-! ## A108081.P11245459625169713428

`A176085(n+1)-A257838(n)`
-/

namespace A108081.P11245459625169713428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176085 (n + 1) - A257838 n

end

end A108081.P11245459625169713428

/-! ## A108081.P10054116864490734997

`2*A000984(n)-A268407(n)`
-/

namespace A108081.P10054116864490734997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000984 n - A268407 n

end

end A108081.P10054116864490734997

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

/-! ## A108081.P344260604236616114

`A126869(2*n)+A010756(A008486(n))`
-/

namespace A108081.P344260604236616114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * n) + A010756 (A008486 n).toNat

end

end A108081.P344260604236616114

/-! ## A108081.P16439004350572547239

`A000984(n)-(A176085(n)-A257838(n))`
-/

namespace A108081.P16439004350572547239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - (A176085 n - A257838 n)

end

end A108081.P16439004350572547239

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

/-! ## A108081.P12364739596179310731

`A026671(n)+A257838(n)-A014445(n)`
-/

namespace A108081.P12364739596179310731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026671 n + (A257838 n - A014445 n)

end

end A108081.P12364739596179310731

/-! ## A108081.P8525630226468994990

`A176280(n)+A257838(n)-A001076(n)`
-/

namespace A108081.P8525630226468994990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176280 n + (A257838 n - A001076 n)

end

end A108081.P8525630226468994990

/-!
# A108082: a(n) = Sum_{i=0..n} binomial(2n+i,2i).

The programs for A108082, there is no canonical definition to state claims against.
-/

/-! ## A108082.P9629988117145687163

`A010759(4*n)`
-/

namespace A108082.P9629988117145687163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010759 (4 * n)

end

end A108082.P9629988117145687163

/-! ## A108082.P2590962405017982605

`A027935(A062728(n))`
-/

namespace A108082.P2590962405017982605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027935 (A062728 n).toNat

end

end A108082.P2590962405017982605

/-! ## A108082.P11130874662418719873

`A105809(A062725(n))`
-/

namespace A108082.P11130874662418719873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105809 (A062725 n).toNat

end

end A108082.P11130874662418719873

/-! ## A108082.P7665052778428351499

`A228074(A064225(n))`
-/

namespace A108082.P7665052778428351499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228074 (A064225 n).toNat

end

end A108082.P7665052778428351499

/-! ## A108082.P3792798432530063405

`A136431(A062708(n+1))`
-/

namespace A108082.P3792798432530063405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136431 (A062708 (n + 1)).toNat

end

end A108082.P3792798432530063405

/-!
# A108084: Triangle, read by rows, where T(0,0) = 1, T(n,k) = 2^n*T(n-1,k) + T(n-1,k-1).

The programs for A108084, there is no canonical definition to state claims against.
-/

/-! ## A108084.P238809893475433101

`abs(A108085(n))`
-/

namespace A108084.P238809893475433101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108085 n|

end

end A108084.P238809893475433101

/-! ## A108084.P17262436125948002947

`gcd(A000038(n), A108085(n))`
-/

namespace A108084.P17262436125948002947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A108085 n)

end

end A108084.P17262436125948002947

/-! ## A108084.P3917923396284400450

`lcm(A020985(n), A108085(n))`
-/

namespace A108084.P3917923396284400450
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A108085 n)

end

end A108084.P3917923396284400450

/-! ## A108084.P8998143154129049507

`abs(A130321(n)*A135950(n))`
-/

namespace A108084.P8998143154129049507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130321 n * A135950 n|

end

end A108084.P8998143154129049507

/-! ## A108084.P12611852116423697231

`abs(A130321(n)*A157963(n))`
-/

namespace A108084.P12611852116423697231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130321 n * A157963 n|

end

end A108084.P12611852116423697231

/-! ## A108084.P10629519839912542763

`gcd(A135950(n), A157963(n))*A130321(n)`
-/

namespace A108084.P10629519839912542763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A135950 n) (A157963 n) : ℤ) * A130321 n

end

end A108084.P10629519839912542763

/-! ## A108084.P3837626051282740051

`sqrt(A157963(n)²*A262616(n))`
-/

namespace A108084.P3837626051282740051
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A157963 n ^ 2 * A262616 n : ℝ)

end

end A108084.P3837626051282740051

/-! ## A108084.P11231519038920863746

`sqrt(A108085(n)^A108077(2*n+1))`
-/

namespace A108084.P11231519038920863746
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A108085 n : ℚ) ^ (A108077 (2 * n + 1) : ℤ) : ℝ)

end

end A108084.P11231519038920863746

/-! ## A108084.P9025888374425849278

`abs(A157963(n))*A001316(A173787(n))`
-/

namespace A108084.P9025888374425849278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157963 n| * A001316 (A173787 n).toNat

end

end A108084.P9025888374425849278

/-! ## A108084.P15907866177958214852

`A007955(A130321(n))*A022166(n)`
-/

namespace A108084.P15907866177958214852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A130321 n).toNat * A022166 n

end

end A108084.P15907866177958214852

/-!
# A108085: Triangle, read by rows, where T(0,0) = 1, T(n,k) = 2^n*T(n-1,k) - T(n-1,k-1).

The programs for A108085, there is no canonical definition to state claims against.
-/

/-! ## A108085.P14630417568497995609

`A130321(n)*A157963(n)`
-/

namespace A108085.P14630417568497995609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A157963 n

end

end A108085.P14630417568497995609

/-! ## A108085.P13815962823668866666

`sqrt(A262616(n))*A157963(n)`
-/

namespace A108085.P13815962823668866666
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ) * (A157963 n : ℝ)

end

end A108085.P13815962823668866666

/-! ## A108085.P10179664951853442057

`A000079(A025581(n))*A157963(n)`
-/

namespace A108085.P10179664951853442057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat * A157963 n

end

end A108085.P10179664951853442057

/-! ## A108085.P5503211169138213314

`A033999(A061885(n))*A108084(n)`
-/

namespace A108085.P5503211169138213314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A061885 n).toNat * A108084 n

end

end A108085.P5503211169138213314

/-! ## A108085.P184769198859341058

`A001316(A173787(n))*A157963(n)`
-/

namespace A108085.P184769198859341058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A173787 n).toNat * A157963 n

end

end A108085.P184769198859341058

/-!
# A108086: Triangle, read by rows, where T(0,0) = 1, T(n,k) = (-1)^(n+k)*T(n-1,k) + T(n-1,k-1); a signed version of Pascal's triangle.

The programs for A108086, the canonical program `A108086.P12141036559264490002` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108086 has offset 0).

The definition of A108086 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

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

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A108086

/-- `A007318(n)*A087960(A025581(n))` -/
def P12141036559264490002.Spec : Prop :=
  ∀ n, P12141036559264490002.a n = A108086 n

theorem P12141036559264490002.correct : P12141036559264490002.Spec := by
  intro n
  simp only [A108086]

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

/-! ## A108086.P5003895569246695051

`A007318(n)*A033999(A163233(n))`
-/

namespace A108086.P5003895569246695051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A033999 (A163233 n).toNat

end

end A108086.P5003895569246695051

namespace A108086

/-- `A007318(n)*A033999(A163233(n))` -/
def P5003895569246695051.Spec : Prop :=
  ∀ n, P5003895569246695051.a n = A108086 n

end A108086

/-! ## A108086.P5578577662941131568

`ceil(A134060(n)/3)*A057077(A004736(n+1))`
-/

namespace A108086.P5578577662941131568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134060 n : ℚ) / 3⌉ * A057077 (A004736 (n + 1)).toNat

end

end A108086.P5578577662941131568

namespace A108086

/-- `ceil(A134060(n)/3)*A057077(A004736(n+1))` -/
def P5578577662941131568.Spec : Prop :=
  ∀ n, P5578577662941131568.a n = A108086 n

end A108086

/-! ## A108086.P2166255954783290598

`A007318(n)*A057077(A214661(n+1))`
-/

namespace A108086.P2166255954783290598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A057077 (A214661 (n + 1)).toNat

end

end A108086.P2166255954783290598

namespace A108086

/-- `A007318(n)*A057077(A214661(n+1))` -/
def P2166255954783290598.Spec : Prop :=
  ∀ n, P2166255954783290598.a n = A108086 n

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

The programs for A108099, the canonical program `A108099.P5915517825114269260` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108099 has offset 0).

The definition of A108099 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*n²+8*n+4` (program `A108099.P5915517825114269260`, by `A108099.P5915517825114269260.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108099.P15503627916074232769

`8*n*(n+1)+4`
-/

namespace A108099.P15503627916074232769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (n * (n + 1)) + 4

end

end A108099.P15503627916074232769

namespace A108099

/-- `8*n*(n+1)+4` -/
def P15503627916074232769.Spec : Prop :=
  ∀ n, (P15503627916074232769.a n : ℤ) = A108099 n

theorem P15503627916074232769.correct : P15503627916074232769.Spec := by
  intro n
  simp only [A108099, Nat.add_sub_cancel, A108099.P15503627916074232769.a, A108099.P5915517825114269260.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A108099

/-! ## A108099.P5915517825114269260

`8*n²+8*n+4`

The canonical program, it is in `Seq.B000.C015`.
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

/-! ## A108099.P9413326284519330367

`lcm(4, Δ[n²]²+1)`
-/

namespace A108099.P9413326284519330367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 + 1)

end

end A108099.P9413326284519330367

namespace A108099

/-- `lcm(4, Δ[n²]²+1)` -/
def P9413326284519330367.Spec : Prop :=
  ∀ n, (P9413326284519330367.a n : ℤ) = A108099 n

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

end A108099

