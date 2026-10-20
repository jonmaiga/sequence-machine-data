import SequenceMachineLib
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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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

/-!
# A353302: Numbers k such that A004394(k)-1 and A004394(k)+1 are twin primes.

The programs for A353302, there is no canonical definition to state claims against.
-/

/-! ## A353302.P18180694734508050327

`∩[A353300(n+1), A353301(n+1)]`
-/

namespace A353302.P18180694734508050327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353302.P18180694734508050327

/-!
# A353303: Number of factorizations of n into factors k > 1 for which A156552(k) is a multiple of three.

The programs for A353303, there is no canonical definition to state claims against.
-/

/-! ## A353303.P2881572639602138058

`A353269(n+1)*A353376(A305564(n+1))`
-/

namespace A353303.P2881572639602138058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353269 (n + 1) * A353376 (A305564 (n + 1)).toNat

end

end A353303.P2881572639602138058

/-! ## A353303.P15325462413068638079

`A196564(A165827(n+1)*A353269(n+1))`
-/

namespace A353303.P15325462413068638079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A165827 (n + 1) * A353269 (n + 1)).toNat

end

end A353303.P15325462413068638079

/-! ## A353303.P1002026226788144134

`A052409(gcd(A111304(n+1), A323902(n+1)))`
-/

namespace A353303.P1002026226788144134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (Int.gcd (A111304 (n + 1)) (A323902 (n + 1)))

end

end A353303.P1002026226788144134

/-! ## A353303.P5297935408333134843

`A353333(A349294(n+1))`
-/

namespace A353303.P5297935408333134843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353333 (A349294 (n + 1)).toNat

end

end A353303.P5297935408333134843

/-! ## A353303.P821465787483562067

`A353333(n+1)%A002907(n)`
-/

namespace A353303.P821465787483562067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353333 (n + 1)) (A002907 n)

end

end A353303.P821465787483562067

/-!
# A353304: Number of factorizations of n^2 into factors k > 1 for which A156552(k) is a multiple of three.

The programs for A353304, there is no canonical definition to state claims against.
-/

/-! ## A353304.P14857897819703185140

`A353303((n+1)²)`
-/

namespace A353304.P14857897819703185140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353303 ((n + 1) ^ 2)

end

end A353304.P14857897819703185140

/-! ## A353304.P9833244645095958493

`A000027(A353303(∑[2*n+1]))`
-/

namespace A353304.P9833244645095958493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A353303 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A353304.P9833244645095958493

/-! ## A353304.P9380191828069747464

`A028310(A353303((n+1)*(n+1)))`
-/

namespace A353304.P9380191828069747464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A353303 ((n + 1) * (n + 1))).toNat

end

end A353304.P9380191828069747464

/-! ## A353304.P11550863335982716676

`A353303(∑[2*n+1])%A069894(n)`
-/

namespace A353304.P11550863335982716676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353303 (∑ j ∈ Finset.range (n + 1), f1 j)) (A069894 n)

end

end A353304.P11550863335982716676

/-! ## A353304.P4634175092350648770

`A353303(∑[2*n+1])+A045838(2*n)`
-/

namespace A353304.P4634175092350648770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353303 (∑ j ∈ Finset.range (n + 1), f1 j) + A045838 (2 * n)

end

end A353304.P4634175092350648770

/-! ## A353304.P12951553886047324819

`A353303(∑[2*n+1])+char[A206042(n+1)]`
-/

namespace A353304.P12951553886047324819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206042 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353303 (∑ j ∈ Finset.range (n + 1), f1 j) + ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A353304.P12951553886047324819

/-! ## A353304.P10988834339078643493

`A353303(A000290(n+1))%A046301(n+1)`
-/

namespace A353304.P10988834339078643493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353303 (A000290 (n + 1)).toNat) (A046301 (n + 1))

end

end A353304.P10988834339078643493

/-! ## A353304.P13732618525498732338

`A353303(A253909(n+1))%A046301(n+1)`
-/

namespace A353304.P13732618525498732338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353303 (A253909 (n + 1)).toNat) (A046301 (n + 1))

end

end A353304.P13732618525498732338

/-! ## A353304.P10811749215288550326

`A348507(A240233(n+1))*A353303(∑[2*n+1])`
-/

namespace A353304.P10811749215288550326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348507 (A240233 (n + 1)).toNat * A353303 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A353304.P10811749215288550326

/-!
# A353306: Numbers k such that 1 is in the transitive closure of the map x -> A353313(x) when starting iterating from x=k.

The programs for A353306, there is no canonical definition to state claims against.
-/

/-! ## A353306.P11314277793193224220

`eq[4, A353312(n)]`
-/

namespace A353306.P11314277793193224220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353312 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353306.P11314277793193224220

/-! ## A353306.P10556830499330390878

`lt[4, A353312(A353312(n)²)]`
-/

namespace A353306.P10556830499330390878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353312 (A353312 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A353306.P10556830499330390878

/-! ## A353306.P3275182469293380346

`lt[A260178(A353312(n+1)), 2]+1`
-/

namespace A353306.P3275182469293380346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260178 (A353312 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A353306.P3275182469293380346

/-! ## A353306.P4621344826143514566

`lt[A048730(A353312(n)), A000120(n)]`
-/

namespace A353306.P4621344826143514566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048730 (A353312 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A353306.P4621344826143514566

/-! ## A353306.P13985787170071754943

`lt[A057427(n+2), A353332(A353312(n))]`
-/

namespace A353306.P13985787170071754943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353332 (A353312 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A353306.P13985787170071754943

/-!
# A353307: a(n) = 1 if A156552(n) == 1 (mod 3), otherwise 0.

The programs for A353307, the canonical program `A353307.P15274221953484003617` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353307 has offset 1).

The definition of A353307 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353269, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353307.P15274221953484003617

`A353269(2*(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A353307

/-- `A353269(2*(n+1))` -/
def P15274221953484003617.Spec : Prop :=
  ∀ n, P15274221953484003617.a n = A353307 (n + 1)

theorem P15274221953484003617.correct : P15274221953484003617.Spec := by
  intro n
  simp only [A353307, Nat.add_sub_cancel]

end A353307

/-! ## A353307.P12829961514137590098

`A329903(n+1)%2`
-/

namespace A353307.P12829961514137590098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329903 (n + 1)) 2

end

end A353307.P12829961514137590098

namespace A353307

/-- `A329903(n+1)%2` -/
def P12829961514137590098.Spec : Prop :=
  ∀ n, P12829961514137590098.a n = A353307 (n + 1)

end A353307

/-! ## A353307.P14837393184788426298

`ceil(A332814(n+1)/2)`
-/

namespace A353307.P14837393184788426298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A332814 (n + 1) : ℚ) / 2⌉

end

end A353307.P14837393184788426298

namespace A353307

/-- `ceil(A332814(n+1)/2)` -/
def P14837393184788426298.Spec : Prop :=
  ∀ n, P14837393184788426298.a n = A353307 (n + 1)

end A353307

/-! ## A353307.P15126252011691585315

`ceil(A341354(n+1)/8)`
-/

namespace A353307.P15126252011691585315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A341354 (n + 1) : ℚ) / 8⌉

end

end A353307.P15126252011691585315

namespace A353307

/-- `ceil(A341354(n+1)/8)` -/
def P15126252011691585315.Spec : Prop :=
  ∀ n, P15126252011691585315.a n = A353307 (n + 1)

end A353307

/-! ## A353307.P4761286134192180765

`char[A329604(n+1)-1]`
-/

namespace A353307.P4761286134192180765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329604 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353307.P4761286134192180765

namespace A353307

/-- `char[A329604(n+1)-1]` -/
def P4761286134192180765.Spec : Prop :=
  ∀ n, (P4761286134192180765.a n : ℤ) = A353307 (n + 1)

end A353307

/-! ## A353307.P16845451401968443580

`floor(acot(A329903(2*(n+1))))`
-/

namespace A353307.P16845451401968443580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A329903 (2 * (n + 1)) : ℝ)⌋

end

end A353307.P16845451401968443580

namespace A353307

/-- `floor(acot(A329903(2*(n+1))))` -/
def P16845451401968443580.Spec : Prop :=
  ∀ n, P16845451401968443580.a n = A353307 (n + 1)

end A353307

/-! ## A353307.P17013457791872780582

`1-abs(A332814(2*(n+1)))`
-/

namespace A353307.P17013457791872780582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |A332814 (2 * (n + 1))|

end

end A353307.P17013457791872780582

namespace A353307

/-- `1-abs(A332814(2*(n+1)))` -/
def P17013457791872780582.Spec : Prop :=
  ∀ n, P17013457791872780582.a n = A353307 (n + 1)

end A353307

/-! ## A353307.P2199077215422794316

`and(A000328(n), A329903(n+1))`
-/

namespace A353307.P2199077215422794316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000328 n) (A329903 (n + 1))

end

end A353307.P2199077215422794316

namespace A353307

/-- `and(A000328(n), A329903(n+1))` -/
def P2199077215422794316.Spec : Prop :=
  ∀ n, P2199077215422794316.a n = A353307 (n + 1)

end A353307

/-! ## A353307.P12058952512276844349

`and(A001513(n), A329903(n+1))`
-/

namespace A353307.P12058952512276844349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001513 n) (A329903 (n + 1))

end

end A353307.P12058952512276844349

namespace A353307

/-- `and(A001513(n), A329903(n+1))` -/
def P12058952512276844349.Spec : Prop :=
  ∀ n, P12058952512276844349.a n = A353307 (n + 1)

end A353307

/-! ## A353307.P15373218641507654838

`and(A001535(n), A329903(n+1))`
-/

namespace A353307.P15373218641507654838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001535 n) (A329903 (n + 1))

end

end A353307.P15373218641507654838

namespace A353307

/-- `and(A001535(n), A329903(n+1))` -/
def P15373218641507654838.Spec : Prop :=
  ∀ n, P15373218641507654838.a n = A353307 (n + 1)

end A353307

/-! ## A353307.P14408977247754984994

`and(A001546(n), A329903(n+1))`
-/

namespace A353307.P14408977247754984994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001546 n) (A329903 (n + 1))

end

end A353307.P14408977247754984994

namespace A353307

/-- `and(A001546(n), A329903(n+1))` -/
def P14408977247754984994.Spec : Prop :=
  ∀ n, P14408977247754984994.a n = A353307 (n + 1)

end A353307

/-! ## A353307.P11977483849725413968

`and(A001844(n), A329903(n+1))`
-/

namespace A353307.P11977483849725413968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001844 n) (A329903 (n + 1))

end

end A353307.P11977483849725413968

namespace A353307

/-- `and(A001844(n), A329903(n+1))` -/
def P11977483849725413968.Spec : Prop :=
  ∀ n, P11977483849725413968.a n = A353307 (n + 1)

end A353307

/-! ## A353307.P14863735847658892069

`and(A001846(n), A329903(n+1))`
-/

namespace A353307.P14863735847658892069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001846 n) (A329903 (n + 1))

end

end A353307.P14863735847658892069

namespace A353307

/-- `and(A001846(n), A329903(n+1))` -/
def P14863735847658892069.Spec : Prop :=
  ∀ n, P14863735847658892069.a n = A353307 (n + 1)

end A353307

/-! ## A353307.P16963994004283155153

`and(A001848(n), A329903(n+1))`
-/

namespace A353307.P16963994004283155153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001848 n) (A329903 (n + 1))

end

end A353307.P16963994004283155153

namespace A353307

/-- `and(A001848(n), A329903(n+1))` -/
def P16963994004283155153.Spec : Prop :=
  ∀ n, P16963994004283155153.a n = A353307 (n + 1)

end A353307

/-! ## A353307.P15214796704357436555

`and(A003185(n), A329903(n+1))`
-/

namespace A353307.P15214796704357436555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003185 n) (A329903 (n + 1))

end

end A353307.P15214796704357436555

namespace A353307

/-- `and(A003185(n), A329903(n+1))` -/
def P15214796704357436555.Spec : Prop :=
  ∀ n, P15214796704357436555.a n = A353307 (n + 1)

end A353307

/-! ## A353307.P10116893600479884569

`and(A004768(n), A329903(n+1))`
-/

namespace A353307.P10116893600479884569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004768 n) (A329903 (n + 1))

end

end A353307.P10116893600479884569

namespace A353307

/-- `and(A004768(n), A329903(n+1))` -/
def P10116893600479884569.Spec : Prop :=
  ∀ n, P10116893600479884569.a n = A353307 (n + 1)

end A353307

/-! ## A353307.P8057093811926608836

`and(A007204(n), A329903(n+1))`
-/

namespace A353307.P8057093811926608836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007204 n) (A329903 (n + 1))

end

end A353307.P8057093811926608836

namespace A353307

/-- `and(A007204(n), A329903(n+1))` -/
def P8057093811926608836.Spec : Prop :=
  ∀ n, P8057093811926608836.a n = A353307 (n + 1)

end A353307

/-! ## A353307.P12637477733614818284

`and(A008349(n), A329903(n+1))`
-/

namespace A353307.P12637477733614818284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008349 n) (A329903 (n + 1))

end

end A353307.P12637477733614818284

namespace A353307

/-- `and(A008349(n), A329903(n+1))` -/
def P12637477733614818284.Spec : Prop :=
  ∀ n, P12637477733614818284.a n = A353307 (n + 1)

end A353307

/-! ## A353307.P5701992903870387549

`and(A008358(n), A329903(n+1))`
-/

namespace A353307.P5701992903870387549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008358 n) (A329903 (n + 1))

end

end A353307.P5701992903870387549

namespace A353307

/-- `and(A008358(n), A329903(n+1))` -/
def P5701992903870387549.Spec : Prop :=
  ∀ n, P5701992903870387549.a n = A353307 (n + 1)

end A353307

/-! ## A353307.P5867889147583725001

`and(A008362(n), A329903(n+1))`
-/

namespace A353307.P5867889147583725001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008362 n) (A329903 (n + 1))

end

end A353307.P5867889147583725001

namespace A353307

/-- `and(A008362(n), A329903(n+1))` -/
def P5867889147583725001.Spec : Prop :=
  ∀ n, P5867889147583725001.a n = A353307 (n + 1)

end A353307

/-!
# A353310: Number of terms encountered when iterating A353313, before reaching the first term that is a part of a finite cycle, or -1 if no finite cycle is ever reached.

The programs for A353310, there is no canonical definition to state claims against.
-/

/-! ## A353310.P794222802623406318

`A353311(n)-A353312(n)`
-/

namespace A353310.P794222802623406318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353311 n - A353312 n

end

end A353310.P794222802623406318

/-! ## A353310.P6553659331423207355

`A175569(3*n)%A284559(A362622(n+1))`
-/

namespace A353310.P6553659331423207355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175569 (3 * n)) (A284559 (A362622 (n + 1)).toNat)

end

end A353310.P6553659331423207355

/-! ## A353310.P3137694142906147676

`A324925(n)%A342083(A233763(3*n+2))`
-/

namespace A353310.P3137694142906147676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324925 n) (A342083 (A233763 (3 * n + 2)).toNat)

end

end A353310.P3137694142906147676

/-! ## A353310.P3214121027935722229

`A047956(A047977(n+1))%A047971(2*n+3)`
-/

namespace A353310.P3214121027935722229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047956 (A047977 (n + 1)).toNat) (A047971 (2 * n + 3))

end

end A353310.P3214121027935722229

/-! ## A353310.P16298726000429944295

`A367360(A374517(n))%A095133(n+5)`
-/

namespace A353310.P16298726000429944295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367360 (A374517 n).toNat) (A095133 (n + 5))

end

end A353310.P16298726000429944295

/-!
# A353311: Number of distinct terms encountered when A353313 is iterated, or -1 if the iteration never reaches a finite cycle.

The programs for A353311, there is no canonical definition to state claims against.
-/

/-! ## A353311.P604463824443971291

`A353310(n)+A353312(n)`
-/

namespace A353311.P604463824443971291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353310 n + A353312 n

end

end A353311.P604463824443971291

/-! ## A353311.P8831044940699794988

`A353310(n)-(A085121(n²)-A353312(n))`
-/

namespace A353311.P8831044940699794988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353310 n - (A085121 (n ^ 2) - A353312 n)

end

end A353311.P8831044940699794988

/-! ## A353311.P17484150459441373012

`A353312(n)+A047956(A047977(n+1))%A047971(2*n+3)`
-/

namespace A353311.P17484150459441373012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353312 n + Int.tmod (A047956 (A047977 (n + 1)).toNat) (A047971 (2 * n + 3))

end

end A353311.P17484150459441373012

/-!
# A353312: Size of the finite cycle eventually reached by iterating A353313, or -1 if no finite cycle is ever reached.

The programs for A353312, there is no canonical definition to state claims against.
-/

/-! ## A353312.P2590175299308653928

`A353311(n)-A353310(n)`
-/

namespace A353312.P2590175299308653928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353311 n - A353310 n

end

end A353312.P2590175299308653928

/-! ## A353312.P16475006582182780469

`A353311(A349876(A353305(n)))`
-/

namespace A353312.P16475006582182780469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353311 (A349876 (A353305 n).toNat).toNat

end

end A353312.P16475006582182780469

/-! ## A353312.P6016549102939993796

`A353311(A353305(A353305(A353313(n))))`
-/

namespace A353312.P6016549102939993796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353311 (A353305 (A353305 (A353313 n).toNat).toNat).toNat

end

end A353312.P6016549102939993796

/-! ## A353312.P11918970582959747968

`A353311(A353305(A353305(A353305(A353314(n)))))`
-/

namespace A353312.P11918970582959747968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353311 (A353305 (A353305 (A353305 (A353314 n).toNat).toNat).toNat).toNat

end

end A353312.P11918970582959747968

/-! ## A353312.P462047388137206148

`A353311(n)-A047956(A047977(n+1))%A047971(2*n+3)`
-/

namespace A353312.P462047388137206148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353311 n - Int.tmod (A047956 (A047977 (n + 1)).toNat) (A047971 (2 * n + 3))

end

end A353312.P462047388137206148

/-!
# A353313: If n is of the form 3k, then a(n) = k, and if n is of the form 3k+r, with r = 1 or 2, then a(n) = 5*k + 3 + r.

The programs for A353313, the canonical program `A353313.P6782100894332009569` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353313 has offset 0).

The definition of A353313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353313.P6782100894332009569

`A353327(n)+A051176(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A353313

/-- `A353327(n)+A051176(n)` -/
def P6782100894332009569.Spec : Prop :=
  ∀ n, P6782100894332009569.a n = A353313 n

theorem P6782100894332009569.correct : P6782100894332009569.Spec := by
  intro n
  simp only [A353313]

end A353313

/-! ## A353313.P6963136452681063976

`A353314(n)/A109007(n)`
-/

namespace A353313.P6963136452681063976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353314 n : ℚ) / (A109007 n : ℚ)

end

end A353313.P6963136452681063976

namespace A353313

/-- `A353314(n)/A109007(n)` -/
def P6963136452681063976.Spec : Prop :=
  ∀ n, P6963136452681063976.a n = (A353313 n : ℚ)

end A353313

/-! ## A353313.P16414526324540999016

`A135997(n)+2*A091684(n)`
-/

namespace A353313.P16414526324540999016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 n + 2 * A091684 n

end

end A353313.P16414526324540999016

namespace A353313

/-- `A135997(n)+2*A091684(n)` -/
def P16414526324540999016.Spec : Prop :=
  ∀ n, P16414526324540999016.a n = A353313 n

end A353313

/-! ## A353313.P18263802232961454681

`A135997(n)+A005843(A091684(n))`
-/

namespace A353313.P18263802232961454681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 n + A005843 (A091684 n).toNat

end

end A353313.P18263802232961454681

namespace A353313

/-- `A135997(n)+A005843(A091684(n))` -/
def P18263802232961454681.Spec : Prop :=
  ∀ n, P18263802232961454681.a n = A353313 n

end A353313

/-! ## A353313.P14955518173469345486

`A102899(n)+A353314(n)-A004396(n)`
-/

namespace A353313.P14955518173469345486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102899 n + (A353314 n - A004396 n)

end

end A353313.P14955518173469345486

namespace A353313

/-- `A102899(n)+A353314(n)-A004396(n)` -/
def P14955518173469345486.Spec : Prop :=
  ∀ n, P14955518173469345486.a n = A353313 n

end A353313

/-! ## A353313.P8061198915423217495

`A146535(n+2)-(A103221(n+1)+A103221(n))`
-/

namespace A353313.P8061198915423217495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146535 (n + 2) - (A103221 (n + 1) + A103221 n)

end

end A353313.P8061198915423217495

namespace A353313

/-- `A146535(n+2)-(A103221(n+1)+A103221(n))` -/
def P8061198915423217495.Spec : Prop :=
  ∀ n, P8061198915423217495.a n = A353313 n

end A353313

/-! ## A353313.P8174716727925768338

`A353314(n)/A143771(2*(n+1))`
-/

namespace A353313.P8174716727925768338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353314 n : ℚ) / (A143771 (2 * (n + 1)) : ℚ)

end

end A353313.P8174716727925768338

namespace A353313

/-- `A353314(n)/A143771(2*(n+1))` -/
def P8174716727925768338.Spec : Prop :=
  ∀ n, P8174716727925768338.a n = (A353313 n : ℚ)

end A353313

/-! ## A353313.P10378762244830172959

`A135997(n)+A091684(A091684(n)+n)`
-/

namespace A353313.P10378762244830172959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 n + A091684 (A091684 n + (n : ℤ)).toNat

end

end A353313.P10378762244830172959

namespace A353313

/-- `A135997(n)+A091684(A091684(n)+n)` -/
def P10378762244830172959.Spec : Prop :=
  ∀ n, P10378762244830172959.a n = A353313 n

end A353313

/-! ## A353313.P3791740862921388917

`A367286(2*(n+1))-(n+1)`
-/

namespace A353313.P3791740862921388917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367286 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A353313.P3791740862921388917

namespace A353313

/-- `A367286(2*(n+1))-(n+1)` -/
def P3791740862921388917.Spec : Prop :=
  ∀ n, P3791740862921388917.a n = A353313 n

end A353313

/-! ## A353313.P13040082497464544626

`xor(1, A265667(2*n+1))-n`
-/

namespace A353313.P13040082497464544626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A265667 (2 * n + 1)) - (n : ℤ)

end

end A353313.P13040082497464544626

namespace A353313

/-- `xor(1, A265667(2*n+1))-n` -/
def P13040082497464544626.Spec : Prop :=
  ∀ n, P13040082497464544626.a n = A353313 n

end A353313

/-! ## A353313.P3338511825274078044

`abs(∑[1-A110665(2*n+1)])`
-/

namespace A353313.P3338511825274078044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A110665 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A353313.P3338511825274078044

namespace A353313

/-- `abs(∑[1-A110665(2*n+1)])` -/
def P3338511825274078044.Spec : Prop :=
  ∀ n, P3338511825274078044.a n = A353313 n

end A353313

/-! ## A353313.P17770682946001084726

`A145064(2*n+1)-A002264(n+4)`
-/

namespace A353313.P17770682946001084726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145064 (2 * n + 1) - A002264 (n + 4)

end

end A353313.P17770682946001084726

namespace A353313

/-- `A145064(2*n+1)-A002264(n+4)` -/
def P17770682946001084726.Spec : Prop :=
  ∀ n, P17770682946001084726.a n = A353313 n

end A353313

/-! ## A353313.P17803571689387798870

`A008612(2*n+1)+Δ[A008620(2*n)²]`
-/

namespace A353313.P17803571689387798870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A353313.P17803571689387798870

namespace A353313

/-- `A008612(2*n+1)+Δ[A008620(2*n)²]` -/
def P17803571689387798870.Spec : Prop :=
  ∀ n, P17803571689387798870.a n = A353313 n

end A353313

/-! ## A353313.P1492833927222709899

`∑[A138187(2*n+1)-∑[A138187(2*n+1)]]`
-/

namespace A353313.P1492833927222709899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138187 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138187 (2 * n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353313.P1492833927222709899

namespace A353313

/-- `∑[A138187(2*n+1)-∑[A138187(2*n+1)]]` -/
def P1492833927222709899.Spec : Prop :=
  ∀ n, P1492833927222709899.a n = A353313 n

end A353313

/-! ## A353313.P2205591901764482627

`A006369(2*n+3)-(n+2)`
-/

namespace A353313.P2205591901764482627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (2 * n + 3) - (n + 2 : ℤ)

end

end A353313.P2205591901764482627

namespace A353313

/-- `A006369(2*n+3)-(n+2)` -/
def P2205591901764482627.Spec : Prop :=
  ∀ n, P2205591901764482627.a n = A353313 n

end A353313

/-! ## A353313.P16102727028149668823

`A260316(2*n+3)-A008611(n)`
-/

namespace A353313.P16102727028149668823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260316 (2 * n + 3) - A008611 n

end

end A353313.P16102727028149668823

namespace A353313

/-- `A260316(2*n+3)-A008611(n)` -/
def P16102727028149668823.Spec : Prop :=
  ∀ n, P16102727028149668823.a n = A353313 n

end A353313

/-! ## A353313.P2758572417989765867

`A152467(2*n)+A117909(2*(n+1))`
-/

namespace A353313.P2758572417989765867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (2 * n) + A117909 (2 * (n + 1))

end

end A353313.P2758572417989765867

namespace A353313

/-- `A152467(2*n)+A117909(2*(n+1))` -/
def P2758572417989765867.Spec : Prop :=
  ∀ n, P2758572417989765867.a n = A353313 n

end A353313

/-! ## A353313.P10557534625813973603

`A265667(2*(n+2))-(n+3)`
-/

namespace A353313.P10557534625813973603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265667 (2 * (n + 2)) - (n + 3 : ℤ)

end

end A353313.P10557534625813973603

namespace A353313

/-- `A265667(2*(n+2))-(n+3)` -/
def P10557534625813973603.Spec : Prop :=
  ∀ n, P10557534625813973603.a n = A353313 n

end A353313

/-! ## A353313.P2998576795226668924

`n+2-A135997(2*(n+3))`
-/

namespace A353313.P2998576795226668924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A135997 (2 * (n + 3))

end

end A353313.P2998576795226668924

namespace A353313

/-- `n+2-A135997(2*(n+3))` -/
def P2998576795226668924.Spec : Prop :=
  ∀ n, P2998576795226668924.a n = A353313 n

end A353313

/-! ## A353313.P11115391217911883732

`A026741(A047477(n+1))-n`
-/

namespace A353313.P11115391217911883732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A047477 (n + 1)).toNat - (n : ℤ)

end

end A353313.P11115391217911883732

namespace A353313

/-- `A026741(A047477(n+1))-n` -/
def P11115391217911883732.Spec : Prop :=
  ∀ n, P11115391217911883732.a n = A353313 n

end A353313

/-!
# A353314: If n is of the form 3k, then a(n) = n, and if n is of the form 3k+r, with r = 1 or 2, then a(n) = 5*k + 3 + r.

The programs for A353314, the canonical program `A353314.P3320847696523798595` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353314 has offset 0).

The definition of A353314 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A353314.P3320847696523798595

`2*a(n-3)-a(n-6)` with `a(0)=0, a(1)=4, a(2)=5, a(3)=3, a(4)=9, a(5)=10`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A353314

/-- `2*a(n-3)-a(n-6)` -/
def P3320847696523798595.Spec : Prop :=
  ∀ n, P3320847696523798595.a n = A353314 n

theorem P3320847696523798595.correct : P3320847696523798595.Spec := by
  intro n
  simp only [A353314]

end A353314

/-! ## A353314.P10739047768795257007

`n+A353327(n)`
-/

namespace A353314.P10739047768795257007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A353327 n

end

end A353314.P10739047768795257007

namespace A353314

/-- `n+A353327(n)` -/
def P10739047768795257007.Spec : Prop :=
  ∀ n, P10739047768795257007.a n = A353314 n

end A353314

/-! ## A353314.P8568834315291771660

`n+A102899(3+n)`
-/

namespace A353314.P8568834315291771660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A102899 (3 + n)

end

end A353314.P8568834315291771660

namespace A353314

/-- `n+A102899(3+n)` -/
def P8568834315291771660.Spec : Prop :=
  ∀ n, P8568834315291771660.a n = A353314 n

end A353314

/-! ## A353314.P12595623672331611323

`∑[1-A138188(n)]`
-/

namespace A353314.P12595623672331611323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A138188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353314.P12595623672331611323

namespace A353314

/-- `∑[1-A138188(n)]` -/
def P12595623672331611323.Spec : Prop :=
  ∀ n, P12595623672331611323.a n = A353314 n

end A353314

/-! ## A353314.P8860973349474865870

`1-A138189(n)+n`
-/

namespace A353314.P8860973349474865870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A138189 n + (n : ℤ)

end

end A353314.P8860973349474865870

namespace A353314

/-- `1-A138189(n)+n` -/
def P8860973349474865870.Spec : Prop :=
  ∀ n, P8860973349474865870.a n = A353314 n

end A353314

/-! ## A353314.P1658497553108511392

`gcd(3, n)*A353313(n)`
-/

namespace A353314.P1658497553108511392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 3 n : ℤ) * A353313 n

end

end A353314.P1658497553108511392

namespace A353314

/-- `gcd(3, n)*A353313(n)` -/
def P1658497553108511392.Spec : Prop :=
  ∀ n, P1658497553108511392.a n = A353314 n

end A353314

/-! ## A353314.P1052633679051618162

`∑[1-∑[A138187(n)]]`
-/

namespace A353314.P1052633679051618162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138187 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353314.P1052633679051618162

namespace A353314

/-- `∑[1-∑[A138187(n)]]` -/
def P1052633679051618162.Spec : Prop :=
  ∀ n, P1052633679051618162.a n = A353314 n

end A353314

/-! ## A353314.P5561630741952634378

`A285327(A102899(n))+n`
-/

namespace A353314.P5561630741952634378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285327 (A102899 n).toNat + (n : ℤ)

end

end A353314.P5561630741952634378

namespace A353314

/-- `A285327(A102899(n))+n` -/
def P5561630741952634378.Spec : Prop :=
  ∀ n, P5561630741952634378.a n = A353314 n

end A353314

/-! ## A353314.P15248158796017677519

`A353327(n)-A001489(n)`
-/

namespace A353314.P15248158796017677519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353327 n - A001489 n

end

end A353314.P15248158796017677519

namespace A353314

/-- `A353327(n)-A001489(n)` -/
def P15248158796017677519.Spec : Prop :=
  ∀ n, P15248158796017677519.a n = A353314 n

end A353314

/-! ## A353314.P2276652116572518096

`A109007(n)*A353313(n)`
-/

namespace A353314.P2276652116572518096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109007 n * A353313 n

end

end A353314.P2276652116572518096

namespace A353314

/-- `A109007(n)*A353313(n)` -/
def P2276652116572518096.Spec : Prop :=
  ∀ n, P2276652116572518096.a n = A353314 n

end A353314

/-! ## A353314.P12492781923374161933

`lcm(A088439(n), A353313(n))`
-/

namespace A353314.P12492781923374161933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A088439 n) (A353313 n)

end

end A353314.P12492781923374161933

namespace A353314

/-- `lcm(A088439(n), A353313(n))` -/
def P12492781923374161933.Spec : Prop :=
  ∀ n, (P12492781923374161933.a n : ℤ) = A353314 n

end A353314

/-! ## A353314.P17188448615721283833

`A193356(A066481(n+3))+n`
-/

namespace A353314.P17188448615721283833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 (A066481 (n + 3)).toNat + (n : ℤ)

end

end A353314.P17188448615721283833

namespace A353314

/-- `A193356(A066481(n+3))+n` -/
def P17188448615721283833.Spec : Prop :=
  ∀ n, P17188448615721283833.a n = A353314 n

end A353314

/-! ## A353314.P12886479046293338454

`1-(A024000(n)-A353327(n))`
-/

namespace A353314.P12886479046293338454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A024000 n - A353327 n)

end

end A353314.P12886479046293338454

namespace A353314

/-- `1-(A024000(n)-A353327(n))` -/
def P12886479046293338454.Spec : Prop :=
  ∀ n, P12886479046293338454.a n = A353314 n

end A353314

/-! ## A353314.P9003260328275629888

`A353313(n)+n-A051176(n)`
-/

namespace A353314.P9003260328275629888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353313 n + ((n : ℤ) - A051176 n)

end

end A353314.P9003260328275629888

namespace A353314

/-- `A353313(n)+n-A051176(n)` -/
def P9003260328275629888.Spec : Prop :=
  ∀ n, P9003260328275629888.a n = A353314 n

end A353314

/-! ## A353314.P6888380745918156211

`A011655(n)*A066481(n+3)+n`
-/

namespace A353314.P6888380745918156211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n * A066481 (n + 3) + (n : ℤ)

end

end A353314.P6888380745918156211

namespace A353314

/-- `A011655(n)*A066481(n+3)+n` -/
def P6888380745918156211.Spec : Prop :=
  ∀ n, P6888380745918156211.a n = A353314 n

end A353314

/-! ## A353314.P3419891936197992610

`lcm(A066481(n+3), A092220(n))+n`
-/

namespace A353314.P3419891936197992610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A066481 (n + 3)) (A092220 n) + n

end

end A353314.P3419891936197992610

namespace A353314

/-- `lcm(A066481(n+3), A092220(n))+n` -/
def P3419891936197992610.Spec : Prop :=
  ∀ n, (P3419891936197992610.a n : ℤ) = A353314 n

end A353314

/-! ## A353314.P14342599301683423465

`A008486(n+1)-A004396(n+1)*A052901(n)`
-/

namespace A353314.P14342599301683423465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (n + 1) - A004396 (n + 1) * A052901 n

end

end A353314.P14342599301683423465

namespace A353314

/-- `A008486(n+1)-A004396(n+1)*A052901(n)` -/
def P14342599301683423465.Spec : Prop :=
  ∀ n, P14342599301683423465.a n = A353314 n

end A353314

/-! ## A353314.P17939450361353767188

`xor(1, A110090(n+1))+n`
-/

namespace A353314.P17939450361353767188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A110090 (n + 1)) + (n : ℤ)

end

end A353314.P17939450361353767188

namespace A353314

/-- `xor(1, A110090(n+1))+n` -/
def P17939450361353767188.Spec : Prop :=
  ∀ n, P17939450361353767188.a n = A353314 n

end A353314

/-! ## A353314.P10651614430138804403

`A089598(A092200(n))+n`
-/

namespace A353314.P10651614430138804403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089598 (A092200 n).toNat + (n : ℤ)

end

end A353314.P10651614430138804403

namespace A353314

/-- `A089598(A092200(n))+n` -/
def P10651614430138804403.Spec : Prop :=
  ∀ n, P10651614430138804403.a n = A353314 n

end A353314

/-! ## A353314.P8913467104124934454

`A004442(A110090(n+1))+n`
-/

namespace A353314.P8913467104124934454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A110090 (n + 1)).toNat + (n : ℤ)

end

end A353314.P8913467104124934454

namespace A353314

/-- `A004442(A110090(n+1))+n` -/
def P8913467104124934454.Spec : Prop :=
  ∀ n, P8913467104124934454.a n = A353314 n

end A353314

/-!
# A353315: Triangle read by rows where T(n,k) is the number of integer partitions of n with k parts on or below the diagonal (weak non-excedances).

The programs for A353315, there is no canonical definition to state claims against.
-/

/-! ## A353315.P8887475571047776116

`A327104(A361950(n+1))`
-/

namespace A353315.P8887475571047776116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327104 (A361950 (n + 1)).toNat

end

end A353315.P8887475571047776116

/-! ## A353315.P17364388911687834509

`A342788(A131113(n+1))`
-/

namespace A353315.P17364388911687834509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342788 (A131113 (n + 1)).toNat

end

end A353315.P17364388911687834509

/-! ## A353315.P18103333718428722299

`A327104(A183135(n+1))`
-/

namespace A353315.P18103333718428722299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327104 (A183135 (n + 1)).toNat

end

end A353315.P18103333718428722299

/-! ## A353315.P7966522600663430988

`A124766(A397930(n+1))`
-/

namespace A353315.P7966522600663430988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A397930 (n + 1)).toNat

end

end A353315.P7966522600663430988

/-! ## A353315.P14359024379830004598

`A327104(A246106(n+1))`
-/

namespace A353315.P14359024379830004598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327104 (A246106 (n + 1)).toNat

end

end A353315.P14359024379830004598

/-!
# A353317: Heinz numbers of integer partitions that have a fixed point and a conjugate fixed point (counted by A188674).

The programs for A353317, there is no canonical definition to state claims against.
-/

/-! ## A353317.P9667204694563718495

`eq[1, abs(a(A325133(n)))]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A353317.P9667204694563718495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f2 =>
  f2 (A325133 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353317.P9667204694563718495

/-! ## A353317.P12757959660392631608

`eq[2, A000005(a(A325133(n)))]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A353317.P12757959660392631608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f2 =>
  A000005 (f2 (A325133 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353317.P12757959660392631608

/-! ## A353317.P14314225722607258409

`eq[2, A000142(a(A325133(n)))]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A353317.P14314225722607258409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n f2 =>
  A000142 (f2 (A325133 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353317.P14314225722607258409

/-! ## A353317.P16601696947901183405

`eq[2, A002801(a(A325133(n)))]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A353317.P16601696947901183405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n f2 =>
  A002801 (f2 (A325133 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353317.P16601696947901183405

/-! ## A353317.P15704780165370045086

`eq[2, A020639(a(A325133(n)))]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A353317.P15704780165370045086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f2 =>
  A020639 (f2 (A325133 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353317.P15704780165370045086

/-! ## A353317.P5483860783514487427

`eq[2, A130968(a(A325133(n)))]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A353317.P5483860783514487427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n f2 =>
  A130968 (f2 (A325133 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353317.P5483860783514487427

/-! ## A353317.P6592192859710287815

`eq[2, A134868(a(A325133(n)))]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A353317.P6592192859710287815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f2 =>
  A134868 (f2 (A325133 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353317.P6592192859710287815

/-! ## A353317.P13757301300318507361

`eq[2, A000108(a(A325133(n)))]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A353317.P13757301300318507361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f2 =>
  A000108 (f2 (A325133 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353317.P13757301300318507361

/-! ## A353317.P5990894188630253475

`eq[2, A031076(a(A325133(n)))]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A353317.P5990894188630253475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f2 =>
  A031076 (f2 (A325133 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353317.P5990894188630253475

/-! ## A353317.P17904656526930366593

`eq[1, A000032(a(A325133(n)))]` with `a(0)=3, a(1)=2, a(2)=1`
-/

namespace A353317.P17904656526930366593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 1] fun n f2 =>
  A000032 (f2 (A325133 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353317.P17904656526930366593

/-!
# A353318: Irregular triangle read by rows where T(n,k) is the number of integer partitions of n with k excedances (parts above the diagonal), zeros omitted.

The programs for A353318, there is no canonical definition to state claims against.
-/

/-! ## A353318.P14476459588320513933

`gcd(A156280(3*n), A222300(A156251(n+1)))`
-/

namespace A353318.P14476459588320513933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A156280 (3 * n)) (A222300 (A156251 (n + 1)).toNat)

end

end A353318.P14476459588320513933

/-! ## A353318.P1195275096957198551

`A228572(eq[A053878(n+2), A059379(n+1)])`
-/

namespace A353318.P1195275096957198551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053878 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228572 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A353318.P1195275096957198551

/-!
# A353320: Odd numbers m such that there exists no k for which the denominator of d(k)/k = m where d(k) is the number of divisors of k (A000005).

The programs for A353320, there is no canonical definition to state claims against.
-/

/-! ## A353320.P9228985837308962293

`∩[A091896(n+1), A275250(n+1)]`
-/

namespace A353320.P9228985837308962293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353320.P9228985837308962293

/-! ## A353320.P16598176961665360974

`A091896(lt[val(A091896(n+1), 2), 1]+1)`
-/

namespace A353320.P16598176961665360974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A091896 (n + 1)).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091896 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A353320.P16598176961665360974

/-!
# A353321: a(n) = floor(1/erfc(n/sqrt(2))).

The programs for A353321, there is no canonical definition to state claims against.
-/

/-! ## A353321.P15879098917671900451

`A275366(n)-A010051(A004253(n+1))`
-/

namespace A353321.P15879098917671900451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275366 n - A010051 (A004253 (n + 1)).toNat

end

end A353321.P15879098917671900451

/-! ## A353321.P5711132550216444845

`A275366(n)-A179831(A284165(3*n+2))`
-/

namespace A353321.P5711132550216444845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275366 n - A179831 (A284165 (3 * n + 2)).toNat

end

end A353321.P5711132550216444845

/-!
# A353322: A variant of Van Eck's sequence where we only consider powers of 2: for n >= 0, if a(n) = a(n-2^e) for some e, take the least such e and set a(n+1) = 2^e; otherwise a(n+1) = 0. Start with a(1) = 0.

The programs for A353322, there is no canonical definition to state claims against.
-/

/-! ## A353322.P18267833947906136169

`A387173(A329047(n+2))`
-/

namespace A353322.P18267833947906136169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387173 (A329047 (n + 2)).toNat

end

end A353322.P18267833947906136169

/-!
# A353323: A variant of Van Eck's sequence where we only consider powers of 3: for n >= 0, if a(n) = a(n-3^e) for some e, take the least such e and set a(n+1) = 3^e; otherwise a(n+1) = 0. Start with a(1) = 0.

The programs for A353323, there is no canonical definition to state claims against.
-/

/-! ## A353323.P12171516016251073186

`A191818(n)*A307597(A191828(n))`
-/

namespace A353323.P12171516016251073186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191818 n * A307597 (A191828 n).toNat

end

end A353323.P12171516016251073186

/-! ## A353323.P16222087756385647704

`and(A000265(A003418(n)), A227724(n))`
-/

namespace A353323.P16222087756385647704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000265 (A003418 n).toNat) (A227724 n)

end

end A353323.P16222087756385647704

/-! ## A353323.P16072659143897696371

`and(A118088(A227724(n)), A137189(n))`
-/

namespace A353323.P16072659143897696371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118088 (A227724 n).toNat) (A137189 n)

end

end A353323.P16072659143897696371

/-! ## A353323.P1081296636553169076

`A093351(A380195(n+1)^A331160(n))`
-/

namespace A353323.P1081296636553169076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093351 (SequenceMachineLib.roundAway ((A380195 (n + 1) : ℚ) ^ (A331160 n : ℤ))).toNat

end

end A353323.P1081296636553169076

/-! ## A353323.P1477401427741225629

`A000265(A003418(n))%A276562(n+1)`
-/

namespace A353323.P1477401427741225629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (A003418 n).toNat) (A276562 (n + 1))

end

end A353323.P1477401427741225629

/-!
# A353325: G.f. A(x) satisfies: A(x) = ( A(-x) + sqrt( A(-x)^2 + 64*x/A(-x) ) )/2.

The programs for A353325, there is no canonical definition to state claims against.
-/

/-! ## A353325.P3664358135366619424

`A135662(n+1)+A080098(A140325(n))`
-/

namespace A353325.P3664358135366619424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (n + 1) + A080098 (A140325 n).toNat

end

end A353325.P3664358135366619424

/-! ## A353325.P4878827956397322969

`A028982(n+1)*A092038(A056756(2*n+1))`
-/

namespace A353325.P4878827956397322969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1) * A092038 (A056756 (2 * n + 1)).toNat

end

end A353325.P4878827956397322969

/-!
# A353326: Coefficients of odd exponents of series reversion of x*(1 - x^2)^8*(1 + x^2)*(1 + 6*x^2 + x^4).

The programs for A353326, there is no canonical definition to state claims against.
-/

/-! ## A353326.P8890346812093958902

`A353324(Δ[n²])`
-/

namespace A353326.P8890346812093958902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353324 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A353326.P8890346812093958902

/-! ## A353326.P17598165134561015111

`gcd(A000038(n), A353324(A005408(n)))`
-/

namespace A353326.P17598165134561015111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A353324 (A005408 n).toNat)

end

end A353326.P17598165134561015111

/-! ## A353326.P17561957400862796049

`or(A000007(n), A353324(A005408(n)))`
-/

namespace A353326.P17561957400862796049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A353324 (A005408 n).toNat)

end

end A353326.P17561957400862796049

/-! ## A353326.P16628292351691679054

`A353324(A005408(n))+A000007(n+1)`
-/

namespace A353326.P16628292351691679054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353324 (A005408 n).toNat + A000007 (n + 1)

end

end A353326.P16628292351691679054

/-! ## A353326.P3075662619107286729

`gcd(n*A353324(2*n+1), A353324(2*n+1))`
-/

namespace A353326.P3075662619107286729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A353324 (2 * n + 1)) (A353324 (2 * n + 1))

end

end A353326.P3075662619107286729

/-!
# A353327: If n is a multiple of 3, then a(n) = 0, and if n is of the form 3k+r, with r = 1 or 2, then a(n) = 2*k + 3.

The programs for A353327, the canonical program `A353327.P13320437945952944272` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353327 has offset 0).

The definition of A353327 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A353327.P13320437945952944272

`2*a(n-3)-a(n-6)` with `a(0)=0, a(1)=3, a(2)=3, a(3)=0, a(4)=5, a(5)=5`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A353327

/-- `2*a(n-3)-a(n-6)` -/
def P13320437945952944272.Spec : Prop :=
  ∀ n, P13320437945952944272.a n = A353327 n

theorem P13320437945952944272.correct : P13320437945952944272.Spec := by
  intro n
  simp only [A353327]

end A353327

/-! ## A353327.P744680702880580764

`A353314(n)-n`
-/

namespace A353327.P744680702880580764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353314 n - (n : ℤ)

end

end A353327.P744680702880580764

namespace A353327

/-- `A353314(n)-n` -/
def P744680702880580764.Spec : Prop :=
  ∀ n, P744680702880580764.a n = A353327 n

end A353327

/-! ## A353327.P10660180290540132710

`A102899(3+n)`
-/

namespace A353327.P10660180290540132710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102899 (3 + n)

end

end A353327.P10660180290540132710

namespace A353327

/-- `A102899(3+n)` -/
def P10660180290540132710.Spec : Prop :=
  ∀ n, P10660180290540132710.a n = A353327 n

end A353327

/-! ## A353327.P15548163510453385165

`xor(1, a(n-3)+1)` with `a(0)=0, a(1)=3, a(2)=3`
-/

namespace A353327.P15548163510453385165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 3] fun n a =>
  Nat.xor 1 (a (n - 3) + 1)

end

end A353327.P15548163510453385165

namespace A353327

/-- `xor(1, a(n-3)+1)` -/
def P15548163510453385165.Spec : Prop :=
  ∀ n, (P15548163510453385165.a n : ℤ) = A353327 n

end A353327

/-! ## A353327.P12382493013486449764

`floor((lcm(3, n+3)-(n+2))/3)`
-/

namespace A353327.P12382493013486449764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.lcm 3 (n + 3) : ℤ) - (n + 2 : ℤ) : ℚ) / 3⌋

end

end A353327.P12382493013486449764

namespace A353327

/-- `floor((lcm(3, n+3)-(n+2))/3)` -/
def P12382493013486449764.Spec : Prop :=
  ∀ n, P12382493013486449764.a n = A353327 n

end A353327

/-! ## A353327.P1355792637361935061

`(2*ceil(n/3)+1)*n²%3`
-/

namespace A353327.P1355792637361935061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * ⌈(n : ℚ) / 3⌉ + 1) * ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A353327.P1355792637361935061

namespace A353327

/-- `(2*ceil(n/3)+1)*n²%3` -/
def P1355792637361935061.Spec : Prop :=
  ∀ n, P1355792637361935061.a n = A353327 n

end A353327

/-! ## A353327.P8848545205072733007

`round(2*(n/3+1))*char[comp[3*n]]`
-/

namespace A353327.P8848545205072733007
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3 + 1)) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A353327.P8848545205072733007

namespace A353327

/-- `round(2*(n/3+1))*char[comp[3*n]]` -/
def P8848545205072733007.Spec : Prop :=
  ∀ n, P8848545205072733007.a n = A353327 n

end A353327

/-! ## A353327.P13352949794299831413

`a(n-3)+1-(-1)^a(n-3)` with `a(0)=0, a(1)=3, a(2)=3`
-/

namespace A353327.P13352949794299831413
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 3, 3] fun n a =>
  a (n - 3) + 1 - (-1 : ℝ) ^ (a (n - 3))

end

end A353327.P13352949794299831413

namespace A353327

/-- `a(n-3)+1-(-1)^a(n-3)` -/
def P13352949794299831413.Spec : Prop :=
  ∀ n, P13352949794299831413.a n = (A353327 n : ℝ)

end A353327

/-! ## A353327.P17196909550230100998

`1-((-1)^a(n-3)-a(n-3))` with `a(0)=0, a(1)=3, a(2)=3`
-/

namespace A353327.P17196909550230100998
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 3, 3] fun n a =>
  1 - ((-1 : ℝ) ^ (a (n - 3)) - a (n - 3))

end

end A353327.P17196909550230100998

namespace A353327

/-- `1-((-1)^a(n-3)-a(n-3))` -/
def P17196909550230100998.Spec : Prop :=
  ∀ n, P17196909550230100998.a n = (A353327 n : ℝ)

end A353327

/-! ## A353327.P3726672035535460015

`1-A138189(n)`
-/

namespace A353327.P3726672035535460015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A138189 n

end

end A353327.P3726672035535460015

namespace A353327

/-- `1-A138189(n)` -/
def P3726672035535460015.Spec : Prop :=
  ∀ n, P3726672035535460015.a n = A353327 n

end A353327

/-! ## A353327.P2315138336842924915

`1-∑[A138188(n)]`
-/

namespace A353327.P2315138336842924915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353327.P2315138336842924915

namespace A353327

/-- `1-∑[A138188(n)]` -/
def P2315138336842924915.Spec : Prop :=
  ∀ n, P2315138336842924915.a n = A353327 n

end A353327

/-! ## A353327.P3224387135917171343

`1-∑[∑[A138187(n)]]`
-/

namespace A353327.P3224387135917171343
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138187 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353327.P3224387135917171343

namespace A353327

/-- `1-∑[∑[A138187(n)]]` -/
def P3224387135917171343.Spec : Prop :=
  ∀ n, P3224387135917171343.a n = A353327 n

end A353327

/-! ## A353327.P8730920339537738497

`A285327(A102899(n))`
-/

namespace A353327.P8730920339537738497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285327 (A102899 n).toNat

end

end A353327.P8730920339537738497

namespace A353327

/-- `A285327(A102899(n))` -/
def P8730920339537738497.Spec : Prop :=
  ∀ n, P8730920339537738497.a n = A353327 n

end A353327

/-! ## A353327.P17734105683920880729

`A193356(A066481(n+3))`
-/

namespace A353327.P17734105683920880729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 (A066481 (n + 3)).toNat

end

end A353327.P17734105683920880729

namespace A353327

/-- `A193356(A066481(n+3))` -/
def P17734105683920880729.Spec : Prop :=
  ∀ n, P17734105683920880729.a n = A353327 n

end A353327

/-! ## A353327.P16070533042305467294

`A353313(n)-A051176(n)`
-/

namespace A353327.P16070533042305467294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353313 n - A051176 n

end

end A353327.P16070533042305467294

namespace A353327

/-- `A353313(n)-A051176(n)` -/
def P16070533042305467294.Spec : Prop :=
  ∀ n, P16070533042305467294.a n = A353327 n

end A353327

/-! ## A353327.P11884106729946271739

`lcm(A004396(n)+2, A092220(n))`
-/

namespace A353327.P11884106729946271739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004396 n + 2) (A092220 n)

end

end A353327.P11884106729946271739

namespace A353327

/-- `lcm(A004396(n)+2, A092220(n))` -/
def P11884106729946271739.Spec : Prop :=
  ∀ n, (P11884106729946271739.a n : ℤ) = A353327 n

end A353327

/-! ## A353327.P12044272048323168807

`A109007(n)*A353313(n)-n`
-/

namespace A353327.P12044272048323168807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109007 n * A353313 n - (n : ℤ)

end

end A353327.P12044272048323168807

namespace A353327

/-- `A109007(n)*A353313(n)-n` -/
def P12044272048323168807.Spec : Prop :=
  ∀ n, P12044272048323168807.a n = A353327 n

end A353327

/-! ## A353327.P5248154383268651028

`lcm(A088439(n), A353313(n))-n`
-/

namespace A353327.P5248154383268651028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A088439 n) (A353313 n) : ℤ) - (n : ℤ)

end

end A353327.P5248154383268651028

namespace A353327

/-- `lcm(A088439(n), A353313(n))-n` -/
def P5248154383268651028.Spec : Prop :=
  ∀ n, P5248154383268651028.a n = A353327 n

end A353327

/-! ## A353327.P13836187325880307717

`A135997(A091684(n))+A091684(n)`
-/

namespace A353327.P13836187325880307717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A091684 n).toNat + A091684 n

end

end A353327.P13836187325880307717

namespace A353327

/-- `A135997(A091684(n))+A091684(n)` -/
def P13836187325880307717.Spec : Prop :=
  ∀ n, P13836187325880307717.a n = A353327 n

end A353327

/-! ## A353327.P13778744079433417862

`xor(1, A110090(n+1))`
-/

namespace A353327.P13778744079433417862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A110090 (n + 1))

end

end A353327.P13778744079433417862

namespace A353327

/-- `xor(1, A110090(n+1))` -/
def P13778744079433417862.Spec : Prop :=
  ∀ n, P13778744079433417862.a n = A353327 n

end A353327

/-!
# A353328: Number of divisors d of n for which A332823(d) is positive (+1).

The programs for A353328, the canonical program `A353328.P18044669405917485236` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353328 has offset 1).

The definition of A353328 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353329, A353354, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353328.P18044669405917485236

`A353354(n+1)+A353329(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A353328

/-- `A353354(n+1)+A353329(n+1)` -/
def P18044669405917485236.Spec : Prop :=
  ∀ n, P18044669405917485236.a n = A353328 (n + 1)

theorem P18044669405917485236.correct : P18044669405917485236.Spec := by
  intro n
  simp only [A353328, Nat.add_sub_cancel]

end A353328

/-! ## A353328.P6617229278146475105

`A353351(n+1)-A353329(n+1)`
-/

namespace A353328.P6617229278146475105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353351 (n + 1) - A353329 (n + 1)

end

end A353328.P6617229278146475105

namespace A353328

/-- `A353351(n+1)-A353329(n+1)` -/
def P6617229278146475105.Spec : Prop :=
  ∀ n, P6617229278146475105.a n = A353328 (n + 1)

end A353328

/-! ## A353328.P3058588088585968711

`A353329(A003961(n+1))`
-/

namespace A353328.P3058588088585968711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353329 (A003961 (n + 1)).toNat

end

end A353328.P3058588088585968711

namespace A353328

/-- `A353329(A003961(n+1))` -/
def P3058588088585968711.Spec : Prop :=
  ∀ n, P3058588088585968711.a n = A353328 (n + 1)

end A353328

/-! ## A353328.P10428511151031726928

`A353329(A061898(n+1))`
-/

namespace A353328.P10428511151031726928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353329 (A061898 (n + 1)).toNat

end

end A353328.P10428511151031726928

namespace A353328

/-- `A353329(A061898(n+1))` -/
def P10428511151031726928.Spec : Prop :=
  ∀ n, P10428511151031726928.a n = A353328 (n + 1)

end A353328

/-! ## A353328.P3218084453734034982

`A353329(A045965(n+1))`
-/

namespace A353328.P3218084453734034982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353329 (A045965 (n + 1)).toNat

end

end A353328.P3218084453734034982

namespace A353328

/-- `A353329(A045965(n+1))` -/
def P3218084453734034982.Spec : Prop :=
  ∀ n, P3218084453734034982.a n = A353328 (n + 1)

end A353328

/-! ## A353328.P1973959976518646179

`A353329(A118306(n+1))`
-/

namespace A353328.P1973959976518646179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353329 (A118306 (n + 1)).toNat

end

end A353328.P1973959976518646179

namespace A353328

/-- `A353329(A118306(n+1))` -/
def P1973959976518646179.Spec : Prop :=
  ∀ n, P1973959976518646179.a n = A353328 (n + 1)

end A353328

/-! ## A353328.P9734771889004704747

`A353352(2*A003961(n+1))-A353352(n+1)`
-/

namespace A353328.P9734771889004704747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353352 (2 * A003961 (n + 1)).toNat - A353352 (n + 1)

end

end A353328.P9734771889004704747

namespace A353328

/-- `A353352(2*A003961(n+1))-A353352(n+1)` -/
def P9734771889004704747.Spec : Prop :=
  ∀ n, P9734771889004704747.a n = A353328 (n + 1)

end A353328

/-! ## A353328.P16568790498104875682

`A353329(A045968(n+1))`
-/

namespace A353328.P16568790498104875682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353329 (A045968 (n + 1)).toNat

end

end A353328.P16568790498104875682

namespace A353328

/-- `A353329(A045968(n+1))` -/
def P16568790498104875682.Spec : Prop :=
  ∀ n, P16568790498104875682.a n = A353328 (n + 1)

end A353328

/-!
# A353329: Number of divisors d of n for which A332823(d) is negative (-1).

The programs for A353329, the canonical program `A353329.P10991015569382708285` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353329 has offset 1).

The definition of A353329 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353329.P4598968531517185959

`A353328(n+1)-A353354(n+1)`
-/

namespace A353329.P4598968531517185959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353328 (n + 1) - A353354 (n + 1)

end

end A353329.P4598968531517185959

namespace A353329

/-- `A353328(n+1)-A353354(n+1)` -/
def P4598968531517185959.Spec : Prop :=
  ∀ n, P4598968531517185959.a n = A353329 (n + 1)

end A353329

/-! ## A353329.P1613245066171282553

`A353351(n+1)-A353328(n+1)`
-/

namespace A353329.P1613245066171282553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353351 (n + 1) - A353328 (n + 1)

end

end A353329.P1613245066171282553

namespace A353329

/-- `A353351(n+1)-A353328(n+1)` -/
def P1613245066171282553.Spec : Prop :=
  ∀ n, P1613245066171282553.a n = A353329 (n + 1)

end A353329

/-! ## A353329.P10569805940174058382

`A353328(A003961(n+1))`
-/

namespace A353329.P10569805940174058382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353328 (A003961 (n + 1)).toNat

end

end A353329.P10569805940174058382

namespace A353329

/-- `A353328(A003961(n+1))` -/
def P10569805940174058382.Spec : Prop :=
  ∀ n, P10569805940174058382.a n = A353329 (n + 1)

end A353329

/-! ## A353329.P10991015569382708285

`A353352(2*(n+1))-A353352(A000265(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A353329

/-- `A353352(2*(n+1))-A353352(A000265(n+1))` -/
def P10991015569382708285.Spec : Prop :=
  ∀ n, P10991015569382708285.a n = A353329 (n + 1)

theorem P10991015569382708285.correct : P10991015569382708285.Spec := by
  intro n
  simp only [A353329, Nat.add_sub_cancel]

end A353329

/-! ## A353329.P16750838099863999919

`A353328(A061898(n+1))`
-/

namespace A353329.P16750838099863999919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353328 (A061898 (n + 1)).toNat

end

end A353329.P16750838099863999919

namespace A353329

/-- `A353328(A061898(n+1))` -/
def P16750838099863999919.Spec : Prop :=
  ∀ n, P16750838099863999919.a n = A353329 (n + 1)

end A353329

/-! ## A353329.P1790946201522327559

`A353328(A118306(n+1))`
-/

namespace A353329.P1790946201522327559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353328 (A118306 (n + 1)).toNat

end

end A353329.P1790946201522327559

namespace A353329

/-- `A353328(A118306(n+1))` -/
def P1790946201522327559.Spec : Prop :=
  ∀ n, P1790946201522327559.a n = A353329 (n + 1)

end A353329

/-!
# A353330: a(n) = A006047(A156552(n)).

The programs for A353330, the canonical program `A353330.P10388590718222571003` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353330 has offset 1).

The definition of A353330 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006047, A156552, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353330.P10388590718222571003

`A006047(A156552(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A353330

/-- `A006047(A156552(n+1))` -/
def P10388590718222571003.Spec : Prop :=
  ∀ n, P10388590718222571003.a n = A353330 (n + 1)

theorem P10388590718222571003.correct : P10388590718222571003.Spec := by
  intro n
  simp only [A353330, Nat.add_sub_cancel]

end A353330

/-! ## A353330.P7485338837211421464

`A353360(A332462(n+1))`
-/

namespace A353330.P7485338837211421464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353360 (A332462 (n + 1)).toNat

end

end A353330.P7485338837211421464

namespace A353330

/-- `A353360(A332462(n+1))` -/
def P7485338837211421464.Spec : Prop :=
  ∀ n, P7485338837211421464.a n = A353330 (n + 1)

end A353330

/-! ## A353330.P2793196401593311324

`A006047(A005941(n+1)-1)`
-/

namespace A353330.P2793196401593311324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A005941 (n + 1) - 1).toNat

end

end A353330.P2793196401593311324

namespace A353330

/-- `A006047(A005941(n+1)-1)` -/
def P2793196401593311324.Spec : Prop :=
  ∀ n, P2793196401593311324.a n = A353330 (n + 1)

end A353330

/-! ## A353330.P1513032506452466452

`A006047(∑{d}[n+1, A297112(#)])`
-/

namespace A353330.P1513032506452466452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (∑ d ∈ Nat.divisors (f1 n), A297112 d).toNat

end

end A353330.P1513032506452466452

namespace A353330

/-- `A006047(∑{d}[n+1, A297112(#)])` -/
def P1513032506452466452.Spec : Prop :=
  ∀ n, P1513032506452466452.a n = A353330 (n + 1)

end A353330

/-! ## A353330.P5745846890800685514

`A006047((A322993(2*(n+1))-1)/2)`
-/

namespace A353330.P5745846890800685514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (SequenceMachineLib.roundAway ((A322993 (2 * (n + 1)) - 1 : ℚ) / 2)).toNat

end

end A353330.P5745846890800685514

namespace A353330

/-- `A006047((A322993(2*(n+1))-1)/2)` -/
def P5745846890800685514.Spec : Prop :=
  ∀ n, P5745846890800685514.a n = A353330 (n + 1)

end A353330

/-! ## A353330.P16673301858239590298

`A006047(A244153(A048673(n+1)))`
-/

namespace A353330.P16673301858239590298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A244153 (A048673 (n + 1)).toNat).toNat

end

end A353330.P16673301858239590298

namespace A353330

/-- `A006047(A244153(A048673(n+1)))` -/
def P16673301858239590298.Spec : Prop :=
  ∀ n, P16673301858239590298.a n = A353330 (n + 1)

end A353330

/-! ## A353330.P3812817205468879491

`A006047(A323905(n+1)+A048675(n+1))`
-/

namespace A353330.P3812817205468879491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A323905 (n + 1) + A048675 (n + 1)).toNat

end

end A353330.P3812817205468879491

namespace A353330

/-- `A006047(A323905(n+1)+A048675(n+1))` -/
def P3812817205468879491.Spec : Prop :=
  ∀ n, P3812817205468879491.a n = A353330 (n + 1)

end A353330

/-! ## A353330.P1945017316092696106

`A006047(A292382(n+1)+A292380(n+1))`
-/

namespace A353330.P1945017316092696106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A292382 (n + 1) + A292380 (n + 1)).toNat

end

end A353330.P1945017316092696106

namespace A353330

/-- `A006047(A292382(n+1)+A292380(n+1))` -/
def P1945017316092696106.Spec : Prop :=
  ∀ n, P1945017316092696106.a n = A353330 (n + 1)

end A353330

/-! ## A353330.P7953553586620895805

`A006047(A297168(n+1)+A297112(n+1))`
-/

namespace A353330.P7953553586620895805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A297168 (n + 1) + A297112 (n + 1)).toNat

end

end A353330.P7953553586620895805

namespace A353330

/-- `A006047(A297168(n+1)+A297112(n+1))` -/
def P7953553586620895805.Spec : Prop :=
  ∀ n, P7953553586620895805.a n = A353330 (n + 1)

end A353330

/-! ## A353330.P8329923184064136541

`A006047(xor(A005941(n+1), A038712(n+1)))`
-/

namespace A353330.P8329923184064136541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (Int.xor (A005941 (n + 1)) (A038712 (n + 1))).toNat

end

end A353330.P8329923184064136541

namespace A353330

/-- `A006047(xor(A005941(n+1), A038712(n+1)))` -/
def P8329923184064136541.Spec : Prop :=
  ∀ n, P8329923184064136541.a n = A353330 (n + 1)

end A353330

/-!
# A353331: a(n) = 1 if A001222(n) [bigomega(n)] and A056239(n) are both even, otherwise a(n) = 0.

The programs for A353331, the canonical program `A353331.P8409694808673781499` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353331 has offset 1).

The definition of A353331 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353331.P8409694808673781499

`char[A340784(n+1)-1]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A353331

/-- `char[A340784(n+1)-1]` -/
def P8409694808673781499.Spec : Prop :=
  ∀ n, (P8409694808673781499.a n : ℤ) = A353331 (n + 1)

theorem P8409694808673781499.correct : P8409694808673781499.Spec := by
  intro n
  simp only [A353331, Nat.add_sub_cancel]

end A353331

/-! ## A353331.P5818373287839980390

`char[lt[0, A353333(n+1)]]`
-/

namespace A353331.P5818373287839980390
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353333 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353331.P5818373287839980390

namespace A353331

/-- `char[lt[0, A353333(n+1)]]` -/
def P5818373287839980390.Spec : Prop :=
  ∀ n, (P5818373287839980390.a n : ℤ) = A353331 (n + 1)

end A353331

/-! ## A353331.P1057264758967974724

`gcd(2, A373381(n+1))-1`
-/

namespace A353331.P1057264758967974724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A373381 (n + 1)) : ℤ) - 1

end

end A353331.P1057264758967974724

namespace A353331

/-- `gcd(2, A373381(n+1))-1` -/
def P1057264758967974724.Spec : Prop :=
  ∀ n, P1057264758967974724.a n = A353331 (n + 1)

end A353331

/-! ## A353331.P2390251916205270952

`A178487(A353333(n+1))`
-/

namespace A353331.P2390251916205270952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (A353333 (n + 1)).toNat

end

end A353331.P2390251916205270952

namespace A353331

/-- `A178487(A353333(n+1))` -/
def P2390251916205270952.Spec : Prop :=
  ∀ n, P2390251916205270952.a n = A353331 (n + 1)

end A353331

/-! ## A353331.P13558429768729716716

`A285383(A353333(n+1)²+1)`
-/

namespace A353331.P13558429768729716716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285383 (A353333 (n + 1) ^ 2 + 1).toNat

end

end A353331.P13558429768729716716

namespace A353331

/-- `A285383(A353333(n+1)²+1)` -/
def P13558429768729716716.Spec : Prop :=
  ∀ n, P13558429768729716716.a n = A353331 (n + 1)

end A353331

/-! ## A353331.P2857995472546180828

`1-A000007(A353333(n+1)²)`
-/

namespace A353331.P2857995472546180828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000007 (A353333 (n + 1) ^ 2).toNat

end

end A353331.P2857995472546180828

namespace A353331

/-- `1-A000007(A353333(n+1)²)` -/
def P2857995472546180828.Spec : Prop :=
  ∀ n, P2857995472546180828.a n = A353331 (n + 1)

end A353331

/-! ## A353331.P7040011242135859899

`A339872(2*(A353333(n+1)+1))`
-/

namespace A353331.P7040011242135859899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339872 (2 * (A353333 (n + 1) + 1)).toNat

end

end A353331.P7040011242135859899

namespace A353331

/-- `A339872(2*(A353333(n+1)+1))` -/
def P7040011242135859899.Spec : Prop :=
  ∀ n, P7040011242135859899.a n = A353331 (n + 1)

end A353331

/-! ## A353331.P3969571847249675664

`and(1, A110613(A353333(n+1)+1))`
-/

namespace A353331.P3969571847249675664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A110613 (A353333 (n + 1) + 1).toNat)

end

end A353331.P3969571847249675664

namespace A353331

/-- `and(1, A110613(A353333(n+1)+1))` -/
def P3969571847249675664.Spec : Prop :=
  ∀ n, P3969571847249675664.a n = A353331 (n + 1)

end A353331

/-! ## A353331.P8547595624529125780

`A353344(C(2, A353333(n+1)+2))`
-/

namespace A353331.P8547595624529125780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353344 (Nat.choose 2 (A353333 (n + 1) + 2).toNat)

end

end A353331.P8547595624529125780

namespace A353331

/-- `A353344(C(2, A353333(n+1)+2))` -/
def P8547595624529125780.Spec : Prop :=
  ∀ n, P8547595624529125780.a n = A353331 (n + 1)

end A353331

/-! ## A353331.P17380361785277344300

`gcd(A007421(n+1), A318995(n+1))-1`
-/

namespace A353331.P17380361785277344300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A007421 (n + 1)) (A318995 (n + 1)) : ℤ) - 1

end

end A353331.P17380361785277344300

namespace A353331

/-- `gcd(A007421(n+1), A318995(n+1))-1` -/
def P17380361785277344300.Spec : Prop :=
  ∀ n, P17380361785277344300.a n = A353331 (n + 1)

end A353331

/-! ## A353331.P14487901188030826685

`∑{d}[n+1, A008683(#)*A353332((n+1)/#)]`
-/

namespace A353331.P14487901188030826685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A353332 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A353331.P14487901188030826685

namespace A353331

/-- `∑{d}[n+1, A008683(#)*A353332((n+1)/#)]` -/
def P14487901188030826685.Spec : Prop :=
  ∀ n, P14487901188030826685.a n = A353331 (n + 1)

end A353331

/-! ## A353331.P1868677510512898041

`A073093(n+1)%A007421(A247503(n+1))`
-/

namespace A353331.P1868677510512898041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073093 (n + 1)) (A007421 (A247503 (n + 1)).toNat)

end

end A353331.P1868677510512898041

namespace A353331

/-- `A073093(n+1)%A007421(A247503(n+1))` -/
def P1868677510512898041.Spec : Prop :=
  ∀ n, P1868677510512898041.a n = A353331 (n + 1)

end A353331

/-! ## A353331.P15982689846243835318

`A059841(gcd(A001222(n+1), A056239(n+1)))`
-/

namespace A353331.P15982689846243835318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (Int.gcd (A001222 (n + 1)) (A056239 (n + 1)))

end

end A353331.P15982689846243835318

namespace A353331

/-- `A059841(gcd(A001222(n+1), A056239(n+1)))` -/
def P15982689846243835318.Spec : Prop :=
  ∀ n, P15982689846243835318.a n = A353331 (n + 1)

end A353331

/-! ## A353331.P12312931704375549037

`A000007(and(A008836(n+1), A056239(n+1)))`
-/

namespace A353331.P12312931704375549037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.land (A008836 (n + 1)) (A056239 (n + 1))).toNat

end

end A353331.P12312931704375549037

namespace A353331

/-- `A000007(and(A008836(n+1), A056239(n+1)))` -/
def P12312931704375549037.Spec : Prop :=
  ∀ n, P12312931704375549037.a n = A353331 (n + 1)

end A353331

/-! ## A353331.P2280944562055004405

`A059841(or(A001222(n+1), A056239(n+1)))`
-/

namespace A353331.P2280944562055004405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (Int.lor (A001222 (n + 1)) (A056239 (n + 1))).toNat

end

end A353331.P2280944562055004405

namespace A353331

/-- `A059841(or(A001222(n+1), A056239(n+1)))` -/
def P2280944562055004405.Spec : Prop :=
  ∀ n, P2280944562055004405.a n = A353331 (n + 1)

end A353331

/-! ## A353331.P7780342935701014068

`A353344(A353333(3*(n+1))^A353333(n+1))`
-/

namespace A353331.P7780342935701014068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353344 (SequenceMachineLib.roundAway ((A353333 (3 * (n + 1)) : ℚ) ^ (A353333 (n + 1) : ℤ))).toNat

end

end A353331.P7780342935701014068

namespace A353331

/-- `A353344(A353333(3*(n+1))^A353333(n+1))` -/
def P7780342935701014068.Spec : Prop :=
  ∀ n, P7780342935701014068.a n = A353331 (n + 1)

end A353331

/-! ## A353331.P4307029504306521530

`A353358(A353333(3*(n+1))^A353333(n+1))`
-/

namespace A353331.P4307029504306521530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353358 (SequenceMachineLib.roundAway ((A353333 (3 * (n + 1)) : ℚ) ^ (A353333 (n + 1) : ℤ))).toNat

end

end A353331.P4307029504306521530

namespace A353331

/-- `A353358(A353333(3*(n+1))^A353333(n+1))` -/
def P4307029504306521530.Spec : Prop :=
  ∀ n, P4307029504306521530.a n = A353331 (n + 1)

end A353331

/-! ## A353331.P17162353437191087689

`A285383(2^A353333(n+1))`
-/

namespace A353331.P17162353437191087689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285383 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A353333 (n + 1) : ℤ))).toNat

end

end A353331.P17162353437191087689

namespace A353331

/-- `A285383(2^A353333(n+1))` -/
def P17162353437191087689.Spec : Prop :=
  ∀ n, P17162353437191087689.a n = A353331 (n + 1)

end A353331

/-! ## A353331.P18076969885687906358

`A000007(and(A008836(n+1), A289506(n+1)))`
-/

namespace A353331.P18076969885687906358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.land (A008836 (n + 1)) (A289506 (n + 1))).toNat

end

end A353331.P18076969885687906358

namespace A353331

/-- `A000007(and(A008836(n+1), A289506(n+1)))` -/
def P18076969885687906358.Spec : Prop :=
  ∀ n, P18076969885687906358.a n = A353331 (n + 1)

end A353331

/-! ## A353331.P1186522160171289937

`A271594(A289507(n+1))%A007421(n+1)`
-/

namespace A353331.P1186522160171289937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271594 (A289507 (n + 1)).toNat) (A007421 (n + 1))

end

end A353331.P1186522160171289937

namespace A353331

/-- `A271594(A289507(n+1))%A007421(n+1)` -/
def P1186522160171289937.Spec : Prop :=
  ∀ n, P1186522160171289937.a n = A353331 (n + 1)

end A353331

/-!
# A353332: Number of divisors d of n for which both A001222(d) and A056239(d) are even.

The programs for A353332, the canonical program `A353332.P15543741578413310228` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353332 has offset 1).

The definition of A353332 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353332.P15543741578413310228

`∑{d}[n+1, A353331(#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A353332

/-- `∑{d}[n+1, A353331(#)]` -/
def P15543741578413310228.Spec : Prop :=
  ∀ n, P15543741578413310228.a n = A353332 (n + 1)

theorem P15543741578413310228.correct : P15543741578413310228.Spec := by
  intro n
  simp only [A353332, Nat.add_sub_cancel]

end A353332

/-! ## A353332.P3904067480632587668

`∑{d}[n+1, A178487(A353333(#))]`
-/

namespace A353332.P3904067480632587668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A178487 (A353333 d).toNat

end

end A353332.P3904067480632587668

namespace A353332

/-- `∑{d}[n+1, A178487(A353333(#))]` -/
def P3904067480632587668.Spec : Prop :=
  ∀ n, P3904067480632587668.a n = A353332 (n + 1)

end A353332

/-! ## A353332.P6446663451834551800

`A353362(n+1)-A025455(A046716(n))`
-/

namespace A353332.P6446663451834551800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353362 (n + 1) - A025455 (A046716 n).toNat

end

end A353332.P6446663451834551800

namespace A353332

/-- `A353362(n+1)-A025455(A046716(n))` -/
def P6446663451834551800.Spec : Prop :=
  ∀ n, P6446663451834551800.a n = A353332 (n + 1)

end A353332

/-!
# A353333: Number of ways to write n as a product of the terms of A340784 larger than 1; a(1) = 1 by convention (an empty product).

The programs for A353333, there is no canonical definition to state claims against.
-/

/-! ## A353333.P2572548757860326362

`A103451(A180026(n+1))*A353303(n+1)`
-/

namespace A353333.P2572548757860326362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 (A180026 (n + 1)).toNat * A353303 (n + 1)

end

end A353333.P2572548757860326362

/-! ## A353333.P5960263447880859196

`A353269(5^∑{e}[n+1, #])*A353303(n+1)`
-/

namespace A353333.P5960263447880859196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353269 (5 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) * A353303 (n + 1)

end

end A353333.P5960263447880859196

/-! ## A353333.P8029306907438282606

`and(A000203(6^∑{e}[n+1, #]), A353303(n+1))`
-/

namespace A353333.P8029306907438282606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000203 (6 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))) (A353303 (n + 1))

end

end A353333.P8029306907438282606

/-! ## A353333.P5045014460382319876

`A004530(A165826(n+1))*A353303(n+1)`
-/

namespace A353333.P5045014460382319876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004530 (A165826 (n + 1)).toNat * A353303 (n + 1)

end

end A353333.P5045014460382319876

/-! ## A353333.P9008211219098770229

`A353269(A165827(n+1))*A353303(n+1)`
-/

namespace A353333.P9008211219098770229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353269 (A165827 (n + 1)).toNat * A353303 (n + 1)

end

end A353333.P9008211219098770229

/-! ## A353333.P11460026198024567284

`and(A353303(n+1), A353337(A354091(n+1)))`
-/

namespace A353333.P11460026198024567284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A353303 (n + 1)) (A353337 (A354091 (n + 1)).toNat)

end

end A353333.P11460026198024567284

/-! ## A353333.P9701778443469402532

`A174889(n+1)*A353303(n+1)`
-/

namespace A353333.P9701778443469402532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174889 (n + 1) * A353303 (n + 1)

end

end A353333.P9701778443469402532

/-!
# A353334: Number of factorizations of the square of n into factors k > 1 for which both A001222(k) and A056239(k) are even.

The programs for A353334, there is no canonical definition to state claims against.
-/

/-! ## A353334.P16357956930303350519

`A353333((n+1)²)`
-/

namespace A353334.P16357956930303350519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353333 ((n + 1) ^ 2)

end

end A353334.P16357956930303350519

/-! ## A353334.P8121964928819772663

`A000027(A353333(∑[2*n+1]))`
-/

namespace A353334.P8121964928819772663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A353333 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A353334.P8121964928819772663

/-! ## A353334.P5571109895222182665

`A353333(∑[2*n+1])%A000041(n+2)`
-/

namespace A353334.P5571109895222182665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353333 (∑ j ∈ Finset.range (n + 1), f1 j)) (A000041 (n + 2))

end

end A353334.P5571109895222182665

/-! ## A353334.P15000296449972284566

`A000041(∑[(-1)^n])*A353333(∑[2*n+1])`
-/

namespace A353334.P15000296449972284566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A353333 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A353334.P15000296449972284566

/-! ## A353334.P6385401915303228918

`A353333(A000290(n+1))%A167487(n)`
-/

namespace A353334.P6385401915303228918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353333 (A000290 (n + 1)).toNat) (A167487 n)

end

end A353334.P6385401915303228918

/-! ## A353334.P207360938890941580

`or(A000007(n), A353333(A000290(n+1)))`
-/

namespace A353334.P207360938890941580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A353333 (A000290 (n + 1)).toNat)

end

end A353334.P207360938890941580

/-! ## A353334.P18155909297894487827

`∑{d}[A353333(A000290(n+1)), A000010(#)]`
-/

namespace A353334.P18155909297894487827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353333 (A000290 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A353334.P18155909297894487827

/-! ## A353334.P12428968080817248125

`lcm(A131554(n+2), A353333(A000290(n+1)))`
-/

namespace A353334.P12428968080817248125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131554 (n + 2)) (A353333 (A000290 (n + 1)).toNat)

end

end A353334.P12428968080817248125

/-! ## A353334.P1394745502518488875

`A014963(10*(n+1))*A353333(A000290(n+1))`
-/

namespace A353334.P1394745502518488875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A353333 (A000290 (n + 1)).toNat

end

end A353334.P1394745502518488875

/-! ## A353334.P8824171210726755661

`A001222(A007918(n))*A353333(A000290(n+1))`
-/

namespace A353334.P8824171210726755661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007918 n).toNat * A353333 (A000290 (n + 1)).toNat

end

end A353334.P8824171210726755661

/-! ## A353334.P1341979959316713687

`A309892(A020639(n+1))*A353333(A000290(n+1))`
-/

namespace A353334.P1341979959316713687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309892 (A020639 (n + 1)).toNat * A353333 (A000290 (n + 1)).toNat

end

end A353334.P1341979959316713687

/-!
# A353335: Dirichlet inverse of A353420.

The programs for A353335, there is no canonical definition to state claims against.
-/

/-! ## A353335.P18351431866182254874

`A353336(n+1)-A353420(n+1)`
-/

namespace A353335.P18351431866182254874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353336 (n + 1) - A353420 (n + 1)

end

end A353335.P18351431866182254874

/-! ## A353335.P16436697825883095665

`A353336(n+1)-A249746(A003602(n+1))`
-/

namespace A353335.P16436697825883095665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353336 (n + 1) - A249746 (A003602 (n + 1)).toNat

end

end A353335.P16436697825883095665

/-! ## A353335.P16711491924148526342

`A353336(n+1)-A353336(4*(n+1))`
-/

namespace A353335.P16711491924148526342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353336 (n + 1) - A353336 (4 * (n + 1))

end

end A353335.P16711491924148526342

/-! ## A353335.P1894990773754956464

`A323881(A003961(n+1))`
-/

namespace A353335.P1894990773754956464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323881 (A003961 (n + 1)).toNat

end

end A353335.P1894990773754956464

/-! ## A353335.P7428841729101564178

`A353336(n+1)-A126760(A003961(n+1))`
-/

namespace A353335.P7428841729101564178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353336 (n + 1) - A126760 (A003961 (n + 1)).toNat

end

end A353335.P7428841729101564178

/-! ## A353335.P8257700523171880265

`A323882(A003961(n+1))-A353420(n+1)`
-/

namespace A353335.P8257700523171880265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323882 (A003961 (n + 1)).toNat - A353420 (n + 1)

end

end A353335.P8257700523171880265

/-! ## A353335.P11187207133338999842

`A353336(n+1)-A249824(A064989(n+1))`
-/

namespace A353335.P11187207133338999842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353336 (n + 1) - A249824 (A064989 (n + 1)).toNat

end

end A353335.P11187207133338999842

/-!
# A353336: Sum of A353420 and its Dirichlet inverse.

The programs for A353336, there is no canonical definition to state claims against.
-/

/-! ## A353336.P6365552826246895324

`A353420(n+1)+A353335(n+1)`
-/

namespace A353336.P6365552826246895324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353420 (n + 1) + A353335 (n + 1)

end

end A353336.P6365552826246895324

/-! ## A353336.P8913898947946942523

`A353335(n+1)+A249746(A003602(n+1))`
-/

namespace A353336.P8913898947946942523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353335 (n + 1) + A249746 (A003602 (n + 1)).toNat

end

end A353336.P8913898947946942523

/-! ## A353336.P11497868010153474285

`A323882(A003961(n+1))`
-/

namespace A353336.P11497868010153474285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323882 (A003961 (n + 1)).toNat

end

end A353336.P11497868010153474285

/-! ## A353336.P4620889242191375628

`A353335(n+1)+A126760(A003961(n+1))`
-/

namespace A353336.P4620889242191375628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353335 (n + 1) + A126760 (A003961 (n + 1)).toNat

end

end A353336.P4620889242191375628

/-! ## A353336.P5927306254667078168

`A323882(A341529(n+1)/A000203(n+1))`
-/

namespace A353336.P5927306254667078168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323882 (SequenceMachineLib.roundAway ((A341529 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ))).toNat

end

end A353336.P5927306254667078168

/-! ## A353336.P11721716388284154934

`A353335(n+1)+A249824(A064989(n+1))`
-/

namespace A353336.P11721716388284154934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353335 (n + 1) + A249824 (A064989 (n + 1)).toNat

end

end A353336.P11721716388284154934

/-!
# A353337: Number of ways to write n as a product of the terms of A028260 larger than 1; a(1) = 1 by convention (an empty product).

The programs for A353337, there is no canonical definition to state claims against.
-/

/-! ## A353337.P10419087802949098051

`A353303(A319525(n+1))`
-/

namespace A353337.P10419087802949098051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353303 (A319525 (n + 1)).toNat

end

end A353337.P10419087802949098051

/-! ## A353337.P6478936717969512440

`A353377(A003961(n+1))`
-/

namespace A353337.P6478936717969512440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353377 (A003961 (n + 1)).toNat

end

end A353337.P6478936717969512440

/-! ## A353337.P6579863099071149416

`A353377(A332818(n+1))`
-/

namespace A353337.P6579863099071149416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353377 (A332818 (n + 1)).toNat

end

end A353337.P6579863099071149416

/-! ## A353337.P1070519634194513136

`A353377(A359600(n+1))`
-/

namespace A353337.P1070519634194513136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353377 (A359600 (n + 1)).toNat

end

end A353337.P1070519634194513136

/-! ## A353337.P8405624751453644112

`A353303(A357983(n+1))`
-/

namespace A353337.P8405624751453644112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353303 (A357983 (n + 1)).toNat

end

end A353337.P8405624751453644112

/-! ## A353337.P1175953884076544790

`A353377(A064988(n+1))`
-/

namespace A353337.P1175953884076544790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353377 (A064988 (n + 1)).toNat

end

end A353337.P1175953884076544790

/-! ## A353337.P8213132597721887434

`A353377(A348746(n+1))`
-/

namespace A353337.P8213132597721887434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353377 (A348746 (n + 1)).toNat

end

end A353337.P8213132597721887434

/-! ## A353337.P15846062162811876416

`A353303(A297002(n+1))`
-/

namespace A353337.P15846062162811876416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353303 (A297002 (n + 1)).toNat

end

end A353337.P15846062162811876416

/-! ## A353337.P2352044744505559873

`A353377(A389092(n+1))`
-/

namespace A353337.P2352044744505559873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353377 (A389092 (n + 1)).toNat

end

end A353337.P2352044744505559873

/-! ## A353337.P15608898139325441659

`A353377(A354091(n+1))`
-/

namespace A353337.P15608898139325441659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353377 (A354091 (n + 1)).toNat

end

end A353337.P15608898139325441659

/-! ## A353337.P11437718922920384035

`A353377(A354202(n+1))`
-/

namespace A353337.P11437718922920384035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353377 (A354202 (n + 1)).toNat

end

end A353337.P11437718922920384035

/-! ## A353337.P14706803119015631984

`A353377(A357852(n+1))`
-/

namespace A353337.P14706803119015631984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353377 (A357852 (n + 1)).toNat

end

end A353337.P14706803119015631984

/-!
# A353338: Number of ways to write the square of n as a product of the terms of A028260 larger than 1; a(1) = 1 by convention (an empty product).

The programs for A353338, there is no canonical definition to state claims against.
-/

/-! ## A353338.P5672154829441135689

`A353337((n+1)²)`
-/

namespace A353338.P5672154829441135689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353337 ((n + 1) ^ 2)

end

end A353338.P5672154829441135689

/-! ## A353338.P10462057699879966028

`A353378(A003961(n+1))`
-/

namespace A353338.P10462057699879966028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353378 (A003961 (n + 1)).toNat

end

end A353338.P10462057699879966028

/-! ## A353338.P14266180319224550244

`A353378(A045965(n+1))`
-/

namespace A353338.P14266180319224550244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353378 (A045965 (n + 1)).toNat

end

end A353338.P14266180319224550244

/-! ## A353338.P4290176018638273646

`A353378(A332818(n+1))`
-/

namespace A353338.P4290176018638273646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353378 (A332818 (n + 1)).toNat

end

end A353338.P4290176018638273646

/-! ## A353338.P11580829847750057199

`A353378(A359600(n+1))`
-/

namespace A353338.P11580829847750057199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353378 (A359600 (n + 1)).toNat

end

end A353338.P11580829847750057199

/-! ## A353338.P14505891119360553022

`A353378(A064988(n+1))`
-/

namespace A353338.P14505891119360553022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353378 (A064988 (n + 1)).toNat

end

end A353338.P14505891119360553022

/-! ## A353338.P2027816102845686473

`A353378(A348746(n+1))`
-/

namespace A353338.P2027816102845686473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353378 (A348746 (n + 1)).toNat

end

end A353338.P2027816102845686473

/-! ## A353338.P13770567454495280318

`A353378(A389092(n+1))`
-/

namespace A353338.P13770567454495280318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353378 (A389092 (n + 1)).toNat

end

end A353338.P13770567454495280318

/-! ## A353338.P5024370796800860692

`A353304(A319525(n+1))`
-/

namespace A353338.P5024370796800860692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353304 (A319525 (n + 1)).toNat

end

end A353338.P5024370796800860692

/-! ## A353338.P7022260534276739971

`A353304(A357983(n+1))`
-/

namespace A353338.P7022260534276739971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353304 (A357983 (n + 1)).toNat

end

end A353338.P7022260534276739971

/-! ## A353338.P16244690983787803265

`A353304(A297002(n+1))`
-/

namespace A353338.P16244690983787803265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353304 (A297002 (n + 1)).toNat

end

end A353338.P16244690983787803265

/-! ## A353338.P8358471297207990398

`A353378(A045966(n+1))`
-/

namespace A353338.P8358471297207990398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353378 (A045966 (n + 1)).toNat

end

end A353338.P8358471297207990398

/-! ## A353338.P17191789772758394490

`A353378(A354091(n+1))`
-/

namespace A353338.P17191789772758394490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353378 (A354091 (n + 1)).toNat

end

end A353338.P17191789772758394490

/-! ## A353338.P11908043208387368414

`A353378(A354202(n+1))`
-/

namespace A353338.P11908043208387368414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353378 (A354202 (n + 1)).toNat

end

end A353338.P11908043208387368414

/-! ## A353338.P15455203273908241688

`A353378(A357852(n+1))`
-/

namespace A353338.P15455203273908241688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353378 (A357852 (n + 1)).toNat

end

end A353338.P15455203273908241688

/-!
# A353339: Number of integers b with n > b > 1 such that the base-b representation of n is periodic.

The programs for A353339, there is no canonical definition to state claims against.
-/

/-! ## A353339.P15574437312476394894

`A001221(A240513(n+1)-A060572(n+1))`
-/

namespace A353339.P15574437312476394894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A240513 (n + 1) - A060572 (n + 1)).toNat

end

end A353339.P15574437312476394894

/-!
# A353342: Numbers k such that k and k^3 use only even digits.

The programs for A353342, there is no canonical definition to state claims against.
-/

/-! ## A353342.P11523571248243417894

`∩[2*A381579(n), A052004(n+1)]`
-/

namespace A353342.P11523571248243417894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A381579 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052004 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353342.P11523571248243417894

/-! ## A353342.P5921676710230477312

`∩[2*A136816(n+1), A052004(n+1)]`
-/

namespace A353342.P5921676710230477312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A136816 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052004 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353342.P5921676710230477312

/-! ## A353342.P8591135417921906586

`∩[2*A136819(n+1), A052004(n+1)]`
-/

namespace A353342.P8591135417921906586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A136819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052004 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353342.P8591135417921906586

/-! ## A353342.P6578845760332427243

`∩[2*A136820(n+1), A052004(n+1)]`
-/

namespace A353342.P6578845760332427243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A136820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052004 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353342.P6578845760332427243

/-! ## A353342.P4409341896533724978

`∩[2*A345358(n+1), A052004(n+1)]`
-/

namespace A353342.P4409341896533724978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A345358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052004 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353342.P4409341896533724978

/-!
# A353343: Smallest k such that k-th derivative of f_n(x) at x=1 is nonpositive, where f_{-1}(x)=0 and f_n(x)=x^(f_{n-1}(x)).

The programs for A353343, there is no canonical definition to state claims against.
-/

/-! ## A353343.P12105364299354863437

`47*a(abs(1-n)-1)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=7, a(4)=33`
-/

namespace A353343.P12105364299354863437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 7, 33] fun n a =>
  47 * a (|1 - (n : ℤ)| - 1).toNat

end

end A353343.P12105364299354863437

/-!
# A353344: Expansion of e.g.f. exp(-log(1 - x)^3).

The programs for A353344, there is no canonical definition to state claims against.
-/

/-! ## A353344.P15698228613411541076

`A357882(∑[n+3]+n+3)`
-/

namespace A353344.P15698228613411541076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357882 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A353344.P15698228613411541076

/-! ## A353344.P6382716959831337425

`A357093(n)-A014601(A052783(n))`
-/

namespace A353344.P6382716959831337425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357093 n - A014601 (A052783 n).toNat

end

end A353344.P6382716959831337425

/-! ## A353344.P2416123758174977883

`A357093(n)-A014601(A052785(n))`
-/

namespace A353344.P2416123758174977883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357093 n - A014601 (A052785 n).toNat

end

end A353344.P2416123758174977883

/-!
# A353348: Dirichlet inverse of A353350, where A353350 is the characteristic function for numbers k such that A048675(k) is a multiple of 3.

The programs for A353348, there is no canonical definition to state claims against.
-/

/-! ## A353348.P4379278214741445136

`A353349(n+1)-A353350(n+1)`
-/

namespace A353348.P4379278214741445136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353349 (n + 1) - A353350 (n + 1)

end

end A353348.P4379278214741445136

/-! ## A353348.P1128125828619199401

`∑{d}[n+1, A353418(#)*A353421((n+1)/#)]`
-/

namespace A353348.P1128125828619199401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353418 d * A353421 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A353348.P1128125828619199401

/-! ## A353348.P8459089832187157700

`A353349(n+1)-A057427(A353353(n+1))`
-/

namespace A353348.P8459089832187157700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353349 (n + 1) - A057427 (A353353 (n + 1)).toNat

end

end A353348.P8459089832187157700

/-! ## A353348.P16704422135644552166

`A353349(n+1)-A353380(A097248(n+1))`
-/

namespace A353348.P16704422135644552166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353349 (n + 1) - A353380 (A097248 (n + 1)).toNat

end

end A353348.P16704422135644552166

/-! ## A353348.P15923431864285444557

`A353349(n+1)-atan(A000007(n))^A332813(n+1)`
-/

namespace A353348.P15923431864285444557
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A353349 (n + 1) : ℝ) - Real.arctan (A000007 n : ℝ) ^ (A332813 (n + 1) : ℤ)

end

end A353348.P15923431864285444557

/-! ## A353348.P13095777942397898595

`A353349(n+1)-∑{d}[n+1, A008683(#)*A353352((n+1)/#)]`
-/

namespace A353348.P13095777942397898595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353349 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A008683 d * A353352 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A353348.P13095777942397898595

/-! ## A353348.P17064670119433660266

`A353349(n+1)-A000007(n*A332813(n+1))`
-/

namespace A353348.P17064670119433660266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353349 (n + 1) - A000007 ((n : ℤ) * A332813 (n + 1)).toNat

end

end A353348.P17064670119433660266

/-! ## A353348.P13875427894566362966

`A353349(n+1)-A353269(A332462(n+1))`
-/

namespace A353348.P13875427894566362966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353349 (n + 1) - A353269 (A332462 (n + 1)).toNat

end

end A353348.P13875427894566362966

/-! ## A353348.P15442428246065221180

`A114591(n+1)%A353445(n+1)`
-/

namespace A353348.P15442428246065221180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114591 (n + 1)) (A353445 (n + 1))

end

end A353348.P15442428246065221180

/-!
# A353349: Sum of A353350 and its Dirichlet inverse.

The programs for A353349, there is no canonical definition to state claims against.
-/

/-! ## A353349.P11202802893153956696

`A353348(n+1)+A353350(n+1)`
-/

namespace A353349.P11202802893153956696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353348 (n + 1) + A353350 (n + 1)

end

end A353349.P11202802893153956696

/-! ## A353349.P15704822311275593967

`A353348(n+1)+1-abs(A332813(2*(n+1))-1)`
-/

namespace A353349.P15704822311275593967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353348 (n + 1) + (1 - |A332813 (2 * (n + 1)) - 1|)

end

end A353349.P15704822311275593967

/-! ## A353349.P1943216703635075951

`A353348(n+1)-A057428(A353353(n+1))`
-/

namespace A353349.P1943216703635075951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353348 (n + 1) - A057428 (A353353 (n + 1)).toNat

end

end A353349.P1943216703635075951

/-! ## A353349.P2345779073057703184

`A353348(n+1)+atan(A000007(n))^A332813(n+1)`
-/

namespace A353349.P2345779073057703184
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A353348 (n + 1) : ℝ) + Real.arctan (A000007 n : ℝ) ^ (A332813 (n + 1) : ℤ)

end

end A353349.P2345779073057703184

/-! ## A353349.P10125917126619136094

`A353348(n+1)+∑{d}[n+1, A008683(#)*A353352((n+1)/#)]`
-/

namespace A353349.P10125917126619136094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353348 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A008683 d * A353352 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A353349.P10125917126619136094

/-! ## A353349.P419393426457188454

`∑{d}[n+1, A353418(#)*A353421((n+1)/#)]+1-A332823(n+1)²`
-/

namespace A353349.P419393426457188454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353418 d * A353421 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat + (1 - A332823 (n + 1) ^ 2)

end

end A353349.P419393426457188454

/-! ## A353349.P12017188985400333314

`A353348(n+1)+A000007(n*A332813(n+1))`
-/

namespace A353349.P12017188985400333314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353348 (n + 1) + A000007 ((n : ℤ) * A332813 (n + 1)).toNat

end

end A353349.P12017188985400333314

/-! ## A353349.P14166420315613951467

`A000035(A332823(n+1)+2*n+1)+∑{d}[n+1, A353418(#)*A353421((n+1)/#)]`
-/

namespace A353349.P14166420315613951467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A332823 (n + 1) + (2 * n + 1 : ℤ)).toNat + ∑ d ∈ Nat.divisors (f1 n), A353418 d * A353421 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A353349.P14166420315613951467

/-! ## A353349.P11091541579973090707

`A353348(n+1)+A353269(A332462(n+1))`
-/

namespace A353349.P11091541579973090707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353348 (n + 1) + A353269 (A332462 (n + 1)).toNat

end

end A353349.P11091541579973090707

/-! ## A353349.P2613320151689473596

`A358261(A345591(n+2))`
-/

namespace A353349.P2613320151689473596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358261 (A345591 (n + 2)).toNat

end

end A353349.P2613320151689473596

/-!
# A353350: a(n) = 1 if A048675(n) is a multiple of 3, otherwise 0.

The programs for A353350, the canonical program `A353350.P17688933372676458567` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353350 has offset 1).

The definition of A353350 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353350.P6051695710926070585

`A353269(A332462(n+1))`
-/

namespace A353350.P6051695710926070585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353269 (A332462 (n + 1)).toNat

end

end A353350.P6051695710926070585

namespace A353350

/-- `A353269(A332462(n+1))` -/
def P6051695710926070585.Spec : Prop :=
  ∀ n, P6051695710926070585.a n = A353350 (n + 1)

end A353350

/-! ## A353350.P17688933372676458567

`A079978(A048675(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A353350

/-- `A079978(A048675(n+1))` -/
def P17688933372676458567.Spec : Prop :=
  ∀ n, P17688933372676458567.a n = A353350 (n + 1)

theorem P17688933372676458567.correct : P17688933372676458567.Spec := by
  intro n
  simp only [A353350, Nat.add_sub_cancel]

end A353350

/-! ## A353350.P215064845535092254

`floor(acot(A332813(n+1)))`
-/

namespace A353350.P215064845535092254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A332813 (n + 1) : ℝ)⌋

end

end A353350.P215064845535092254

namespace A353350

/-- `floor(acot(A332813(n+1)))` -/
def P215064845535092254.Spec : Prop :=
  ∀ n, P215064845535092254.a n = A353350 (n + 1)

end A353350

/-! ## A353350.P348189388293738626

`1-abs(A332823(n+1))`
-/

namespace A353350.P348189388293738626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |A332823 (n + 1)|

end

end A353350.P348189388293738626

namespace A353350

/-- `1-abs(A332823(n+1))` -/
def P348189388293738626.Spec : Prop :=
  ∀ n, P348189388293738626.a n = A353350 (n + 1)

end A353350

/-! ## A353350.P3657780227805049322

`ceil(A353353(n+1)/29)`
-/

namespace A353350.P3657780227805049322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A353353 (n + 1) : ℚ) / 29⌉

end

end A353350.P3657780227805049322

namespace A353350

/-- `ceil(A353353(n+1)/29)` -/
def P3657780227805049322.Spec : Prop :=
  ∀ n, P3657780227805049322.a n = A353350 (n + 1)

end A353350

/-! ## A353350.P13493068115858399798

`(A324286(n+1)+1)%2`
-/

namespace A353350.P13493068115858399798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324286 (n + 1) + 1) 2

end

end A353350.P13493068115858399798

namespace A353350

/-- `(A324286(n+1)+1)%2` -/
def P13493068115858399798.Spec : Prop :=
  ∀ n, P13493068115858399798.a n = A353350 (n + 1)

end A353350

/-! ## A353350.P15756302051261428635

`and(1, A332813(2*(n+1)))`
-/

namespace A353350.P15756302051261428635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A332813 (2 * (n + 1)))

end

end A353350.P15756302051261428635

namespace A353350

/-- `and(1, A332813(2*(n+1)))` -/
def P15756302051261428635.Spec : Prop :=
  ∀ n, P15756302051261428635.a n = A353350 (n + 1)

end A353350

/-! ## A353350.P4940510675483861028

`A332813(3*(n+1))!-1`
-/

namespace A353350.P4940510675483861028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A332813 (3 * (n + 1))).toNat : ℤ) - 1

end

end A353350.P4940510675483861028

namespace A353350

/-- `A332813(3*(n+1))!-1` -/
def P4940510675483861028.Spec : Prop :=
  ∀ n, P4940510675483861028.a n = A353350 (n + 1)

end A353350

/-! ## A353350.P15790515337693999493

`char[n*A332823(2*(n+1))]`
-/

namespace A353350.P15790515337693999493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A332823 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353350.P15790515337693999493

namespace A353350

/-- `char[n*A332823(2*(n+1))]` -/
def P15790515337693999493.Spec : Prop :=
  ∀ n, (P15790515337693999493.a n : ℤ) = A353350 (n + 1)

end A353350

/-! ## A353350.P16971558117525782010

`A057427(A353353(n+1))`
-/

namespace A353350.P16971558117525782010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A353353 (n + 1)).toNat

end

end A353350.P16971558117525782010

namespace A353350

/-- `A057427(A353353(n+1))` -/
def P16971558117525782010.Spec : Prop :=
  ∀ n, P16971558117525782010.a n = A353350 (n + 1)

end A353350

/-! ## A353350.P17225580706823801485

`A353380(A097248(n+1))`
-/

namespace A353350.P17225580706823801485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353380 (A097248 (n + 1)).toNat

end

end A353350.P17225580706823801485

namespace A353350

/-- `A353380(A097248(n+1))` -/
def P17225580706823801485.Spec : Prop :=
  ∀ n, P17225580706823801485.a n = A353350 (n + 1)

end A353350

/-! ## A353350.P6998013253014209715

`A057428(A353353(n+1)²)²`
-/

namespace A353350.P6998013253014209715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A353353 (n + 1) ^ 2).toNat ^ 2

end

end A353350.P6998013253014209715

namespace A353350

/-- `A057428(A353353(n+1)²)²` -/
def P6998013253014209715.Spec : Prop :=
  ∀ n, P6998013253014209715.a n = A353350 (n + 1)

end A353350

/-! ## A353350.P9715047703996344597

`A049347(2*A195017(n+1)²)`
-/

namespace A353350.P9715047703996344597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (2 * A195017 (n + 1) ^ 2).toNat

end

end A353350.P9715047703996344597

namespace A353350

/-- `A049347(2*A195017(n+1)²)` -/
def P9715047703996344597.Spec : Prop :=
  ∀ n, P9715047703996344597.a n = A353350 (n + 1)

end A353350

/-! ## A353350.P13554445426326248242

`A353349(n+1)-A353348(n+1)`
-/

namespace A353350.P13554445426326248242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353349 (n + 1) - A353348 (n + 1)

end

end A353350.P13554445426326248242

namespace A353350

/-- `A353349(n+1)-A353348(n+1)` -/
def P13554445426326248242.Spec : Prop :=
  ∀ n, P13554445426326248242.a n = A353350 (n + 1)

end A353350

/-! ## A353350.P6061050048576773075

`val(A113801(n+1), 2)^abs(A332823(n+1))`
-/

namespace A353350.P6061050048576773075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A113801 (n + 1)).toNat 2 : ℚ) ^ (|A332823 (n + 1)| : ℤ)

end

end A353350.P6061050048576773075

namespace A353350

/-- `val(A113801(n+1), 2)^abs(A332823(n+1))` -/
def P6061050048576773075.Spec : Prop :=
  ∀ n, P6061050048576773075.a n = (A353350 (n + 1) : ℚ)

end A353350

/-! ## A353350.P10843579973818062003

`val(A113805(n+1), 2)^abs(A332823(n+1))`
-/

namespace A353350.P10843579973818062003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A113805 (n + 1)).toNat 2 : ℚ) ^ (|A332823 (n + 1)| : ℤ)

end

end A353350.P10843579973818062003

namespace A353350

/-- `val(A113805(n+1), 2)^abs(A332823(n+1))` -/
def P10843579973818062003.Spec : Prop :=
  ∀ n, P10843579973818062003.a n = (A353350 (n + 1) : ℚ)

end A353350

/-! ## A353350.P10660794420688535590

`∑{d}[n+1, A008683(#)*A353352((n+1)/#)]`
-/

namespace A353350.P10660794420688535590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A353352 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A353350.P10660794420688535590

namespace A353350

/-- `∑{d}[n+1, A008683(#)*A353352((n+1)/#)]` -/
def P10660794420688535590.Spec : Prop :=
  ∀ n, P10660794420688535590.a n = A353350 (n + 1)

end A353350

/-! ## A353350.P4740848368848831714

`∑{d}[n+1, A353269(#)*A353422((n+1)/#)]`
-/

namespace A353350.P4740848368848831714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353269 d * A353422 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A353350.P4740848368848831714

namespace A353350

/-- `∑{d}[n+1, A353269(#)*A353422((n+1)/#)]` -/
def P4740848368848831714.Spec : Prop :=
  ∀ n, P4740848368848831714.a n = A353350 (n + 1)

end A353350

/-! ## A353350.P5086273577652466179

`A353353(n+1)/(A353353(n+1)+A332823(n+1))`
-/

namespace A353350.P5086273577652466179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353353 (n + 1) : ℚ) / (A353353 (n + 1) + A332823 (n + 1) : ℚ)

end

end A353350.P5086273577652466179

namespace A353350

/-- `A353353(n+1)/(A353353(n+1)+A332823(n+1))` -/
def P5086273577652466179.Spec : Prop :=
  ∀ n, P5086273577652466179.a n = (A353350 (n + 1) : ℚ)

end A353350

/-! ## A353350.P16715184497059000063

`val(record[A000010(n+1)]^A332813(n+1)+5, 2)`
-/

namespace A353350.P16715184497059000063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (A332813 (n + 1) : ℤ) + 5)).toNat 2

end

end A353350.P16715184497059000063

namespace A353350

/-- `val(record[A000010(n+1)]^A332813(n+1)+5, 2)` -/
def P16715184497059000063.Spec : Prop :=
  ∀ n, (P16715184497059000063.a n : ℤ) = A353350 (n + 1)

end A353350

/-!
# A353351: Number of divisors d of n for which A048675(d) is not a multiple of 3.

The programs for A353351, the canonical program `A353351.P1500515307686791628` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353351 has offset 1).

The definition of A353351 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A353352, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353351.P15237495861246541086

`A353328(n+1)+A353329(n+1)`
-/

namespace A353351.P15237495861246541086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353328 (n + 1) + A353329 (n + 1)

end

end A353351.P15237495861246541086

namespace A353351

/-- `A353328(n+1)+A353329(n+1)` -/
def P15237495861246541086.Spec : Prop :=
  ∀ n, P15237495861246541086.a n = A353351 (n + 1)

end A353351

/-! ## A353351.P1500515307686791628

`A000005(n+1)-A353352(n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A353351

/-- `A000005(n+1)-A353352(n+1)` -/
def P1500515307686791628.Spec : Prop :=
  ∀ n, P1500515307686791628.a n = A353351 (n + 1)

theorem P1500515307686791628.correct : P1500515307686791628.Spec := by
  intro n
  simp only [A353351, Nat.add_sub_cancel]

end A353351

/-! ## A353351.P17367521520763086667

`Δ[A006218(n)]-A353352(n+1)`
-/

namespace A353351.P17367521520763086667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A353352 (n + 1)

end

end A353351.P17367521520763086667

namespace A353351

/-- `Δ[A006218(n)]-A353352(n+1)` -/
def P17367521520763086667.Spec : Prop :=
  ∀ n, P17367521520763086667.a n = A353351 (n + 1)

end A353351

/-! ## A353351.P10956481241188363708

`A032741(n+1)+1-A353352(n+1)`
-/

namespace A353351.P10956481241188363708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + 1 - A353352 (n + 1)

end

end A353351.P10956481241188363708

namespace A353351

/-- `A032741(n+1)+1-A353352(n+1)` -/
def P10956481241188363708.Spec : Prop :=
  ∀ n, P10956481241188363708.a n = A353351 (n + 1)

end A353351

/-! ## A353351.P7580906168492713660

`A353354(n+1)+2*A353329(n+1)`
-/

namespace A353351.P7580906168492713660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353354 (n + 1) + 2 * A353329 (n + 1)

end

end A353351.P7580906168492713660

namespace A353351

/-- `A353354(n+1)+2*A353329(n+1)` -/
def P7580906168492713660.Spec : Prop :=
  ∀ n, P7580906168492713660.a n = A353351 (n + 1)

end A353351

/-! ## A353351.P7280319432471274356

`2*A353328(n+1)-A353354(n+1)`
-/

namespace A353351.P7280319432471274356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A353328 (n + 1) - A353354 (n + 1)

end

end A353351.P7280319432471274356

namespace A353351

/-- `2*A353328(n+1)-A353354(n+1)` -/
def P7280319432471274356.Spec : Prop :=
  ∀ n, P7280319432471274356.a n = A353351 (n + 1)

end A353351

/-! ## A353351.P12887600581949545313

`A038040(n+1)/(n+1)-A353352(n+1)`
-/

namespace A353351.P12887600581949545313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (n + 1 : ℚ) - (A353352 (n + 1) : ℚ)

end

end A353351.P12887600581949545313

namespace A353351

/-- `A038040(n+1)/(n+1)-A353352(n+1)` -/
def P12887600581949545313.Spec : Prop :=
  ∀ n, P12887600581949545313.a n = (A353351 (n + 1) : ℚ)

end A353351

/-! ## A353351.P3412655510755697051

`A000027(∏{e}[n+1, #+1])-A353352(n+1)`
-/

namespace A353351.P3412655510755697051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) - A353352 (n + 1)

end

end A353351.P3412655510755697051

namespace A353351

/-- `A000027(∏{e}[n+1, #+1])-A353352(n+1)` -/
def P3412655510755697051.Spec : Prop :=
  ∀ n, P3412655510755697051.a n = A353351 (n + 1)

end A353351

/-! ## A353351.P2568276308565243984

`A028310(∑{d}[n+1, gcd(#, n²)])-A353352(n+1)`
-/

namespace A353351.P2568276308565243984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ d ∈ Nat.divisors (f1 n), Nat.gcd d (n ^ 2)) - A353352 (n + 1)

end

end A353351.P2568276308565243984

namespace A353351

/-- `A028310(∑{d}[n+1, gcd(#, n²)])-A353352(n+1)` -/
def P2568276308565243984.Spec : Prop :=
  ∀ n, P2568276308565243984.a n = A353351 (n + 1)

end A353351

/-! ## A353351.P13067217696582530500

`∑{d}[n+1, #+1]-A000203(n+1)-A353352(n+1)`
-/

namespace A353351.P13067217696582530500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - A000203 (n + 1) - A353352 (n + 1)

end

end A353351.P13067217696582530500

namespace A353351

/-- `∑{d}[n+1, #+1]-A000203(n+1)-A353352(n+1)` -/
def P13067217696582530500.Spec : Prop :=
  ∀ n, P13067217696582530500.a n = A353351 (n + 1)

end A353351

/-! ## A353351.P8460485559446904147

`A000027(∑{d}[n+1, #+1]-∑{d}[n+1, #])-A353352(n+1)`
-/

namespace A353351.P8460485559446904147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ d ∈ Nat.divisors (f1 n), (d + 1) - ∑ d ∈ Nat.divisors (f2 n), d) - A353352 (n + 1)

end

end A353351.P8460485559446904147

namespace A353351

/-- `A000027(∑{d}[n+1, #+1]-∑{d}[n+1, #])-A353352(n+1)` -/
def P8460485559446904147.Spec : Prop :=
  ∀ n, P8460485559446904147.a n = A353351 (n + 1)

end A353351

/-! ## A353351.P1270564309813829959

`A028310(∑{d}[n+1, #+1]-∑{d}[n+1, #])-A353352(n+1)`
-/

namespace A353351.P1270564309813829959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ d ∈ Nat.divisors (f1 n), (d + 1) - ∑ d ∈ Nat.divisors (f2 n), d) - A353352 (n + 1)

end

end A353351.P1270564309813829959

namespace A353351

/-- `A028310(∑{d}[n+1, #+1]-∑{d}[n+1, #])-A353352(n+1)` -/
def P1270564309813829959.Spec : Prop :=
  ∀ n, P1270564309813829959.a n = A353351 (n + 1)

end A353351

/-! ## A353351.P2102591359506403993

`A294893(n+1)+A294894(n+1)-A353352(n+1)`
-/

namespace A353351.P2102591359506403993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294893 (n + 1) + (A294894 (n + 1) - A353352 (n + 1))

end

end A353351.P2102591359506403993

namespace A353351

/-- `A294893(n+1)+A294894(n+1)-A353352(n+1)` -/
def P2102591359506403993.Spec : Prop :=
  ∀ n, P2102591359506403993.a n = A353351 (n + 1)

end A353351

/-! ## A353351.P7132642811781323173

`A324826(n+1)+A324827(n+1)-A353352(n+1)`
-/

namespace A353351.P7132642811781323173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324826 (n + 1) + (A324827 (n + 1) - A353352 (n + 1))

end

end A353351.P7132642811781323173

namespace A353351

/-- `A324826(n+1)+A324827(n+1)-A353352(n+1)` -/
def P7132642811781323173.Spec : Prop :=
  ∀ n, P7132642811781323173.a n = A353351 (n + 1)

end A353351

/-! ## A353351.P7821790605678150248

`A336041(n+1)+A349658(n+1)-A353352(n+1)`
-/

namespace A353351.P7821790605678150248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336041 (n + 1) + (A349658 (n + 1) - A353352 (n + 1))

end

end A353351.P7821790605678150248

namespace A353351

/-- `A336041(n+1)+A349658(n+1)-A353352(n+1)` -/
def P7821790605678150248.Spec : Prop :=
  ∀ n, P7821790605678150248.a n = A353351 (n + 1)

end A353351

/-! ## A353351.P1398566370720825530

`A353361(n+1)+A353362(n+1)-A353352(n+1)`
-/

namespace A353351.P1398566370720825530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353361 (n + 1) + (A353362 (n + 1) - A353352 (n + 1))

end

end A353351.P1398566370720825530

namespace A353351

/-- `A353361(n+1)+A353362(n+1)-A353352(n+1)` -/
def P1398566370720825530.Spec : Prop :=
  ∀ n, P1398566370720825530.a n = A353351 (n + 1)

end A353351

/-! ## A353351.P8777805888935489134

`A353371(n+1)+A353372(n+1)-A353352(n+1)`
-/

namespace A353351.P8777805888935489134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353371 (n + 1) + (A353372 (n + 1) - A353352 (n + 1))

end

end A353351.P8777805888935489134

namespace A353351

/-- `A353371(n+1)+A353372(n+1)-A353352(n+1)` -/
def P8777805888935489134.Spec : Prop :=
  ∀ n, P8777805888935489134.a n = A353351 (n + 1)

end A353351

/-! ## A353351.P10293567025929056565

`A353375(n+1)+A353376(n+1)-A353352(n+1)`
-/

namespace A353351.P10293567025929056565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353375 (n + 1) + (A353376 (n + 1) - A353352 (n + 1))

end

end A353351.P10293567025929056565

namespace A353351

/-- `A353375(n+1)+A353376(n+1)-A353352(n+1)` -/
def P10293567025929056565.Spec : Prop :=
  ∀ n, P10293567025929056565.a n = A353351 (n + 1)

end A353351

/-! ## A353351.P17961603317642243753

`A353381(n+1)+A353382(n+1)-A353352(n+1)`
-/

namespace A353351.P17961603317642243753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353381 (n + 1) + (A353382 (n + 1) - A353352 (n + 1))

end

end A353351.P17961603317642243753

namespace A353351

/-- `A353381(n+1)+A353382(n+1)-A353352(n+1)` -/
def P17961603317642243753.Spec : Prop :=
  ∀ n, P17961603317642243753.a n = A353351 (n + 1)

end A353351

/-! ## A353351.P7292070618305948603

`A033273(n+1)+A001222(∏{p}[n+1, #])-A353352(n+1)`
-/

namespace A353351.P7292070618305948603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1) + A001222 (∏ p ∈ Nat.primeFactors (f1 n), p) - A353352 (n + 1)

end

end A353351.P7292070618305948603

namespace A353351

/-- `A033273(n+1)+A001222(∏{p}[n+1, #])-A353352(n+1)` -/
def P7292070618305948603.Spec : Prop :=
  ∀ n, P7292070618305948603.a n = A353351 (n + 1)

end A353351

/-!
# A353352: Number of divisors d of n for which A048675(d) is a multiple of 3.

The programs for A353352, the canonical program `A353352.P1673129124953599033` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353352 has offset 1).

The definition of A353352 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353352.P3537939132228386157

`A000005(n+1)-A353351(n+1)`
-/

namespace A353352.P3537939132228386157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A353351 (n + 1)

end

end A353352.P3537939132228386157

namespace A353352

/-- `A000005(n+1)-A353351(n+1)` -/
def P3537939132228386157.Spec : Prop :=
  ∀ n, P3537939132228386157.a n = A353352 (n + 1)

end A353352

/-! ## A353352.P1673129124953599033

`∑{d}[n+1, A353350(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A353352

/-- `∑{d}[n+1, A353350(#)]` -/
def P1673129124953599033.Spec : Prop :=
  ∀ n, P1673129124953599033.a n = A353352 (n + 1)

theorem P1673129124953599033.correct : P1673129124953599033.Spec := by
  intro n
  simp only [A353352, Nat.add_sub_cancel]

end A353352

/-! ## A353352.P7996165661657189894

`Δ[A006218(n)]-A353351(n+1)`
-/

namespace A353352.P7996165661657189894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A353351 (n + 1)

end

end A353352.P7996165661657189894

namespace A353352

/-- `Δ[A006218(n)]-A353351(n+1)` -/
def P7996165661657189894.Spec : Prop :=
  ∀ n, P7996165661657189894.a n = A353352 (n + 1)

end A353352

/-! ## A353352.P12394468886642573143

`Δ[A054519(n)]-A353351(n+1)`
-/

namespace A353352.P12394468886642573143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A353351 (n + 1)

end

end A353352.P12394468886642573143

namespace A353352

/-- `Δ[A054519(n)]-A353351(n+1)` -/
def P12394468886642573143.Spec : Prop :=
  ∀ n, P12394468886642573143.a n = A353352 (n + 1)

end A353352

/-! ## A353352.P1549845209129180066

`A032741(n+1)+1-A353351(n+1)`
-/

namespace A353352.P1549845209129180066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + 1 - A353351 (n + 1)

end

end A353352.P1549845209129180066

namespace A353352

/-- `A032741(n+1)+1-A353351(n+1)` -/
def P1549845209129180066.Spec : Prop :=
  ∀ n, P1549845209129180066.a n = A353352 (n + 1)

end A353352

/-! ## A353352.P5588189582496203464

`A038040(n+1)/(n+1)-A353351(n+1)`
-/

namespace A353352.P5588189582496203464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (n + 1 : ℚ) - (A353351 (n + 1) : ℚ)

end

end A353352.P5588189582496203464

namespace A353352

/-- `A038040(n+1)/(n+1)-A353351(n+1)` -/
def P5588189582496203464.Spec : Prop :=
  ∀ n, P5588189582496203464.a n = (A353352 (n + 1) : ℚ)

end A353352

/-! ## A353352.P7518996285789175076

`A000027(∏{e}[n+1, #+1]-A353351(n+1))`
-/

namespace A353352.P7518996285789175076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A353351 (n + 1)).toNat

end

end A353352.P7518996285789175076

namespace A353352

/-- `A000027(∏{e}[n+1, #+1]-A353351(n+1))` -/
def P7518996285789175076.Spec : Prop :=
  ∀ n, P7518996285789175076.a n = A353352 (n + 1)

end A353352

/-! ## A353352.P7983096586111258325

`A028310(∏{e}[n+1, #+1]-A353351(n+1))`
-/

namespace A353352.P7983096586111258325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A353351 (n + 1)).toNat

end

end A353352.P7983096586111258325

namespace A353352

/-- `A028310(∏{e}[n+1, #+1]-A353351(n+1))` -/
def P7983096586111258325.Spec : Prop :=
  ∀ n, P7983096586111258325.a n = A353352 (n + 1)

end A353352

/-! ## A353352.P1640294133530907661

`∑{d}[n+1, A353362(#)*A353422((n+1)/#)]`
-/

namespace A353352.P1640294133530907661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353362 d * A353422 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A353352.P1640294133530907661

namespace A353352

/-- `∑{d}[n+1, A353362(#)*A353422((n+1)/#)]` -/
def P1640294133530907661.Spec : Prop :=
  ∀ n, P1640294133530907661.a n = A353352 (n + 1)

end A353352

/-! ## A353352.P15181269817312498337

`∑{d}[n+1, #+1]-A000203(n+1)-A353351(n+1)`
-/

namespace A353352.P15181269817312498337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - A000203 (n + 1) - A353351 (n + 1)

end

end A353352.P15181269817312498337

namespace A353352

/-- `∑{d}[n+1, #+1]-A000203(n+1)-A353351(n+1)` -/
def P15181269817312498337.Spec : Prop :=
  ∀ n, P15181269817312498337.a n = A353352 (n + 1)

end A353352

/-! ## A353352.P9490431301629452611

`A087990(n+1)+A087991(n+1)-A353351(n+1)`
-/

namespace A353352.P9490431301629452611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087990 (n + 1) + (A087991 (n + 1) - A353351 (n + 1))

end

end A353352.P9490431301629452611

namespace A353352

/-- `A087990(n+1)+A087991(n+1)-A353351(n+1)` -/
def P9490431301629452611.Spec : Prop :=
  ∀ n, P9490431301629452611.a n = A353352 (n + 1)

end A353352

/-! ## A353352.P11728778421345495280

`A294893(n+1)+A294894(n+1)-A353351(n+1)`
-/

namespace A353352.P11728778421345495280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294893 (n + 1) + (A294894 (n + 1) - A353351 (n + 1))

end

end A353352.P11728778421345495280

namespace A353352

/-- `A294893(n+1)+A294894(n+1)-A353351(n+1)` -/
def P11728778421345495280.Spec : Prop :=
  ∀ n, P11728778421345495280.a n = A353352 (n + 1)

end A353352

/-! ## A353352.P12433943058876590505

`A324392(n+1)+A324393(n+1)-A353351(n+1)`
-/

namespace A353352.P12433943058876590505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324392 (n + 1) + (A324393 (n + 1) - A353351 (n + 1))

end

end A353352.P12433943058876590505

namespace A353352

/-- `A324392(n+1)+A324393(n+1)-A353351(n+1)` -/
def P12433943058876590505.Spec : Prop :=
  ∀ n, P12433943058876590505.a n = A353352 (n + 1)

end A353352

/-! ## A353352.P17929143272792701961

`A324826(n+1)+A324827(n+1)-A353351(n+1)`
-/

namespace A353352.P17929143272792701961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324826 (n + 1) + (A324827 (n + 1) - A353351 (n + 1))

end

end A353352.P17929143272792701961

namespace A353352

/-- `A324826(n+1)+A324827(n+1)-A353351(n+1)` -/
def P17929143272792701961.Spec : Prop :=
  ∀ n, P17929143272792701961.a n = A353352 (n + 1)

end A353352

/-! ## A353352.P5346790295595991620

`A353361(n+1)+A353362(n+1)-A353351(n+1)`
-/

namespace A353352.P5346790295595991620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353361 (n + 1) + (A353362 (n + 1) - A353351 (n + 1))

end

end A353352.P5346790295595991620

namespace A353352

/-- `A353361(n+1)+A353362(n+1)-A353351(n+1)` -/
def P5346790295595991620.Spec : Prop :=
  ∀ n, P5346790295595991620.a n = A353352 (n + 1)

end A353352

/-! ## A353352.P3033018488327660591

`A353371(n+1)+A353372(n+1)-A353351(n+1)`
-/

namespace A353352.P3033018488327660591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353371 (n + 1) + (A353372 (n + 1) - A353351 (n + 1))

end

end A353352.P3033018488327660591

namespace A353352

/-- `A353371(n+1)+A353372(n+1)-A353351(n+1)` -/
def P3033018488327660591.Spec : Prop :=
  ∀ n, P3033018488327660591.a n = A353352 (n + 1)

end A353352

/-! ## A353352.P2269847245580038426

`A353375(n+1)+A353376(n+1)-A353351(n+1)`
-/

namespace A353352.P2269847245580038426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353375 (n + 1) + (A353376 (n + 1) - A353351 (n + 1))

end

end A353352.P2269847245580038426

namespace A353352

/-- `A353375(n+1)+A353376(n+1)-A353351(n+1)` -/
def P2269847245580038426.Spec : Prop :=
  ∀ n, P2269847245580038426.a n = A353352 (n + 1)

end A353352

/-! ## A353352.P14974796552350394767

`∑{d}[n+1, A057427(#)]-A353351(n+1)`
-/

namespace A353352.P14974796552350394767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 d - A353351 (n + 1)

end

end A353352.P14974796552350394767

namespace A353352

/-- `∑{d}[n+1, A057427(#)]-A353351(n+1)` -/
def P14974796552350394767.Spec : Prop :=
  ∀ n, P14974796552350394767.a n = A353352 (n + 1)

end A353352

/-!
# A353353: Number of ways to write n as a product of the terms of A332820 larger than 1; a(1) = 1 by convention (an empty product).

The programs for A353353, there is no canonical definition to state claims against.
-/

/-! ## A353353.P7637791947032877280

`A050252(A336424(n+1))*A353350(n+1)`
-/

namespace A353353.P7637791947032877280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050252 (A336424 (n + 1)).toNat * A353350 (n + 1)

end

end A353353.P7637791947032877280

/-! ## A353353.P10830522635611214078

`A333381(A292504(n+1)*A353350(n+1))`
-/

namespace A353353.P10830522635611214078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A292504 (n + 1) * A353350 (n + 1)).toNat

end

end A353353.P10830522635611214078

/-! ## A353353.P17038610480535819106

`A050361(A062993(n+2))*A353350(n+1)`
-/

namespace A353353.P17038610480535819106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (A062993 (n + 2)).toNat * A353350 (n + 1)

end

end A353353.P17038610480535819106

/-! ## A353353.P7067360248240607266

`A260736(A007426(n+1)*A353350(n+1))`
-/

namespace A353353.P7067360248240607266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260736 (A007426 (n + 1) * A353350 (n + 1)).toNat

end

end A353353.P7067360248240607266

/-! ## A353353.P8921154286007844994

`A353350(A003961((n+1)²))*A353422(n+1)`
-/

namespace A353353.P8921154286007844994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353350 (A003961 ((n + 1) ^ 2)).toNat * A353422 (n + 1)

end

end A353353.P8921154286007844994

/-!
# A353354: Inverse Möbius transform of A332823.

The programs for A353354, the canonical program `A353354.P15025921415780628562` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353354 has offset 1).

The definition of A353354 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353354.P5316892084161670010

`A353328(n+1)-A353329(n+1)`
-/

namespace A353354.P5316892084161670010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353328 (n + 1) - A353329 (n + 1)

end

end A353354.P5316892084161670010

namespace A353354

/-- `A353328(n+1)-A353329(n+1)` -/
def P5316892084161670010.Spec : Prop :=
  ∀ n, P5316892084161670010.a n = A353354 (n + 1)

end A353354

/-! ## A353354.P3114577255800261459

`A353328(n+1)-A353328(A003961(n+1))`
-/

namespace A353354.P3114577255800261459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353328 (n + 1) - A353328 (A003961 (n + 1)).toNat

end

end A353354.P3114577255800261459

namespace A353354

/-- `A353328(n+1)-A353328(A003961(n+1))` -/
def P3114577255800261459.Spec : Prop :=
  ∀ n, P3114577255800261459.a n = A353354 (n + 1)

end A353354

/-! ## A353354.P15025921415780628562

`∑{d}[n+1, A332823(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A353354

/-- `∑{d}[n+1, A332823(#)]` -/
def P15025921415780628562.Spec : Prop :=
  ∀ n, P15025921415780628562.a n = A353354 (n + 1)

theorem P15025921415780628562.correct : P15025921415780628562.Spec := by
  intro n
  simp only [A353354, Nat.add_sub_cancel]

end A353354

/-! ## A353354.P8815333181170052887

`A332823(n+1)*A353446(n+1)`
-/

namespace A353354.P8815333181170052887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332823 (n + 1) * A353446 (n + 1)

end

end A353354.P8815333181170052887

namespace A353354

/-- `A332823(n+1)*A353446(n+1)` -/
def P8815333181170052887.Spec : Prop :=
  ∀ n, P8815333181170052887.a n = A353354 (n + 1)

end A353354

/-! ## A353354.P14521972632770678003

`2*A353328(n+1)-A353351(n+1)`
-/

namespace A353354.P14521972632770678003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A353328 (n + 1) - A353351 (n + 1)

end

end A353354.P14521972632770678003

namespace A353354

/-- `2*A353328(n+1)-A353351(n+1)` -/
def P14521972632770678003.Spec : Prop :=
  ∀ n, P14521972632770678003.a n = A353354 (n + 1)

end A353354

/-! ## A353354.P6586998231019955329

`A353351(n+1)-2*A353329(n+1)`
-/

namespace A353354.P6586998231019955329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353351 (n + 1) - 2 * A353329 (n + 1)

end

end A353354.P6586998231019955329

namespace A353354

/-- `A353351(n+1)-2*A353329(n+1)` -/
def P6586998231019955329.Spec : Prop :=
  ∀ n, P6586998231019955329.a n = A353354 (n + 1)

end A353354

/-! ## A353354.P18300542088840600251

`A353329(A061898(n+1))-A353329(n+1)`
-/

namespace A353354.P18300542088840600251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353329 (A061898 (n + 1)).toNat - A353329 (n + 1)

end

end A353354.P18300542088840600251

namespace A353354

/-- `A353329(A061898(n+1))-A353329(n+1)` -/
def P18300542088840600251.Spec : Prop :=
  ∀ n, P18300542088840600251.a n = A353354 (n + 1)

end A353354

/-! ## A353354.P13714971475840302471

`A353328(n+1)-A353328(A061898(n+1))`
-/

namespace A353354.P13714971475840302471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353328 (n + 1) - A353328 (A061898 (n + 1)).toNat

end

end A353354.P13714971475840302471

namespace A353354

/-- `A353328(n+1)-A353328(A061898(n+1))` -/
def P13714971475840302471.Spec : Prop :=
  ∀ n, P13714971475840302471.a n = A353354 (n + 1)

end A353354

/-! ## A353354.P16995889566440632032

`A353329(A003961(n+1))-A353329(n+1)`
-/

namespace A353354.P16995889566440632032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353329 (A003961 (n + 1)).toNat - A353329 (n + 1)

end

end A353354.P16995889566440632032

namespace A353354

/-- `A353329(A003961(n+1))-A353329(n+1)` -/
def P16995889566440632032.Spec : Prop :=
  ∀ n, P16995889566440632032.a n = A353354 (n + 1)

end A353354

/-! ## A353354.P6879230898116357806

`A353329(A045965(n+1))-A353329(n+1)`
-/

namespace A353354.P6879230898116357806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353329 (A045965 (n + 1)).toNat - A353329 (n + 1)

end

end A353354.P6879230898116357806

namespace A353354

/-- `A353329(A045965(n+1))-A353329(n+1)` -/
def P6879230898116357806.Spec : Prop :=
  ∀ n, P6879230898116357806.a n = A353354 (n + 1)

end A353354

/-! ## A353354.P6029826681239958673

`A353329(A118306(n+1))-A353329(n+1)`
-/

namespace A353354.P6029826681239958673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353329 (A118306 (n + 1)).toNat - A353329 (n + 1)

end

end A353354.P6029826681239958673

namespace A353354

/-- `A353329(A118306(n+1))-A353329(n+1)` -/
def P6029826681239958673.Spec : Prop :=
  ∀ n, P6029826681239958673.a n = A353354 (n + 1)

end A353354

/-! ## A353354.P3543282638785984204

`A353328(n+1)-A353328(A118306(n+1))`
-/

namespace A353354.P3543282638785984204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353328 (n + 1) - A353328 (A118306 (n + 1)).toNat

end

end A353354.P3543282638785984204

namespace A353354

/-- `A353328(n+1)-A353328(A118306(n+1))` -/
def P3543282638785984204.Spec : Prop :=
  ∀ n, P3543282638785984204.a n = A353354 (n + 1)

end A353354

/-!
# A353355: Numbers k for which A353328(k) is equal to A353329(k).

The programs for A353355, there is no canonical definition to state claims against.
-/

/-! ## A353355.P16169512512759393983

`filter[n+1, A353380(#)]`
-/

namespace A353355.P16169512512759393983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353380 (f1 j) = 1) n)

end

end A353355.P16169512512759393983

/-! ## A353355.P5347525847451332941

`eq[0, A353354(n+1)]+1`
-/

namespace A353355.P5347525847451332941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353354 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A353355.P5347525847451332941

/-! ## A353355.P15617306234144389438

`lt[0, A353380(n+1)]+1`
-/

namespace A353355.P15617306234144389438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353380 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A353355.P15617306234144389438

/-! ## A353355.P11565586666247098815

`eq[1, A353380(abs(1-n)+1)]`
-/

namespace A353355.P11565586666247098815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353380 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353355.P11565586666247098815

/-! ## A353355.P7638777798914786077

`eq[0, A353351(n+1)%2]+1`
-/

namespace A353355.P7638777798914786077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353351 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A353355.P7638777798914786077

/-! ## A353355.P13929586785333048250

`lt[0, (1-a(A353354(n)²))^3]` with `a(0)=0`
-/

namespace A353355.P13929586785333048250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  (1 - f2 (A353354 n ^ 2).toNat) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A353355.P13929586785333048250

/-! ## A353355.P10537655816604589583

`record[gcd(n+1, ∑{d}[n+1, A332823(#)])]`
-/

namespace A353355.P10537655816604589583
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (∑ d ∈ Nat.divisors (f2 n), A332823 d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353355.P10537655816604589583

/-! ## A353355.P14831601482202128928

`comp[lcm(n, A353354(A028310(n)))]`
-/

namespace A353355.P14831601482202128928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A353354 (A028310 n).toNat)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A353355.P14831601482202128928

/-! ## A353355.P18361772421263216935

`∪[A048944(n+1), A332820(n+1)]`
-/

namespace A353355.P18361772421263216935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332820 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A353355.P18361772421263216935

/-! ## A353355.P12982157596231313111

`∪[A059269(n+1), A332820(n+1)]`
-/

namespace A353355.P12982157596231313111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332820 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A353355.P12982157596231313111

/-!
# A353356: Numbers k for which A353328(k) > A353329(k). Positions of 1's in A353354.

The programs for A353356, there is no canonical definition to state claims against.
-/

/-! ## A353356.P1282814633322011409

`lt[0, A353354(n+1)]+1`
-/

namespace A353356.P1282814633322011409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353354 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A353356.P1282814633322011409

/-! ## A353356.P6765946783221133579

`eq[1, A353354(n+2)]+2`
-/

namespace A353356.P6765946783221133579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353354 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A353356.P6765946783221133579

/-! ## A353356.P15395355418227608663

`lt[0, A353354(ceil(abs(γ-n)))]`
-/

namespace A353356.P15395355418227608663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353354 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A353356.P15395355418227608663

/-! ## A353356.P4472188494383476925

`eq[1, A353354(gcd(n, n*a(n-1)))]` with `a(0)=0`
-/

namespace A353356.P4472188494383476925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A353354 (Int.gcd (n : ℤ) ((n : ℤ) * f2 (n - 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353356.P4472188494383476925

/-! ## A353356.P1145401459677697712

`eq[1, A353354(A022144(n))]`
-/

namespace A353356.P1145401459677697712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353354 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353356.P1145401459677697712

/-! ## A353356.P9731093534747887287

`eq[1, A353354(A028310(n))]`
-/

namespace A353356.P9731093534747887287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353354 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353356.P9731093534747887287

/-! ## A353356.P17990955442020353416

`A020725(eq[1, A353354(n+1)])`
-/

namespace A353356.P17990955442020353416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A353356.P17990955442020353416

/-! ## A353356.P1282786851030339771

`eq[1, A353354(A123108(2*n))]`
-/

namespace A353356.P1282786851030339771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353354 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353356.P1282786851030339771

/-!
# A353357: Numbers k for which A353328(k) < A353329(k). Positions of -1's in A353354.

The programs for A353357, there is no canonical definition to state claims against.
-/

/-! ## A353357.P1869721714744973531

`lt[A353354(n+1), 0]+1`
-/

namespace A353357.P1869721714744973531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353354 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A353357.P1869721714744973531

/-! ## A353357.P11087478796732816944

`lt[A353354(ceil(abs(γ-n))), 0]`
-/

namespace A353357.P11087478796732816944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353354 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A353357.P11087478796732816944

/-! ## A353357.P9674339407034040536

`eq[-1, A353354(n+2)]+2`
-/

namespace A353357.P9674339407034040536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353354 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A353357.P9674339407034040536

/-! ## A353357.P18055514150822451957

`eq[3, a(and(2, A353354(n)))+1]` with `a(0)=1, a(1)=1`
-/

namespace A353357.P18055514150822451957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  f2 (Int.land 2 (A353354 n)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353357.P18055514150822451957

/-! ## A353357.P11341382343362878060

`eq[1, -A353354(A022144(n))]`
-/

namespace A353357.P11341382343362878060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A353354 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353357.P11341382343362878060

/-! ## A353357.P7319564792458155049

`eq[1, -A353354(A028310(n))]`
-/

namespace A353357.P7319564792458155049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A353354 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353357.P7319564792458155049

/-! ## A353357.P16214639533272776449

`A020725(lt[A353354(n+1), 0])`
-/

namespace A353357.P16214639533272776449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353354 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A353357.P16214639533272776449

/-! ## A353357.P1361358194770978870

`eq[-1, A353354(A123108(2*n))]`
-/

namespace A353357.P1361358194770978870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353354 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353357.P1361358194770978870

/-! ## A353357.P16634660598483160182

`A020725(eq[1, A353354(n+1)+2])`
-/

namespace A353357.P16634660598483160182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353354 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A353357.P16634660598483160182

/-! ## A353357.P5355902057257577758

`eq[A057428(n+1), A353354(A028310(n))]`
-/

namespace A353357.P5355902057257577758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353354 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353357.P5355902057257577758

/-!
# A353358: Expansion of e.g.f. exp(log(1 - x)^4).

The programs for A353358, there is no canonical definition to state claims against.
-/

/-! ## A353358.P6491863829364779552

`A357882(A052905(n+2))`
-/

namespace A353358.P6491863829364779552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357882 (A052905 (n + 2)).toNat

end

end A353358.P6491863829364779552

/-!
# A353359: Number of ways to write the cube of n as a product of the terms of A332820 larger than 1; a(1) = 1 by convention (an empty product).

The programs for A353359, there is no canonical definition to state claims against.
-/

/-! ## A353359.P10774389383392740626

`A353353((n+1)^3)`
-/

namespace A353359.P10774389383392740626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353353 ((n + 1) ^ 3)

end

end A353359.P10774389383392740626

/-!
# A353360: a(n) = A006047(A048675(n)).

The programs for A353360, the canonical program `A353360.P3063535457221817968` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353360 has offset 1).

The definition of A353360 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006047, A048675, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353360.P3063535457221817968

`A006047(A048675(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A353360

/-- `A006047(A048675(n+1))` -/
def P3063535457221817968.Spec : Prop :=
  ∀ n, P3063535457221817968.a n = A353360 (n + 1)

theorem P3063535457221817968.correct : P3063535457221817968.Spec := by
  intro n
  simp only [A353360, Nat.add_sub_cancel]

end A353360

/-! ## A353360.P12078664847349291258

`A006047(Δ[A336415(n)])`
-/

namespace A353360.P12078664847349291258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (f1 (n + 1) - f1 n).toNat

end

end A353360.P12078664847349291258

namespace A353360

/-- `A006047(Δ[A336415(n)])` -/
def P12078664847349291258.Spec : Prop :=
  ∀ n, P12078664847349291258.a n = A353360 (n + 1)

end A353360

/-! ## A353360.P2938242086405286688

`A006047(∑{d}[n+1, A297108(#)])`
-/

namespace A353360.P2938242086405286688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (∑ d ∈ Nat.divisors (f1 n), A297108 d).toNat

end

end A353360.P2938242086405286688

namespace A353360

/-- `A006047(∑{d}[n+1, A297108(#)])` -/
def P2938242086405286688.Spec : Prop :=
  ∀ n, P2938242086405286688.a n = A353360 (n + 1)

end A353360

/-! ## A353360.P7234873091972141819

`A006047(A336415(n+1)-A336415(n))`
-/

namespace A353360.P7234873091972141819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A336415 (n + 1) - A336415 n).toNat

end

end A353360.P7234873091972141819

namespace A353360

/-- `A006047(A336415(n+1)-A336415(n))` -/
def P7234873091972141819.Spec : Prop :=
  ∀ n, P7234873091972141819.a n = A353360 (n + 1)

end A353360

/-! ## A353360.P8829017269234744758

`A006047(∑{p}[A097248(n+1), A297112(#)])`
-/

namespace A353360.P8829017269234744758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A297112 p).toNat

end

end A353360.P8829017269234744758

namespace A353360

/-- `A006047(∑{p}[A097248(n+1), A297112(#)])` -/
def P8829017269234744758.Spec : Prop :=
  ∀ n, P8829017269234744758.a n = A353360 (n + 1)

end A353360

/-! ## A353360.P16240998188828827180

`A006047(A156552(n+1)-A323905(n+1))`
-/

namespace A353360.P16240998188828827180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A156552 (n + 1) - A323905 (n + 1)).toNat

end

end A353360.P16240998188828827180

namespace A353360

/-- `A006047(A156552(n+1)-A323905(n+1))` -/
def P16240998188828827180.Spec : Prop :=
  ∀ n, P16240998188828827180.a n = A353360 (n + 1)

end A353360

/-!
# A353361: Number of divisors d of n for which A156552(d) is not a multiple of 3.

The programs for A353361, the canonical program `A353361.P1809669952894249071` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353361 has offset 1).

The definition of A353361 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353361.P8106359329734464488

`A000005(n+1)-A353362(n+1)`
-/

namespace A353361.P8106359329734464488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A353362 (n + 1)

end

end A353361.P8106359329734464488

namespace A353361

/-- `A000005(n+1)-A353362(n+1)` -/
def P8106359329734464488.Spec : Prop :=
  ∀ n, P8106359329734464488.a n = A353361 (n + 1)

end A353361

/-! ## A353361.P1809669952894249071

`∑{d}[n+1, A332814(#)²]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A353361

/-- `∑{d}[n+1, A332814(#)²]` -/
def P1809669952894249071.Spec : Prop :=
  ∀ n, P1809669952894249071.a n = A353361 (n + 1)

theorem P1809669952894249071.correct : P1809669952894249071.Spec := by
  intro n
  simp only [A353361, Nat.add_sub_cancel]

end A353361

/-! ## A353361.P1335071523999239977

`Δ[A006218(n)]-A353362(n+1)`
-/

namespace A353361.P1335071523999239977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A353362 (n + 1)

end

end A353361.P1335071523999239977

namespace A353361

/-- `Δ[A006218(n)]-A353362(n+1)` -/
def P1335071523999239977.Spec : Prop :=
  ∀ n, P1335071523999239977.a n = A353361 (n + 1)

end A353361

/-! ## A353361.P11686128552072854364

`Δ[A054519(n)]-A353362(n+1)`
-/

namespace A353361.P11686128552072854364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A353362 (n + 1)

end

end A353361.P11686128552072854364

namespace A353361

/-- `Δ[A054519(n)]-A353362(n+1)` -/
def P11686128552072854364.Spec : Prop :=
  ∀ n, P11686128552072854364.a n = A353361 (n + 1)

end A353361

/-! ## A353361.P147251568765819889

`A032741(n+1)+1-A353362(n+1)`
-/

namespace A353361.P147251568765819889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + 1 - A353362 (n + 1)

end

end A353361.P147251568765819889

namespace A353361

/-- `A032741(n+1)+1-A353362(n+1)` -/
def P147251568765819889.Spec : Prop :=
  ∀ n, P147251568765819889.a n = A353361 (n + 1)

end A353361

/-! ## A353361.P10939947681003054885

`A038040(n+1)/(n+1)-A353362(n+1)`
-/

namespace A353361.P10939947681003054885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (n + 1 : ℚ) - (A353362 (n + 1) : ℚ)

end

end A353361.P10939947681003054885

namespace A353361

/-- `A038040(n+1)/(n+1)-A353362(n+1)` -/
def P10939947681003054885.Spec : Prop :=
  ∀ n, P10939947681003054885.a n = (A353361 (n + 1) : ℚ)

end A353361

/-! ## A353361.P12801958415410115287

`A000027(∏{e}[n+1, #+1])-A353362(n+1)`
-/

namespace A353361.P12801958415410115287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) - A353362 (n + 1)

end

end A353361.P12801958415410115287

namespace A353361

/-- `A000027(∏{e}[n+1, #+1])-A353362(n+1)` -/
def P12801958415410115287.Spec : Prop :=
  ∀ n, P12801958415410115287.a n = A353361 (n + 1)

end A353361

/-! ## A353361.P4780776558961338579

`A028310(∏{e}[n+1, #+1])-A353362(n+1)`
-/

namespace A353361.P4780776558961338579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) - A353362 (n + 1)

end

end A353361.P4780776558961338579

namespace A353361

/-- `A028310(∏{e}[n+1, #+1])-A353362(n+1)` -/
def P4780776558961338579.Spec : Prop :=
  ∀ n, P4780776558961338579.a n = A353361 (n + 1)

end A353361

/-! ## A353361.P16129814012242363655

`A028310(∑{d}[n+1, gcd(#, n²)])-A353362(n+1)`
-/

namespace A353361.P16129814012242363655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ d ∈ Nat.divisors (f1 n), Nat.gcd d (n ^ 2)) - A353362 (n + 1)

end

end A353361.P16129814012242363655

namespace A353361

/-- `A028310(∑{d}[n+1, gcd(#, n²)])-A353362(n+1)` -/
def P16129814012242363655.Spec : Prop :=
  ∀ n, P16129814012242363655.a n = A353361 (n + 1)

end A353361

/-! ## A353361.P9932677792536546468

`∑{d}[n+1, #+1]-A000203(n+1)-A353362(n+1)`
-/

namespace A353361.P9932677792536546468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - A000203 (n + 1) - A353362 (n + 1)

end

end A353361.P9932677792536546468

namespace A353361

/-- `∑{d}[n+1, #+1]-A000203(n+1)-A353362(n+1)` -/
def P9932677792536546468.Spec : Prop :=
  ∀ n, P9932677792536546468.a n = A353361 (n + 1)

end A353361

/-! ## A353361.P4891845651694810188

`A000027(∑{d}[n+1, #+1]-∑{d}[n+1, #])-A353362(n+1)`
-/

namespace A353361.P4891845651694810188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ d ∈ Nat.divisors (f1 n), (d + 1) - ∑ d ∈ Nat.divisors (f2 n), d) - A353362 (n + 1)

end

end A353361.P4891845651694810188

namespace A353361

/-- `A000027(∑{d}[n+1, #+1]-∑{d}[n+1, #])-A353362(n+1)` -/
def P4891845651694810188.Spec : Prop :=
  ∀ n, P4891845651694810188.a n = A353361 (n + 1)

end A353361

/-! ## A353361.P11467666613348899646

`A028310(∑{d}[n+1, #+1]-∑{d}[n+1, #])-A353362(n+1)`
-/

namespace A353361.P11467666613348899646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ d ∈ Nat.divisors (f1 n), (d + 1) - ∑ d ∈ Nat.divisors (f2 n), d) - A353362 (n + 1)

end

end A353361.P11467666613348899646

namespace A353361

/-- `A028310(∑{d}[n+1, #+1]-∑{d}[n+1, #])-A353362(n+1)` -/
def P11467666613348899646.Spec : Prop :=
  ∀ n, P11467666613348899646.a n = A353361 (n + 1)

end A353361

/-! ## A353361.P13965387616982366559

`A087990(n+1)+A087991(n+1)-A353362(n+1)`
-/

namespace A353361.P13965387616982366559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087990 (n + 1) + (A087991 (n + 1) - A353362 (n + 1))

end

end A353361.P13965387616982366559

namespace A353361

/-- `A087990(n+1)+A087991(n+1)-A353362(n+1)` -/
def P13965387616982366559.Spec : Prop :=
  ∀ n, P13965387616982366559.a n = A353361 (n + 1)

end A353361

/-! ## A353361.P14918415048518104104

`A195150(n+1)+A195155(n+1)-A353362(n+1)`
-/

namespace A353361.P14918415048518104104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195150 (n + 1) + (A195155 (n + 1) - A353362 (n + 1))

end

end A353361.P14918415048518104104

namespace A353361

/-- `A195150(n+1)+A195155(n+1)-A353362(n+1)` -/
def P14918415048518104104.Spec : Prop :=
  ∀ n, P14918415048518104104.a n = A353361 (n + 1)

end A353361

/-! ## A353361.P12458163385841378052

`A324826(n+1)+A324827(n+1)-A353362(n+1)`
-/

namespace A353361.P12458163385841378052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324826 (n + 1) + (A324827 (n + 1) - A353362 (n + 1))

end

end A353361.P12458163385841378052

namespace A353361

/-- `A324826(n+1)+A324827(n+1)-A353362(n+1)` -/
def P12458163385841378052.Spec : Prop :=
  ∀ n, P12458163385841378052.a n = A353361 (n + 1)

end A353361

/-! ## A353361.P3976380615263462896

`A336041(n+1)+A349658(n+1)-A353362(n+1)`
-/

namespace A353361.P3976380615263462896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336041 (n + 1) + (A349658 (n + 1) - A353362 (n + 1))

end

end A353361.P3976380615263462896

namespace A353361

/-- `A336041(n+1)+A349658(n+1)-A353362(n+1)` -/
def P3976380615263462896.Spec : Prop :=
  ∀ n, P3976380615263462896.a n = A353361 (n + 1)

end A353361

/-! ## A353361.P7221723411327743234

`A353351(n+1)+A353352(n+1)-A353362(n+1)`
-/

namespace A353361.P7221723411327743234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353351 (n + 1) + (A353352 (n + 1) - A353362 (n + 1))

end

end A353361.P7221723411327743234

namespace A353361

/-- `A353351(n+1)+A353352(n+1)-A353362(n+1)` -/
def P7221723411327743234.Spec : Prop :=
  ∀ n, P7221723411327743234.a n = A353361 (n + 1)

end A353361

/-! ## A353361.P3715540716086437157

`A353371(n+1)+A353372(n+1)-A353362(n+1)`
-/

namespace A353361.P3715540716086437157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353371 (n + 1) + (A353372 (n + 1) - A353362 (n + 1))

end

end A353361.P3715540716086437157

namespace A353361

/-- `A353371(n+1)+A353372(n+1)-A353362(n+1)` -/
def P3715540716086437157.Spec : Prop :=
  ∀ n, P3715540716086437157.a n = A353361 (n + 1)

end A353361

/-! ## A353361.P8893570969645216754

`A353375(n+1)+A353376(n+1)-A353362(n+1)`
-/

namespace A353361.P8893570969645216754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353375 (n + 1) + (A353376 (n + 1) - A353362 (n + 1))

end

end A353361.P8893570969645216754

namespace A353361

/-- `A353375(n+1)+A353376(n+1)-A353362(n+1)` -/
def P8893570969645216754.Spec : Prop :=
  ∀ n, P8893570969645216754.a n = A353361 (n + 1)

end A353361

/-! ## A353361.P13499935671532546248

`∑{d}[n+1, A057427(#)]-A353362(n+1)`
-/

namespace A353361.P13499935671532546248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 d - A353362 (n + 1)

end

end A353361.P13499935671532546248

namespace A353361

/-- `∑{d}[n+1, A057427(#)]-A353362(n+1)` -/
def P13499935671532546248.Spec : Prop :=
  ∀ n, P13499935671532546248.a n = A353361 (n + 1)

end A353361

/-!
# A353362: Number of divisors d of n for which A156552(d) is a multiple of 3.

The programs for A353362, the canonical program `A353362.P16534089322779185243` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353362 has offset 1).

The definition of A353362 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A353361, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353362.P16534089322779185243

`A000005(n+1)-A353361(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A353362

/-- `A000005(n+1)-A353361(n+1)` -/
def P16534089322779185243.Spec : Prop :=
  ∀ n, P16534089322779185243.a n = A353362 (n + 1)

theorem P16534089322779185243.correct : P16534089322779185243.Spec := by
  intro n
  simp only [A353362, Nat.add_sub_cancel]

end A353362

/-! ## A353362.P6027033454013013303

`∑{d}[n+1, A353269(#)]`
-/

namespace A353362.P6027033454013013303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353269 d

end

end A353362.P6027033454013013303

namespace A353362

/-- `∑{d}[n+1, A353269(#)]` -/
def P6027033454013013303.Spec : Prop :=
  ∀ n, P6027033454013013303.a n = A353362 (n + 1)

end A353362

/-! ## A353362.P5553924829698666192

`Δ[A006218(n)]-A353361(n+1)`
-/

namespace A353362.P5553924829698666192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A353361 (n + 1)

end

end A353362.P5553924829698666192

namespace A353362

/-- `Δ[A006218(n)]-A353361(n+1)` -/
def P5553924829698666192.Spec : Prop :=
  ∀ n, P5553924829698666192.a n = A353362 (n + 1)

end A353362

/-! ## A353362.P14279028149793707555

`A032741(n+1)+1-A353361(n+1)`
-/

namespace A353362.P14279028149793707555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + 1 - A353361 (n + 1)

end

end A353362.P14279028149793707555

namespace A353362

/-- `A032741(n+1)+1-A353361(n+1)` -/
def P14279028149793707555.Spec : Prop :=
  ∀ n, P14279028149793707555.a n = A353362 (n + 1)

end A353362

/-! ## A353362.P9421312448328499497

`n+1-A049820(n+1)-A353361(n+1)`
-/

namespace A353362.P9421312448328499497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A049820 (n + 1) - A353361 (n + 1)

end

end A353362.P9421312448328499497

namespace A353362

/-- `n+1-A049820(n+1)-A353361(n+1)` -/
def P9421312448328499497.Spec : Prop :=
  ∀ n, P9421312448328499497.a n = A353362 (n + 1)

end A353362

/-! ## A353362.P4079317931155306200

`A038040(n+1)/(n+1)-A353361(n+1)`
-/

namespace A353362.P4079317931155306200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (n + 1 : ℚ) - (A353361 (n + 1) : ℚ)

end

end A353362.P4079317931155306200

namespace A353362

/-- `A038040(n+1)/(n+1)-A353361(n+1)` -/
def P4079317931155306200.Spec : Prop :=
  ∀ n, P4079317931155306200.a n = (A353362 (n + 1) : ℚ)

end A353362

/-! ## A353362.P4874266150880025518

`∑{d}[n+1, A353352(#)*A353421((n+1)/#)]`
-/

namespace A353362.P4874266150880025518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353352 d * A353421 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A353362.P4874266150880025518

namespace A353362

/-- `∑{d}[n+1, A353352(#)*A353421((n+1)/#)]` -/
def P4874266150880025518.Spec : Prop :=
  ∀ n, P4874266150880025518.a n = A353362 (n + 1)

end A353362

/-! ## A353362.P17508357513004642688

`∑{d}[n+1, #+1]-A000203(n+1)-A353361(n+1)`
-/

namespace A353362.P17508357513004642688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - A000203 (n + 1) - A353361 (n + 1)

end

end A353362.P17508357513004642688

namespace A353362

/-- `∑{d}[n+1, #+1]-A000203(n+1)-A353361(n+1)` -/
def P17508357513004642688.Spec : Prop :=
  ∀ n, P17508357513004642688.a n = A353362 (n + 1)

end A353362

/-! ## A353362.P10189744348455654712

`A324826(n+1)+A324827(n+1)-A353361(n+1)`
-/

namespace A353362.P10189744348455654712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324826 (n + 1) + (A324827 (n + 1) - A353361 (n + 1))

end

end A353362.P10189744348455654712

namespace A353362

/-- `A324826(n+1)+A324827(n+1)-A353361(n+1)` -/
def P10189744348455654712.Spec : Prop :=
  ∀ n, P10189744348455654712.a n = A353362 (n + 1)

end A353362

/-! ## A353362.P17961643321680062889

`A336041(n+1)+A349658(n+1)-A353361(n+1)`
-/

namespace A353362.P17961643321680062889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336041 (n + 1) + (A349658 (n + 1) - A353361 (n + 1))

end

end A353362.P17961643321680062889

namespace A353362

/-- `A336041(n+1)+A349658(n+1)-A353361(n+1)` -/
def P17961643321680062889.Spec : Prop :=
  ∀ n, P17961643321680062889.a n = A353362 (n + 1)

end A353362

/-! ## A353362.P13422587528288328073

`A353351(n+1)+A353352(n+1)-A353361(n+1)`
-/

namespace A353362.P13422587528288328073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353351 (n + 1) + (A353352 (n + 1) - A353361 (n + 1))

end

end A353362.P13422587528288328073

namespace A353362

/-- `A353351(n+1)+A353352(n+1)-A353361(n+1)` -/
def P13422587528288328073.Spec : Prop :=
  ∀ n, P13422587528288328073.a n = A353362 (n + 1)

end A353362

/-! ## A353362.P16346627769141979395

`A353371(n+1)+A353372(n+1)-A353361(n+1)`
-/

namespace A353362.P16346627769141979395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353371 (n + 1) + (A353372 (n + 1) - A353361 (n + 1))

end

end A353362.P16346627769141979395

namespace A353362

/-- `A353371(n+1)+A353372(n+1)-A353361(n+1)` -/
def P16346627769141979395.Spec : Prop :=
  ∀ n, P16346627769141979395.a n = A353362 (n + 1)

end A353362

/-! ## A353362.P3469504080458483082

`A353375(n+1)+A353376(n+1)-A353361(n+1)`
-/

namespace A353362.P3469504080458483082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353375 (n + 1) + (A353376 (n + 1) - A353361 (n + 1))

end

end A353362.P3469504080458483082

namespace A353362

/-- `A353375(n+1)+A353376(n+1)-A353361(n+1)` -/
def P3469504080458483082.Spec : Prop :=
  ∀ n, P3469504080458483082.a n = A353362 (n + 1)

end A353362

/-! ## A353362.P11763299909187599316

`A353381(n+1)+A353382(n+1)-A353361(n+1)`
-/

namespace A353362.P11763299909187599316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353381 (n + 1) + (A353382 (n + 1) - A353361 (n + 1))

end

end A353362.P11763299909187599316

namespace A353362

/-- `A353381(n+1)+A353382(n+1)-A353361(n+1)` -/
def P11763299909187599316.Spec : Prop :=
  ∀ n, P11763299909187599316.a n = A353362 (n + 1)

end A353362

/-! ## A353362.P9188750177637709671

`Δ[eq[1, A275055(n+1)]]-A353361(n+1)`
-/

namespace A353362.P9188750177637709671
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275055 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A353361 (n + 1)

end

end A353362.P9188750177637709671

namespace A353362

/-- `Δ[eq[1, A275055(n+1)]]-A353361(n+1)` -/
def P9188750177637709671.Spec : Prop :=
  ∀ n, P9188750177637709671.a n = A353362 (n + 1)

end A353362

/-! ## A353362.P3037125734896173851

`Δ[lt[A027750(n+1), 2]]-A353361(n+1)`
-/

namespace A353362.P3037125734896173851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A353361 (n + 1)

end

end A353362.P3037125734896173851

namespace A353362

/-- `Δ[lt[A027750(n+1), 2]]-A353361(n+1)` -/
def P3037125734896173851.Spec : Prop :=
  ∀ n, P3037125734896173851.a n = A353362 (n + 1)

end A353362

/-! ## A353362.P13857093385584601540

`A214258(∑[n]+1)-A353361(n+1)`
-/

namespace A353362.P13857093385584601540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A353361 (n + 1)

end

end A353362.P13857093385584601540

namespace A353362

/-- `A214258(∑[n]+1)-A353361(n+1)` -/
def P13857093385584601540.Spec : Prop :=
  ∀ n, P13857093385584601540.a n = A353362 (n + 1)

end A353362

/-!
# A353363: Numbers k such that A046523(A332223(A332223(k))) is equal to A046523(A332223(k)).

The programs for A353363, there is no canonical definition to state claims against.
-/

/-! ## A353363.P5725869401892388525

`xor(n, 3*A097292(a(n-1)))+1` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A353363.P5725869401892388525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  Int.xor (n : ℤ) (3 * A097292 (a (n - 1)).toNat) + 1

end

end A353363.P5725869401892388525

/-! ## A353363.P8227164127648728582

`A241087(2*A194600(n+5))`
-/

namespace A353363.P8227164127648728582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241087 (2 * A194600 (n + 5)).toNat

end

end A353363.P8227164127648728582

/-!
# A353364: Inverse Möbius transform of A332814.

The programs for A353364, the canonical program `A353364.P13744888192732770382` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353364 has offset 1).

The definition of A353364 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353364.P13744888192732770382

`∑{d}[n+1, A332814(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A353364

/-- `∑{d}[n+1, A332814(#)]` -/
def P13744888192732770382.Spec : Prop :=
  ∀ n, P13744888192732770382.a n = A353364 (n + 1)

theorem P13744888192732770382.correct : P13744888192732770382.Spec := by
  intro n
  simp only [A353364, Nat.add_sub_cancel]

end A353364

/-!
# A353365: Numbers k such that the odd part of sigma(sigma(k)) is equal to the odd part of sigma(k).

The programs for A353365, there is no canonical definition to state claims against.
-/

/-! ## A353365.P6455829702176172430

`A074245(C(A305846(n+1), A324394(n)))`
-/

namespace A353365.P6455829702176172430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074245 (Nat.choose (A305846 (n + 1)).toNat (A324394 n).toNat)

end

end A353365.P6455829702176172430

/-!
# A353366: Dirichlet inverse of A110963, which is a fractalization of Kimberling's paraphrase of the binary number system, A003602.

The programs for A353366, there is no canonical definition to state claims against.
-/

/-! ## A353366.P9075822627167609023

`A353367(n+1)-A110963(n+1)`
-/

namespace A353366.P9075822627167609023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353367 (n + 1) - A110963 (n + 1)

end

end A353366.P9075822627167609023

/-! ## A353366.P7711209398954774139

`A353367(n+1)-(A110962(n)+1)`
-/

namespace A353366.P7711209398954774139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353367 (n + 1) - (A110962 n + 1)

end

end A353366.P7711209398954774139

/-! ## A353366.P16090116170878008895

`A353367(n+1)-A003602(floor(n/(xor(n, n+1)+1))+1)`
-/

namespace A353366.P16090116170878008895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353367 (n + 1) - A003602 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

end

end A353366.P16090116170878008895

/-! ## A353366.P9169161307648056347

`A353367(n+1)-A003602(A003602(n+1))`
-/

namespace A353366.P9169161307648056347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353367 (n + 1) - A003602 (A003602 (n + 1)).toNat

end

end A353366.P9169161307648056347

/-! ## A353366.P5031112543732797863

`A353367(n+1)-A000463(A351565(n+1))`
-/

namespace A353366.P5031112543732797863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353367 (n + 1) - A000463 (A351565 (n + 1)).toNat

end

end A353366.P5031112543732797863

/-! ## A353366.P7010920872093020511

`A353367(n+1)-(A103391(A103391(n+2))-1)`
-/

namespace A353366.P7010920872093020511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353367 (n + 1) - (A103391 (A103391 (n + 2)).toNat - 1)

end

end A353366.P7010920872093020511

/-! ## A353366.P3723728180846419644

`A353367(n+1)-A353367(4*(n+1))`
-/

namespace A353366.P3723728180846419644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353367 (n + 1) - A353367 (4 * (n + 1))

end

end A353366.P3723728180846419644

/-!
# A353367: Sum of A110963 and its Dirichlet inverse.

The programs for A353367, there is no canonical definition to state claims against.
-/

/-! ## A353367.P513512015374313849

`A110963(n+1)+A353366(n+1)`
-/

namespace A353367.P513512015374313849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110963 (n + 1) + A353366 (n + 1)

end

end A353367.P513512015374313849

/-! ## A353367.P3086705045154841951

`A353366(n+1)+A110962(n)+1`
-/

namespace A353367.P3086705045154841951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353366 (n + 1) + (A110962 n + 1)

end

end A353367.P3086705045154841951

/-! ## A353367.P13350765746577815098

`A353366(n+1)+A003602(floor(n/(xor(n, n+1)+1))+1)`
-/

namespace A353367.P13350765746577815098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353366 (n + 1) + A003602 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

end

end A353367.P13350765746577815098

/-! ## A353367.P6431720374570511725

`A353366(n+1)+A003602(A003602(n+1))`
-/

namespace A353367.P6431720374570511725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353366 (n + 1) + A003602 (A003602 (n + 1)).toNat

end

end A353367.P6431720374570511725

/-! ## A353367.P12442883789273752514

`A353366(n+1)+A025480(A025480(n))+1`
-/

namespace A353367.P12442883789273752514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353366 (n + 1) + (A025480 (A025480 n).toNat + 1)

end

end A353367.P12442883789273752514

/-! ## A353367.P4824979738083651923

`A353366(n+1)+A225381(A351565(n+1))`
-/

namespace A353367.P4824979738083651923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353366 (n + 1) + A225381 (A351565 (n + 1)).toNat

end

end A353367.P4824979738083651923

/-! ## A353367.P6275505084324909242

`A353366(n+1)+A153733(A153733(n)+1)/2+1`
-/

namespace A353367.P6275505084324909242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353366 (n + 1) : ℚ) + ((A153733 (A153733 n + 1).toNat : ℚ) / 2 + 1)

end

end A353367.P6275505084324909242

/-!
# A353368: Dirichlet inverse of A103391, "even fractal sequence".

The programs for A353368, there is no canonical definition to state claims against.
-/

/-! ## A353368.P3968788548839915484

`A353369(n+1)-A103391(n+1)`
-/

namespace A353368.P3968788548839915484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353369 (n + 1) - A103391 (n + 1)

end

end A353368.P3968788548839915484

/-! ## A353368.P13418856770386342019

`A353369(n+1)-(∑{d}[n, A349136(#)]+1)`
-/

namespace A353368.P13418856770386342019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353369 (n + 1) - (∑ d ∈ Nat.divisors (f1 n), A349136 d + 1)

end

end A353368.P13418856770386342019

/-! ## A353368.P3415801159695292094

`A353369(n+1)-A080513(gcd(n, A129527(n)))`
-/

namespace A353368.P3415801159695292094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353369 (n + 1) - A080513 (Int.gcd (n : ℤ) (A129527 n))

end

end A353368.P3415801159695292094

/-! ## A353368.P15633497161977400577

`A353369(n+1)-A008619(2*n+1-A129527(n))`
-/

namespace A353368.P15633497161977400577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353369 (n + 1) - A008619 ((2 * n + 1 : ℤ) - A129527 n).toNat

end

end A353368.P15633497161977400577

/-! ## A353368.P5715438613311720339

`A353369(n+1)-(A110963(A004280(n+1))+A057427(n))`
-/

namespace A353368.P5715438613311720339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353369 (n + 1) - (A110963 (A004280 (n + 1)).toNat + A057427 n)

end

end A353368.P5715438613311720339

/-! ## A353368.P9509979781725059348

`A353369(n+1)-(A003602(A014681(n)+1)+A014681(n)%2)`
-/

namespace A353368.P9509979781725059348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353369 (n + 1) - (A003602 (A014681 n + 1).toNat + Int.tmod (A014681 n) 2)

end

end A353368.P9509979781725059348

/-! ## A353368.P15967122683132792874

`A353369(n+1)-(round(A030101(A030101(n))/2)+1)`
-/

namespace A353368.P15967122683132792874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353369 (n + 1) - (SequenceMachineLib.roundAway ((A030101 (A030101 n).toNat : ℚ) / 2) + 1)

end

end A353368.P15967122683132792874

/-! ## A353368.P4747844747184375259

`A353369(n+1)-(A266220(2*n+1)-A129527(2*n))/2`
-/

namespace A353368.P4747844747184375259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353369 (n + 1) : ℚ) - (A266220 (2 * n + 1) - A129527 (2 * n) : ℚ) / 2

end

end A353368.P4747844747184375259

/-!
# A353369: Sum of A103391 ("even fractal sequence") and its Dirichlet inverse.

The programs for A353369, there is no canonical definition to state claims against.
-/

/-! ## A353369.P1705878107550592065

`A103391(n+1)+A353368(n+1)`
-/

namespace A353369.P1705878107550592065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (n + 1) + A353368 (n + 1)

end

end A353369.P1705878107550592065

/-! ## A353369.P9506730795592340333

`A353368(n+1)+∑{d}[n, A349136(#)]+1`
-/

namespace A353369.P9506730795592340333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353368 (n + 1) + (∑ d ∈ Nat.divisors (f1 n), A349136 d + 1)

end

end A353369.P9506730795592340333

/-! ## A353369.P13479146060847707994

`A353368(n+1)+A080513(gcd(n, A129527(n)))`
-/

namespace A353369.P13479146060847707994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353368 (n + 1) + A080513 (Int.gcd (n : ℤ) (A129527 n))

end

end A353369.P13479146060847707994

/-! ## A353369.P15122889455974201503

`A353368(n+1)+A080513(2*n-A129527(n))`
-/

namespace A353369.P15122889455974201503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353368 (n + 1) + A080513 ((2 * n : ℤ) - A129527 n).toNat

end

end A353369.P15122889455974201503

/-! ## A353369.P1554407872307711125

`A353368(n+1)+A080513(n-A129527(n)+n)`
-/

namespace A353369.P1554407872307711125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353368 (n + 1) + A080513 ((n : ℤ) - A129527 n + (n : ℤ)).toNat

end

end A353369.P1554407872307711125

/-! ## A353369.P793598488890718842

`A353368(n+1)+A008619(2*n+1-A129527(n))`
-/

namespace A353369.P793598488890718842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353368 (n + 1) + A008619 ((2 * n + 1 : ℤ) - A129527 n).toNat

end

end A353369.P793598488890718842

/-! ## A353369.P17944587131503335781

`A353368(n+1)+round(A030101(A030101(n))/2)+1`
-/

namespace A353369.P17944587131503335781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353368 (n + 1) + (SequenceMachineLib.roundAway ((A030101 (A030101 n).toNat : ℚ) / 2) + 1)

end

end A353369.P17944587131503335781

/-! ## A353369.P10075461972173937420

`A036453(n+1)+A353368(n+1)+A025480(A004273(n))`
-/

namespace A353369.P10075461972173937420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) + (A353368 (n + 1) + A025480 (A004273 n).toNat)

end

end A353369.P10075461972173937420

/-! ## A353369.P3480462588494034619

`A353368(n+1)+(A266220(2*n+1)-A129527(2*n))/2`
-/

namespace A353369.P3480462588494034619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353368 (n + 1) : ℚ) + (A266220 (2 * n + 1) - A129527 (2 * n) : ℚ) / 2

end

end A353369.P3480462588494034619

/-!
# A353370: a(n) = 1 if the prime factorization of n contains as many even as odd prime indices, when counted with multiplicity, otherwise 0.

The programs for A353370, the canonical program `A353370.P14269787339324025173` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353370 has offset 1).

The definition of A353370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353370.P14269787339324025173

`char[A325698(n+1)-1]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A353370

/-- `char[A325698(n+1)-1]` -/
def P14269787339324025173.Spec : Prop :=
  ∀ n, (P14269787339324025173.a n : ℤ) = A353370 (n + 1)

theorem P14269787339324025173.correct : P14269787339324025173.Spec := by
  intro n
  simp only [A353370, Nat.add_sub_cancel]

end A353370

/-! ## A353370.P14995912476823143290

`char[eq[0, A195017(n+1)]]`
-/

namespace A353370.P14995912476823143290
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353370.P14995912476823143290

namespace A353370

/-- `char[eq[0, A195017(n+1)]]` -/
def P14995912476823143290.Spec : Prop :=
  ∀ n, (P14995912476823143290.a n : ℤ) = A353370 (n + 1)

end A353370

/-! ## A353370.P10199815622290438904

`char[lt[0, A353373(n+1)]]`
-/

namespace A353370.P10199815622290438904
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353373 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353370.P10199815622290438904

namespace A353370

/-- `char[lt[0, A353373(n+1)]]` -/
def P10199815622290438904.Spec : Prop :=
  ∀ n, (P10199815622290438904.a n : ℤ) = A353370 (n + 1)

end A353370

/-! ## A353370.P5723748988394891535

`A000007(abs(A195017(n+1)))`
-/

namespace A353370.P5723748988394891535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 |A195017 (n + 1)|.toNat

end

end A353370.P5723748988394891535

namespace A353370

/-- `A000007(abs(A195017(n+1)))` -/
def P5723748988394891535.Spec : Prop :=
  ∀ n, P5723748988394891535.a n = A353370 (n + 1)

end A353370

/-! ## A353370.P4662785302872567949

`A000007(A195017(n+1)²)`
-/

namespace A353370.P4662785302872567949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A195017 (n + 1) ^ 2).toNat

end

end A353370.P4662785302872567949

namespace A353370

/-- `A000007(A195017(n+1)²)` -/
def P4662785302872567949.Spec : Prop :=
  ∀ n, P4662785302872567949.a n = A353370 (n + 1)

end A353370

/-! ## A353370.P3834174226108533629

`A000007(lcm(2, A195017(n+1)))`
-/

namespace A353370.P3834174226108533629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.lcm 2 (A195017 (n + 1)))

end

end A353370.P3834174226108533629

namespace A353370

/-- `A000007(lcm(2, A195017(n+1)))` -/
def P3834174226108533629.Spec : Prop :=
  ∀ n, P3834174226108533629.a n = A353370 (n + 1)

end A353370

/-! ## A353370.P4301927086052546448

`A000007(and(47, A195017(n+1)))`
-/

namespace A353370.P4301927086052546448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.land 47 (A195017 (n + 1))).toNat

end

end A353370.P4301927086052546448

namespace A353370

/-- `A000007(and(47, A195017(n+1)))` -/
def P4301927086052546448.Spec : Prop :=
  ∀ n, P4301927086052546448.a n = A353370 (n + 1)

end A353370

/-! ## A353370.P9736813024820751471

`A000007(∑{d}[A195017(n+1), #])`
-/

namespace A353370.P9736813024820751471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A353370.P9736813024820751471

namespace A353370

/-- `A000007(∑{d}[A195017(n+1), #])` -/
def P9736813024820751471.Spec : Prop :=
  ∀ n, P9736813024820751471.a n = A353370 (n + 1)

end A353370

/-! ## A353370.P5845921470141500362

`∏{d}[A195017(n+1), A001065(#)]`
-/

namespace A353370.P5845921470141500362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A001065 d

end

end A353370.P5845921470141500362

namespace A353370

/-- `∏{d}[A195017(n+1), A001065(#)]` -/
def P5845921470141500362.Spec : Prop :=
  ∀ n, P5845921470141500362.a n = A353370 (n + 1)

end A353370

/-! ## A353370.P16406151780929611481

`A000038(A195017(n+1)²)/2`
-/

namespace A353370.P16406151780929611481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (A195017 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A353370.P16406151780929611481

namespace A353370

/-- `A000038(A195017(n+1)²)/2` -/
def P16406151780929611481.Spec : Prop :=
  ∀ n, P16406151780929611481.a n = (A353370 (n + 1) : ℚ)

end A353370

/-! ## A353370.P13625992018257555356

`∏{d}[A195017(n+1), A195017(#)]²`
-/

namespace A353370.P13625992018257555356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ d ∈ Nat.divisors (f1 n).natAbs, A195017 d) ^ 2

end

end A353370.P13625992018257555356

namespace A353370

/-- `∏{d}[A195017(n+1), A195017(#)]²` -/
def P13625992018257555356.Spec : Prop :=
  ∀ n, P13625992018257555356.a n = A353370 (n + 1)

end A353370

/-! ## A353370.P16904390283908901073

`A065043(n+1)*A391747(n+1)`
-/

namespace A353370.P16904390283908901073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) * A391747 (n + 1)

end

end A353370.P16904390283908901073

namespace A353370

/-- `A065043(n+1)*A391747(n+1)` -/
def P16904390283908901073.Spec : Prop :=
  ∀ n, P16904390283908901073.a n = A353370 (n + 1)

end A353370

/-! ## A353370.P14625509899771456424

`and(A015996(n+1), A391747(n+1))`
-/

namespace A353370.P14625509899771456424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A015996 (n + 1)) (A391747 (n + 1))

end

end A353370.P14625509899771456424

namespace A353370

/-- `and(A015996(n+1), A391747(n+1))` -/
def P14625509899771456424.Spec : Prop :=
  ∀ n, P14625509899771456424.a n = A353370 (n + 1)

end A353370

/-! ## A353370.P8030004125905419822

`and(A016001(n+1), A391747(n+1))`
-/

namespace A353370.P8030004125905419822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016001 (n + 1)) (A391747 (n + 1))

end

end A353370.P8030004125905419822

namespace A353370

/-- `and(A016001(n+1), A391747(n+1))` -/
def P8030004125905419822.Spec : Prop :=
  ∀ n, P8030004125905419822.a n = A353370 (n + 1)

end A353370

/-! ## A353370.P8934401568759164604

`and(A016003(n+1), A391747(n+1))`
-/

namespace A353370.P8934401568759164604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016003 (n + 1)) (A391747 (n + 1))

end

end A353370.P8934401568759164604

namespace A353370

/-- `and(A016003(n+1), A391747(n+1))` -/
def P8934401568759164604.Spec : Prop :=
  ∀ n, P8934401568759164604.a n = A353370 (n + 1)

end A353370

/-! ## A353370.P15023029909697888152

`and(A016006(n+1), A391747(n+1))`
-/

namespace A353370.P15023029909697888152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016006 (n + 1)) (A391747 (n + 1))

end

end A353370.P15023029909697888152

namespace A353370

/-- `and(A016006(n+1), A391747(n+1))` -/
def P15023029909697888152.Spec : Prop :=
  ∀ n, P15023029909697888152.a n = A353370 (n + 1)

end A353370

/-! ## A353370.P14363784156767644188

`and(A016008(n+1), A391747(n+1))`
-/

namespace A353370.P14363784156767644188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016008 (n + 1)) (A391747 (n + 1))

end

end A353370.P14363784156767644188

namespace A353370

/-- `and(A016008(n+1), A391747(n+1))` -/
def P14363784156767644188.Spec : Prop :=
  ∀ n, P14363784156767644188.a n = A353370 (n + 1)

end A353370

/-! ## A353370.P13816632443350480731

`and(A018892(n+1), A391747(n+1))`
-/

namespace A353370.P13816632443350480731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018892 (n + 1)) (A391747 (n + 1))

end

end A353370.P13816632443350480731

namespace A353370

/-- `and(A018892(n+1), A391747(n+1))` -/
def P13816632443350480731.Spec : Prop :=
  ∀ n, P13816632443350480731.a n = A353370 (n + 1)

end A353370

/-! ## A353370.P9343355464503705940

`∑{d}[n+1, A008683(#)*A353372((n+1)/#)]`
-/

namespace A353370.P9343355464503705940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A353372 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A353370.P9343355464503705940

namespace A353370

/-- `∑{d}[n+1, A008683(#)*A353372((n+1)/#)]` -/
def P9343355464503705940.Spec : Prop :=
  ∀ n, P9343355464503705940.a n = A353370 (n + 1)

end A353370

/-! ## A353370.P2800191010723659437

`A000007(2*A195017(n+1)*A195017(n+1))`
-/

namespace A353370.P2800191010723659437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (2 * A195017 (n + 1) * A195017 (n + 1)).toNat

end

end A353370.P2800191010723659437

namespace A353370

/-- `A000007(2*A195017(n+1)*A195017(n+1))` -/
def P2800191010723659437.Spec : Prop :=
  ∀ n, P2800191010723659437.a n = A353370 (n + 1)

end A353370

/-!
# A353371: Number of divisors of n that are not in A325698.

The programs for A353371, the canonical program `A353371.P5704616763070307128` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353371 has offset 1).

The definition of A353371 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A353372, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353371.P5704616763070307128

`A000005(n+1)-A353372(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A353371

/-- `A000005(n+1)-A353372(n+1)` -/
def P5704616763070307128.Spec : Prop :=
  ∀ n, P5704616763070307128.a n = A353371 (n + 1)

theorem P5704616763070307128.correct : P5704616763070307128.Spec := by
  intro n
  simp only [A353371, Nat.add_sub_cancel]

end A353371

/-! ## A353371.P2058041848422933273

`Δ[A006218(n)]-A353372(n+1)`
-/

namespace A353371.P2058041848422933273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A353372 (n + 1)

end

end A353371.P2058041848422933273

namespace A353371

/-- `Δ[A006218(n)]-A353372(n+1)` -/
def P2058041848422933273.Spec : Prop :=
  ∀ n, P2058041848422933273.a n = A353371 (n + 1)

end A353371

/-! ## A353371.P3807451282422412363

`Δ[A054519(n)]-A353372(n+1)`
-/

namespace A353371.P3807451282422412363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A353372 (n + 1)

end

end A353371.P3807451282422412363

namespace A353371

/-- `Δ[A054519(n)]-A353372(n+1)` -/
def P3807451282422412363.Spec : Prop :=
  ∀ n, P3807451282422412363.a n = A353371 (n + 1)

end A353371

/-! ## A353371.P3377429224470747845

`A032741(n+1)+1-A353372(n+1)`
-/

namespace A353371.P3377429224470747845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + 1 - A353372 (n + 1)

end

end A353371.P3377429224470747845

namespace A353371

/-- `A032741(n+1)+1-A353372(n+1)` -/
def P3377429224470747845.Spec : Prop :=
  ∀ n, P3377429224470747845.a n = A353371 (n + 1)

end A353371

/-! ## A353371.P12317793784451563246

`A038040(n+1)/(n+1)-A353372(n+1)`
-/

namespace A353371.P12317793784451563246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (n + 1 : ℚ) - (A353372 (n + 1) : ℚ)

end

end A353371.P12317793784451563246

namespace A353371

/-- `A038040(n+1)/(n+1)-A353372(n+1)` -/
def P12317793784451563246.Spec : Prop :=
  ∀ n, P12317793784451563246.a n = (A353371 (n + 1) : ℚ)

end A353371

/-! ## A353371.P6487765174432700891

`A028310(∏{e}[n+1, #+1])-A353372(n+1)`
-/

namespace A353371.P6487765174432700891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) - A353372 (n + 1)

end

end A353371.P6487765174432700891

namespace A353371

/-- `A028310(∏{e}[n+1, #+1])-A353372(n+1)` -/
def P6487765174432700891.Spec : Prop :=
  ∀ n, P6487765174432700891.a n = A353371 (n + 1)

end A353371

/-! ## A353371.P8491463461455798728

`A028310(∑{d}[n+1, gcd(n, #)])-A353372(n+1)`
-/

namespace A353371.P8491463461455798728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d) - A353372 (n + 1)

end

end A353371.P8491463461455798728

namespace A353371

/-- `A028310(∑{d}[n+1, gcd(n, #)])-A353372(n+1)` -/
def P8491463461455798728.Spec : Prop :=
  ∀ n, P8491463461455798728.a n = A353371 (n + 1)

end A353371

/-! ## A353371.P13532789346758126732

`∑{d}[n+1, #+1]-A000203(n+1)-A353372(n+1)`
-/

namespace A353371.P13532789346758126732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - A000203 (n + 1) - A353372 (n + 1)

end

end A353371.P13532789346758126732

namespace A353371

/-- `∑{d}[n+1, #+1]-A000203(n+1)-A353372(n+1)` -/
def P13532789346758126732.Spec : Prop :=
  ∀ n, P13532789346758126732.a n = A353371 (n + 1)

end A353371

/-! ## A353371.P164861332799162257

`A028310(∑{d}[n+1, #+1]-∑{d}[n+1, #])-A353372(n+1)`
-/

namespace A353371.P164861332799162257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ d ∈ Nat.divisors (f1 n), (d + 1) - ∑ d ∈ Nat.divisors (f2 n), d) - A353372 (n + 1)

end

end A353371.P164861332799162257

namespace A353371

/-- `A028310(∑{d}[n+1, #+1]-∑{d}[n+1, #])-A353372(n+1)` -/
def P164861332799162257.Spec : Prop :=
  ∀ n, P164861332799162257.a n = A353371 (n + 1)

end A353371

/-! ## A353371.P2504605842667521067

`A195150(n+1)+A195155(n+1)-A353372(n+1)`
-/

namespace A353371.P2504605842667521067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195150 (n + 1) + (A195155 (n + 1) - A353372 (n + 1))

end

end A353371.P2504605842667521067

namespace A353371

/-- `A195150(n+1)+A195155(n+1)-A353372(n+1)` -/
def P2504605842667521067.Spec : Prop :=
  ∀ n, P2504605842667521067.a n = A353371 (n + 1)

end A353371

/-! ## A353371.P9782497958051368960

`A324826(n+1)+A324827(n+1)-A353372(n+1)`
-/

namespace A353371.P9782497958051368960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324826 (n + 1) + (A324827 (n + 1) - A353372 (n + 1))

end

end A353371.P9782497958051368960

namespace A353371

/-- `A324826(n+1)+A324827(n+1)-A353372(n+1)` -/
def P9782497958051368960.Spec : Prop :=
  ∀ n, P9782497958051368960.a n = A353371 (n + 1)

end A353371

/-! ## A353371.P3267871290084689951

`A336041(n+1)+A349658(n+1)-A353372(n+1)`
-/

namespace A353371.P3267871290084689951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336041 (n + 1) + (A349658 (n + 1) - A353372 (n + 1))

end

end A353371.P3267871290084689951

namespace A353371

/-- `A336041(n+1)+A349658(n+1)-A353372(n+1)` -/
def P3267871290084689951.Spec : Prop :=
  ∀ n, P3267871290084689951.a n = A353371 (n + 1)

end A353371

/-! ## A353371.P15500418088426519263

`A353351(n+1)+A353352(n+1)-A353372(n+1)`
-/

namespace A353371.P15500418088426519263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353351 (n + 1) + (A353352 (n + 1) - A353372 (n + 1))

end

end A353371.P15500418088426519263

namespace A353371

/-- `A353351(n+1)+A353352(n+1)-A353372(n+1)` -/
def P15500418088426519263.Spec : Prop :=
  ∀ n, P15500418088426519263.a n = A353371 (n + 1)

end A353371

/-! ## A353371.P7845022076069013458

`A353361(n+1)+A353362(n+1)-A353372(n+1)`
-/

namespace A353371.P7845022076069013458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353361 (n + 1) + (A353362 (n + 1) - A353372 (n + 1))

end

end A353371.P7845022076069013458

namespace A353371

/-- `A353361(n+1)+A353362(n+1)-A353372(n+1)` -/
def P7845022076069013458.Spec : Prop :=
  ∀ n, P7845022076069013458.a n = A353371 (n + 1)

end A353371

/-! ## A353371.P8714613211434999604

`A353375(n+1)+A353376(n+1)-A353372(n+1)`
-/

namespace A353371.P8714613211434999604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353375 (n + 1) + (A353376 (n + 1) - A353372 (n + 1))

end

end A353371.P8714613211434999604

namespace A353371

/-- `A353375(n+1)+A353376(n+1)-A353372(n+1)` -/
def P8714613211434999604.Spec : Prop :=
  ∀ n, P8714613211434999604.a n = A353371 (n + 1)

end A353371

/-! ## A353371.P1152654496955454737

`A353381(n+1)+A353382(n+1)-A353372(n+1)`
-/

namespace A353371.P1152654496955454737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353381 (n + 1) + (A353382 (n + 1) - A353372 (n + 1))

end

end A353371.P1152654496955454737

namespace A353371

/-- `A353381(n+1)+A353382(n+1)-A353372(n+1)` -/
def P1152654496955454737.Spec : Prop :=
  ∀ n, P1152654496955454737.a n = A353371 (n + 1)

end A353371

/-! ## A353371.P2950433285438225146

`A001227(n+1)*A001511(n+1)-A353372(n+1)`
-/

namespace A353371.P2950433285438225146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A001511 (n + 1) - A353372 (n + 1)

end

end A353371.P2950433285438225146

namespace A353371

/-- `A001227(n+1)*A001511(n+1)-A353372(n+1)` -/
def P2950433285438225146.Spec : Prop :=
  ∀ n, P2950433285438225146.a n = A353371 (n + 1)

end A353371

/-! ## A353371.P2170236348723100612

`A033273(n+1)+A001222(∏{p}[n+1, #])-A353372(n+1)`
-/

namespace A353371.P2170236348723100612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1) + A001222 (∏ p ∈ Nat.primeFactors (f1 n), p) - A353372 (n + 1)

end

end A353371.P2170236348723100612

namespace A353371

/-- `A033273(n+1)+A001222(∏{p}[n+1, #])-A353372(n+1)` -/
def P2170236348723100612.Spec : Prop :=
  ∀ n, P2170236348723100612.a n = A353371 (n + 1)

end A353371

/-! ## A353371.P5367069213432056114

`∑{d}[n+1, A057427(#)]-A353372(n+1)`
-/

namespace A353371.P5367069213432056114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 d - A353372 (n + 1)

end

end A353371.P5367069213432056114

namespace A353371

/-- `∑{d}[n+1, A057427(#)]-A353372(n+1)` -/
def P5367069213432056114.Spec : Prop :=
  ∀ n, P5367069213432056114.a n = A353371 (n + 1)

end A353371

/-! ## A353371.P7794117129994141000

`Δ[eq[1, A275055(n+1)]]-A353372(n+1)`
-/

namespace A353371.P7794117129994141000
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275055 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A353372 (n + 1)

end

end A353371.P7794117129994141000

namespace A353371

/-- `Δ[eq[1, A275055(n+1)]]-A353372(n+1)` -/
def P7794117129994141000.Spec : Prop :=
  ∀ n, P7794117129994141000.a n = A353371 (n + 1)

end A353371

/-!
# A353372: Inverse Möbius transform of A353370.

The programs for A353372, the canonical program `A353372.P6208270260937475359` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353372 has offset 1).

The definition of A353372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353372.P8668784715967598887

`A000005(n+1)-A353371(n+1)`
-/

namespace A353372.P8668784715967598887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A353371 (n + 1)

end

end A353372.P8668784715967598887

namespace A353372

/-- `A000005(n+1)-A353371(n+1)` -/
def P8668784715967598887.Spec : Prop :=
  ∀ n, P8668784715967598887.a n = A353372 (n + 1)

end A353372

/-! ## A353372.P6208270260937475359

`∑{d}[n+1, A353370(#)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A353372

/-- `∑{d}[n+1, A353370(#)]` -/
def P6208270260937475359.Spec : Prop :=
  ∀ n, P6208270260937475359.a n = A353372 (n + 1)

theorem P6208270260937475359.correct : P6208270260937475359.Spec := by
  intro n
  simp only [A353372, Nat.add_sub_cancel]

end A353372

/-! ## A353372.P1794440986641741120

`Δ[A006218(n)]-A353371(n+1)`
-/

namespace A353372.P1794440986641741120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A353371 (n + 1)

end

end A353372.P1794440986641741120

namespace A353372

/-- `Δ[A006218(n)]-A353371(n+1)` -/
def P1794440986641741120.Spec : Prop :=
  ∀ n, P1794440986641741120.a n = A353372 (n + 1)

end A353372

/-! ## A353372.P191385814731712084

`A032741(n+1)+1-A353371(n+1)`
-/

namespace A353372.P191385814731712084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + 1 - A353371 (n + 1)

end

end A353372.P191385814731712084

namespace A353372

/-- `A032741(n+1)+1-A353371(n+1)` -/
def P191385814731712084.Spec : Prop :=
  ∀ n, P191385814731712084.a n = A353372 (n + 1)

end A353372

/-! ## A353372.P7463683357118196121

`A038040(n+1)/(n+1)-A353371(n+1)`
-/

namespace A353372.P7463683357118196121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (n + 1 : ℚ) - (A353371 (n + 1) : ℚ)

end

end A353372.P7463683357118196121

namespace A353372

/-- `A038040(n+1)/(n+1)-A353371(n+1)` -/
def P7463683357118196121.Spec : Prop :=
  ∀ n, P7463683357118196121.a n = (A353372 (n + 1) : ℚ)

end A353372

/-! ## A353372.P13716325547429867796

`A028310(∏{e}[n+1, #+1]-A353371(n+1))`
-/

namespace A353372.P13716325547429867796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A353371 (n + 1)).toNat

end

end A353372.P13716325547429867796

namespace A353372

/-- `A028310(∏{e}[n+1, #+1]-A353371(n+1))` -/
def P13716325547429867796.Spec : Prop :=
  ∀ n, P13716325547429867796.a n = A353372 (n + 1)

end A353372

/-! ## A353372.P317173019169767746

`A000027(∑{d}[n+1, gcd(n, #)]-A353371(n+1))`
-/

namespace A353372.P317173019169767746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℤ) - A353371 (n + 1)).toNat

end

end A353372.P317173019169767746

namespace A353372

/-- `A000027(∑{d}[n+1, gcd(n, #)]-A353371(n+1))` -/
def P317173019169767746.Spec : Prop :=
  ∀ n, P317173019169767746.a n = A353372 (n + 1)

end A353372

/-! ## A353372.P3567816555545632183

`∑{d}[n+1, #+1]-A000203(n+1)-A353371(n+1)`
-/

namespace A353372.P3567816555545632183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - A000203 (n + 1) - A353371 (n + 1)

end

end A353372.P3567816555545632183

namespace A353372

/-- `∑{d}[n+1, #+1]-A000203(n+1)-A353371(n+1)` -/
def P3567816555545632183.Spec : Prop :=
  ∀ n, P3567816555545632183.a n = A353372 (n + 1)

end A353372

/-! ## A353372.P8094811415638647155

`A049581(A184389(n+1))-A353371(n+1)`
-/

namespace A353372.P8094811415638647155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 (A184389 (n + 1)).toNat - A353371 (n + 1)

end

end A353372.P8094811415638647155

namespace A353372

/-- `A049581(A184389(n+1))-A353371(n+1)` -/
def P8094811415638647155.Spec : Prop :=
  ∀ n, P8094811415638647155.a n = A353372 (n + 1)

end A353372

/-! ## A353372.P13548655627895638839

`A087990(n+1)+A087991(n+1)-A353371(n+1)`
-/

namespace A353372.P13548655627895638839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087990 (n + 1) + (A087991 (n + 1) - A353371 (n + 1))

end

end A353372.P13548655627895638839

namespace A353372

/-- `A087990(n+1)+A087991(n+1)-A353371(n+1)` -/
def P13548655627895638839.Spec : Prop :=
  ∀ n, P13548655627895638839.a n = A353372 (n + 1)

end A353372

/-! ## A353372.P11505686231353247014

`A195150(n+1)+A195155(n+1)-A353371(n+1)`
-/

namespace A353372.P11505686231353247014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195150 (n + 1) + (A195155 (n + 1) - A353371 (n + 1))

end

end A353372.P11505686231353247014

namespace A353372

/-- `A195150(n+1)+A195155(n+1)-A353371(n+1)` -/
def P11505686231353247014.Spec : Prop :=
  ∀ n, P11505686231353247014.a n = A353372 (n + 1)

end A353372

/-! ## A353372.P6831623312310645137

`A324826(n+1)+A324827(n+1)-A353371(n+1)`
-/

namespace A353372.P6831623312310645137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324826 (n + 1) + (A324827 (n + 1) - A353371 (n + 1))

end

end A353372.P6831623312310645137

namespace A353372

/-- `A324826(n+1)+A324827(n+1)-A353371(n+1)` -/
def P6831623312310645137.Spec : Prop :=
  ∀ n, P6831623312310645137.a n = A353372 (n + 1)

end A353372

/-! ## A353372.P1540577533284147932

`A336041(n+1)+A349658(n+1)-A353371(n+1)`
-/

namespace A353372.P1540577533284147932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336041 (n + 1) + (A349658 (n + 1) - A353371 (n + 1))

end

end A353372.P1540577533284147932

namespace A353372

/-- `A336041(n+1)+A349658(n+1)-A353371(n+1)` -/
def P1540577533284147932.Spec : Prop :=
  ∀ n, P1540577533284147932.a n = A353372 (n + 1)

end A353372

/-! ## A353372.P8011922897647864116

`A353351(n+1)+A353352(n+1)-A353371(n+1)`
-/

namespace A353372.P8011922897647864116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353351 (n + 1) + (A353352 (n + 1) - A353371 (n + 1))

end

end A353372.P8011922897647864116

namespace A353372

/-- `A353351(n+1)+A353352(n+1)-A353371(n+1)` -/
def P8011922897647864116.Spec : Prop :=
  ∀ n, P8011922897647864116.a n = A353372 (n + 1)

end A353372

/-! ## A353372.P7071053204646534002

`A353375(n+1)+A353376(n+1)-A353371(n+1)`
-/

namespace A353372.P7071053204646534002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353375 (n + 1) + (A353376 (n + 1) - A353371 (n + 1))

end

end A353372.P7071053204646534002

namespace A353372

/-- `A353375(n+1)+A353376(n+1)-A353371(n+1)` -/
def P7071053204646534002.Spec : Prop :=
  ∀ n, P7071053204646534002.a n = A353372 (n + 1)

end A353372

/-! ## A353372.P17931932274127367041

`A001227(n+1)-A353371(n+1)%A001227(n+1)`
-/

namespace A353372.P17931932274127367041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - Int.tmod (A353371 (n + 1)) (A001227 (n + 1))

end

end A353372.P17931932274127367041

namespace A353372

/-- `A001227(n+1)-A353371(n+1)%A001227(n+1)` -/
def P17931932274127367041.Spec : Prop :=
  ∀ n, P17931932274127367041.a n = A353372 (n + 1)

end A353372

/-! ## A353372.P4034835619643400565

`∑{d}[n+1, A057427(#)]-A353371(n+1)`
-/

namespace A353372.P4034835619643400565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 d - A353371 (n + 1)

end

end A353372.P4034835619643400565

namespace A353372

/-- `∑{d}[n+1, A057427(#)]-A353371(n+1)` -/
def P4034835619643400565.Spec : Prop :=
  ∀ n, P4034835619643400565.a n = A353372 (n + 1)

end A353372

/-! ## A353372.P797457538291999472

`Δ[eq[1, A275055(n+1)]]-A353371(n+1)`
-/

namespace A353372.P797457538291999472
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275055 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A353371 (n + 1)

end

end A353372.P797457538291999472

namespace A353372

/-- `Δ[eq[1, A275055(n+1)]]-A353371(n+1)` -/
def P797457538291999472.Spec : Prop :=
  ∀ n, P797457538291999472.a n = A353372 (n + 1)

end A353372

/-! ## A353372.P4859732837518593991

`A214258(∑[n]+1)-A353371(n+1)`
-/

namespace A353372.P4859732837518593991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214258 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A353371 (n + 1)

end

end A353372.P4859732837518593991

namespace A353372

/-- `A214258(∑[n]+1)-A353371(n+1)` -/
def P4859732837518593991.Spec : Prop :=
  ∀ n, P4859732837518593991.a n = A353372 (n + 1)

end A353372

/-!
# A353373: Number of ways to write n as a product of the terms of A325698 larger than 1; a(1) = 1 by convention (an empty product).

The programs for A353373, there is no canonical definition to state claims against.
-/

/-! ## A353373.P13758528088197640811

`A353849(A285572(n+1)*A353370(n+1))`
-/

namespace A353373.P13758528088197640811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 (A285572 (n + 1) * A353370 (n + 1)).toNat

end

end A353373.P13758528088197640811

/-! ## A353373.P3603510551250195732

`A328855(A032742(n+1))*A353370(n+1)`
-/

namespace A353373.P3603510551250195732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328855 (A032742 (n + 1)).toNat * A353370 (n + 1)

end

end A353373.P3603510551250195732

/-! ## A353373.P16997923838587222781

`A323438(A015996(n+1))*A353370(n+1)`
-/

namespace A353373.P16997923838587222781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323438 (A015996 (n + 1)).toNat * A353370 (n + 1)

end

end A353373.P16997923838587222781

/-! ## A353373.P9180984597735250004

`A216683(A348157(∑[n+1]))*A353370(n+1)`
-/

namespace A353373.P9180984597735250004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216683 (A348157 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat * A353370 (n + 1)

end

end A353373.P9180984597735250004

/-! ## A353373.P16414085099578045032

`A048689(A112624(n+1))*A353370(n+1)`
-/

namespace A353373.P16414085099578045032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048689 (A112624 (n + 1)).toNat * A353370 (n + 1)

end

end A353373.P16414085099578045032

/-! ## A353373.P12667953156991364153

`A353333(A165826(n+1))*A353370(n+1)`
-/

namespace A353373.P12667953156991364153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353333 (A165826 (n + 1)).toNat * A353370 (n + 1)

end

end A353373.P12667953156991364153

/-! ## A353373.P2931517165726586556

`and(A353353(A086568(n+1)), A353353(n+1))`
-/

namespace A353373.P2931517165726586556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A353353 (A086568 (n + 1)).toNat) (A353353 (n + 1))

end

end A353373.P2931517165726586556

/-! ## A353373.P14478860489501742494

`A353353(A328617(n+1))*A353370(n+1)`
-/

namespace A353373.P14478860489501742494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353353 (A328617 (n + 1)).toNat * A353370 (n + 1)

end

end A353373.P14478860489501742494

/-! ## A353373.P6809387113601371122

`A072411(n+1)*A353370((n+1)²)`
-/

namespace A353373.P6809387113601371122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (n + 1) * A353370 ((n + 1) ^ 2)

end

end A353373.P6809387113601371122

/-! ## A353373.P2383371056269333377

`A353370((n+1)²)*A353422(n+1)`
-/

namespace A353373.P2383371056269333377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353370 ((n + 1) ^ 2) * A353422 (n + 1)

end

end A353373.P2383371056269333377

/-!
# A353374: a(n) = 1 if the prime factorization of n has an even number of prime factors that sum to an even number, otherwise 0.

The programs for A353374, the canonical program `A353374.P4573974283751582701` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353374 has offset 1).

The definition of A353374 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065043, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353374.P4573974283751582701

`A035263(n+1)*A065043(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A353374

/-- `A035263(n+1)*A065043(n+1)` -/
def P4573974283751582701.Spec : Prop :=
  ∀ n, P4573974283751582701.a n = A353374 (n + 1)

theorem P4573974283751582701.correct : P4573974283751582701.Spec := by
  intro n
  simp only [A353374, Nat.add_sub_cancel]

end A353374

/-! ## A353374.P5248250287882053383

`A065043(n+1)*A356163(n+1)`
-/

namespace A353374.P5248250287882053383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) * A356163 (n + 1)

end

end A353374.P5248250287882053383

namespace A353374

/-- `A065043(n+1)*A356163(n+1)` -/
def P5248250287882053383.Spec : Prop :=
  ∀ n, P5248250287882053383.a n = A353374 (n + 1)

end A353374

/-! ## A353374.P10107161074620900507

`A358775(6*(n+1))`
-/

namespace A353374.P10107161074620900507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358775 (6 * (n + 1))

end

end A353374.P10107161074620900507

namespace A353374

/-- `A358775(6*(n+1))` -/
def P10107161074620900507.Spec : Prop :=
  ∀ n, P10107161074620900507.a n = A353374 (n + 1)

end A353374

/-! ## A353374.P17202319387588470327

`char[lt[0, A353377(n+1)]]`
-/

namespace A353374.P17202319387588470327
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353377 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353374.P17202319387588470327

namespace A353374

/-- `char[lt[0, A353377(n+1)]]` -/
def P17202319387588470327.Spec : Prop :=
  ∀ n, (P17202319387588470327.a n : ℤ) = A353374 (n + 1)

end A353374

/-! ## A353374.P3069358561885008952

`gcd(2, A373362(n+1))-1`
-/

namespace A353374.P3069358561885008952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A373362 (n + 1)) : ℤ) - 1

end

end A353374.P3069358561885008952

namespace A353374

/-- `gcd(2, A373362(n+1))-1` -/
def P3069358561885008952.Spec : Prop :=
  ∀ n, P3069358561885008952.a n = A353374 (n + 1)

end A353374

/-! ## A353374.P7458491579333116280

`and(1, A373369(n+1)+1)`
-/

namespace A353374.P7458491579333116280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A373369 (n + 1) + 1)

end

end A353374.P7458491579333116280

namespace A353374

/-- `and(1, A373369(n+1)+1)` -/
def P7458491579333116280.Spec : Prop :=
  ∀ n, P7458491579333116280.a n = A353374 (n + 1)

end A353374

/-! ## A353374.P6910756999650213344

`and(1, A373835(n+1)+1)`
-/

namespace A353374.P6910756999650213344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A373835 (n + 1) + 1)

end

end A353374.P6910756999650213344

namespace A353374

/-- `and(1, A373835(n+1)+1)` -/
def P6910756999650213344.Spec : Prop :=
  ∀ n, P6910756999650213344.a n = A353374 (n + 1)

end A353374

/-! ## A353374.P5411758645875742578

`and(1, A373367(n+1)-1)`
-/

namespace A353374.P5411758645875742578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A373367 (n + 1) - 1)

end

end A353374.P5411758645875742578

namespace A353374

/-- `and(1, A373367(n+1)-1)` -/
def P5411758645875742578.Spec : Prop :=
  ∀ n, P5411758645875742578.a n = A353374 (n + 1)

end A353374

/-! ## A353374.P3161568691112203731

`(val(n+1, 2)+1)%A007421(n+1)`
-/

namespace A353374.P3161568691112203731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) (A007421 (n + 1))

end

end A353374.P3161568691112203731

namespace A353374

/-- `(val(n+1, 2)+1)%A007421(n+1)` -/
def P3161568691112203731.Spec : Prop :=
  ∀ n, P3161568691112203731.a n = A353374 (n + 1)

end A353374

/-! ## A353374.P266016538942916119

`and(∑{e}[n+1, #]+1, A196563(val(n+1, 2)))`
-/

namespace A353374.P266016538942916119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1 : ℕ) : ℤ) (A196563 (SequenceMachineLib.valuation (n + 1) 2))

end

end A353374.P266016538942916119

namespace A353374

/-- `and(∑{e}[n+1, #]+1, A196563(val(n+1, 2)))` -/
def P266016538942916119.Spec : Prop :=
  ∀ n, P266016538942916119.a n = A353374 (n + 1)

end A353374

/-! ## A353374.P6487484789376373061

`A010052(A079065(n+1))`
-/

namespace A353374.P6487484789376373061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A079065 (n + 1)).toNat

end

end A353374.P6487484789376373061

namespace A353374

/-- `A010052(A079065(n+1))` -/
def P6487484789376373061.Spec : Prop :=
  ∀ n, P6487484789376373061.a n = A353374 (n + 1)

end A353374

/-! ## A353374.P12932492621046485381

`A358680(A007913(n+1))`
-/

namespace A353374.P12932492621046485381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358680 (A007913 (n + 1)).toNat

end

end A353374.P12932492621046485381

namespace A353374

/-- `A358680(A007913(n+1))` -/
def P12932492621046485381.Spec : Prop :=
  ∀ n, P12932492621046485381.a n = A353374 (n + 1)

end A353374

/-! ## A353374.P2807365909348631512

`A353675(A071975(n+1))`
-/

namespace A353374.P2807365909348631512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353675 (A071975 (n + 1)).toNat

end

end A353374.P2807365909348631512

namespace A353374

/-- `A353675(A071975(n+1))` -/
def P2807365909348631512.Spec : Prop :=
  ∀ n, P2807365909348631512.a n = A353374 (n + 1)

end A353374

/-! ## A353374.P3277894254370271728

`A000035(A373367(n+1)+1)`
-/

namespace A353374.P3277894254370271728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A373367 (n + 1) + 1).toNat

end

end A353374.P3277894254370271728

namespace A353374

/-- `A000035(A373367(n+1)+1)` -/
def P3277894254370271728.Spec : Prop :=
  ∀ n, P3277894254370271728.a n = A353374 (n + 1)

end A353374

/-! ## A353374.P16491981884085029489

`A059134(n)%A007421(n+1)`
-/

namespace A353374.P16491981884085029489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059134 n) (A007421 (n + 1))

end

end A353374.P16491981884085029489

namespace A353374

/-- `A059134(n)%A007421(n+1)` -/
def P16491981884085029489.Spec : Prop :=
  ∀ n, P16491981884085029489.a n = A353374 (n + 1)

end A353374

/-! ## A353374.P13327963892454907910

`A059141(n)%A007421(n+1)`
-/

namespace A353374.P13327963892454907910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059141 n) (A007421 (n + 1))

end

end A353374.P13327963892454907910

namespace A353374

/-- `A059141(n)%A007421(n+1)` -/
def P13327963892454907910.Spec : Prop :=
  ∀ n, P13327963892454907910.a n = A353374 (n + 1)

end A353374

/-! ## A353374.P4144808646060159997

`A059144(n)%A007421(n+1)`
-/

namespace A353374.P4144808646060159997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059144 n) (A007421 (n + 1))

end

end A353374.P4144808646060159997

namespace A353374

/-- `A059144(n)%A007421(n+1)` -/
def P4144808646060159997.Spec : Prop :=
  ∀ n, P4144808646060159997.a n = A353374 (n + 1)

end A353374

/-! ## A353374.P16126215596890886089

`A151855(n)%A007421(n+1)`
-/

namespace A353374.P16126215596890886089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151855 n) (A007421 (n + 1))

end

end A353374.P16126215596890886089

namespace A353374

/-- `A151855(n)%A007421(n+1)` -/
def P16126215596890886089.Spec : Prop :=
  ∀ n, P16126215596890886089.a n = A353374 (n + 1)

end A353374

/-! ## A353374.P7758560179874653331

`A151856(n)%A007421(n+1)`
-/

namespace A353374.P7758560179874653331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151856 n) (A007421 (n + 1))

end

end A353374.P7758560179874653331

namespace A353374

/-- `A151856(n)%A007421(n+1)` -/
def P7758560179874653331.Spec : Prop :=
  ∀ n, P7758560179874653331.a n = A353374 (n + 1)

end A353374

/-! ## A353374.P8403931232625472978

`A279357(n)%A007421(n+1)`
-/

namespace A353374.P8403931232625472978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279357 n) (A007421 (n + 1))

end

end A353374.P8403931232625472978

namespace A353374

/-- `A279357(n)%A007421(n+1)` -/
def P8403931232625472978.Spec : Prop :=
  ∀ n, P8403931232625472978.a n = A353374 (n + 1)

end A353374

/-!
# A353375: Number of divisors of n that are not in A345452.

The programs for A353375, the canonical program `A353375.P197900174002010438` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353375 has offset 1).

The definition of A353375 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A353376, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353375.P197900174002010438

`A000005(n+1)-A353376(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A353375

/-- `A000005(n+1)-A353376(n+1)` -/
def P197900174002010438.Spec : Prop :=
  ∀ n, P197900174002010438.a n = A353375 (n + 1)

theorem P197900174002010438.correct : P197900174002010438.Spec := by
  intro n
  simp only [A353375, Nat.add_sub_cancel]

end A353375

/-! ## A353375.P4923036713142529617

`Δ[A006218(n)]-A353376(n+1)`
-/

namespace A353375.P4923036713142529617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A353376 (n + 1)

end

end A353375.P4923036713142529617

namespace A353375

/-- `Δ[A006218(n)]-A353376(n+1)` -/
def P4923036713142529617.Spec : Prop :=
  ∀ n, P4923036713142529617.a n = A353375 (n + 1)

end A353375

/-! ## A353375.P3721285349595291544

`A032741(n+1)+1-A353376(n+1)`
-/

namespace A353375.P3721285349595291544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + 1 - A353376 (n + 1)

end

end A353375.P3721285349595291544

namespace A353375

/-- `A032741(n+1)+1-A353376(n+1)` -/
def P3721285349595291544.Spec : Prop :=
  ∀ n, P3721285349595291544.a n = A353375 (n + 1)

end A353375

/-! ## A353375.P2970174255859244705

`A038040(n+1)/(n+1)-A353376(n+1)`
-/

namespace A353375.P2970174255859244705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (n + 1 : ℚ) - (A353376 (n + 1) : ℚ)

end

end A353375.P2970174255859244705

namespace A353375

/-- `A038040(n+1)/(n+1)-A353376(n+1)` -/
def P2970174255859244705.Spec : Prop :=
  ∀ n, P2970174255859244705.a n = (A353375 (n + 1) : ℚ)

end A353375

/-! ## A353375.P16791501326506962016

`A028310(∏{e}[n+1, #+1])-A353376(n+1)`
-/

namespace A353375.P16791501326506962016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) - A353376 (n + 1)

end

end A353375.P16791501326506962016

namespace A353375

/-- `A028310(∏{e}[n+1, #+1])-A353376(n+1)` -/
def P16791501326506962016.Spec : Prop :=
  ∀ n, P16791501326506962016.a n = A353375 (n + 1)

end A353375

/-! ## A353375.P1832892814874079156

`A028310(∑{d}[n+1, gcd(n, #)])-A353376(n+1)`
-/

namespace A353375.P1832892814874079156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d) - A353376 (n + 1)

end

end A353375.P1832892814874079156

namespace A353375

/-- `A028310(∑{d}[n+1, gcd(n, #)])-A353376(n+1)` -/
def P1832892814874079156.Spec : Prop :=
  ∀ n, P1832892814874079156.a n = A353375 (n + 1)

end A353375

/-! ## A353375.P17373417351714798724

`∑{d}[n+1, #+1]-A000203(n+1)-A353376(n+1)`
-/

namespace A353375.P17373417351714798724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - A000203 (n + 1) - A353376 (n + 1)

end

end A353375.P17373417351714798724

namespace A353375

/-- `∑{d}[n+1, #+1]-A000203(n+1)-A353376(n+1)` -/
def P17373417351714798724.Spec : Prop :=
  ∀ n, P17373417351714798724.a n = A353375 (n + 1)

end A353375

/-! ## A353375.P14263579839810642107

`A028310(∑{d}[n+1, #+1]-∑{d}[n+1, #])-A353376(n+1)`
-/

namespace A353375.P14263579839810642107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ d ∈ Nat.divisors (f1 n), (d + 1) - ∑ d ∈ Nat.divisors (f2 n), d) - A353376 (n + 1)

end

end A353375.P14263579839810642107

namespace A353375

/-- `A028310(∑{d}[n+1, #+1]-∑{d}[n+1, #])-A353376(n+1)` -/
def P14263579839810642107.Spec : Prop :=
  ∀ n, P14263579839810642107.a n = A353375 (n + 1)

end A353375

/-! ## A353375.P3234896863697135903

`A087990(n+1)+A087991(n+1)-A353376(n+1)`
-/

namespace A353375.P3234896863697135903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087990 (n + 1) + (A087991 (n + 1) - A353376 (n + 1))

end

end A353375.P3234896863697135903

namespace A353375

/-- `A087990(n+1)+A087991(n+1)-A353376(n+1)` -/
def P3234896863697135903.Spec : Prop :=
  ∀ n, P3234896863697135903.a n = A353375 (n + 1)

end A353375

/-! ## A353375.P7986704209022364717

`A195150(n+1)+A195155(n+1)-A353376(n+1)`
-/

namespace A353375.P7986704209022364717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195150 (n + 1) + (A195155 (n + 1) - A353376 (n + 1))

end

end A353375.P7986704209022364717

namespace A353375

/-- `A195150(n+1)+A195155(n+1)-A353376(n+1)` -/
def P7986704209022364717.Spec : Prop :=
  ∀ n, P7986704209022364717.a n = A353375 (n + 1)

end A353375

/-! ## A353375.P7694001800559594843

`A324826(n+1)+A324827(n+1)-A353376(n+1)`
-/

namespace A353375.P7694001800559594843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324826 (n + 1) + (A324827 (n + 1) - A353376 (n + 1))

end

end A353375.P7694001800559594843

namespace A353375

/-- `A324826(n+1)+A324827(n+1)-A353376(n+1)` -/
def P7694001800559594843.Spec : Prop :=
  ∀ n, P7694001800559594843.a n = A353375 (n + 1)

end A353375

/-! ## A353375.P13939447909713059706

`A336041(n+1)+A349658(n+1)-A353376(n+1)`
-/

namespace A353375.P13939447909713059706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336041 (n + 1) + (A349658 (n + 1) - A353376 (n + 1))

end

end A353375.P13939447909713059706

namespace A353375

/-- `A336041(n+1)+A349658(n+1)-A353376(n+1)` -/
def P13939447909713059706.Spec : Prop :=
  ∀ n, P13939447909713059706.a n = A353375 (n + 1)

end A353375

/-! ## A353375.P2474377191773986129

`A353351(n+1)+A353352(n+1)-A353376(n+1)`
-/

namespace A353375.P2474377191773986129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353351 (n + 1) + (A353352 (n + 1) - A353376 (n + 1))

end

end A353375.P2474377191773986129

namespace A353375

/-- `A353351(n+1)+A353352(n+1)-A353376(n+1)` -/
def P2474377191773986129.Spec : Prop :=
  ∀ n, P2474377191773986129.a n = A353375 (n + 1)

end A353375

/-! ## A353375.P14583801839933121927

`A353361(n+1)+A353362(n+1)-A353376(n+1)`
-/

namespace A353375.P14583801839933121927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353361 (n + 1) + (A353362 (n + 1) - A353376 (n + 1))

end

end A353375.P14583801839933121927

namespace A353375

/-- `A353361(n+1)+A353362(n+1)-A353376(n+1)` -/
def P14583801839933121927.Spec : Prop :=
  ∀ n, P14583801839933121927.a n = A353375 (n + 1)

end A353375

/-! ## A353375.P6622031384395572041

`A353371(n+1)+A353372(n+1)-A353376(n+1)`
-/

namespace A353375.P6622031384395572041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353371 (n + 1) + (A353372 (n + 1) - A353376 (n + 1))

end

end A353375.P6622031384395572041

namespace A353375

/-- `A353371(n+1)+A353372(n+1)-A353376(n+1)` -/
def P6622031384395572041.Spec : Prop :=
  ∀ n, P6622031384395572041.a n = A353375 (n + 1)

end A353375

/-! ## A353375.P6738229336097078638

`∑{d}[n+1, A057427(#)]-A353376(n+1)`
-/

namespace A353375.P6738229336097078638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 d - A353376 (n + 1)

end

end A353375.P6738229336097078638

namespace A353375

/-- `∑{d}[n+1, A057427(#)]-A353376(n+1)` -/
def P6738229336097078638.Spec : Prop :=
  ∀ n, P6738229336097078638.a n = A353375 (n + 1)

end A353375

/-! ## A353375.P4661375500606678083

`A353361(A318885(n+1))`
-/

namespace A353375.P4661375500606678083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353361 (A318885 (n + 1)).toNat

end

end A353375.P4661375500606678083

namespace A353375

/-- `A353361(A318885(n+1))` -/
def P4661375500606678083.Spec : Prop :=
  ∀ n, P4661375500606678083.a n = A353375 (n + 1)

end A353375

/-! ## A353375.P11152576476240757614

`A353361(A290641(n+1))`
-/

namespace A353375.P11152576476240757614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353361 (A290641 (n + 1)).toNat

end

end A353375.P11152576476240757614

namespace A353375

/-- `A353361(A290641(n+1))` -/
def P11152576476240757614.Spec : Prop :=
  ∀ n, P11152576476240757614.a n = A353375 (n + 1)

end A353375

/-! ## A353375.P6857623360299958495

`A353361(A064988(n+1))`
-/

namespace A353375.P6857623360299958495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353361 (A064988 (n + 1)).toNat

end

end A353375.P6857623360299958495

namespace A353375

/-- `A353361(A064988(n+1))` -/
def P6857623360299958495.Spec : Prop :=
  ∀ n, P6857623360299958495.a n = A353375 (n + 1)

end A353375

/-! ## A353375.P14651283821706707799

`A000005(n+1)-A353332(A064988(n+1))`
-/

namespace A353375.P14651283821706707799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A353332 (A064988 (n + 1)).toNat

end

end A353375.P14651283821706707799

namespace A353375

/-- `A000005(n+1)-A353332(A064988(n+1))` -/
def P14651283821706707799.Spec : Prop :=
  ∀ n, P14651283821706707799.a n = A353375 (n + 1)

end A353375

/-!
# A353376: Inverse Möbius transform of A353374.

The programs for A353376, the canonical program `A353376.P17395599227026768174` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353376 has offset 1).

The definition of A353376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353376.P8974969381847261100

`A000005(n+1)-A353375(n+1)`
-/

namespace A353376.P8974969381847261100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A353375 (n + 1)

end

end A353376.P8974969381847261100

namespace A353376

/-- `A000005(n+1)-A353375(n+1)` -/
def P8974969381847261100.Spec : Prop :=
  ∀ n, P8974969381847261100.a n = A353376 (n + 1)

end A353376

/-! ## A353376.P17395599227026768174

`∑{d}[n+1, A353374(#)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A353376

/-- `∑{d}[n+1, A353374(#)]` -/
def P17395599227026768174.Spec : Prop :=
  ∀ n, P17395599227026768174.a n = A353376 (n + 1)

theorem P17395599227026768174.correct : P17395599227026768174.Spec := by
  intro n
  simp only [A353376, Nat.add_sub_cancel]

end A353376

/-! ## A353376.P12784649215768201966

`A115362(n)*A369257(n+1)`
-/

namespace A353376.P12784649215768201966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115362 n * A369257 (n + 1)

end

end A353376.P12784649215768201966

namespace A353376

/-- `A115362(n)*A369257(n+1)` -/
def P12784649215768201966.Spec : Prop :=
  ∀ n, P12784649215768201966.a n = A353376 (n + 1)

end A353376

/-! ## A353376.P756456527202466322

`A032741(n+1)+1-A353375(n+1)`
-/

namespace A353376.P756456527202466322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + 1 - A353375 (n + 1)

end

end A353376.P756456527202466322

namespace A353376

/-- `A032741(n+1)+1-A353375(n+1)` -/
def P756456527202466322.Spec : Prop :=
  ∀ n, P756456527202466322.a n = A353376 (n + 1)

end A353376

/-! ## A353376.P14043086951259909464

`A038040(n+1)/(n+1)-A353375(n+1)`
-/

namespace A353376.P14043086951259909464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (n + 1 : ℚ) - (A353375 (n + 1) : ℚ)

end

end A353376.P14043086951259909464

namespace A353376

/-- `A038040(n+1)/(n+1)-A353375(n+1)` -/
def P14043086951259909464.Spec : Prop :=
  ∀ n, P14043086951259909464.a n = (A353376 (n + 1) : ℚ)

end A353376

/-! ## A353376.P1539036603841669301

`A028310(∏{e}[n+1, #+1]-A353375(n+1))`
-/

namespace A353376.P1539036603841669301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A353375 (n + 1)).toNat

end

end A353376.P1539036603841669301

namespace A353376

/-- `A028310(∏{e}[n+1, #+1]-A353375(n+1))` -/
def P1539036603841669301.Spec : Prop :=
  ∀ n, P1539036603841669301.a n = A353376 (n + 1)

end A353376

/-! ## A353376.P736498641440066422

`∑{d}[n+1, A035263(#)*A356163((n+1)/#)]`
-/

namespace A353376.P736498641440066422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035263 d * A356163 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A353376.P736498641440066422

namespace A353376

/-- `∑{d}[n+1, A035263(#)*A356163((n+1)/#)]` -/
def P736498641440066422.Spec : Prop :=
  ∀ n, P736498641440066422.a n = A353376 (n + 1)

end A353376

/-! ## A353376.P8083131286354191676

`∑{d}[n+1, A046951(#)*A359465((n+1)/#)]`
-/

namespace A353376.P8083131286354191676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A359465 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A353376.P8083131286354191676

namespace A353376

/-- `∑{d}[n+1, A046951(#)*A359465((n+1)/#)]` -/
def P8083131286354191676.Spec : Prop :=
  ∀ n, P8083131286354191676.a n = A353376 (n + 1)

end A353376

/-! ## A353376.P6895527833805143065

`A028310(∑{d}[n+1, gcd(#, n²)]-A353375(n+1))`
-/

namespace A353376.P6895527833805143065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (((∑ d ∈ Nat.divisors (f1 n), Nat.gcd d (n ^ 2) : ℕ) : ℤ) - A353375 (n + 1)).toNat

end

end A353376.P6895527833805143065

namespace A353376

/-- `A028310(∑{d}[n+1, gcd(#, n²)]-A353375(n+1))` -/
def P6895527833805143065.Spec : Prop :=
  ∀ n, P6895527833805143065.a n = A353376 (n + 1)

end A353376

/-! ## A353376.P10288241896600645579

`∑{d}[n+1, A115362(#-1)*A353557((n+1)/#)]`
-/

namespace A353376.P10288241896600645579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A115362 (d - 1) * A353557 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A353376.P10288241896600645579

namespace A353376

/-- `∑{d}[n+1, A115362(#-1)*A353557((n+1)/#)]` -/
def P10288241896600645579.Spec : Prop :=
  ∀ n, P10288241896600645579.a n = A353376 (n + 1)

end A353376

/-! ## A353376.P14662963688405999003

`∑{d}[n+1, #+1]-A000203(n+1)-A353375(n+1)`
-/

namespace A353376.P14662963688405999003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - A000203 (n + 1) - A353375 (n + 1)

end

end A353376.P14662963688405999003

namespace A353376

/-- `∑{d}[n+1, #+1]-A000203(n+1)-A353375(n+1)` -/
def P14662963688405999003.Spec : Prop :=
  ∀ n, P14662963688405999003.a n = A353376 (n + 1)

end A353376

/-! ## A353376.P9709318508259353493

`A087990(n+1)+A087991(n+1)-A353375(n+1)`
-/

namespace A353376.P9709318508259353493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087990 (n + 1) + (A087991 (n + 1) - A353375 (n + 1))

end

end A353376.P9709318508259353493

namespace A353376

/-- `A087990(n+1)+A087991(n+1)-A353375(n+1)` -/
def P9709318508259353493.Spec : Prop :=
  ∀ n, P9709318508259353493.a n = A353376 (n + 1)

end A353376

/-! ## A353376.P16272654156057317823

`A324826(n+1)+A324827(n+1)-A353375(n+1)`
-/

namespace A353376.P16272654156057317823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324826 (n + 1) + (A324827 (n + 1) - A353375 (n + 1))

end

end A353376.P16272654156057317823

namespace A353376

/-- `A324826(n+1)+A324827(n+1)-A353375(n+1)` -/
def P16272654156057317823.Spec : Prop :=
  ∀ n, P16272654156057317823.a n = A353376 (n + 1)

end A353376

/-! ## A353376.P11743675055714504608

`A336041(n+1)+A349658(n+1)-A353375(n+1)`
-/

namespace A353376.P11743675055714504608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336041 (n + 1) + (A349658 (n + 1) - A353375 (n + 1))

end

end A353376.P11743675055714504608

namespace A353376

/-- `A336041(n+1)+A349658(n+1)-A353375(n+1)` -/
def P11743675055714504608.Spec : Prop :=
  ∀ n, P11743675055714504608.a n = A353376 (n + 1)

end A353376

/-! ## A353376.P12367237814782265102

`A353351(n+1)+A353352(n+1)-A353375(n+1)`
-/

namespace A353376.P12367237814782265102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353351 (n + 1) + (A353352 (n + 1) - A353375 (n + 1))

end

end A353376.P12367237814782265102

namespace A353376

/-- `A353351(n+1)+A353352(n+1)-A353375(n+1)` -/
def P12367237814782265102.Spec : Prop :=
  ∀ n, P12367237814782265102.a n = A353376 (n + 1)

end A353376

/-! ## A353376.P6721087391460221395

`A353361(n+1)+A353362(n+1)-A353375(n+1)`
-/

namespace A353376.P6721087391460221395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353361 (n + 1) + (A353362 (n + 1) - A353375 (n + 1))

end

end A353376.P6721087391460221395

namespace A353376

/-- `A353361(n+1)+A353362(n+1)-A353375(n+1)` -/
def P6721087391460221395.Spec : Prop :=
  ∀ n, P6721087391460221395.a n = A353376 (n + 1)

end A353376

/-! ## A353376.P15003669476187452979

`A353371(n+1)+A353372(n+1)-A353375(n+1)`
-/

namespace A353376.P15003669476187452979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353371 (n + 1) + (A353372 (n + 1) - A353375 (n + 1))

end

end A353376.P15003669476187452979

namespace A353376

/-- `A353371(n+1)+A353372(n+1)-A353375(n+1)` -/
def P15003669476187452979.Spec : Prop :=
  ∀ n, P15003669476187452979.a n = A353376 (n + 1)

end A353376

/-! ## A353376.P5831450919781481689

`∑{d}[n+1, A057427(#)]-A353375(n+1)`
-/

namespace A353376.P5831450919781481689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 d - A353375 (n + 1)

end

end A353376.P5831450919781481689

namespace A353376

/-- `∑{d}[n+1, A057427(#)]-A353375(n+1)` -/
def P5831450919781481689.Spec : Prop :=
  ∀ n, P5831450919781481689.a n = A353376 (n + 1)

end A353376

/-! ## A353376.P16112535224879000460

`A353332(A318885(n+1))`
-/

namespace A353376.P16112535224879000460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353332 (A318885 (n + 1)).toNat

end

end A353376.P16112535224879000460

namespace A353376

/-- `A353332(A318885(n+1))` -/
def P16112535224879000460.Spec : Prop :=
  ∀ n, P16112535224879000460.a n = A353376 (n + 1)

end A353376

/-! ## A353376.P6153469981768358176

`A353332(A290641(n+1))`
-/

namespace A353376.P6153469981768358176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353332 (A290641 (n + 1)).toNat

end

end A353376.P6153469981768358176

namespace A353376

/-- `A353332(A290641(n+1))` -/
def P6153469981768358176.Spec : Prop :=
  ∀ n, P6153469981768358176.a n = A353376 (n + 1)

end A353376

/-!
# A353377: Number of ways to write n as a product of the terms of A345452 larger than 1; a(1) = 1 by convention (an empty product).

The programs for A353377, there is no canonical definition to state claims against.
-/

/-! ## A353377.P4034476626155306720

`A353303(A318885(n+1))`
-/

namespace A353377.P4034476626155306720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353303 (A318885 (n + 1)).toNat

end

end A353377.P4034476626155306720

/-! ## A353377.P13933088277809407703

`A353303(A290641(n+1))`
-/

namespace A353377.P13933088277809407703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353303 (A290641 (n + 1)).toNat

end

end A353377.P13933088277809407703

/-! ## A353377.P2838572375319648523

`A353333(char[A035043(n)]*A290641(n+1))`
-/

namespace A353377.P2838572375319648523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353333 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A290641 (n + 1)).toNat

end

end A353377.P2838572375319648523

/-! ## A353377.P623483343732917837

`A353303(A064988(n+1))`
-/

namespace A353377.P623483343732917837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353303 (A064988 (n + 1)).toNat

end

end A353377.P623483343732917837

/-! ## A353377.P8510271232728998744

`A353333(A064988(n+1))%A002246(n+1)`
-/

namespace A353377.P8510271232728998744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353333 (A064988 (n + 1)).toNat) (A002246 (n + 1))

end

end A353377.P8510271232728998744

/-! ## A353377.P5157151593580052792

`A353333(A064988(n+1)%A045967(n+1))`
-/

namespace A353377.P5157151593580052792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353333 (Int.tmod (A064988 (n + 1)) (A045967 (n + 1))).toNat

end

end A353377.P5157151593580052792

/-! ## A353377.P14542098718667239719

`A353303(A165826(n+1))*A353374(n+1)`
-/

namespace A353377.P14542098718667239719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353303 (A165826 (n + 1)).toNat * A353374 (n + 1)

end

end A353377.P14542098718667239719

/-! ## A353377.P16041561506091576837

`A347438(A079065(n+1)%A270660(n+1))`
-/

namespace A353377.P16041561506091576837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347438 (Int.tmod (A079065 (n + 1)) (A270660 (n + 1))).toNat

end

end A353377.P16041561506091576837

/-! ## A353377.P688707510345277340

`A035263(n+1)*A240668(A165826(n+1))`
-/

namespace A353377.P688707510345277340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1) * A240668 (A165826 (n + 1)).toNat

end

end A353377.P688707510345277340

/-! ## A353377.P3519926750874964886

`A011655(A038712(n+1))*A240668(A165826(n+1))`
-/

namespace A353377.P3519926750874964886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A038712 (n + 1)).toNat * A240668 (A165826 (n + 1)).toNat

end

end A353377.P3519926750874964886

/-!
# A353378: Number of ways to write the square of n as a product of the terms of A345452 larger than 1; a(1) = 1 by convention (an empty product).

The programs for A353378, there is no canonical definition to state claims against.
-/

/-! ## A353378.P10504796841976045824

`A353377((n+1)²)`
-/

namespace A353378.P10504796841976045824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353377 ((n + 1) ^ 2)

end

end A353378.P10504796841976045824

/-! ## A353378.P4858827997369450669

`A353304(A318885(n+1))`
-/

namespace A353378.P4858827997369450669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353304 (A318885 (n + 1)).toNat

end

end A353378.P4858827997369450669

/-! ## A353378.P5964044682701402757

`A353304(A290641(n+1))`
-/

namespace A353378.P5964044682701402757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353304 (A290641 (n + 1)).toNat

end

end A353378.P5964044682701402757

/-! ## A353378.P4233734074739324737

`A353334(A290641(n+1)%(n+2)²)`
-/

namespace A353378.P4233734074739324737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353334 (Int.tmod (A290641 (n + 1)) ((n + 2) ^ 2 : ℤ)).toNat

end

end A353378.P4233734074739324737

/-! ## A353378.P14271976972864853599

`A353334(lcm(gcd(2, n+1), A290641(n+1)))`
-/

namespace A353378.P14271976972864853599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353334 (Int.lcm (Nat.gcd 2 (n + 1) : ℤ) (A290641 (n + 1)))

end

end A353378.P14271976972864853599

/-! ## A353378.P15687514256107243545

`A353304(A064988(n+1))`
-/

namespace A353378.P15687514256107243545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353304 (A064988 (n + 1)).toNat

end

end A353378.P15687514256107243545

/-! ## A353378.P10582116175669325364

`A000027(A353377(∑[2*n+1]))`
-/

namespace A353378.P10582116175669325364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A353377 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A353378.P10582116175669325364

/-! ## A353378.P10609544932384290879

`A353303(A318885((n+1)²))`
-/

namespace A353378.P10609544932384290879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353303 (A318885 ((n + 1) ^ 2)).toNat

end

end A353378.P10609544932384290879

/-! ## A353378.P13869455135872101057

`A353303(A064554(n+1)²)`
-/

namespace A353378.P13869455135872101057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353303 (A064554 (n + 1) ^ 2).toNat

end

end A353378.P13869455135872101057

/-! ## A353378.P6850104170983061227

`A353303(A290641((n+1)²))`
-/

namespace A353378.P6850104170983061227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353303 (A290641 ((n + 1) ^ 2)).toNat

end

end A353378.P6850104170983061227

/-!
# A353379: Primepi-based variant of the arithmetic derivative applied to the prime shadow of n.

The programs for A353379, there is no canonical definition to state claims against.
-/

/-! ## A353379.P8024576977811098794

`A258851(A181819(n+1))`
-/

namespace A353379.P8024576977811098794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (A181819 (n + 1)).toNat

end

end A353379.P8024576977811098794

/-! ## A353379.P7852376793007837415

`A353509(n+1)+A001222(n+1)`
-/

namespace A353379.P7852376793007837415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353509 (n + 1) + A001222 (n + 1)

end

end A353379.P7852376793007837415

/-! ## A353379.P1620411673013139935

`A278510(A181819(n+1))+A001222(n+1)`
-/

namespace A353379.P1620411673013139935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278510 (A181819 (n + 1)).toNat + A001222 (n + 1)

end

end A353379.P1620411673013139935

/-! ## A353379.P10039535035862742376

`A353509(n+1)+A056239(A181819(n+1))`
-/

namespace A353379.P10039535035862742376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353509 (n + 1) + A056239 (A181819 (n + 1)).toNat

end

end A353379.P10039535035862742376

/-! ## A353379.P5005387895708491382

`A258851(A329601(n+1)*A351944(n+1))`
-/

namespace A353379.P5005387895708491382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (A329601 (n + 1) * A351944 (n + 1)).toNat

end

end A353379.P5005387895708491382

/-! ## A353379.P5434244679227583910

`A258851(∏{e}[A304203(n+1), #])`
-/

namespace A353379.P5434244679227583910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A353379.P5434244679227583910

/-! ## A353379.P3141651685398576800

`A353509(n+1)+A001221(A332462(n+1))`
-/

namespace A353379.P3141651685398576800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353509 (n + 1) + A001221 (A332462 (n + 1)).toNat

end

end A353379.P3141651685398576800

/-!
# A353380: a(n) = 1 if A353354(n) [= Sum_{d|n} A332823(d)] is zero, otherwise 0.

The programs for A353380, the canonical program `A353380.P1519682102492887619` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353380 has offset 1).

The definition of A353380 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353380.P5667086681781982349

`1-abs(A353354(n+1))`
-/

namespace A353380.P5667086681781982349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |A353354 (n + 1)|

end

end A353380.P5667086681781982349

namespace A353380

/-- `1-abs(A353354(n+1))` -/
def P5667086681781982349.Spec : Prop :=
  ∀ n, P5667086681781982349.a n = A353380 (n + 1)

end A353380

/-! ## A353380.P13618899787326507526

`log2(gcd(2, A353351(n+1)))`
-/

namespace A353380.P13618899787326507526
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A353351 (n + 1)) : ℝ)

end

end A353380.P13618899787326507526

namespace A353380

/-- `log2(gcd(2, A353351(n+1)))` -/
def P13618899787326507526.Spec : Prop :=
  ∀ n, P13618899787326507526.a n = (A353380 (n + 1) : ℝ)

end A353380

/-! ## A353380.P1519682102492887619

`1-abs(∑{d}[n+1, A332823(#)])`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A353380

/-- `1-abs(∑{d}[n+1, A332823(#)])` -/
def P1519682102492887619.Spec : Prop :=
  ∀ n, P1519682102492887619.a n = A353380 (n + 1)

theorem P1519682102492887619.correct : P1519682102492887619.Spec := by
  intro n
  simp only [A353380, Nat.add_sub_cancel]

end A353380

/-! ## A353380.P6397206588876011797

`A007814(or(2, A353351(n+1)))`
-/

namespace A353380.P6397206588876011797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.lor 2 (A353351 (n + 1))).toNat

end

end A353380.P6397206588876011797

namespace A353380

/-- `A007814(or(2, A353351(n+1)))` -/
def P6397206588876011797.Spec : Prop :=
  ∀ n, P6397206588876011797.a n = A353380 (n + 1)

end A353380

/-! ## A353380.P15029445837010141001

`A000007(lcm(n, A353354(n+1)))`
-/

namespace A353380.P15029445837010141001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.lcm (n : ℤ) (A353354 (n + 1)))

end

end A353380.P15029445837010141001

namespace A353380

/-- `A000007(lcm(n, A353354(n+1)))` -/
def P15029445837010141001.Spec : Prop :=
  ∀ n, P15029445837010141001.a n = A353380 (n + 1)

end A353380

/-! ## A353380.P9507033247389359441

`A007814(A353351(n+1)²+2)`
-/

namespace A353380.P9507033247389359441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A353351 (n + 1) ^ 2 + 2).toNat

end

end A353380.P9507033247389359441

namespace A353380

/-- `A007814(A353351(n+1)²+2)` -/
def P9507033247389359441.Spec : Prop :=
  ∀ n, P9507033247389359441.a n = A353380 (n + 1)

end A353380

/-! ## A353380.P1529396438042462550

`A000007(n*A353354(n+1)²)`
-/

namespace A353380.P1529396438042462550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A353354 (n + 1) ^ 2).toNat

end

end A353380.P1529396438042462550

namespace A353380

/-- `A000007(n*A353354(n+1)²)` -/
def P1529396438042462550.Spec : Prop :=
  ∀ n, P1529396438042462550.a n = A353380 (n + 1)

end A353380

/-! ## A353380.P13487492529480565253

`A353354(n+1)²*A057428(n)+1`
-/

namespace A353380.P13487492529480565253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353354 (n + 1) ^ 2 * A057428 n + 1

end

end A353380.P13487492529480565253

namespace A353380

/-- `A353354(n+1)²*A057428(n)+1` -/
def P13487492529480565253.Spec : Prop :=
  ∀ n, P13487492529480565253.a n = A353380 (n + 1)

end A353380

/-! ## A353380.P15297331464326126500

`A353348(n+1)^A353354(n+1)²`
-/

namespace A353380.P15297331464326126500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353348 (n + 1) : ℚ) ^ (A353354 (n + 1) ^ 2 : ℤ)

end

end A353380.P15297331464326126500

namespace A353380

/-- `A353348(n+1)^A353354(n+1)²` -/
def P15297331464326126500.Spec : Prop :=
  ∀ n, P15297331464326126500.a n = (A353380 (n + 1) : ℚ)

end A353380

/-! ## A353380.P11410274597730462489

`A353349(n+1)^A353354(n+1)²`
-/

namespace A353380.P11410274597730462489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353349 (n + 1) : ℚ) ^ (A353354 (n + 1) ^ 2 : ℤ)

end

end A353380.P11410274597730462489

namespace A353380

/-- `A353349(n+1)^A353354(n+1)²` -/
def P11410274597730462489.Spec : Prop :=
  ∀ n, P11410274597730462489.a n = (A353380 (n + 1) : ℚ)

end A353380

/-! ## A353380.P4030743515926614336

`A353353(n+1)^A353354(n+1)²`
-/

namespace A353380.P4030743515926614336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353353 (n + 1) : ℚ) ^ (A353354 (n + 1) ^ 2 : ℤ)

end

end A353380.P4030743515926614336

namespace A353380

/-- `A353353(n+1)^A353354(n+1)²` -/
def P4030743515926614336.Spec : Prop :=
  ∀ n, P4030743515926614336.a n = (A353380 (n + 1) : ℚ)

end A353380

/-! ## A353380.P13515185587762499130

`A353373(n+1)^A353354(n+1)²`
-/

namespace A353380.P13515185587762499130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353373 (n + 1) : ℚ) ^ (A353354 (n + 1) ^ 2 : ℤ)

end

end A353380.P13515185587762499130

namespace A353380

/-- `A353373(n+1)^A353354(n+1)²` -/
def P13515185587762499130.Spec : Prop :=
  ∀ n, P13515185587762499130.a n = (A353380 (n + 1) : ℚ)

end A353380

/-! ## A353380.P5191815876462775255

`1-(A353328(n+1)-A353329(n+1))²`
-/

namespace A353380.P5191815876462775255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A353328 (n + 1) - A353329 (n + 1)) ^ 2

end

end A353380.P5191815876462775255

namespace A353380

/-- `1-(A353328(n+1)-A353329(n+1))²` -/
def P5191815876462775255.Spec : Prop :=
  ∀ n, P5191815876462775255.a n = A353380 (n + 1)

end A353380

/-! ## A353380.P650969780110704528

`1-(A332823(n+1)*A353446(n+1))²`
-/

namespace A353380.P650969780110704528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A332823 (n + 1) * A353446 (n + 1)) ^ 2

end

end A353380.P650969780110704528

namespace A353380

/-- `1-(A332823(n+1)*A353446(n+1))²` -/
def P650969780110704528.Spec : Prop :=
  ∀ n, P650969780110704528.a n = A353380 (n + 1)

end A353380

/-! ## A353380.P7322090250062815958

`∑{d}[n+1, A008683(#)*A353382((n+1)/#)]`
-/

namespace A353380.P7322090250062815958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A353382 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A353380.P7322090250062815958

namespace A353380

/-- `∑{d}[n+1, A008683(#)*A353382((n+1)/#)]` -/
def P7322090250062815958.Spec : Prop :=
  ∀ n, P7322090250062815958.a n = A353380 (n + 1)

end A353380

/-! ## A353380.P12733491766063104733

`(A057428(A028310(n))+A353354(n+1)²)²`
-/

namespace A353380.P12733491766063104733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057428 (A028310 n).toNat + A353354 (n + 1) ^ 2) ^ 2

end

end A353380.P12733491766063104733

namespace A353380

/-- `(A057428(A028310(n))+A353354(n+1)²)²` -/
def P12733491766063104733.Spec : Prop :=
  ∀ n, P12733491766063104733.a n = A353380 (n + 1)

end A353380

/-! ## A353380.P10643099317753142390

`A353328(A353328(n+1)+2-A353329(n+1))`
-/

namespace A353380.P10643099317753142390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353328 (A353328 (n + 1) + (2 - A353329 (n + 1))).toNat

end

end A353380.P10643099317753142390

namespace A353380

/-- `A353328(A353328(n+1)+2-A353329(n+1))` -/
def P10643099317753142390.Spec : Prop :=
  ∀ n, P10643099317753142390.a n = A353380 (n + 1)

end A353380

/-! ## A353380.P17312344524026102786

`val(A020639(A353352(n+1)+A000005(n+1)), 2)`
-/

namespace A353380.P17312344524026102786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020639 (A353352 (n + 1) + A000005 (n + 1)).toNat).toNat 2

end

end A353380.P17312344524026102786

namespace A353380

/-- `val(A020639(A353352(n+1)+A000005(n+1)), 2)` -/
def P17312344524026102786.Spec : Prop :=
  ∀ n, (P17312344524026102786.a n : ℤ) = A353380 (n + 1)

end A353380

/-! ## A353380.P3462758470448662741

`A353374(2^A353351(n+1))`
-/

namespace A353380.P3462758470448662741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353374 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A353351 (n + 1) : ℤ))).toNat

end

end A353380.P3462758470448662741

namespace A353380

/-- `A353374(2^A353351(n+1))` -/
def P3462758470448662741.Spec : Prop :=
  ∀ n, P3462758470448662741.a n = A353380 (n + 1)

end A353380

/-!
# A353381: Number of divisors of n not in A353355.

The programs for A353381, the canonical program `A353381.P8581295006819981312` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353381 has offset 1).

The definition of A353381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353381.P1062007375696298444

`A000005(n+1)-A353382(n+1)`
-/

namespace A353381.P1062007375696298444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A353382 (n + 1)

end

end A353381.P1062007375696298444

namespace A353381

/-- `A000005(n+1)-A353382(n+1)` -/
def P1062007375696298444.Spec : Prop :=
  ∀ n, P1062007375696298444.a n = A353381 (n + 1)

end A353381

/-! ## A353381.P8581295006819981312

`∑{d}[n+1, abs(A353354((n+1)/#))]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A353381

/-- `∑{d}[n+1, abs(A353354((n+1)/#))]` -/
def P8581295006819981312.Spec : Prop :=
  ∀ n, P8581295006819981312.a n = A353381 (n + 1)

theorem P8581295006819981312.correct : P8581295006819981312.Spec := by
  intro n
  simp only [A353381, Nat.add_sub_cancel]

end A353381

/-! ## A353381.P17761561363548970587

`Δ[A006218(n)]-A353382(n+1)`
-/

namespace A353381.P17761561363548970587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A353382 (n + 1)

end

end A353381.P17761561363548970587

namespace A353381

/-- `Δ[A006218(n)]-A353382(n+1)` -/
def P17761561363548970587.Spec : Prop :=
  ∀ n, P17761561363548970587.a n = A353381 (n + 1)

end A353381

/-! ## A353381.P13522427670329936113

`A032741(n+1)+A024000(A353382(n+1))`
-/

namespace A353381.P13522427670329936113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + A024000 (A353382 (n + 1)).toNat

end

end A353381.P13522427670329936113

namespace A353381

/-- `A032741(n+1)+A024000(A353382(n+1))` -/
def P13522427670329936113.Spec : Prop :=
  ∀ n, P13522427670329936113.a n = A353381 (n + 1)

end A353381

/-! ## A353381.P5439647634738406302

`A353351(n+1)+A353352(n+1)-A353382(n+1)`
-/

namespace A353381.P5439647634738406302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353351 (n + 1) + (A353352 (n + 1) - A353382 (n + 1))

end

end A353381.P5439647634738406302

namespace A353381

/-- `A353351(n+1)+A353352(n+1)-A353382(n+1)` -/
def P5439647634738406302.Spec : Prop :=
  ∀ n, P5439647634738406302.a n = A353381 (n + 1)

end A353381

/-! ## A353381.P17224047845380330793

`A353361(n+1)+A353362(n+1)-A353382(n+1)`
-/

namespace A353381.P17224047845380330793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353361 (n + 1) + (A353362 (n + 1) - A353382 (n + 1))

end

end A353381.P17224047845380330793

namespace A353381

/-- `A353361(n+1)+A353362(n+1)-A353382(n+1)` -/
def P17224047845380330793.Spec : Prop :=
  ∀ n, P17224047845380330793.a n = A353381 (n + 1)

end A353381

/-! ## A353381.P1961970933131138483

`A127170(A000124(n))-A353382(n+1)`
-/

namespace A353381.P1961970933131138483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127170 (A000124 n).toNat - A353382 (n + 1)

end

end A353381.P1961970933131138483

namespace A353381

/-- `A127170(A000124(n))-A353382(n+1)` -/
def P1961970933131138483.Spec : Prop :=
  ∀ n, P1961970933131138483.a n = A353381 (n + 1)

end A353381

/-!
# A353382: Inverse Möbius transform of A353380.

The programs for A353382, the canonical program `A353382.P5318746231564784083` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353382 has offset 1).

The definition of A353382 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A353381, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353382.P5318746231564784083

`A000005(n+1)-A353381(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A353382

/-- `A000005(n+1)-A353381(n+1)` -/
def P5318746231564784083.Spec : Prop :=
  ∀ n, P5318746231564784083.a n = A353382 (n + 1)

theorem P5318746231564784083.correct : P5318746231564784083.Spec := by
  intro n
  simp only [A353382, Nat.add_sub_cancel]

end A353382

/-! ## A353382.P8192348674004038681

`∑{d}[n+1, A353380(#)]`
-/

namespace A353382.P8192348674004038681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353380 d

end

end A353382.P8192348674004038681

namespace A353382

/-- `∑{d}[n+1, A353380(#)]` -/
def P8192348674004038681.Spec : Prop :=
  ∀ n, P8192348674004038681.a n = A353382 (n + 1)

end A353382

/-! ## A353382.P6861850042362681089

`Δ[A006218(n)]-A353381(n+1)`
-/

namespace A353382.P6861850042362681089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A353381 (n + 1)

end

end A353382.P6861850042362681089

namespace A353382

/-- `Δ[A006218(n)]-A353381(n+1)` -/
def P6861850042362681089.Spec : Prop :=
  ∀ n, P6861850042362681089.a n = A353382 (n + 1)

end A353382

/-! ## A353382.P5287626683111713870

`A062011(n+1)/2-A353381(n+1)`
-/

namespace A353382.P5287626683111713870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062011 (n + 1) : ℚ) / 2 - (A353381 (n + 1) : ℚ)

end

end A353382.P5287626683111713870

namespace A353382

/-- `A062011(n+1)/2-A353381(n+1)` -/
def P5287626683111713870.Spec : Prop :=
  ∀ n, P5287626683111713870.a n = (A353382 (n + 1) : ℚ)

end A353382

/-! ## A353382.P4114784005943856770

`A000027(∑{d}[n+1, gcd(n, #)]-A353381(n+1))`
-/

namespace A353382.P4114784005943856770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℤ) - A353381 (n + 1)).toNat

end

end A353382.P4114784005943856770

namespace A353382

/-- `A000027(∑{d}[n+1, gcd(n, #)]-A353381(n+1))` -/
def P4114784005943856770.Spec : Prop :=
  ∀ n, P4114784005943856770.a n = A353382 (n + 1)

end A353382

/-! ## A353382.P3761923786488344779

`A025480(A062011(n+1))-A353381(n+1)`
-/

namespace A353382.P3761923786488344779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A062011 (n + 1)).toNat - A353381 (n + 1)

end

end A353382.P3761923786488344779

namespace A353382

/-- `A025480(A062011(n+1))-A353381(n+1)` -/
def P3761923786488344779.Spec : Prop :=
  ∀ n, P3761923786488344779.a n = A353382 (n + 1)

end A353382

/-! ## A353382.P14906024187524915311

`A087990(n+1)+A087991(n+1)-A353381(n+1)`
-/

namespace A353382.P14906024187524915311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087990 (n + 1) + (A087991 (n + 1) - A353381 (n + 1))

end

end A353382.P14906024187524915311

namespace A353382

/-- `A087990(n+1)+A087991(n+1)-A353381(n+1)` -/
def P14906024187524915311.Spec : Prop :=
  ∀ n, P14906024187524915311.a n = A353382 (n + 1)

end A353382

/-! ## A353382.P3788126804754184232

`A195150(n+1)+A195155(n+1)-A353381(n+1)`
-/

namespace A353382.P3788126804754184232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195150 (n + 1) + (A195155 (n + 1) - A353381 (n + 1))

end

end A353382.P3788126804754184232

namespace A353382

/-- `A195150(n+1)+A195155(n+1)-A353381(n+1)` -/
def P3788126804754184232.Spec : Prop :=
  ∀ n, P3788126804754184232.a n = A353382 (n + 1)

end A353382

/-! ## A353382.P3113033384459811373

`A336041(n+1)+A349658(n+1)-A353381(n+1)`
-/

namespace A353382.P3113033384459811373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336041 (n + 1) + (A349658 (n + 1) - A353381 (n + 1))

end

end A353382.P3113033384459811373

namespace A353382

/-- `A336041(n+1)+A349658(n+1)-A353381(n+1)` -/
def P3113033384459811373.Spec : Prop :=
  ∀ n, P3113033384459811373.a n = A353382 (n + 1)

end A353382

/-! ## A353382.P14038785804347113710

`A353351(n+1)+A353352(n+1)-A353381(n+1)`
-/

namespace A353382.P14038785804347113710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353351 (n + 1) + (A353352 (n + 1) - A353381 (n + 1))

end

end A353382.P14038785804347113710

namespace A353382

/-- `A353351(n+1)+A353352(n+1)-A353381(n+1)` -/
def P14038785804347113710.Spec : Prop :=
  ∀ n, P14038785804347113710.a n = A353382 (n + 1)

end A353382

/-! ## A353382.P16236713796720002359

`A353361(n+1)+A353362(n+1)-A353381(n+1)`
-/

namespace A353382.P16236713796720002359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353361 (n + 1) + (A353362 (n + 1) - A353381 (n + 1))

end

end A353382.P16236713796720002359

namespace A353382

/-- `A353361(n+1)+A353362(n+1)-A353381(n+1)` -/
def P16236713796720002359.Spec : Prop :=
  ∀ n, P16236713796720002359.a n = A353382 (n + 1)

end A353382

/-! ## A353382.P14352389384297431564

`∑{d}[n+1, A057427(#)]-A353381(n+1)`
-/

namespace A353382.P14352389384297431564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 d - A353381 (n + 1)

end

end A353382.P14352389384297431564

namespace A353382

/-- `∑{d}[n+1, A057427(#)]-A353381(n+1)` -/
def P14352389384297431564.Spec : Prop :=
  ∀ n, P14352389384297431564.a n = A353382 (n + 1)

end A353382

/-! ## A353382.P1624050467737514246

`A112329(A003961(n+1))-A353381(n+1)`
-/

namespace A353382.P1624050467737514246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (A003961 (n + 1)).toNat - A353381 (n + 1)

end

end A353382.P1624050467737514246

namespace A353382

/-- `A112329(A003961(n+1))-A353381(n+1)` -/
def P1624050467737514246.Spec : Prop :=
  ∀ n, P1624050467737514246.a n = A353382 (n + 1)

end A353382

/-! ## A353382.P14980764405614283086

`A056239(A328166(n+1))-A353381(n+1)`
-/

namespace A353382.P14980764405614283086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A328166 (n + 1)).toNat - A353381 (n + 1)

end

end A353382.P14980764405614283086

namespace A353382

/-- `A056239(A328166(n+1))-A353381(n+1)` -/
def P14980764405614283086.Spec : Prop :=
  ∀ n, P14980764405614283086.a n = A353382 (n + 1)

end A353382

/-!
# A353383: Irregular triangle T(n,k) with row n listing A003586(j) not divisible by 12 such that A352072(A003586(j)) = n.

The programs for A353383, there is no canonical definition to state claims against.
-/

/-! ## A353383.P11829834249248144051

`record[A175778(A241909(n+1))]`
-/

namespace A353383.P11829834249248144051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175778 (A241909 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353383.P11829834249248144051

/-! ## A353383.P12425336162800557845

`lt[A219502(A249151(n)), 3]+1`
-/

namespace A353383.P12425336162800557845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219502 (A249151 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A353383.P12425336162800557845

/-! ## A353383.P9564872480536672471

`filter[A325364(n+1), A065333(#)]`
-/

namespace A353383.P9564872480536672471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065333 (f1 j).toNat = 1) n)

end

end A353383.P9564872480536672471

/-!
# A353384: Irregular triangle T(n,k) with row n listing A003592(j) not divisible by 20 such that A352218(A003592(j)) = n.

The programs for A353384, there is no canonical definition to state claims against.
-/

/-! ## A353384.P3479566214412206131

`A249399(lt[A183559(n+2), A249399(n+1)])`
-/

namespace A353384.P3479566214412206131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183559 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249399 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A353384.P3479566214412206131

/-! ## A353384.P18295724267438762675

`A249399(A267307(n+1)%A267295(n+2))`
-/

namespace A353384.P18295724267438762675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249399 (Int.tmod (A267307 (n + 1)) (A267295 (n + 2))).toNat

end

end A353384.P18295724267438762675

/-! ## A353384.P5709932502955312481

`A249399(lt[A319501(3*n), A257490(3*n+2)])`
-/

namespace A353384.P5709932502955312481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257490 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249399 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A353384.P5709932502955312481

/-! ## A353384.P10203371458096447847

`A249399(A267307(n+1)^A046563(n+1))`
-/

namespace A353384.P10203371458096447847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249399 (SequenceMachineLib.roundAway ((A267307 (n + 1) : ℚ) ^ (A046563 (n + 1) : ℤ))).toNat

end

end A353384.P10203371458096447847

/-! ## A353384.P444072565711229470

`A249399(A046563(n+1)²*A267307(n+1))`
-/

namespace A353384.P444072565711229470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249399 (A046563 (n + 1) ^ 2 * A267307 (n + 1)).toNat

end

end A353384.P444072565711229470

/-!
# A353386: Sums of two squares obtained by expanding a k X k matrix to (k+1) X (k+1) and taking the not yet seen squared distances of all positions in the matrix.

The programs for A353386, there is no canonical definition to state claims against.
-/

/-! ## A353386.P6003173934919939164

`A069011(A247160(n+1))%A261862(n+1)`
-/

namespace A353386.P6003173934919939164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069011 (A247160 (n + 1)).toNat) (A261862 (n + 1))

end

end A353386.P6003173934919939164

/-! ## A353386.P6017546295082869735

`A069011(and(A318991(n+1), A354150(n+2)))`
-/

namespace A353386.P6017546295082869735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069011 (Int.land (A318991 (n + 1)) (A354150 (n + 2))).toNat

end

end A353386.P6017546295082869735

/-!
# A353387: a(n) is the least squared distance between 2 points of an n X n grid not occurring between two points of an (n-1) X (n-1) grid.

The programs for A353387, there is no canonical definition to state claims against.
-/

/-! ## A353387.P3628762182890656643

`A086256(A170818((n+1)²))+(n+1)²`
-/

namespace A353387.P3628762182890656643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086256 (A170818 ((n + 1) ^ 2)).toNat + ((n + 1) ^ 2 : ℤ)

end

end A353387.P3628762182890656643

/-! ## A353387.P1838691374168958564

`A286688(C(n², 2)+1)+(n+1)²`
-/

namespace A353387.P1838691374168958564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286688 (Nat.choose (n ^ 2) 2 + 1) + ((n + 1) ^ 2 : ℤ)

end

end A353387.P1838691374168958564

/-! ## A353387.P3095174953942496684

`A007814(A006720(n))+(n+1)²`
-/

namespace A353387.P3095174953942496684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A006720 n).toNat + ((n + 1) ^ 2 : ℤ)

end

end A353387.P3095174953942496684

/-! ## A353387.P16632049721453877902

`A011732(A129286(n))+(n+1)²`
-/

namespace A353387.P16632049721453877902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011732 (A129286 n).toNat + ((n + 1) ^ 2 : ℤ)

end

end A353387.P16632049721453877902

/-! ## A353387.P13254379839674058783

`A295883(A022553(n))+(n+1)²`
-/

namespace A353387.P13254379839674058783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295883 (A022553 n).toNat + ((n + 1) ^ 2 : ℤ)

end

end A353387.P13254379839674058783

/-!
# A353389: Create the sequence of all positive integers > 1 that are prime or whose prime shadow (A181819) is a divisor that is already in the sequence. Then remove all the primes.

The programs for A353389, there is no canonical definition to state claims against.
-/

/-! ## A353389.P240360808018848137

`∩[A013929(n+1), A353393(n+1)]`
-/

namespace A353389.P240360808018848137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353389.P240360808018848137

/-! ## A353389.P2211461015666755557

`∩[A038838(n+1), A353393(n+1)]`
-/

namespace A353389.P2211461015666755557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353389.P2211461015666755557

/-! ## A353389.P18091806118878765993

`∩[A283050(n+1), A353393(n+1)]`
-/

namespace A353389.P18091806118878765993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353389.P18091806118878765993

/-! ## A353389.P6581624854068515480

`∩[A337381(n+1), A353393(n+1)]`
-/

namespace A353389.P6581624854068515480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353389.P6581624854068515480

/-!
# A353391: Number of compositions of n that are empty, a singleton, or whose run-lengths are a subsequence that is already counted.

The programs for A353391, there is no canonical definition to state claims against.
-/

/-! ## A353391.P3932154698157434132

`A353430(A048339(n))`
-/

namespace A353391.P3932154698157434132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353430 (A048339 n).toNat

end

end A353391.P3932154698157434132

/-! ## A353391.P14233821475452047222

`A353430(eq[1, A043567(n)])`
-/

namespace A353391.P14233821475452047222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353430 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A353391.P14233821475452047222

/-! ## A353391.P3679442826902210460

`A353430(A044827(n+1)-1)`
-/

namespace A353391.P3679442826902210460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353430 (A044827 (n + 1) - 1).toNat

end

end A353391.P3679442826902210460

/-! ## A353391.P4086534181514784682

`A353430(A044965(n+1)-1)`
-/

namespace A353391.P4086534181514784682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353430 (A044965 (n + 1) - 1).toNat

end

end A353391.P4086534181514784682

/-! ## A353391.P14718156665862833470

`A353430(lt[A321004(n+1), 2])`
-/

namespace A353391.P14718156665862833470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321004 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353430 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A353391.P14718156665862833470

/-!
# A353393: Positive integers m > 1 that are prime or whose prime shadow A181819(m) is a divisor of m that is already in the sequence.

The programs for A353393, there is no canonical definition to state claims against.
-/

/-! ## A353393.P7005163178379610797

`eq[A020915(A359899(n)), A032741(n)]`
-/

namespace A353393.P7005163178379610797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (A359899 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353393.P7005163178379610797

/-! ## A353393.P10103651125905429078

`eq[A194950(A231820(n+1)), A328772(n)]`
-/

namespace A353393.P10103651125905429078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194950 (A231820 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328772 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353393.P10103651125905429078

/-! ## A353393.P1907556559439583096

`eq[A065033(A056926(n)), A172130(n+1)]`
-/

namespace A353393.P1907556559439583096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A056926 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172130 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353393.P1907556559439583096

/-! ## A353393.P17531806825642166302

`∩[A115919(n+1), A135130(n+1)]`
-/

namespace A353393.P17531806825642166302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353393.P17531806825642166302

/-! ## A353393.P1682152111358991315

`eq[A237053(n), A355549(n)]`
-/

namespace A353393.P1682152111358991315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355549 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353393.P1682152111358991315

/-!
# A353394: Product of prime shadows of prime indices of n (with multiplicity).

The programs for A353394, there is no canonical definition to state claims against.
-/

/-! ## A353394.P14959332786672335941

`∏{e}[A181821(n+1), A101296(#)]`
-/

namespace A353394.P14959332786672335941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A101296 (Nat.factorization (f1 n).natAbs p)

end

end A353394.P14959332786672335941

/-! ## A353394.P880065597888988327

`∏{e}[A181821(n+1), A181819(#)]`
-/

namespace A353394.P880065597888988327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A181819 (Nat.factorization (f1 n).natAbs p)

end

end A353394.P880065597888988327

/-! ## A353394.P8519275295267121149

`∏{e}[A304660(n+1), A181819(#)]`
-/

namespace A353394.P8519275295267121149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A181819 (Nat.factorization (f1 n).natAbs p)

end

end A353394.P8519275295267121149

/-! ## A353394.P13027133861558120183

`∏{e}[A181821(n+1), A305899(#)]`
-/

namespace A353394.P13027133861558120183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A305899 (Nat.factorization (f1 n).natAbs p)

end

end A353394.P13027133861558120183

/-! ## A353394.P6831767458789133538

`∏{e}[A181821(n+1), A122111(A238745(#))]`
-/

namespace A353394.P6831767458789133538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A122111 (A238745 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A353394.P6831767458789133538

/-! ## A353394.P3466451967787426739

`A238745(∏{e}[A181821(n+1), A124859(#)])`
-/

namespace A353394.P3466451967787426739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238745 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A124859 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A353394.P3466451967787426739

/-!
# A353395: Numbers k such that the prime shadow of k equals the product of prime shadows of the prime indices of k.

The programs for A353395, there is no canonical definition to state claims against.
-/

/-! ## A353395.P15725451771545214538

`eq[A181819(n+1), A353394(n+1)]+1`
-/

namespace A353395.P15725451771545214538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353394 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A353395.P15725451771545214538

/-! ## A353395.P13537319587012995467

`A212619(A027642(n))+A003546(n+1)`
-/

namespace A353395.P13537319587012995467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212619 (A027642 n).toNat + A003546 (n + 1)

end

end A353395.P13537319587012995467

/-! ## A353395.P9612961117531825761

`A010051(A218208(n+1))+A003546(n+1)`
-/

namespace A353395.P9612961117531825761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A218208 (n + 1)).toNat + A003546 (n + 1)

end

end A353395.P9612961117531825761

/-! ## A353395.P13959588993850171620

`A080116(A148628(n))+A003546(n+1)`
-/

namespace A353395.P13959588993850171620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080116 (A148628 n).toNat + A003546 (n + 1)

end

end A353395.P13959588993850171620

/-! ## A353395.P1252683623382555352

`A010815(A253433(n+1))+A003546(n+1)`
-/

namespace A353395.P1252683623382555352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A253433 (n + 1)).toNat + A003546 (n + 1)

end

end A353395.P1252683623382555352

/-!
# A353396: Number of integer partitions of n whose Heinz number has prime shadow equal to the product of prime shadows of its parts.

The programs for A353396, there is no canonical definition to state claims against.
-/

/-! ## A353396.P6100051493530348642

`A325678(C(A029092(n+3), A025668(3*(n+1))))`
-/

namespace A353396.P6100051493530348642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (Nat.choose (A029092 (n + 3)).toNat (A025668 (3 * (n + 1))).toNat)

end

end A353396.P6100051493530348642

/-! ## A353396.P16956492395300324359

`A272677(A106135(n+2))`
-/

namespace A353396.P16956492395300324359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272677 (A106135 (n + 2)).toNat

end

end A353396.P16956492395300324359

/-! ## A353396.P7928022281181932304

`A139352(A034339(n+1)+1+n)`
-/

namespace A353396.P7928022281181932304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A034339 (n + 1) + 1 + (n : ℤ)).toNat

end

end A353396.P7928022281181932304

/-! ## A353396.P4215524540191208169

`A007949(A050532(n))+A000586(n)`
-/

namespace A353396.P4215524540191208169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A050532 n).toNat + A000586 n

end

end A353396.P4215524540191208169

/-! ## A353396.P11565721094001534522

`A321198(n)+A002375(A321213(n))`
-/

namespace A353396.P11565721094001534522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321198 n + A002375 (A321213 n).toNat

end

end A353396.P11565721094001534522

/-!
# A353397: Replace prime(k) with prime(2^k) in the prime factorization of n.

The programs for A353397, there is no canonical definition to state claims against.
-/

/-! ## A353397.P14058909750640844529

`∏{e}[A181821(n+1), A033844(#)]`
-/

namespace A353397.P14058909750640844529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A033844 (Nat.factorization (f1 n).natAbs p)

end

end A353397.P14058909750640844529

/-! ## A353397.P12366373994025501167

`∏{e}[A181821(n+1), A000040(A000079(#))]`
-/

namespace A353397.P12366373994025501167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (A000079 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A353397.P12366373994025501167

/-! ## A353397.P13172275889012953479

`A355732(n+1)%A183072(A052955(n))`
-/

namespace A353397.P13172275889012953479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355732 (n + 1)) (A183072 (A052955 n).toNat)

end

end A353397.P13172275889012953479

/-!
# A353398: Number of integer partitions of n where the product of multiplicities equals the product of prime shadows of the parts.

The programs for A353398, there is no canonical definition to state claims against.
-/

/-! ## A353398.P17610359431004137169

`A035232(A091437(n+2)+A081351(n))`
-/

namespace A353398.P17610359431004137169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035232 (A091437 (n + 2) + A081351 n).toNat

end

end A353398.P17610359431004137169

/-! ## A353398.P4151900396024955580

`A099075(A246087(3*n+5)-A119446(n+1))`
-/

namespace A353398.P4151900396024955580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099075 (A246087 (3 * n + 5) - A119446 (n + 1)).toNat

end

end A353398.P4151900396024955580

