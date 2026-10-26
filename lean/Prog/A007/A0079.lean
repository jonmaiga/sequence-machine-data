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
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
# A007900: Coordination sequence for D_4 lattice.

The programs for A007900, the canonical program `A007900.P17973117880974007224` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007900 has offset 0).

The definition of A007900 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007900.P9280723692012626816

`Δ[(2*n-floor(2/acot(n)²))²]`
-/

namespace A007900.P9280723692012626816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - ⌊2 / SequenceMachineLib.acot (n : ℝ) ^ 2⌋) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007900.P9280723692012626816

namespace A007900

/-- `Δ[(2*n-floor(2/acot(n)²))²]` -/
def P9280723692012626816.Spec : Prop :=
  ∀ n, P9280723692012626816.a n = A007900 n

end A007900

/-! ## A007900.P17973117880974007224

`Δ[floor(2*n/(n+1)*n²)²]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007900

/-- `Δ[floor(2*n/(n+1)*n²)²]` -/
def P17973117880974007224.Spec : Prop :=
  ∀ n, P17973117880974007224.a n = A007900 n

theorem P17973117880974007224.correct : P17973117880974007224.Spec := by
  intro n
  simp only [A007900]

end A007900

/-! ## A007900.P12515503090666393221

`A004277(n)+(8*n²+3)*2*n`
-/

namespace A007900.P12515503090666393221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + ((8 * n ^ 2 + 3) * (2 * n) : ℤ)

end

end A007900.P12515503090666393221

namespace A007900

/-- `A004277(n)+(8*n²+3)*2*n` -/
def P12515503090666393221.Spec : Prop :=
  ∀ n, P12515503090666393221.a n = A007900 n

end A007900

/-! ## A007900.P14575612521544193548

`A144965(n)+A008574(n)`
-/

namespace A007900.P14575612521544193548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144965 n + A008574 n

end

end A007900.P14575612521544193548

namespace A007900

/-- `A144965(n)+A008574(n)` -/
def P14575612521544193548.Spec : Prop :=
  ∀ n, P14575612521544193548.a n = A007900 n

end A007900

/-! ## A007900.P14811480735426748684

`A005899(n)*A008574(n)`
-/

namespace A007900.P14811480735426748684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 n * A008574 n

end

end A007900.P14811480735426748684

namespace A007900

/-- `A005899(n)*A008574(n)` -/
def P14811480735426748684.Spec : Prop :=
  ∀ n, P14811480735426748684.a n = A007900 n

end A007900

/-! ## A007900.P3977199915943647231

`A022144(n)*A058331(n)`
-/

namespace A007900.P3977199915943647231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n * A058331 n

end

end A007900.P3977199915943647231

namespace A007900

/-- `A022144(n)*A058331(n)` -/
def P3977199915943647231.Spec : Prop :=
  ∀ n, P3977199915943647231.a n = A007900 n

end A007900

/-! ## A007900.P9383258179435146750

`A035471(n)*A122553(n)`
-/

namespace A007900.P9383258179435146750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035471 n * A122553 n

end

end A007900.P9383258179435146750

namespace A007900

/-- `A035471(n)*A122553(n)` -/
def P9383258179435146750.Spec : Prop :=
  ∀ n, P9383258179435146750.a n = A007900 n

end A007900

/-! ## A007900.P16684685445788672422

`lcm(A005899(n), A022144(n))`
-/

namespace A007900.P16684685445788672422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005899 n) (A022144 n)

end

end A007900.P16684685445788672422

namespace A007900

/-- `lcm(A005899(n), A022144(n))` -/
def P16684685445788672422.Spec : Prop :=
  ∀ n, (P16684685445788672422.a n : ℤ) = A007900 n

end A007900

/-! ## A007900.P3231718281583774631

`A101098(n+1)-A061804(n)`
-/

namespace A007900.P3231718281583774631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101098 (n + 1) - A061804 n

end

end A007900.P3231718281583774631

namespace A007900

/-- `A101098(n+1)-A061804(n)` -/
def P3231718281583774631.Spec : Prop :=
  ∀ n, P3231718281583774631.a n = A007900 n

end A007900

/-! ## A007900.P12835128543670405528

`(A001105(n)+1)*A022144(n)`
-/

namespace A007900.P12835128543670405528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001105 n + 1) * A022144 n

end

end A007900.P12835128543670405528

namespace A007900

/-- `(A001105(n)+1)*A022144(n)` -/
def P12835128543670405528.Spec : Prop :=
  ∀ n, P12835128543670405528.a n = A007900 n

end A007900

/-! ## A007900.P8148372150206394771

`(A117216(n)+A022144(n))/2`
-/

namespace A007900.P8148372150206394771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117216 n + A022144 n : ℚ) / 2

end

end A007900.P8148372150206394771

namespace A007900

/-- `(A117216(n)+A022144(n))/2` -/
def P8148372150206394771.Spec : Prop :=
  ∀ n, P8148372150206394771.a n = (A007900 n : ℚ)

end A007900

/-! ## A007900.P16116874900425449903

`A008458(n)+n*A010006(n)`
-/

namespace A007900.P16116874900425449903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (n : ℤ) * A010006 n

end

end A007900.P16116874900425449903

namespace A007900

/-- `A008458(n)+n*A010006(n)` -/
def P16116874900425449903.Spec : Prop :=
  ∀ n, P16116874900425449903.a n = A007900 n

end A007900

/-! ## A007900.P11497043425010312096

`(A008706(n)-n)*A005899(n)`
-/

namespace A007900.P11497043425010312096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008706 n - (n : ℤ)) * A005899 n

end

end A007900.P11497043425010312096

namespace A007900

/-- `(A008706(n)-n)*A005899(n)` -/
def P11497043425010312096.Spec : Prop :=
  ∀ n, P11497043425010312096.a n = A007900 n

end A007900

/-! ## A007900.P16149072893969968029

`(A002522(n)+n²)*A022144(n)`
-/

namespace A007900.P16149072893969968029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002522 n + (n ^ 2 : ℤ)) * A022144 n

end

end A007900.P16149072893969968029

namespace A007900

/-- `(A002522(n)+n²)*A022144(n)` -/
def P16149072893969968029.Spec : Prop :=
  ∀ n, P16149072893969968029.a n = A007900 n

end A007900

/-! ## A007900.P17809564226134177249

`A022144(n)+n*A008574(n)²`
-/

namespace A007900.P17809564226134177249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n + (n : ℤ) * A008574 n ^ 2

end

end A007900.P17809564226134177249

namespace A007900

/-- `A022144(n)+n*A008574(n)²` -/
def P17809564226134177249.Spec : Prop :=
  ∀ n, P17809564226134177249.a n = A007900 n

end A007900

/-! ## A007900.P10040090976666567967

`A005899(n)*A019425(2*n+1)`
-/

namespace A007900.P10040090976666567967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 n * A019425 (2 * n + 1)

end

end A007900.P10040090976666567967

namespace A007900

/-- `A005899(n)*A019425(2*n+1)` -/
def P10040090976666567967.Spec : Prop :=
  ∀ n, P10040090976666567967.a n = A007900 n

end A007900

/-! ## A007900.P11074738153639079782

`A008586(n)+A117216(n)-A144965(n)`
-/

namespace A007900.P11074738153639079782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n + (A117216 n - A144965 n)

end

end A007900.P11074738153639079782

namespace A007900

/-- `A008586(n)+A117216(n)-A144965(n)` -/
def P11074738153639079782.Spec : Prop :=
  ∀ n, P11074738153639079782.a n = A007900 n

end A007900

/-! ## A007900.P8927633561391807375

`A272039(n)+A272130(n)-A010010(n)`
-/

namespace A007900.P8927633561391807375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272039 n + (A272130 n - A010010 n)

end

end A007900.P8927633561391807375

namespace A007900

/-- `A272039(n)+A272130(n)-A010010(n)` -/
def P8927633561391807375.Spec : Prop :=
  ∀ n, P8927633561391807375.a n = A007900 n

end A007900

/-! ## A007900.P8483585859557830770

`A117216(n)+A272039(n)-A272130(n)`
-/

namespace A007900.P8483585859557830770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117216 n + (A272039 n - A272130 n)

end

end A007900.P8483585859557830770

namespace A007900

/-- `A117216(n)+A272039(n)-A272130(n)` -/
def P8483585859557830770.Spec : Prop :=
  ∀ n, P8483585859557830770.a n = A007900 n

end A007900

/-! ## A007900.P4611546887569869740

`(A069894(n)-A005899(n))*A005899(n)`
-/

namespace A007900.P4611546887569869740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A069894 n - A005899 n) * A005899 n

end

end A007900.P4611546887569869740

namespace A007900

/-- `(A069894(n)-A005899(n))*A005899(n)` -/
def P4611546887569869740.Spec : Prop :=
  ∀ n, P4611546887569869740.a n = A007900 n

end A007900

/-!
# A007901: Number of minimal unavoidable n-celled pebbling configurations.

The programs for A007901, there is no canonical definition to state claims against.
-/

/-! ## A007901.P10577111726628628970

`A230980(A159710(n))-A332727(n)²`
-/

namespace A007901.P10577111726628628970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A159710 n).toNat - A332727 n ^ 2

end

end A007901.P10577111726628628970

/-! ## A007901.P7679294107443640434

`A105514(A015523(n)+A000071(n+1))`
-/

namespace A007901.P7679294107443640434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105514 (A015523 n + A000071 (n + 1)).toNat

end

end A007901.P7679294107443640434

/-! ## A007901.P10239979210557625656

`A024154(A189398(n+1)-A060465(3*n+1))`
-/

namespace A007901.P10239979210557625656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024154 (A189398 (n + 1) - A060465 (3 * n + 1)).toNat

end

end A007901.P10239979210557625656

/-! ## A007901.P10563661205555129551

`A027868(A006095(n))-A343609(A151455(n)-1+n)`
-/

namespace A007901.P10563661205555129551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A006095 n).toNat - A343609 (A151455 n - 1 + (n : ℤ)).toNat

end

end A007901.P10563661205555129551

/-!
# A007902: Number of pebbling configurations with n pebbles.

The programs for A007902, there is no canonical definition to state claims against.
-/

/-! ## A007902.P15931564184317020409

`A057417(A250265(n+1))`
-/

namespace A007902.P15931564184317020409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057417 (A250265 (n + 1)).toNat

end

end A007902.P15931564184317020409

/-! ## A007902.P6579875460317967420

`A057417(A151878(n²)+n)`
-/

namespace A007902.P6579875460317967420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057417 (A151878 (n ^ 2) + (n : ℤ)).toNat

end

end A007902.P6579875460317967420

/-! ## A007902.P8622962992270404377

`A057417(round(sqrt(n²+1)))%A077776(n+1)`
-/

namespace A007902.P8622962992270404377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057417 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (A077776 (n + 1))

end

end A007902.P8622962992270404377

/-! ## A007902.P17383374518292671975

`A057417(A181352(A151878(n)+n))`
-/

namespace A007902.P17383374518292671975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057417 (A181352 (A151878 n + (n : ℤ)).toNat).toNat

end

end A007902.P17383374518292671975

/-! ## A007902.P3135026976779813630

`A057417(A039723(n^A178334(n)))`
-/

namespace A007902.P3135026976779813630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057417 (A039723 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat).toNat

end

end A007902.P3135026976779813630

/-!
# A007903: The number of distinct principal ideals in the semigroup of binary relations on an n-set.

The programs for A007903, there is no canonical definition to state claims against.
-/

/-! ## A007903.P13623971320052685300

`A057168(∑[A218675(n)])`
-/

namespace A007903.P13623971320052685300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A007903.P13623971320052685300

/-!
# A007904: Crystal ball sequence for diamond.

The programs for A007904, the canonical program `A007904.P9563273679533119609` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007904 has offset 0).

The definition of A007904 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007904.P14753289698013787231

`(10*n^3+15*n²+26*n+12-n%2*3)/12`
-/

namespace A007904.P14753289698013787231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 * n ^ 3 + 15 * n ^ 2 + 26 * n + 12 : ℤ) - ((n % 2 * 3 : ℕ) : ℤ) : ℚ) / 12

end

end A007904.P14753289698013787231

namespace A007904

/-- `(10*n^3+15*n²+26*n+12-n%2*3)/12` -/
def P14753289698013787231.Spec : Prop :=
  ∀ n, P14753289698013787231.a n = (A007904 n : ℚ)

end A007904

/-! ## A007904.P9563273679533119609

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=1, a(1)=5, a(2)=17, a(3)=41, a(4)=83`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007904

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P9563273679533119609.Spec : Prop :=
  ∀ n, P9563273679533119609.a n = A007904 n

theorem P9563273679533119609.correct : P9563273679533119609.Spec := by
  intro n
  simp only [A007904]

end A007904

/-! ## A007904.P18173400860398877776

`∑[∑[a(n-2)+10]]` with `a(0)=1, a(1)=3, a(2)=8, a(3)=12`
-/

namespace A007904.P18173400860398877776
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 8, 12] fun n f2 =>
  f2 (n - 2) + 10

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007904.P18173400860398877776

namespace A007904

/-- `∑[∑[a(n-2)+10]]` -/
def P18173400860398877776.Spec : Prop :=
  ∀ n, (P18173400860398877776.a n : ℤ) = A007904 n

end A007904

/-! ## A007904.P2680846577744217553

`∑[floor(5/2*n²)+1]+n`
-/

namespace A007904.P2680846577744217553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 : ℚ) / 2 * (n ^ 2 : ℚ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A007904.P2680846577744217553

namespace A007904

/-- `∑[floor(5/2*n²)+1]+n` -/
def P2680846577744217553.Spec : Prop :=
  ∀ n, P2680846577744217553.a n = A007904 n

end A007904

/-! ## A007904.P5815921815388021818

`∑[∑[∑[floor(a(n-2))]]]` with `a(0)=1, a(1)=2, a(2)=5, a(3)=4, a(4)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A007904.P5815921815388021818
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5, 4, 6] fun n f3 =>
  f3 (n - 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007904.P5815921815388021818

namespace A007904

/-- `∑[∑[∑[floor(a(n-2))]]]` -/
def P5815921815388021818.Spec : Prop :=
  ∀ n, (P5815921815388021818.a n : ℤ) = A007904 n

end A007904

/-! ## A007904.P3925525145882613919

`∑[A008253(n)]`
-/

namespace A007904.P3925525145882613919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008253 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007904.P3925525145882613919

namespace A007904

/-- `∑[A008253(n)]` -/
def P3925525145882613919.Spec : Prop :=
  ∀ n, P3925525145882613919.a n = A007904 n

end A007904

/-! ## A007904.P13676601413001751307

`∑[ceil((A010001(n)+1)/2)]`
-/

namespace A007904.P13676601413001751307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010001 n + 1 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007904.P13676601413001751307

namespace A007904

/-- `∑[ceil((A010001(n)+1)/2)]` -/
def P13676601413001751307.Spec : Prop :=
  ∀ n, P13676601413001751307.a n = A007904 n

end A007904

/-! ## A007904.P4840047959944060537

`∑[A005893(n)+floor(n²/2)]`
-/

namespace A007904.P4840047959944060537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n + ⌊(n ^ 2 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007904.P4840047959944060537

namespace A007904

/-- `∑[A005893(n)+floor(n²/2)]` -/
def P4840047959944060537.Spec : Prop :=
  ∀ n, P4840047959944060537.a n = A007904 n

end A007904

/-! ## A007904.P8784755842373402868

`∑[A005899(n)-ceil(3/2*n²)]`
-/

namespace A007904.P8784755842373402868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 n - ⌈(3 : ℚ) / 2 * (n ^ 2 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007904.P8784755842373402868

namespace A007904

/-- `∑[A005899(n)-ceil(3/2*n²)]` -/
def P8784755842373402868.Spec : Prop :=
  ∀ n, P8784755842373402868.a n = A007904 n

end A007904

/-! ## A007904.P4429279144913958301

`∑[A007590(n)+A005893(n)]`
-/

namespace A007904.P4429279144913958301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n + A005893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007904.P4429279144913958301

namespace A007904

/-- `∑[A007590(n)+A005893(n)]` -/
def P4429279144913958301.Spec : Prop :=
  ∀ n, P4429279144913958301.a n = A007904 n

end A007904

/-! ## A007904.P13476033019814062243

`∑[A005918(n)-A000982(n)]`
-/

namespace A007904.P13476033019814062243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 n - A000982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007904.P13476033019814062243

namespace A007904

/-- `∑[A005918(n)-A000982(n)]` -/
def P13476033019814062243.Spec : Prop :=
  ∀ n, P13476033019814062243.a n = A007904 n

end A007904

/-! ## A007904.P3711323346093612730

`∑[A009946(n)-A001105(n)]`
-/

namespace A007904.P3711323346093612730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009946 n - A001105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007904.P3711323346093612730

namespace A007904

/-- `∑[A009946(n)-A001105(n)]` -/
def P3711323346093612730.Spec : Prop :=
  ∀ n, P3711323346093612730.a n = A007904 n

end A007904

/-! ## A007904.P11578560919629437949

`∑[A116668(n)-A140106(n+1)]`
-/

namespace A007904.P11578560919629437949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116668 n - A140106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007904.P11578560919629437949

namespace A007904

/-- `∑[A116668(n)-A140106(n+1)]` -/
def P11578560919629437949.Spec : Prop :=
  ∀ n, P11578560919629437949.a n = A007904 n

end A007904

/-! ## A007904.P2714603130079679384

`∑[A298468(n²)]`
-/

namespace A007904.P2714603130079679384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298468 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007904.P2714603130079679384

namespace A007904

/-- `∑[A298468(n²)]` -/
def P2714603130079679384.Spec : Prop :=
  ∀ n, P2714603130079679384.a n = A007904 n

end A007904

/-!
# A007905: Conflicts during insertions into exchange trees on n nodes.

The programs for A007905, there is no canonical definition to state claims against.
-/

/-! ## A007905.P3899286292453084552

`A319700(A110591(n)*A184511(n))`
-/

namespace A007905.P3899286292453084552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319700 (A110591 n * A184511 n).toNat

end

end A007905.P3899286292453084552

/-! ## A007905.P9288734080511047683

`A245970(A224776(n))*A317934(n+1)`
-/

namespace A007905.P9288734080511047683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245970 (A224776 n).toNat * A317934 (n + 1)

end

end A007905.P9288734080511047683

/-!
# A007906: Number of steps for aliquot sequence for n to converge to 0, or -1 if it never reaches 0.

The programs for A007906, there is no canonical definition to state claims against.
-/

/-! ## A007906.P15301162672784490199

`A098008(n+1)-C(A003023(n+1), A044050(n+1))`
-/

namespace A007906.P15301162672784490199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098008 (n + 1) - (Nat.choose (A003023 (n + 1)).toNat (A044050 (n + 1)).toNat : ℤ)

end

end A007906.P15301162672784490199

/-! ## A007906.P13595628105600089826

`A044050(n+1)-A046145(A000332(n))`
-/

namespace A007906.P13595628105600089826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044050 (n + 1) - A046145 (A000332 n).toNat

end

end A007906.P13595628105600089826

/-! ## A007906.P11758294216102388814

`A098008(n+1)-A121373(A200553(n+1))`
-/

namespace A007906.P11758294216102388814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098008 (n + 1) - A121373 (A200553 (n + 1)).toNat

end

end A007906.P11758294216102388814

/-! ## A007906.P16475031611184835322

`A098008(n+1)-A010054(A075892(n+2))`
-/

namespace A007906.P16475031611184835322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098008 (n + 1) - A010054 (A075892 (n + 2)).toNat

end

end A007906.P16475031611184835322

/-! ## A007906.P7775417160476377498

`A098008(n+1)-A051731(A133870(3*(n+1)))`
-/

namespace A007906.P7775417160476377498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098008 (n + 1) - A051731 (A133870 (3 * (n + 1))).toNat

end

end A007906.P7775417160476377498

/-!
# A007907: Concatenation of sequence (1, 2, ..., floor((n-1)/2), floor(n/2), floor(n/2)-1, ..., 1) for n >= 1.

The programs for A007907, there is no canonical definition to state claims against.
-/

/-! ## A007907.P14661360297727422753

`A289404(A151764(n+1))*A289404(n)`
-/

namespace A007907.P14661360297727422753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289404 (A151764 (n + 1)).toNat * A289404 n

end

end A007907.P14661360297727422753

/-! ## A007907.P10226402863476800577

`A343524(A369305(n)+A178334(3*n+1))`
-/

namespace A007907.P10226402863476800577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343524 (A369305 n + A178334 (3 * n + 1)).toNat

end

end A007907.P10226402863476800577

/-! ## A007907.P17638475675277534591

`A289404(A000005(A000079(n)))*A289404(n)`
-/

namespace A007907.P17638475675277534591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289404 (A000005 (A000079 n).toNat).toNat * A289404 n

end

end A007907.P17638475675277534591

/-! ## A007907.P6964840031400083710

`∑[A007088(2^(n+1)-∏[gcd(2, n+1)])]`
-/

namespace A007907.P6964840031400083710
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 ^ (n + 1) - ∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007907.P6964840031400083710

/-! ## A007907.P1595596690925995353

`∑[A007088(2^(n+1)-2^∑[n%2])]`
-/

namespace A007907.P1595596690925995353
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 ^ (n + 1) - 2 ^ (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007907.P1595596690925995353

/-!
# A007908: Triangle of the gods: to get a(n), concatenate the decimal numbers 1,2,3,...,n.

The programs for A007908, the canonical program `A007908.P7725622217324833494` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007908 has offset 1).

The definition of A007908 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007908.P7725622217324833494

`a(n-1)*10^floor(log(10*(n+1))/log(10))+n+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007908

/-- `a(n-1)*10^floor(log(10*(n+1))/log(10))+n+1` -/
def P7725622217324833494.Spec : Prop :=
  ∀ n, P7725622217324833494.a n = (A007908 (n + 1) : ℚ)

end A007908

/-! ## A007908.P9247008204282005293

`n+1+a(n-1)*10^A055642(n+1)` with `a(0)=1`
-/

namespace A007908.P9247008204282005293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) + a (n - 1) * (10 : ℚ) ^ (A055642 (n + 1) : ℤ)

end

end A007908.P9247008204282005293

namespace A007908

/-- `n+1+a(n-1)*10^A055642(n+1)` -/
def P9247008204282005293.Spec : Prop :=
  ∀ n, P9247008204282005293.a n = (A007908 (n + 1) : ℚ)

end A007908

/-! ## A007908.P4220722356794134040

`∑[A078998(n+1)]`
-/

namespace A007908.P4220722356794134040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007908.P4220722356794134040

namespace A007908

/-- `∑[A078998(n+1)]` -/
def P4220722356794134040.Spec : Prop :=
  ∀ n, P4220722356794134040.a n = A007908 (n + 1)

end A007908

/-! ## A007908.P8236571165305899419

`A359124(n+1)-1`
-/

namespace A007908.P8236571165305899419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359124 (n + 1) - 1

end

end A007908.P8236571165305899419

namespace A007908

/-- `A359124(n+1)-1` -/
def P8236571165305899419.Spec : Prop :=
  ∀ n, P8236571165305899419.a n = A007908 (n + 1)

end A007908

/-! ## A007908.P4987330236532130657

`A081539(∑[n+1]+1)`
-/

namespace A007908.P4987330236532130657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081539 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A007908.P4987330236532130657

namespace A007908

/-- `A081539(∑[n+1]+1)` -/
def P4987330236532130657.Spec : Prop :=
  ∀ n, P4987330236532130657.a n = A007908 (n + 1)

end A007908

/-! ## A007908.P2143577938008575146

`A252043(A033061(n+1))`
-/

namespace A007908.P2143577938008575146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252043 (A033061 (n + 1)).toNat

end

end A007908.P2143577938008575146

namespace A007908

/-- `A252043(A033061(n+1))` -/
def P2143577938008575146.Spec : Prop :=
  ∀ n, P2143577938008575146.a n = A007908 (n + 1)

end A007908

/-! ## A007908.P6465883762214862571

`A252043(A058183(n+1))`
-/

namespace A007908.P6465883762214862571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252043 (A058183 (n + 1)).toNat

end

end A007908.P6465883762214862571

namespace A007908

/-- `A252043(A058183(n+1))` -/
def P6465883762214862571.Spec : Prop :=
  ∀ n, P6465883762214862571.a n = A007908 (n + 1)

end A007908

/-! ## A007908.P6545662846962758363

`A252043(A117804(n+2)-1)`
-/

namespace A007908.P6545662846962758363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252043 (A117804 (n + 2) - 1).toNat

end

end A007908.P6545662846962758363

namespace A007908

/-- `A252043(A117804(n+2)-1)` -/
def P6545662846962758363.Spec : Prop :=
  ∀ n, P6545662846962758363.a n = A007908 (n + 1)

end A007908

/-! ## A007908.P6182964173234208064

`A252043(record[∑[A044932(n+1)]])`
-/

namespace A007908.P6182964173234208064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252043 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A007908.P6182964173234208064

namespace A007908

/-- `A252043(record[∑[A044932(n+1)]])` -/
def P6182964173234208064.Spec : Prop :=
  ∀ n, P6182964173234208064.a n = A007908 (n + 1)

end A007908

/-! ## A007908.P15885188504923257025

`A083448(n+1)+A000142(n+1)`
-/

namespace A007908.P15885188504923257025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083448 (n + 1) + A000142 (n + 1)

end

end A007908.P15885188504923257025

namespace A007908

/-- `A083448(n+1)+A000142(n+1)` -/
def P15885188504923257025.Spec : Prop :=
  ∀ n, P15885188504923257025.a n = A007908 (n + 1)

end A007908

/-!
# A007909: Expansion of (1-x)/(1-2*x+x^2-2*x^3).

The programs for A007909, the canonical program `A007909.P9585563749969821699` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007909 has offset 0).

The definition of A007909 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-2x+x^2-2x^3))` (program `A007909.P9585563749969821699`, by `A007909.P9585563749969821699.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007909.P9585563749969821699

`ogf((1-x)/(1-2x+x^2-2x^3))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007909

/-- `ogf((1-x)/(1-2x+x^2-2x^3))` -/
def P9585563749969821699.Spec : Prop :=
  ∀ n, P9585563749969821699.a n = A007909 n

theorem P9585563749969821699.correct : P9585563749969821699.Spec := by
  intro n
  simp only [A007909]

end A007909

/-! ## A007909.P14552098014180939545

`2*a(n-1)-a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A007909.P14552098014180939545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  2 * a (n - 1) - a (n - 2) + 2 * a (n - 3)

end

end A007909.P14552098014180939545

namespace A007909

/-- `2*a(n-1)-a(n-2)+2*a(n-3)` -/
def P14552098014180939545.Spec : Prop :=
  ∀ n, P14552098014180939545.a n = A007909 n

end A007909

/-! ## A007909.P3549348667761952371

`1/5*(2^(n+1)+3*cos(n*π/2)+sin(n*π/2))`
-/

namespace A007909.P3549348667761952371
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 5 : ℝ) * ((2 ^ (n + 1) : ℝ) + 3 * Real.cos ((n : ℝ) * Real.pi / 2) + Real.sin ((n : ℝ) * Real.pi / 2))

end

end A007909.P3549348667761952371

namespace A007909

/-- `1/5*(2^(n+1)+3*cos(n*π/2)+sin(n*π/2))` -/
def P3549348667761952371.Spec : Prop :=
  ∀ n, P3549348667761952371.a n = (A007909 n : ℝ)

end A007909

/-! ## A007909.P18130182444071567387

`2^(n-1)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A007909.P18130182444071567387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 2)

end

end A007909.P18130182444071567387

namespace A007909

/-- `2^(n-1)-a(n-2)` -/
def P18130182444071567387.Spec : Prop :=
  ∀ n, P18130182444071567387.a n = (A007909 n : ℚ)

end A007909

/-! ## A007909.P11096083000182746171

`∏[-a(n-1)]+2*a(n-1)` with `a(0)=1`
-/

namespace A007909.P11096083000182746171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 2 * a (n - 1)

end

end A007909.P11096083000182746171

namespace A007909

/-- `∏[-a(n-1)]+2*a(n-1)` -/
def P11096083000182746171.Spec : Prop :=
  ∀ n, P11096083000182746171.a n = A007909 n

end A007909

/-! ## A007909.P11526405150353643653

`∏[-a(n-1)]+lcm(2, a(n-1))` with `a(0)=1`
-/

namespace A007909.P11526405150353643653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (Int.lcm 2 (a (n - 1)) : ℤ)

end

end A007909.P11526405150353643653

namespace A007909

/-- `∏[-a(n-1)]+lcm(2, a(n-1))` -/
def P11526405150353643653.Spec : Prop :=
  ∀ n, P11526405150353643653.a n = A007909 n

end A007909

/-! ## A007909.P1840024768499865071

`or(1, xor(2*a(n-1), (n+1)%4))` with `a(0)=1`
-/

namespace A007909.P1840024768499865071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (Nat.xor (2 * a (n - 1)) ((n + 1) % 4))

end

end A007909.P1840024768499865071

namespace A007909

/-- `or(1, xor(2*a(n-1), (n+1)%4))` -/
def P1840024768499865071.Spec : Prop :=
  ∀ n, (P1840024768499865071.a n : ℤ) = A007909 n

end A007909

/-! ## A007909.P7369773472688192944

`a(n-1)+∏[-a(n-1)]+a(n-1)` with `a(0)=1`
-/

namespace A007909.P7369773472688192944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (∏ j ∈ Finset.range (n + 1), f1 j + a (n - 1))

end

end A007909.P7369773472688192944

namespace A007909

/-- `a(n-1)+∏[-a(n-1)]+a(n-1)` -/
def P7369773472688192944.Spec : Prop :=
  ∀ n, P7369773472688192944.a n = A007909 n

end A007909

/-! ## A007909.P17198121591252512977

`A274845(2*n)`
-/

namespace A007909.P17198121591252512977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274845 (2 * n)

end

end A007909.P17198121591252512977

namespace A007909

/-- `A274845(2*n)` -/
def P17198121591252512977.Spec : Prop :=
  ∀ n, P17198121591252512977.a n = A007909 n

end A007909

/-! ## A007909.P4132605301069770006

`∑[abs(A118405(n))]`
-/

namespace A007909.P4132605301069770006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A118405 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007909.P4132605301069770006

namespace A007909

/-- `∑[abs(A118405(n))]` -/
def P4132605301069770006.Spec : Prop :=
  ∀ n, P4132605301069770006.a n = A007909 n

end A007909

/-! ## A007909.P1435866271209011383

`A190569(abs(1-n))`
-/

namespace A007909.P1435866271209011383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190569 |1 - (n : ℤ)|.toNat

end

end A007909.P1435866271209011383

namespace A007909

/-- `A190569(abs(1-n))` -/
def P1435866271209011383.Spec : Prop :=
  ∀ n, P1435866271209011383.a n = A007909 n

end A007909

/-! ## A007909.P15691446999363922399

`or(1, A256494(n+2)-1)`
-/

namespace A007909.P15691446999363922399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A256494 (n + 2) - 1)

end

end A007909.P15691446999363922399

namespace A007909

/-- `or(1, A256494(n+2)-1)` -/
def P15691446999363922399.Spec : Prop :=
  ∀ n, P15691446999363922399.a n = A007909 n

end A007909

/-! ## A007909.P2875674348749991869

`xor(a(n-1), A001045(n))+1` with `a(0)=1`
-/

namespace A007909.P2875674348749991869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (a (n - 1)) (A001045 n) + 1

end

end A007909.P2875674348749991869

namespace A007909

/-- `xor(a(n-1), A001045(n))+1` -/
def P2875674348749991869.Spec : Prop :=
  ∀ n, P2875674348749991869.a n = A007909 n

end A007909

/-! ## A007909.P7833767614575809905

`abs(a(n-2)-A131577(n))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A007909.P7833767614575809905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3] fun n a =>
  |a (n - 2) - A131577 n|

end

end A007909.P7833767614575809905

namespace A007909

/-- `abs(a(n-2)-A131577(n))` -/
def P7833767614575809905.Spec : Prop :=
  ∀ n, P7833767614575809905.a n = A007909 n

end A007909

/-! ## A007909.P14913984715120000956

`a(n-1)+A087960(n)+a(n-1)` with `a(0)=1`
-/

namespace A007909.P14913984715120000956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A087960 n + a (n - 1))

end

end A007909.P14913984715120000956

namespace A007909

/-- `a(n-1)+A087960(n)+a(n-1)` -/
def P14913984715120000956.Spec : Prop :=
  ∀ n, P14913984715120000956.a n = A007909 n

end A007909

/-! ## A007909.P1497267410532864371

`A139800(n)+A001045(n)`
-/

namespace A007909.P1497267410532864371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139800 n + A001045 n

end

end A007909.P1497267410532864371

namespace A007909

/-- `A139800(n)+A001045(n)` -/
def P1497267410532864371.Spec : Prop :=
  ∀ n, P1497267410532864371.a n = A007909 n

end A007909

/-! ## A007909.P17583656160660997673

`∑[A139800(n+1)+A139800(n)]`
-/

namespace A007909.P17583656160660997673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139800 (n + 1) + A139800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007909.P17583656160660997673

namespace A007909

/-- `∑[A139800(n+1)+A139800(n)]` -/
def P17583656160660997673.Spec : Prop :=
  ∀ n, P17583656160660997673.a n = A007909 n

end A007909

/-! ## A007909.P18042412460051569999

`A181586(n+1)+A181586(n+2)`
-/

namespace A007909.P18042412460051569999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181586 (n + 1) + A181586 (n + 2)

end

end A007909.P18042412460051569999

namespace A007909

/-- `A181586(n+1)+A181586(n+2)` -/
def P18042412460051569999.Spec : Prop :=
  ∀ n, P18042412460051569999.a n = A007909 n

end A007909

/-! ## A007909.P3686199317164146649

`A256494(n+2)+1-A177704(n+1)`
-/

namespace A007909.P3686199317164146649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256494 (n + 2) + (1 - A177704 (n + 1))

end

end A007909.P3686199317164146649

namespace A007909

/-- `A256494(n+2)+1-A177704(n+1)` -/
def P3686199317164146649.Spec : Prop :=
  ∀ n, P3686199317164146649.a n = A007909 n

end A007909

/-! ## A007909.P18209691469535680767

`2*floor(2^n/5)+1`
-/

namespace A007909.P18209691469535680767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(2 ^ n : ℚ) / 5⌋ + 1

end

end A007909.P18209691469535680767

namespace A007909

/-- `2*floor(2^n/5)+1` -/
def P18209691469535680767.Spec : Prop :=
  ∀ n, P18209691469535680767.a n = A007909 n

end A007909

/-!
# A007910: Expansion of 1/((1-2*x)*(1+x^2)).

The programs for A007910, the canonical program `A007910.P14724443002774358306` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007910 has offset 0).

The definition of A007910 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+x^2-2x^3))` (program `A007910.P14724443002774358306`, by `A007910.P14724443002774358306.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007910.P14724443002774358306

`ogf(1/(1-2x+x^2-2x^3))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007910

/-- `ogf(1/(1-2x+x^2-2x^3))` -/
def P14724443002774358306.Spec : Prop :=
  ∀ n, P14724443002774358306.a n = A007910 n

theorem P14724443002774358306.correct : P14724443002774358306.Spec := by
  intro n
  simp only [A007910]

end A007910

/-! ## A007910.P17016793316770712615

`2*a(n-1)-a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A007910.P17016793316770712615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  2 * a (n - 1) - a (n - 2) + 2 * a (n - 3)

end

end A007910.P17016793316770712615

namespace A007910

/-- `2*a(n-1)-a(n-2)+2*a(n-3)` -/
def P17016793316770712615.Spec : Prop :=
  ∀ n, P17016793316770712615.a n = A007910 n

end A007910

/-! ## A007910.P6335477174906846151

`round(2^(n+2)/5)`
-/

namespace A007910.P6335477174906846151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ (n + 2) : ℚ) / 5)

end

end A007910.P6335477174906846151

namespace A007910

/-- `round(2^(n+2)/5)` -/
def P6335477174906846151.Spec : Prop :=
  ∀ n, P6335477174906846151.a n = A007910 n

end A007910

/-! ## A007910.P1059040177118578681

`(4*2^n+cos(π*n/2)+2*sin(π*n/2))/5`
-/

namespace A007910.P1059040177118578681
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 * 2 ^ n : ℝ) + Real.cos (Real.pi * (n : ℝ) / 2) + 2 * Real.sin (Real.pi * (n : ℝ) / 2)) / 5

end

end A007910.P1059040177118578681

namespace A007910

/-- `(4*2^n+cos(π*n/2)+2*sin(π*n/2))/5` -/
def P1059040177118578681.Spec : Prop :=
  ∀ n, P1059040177118578681.a n = (A007910 n : ℝ)

end A007910

/-! ## A007910.P8358464297634936557

`2^n-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A007910.P8358464297634936557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (2 ^ n : ℤ) - a (n - 2)

end

end A007910.P8358464297634936557

namespace A007910

/-- `2^n-a(n-2)` -/
def P8358464297634936557.Spec : Prop :=
  ∀ n, P8358464297634936557.a n = A007910 n

end A007910

/-! ## A007910.P1821197484740576098

`a(n-2)%4+2*(a(n-1)-1)` with `a(0)=1, a(1)=2`
-/

namespace A007910.P1821197484740576098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.tmod (a (n - 2)) 4 + 2 * (a (n - 1) - 1)

end

end A007910.P1821197484740576098

namespace A007910

/-- `a(n-2)%4+2*(a(n-1)-1)` -/
def P1821197484740576098.Spec : Prop :=
  ∀ n, P1821197484740576098.a n = A007910 n

end A007910

/-! ## A007910.P13664903425766637098

`∑[A007909(n)]`
-/

namespace A007910.P13664903425766637098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007910.P13664903425766637098

namespace A007910

/-- `∑[A007909(n)]` -/
def P13664903425766637098.Spec : Prop :=
  ∀ n, P13664903425766637098.a n = A007910 n

end A007910

/-! ## A007910.P3016984526889654291

`∑[A274845(2*n)]`
-/

namespace A007910.P3016984526889654291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274845 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007910.P3016984526889654291

namespace A007910

/-- `∑[A274845(2*n)]` -/
def P3016984526889654291.Spec : Prop :=
  ∀ n, P3016984526889654291.a n = A007910 n

end A007910

/-! ## A007910.P800387850265074609

`∑[∑[abs(A118405(n))]]`
-/

namespace A007910.P800387850265074609
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A118405 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007910.P800387850265074609

namespace A007910

/-- `∑[∑[abs(A118405(n))]]` -/
def P800387850265074609.Spec : Prop :=
  ∀ n, P800387850265074609.a n = A007910 n

end A007910

/-! ## A007910.P2056975304967422130

`∑[A190569(abs(1-n))]`
-/

namespace A007910.P2056975304967422130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190569 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007910.P2056975304967422130

namespace A007910

/-- `∑[A190569(abs(1-n))]` -/
def P2056975304967422130.Spec : Prop :=
  ∀ n, P2056975304967422130.a n = A007910 n

end A007910

/-! ## A007910.P7285093602374878231

`or(gcd(2, n+1), A199403(n+1))`
-/

namespace A007910.P7285093602374878231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.gcd 2 (n + 1) : ℤ) (A199403 (n + 1))

end

end A007910.P7285093602374878231

namespace A007910

/-- `or(gcd(2, n+1), A199403(n+1))` -/
def P7285093602374878231.Spec : Prop :=
  ∀ n, P7285093602374878231.a n = A007910 n

end A007910

/-! ## A007910.P13688624101017017629

`a(n-1)+A056594(n)+a(n-1)` with `a(0)=1`
-/

namespace A007910.P13688624101017017629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A056594 n + a (n - 1))

end

end A007910.P13688624101017017629

namespace A007910

/-- `a(n-1)+A056594(n)+a(n-1)` -/
def P13688624101017017629.Spec : Prop :=
  ∀ n, P13688624101017017629.a n = A007910 n

end A007910

/-! ## A007910.P4253627725062664866

`A190569(n)+A101455(n)`
-/

namespace A007910.P4253627725062664866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190569 n + A101455 n

end

end A007910.P4253627725062664866

namespace A007910

/-- `A190569(n)+A101455(n)` -/
def P4253627725062664866.Spec : Prop :=
  ∀ n, P4253627725062664866.a n = A007910 n

end A007910

/-! ## A007910.P3662085418574262127

`A049332(n)-A118406(n)`
-/

namespace A007910.P3662085418574262127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049332 n - A118406 n

end

end A007910.P3662085418574262127

namespace A007910

/-- `A049332(n)-A118406(n)` -/
def P3662085418574262127.Spec : Prop :=
  ∀ n, P3662085418574262127.a n = A007910 n

end A007910

/-! ## A007910.P11402088225220844415

`A133190(n)-A101455(n)`
-/

namespace A007910.P11402088225220844415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133190 n - A101455 n

end

end A007910.P11402088225220844415

namespace A007910

/-- `A133190(n)-A101455(n)` -/
def P11402088225220844415.Spec : Prop :=
  ∀ n, P11402088225220844415.a n = A007910 n

end A007910

/-! ## A007910.P2530680006994193180

`xor(A109718(n), A133190(n))`
-/

namespace A007910.P2530680006994193180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A109718 n) (A133190 n)

end

end A007910.P2530680006994193180

namespace A007910

/-- `xor(A109718(n), A133190(n))` -/
def P2530680006994193180.Spec : Prop :=
  ∀ n, P2530680006994193180.a n = A007910 n

end A007910

/-! ## A007910.P15433123828978398718

`A139800(n+1)+A139763(n)`
-/

namespace A007910.P15433123828978398718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139800 (n + 1) + A139763 n

end

end A007910.P15433123828978398718

namespace A007910

/-- `A139800(n+1)+A139763(n)` -/
def P15433123828978398718.Spec : Prop :=
  ∀ n, P15433123828978398718.a n = A007910 n

end A007910

/-! ## A007910.P10397345923780059266

`A181586(n+1)+A001045(n+1)`
-/

namespace A007910.P10397345923780059266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181586 (n + 1) + A001045 (n + 1)

end

end A007910.P10397345923780059266

namespace A007910

/-- `A181586(n+1)+A001045(n+1)` -/
def P10397345923780059266.Spec : Prop :=
  ∀ n, P10397345923780059266.a n = A007910 n

end A007910

/-! ## A007910.P1164597546541149456

`A181586(n+2)+A139800(n+3)`
-/

namespace A007910.P1164597546541149456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181586 (n + 2) + A139800 (n + 3)

end

end A007910.P1164597546541149456

namespace A007910

/-- `A181586(n+2)+A139800(n+3)` -/
def P1164597546541149456.Spec : Prop :=
  ∀ n, P1164597546541149456.a n = A007910 n

end A007910

/-! ## A007910.P4073480926708030601

`A007909(n+1)-A176742(n+1)/2`
-/

namespace A007910.P4073480926708030601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007909 (n + 1) : ℚ) - (A176742 (n + 1) : ℚ) / 2

end

end A007910.P4073480926708030601

namespace A007910

/-- `A007909(n+1)-A176742(n+1)/2` -/
def P4073480926708030601.Spec : Prop :=
  ∀ n, P4073480926708030601.a n = (A007910 n : ℚ)

end A007910

/-!
# A007911: a(n) = (n-1)!! - (n-2)!!.

The programs for A007911, the canonical program `A007911.P10335678480540530897` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007911 has offset 3).

The definition of A007911 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007911.P10335678480540530897

`A006882(n+2)-A006882(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007911

/-- `A006882(n+2)-A006882(n+1)` -/
def P10335678480540530897.Spec : Prop :=
  ∀ n, P10335678480540530897.a n = A007911 (n + 3)

theorem P10335678480540530897.correct : P10335678480540530897.Spec := by
  intro n
  simp only [A007911, Nat.add_sub_cancel]

end A007911

/-! ## A007911.P14952046274012065619

`Δ[(n+1)*a(n-2)]` with `a(0)=1, a(1)=2`
-/

namespace A007911.P14952046274012065619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (n + 1) * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A007911.P14952046274012065619

namespace A007911

/-- `Δ[(n+1)*a(n-2)]` -/
def P14952046274012065619.Spec : Prop :=
  ∀ n, P14952046274012065619.a n = A007911 (n + 3)

end A007911

/-! ## A007911.P6368982739488116426

`Δ[∏[(n+1)/a(n-1)]]` with `a(0)=1`
-/

namespace A007911.P6368982739488116426
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (n + 1 : ℚ) / f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007911.P6368982739488116426

namespace A007911

/-- `Δ[∏[(n+1)/a(n-1)]]` -/
def P6368982739488116426.Spec : Prop :=
  ∀ n, P6368982739488116426.a n = (A007911 (n + 3) : ℚ)

end A007911

/-! ## A007911.P4764838207433292025

`Δ[n-xor(n, -1)*a(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A007911.P4764838207433292025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (n : ℤ) - Int.xor (n : ℤ) (-1) * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007911.P4764838207433292025

namespace A007911

/-- `Δ[n-xor(n, -1)*a(n-2)]` -/
def P4764838207433292025.Spec : Prop :=
  ∀ n, P4764838207433292025.a n = A007911 (n + 3)

end A007911

/-! ## A007911.P14977342360293967309

`ceil(Δ[(n-log2(1/2))*a(n-2)])` with `a(0)=1, a(1)=2`
-/

namespace A007911.P14977342360293967309
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ)) * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A007911.P14977342360293967309

namespace A007911

/-- `ceil(Δ[(n-log2(1/2))*a(n-2)])` -/
def P14977342360293967309.Spec : Prop :=
  ∀ n, P14977342360293967309.a n = A007911 (n + 3)

end A007911

/-! ## A007911.P16057699923174457319

`Δ[floor((2*n-(n-1))*a(n-2))]` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A007911.P16057699923174457319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  ((2 * n : ℤ) - ((n : ℤ) - 1)) * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007911.P16057699923174457319

namespace A007911

/-- `Δ[floor((2*n-(n-1))*a(n-2))]` -/
def P16057699923174457319.Spec : Prop :=
  ∀ n, P16057699923174457319.a n = A007911 (n + 3)

end A007911

/-! ## A007911.P16014313948606973695

`A204912(∑[n+1])`
-/

namespace A007911.P16014313948606973695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204912 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007911.P16014313948606973695

namespace A007911

/-- `A204912(∑[n+1])` -/
def P16014313948606973695.Spec : Prop :=
  ∀ n, P16014313948606973695.a n = A007911 (n + 3)

end A007911

/-! ## A007911.P5908685492537631148

`Δ[A006882(n+1)]`
-/

namespace A007911.P5908685492537631148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007911.P5908685492537631148

namespace A007911

/-- `Δ[A006882(n+1)]` -/
def P5908685492537631148.Spec : Prop :=
  ∀ n, P5908685492537631148.a n = A007911 (n + 3)

theorem P5908685492537631148.correct : P5908685492537631148.Spec := by
  intro n
  simp only [A007911, Nat.add_sub_cancel, A007911.P5908685492537631148.f1, A007911.P5908685492537631148.a, A007911.P10335678480540530897.a, SequenceMachineLib.memo_apply]

end A007911

/-! ## A007911.P11754833428065977988

`Δ[A128882(n+1)]`
-/

namespace A007911.P11754833428065977988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007911.P11754833428065977988

namespace A007911

/-- `Δ[A128882(n+1)]` -/
def P11754833428065977988.Spec : Prop :=
  ∀ n, P11754833428065977988.a n = A007911 (n + 3)

theorem P11754833428065977988.correct : P11754833428065977988.Spec := by
  intro n
  simp only [A007911, Nat.add_sub_cancel, A007911.P11754833428065977988.f1, A007911.P11754833428065977988.a, A007911.P10335678480540530897.a, A006882, A006882.P4505634677935663530.a, A128882, A128882.P10026494431697835336.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007911

/-! ## A007911.P2378241156959486867

`A128882(n+2)-A128882(n+1)`
-/

namespace A007911.P2378241156959486867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128882 (n + 2) - A128882 (n + 1)

end

end A007911.P2378241156959486867

namespace A007911

/-- `A128882(n+2)-A128882(n+1)` -/
def P2378241156959486867.Spec : Prop :=
  ∀ n, P2378241156959486867.a n = A007911 (n + 3)

theorem P2378241156959486867.correct : P2378241156959486867.Spec := by
  intro n
  simp only [A007911, Nat.add_sub_cancel, A007911.P2378241156959486867.a, A007911.P10335678480540530897.a, A006882, A006882.P4505634677935663530.a, A128882, A128882.P10026494431697835336.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007911

/-! ## A007911.P1818466955128272667

`Δ[Δ[A129981(n)]]`
-/

namespace A007911.P1818466955128272667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007911.P1818466955128272667

namespace A007911

/-- `Δ[Δ[A129981(n)]]` -/
def P1818466955128272667.Spec : Prop :=
  ∀ n, P1818466955128272667.a n = A007911 (n + 3)

end A007911

/-! ## A007911.P10602530158385582268

`Δ[a(n-2)*∑[2*n]/n]` with `a(0)=1, a(1)=2`
-/

namespace A007911.P10602530158385582268
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007911.P10602530158385582268

namespace A007911

/-- `Δ[a(n-2)*∑[2*n]/n]` -/
def P10602530158385582268.Spec : Prop :=
  ∀ n, P10602530158385582268.a n = (A007911 (n + 3) : ℚ)

end A007911

/-! ## A007911.P14633660980014167245

`(a(n-1)+(n+1)²*a(n-2))/n` with `a(0)=1, a(1)=1`
-/

namespace A007911.P14633660980014167245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) + ((n + 1) ^ 2 : ℚ) * a (n - 2)) / (n : ℚ)

end

end A007911.P14633660980014167245

namespace A007911

/-- `(a(n-1)+(n+1)²*a(n-2))/n` -/
def P14633660980014167245.Spec : Prop :=
  ∀ n, P14633660980014167245.a n = (A007911 (n + 3) : ℚ)

end A007911

/-! ## A007911.P1788120750033678038

`Δ[A248809(∑[n])]`
-/

namespace A007911.P1788120750033678038
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248809 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007911.P1788120750033678038

namespace A007911

/-- `Δ[A248809(∑[n])]` -/
def P1788120750033678038.Spec : Prop :=
  ∀ n, P1788120750033678038.a n = A007911 (n + 3)

end A007911

/-! ## A007911.P2656534358416326501

`A230698(∑[n+1]+1)`
-/

namespace A007911.P2656534358416326501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230698 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A007911.P2656534358416326501

namespace A007911

/-- `A230698(∑[n+1]+1)` -/
def P2656534358416326501.Spec : Prop :=
  ∀ n, P2656534358416326501.a n = A007911 (n + 3)

end A007911

/-!
# A007912: Quantum factorials: (n-1)!! - (n-2)!! (mod n).

The programs for A007912, the canonical program `A007912.P16337960636681677811` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007912 has offset 3).

The definition of A007912 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007912.P16337960636681677811

`A007911(n+3)%(n+3)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A007912

/-- `A007911(n+3)%(n+3)` -/
def P16337960636681677811.Spec : Prop :=
  ∀ n, P16337960636681677811.a n = A007912 (n + 3)

theorem P16337960636681677811.correct : P16337960636681677811.Spec := by
  intro n
  simp only [A007912, Nat.add_sub_cancel]

end A007912

/-! ## A007912.P8101758382020171980

`Δ[A006882(n+1)]%(n+3)`
-/

namespace A007912.P8101758382020171980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 3 : ℤ)

end

end A007912.P8101758382020171980

namespace A007912

/-- `Δ[A006882(n+1)]%(n+3)` -/
def P8101758382020171980.Spec : Prop :=
  ∀ n, P8101758382020171980.a n = A007912 (n + 3)

end A007912

/-! ## A007912.P5529656742003696204

`Δ[A248809(∑[n])]%(n+3)`
-/

namespace A007912.P5529656742003696204
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248809 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 3 : ℤ)

end

end A007912.P5529656742003696204

namespace A007912

/-- `Δ[A248809(∑[n])]%(n+3)` -/
def P5529656742003696204.Spec : Prop :=
  ∀ n, P5529656742003696204.a n = A007912 (n + 3)

end A007912

/-! ## A007912.P15433178552459772319

`A230698(A000124(n+1))%(n+3)`
-/

namespace A007912.P15433178552459772319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230698 (A000124 (n + 1)).toNat) (n + 3 : ℤ)

end

end A007912.P15433178552459772319

namespace A007912

/-- `A230698(A000124(n+1))%(n+3)` -/
def P15433178552459772319.Spec : Prop :=
  ∀ n, P15433178552459772319.a n = A007912 (n + 3)

end A007912

/-! ## A007912.P8244938421473702622

`A230698(A036406(2*n+3))%(n+3)`
-/

namespace A007912.P8244938421473702622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230698 (A036406 (2 * n + 3)).toNat) (n + 3 : ℤ)

end

end A007912.P8244938421473702622

namespace A007912

/-- `A230698(A036406(2*n+3))%(n+3)` -/
def P8244938421473702622.Spec : Prop :=
  ∀ n, P8244938421473702622.a n = A007912 (n + 3)

end A007912

/-!
# A007913: Squarefree part of n: a(n) is the smallest positive number m such that n/m is a square.

The programs for A007913, the canonical program `A007913.P8131970495124731496` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007913 has offset 1).

The definition of A007913 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007913.P16400808081573196585

`(n+1)/A008833(n+1)`
-/

namespace A007913.P16400808081573196585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A008833 (n + 1) : ℚ)

end

end A007913.P16400808081573196585

namespace A007913

/-- `(n+1)/A008833(n+1)` -/
def P16400808081573196585.Spec : Prop :=
  ∀ n, P16400808081573196585.a n = (A007913 (n + 1) : ℚ)

end A007913

/-! ## A007913.P1553271961319617987

`A019554(n+1)²/(n+1)`
-/

namespace A007913.P1553271961319617987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019554 (n + 1) ^ 2 : ℚ) / (n + 1 : ℚ)

end

end A007913.P1553271961319617987

namespace A007913

/-- `A019554(n+1)²/(n+1)` -/
def P1553271961319617987.Spec : Prop :=
  ∀ n, P1553271961319617987.a n = (A007913 (n + 1) : ℚ)

end A007913

/-! ## A007913.P7094065205264673160

`A007947(A350389(n+1))`
-/

namespace A007913.P7094065205264673160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A350389 (n + 1)).toNat

end

end A007913.P7094065205264673160

namespace A007913

/-- `A007947(A350389(n+1))` -/
def P7094065205264673160.Spec : Prop :=
  ∀ n, P7094065205264673160.a n = A007913 (n + 1)

end A007913

/-! ## A007913.P8131970495124731496

`A007947(n+1)/a((n+1)/A007947(n+1)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007913

/-- `A007947(n+1)/a((n+1)/A007947(n+1)-1)` -/
def P8131970495124731496.Spec : Prop :=
  ∀ n, P8131970495124731496.a n = (A007913 (n + 1) : ℚ)

end A007913

/-! ## A007913.P9967027721094402890

`Δ[A069891(n)]`
-/

namespace A007913.P9967027721094402890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007913.P9967027721094402890

namespace A007913

/-- `Δ[A069891(n)]` -/
def P9967027721094402890.Spec : Prop :=
  ∀ n, P9967027721094402890.a n = A007913 (n + 1)

end A007913

/-! ## A007913.P13519797386316773450

`sqrt(A055491(n+1))`
-/

namespace A007913.P13519797386316773450
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055491 (n + 1) : ℝ)

end

end A007913.P13519797386316773450

namespace A007913

/-- `sqrt(A055491(n+1))` -/
def P13519797386316773450.Spec : Prop :=
  ∀ n, P13519797386316773450.a n = (A007913 (n + 1) : ℝ)

end A007913

/-! ## A007913.P11667448004131843196

`∏{p}[A071975(n+1), #]`
-/

namespace A007913.P11667448004131843196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A007913.P11667448004131843196

namespace A007913

/-- `∏{p}[A071975(n+1), #]` -/
def P11667448004131843196.Spec : Prop :=
  ∀ n, (P11667448004131843196.a n : ℤ) = A007913 (n + 1)

end A007913

/-! ## A007913.P16167896529777094449

`1-A326128(n+1)+n`
-/

namespace A007913.P16167896529777094449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A326128 (n + 1) + (n : ℤ)

end

end A007913.P16167896529777094449

namespace A007913

/-- `1-A326128(n+1)+n` -/
def P16167896529777094449.Spec : Prop :=
  ∀ n, P16167896529777094449.a n = A007913 (n + 1)

end A007913

/-! ## A007913.P12374076126787769390

`A053143(n+1)/(n+1)`
-/

namespace A007913.P12374076126787769390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053143 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A007913.P12374076126787769390

namespace A007913

/-- `A053143(n+1)/(n+1)` -/
def P12374076126787769390.Spec : Prop :=
  ∀ n, P12374076126787769390.a n = (A007913 (n + 1) : ℚ)

end A007913

/-! ## A007913.P3454063735229445400

`gcd(n+1, A056135(n+1))`
-/

namespace A007913.P3454063735229445400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A056135 (n + 1))

end

end A007913.P3454063735229445400

namespace A007913

/-- `gcd(n+1, A056135(n+1))` -/
def P3454063735229445400.Spec : Prop :=
  ∀ n, (P3454063735229445400.a n : ℤ) = A007913 (n + 1)

end A007913

/-! ## A007913.P11317145187106771615

`A083481(n)/a(n-1)` with `a(0)=1`
-/

namespace A007913.P11317145187106771615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A083481 n : ℚ) / a (n - 1)

end

end A007913.P11317145187106771615

namespace A007913

/-- `A083481(n)/a(n-1)` -/
def P11317145187106771615.Spec : Prop :=
  ∀ n, P11317145187106771615.a n = (A007913 (n + 1) : ℚ)

end A007913

/-! ## A007913.P12347575913307241729

`(n+1)/A000188(n+1)²`
-/

namespace A007913.P12347575913307241729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000188 (n + 1) ^ 2 : ℚ)

end

end A007913.P12347575913307241729

namespace A007913

/-- `(n+1)/A000188(n+1)²` -/
def P12347575913307241729.Spec : Prop :=
  ∀ n, P12347575913307241729.a n = (A007913 (n + 1) : ℚ)

end A007913

/-! ## A007913.P13589187503170106690

`(n+1)/(A336642(n+1)+1)`
-/

namespace A007913.P13589187503170106690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A336642 (n + 1) + 1 : ℚ)

end

end A007913.P13589187503170106690

namespace A007913

/-- `(n+1)/(A336642(n+1)+1)` -/
def P13589187503170106690.Spec : Prop :=
  ∀ n, P13589187503170106690.a n = (A007913 (n + 1) : ℚ)

end A007913

/-! ## A007913.P11359412940648999332

`(n+1)^3/A059479(n+1)`
-/

namespace A007913.P11359412940648999332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℚ) / (A059479 (n + 1) : ℚ)

end

end A007913.P11359412940648999332

namespace A007913

/-- `(n+1)^3/A059479(n+1)` -/
def P11359412940648999332.Spec : Prop :=
  ∀ n, P11359412940648999332.a n = (A007913 (n + 1) : ℚ)

end A007913

/-! ## A007913.P4907885535246113413

`(n+1)/(n+1-A326055(n+1))`
-/

namespace A007913.P4907885535246113413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((n + 1 : ℤ) - A326055 (n + 1) : ℚ)

end

end A007913.P4907885535246113413

namespace A007913

/-- `(n+1)/(n+1-A326055(n+1))` -/
def P4907885535246113413.Spec : Prop :=
  ∀ n, P4907885535246113413.a n = (A007913 (n + 1) : ℚ)

end A007913

/-! ## A007913.P14751540876373493114

`A007947(A071975(n+1))`
-/

namespace A007913.P14751540876373493114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A071975 (n + 1)).toNat

end

end A007913.P14751540876373493114

namespace A007913

/-- `A007947(A071975(n+1))` -/
def P14751540876373493114.Spec : Prop :=
  ∀ n, P14751540876373493114.a n = A007913 (n + 1)

end A007913

/-! ## A007913.P6017898741320306485

`A055231(A038387(n+1))`
-/

namespace A007913.P6017898741320306485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A038387 (n + 1)).toNat

end

end A007913.P6017898741320306485

namespace A007913

/-- `A055231(A038387(n+1))` -/
def P6017898741320306485.Spec : Prop :=
  ∀ n, P6017898741320306485.a n = A007913 (n + 1)

end A007913

/-! ## A007913.P17658231709154478893

`A038387(A065883(n+1))`
-/

namespace A007913.P17658231709154478893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038387 (A065883 (n + 1)).toNat

end

end A007913.P17658231709154478893

namespace A007913

/-- `A038387(A065883(n+1))` -/
def P17658231709154478893.Spec : Prop :=
  ∀ n, P17658231709154478893.a n = A007913 (n + 1)

end A007913

/-! ## A007913.P8749975229055431039

`A055231(A066990(n+1))`
-/

namespace A007913.P8749975229055431039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A066990 (n + 1)).toNat

end

end A007913.P8749975229055431039

namespace A007913

/-- `A055231(A066990(n+1))` -/
def P8749975229055431039.Spec : Prop :=
  ∀ n, P8749975229055431039.a n = A007913 (n + 1)

end A007913

/-! ## A007913.P10900419485435869305

`A366244(A053165(n+1))`
-/

namespace A007913.P10900419485435869305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366244 (A053165 (n + 1)).toNat

end

end A007913.P10900419485435869305

namespace A007913

/-- `A366244(A053165(n+1))` -/
def P10900419485435869305.Spec : Prop :=
  ∀ n, P10900419485435869305.a n = A007913 (n + 1)

end A007913

/-!
# A007916: Numbers that are not perfect powers.

The programs for A007916, the canonical program `A007916.P1021710988916154839` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007916 has offset 1).

The definition of A007916 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007916.P1021710988916154839

`comp[floor(n/(xor(n, n+1)+1))^(val(n+1, 2)+2)]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007916

/-- `comp[floor(n/(xor(n, n+1)+1))^(val(n+1, 2)+2)]` -/
def P1021710988916154839.Spec : Prop :=
  ∀ n, (P1021710988916154839.a n : ℤ) = A007916 (n + 1)

theorem P1021710988916154839.correct : P1021710988916154839.Spec := by
  intro n
  simp only [A007916, Nat.add_sub_cancel]

end A007916

/-! ## A007916.P17358430234472300321

`sqrt(A153158(n+1))`
-/

namespace A007916.P17358430234472300321
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A153158 (n + 1) : ℝ)

end

end A007916.P17358430234472300321

namespace A007916

/-- `sqrt(A153158(n+1))` -/
def P17358430234472300321.Spec : Prop :=
  ∀ n, P17358430234472300321.a n = (A007916 (n + 1) : ℝ)

end A007916

/-! ## A007916.P17589455265948676881

`record[A052410(n+2)]`
-/

namespace A007916.P17589455265948676881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007916.P17589455265948676881

namespace A007916

/-- `record[A052410(n+2)]` -/
def P17589455265948676881.Spec : Prop :=
  ∀ n, P17589455265948676881.a n = A007916 (n + 1)

end A007916

/-! ## A007916.P15852040451882454243

`sqrt(sqrt(A153157(n+1)))`
-/

namespace A007916.P15852040451882454243
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A153157 (n + 1) : ℝ))

end

end A007916.P15852040451882454243

namespace A007916

/-- `sqrt(sqrt(A153157(n+1)))` -/
def P15852040451882454243.Spec : Prop :=
  ∀ n, P15852040451882454243.a n = (A007916 (n + 1) : ℝ)

end A007916

/-! ## A007916.P12959237518497416853

`ceil(sqrt(A037450(n+1)))`
-/

namespace A007916.P12959237518497416853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A037450 (n + 1) : ℝ)⌉

end

end A007916.P12959237518497416853

namespace A007916

/-- `ceil(sqrt(A037450(n+1)))` -/
def P12959237518497416853.Spec : Prop :=
  ∀ n, P12959237518497416853.a n = A007916 (n + 1)

end A007916

/-! ## A007916.P12320599452823132700

`A153147(n+1)^(1/3)`
-/

namespace A007916.P12320599452823132700
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A153147 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A007916.P12320599452823132700

namespace A007916

/-- `A153147(n+1)^(1/3)` -/
def P12320599452823132700.Spec : Prop :=
  ∀ n, P12320599452823132700.a n = (A007916 (n + 1) : ℝ)

end A007916

/-! ## A007916.P5966217558080561132

`eq[1, A052409(n+1)]+1`
-/

namespace A007916.P5966217558080561132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A007916.P5966217558080561132

namespace A007916

/-- `eq[1, A052409(n+1)]+1` -/
def P5966217558080561132.Spec : Prop :=
  ∀ n, (P5966217558080561132.a n : ℤ) = A007916 (n + 1)

end A007916

/-! ## A007916.P16545454623005572156

`eq[1, A288636(n+1)]+1`
-/

namespace A007916.P16545454623005572156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288636 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A007916.P16545454623005572156

namespace A007916

/-- `eq[1, A288636(n+1)]+1` -/
def P16545454623005572156.Spec : Prop :=
  ∀ n, (P16545454623005572156.a n : ℤ) = A007916 (n + 1)

end A007916

/-! ## A007916.P11489159119207317242

`eq[1, A304495(n+1)]+1`
-/

namespace A007916.P11489159119207317242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304495 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A007916.P11489159119207317242

namespace A007916

/-- `eq[1, A304495(n+1)]+1` -/
def P11489159119207317242.Spec : Prop :=
  ∀ n, (P11489159119207317242.a n : ℤ) = A007916 (n + 1)

end A007916

/-! ## A007916.P228185806221439612

`eq[1, A326028(n+1)]+1`
-/

namespace A007916.P228185806221439612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326028 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A007916.P228185806221439612

namespace A007916

/-- `eq[1, A326028(n+1)]+1` -/
def P228185806221439612.Spec : Prop :=
  ∀ n, (P228185806221439612.a n : ℤ) = A007916 (n + 1)

end A007916

/-! ## A007916.P15361743938441679522

`eq[1, A089723(n+2)]+2`
-/

namespace A007916.P15361743938441679522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A007916.P15361743938441679522

namespace A007916

/-- `eq[1, A089723(n+2)]+2` -/
def P15361743938441679522.Spec : Prop :=
  ∀ n, (P15361743938441679522.a n : ℤ) = A007916 (n + 1)

end A007916

/-! ## A007916.P11702263444445876058

`eq[1, A175069(n+2)]+2`
-/

namespace A007916.P11702263444445876058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175069 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A007916.P11702263444445876058

namespace A007916

/-- `eq[1, A175069(n+2)]+2` -/
def P11702263444445876058.Spec : Prop :=
  ∀ n, (P11702263444445876058.a n : ℤ) = A007916 (n + 1)

end A007916

/-! ## A007916.P14677360985320734626

`eq[1, A294336(n+2)]+2`
-/

namespace A007916.P14677360985320734626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294336 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A007916.P14677360985320734626

namespace A007916

/-- `eq[1, A294336(n+2)]+2` -/
def P14677360985320734626.Spec : Prop :=
  ∀ n, (P14677360985320734626.a n : ℤ) = A007916 (n + 1)

end A007916

/-! ## A007916.P6901200480891720412

`eq[1, A295920(n+2)]+2`
-/

namespace A007916.P6901200480891720412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295920 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A007916.P6901200480891720412

namespace A007916

/-- `eq[1, A295920(n+2)]+2` -/
def P6901200480891720412.Spec : Prop :=
  ∀ n, (P6901200480891720412.a n : ℤ) = A007916 (n + 1)

end A007916

/-! ## A007916.P16349481287276331059

`eq[1, A295924(n+2)]+2`
-/

namespace A007916.P16349481287276331059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295924 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A007916.P16349481287276331059

namespace A007916

/-- `eq[1, A295924(n+2)]+2` -/
def P16349481287276331059.Spec : Prop :=
  ∀ n, (P16349481287276331059.a n : ℤ) = A007916 (n + 1)

end A007916

/-! ## A007916.P2710632282913338196

`eq[1, A296134(n+2)]+2`
-/

namespace A007916.P2710632282913338196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296134 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A007916.P2710632282913338196

namespace A007916

/-- `eq[1, A296134(n+2)]+2` -/
def P2710632282913338196.Spec : Prop :=
  ∀ n, (P2710632282913338196.a n : ℤ) = A007916 (n + 1)

end A007916

/-! ## A007916.P10072158538911870409

`A375706(n)+a(n-1)` with `a(0)=2`
-/

namespace A007916.P10072158538911870409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A375706 n + a (n - 1)

end

end A007916.P10072158538911870409

namespace A007916

/-- `A375706(n)+a(n-1)` -/
def P10072158538911870409.Spec : Prop :=
  ∀ n, P10072158538911870409.a n = A007916 (n + 1)

end A007916

/-! ## A007916.P2803421054122329821

`comp[∪[A001597(n+1), n²]]`
-/

namespace A007916.P2803421054122329821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A007916.P2803421054122329821

namespace A007916

/-- `comp[∪[A001597(n+1), n²]]` -/
def P2803421054122329821.Spec : Prop :=
  ∀ n, (P2803421054122329821.a n : ℤ) = A007916 (n + 1)

end A007916

/-!
# A007917: Version 1 of the "previous prime" function: largest prime <= n.

The programs for A007917, the canonical program `A007917.P1836476777957611455` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007917 has offset 2).

The definition of A007917 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007917.P926824402025985972

`n+3-A175851(n+2)`
-/

namespace A007917.P926824402025985972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A175851 (n + 2)

end

end A007917.P926824402025985972

namespace A007917

/-- `n+3-A175851(n+2)` -/
def P926824402025985972.Spec : Prop :=
  ∀ n, P926824402025985972.a n = A007917 (n + 2)

end A007917

/-! ## A007917.P1836476777957611455

`A000040(A000720(n+2))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007917

/-- `A000040(A000720(n+2))` -/
def P1836476777957611455.Spec : Prop :=
  ∀ n, P1836476777957611455.a n = A007917 (n + 2)

theorem P1836476777957611455.correct : P1836476777957611455.Spec := by
  intro n
  simp only [A007917, Nat.add_sub_cancel]

end A007917

/-! ## A007917.P13104582216403321258

`A000040(A049084(A007918(n+2))-1+A010051(n+2))`
-/

namespace A007917.P13104582216403321258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A049084 (A007918 (n + 2)).toNat - 1 + A010051 (n + 2)).toNat

end

end A007917.P13104582216403321258

namespace A007917

/-- `A000040(A049084(A007918(n+2))-1+A010051(n+2))` -/
def P13104582216403321258.Spec : Prop :=
  ∀ n, P13104582216403321258.a n = A007917 (n + 2)

end A007917

/-! ## A007917.P4013534244329985385

`∑[A096501(n+2)]-2`
-/

namespace A007917.P4013534244329985385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A007917.P4013534244329985385

namespace A007917

/-- `∑[A096501(n+2)]-2` -/
def P4013534244329985385.Spec : Prop :=
  ∀ n, P4013534244329985385.a n = A007917 (n + 2)

end A007917

/-! ## A007917.P12350937998226086362

`A060308(∑[n%2]+1)`
-/

namespace A007917.P12350937998226086362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A007917.P12350937998226086362

namespace A007917

/-- `A060308(∑[n%2]+1)` -/
def P12350937998226086362.Spec : Prop :=
  ∀ n, P12350937998226086362.a n = A007917 (n + 2)

end A007917

/-! ## A007917.P17672862328821134338

`A013635(n+3)-(n+3)`
-/

namespace A007917.P17672862328821134338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013635 (n + 3) - (n + 3 : ℤ)

end

end A007917.P17672862328821134338

namespace A007917

/-- `A013635(n+3)-(n+3)` -/
def P17672862328821134338.Spec : Prop :=
  ∀ n, P17672862328821134338.a n = A007917 (n + 2)

theorem P17672862328821134338.correct : P17672862328821134338.Spec := by
  intro n
  simp only [A007917, Nat.add_sub_cancel, A007917.P17672862328821134338.a, A007917.P1836476777957611455.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A013635, A013635.P11014015188186242465.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A007917

/-! ## A007917.P17546303196405289937

`3-A049711(n+3)+n`
-/

namespace A007917.P17546303196405289937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A049711 (n + 3) + (n : ℤ)

end

end A007917.P17546303196405289937

namespace A007917

/-- `3-A049711(n+3)+n` -/
def P17546303196405289937.Spec : Prop :=
  ∀ n, P17546303196405289937.a n = A007917 (n + 2)

end A007917

/-! ## A007917.P16941840287579157182

`A013637(n+3)/(n+3)`
-/

namespace A007917.P16941840287579157182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013637 (n + 3) : ℚ) / (n + 3 : ℚ)

end

end A007917.P16941840287579157182

namespace A007917

/-- `A013637(n+3)/(n+3)` -/
def P16941840287579157182.Spec : Prop :=
  ∀ n, P16941840287579157182.a n = (A007917 (n + 2) : ℚ)

end A007917

/-! ## A007917.P8654521047544070388

`2*(n+3)-A033557(n+3)`
-/

namespace A007917.P8654521047544070388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 3) : ℤ) - A033557 (n + 3)

end

end A007917.P8654521047544070388

namespace A007917

/-- `2*(n+3)-A033557(n+3)` -/
def P8654521047544070388.Spec : Prop :=
  ∀ n, P8654521047544070388.a n = A007917 (n + 2)

end A007917

/-! ## A007917.P350226733289443339

`(A345668(n+3)+n+3)/2`
-/

namespace A007917.P350226733289443339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345668 (n + 3) + (n + 3 : ℤ) : ℚ) / 2

end

end A007917.P350226733289443339

namespace A007917

/-- `(A345668(n+3)+n+3)/2` -/
def P350226733289443339.Spec : Prop :=
  ∀ n, P350226733289443339.a n = (A007917 (n + 2) : ℚ)

end A007917

/-! ## A007917.P12225805631012281434

`A060308(A080513(n))`
-/

namespace A007917.P12225805631012281434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A080513 n).toNat

end

end A007917.P12225805631012281434

namespace A007917

/-- `A060308(A080513(n))` -/
def P12225805631012281434.Spec : Prop :=
  ∀ n, P12225805631012281434.a n = A007917 (n + 2)

end A007917

/-! ## A007917.P10150137624789521424

`A060308(A008619(n+1))`
-/

namespace A007917.P10150137624789521424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A008619 (n + 1)).toNat

end

end A007917.P10150137624789521424

namespace A007917

/-- `A060308(A008619(n+1))` -/
def P10150137624789521424.Spec : Prop :=
  ∀ n, P10150137624789521424.a n = A007917 (n + 2)

end A007917

/-! ## A007917.P2049800951052517523

`A000040(∑[A010051(n+2)])`
-/

namespace A007917.P2049800951052517523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A007917.P2049800951052517523

namespace A007917

/-- `A000040(∑[A010051(n+2)])` -/
def P2049800951052517523.Spec : Prop :=
  ∀ n, P2049800951052517523.a n = A007917 (n + 2)

end A007917

/-! ## A007917.P1311890934885194997

`A008578(A000720(n+2)+1)`
-/

namespace A007917.P1311890934885194997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A000720 (n + 2) + 1).toNat

end

end A007917.P1311890934885194997

namespace A007917

/-- `A008578(A000720(n+2)+1)` -/
def P1311890934885194997.Spec : Prop :=
  ∀ n, P1311890934885194997.a n = A007917 (n + 2)

end A007917

/-! ## A007917.P12127072256752534522

`A182986(A000720(n+2)+1)`
-/

namespace A007917.P12127072256752534522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A000720 (n + 2) + 1).toNat

end

end A007917.P12127072256752534522

namespace A007917

/-- `A182986(A000720(n+2)+1)` -/
def P12127072256752534522.Spec : Prop :=
  ∀ n, P12127072256752534522.a n = A007917 (n + 2)

end A007917

/-! ## A007917.P8692668063425321886

`A020705(n)-A308050(n+4)`
-/

namespace A007917.P8692668063425321886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n - A308050 (n + 4)

end

end A007917.P8692668063425321886

namespace A007917

/-- `A020705(n)-A308050(n+4)` -/
def P8692668063425321886.Spec : Prop :=
  ∀ n, P8692668063425321886.a n = A007917 (n + 2)

end A007917

/-! ## A007917.P7099116329464524599

`A020715(n)-A161758(n+5)`
-/

namespace A007917.P7099116329464524599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020715 n - A161758 (n + 5)

end

end A007917.P7099116329464524599

namespace A007917

/-- `A020715(n)-A161758(n+5)` -/
def P7099116329464524599.Spec : Prop :=
  ∀ n, P7099116329464524599.a n = A007917 (n + 2)

theorem P7099116329464524599.correct : P7099116329464524599.Spec := by
  intro n
  simp only [A007917, Nat.add_sub_cancel, A007917.P7099116329464524599.a, A007917.P1836476777957611455.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A020715, A020715.P16829433482326866133.a, A161758, A161758.P620541178212101114.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A007917

/-! ## A007917.P15986275706910262555

`A020739(n)%A033557(n+3)`
-/

namespace A007917.P15986275706910262555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020739 n) (A033557 (n + 3))

end

end A007917.P15986275706910262555

namespace A007917

/-- `A020739(n)%A033557(n+3)` -/
def P15986275706910262555.Spec : Prop :=
  ∀ n, P15986275706910262555.a n = A007917 (n + 2)

end A007917

/-! ## A007917.P12383555355639285291

`A000040(∑[char[A040976(n+1)]])`
-/

namespace A007917.P12383555355639285291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007917.P12383555355639285291

namespace A007917

/-- `A000040(∑[char[A040976(n+1)]])` -/
def P12383555355639285291.Spec : Prop :=
  ∀ n, P12383555355639285291.a n = A007917 (n + 2)

end A007917

/-!
# A007918: Least prime >= n (version 1 of the "next prime" function).

The programs for A007918, the canonical program `A007918.P9623913995348804173` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007918 has offset 0).

The definition of A007918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007918.P11419279660798811191

`A007920(n)+n`
-/

namespace A007918.P11419279660798811191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n + (n : ℤ)

end

end A007918.P11419279660798811191

namespace A007918

/-- `A007920(n)+n` -/
def P11419279660798811191.Spec : Prop :=
  ∀ n, P11419279660798811191.a n = A007918 n

theorem P11419279660798811191.correct : P11419279660798811191.Spec := by
  intro n
  simp only [A007918, Nat.add_sub_cancel, A007918.P11419279660798811191.a, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007920, A007920.P3719263903022372137.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007918

/-! ## A007918.P11623541292003050391

`A151800(abs(1-n))`
-/

namespace A007918.P11623541292003050391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 |1 - (n : ℤ)|.toNat

end

end A007918.P11623541292003050391

namespace A007918

/-- `A151800(abs(1-n))` -/
def P11623541292003050391.Spec : Prop :=
  ∀ n, P11623541292003050391.a n = A007918 n

end A007918

/-! ## A007918.P17983229734901521317

`A005843(n)-(n-A007920(n))`
-/

namespace A007918.P17983229734901521317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A007920 n)

end

end A007918.P17983229734901521317

namespace A007918

/-- `A005843(n)-(n-A007920(n))` -/
def P17983229734901521317.Spec : Prop :=
  ∀ n, P17983229734901521317.a n = A007918 n

theorem P17983229734901521317.correct : P17983229734901521317.Spec := by
  intro n
  simp only [A007918, Nat.add_sub_cancel, A007918.P17983229734901521317.a, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A005843, A005843.P3167286115683555970.a, A007920, A007920.P3719263903022372137.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007918

/-! ## A007918.P9623176451114012381

`A007947(A151800((n-1)%(n+1)))`
-/

namespace A007918.P9623176451114012381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A151800 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat).toNat

end

end A007918.P9623176451114012381

namespace A007918

/-- `A007947(A151800((n-1)%(n+1)))` -/
def P9623176451114012381.Spec : Prop :=
  ∀ n, P9623176451114012381.a n = A007918 n

end A007918

/-! ## A007918.P9623913995348804173

`A000040(∑[char[A008864(n+1)]]+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A007918

/-- `A000040(∑[char[A008864(n+1)]]+1)` -/
def P9623913995348804173.Spec : Prop :=
  ∀ n, P9623913995348804173.a n = A007918 n

theorem P9623913995348804173.correct : P9623913995348804173.Spec := by
  intro n
  simp only [A007918]

end A007918

/-! ## A007918.P3350329122165483047

`A000040(∑[char[A000040(n+1)+1]]+1)`
-/

namespace A007918.P3350329122165483047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A007918.P3350329122165483047

namespace A007918

/-- `A000040(∑[char[A000040(n+1)+1]]+1)` -/
def P3350329122165483047.Spec : Prop :=
  ∀ n, P3350329122165483047.a n = A007918 n

end A007918

/-! ## A007918.P4783219188831943452

`A040976(∑[char[A006530(n+4)+1]]+1)+2`
-/

namespace A007918.P4783219188831943452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 4) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 2

end

end A007918.P4783219188831943452

namespace A007918

/-- `A040976(∑[char[A006530(n+4)+1]]+1)+2` -/
def P4783219188831943452.Spec : Prop :=
  ∀ n, P4783219188831943452.a n = A007918 n

end A007918

/-! ## A007918.P9535727606641708700

`n-(A055672(A055672(n))-A007920(n))`
-/

namespace A007918.P9535727606641708700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A055672 (A055672 n).toNat - A007920 n)

end

end A007918.P9535727606641708700

namespace A007918

/-- `n-(A055672(A055672(n))-A007920(n))` -/
def P9535727606641708700.Spec : Prop :=
  ∀ n, P9535727606641708700.a n = A007918 n

end A007918

/-! ## A007918.P6160044548998748370

`n-(A085121(A085121(n))-A007920(n))`
-/

namespace A007918.P6160044548998748370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A085121 (A085121 n).toNat - A007920 n)

end

end A007918.P6160044548998748370

namespace A007918

/-- `n-(A085121(A085121(n))-A007920(n))` -/
def P6160044548998748370.Spec : Prop :=
  ∀ n, P6160044548998748370.a n = A007918 n

end A007918

/-! ## A007918.P17204946042587288827

`n-(A007920(A051698(n))-A007920(n))`
-/

namespace A007918.P17204946042587288827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A007920 (A051698 n).toNat - A007920 n)

end

end A007918.P17204946042587288827

namespace A007918

/-- `n-(A007920(A051698(n))-A007920(n))` -/
def P17204946042587288827.Spec : Prop :=
  ∀ n, P17204946042587288827.a n = A007918 n

end A007918

/-! ## A007918.P4808135901374240143

`A308052(a(n-1)+n)` with `a(0)=2`
-/

namespace A007918.P4808135901374240143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A308052 (a (n - 1) + (n : ℤ)).toNat

end

end A007918.P4808135901374240143

namespace A007918

/-- `A308052(a(n-1)+n)` -/
def P4808135901374240143.Spec : Prop :=
  ∀ n, P4808135901374240143.a n = A007918 n

end A007918

/-! ## A007918.P15905774097430994032

`A308052(A004277(n))`
-/

namespace A007918.P15905774097430994032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (A004277 n).toNat

end

end A007918.P15905774097430994032

namespace A007918

/-- `A308052(A004277(n))` -/
def P15905774097430994032.Spec : Prop :=
  ∀ n, P15905774097430994032.a n = A007918 n

end A007918

/-! ## A007918.P3546811565602741235

`A308052(A053438(n))`
-/

namespace A007918.P3546811565602741235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (A053438 n).toNat

end

end A007918.P3546811565602741235

namespace A007918

/-- `A308052(A053438(n))` -/
def P3546811565602741235.Spec : Prop :=
  ∀ n, P3546811565602741235.a n = A007918 n

end A007918

/-! ## A007918.P4219024037198859639

`A308052(A004274(n+1))`
-/

namespace A007918.P4219024037198859639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (A004274 (n + 1)).toNat

end

end A007918.P4219024037198859639

namespace A007918

/-- `A308052(A004274(n+1))` -/
def P4219024037198859639.Spec : Prop :=
  ∀ n, P4219024037198859639.a n = A007918 n

end A007918

/-! ## A007918.P10725400912010336404

`A308052(A004275(n+1))`
-/

namespace A007918.P10725400912010336404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (A004275 (n + 1)).toNat

end

end A007918.P10725400912010336404

namespace A007918

/-- `A308052(A004275(n+1))` -/
def P10725400912010336404.Spec : Prop :=
  ∀ n, P10725400912010336404.a n = A007918 n

end A007918

/-! ## A007918.P10337694833597095732

`A308052(A004280(n+1))`
-/

namespace A007918.P10337694833597095732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (A004280 (n + 1)).toNat

end

end A007918.P10337694833597095732

namespace A007918

/-- `A308052(A004280(n+1))` -/
def P10337694833597095732.Spec : Prop :=
  ∀ n, P10337694833597095732.a n = A007918 n

end A007918

/-! ## A007918.P8352047383875554553

`A308052(A004281(n+1))`
-/

namespace A007918.P8352047383875554553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (A004281 (n + 1)).toNat

end

end A007918.P8352047383875554553

namespace A007918

/-- `A308052(A004281(n+1))` -/
def P8352047383875554553.Spec : Prop :=
  ∀ n, P8352047383875554553.a n = A007918 n

end A007918

/-! ## A007918.P15505966182239270273

`A308052(A005369(n+2)+2*n)`
-/

namespace A007918.P15505966182239270273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (A005369 (n + 2) + (2 * n : ℤ)).toNat

end

end A007918.P15505966182239270273

namespace A007918

/-- `A308052(A005369(n+2)+2*n)` -/
def P15505966182239270273.Spec : Prop :=
  ∀ n, P15505966182239270273.a n = A007918 n

end A007918

/-! ## A007918.P10365454587548217246

`A308052(A047404(n+1))`
-/

namespace A007918.P10365454587548217246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (A047404 (n + 1)).toNat

end

end A007918.P10365454587548217246

namespace A007918

/-- `A308052(A047404(n+1))` -/
def P10365454587548217246.Spec : Prop :=
  ∀ n, P10365454587548217246.a n = A007918 n

end A007918

/-! ## A007918.P13398635380014549720

`A308052(A047411(n+1))`
-/

namespace A007918.P13398635380014549720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (A047411 (n + 1)).toNat

end

end A007918.P13398635380014549720

namespace A007918

/-- `A308052(A047411(n+1))` -/
def P13398635380014549720.Spec : Prop :=
  ∀ n, P13398635380014549720.a n = A007918 n

end A007918

/-!
# A007919: Smallest k such that k*n is a double factorial.

The programs for A007919, there is no canonical definition to state claims against.
-/

/-! ## A007919.P14577403802331323660

`A006882(A007922(n+1))/(n+1)`
-/

namespace A007919.P14577403802331323660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006882 (A007922 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A007919.P14577403802331323660

/-! ## A007919.P7990147075546369541

`A006882(abs(n-A144299(n)!))`
-/

namespace A007919.P7990147075546369541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 |(n : ℤ) - (Nat.factorial (A144299 n).toNat : ℤ)|.toNat

end

end A007919.P7990147075546369541

/-! ## A007919.P18250174025891743119

`A172089(A000217(n)%A211130(n+1))`
-/

namespace A007919.P18250174025891743119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172089 (Int.tmod (A000217 n) (A211130 (n + 1))).toNat

end

end A007919.P18250174025891743119

/-! ## A007919.P9170515754823320562

`A006882(gcd(A235049(n), A339847(n)))`
-/

namespace A007919.P9170515754823320562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (Int.gcd (A235049 n) (A339847 n))

end

end A007919.P9170515754823320562

/-!
# A007920: Smallest number k such that n + k is prime.

The programs for A007920, the canonical program `A007920.P3719263903022372137` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007920 has offset 0).

The definition of A007920 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007920.P3719263903022372137

`A007918(n)-n`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A007920

/-- `A007918(n)-n` -/
def P3719263903022372137.Spec : Prop :=
  ∀ n, P3719263903022372137.a n = A007920 n

theorem P3719263903022372137.correct : P3719263903022372137.Spec := by
  intro n
  simp only [A007920]

end A007920

/-! ## A007920.P8444540352287540555

`A151800(abs(1-n))-n`
-/

namespace A007920.P8444540352287540555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 |1 - (n : ℤ)|.toNat - (n : ℤ)

end

end A007920.P8444540352287540555

namespace A007920

/-- `A151800(abs(1-n))-n` -/
def P8444540352287540555.Spec : Prop :=
  ∀ n, P8444540352287540555.a n = A007920 n

end A007920

/-! ## A007920.P5809777189231908103

`abs(A007918(n)+A001489(n))`
-/

namespace A007920.P5809777189231908103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007918 n + A001489 n|

end

end A007920.P5809777189231908103

namespace A007920

/-- `abs(A007918(n)+A001489(n))` -/
def P5809777189231908103.Spec : Prop :=
  ∀ n, P5809777189231908103.a n = A007920 n

end A007920

/-! ## A007920.P6128367125011074597

`A000040(∑[char[A000040(n+1)+1]]+1)-n`
-/

namespace A007920.P6128367125011074597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - (n : ℤ)

end

end A007920.P6128367125011074597

namespace A007920

/-- `A000040(∑[char[A000040(n+1)+1]]+1)-n` -/
def P6128367125011074597.Spec : Prop :=
  ∀ n, P6128367125011074597.a n = A007920 n

end A007920

/-! ## A007920.P15570572615358622272

`A020705(A007918(n))+A001489(n+4)`
-/

namespace A007920.P15570572615358622272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (A007918 n).toNat + A001489 (n + 4)

end

end A007920.P15570572615358622272

namespace A007920

/-- `A020705(A007918(n))+A001489(n+4)` -/
def P15570572615358622272.Spec : Prop :=
  ∀ n, P15570572615358622272.a n = A007920 n

end A007920

/-! ## A007920.P17802695255919684640

`A308052(gcd(n, C(2, n))+n)-n`
-/

namespace A007920.P17802695255919684640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (Nat.gcd n (Nat.choose 2 n) + n) - (n : ℤ)

end

end A007920.P17802695255919684640

namespace A007920

/-- `A308052(gcd(n, C(2, n))+n)-n` -/
def P17802695255919684640.Spec : Prop :=
  ∀ n, P17802695255919684640.a n = A007920 n

end A007920

/-! ## A007920.P1536982279580463764

`A308052(A004277(n))-n`
-/

namespace A007920.P1536982279580463764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (A004277 n).toNat - (n : ℤ)

end

end A007920.P1536982279580463764

namespace A007920

/-- `A308052(A004277(n))-n` -/
def P1536982279580463764.Spec : Prop :=
  ∀ n, P1536982279580463764.a n = A007920 n

end A007920

/-! ## A007920.P1033694265060403144

`A308052(A053438(n))-n`
-/

namespace A007920.P1033694265060403144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (A053438 n).toNat - (n : ℤ)

end

end A007920.P1033694265060403144

namespace A007920

/-- `A308052(A053438(n))-n` -/
def P1033694265060403144.Spec : Prop :=
  ∀ n, P1033694265060403144.a n = A007920 n

end A007920

/-! ## A007920.P573694285312985543

`A159477(A233583(n+1))-n`
-/

namespace A007920.P573694285312985543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (A233583 (n + 1)).toNat - (n : ℤ)

end

end A007920.P573694285312985543

namespace A007920

/-- `A159477(A233583(n+1))-n` -/
def P573694285312985543.Spec : Prop :=
  ∀ n, P573694285312985543.a n = A007920 n

end A007920

/-! ## A007920.P12249392322371513135

`A100802(2*n)/2`
-/

namespace A007920.P12249392322371513135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100802 (2 * n) : ℚ) / 2

end

end A007920.P12249392322371513135

namespace A007920

/-- `A100802(2*n)/2` -/
def P12249392322371513135.Spec : Prop :=
  ∀ n, P12249392322371513135.a n = (A007920 n : ℚ)

end A007920

/-! ## A007920.P2387365974356911619

`A004526(A100802(2*n))`
-/

namespace A007920.P2387365974356911619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A100802 (2 * n)).toNat

end

end A007920.P2387365974356911619

namespace A007920

/-- `A004526(A100802(2*n))` -/
def P2387365974356911619.Spec : Prop :=
  ∀ n, P2387365974356911619.a n = A007920 n

end A007920

/-! ## A007920.P14646710357469254763

`A006530(2*A030664(n))-n`
-/

namespace A007920.P14646710357469254763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A030664 n).toNat - (n : ℤ)

end

end A007920.P14646710357469254763

namespace A007920

/-- `A006530(2*A030664(n))-n` -/
def P14646710357469254763.Spec : Prop :=
  ∀ n, P14646710357469254763.a n = A007920 n

end A007920

/-! ## A007920.P10841586191916328435

`A111089(A030664(n))-n`
-/

namespace A007920.P10841586191916328435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (A030664 n).toNat - (n : ℤ)

end

end A007920.P10841586191916328435

namespace A007920

/-- `A111089(A030664(n))-n` -/
def P10841586191916328435.Spec : Prop :=
  ∀ n, P10841586191916328435.a n = A007920 n

end A007920

/-! ## A007920.P225164971191642632

`A230775(A002061(n))-n`
-/

namespace A007920.P225164971191642632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (A002061 n).toNat - (n : ℤ)

end

end A007920.P225164971191642632

namespace A007920

/-- `A230775(A002061(n))-n` -/
def P225164971191642632.Spec : Prop :=
  ∀ n, P225164971191642632.a n = A007920 n

end A007920

/-! ## A007920.P3986604080208024174

`A230775(A082562(n))-n`
-/

namespace A007920.P3986604080208024174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (A082562 n).toNat - (n : ℤ)

end

end A007920.P3986604080208024174

namespace A007920

/-- `A230775(A082562(n))-n` -/
def P3986604080208024174.Spec : Prop :=
  ∀ n, P3986604080208024174.a n = A007920 n

end A007920

/-! ## A007920.P15562293655669317562

`A230775(A103505(n))-n`
-/

namespace A007920.P15562293655669317562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (A103505 n).toNat - (n : ℤ)

end

end A007920.P15562293655669317562

namespace A007920

/-- `A230775(A103505(n))-n` -/
def P15562293655669317562.Spec : Prop :=
  ∀ n, P15562293655669317562.a n = A007920 n

end A007920

/-! ## A007920.P8744806199922478691

`A230775(A160457(n))-n`
-/

namespace A007920.P8744806199922478691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (A160457 n).toNat - (n : ℤ)

end

end A007920.P8744806199922478691

namespace A007920

/-- `A230775(A160457(n))-n` -/
def P8744806199922478691.Spec : Prop :=
  ∀ n, P8744806199922478691.a n = A007920 n

end A007920

/-! ## A007920.P6460117892742929264

`A230775(A253909(n))-n`
-/

namespace A007920.P6460117892742929264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (A253909 n).toNat - (n : ℤ)

end

end A007920.P6460117892742929264

namespace A007920

/-- `A230775(A253909(n))-n` -/
def P6460117892742929264.Spec : Prop :=
  ∀ n, P6460117892742929264.a n = A007920 n

end A007920

/-! ## A007920.P12587852196793299993

`A230775(A267682(n))-n`
-/

namespace A007920.P12587852196793299993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (A267682 n).toNat - (n : ℤ)

end

end A007920.P12587852196793299993

namespace A007920

/-- `A230775(A267682(n))-n` -/
def P12587852196793299993.Spec : Prop :=
  ∀ n, P12587852196793299993.a n = A007920 n

end A007920

/-! ## A007920.P12622426560795413061

`A230775(A102762(n+1))-n`
-/

namespace A007920.P12622426560795413061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (A102762 (n + 1)).toNat - (n : ℤ)

end

end A007920.P12622426560795413061

namespace A007920

/-- `A230775(A102762(n+1))-n` -/
def P12622426560795413061.Spec : Prop :=
  ∀ n, P12622426560795413061.a n = A007920 n

end A007920

/-!
# A007921: Numbers that are not the difference of two primes.

The programs for A007921, the canonical program `A007921.P2826303110664531110` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007921 has offset 1).

The definition of A007921 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007921.P9795564470913101845

`A146538(n+1)+1`
-/

namespace A007921.P9795564470913101845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146538 (n + 1) + 1

end

end A007921.P9795564470913101845

namespace A007921

/-- `A146538(n+1)+1` -/
def P9795564470913101845.Spec : Prop :=
  ∀ n, P9795564470913101845.a n = A007921 (n + 1)

theorem P9795564470913101845.correct : P9795564470913101845.Spec := by
  intro n
  simp only [A007921, Nat.add_sub_cancel, A007921.P9795564470913101845.a, A007921.P2826303110664531110.f1, A007921.P2826303110664531110.f2, A007921.P2826303110664531110.a, A146538, A146538.P8666981964067901687.a, A370482, A370482.P9499058320465952393.f1, A370482.P9499058320465952393.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007921

/-! ## A007921.P3163711601763592879

`A309355(n+1)-1`
-/

namespace A007921.P3163711601763592879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309355 (n + 1) - 1

end

end A007921.P3163711601763592879

namespace A007921

/-- `A309355(n+1)-1` -/
def P3163711601763592879.Spec : Prop :=
  ∀ n, P3163711601763592879.a n = A007921 (n + 1)

theorem P3163711601763592879.correct : P3163711601763592879.Spec := by
  intro n
  simp only [A007921, Nat.add_sub_cancel, A007921.P3163711601763592879.a, A007921.P2826303110664531110.f1, A007921.P2826303110664531110.f2, A007921.P2826303110664531110.a, A309355, A309355.P9345418795961828822.a, A370482, A370482.P9499058320465952393.f1, A370482.P9499058320465952393.a, A059841, A059841.P7264174615531153985.a, A071904, A071904.P6554188440157640390.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007921

/-! ## A007921.P7325252779707623846

`A071904(n+1)-2`
-/

namespace A007921.P7325252779707623846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1) - 2

end

end A007921.P7325252779707623846

namespace A007921

/-- `A071904(n+1)-2` -/
def P7325252779707623846.Spec : Prop :=
  ∀ n, P7325252779707623846.a n = A007921 (n + 1)

theorem P7325252779707623846.correct : P7325252779707623846.Spec := by
  intro n
  simp only [A007921, Nat.add_sub_cancel, A007921.P7325252779707623846.a, A007921.P2826303110664531110.f1, A007921.P2826303110664531110.f2, A007921.P2826303110664531110.a, A071904, A071904.P6554188440157640390.a, A370482, A370482.P9499058320465952393.f1, A370482.P9499058320465952393.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007921

/-! ## A007921.P2826303110664531110

`eq[0, A370482(n+2)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A007921

/-- `eq[0, A370482(n+2)]` -/
def P2826303110664531110.Spec : Prop :=
  ∀ n, (P2826303110664531110.a n : ℤ) = A007921 (n + 1)

theorem P2826303110664531110.correct : P2826303110664531110.Spec := by
  intro n
  simp only [A007921, Nat.add_sub_cancel]

end A007921

/-! ## A007921.P2765636817046811045

`eq[1, A107393(n+2)]`
-/

namespace A007921.P2765636817046811045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007921.P2765636817046811045

namespace A007921

/-- `eq[1, A107393(n+2)]` -/
def P2765636817046811045.Spec : Prop :=
  ∀ n, (P2765636817046811045.a n : ℤ) = A007921 (n + 1)

end A007921

/-! ## A007921.P12963917827673078991

`eq[1, A107393(n)]-2`
-/

namespace A007921.P12963917827673078991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 2

end

end A007921.P12963917827673078991

namespace A007921

/-- `eq[1, A107393(n)]-2` -/
def P12963917827673078991.Spec : Prop :=
  ∀ n, P12963917827673078991.a n = A007921 (n + 1)

end A007921

/-! ## A007921.P16764861685057926871

`lt[1, A325937(n+2)]`
-/

namespace A007921.P16764861685057926871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007921.P16764861685057926871

namespace A007921

/-- `lt[1, A325937(n+2)]` -/
def P16764861685057926871.Spec : Prop :=
  ∀ n, (P16764861685057926871.a n : ℤ) = A007921 (n + 1)

end A007921

/-! ## A007921.P10905704434201676742

`lt[1, A325960(n+2)]`
-/

namespace A007921.P10905704434201676742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325960 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007921.P10905704434201676742

namespace A007921

/-- `lt[1, A325960(n+2)]` -/
def P10905704434201676742.Spec : Prop :=
  ∀ n, (P10905704434201676742.a n : ℤ) = A007921 (n + 1)

end A007921

/-! ## A007921.P3125584055192576197

`∑[A067970(n+1)]-1`
-/

namespace A007921.P3125584055192576197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A007921.P3125584055192576197

namespace A007921

/-- `∑[A067970(n+1)]-1` -/
def P3125584055192576197.Spec : Prop :=
  ∀ n, P3125584055192576197.a n = A007921 (n + 1)

end A007921

/-! ## A007921.P14200634591599442721

`2*A153238(n+1)+1`
-/

namespace A007921.P14200634591599442721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153238 (n + 1) + 1

end

end A007921.P14200634591599442721

namespace A007921

/-- `2*A153238(n+1)+1` -/
def P14200634591599442721.Spec : Prop :=
  ∀ n, P14200634591599442721.a n = A007921 (n + 1)

end A007921

/-! ## A007921.P6547494276284475978

`2*A153052(n+1)+3`
-/

namespace A007921.P6547494276284475978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153052 (n + 1) + 3

end

end A007921.P6547494276284475978

namespace A007921

/-- `2*A153052(n+1)+3` -/
def P6547494276284475978.Spec : Prop :=
  ∀ n, P6547494276284475978.a n = A007921 (n + 1)

end A007921

/-! ## A007921.P17896137044062375442

`2*A053726(n+1)-3`
-/

namespace A007921.P17896137044062375442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053726 (n + 1) - 3

end

end A007921.P17896137044062375442

namespace A007921

/-- `2*A053726(n+1)-3` -/
def P17896137044062375442.Spec : Prop :=
  ∀ n, P17896137044062375442.a n = A007921 (n + 1)

end A007921

/-! ## A007921.P6669302972657605503

`2*A153053(n+1)+5`
-/

namespace A007921.P6669302972657605503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153053 (n + 1) + 5

end

end A007921.P6669302972657605503

namespace A007921

/-- `2*A153053(n+1)+5` -/
def P6669302972657605503.Spec : Prop :=
  ∀ n, P6669302972657605503.a n = A007921 (n + 1)

end A007921

/-! ## A007921.P5270074213586295491

`eq[n+2, A171435(n+2)]`
-/

namespace A007921.P5270074213586295491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007921.P5270074213586295491

namespace A007921

/-- `eq[n+2, A171435(n+2)]` -/
def P5270074213586295491.Spec : Prop :=
  ∀ n, (P5270074213586295491.a n : ℤ) = A007921 (n + 1)

end A007921

/-! ## A007921.P18437236798247764114

`A160522(n+1)+2*(n+1)`
-/

namespace A007921.P18437236798247764114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160522 (n + 1) + (2 * (n + 1) : ℤ)

end

end A007921.P18437236798247764114

namespace A007921

/-- `A160522(n+1)+2*(n+1)` -/
def P18437236798247764114.Spec : Prop :=
  ∀ n, P18437236798247764114.a n = A007921 (n + 1)

theorem P18437236798247764114.correct : P18437236798247764114.Spec := by
  intro n
  simp only [A007921, Nat.add_sub_cancel, A007921.P18437236798247764114.a, A007921.P2826303110664531110.f1, A007921.P2826303110664531110.f2, A007921.P2826303110664531110.a, A160522, A160522.P1046967172984511442.a, A370482, A370482.P9499058320465952393.f1, A370482.P9499058320465952393.a, A005843, A005843.P3167286115683555970.a, A059841, A059841.P7264174615531153985.a, A071904, A071904.P6554188440157640390.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007921

/-! ## A007921.P3564133263409845696

`lt[2, A020639(n+2)%(n+1)]`
-/

namespace A007921.P3564133263409845696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (n + 2)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007921.P3564133263409845696

namespace A007921

/-- `lt[2, A020639(n+2)%(n+1)]` -/
def P3564133263409845696.Spec : Prop :=
  ∀ n, (P3564133263409845696.a n : ℤ) = A007921 (n + 1)

end A007921

/-! ## A007921.P2184664096214653279

`2*lt[1, A001222(2*n+1)]-1`
-/

namespace A007921.P2184664096214653279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A007921.P2184664096214653279

namespace A007921

/-- `2*lt[1, A001222(2*n+1)]-1` -/
def P2184664096214653279.Spec : Prop :=
  ∀ n, P2184664096214653279.a n = A007921 (n + 1)

end A007921

/-! ## A007921.P8144086468374202002

`2*lt[2, A000005(2*n+1)]-1`
-/

namespace A007921.P8144086468374202002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A007921.P8144086468374202002

namespace A007921

/-- `2*lt[2, A000005(2*n+1)]-1` -/
def P8144086468374202002.Spec : Prop :=
  ∀ n, P8144086468374202002.a n = A007921 (n + 1)

end A007921

/-! ## A007921.P10168530561545818944

`or(1, 2*lt[2, A000005(2*n+3)])`
-/

namespace A007921.P10168530561545818944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A007921.P10168530561545818944

namespace A007921

/-- `or(1, 2*lt[2, A000005(2*n+3)])` -/
def P10168530561545818944.Spec : Prop :=
  ∀ n, (P10168530561545818944.a n : ℤ) = A007921 (n + 1)

end A007921

/-! ## A007921.P9577107053578541154

`2*lt[A006530(2*n+1), n]-1`
-/

namespace A007921.P9577107053578541154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A007921.P9577107053578541154

namespace A007921

/-- `2*lt[A006530(2*n+1), n]-1` -/
def P9577107053578541154.Spec : Prop :=
  ∀ n, P9577107053578541154.a n = A007921 (n + 1)

end A007921

/-!
# A007922: Smallest k such that k!! is a multiple of n.

The programs for A007922, there is no canonical definition to state claims against.
-/

/-! ## A007922.P17910890159269514915

`A002034(∏{p}[n+1, #]^A327979(n+1))`
-/

namespace A007922.P17910890159269514915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) ^ (A327979 (n + 1) : ℤ))).toNat

end

end A007922.P17910890159269514915

/-! ## A007922.P6020474419503412945

`A002034(A007947(n+1)^A327979(n+1))`
-/

namespace A007922.P6020474419503412945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (SequenceMachineLib.roundAway ((A007947 (n + 1) : ℚ) ^ (A327979 (n + 1) : ℤ))).toNat

end

end A007922.P6020474419503412945

/-! ## A007922.P17606714673028284808

`A002034(A015052(n+1)^A327979(n+1))`
-/

namespace A007922.P17606714673028284808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (SequenceMachineLib.roundAway ((A015052 (n + 1) : ℚ) ^ (A327979 (n + 1) : ℤ))).toNat

end

end A007922.P17606714673028284808

/-! ## A007922.P1178205851539478194

`A002034(A015053(n+1)^A327979(n+1))`
-/

namespace A007922.P1178205851539478194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (SequenceMachineLib.roundAway ((A015053 (n + 1) : ℚ) ^ (A327979 (n + 1) : ℤ))).toNat

end

end A007922.P1178205851539478194

/-! ## A007922.P14231762883156537863

`A002034(A088835(n+1)^A327979(n+1))`
-/

namespace A007922.P14231762883156537863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (SequenceMachineLib.roundAway ((A088835 (n + 1) : ℚ) ^ (A327979 (n + 1) : ℤ))).toNat

end

end A007922.P14231762883156537863

/-!
# A007924: The number n written using the greedy algorithm in the base where the values of the places are 1 and primes.

The programs for A007924, there is no canonical definition to state claims against.
-/

/-! ## A007924.P2509925921239328740

`A007088(A200947(n))`
-/

namespace A007924.P2509925921239328740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A200947 n).toNat

end

end A007924.P2509925921239328740

/-! ## A007924.P12099489600774790756

`A185544(2*A200947(n))`
-/

namespace A007924.P12099489600774790756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A200947 n).toNat

end

end A007924.P12099489600774790756

/-! ## A007924.P5732879496096285101

`A185544(A200947(n)+A200947(n))`
-/

namespace A007924.P5732879496096285101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A200947 n + A200947 n).toNat

end

end A007924.P5732879496096285101

/-! ## A007924.P6091304046617712374

`A014417(lt[A085836(n+1), A131551(n+1)])`
-/

namespace A007924.P6091304046617712374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014417 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A007924.P6091304046617712374

/-! ## A007924.P13850126199741042079

`A014417(lt[A193556(n+2), A059635(n+1)])`
-/

namespace A007924.P13850126199741042079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193556 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014417 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A007924.P13850126199741042079

/-!
# A007925: a(n) = n^(n+1) - (n+1)^n.

The programs for A007925, the canonical program `A007925.P30447559321077238` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007925 has offset 0).

The definition of A007925 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^(n+1)-(n+1)^n` (program `A007925.P30447559321077238`, by `A007925.P30447559321077238.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007925.P30447559321077238

`n^(n+1)-(n+1)^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007925

/-- `n^(n+1)-(n+1)^n` -/
def P30447559321077238.Spec : Prop :=
  ∀ n, P30447559321077238.a n = A007925 n

theorem P30447559321077238.correct : P30447559321077238.Spec := by
  intro n
  simp only [A007925]

end A007925

/-! ## A007925.P5982915373806588426

`or(1, A007778(n)-A000169(n+1))`
-/

namespace A007925.P5982915373806588426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A007778 n - A000169 (n + 1))

end

end A007925.P5982915373806588426

namespace A007925

/-- `or(1, A007778(n)-A000169(n+1))` -/
def P5982915373806588426.Spec : Prop :=
  ∀ n, P5982915373806588426.a n = A007925 n

end A007925

/-! ## A007925.P15767317613083720274

`(A007778(n)-A000169(n+1))/A000108(C(2, n+2))`
-/

namespace A007925.P15767317613083720274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007778 n - A000169 (n + 1) : ℚ) / (A000108 (Nat.choose 2 (n + 2)) : ℚ)

end

end A007925.P15767317613083720274

namespace A007925

/-- `(A007778(n)-A000169(n+1))/A000108(C(2, n+2))` -/
def P15767317613083720274.Spec : Prop :=
  ∀ n, P15767317613083720274.a n = (A007925 n : ℚ)

end A007925

/-! ## A007925.P13631031111266686309

`(A007778(n)-A000169(n+1))/A001222(A001749(n+1)/4)`
-/

namespace A007925.P13631031111266686309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007778 n - A000169 (n + 1) : ℚ) / (A001222 (SequenceMachineLib.roundAway ((A001749 (n + 1) : ℚ) / 4)).toNat : ℚ)

end

end A007925.P13631031111266686309

namespace A007925

/-- `(A007778(n)-A000169(n+1))/A001222(A001749(n+1)/4)` -/
def P13631031111266686309.Spec : Prop :=
  ∀ n, P13631031111266686309.a n = (A007925 n : ℚ)

end A007925

/-! ## A007925.P14263791161120477116

`A055651(2*(n+1)²)`
-/

namespace A007925.P14263791161120477116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (2 * (n + 1) ^ 2)

end

end A007925.P14263791161120477116

namespace A007925

/-- `A055651(2*(n+1)²)` -/
def P14263791161120477116.Spec : Prop :=
  ∀ n, P14263791161120477116.a n = A007925 n

end A007925

/-!
# A007926: Some permutation of digits is a factorial number.

The programs for A007926, there is no canonical definition to state claims against.
-/

/-! ## A007926.P4488277317794042872

`eq[A109012(n), A279134(A089898(n))]`
-/

namespace A007926.P4488277317794042872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109012 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279134 (A089898 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007926.P4488277317794042872

/-! ## A007926.P14406971415704689454

`A239221(lt[A239241(n), A239238(n+1)])`
-/

namespace A007926.P14406971415704689454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239241 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239221 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A007926.P14406971415704689454

/-! ## A007926.P1492261723270731829

`A239221(lt[A185131(2*n+3), A144268(3*n+1)])`
-/

namespace A007926.P1492261723270731829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185131 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144268 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239221 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A007926.P1492261723270731829

/-!
# A007927: Some nontrivial permutation of digits is a factorial number.

The programs for A007927, there is no canonical definition to state claims against.
-/

/-! ## A007927.P13011424256950674114

`∩[A007926(n+1), A115945(n+1)]`
-/

namespace A007927.P13011424256950674114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007927.P13011424256950674114

/-! ## A007927.P11518799366905539003

`∩[A007926(n+1), A063992(n+1)]`
-/

namespace A007927.P11518799366905539003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007927.P11518799366905539003

/-!
# A007928: Numbers containing an even digit.

The programs for A007928, the canonical program `A007928.P16483837700590660845` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007928 has offset 1).

The definition of A007928 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007928.P3162116932125700707

`comp[A014261(n+1)]`
-/

namespace A007928.P3162116932125700707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007928.P3162116932125700707

namespace A007928

/-- `comp[A014261(n+1)]` -/
def P3162116932125700707.Spec : Prop :=
  ∀ n, (P3162116932125700707.a n : ℤ) = A007928 (n + 1)

end A007928

/-! ## A007928.P3845816811250734418

`comp[A061808(n+1)]`
-/

namespace A007928.P3845816811250734418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007928.P3845816811250734418

namespace A007928

/-- `comp[A061808(n+1)]` -/
def P3845816811250734418.Spec : Prop :=
  ∀ n, (P3845816811250734418.a n : ℤ) = A007928 (n + 1)

end A007928

/-! ## A007928.P1854638402653635115

`lt[7, sqrt(A073053(n))]`
-/

namespace A007928.P1854638402653635115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A073053 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A007928.P1854638402653635115

namespace A007928

/-- `lt[7, sqrt(A073053(n))]` -/
def P1854638402653635115.Spec : Prop :=
  ∀ n, (P1854638402653635115.a n : ℤ) = A007928 (n + 1)

end A007928

/-! ## A007928.P16483837700590660845

`lt[and(1, A187844(n)), 1]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007928

/-- `lt[and(1, A187844(n)), 1]` -/
def P16483837700590660845.Spec : Prop :=
  ∀ n, (P16483837700590660845.a n : ℤ) = A007928 (n + 1)

theorem P16483837700590660845.correct : P16483837700590660845.Spec := by
  intro n
  simp only [A007928, Nat.add_sub_cancel]

end A007928

/-! ## A007928.P1227695850071701138

`∪[2*n, A007929(n+1)]`
-/

namespace A007928.P1227695850071701138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007928.P1227695850071701138

namespace A007928

/-- `∪[2*n, A007929(n+1)]` -/
def P1227695850071701138.Spec : Prop :=
  ∀ n, (P1227695850071701138.a n : ℤ) = A007928 (n + 1)

end A007928

/-! ## A007928.P9053915509176018783

`∪[2*n, A007930(n+1)]`
-/

namespace A007928.P9053915509176018783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007928.P9053915509176018783

namespace A007928

/-- `∪[2*n, A007930(n+1)]` -/
def P9053915509176018783.Spec : Prop :=
  ∀ n, (P9053915509176018783.a n : ℤ) = A007928 (n + 1)

end A007928

/-! ## A007928.P2280331541903392335

`eq[2, A100961(2*A073053(n))]`
-/

namespace A007928.P2280331541903392335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100961 (2 * A073053 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007928.P2280331541903392335

namespace A007928

/-- `eq[2, A100961(2*A073053(n))]` -/
def P2280331541903392335.Spec : Prop :=
  ∀ n, (P2280331541903392335.a n : ℤ) = A007928 (n + 1)

end A007928

/-! ## A007928.P1121941078002558163

`∪[A007929(n+1), A005843(n)]`
-/

namespace A007928.P1121941078002558163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007928.P1121941078002558163

namespace A007928

/-- `∪[A007929(n+1), A005843(n)]` -/
def P1121941078002558163.Spec : Prop :=
  ∀ n, (P1121941078002558163.a n : ℤ) = A007928 (n + 1)

end A007928

/-! ## A007928.P16406500630679254592

`∪[A007930(n+1), A005843(n)]`
-/

namespace A007928.P16406500630679254592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007928.P16406500630679254592

namespace A007928

/-- `∪[A007930(n+1), A005843(n)]` -/
def P16406500630679254592.Spec : Prop :=
  ∀ n, (P16406500630679254592.a n : ℤ) = A007928 (n + 1)

end A007928

/-! ## A007928.P8424305794844389726

`∪[A007929(n+1), A092451(n)]`
-/

namespace A007928.P8424305794844389726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092451 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007928.P8424305794844389726

namespace A007928

/-- `∪[A007929(n+1), A092451(n)]` -/
def P8424305794844389726.Spec : Prop :=
  ∀ n, (P8424305794844389726.a n : ℤ) = A007928 (n + 1)

end A007928

/-! ## A007928.P1787336784590133429

`∪[A007930(n+1), A092451(n)]`
-/

namespace A007928.P1787336784590133429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092451 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007928.P1787336784590133429

namespace A007928

/-- `∪[A007930(n+1), A092451(n)]` -/
def P1787336784590133429.Spec : Prop :=
  ∀ n, (P1787336784590133429.a n : ℤ) = A007928 (n + 1)

end A007928

/-! ## A007928.P3889834934261565446

`lt[n, (n²+1)*A196563(n)]`
-/

namespace A007928.P3889834934261565446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℤ) * A196563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007928.P3889834934261565446

namespace A007928

/-- `lt[n, (n²+1)*A196563(n)]` -/
def P3889834934261565446.Spec : Prop :=
  ∀ n, (P3889834934261565446.a n : ℤ) = A007928 (n + 1)

end A007928

/-! ## A007928.P16173794767880776104

`eq[0, A135481(A059707(n))]`
-/

namespace A007928.P16173794767880776104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (A059707 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007928.P16173794767880776104

namespace A007928

/-- `eq[0, A135481(A059707(n))]` -/
def P16173794767880776104.Spec : Prop :=
  ∀ n, (P16173794767880776104.a n : ℤ) = A007928 (n + 1)

end A007928

/-! ## A007928.P3901029661684362663

`lt[A019430(A007954(n)), 2]`
-/

namespace A007928.P3901029661684362663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 (A007954 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A007928.P3901029661684362663

namespace A007928

/-- `lt[A019430(A007954(n)), 2]` -/
def P3901029661684362663.Spec : Prop :=
  ∀ n, (P3901029661684362663.a n : ℤ) = A007928 (n + 1)

end A007928

/-! ## A007928.P11250942791612040242

`lt[A196564(n), A055642(n)]`
-/

namespace A007928.P11250942791612040242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007928.P11250942791612040242

namespace A007928

/-- `lt[A196564(n), A055642(n)]` -/
def P11250942791612040242.Spec : Prop :=
  ∀ n, (P11250942791612040242.a n : ℤ) = A007928 (n + 1)

end A007928

/-! ## A007928.P5145216444330222807

`comp[A351744(n)]`
-/

namespace A007928.P5145216444330222807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351744 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007928.P5145216444330222807

namespace A007928

/-- `comp[A351744(n)]` -/
def P5145216444330222807.Spec : Prop :=
  ∀ n, (P5145216444330222807.a n : ℤ) = A007928 (n + 1)

end A007928

/-! ## A007928.P14325862025958803179

`comp[A225985(n+1)]`
-/

namespace A007928.P14325862025958803179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007928.P14325862025958803179

namespace A007928

/-- `comp[A225985(n+1)]` -/
def P14325862025958803179.Spec : Prop :=
  ∀ n, (P14325862025958803179.a n : ℤ) = A007928 (n + 1)

end A007928

/-! ## A007928.P8629497551523884413

`comp[A327539(n+1)]`
-/

namespace A007928.P8629497551523884413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007928.P8629497551523884413

namespace A007928

/-- `comp[A327539(n+1)]` -/
def P8629497551523884413.Spec : Prop :=
  ∀ n, (P8629497551523884413.a n : ℤ) = A007928 (n + 1)

end A007928

/-! ## A007928.P13723284453982573073

`comp[A389140(n+1)]`
-/

namespace A007928.P13723284453982573073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007928.P13723284453982573073

namespace A007928

/-- `comp[A389140(n+1)]` -/
def P13723284453982573073.Spec : Prop :=
  ∀ n, (P13723284453982573073.a n : ℤ) = A007928 (n + 1)

end A007928

/-!
# A007929: Odd numbers containing an even digit.

The programs for A007929, the canonical program `A007929.P17074030191121949086` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007929 has offset 1).

The definition of A007929 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4610 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007929.P6738393534870189138

`∩[2*n+1, A007930(n+1)]`
-/

namespace A007929.P6738393534870189138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007929.P6738393534870189138

namespace A007929

/-- `∩[2*n+1, A007930(n+1)]` -/
def P6738393534870189138.Spec : Prop :=
  ∀ n, (P6738393534870189138.a n : ℤ) = A007929 (n + 1)

end A007929

/-! ## A007929.P2186339477795258647

`record[A000265(A007930(n+2))]`
-/

namespace A007929.P2186339477795258647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A007930 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007929.P2186339477795258647

namespace A007929

/-- `record[A000265(A007930(n+2))]` -/
def P2186339477795258647.Spec : Prop :=
  ∀ n, P2186339477795258647.a n = A007929 (n + 1)

end A007929

/-! ## A007929.P17502648673051152940

`∩[A007930(n+1), A004273(n)]`
-/

namespace A007929.P17502648673051152940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007929.P17502648673051152940

namespace A007929

/-- `∩[A007930(n+1), A004273(n)]` -/
def P17502648673051152940.Spec : Prop :=
  ∀ n, (P17502648673051152940.a n : ℤ) = A007929 (n + 1)

end A007929

/-! ## A007929.P17563233487141704644

`∩[A007930(n+1), A004274(n)]`
-/

namespace A007929.P17563233487141704644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007929.P17563233487141704644

namespace A007929

/-- `∩[A007930(n+1), A004274(n)]` -/
def P17563233487141704644.Spec : Prop :=
  ∀ n, (P17563233487141704644.a n : ℤ) = A007929 (n + 1)

end A007929

/-! ## A007929.P10494746637810461979

`∩[A007930(n+1), A004276(n)]`
-/

namespace A007929.P10494746637810461979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007929.P10494746637810461979

namespace A007929

/-- `∩[A007930(n+1), A004276(n)]` -/
def P10494746637810461979.Spec : Prop :=
  ∀ n, (P10494746637810461979.a n : ℤ) = A007929 (n + 1)

end A007929

/-! ## A007929.P10696046610620872007

`∩[A007930(n+1), A004281(n)]`
-/

namespace A007929.P10696046610620872007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007929.P10696046610620872007

namespace A007929

/-- `∩[A007930(n+1), A004281(n)]` -/
def P10696046610620872007.Spec : Prop :=
  ∀ n, (P10696046610620872007.a n : ℤ) = A007929 (n + 1)

end A007929

/-! ## A007929.P8451732453705004419

`∩[A007930(n+1), A020742(n)]`
-/

namespace A007929.P8451732453705004419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007929.P8451732453705004419

namespace A007929

/-- `∩[A007930(n+1), A020742(n)]` -/
def P8451732453705004419.Spec : Prop :=
  ∀ n, (P8451732453705004419.a n : ℤ) = A007929 (n + 1)

end A007929

/-! ## A007929.P13064784400806090471

`∩[A007930(n+1), A060747(n)]`
-/

namespace A007929.P13064784400806090471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007929.P13064784400806090471

namespace A007929

/-- `∩[A007930(n+1), A060747(n)]` -/
def P13064784400806090471.Spec : Prop :=
  ∀ n, (P13064784400806090471.a n : ℤ) = A007929 (n + 1)

end A007929

/-! ## A007929.P1351578040430962368

`∩[A007930(n+1), A062545(n)]`
-/

namespace A007929.P1351578040430962368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007929.P1351578040430962368

namespace A007929

/-- `∩[A007930(n+1), A062545(n)]` -/
def P1351578040430962368.Spec : Prop :=
  ∀ n, (P1351578040430962368.a n : ℤ) = A007929 (n + 1)

end A007929

/-! ## A007929.P11364464308965000530

`∩[A007930(n+1), A130773(n)]`
-/

namespace A007929.P11364464308965000530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007929.P11364464308965000530

namespace A007929

/-- `∩[A007930(n+1), A130773(n)]` -/
def P11364464308965000530.Spec : Prop :=
  ∀ n, (P11364464308965000530.a n : ℤ) = A007929 (n + 1)

end A007929

/-! ## A007929.P6367430802760467267

`∩[A007930(n+1), A163985(n)]`
-/

namespace A007929.P6367430802760467267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007929.P6367430802760467267

namespace A007929

/-- `∩[A007930(n+1), A163985(n)]` -/
def P6367430802760467267.Spec : Prop :=
  ∀ n, (P6367430802760467267.a n : ℤ) = A007929 (n + 1)

end A007929

/-! ## A007929.P5249637159756004677

`∩[A007930(n+1), A223134(n)]`
-/

namespace A007929.P5249637159756004677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007929.P5249637159756004677

namespace A007929

/-- `∩[A007930(n+1), A223134(n)]` -/
def P5249637159756004677.Spec : Prop :=
  ∀ n, (P5249637159756004677.a n : ℤ) = A007929 (n + 1)

end A007929

/-! ## A007929.P12350631353064539959

`∩[A007930(n+1), A326494(n)]`
-/

namespace A007929.P12350631353064539959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007929.P12350631353064539959

namespace A007929

/-- `∩[A007930(n+1), A326494(n)]` -/
def P12350631353064539959.Spec : Prop :=
  ∀ n, (P12350631353064539959.a n : ℤ) = A007929 (n + 1)

end A007929

/-! ## A007929.P5407421764713932101

`∩[A007930(n+1), A020735(n+1)]`
-/

namespace A007929.P5407421764713932101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007929.P5407421764713932101

namespace A007929

/-- `∩[A007930(n+1), A020735(n+1)]` -/
def P5407421764713932101.Spec : Prop :=
  ∀ n, (P5407421764713932101.a n : ℤ) = A007929 (n + 1)

end A007929

/-! ## A007929.P12018252971814412919

`∩[A007930(n+1), A140139(n+1)]`
-/

namespace A007929.P12018252971814412919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007929.P12018252971814412919

namespace A007929

/-- `∩[A007930(n+1), A140139(n+1)]` -/
def P12018252971814412919.Spec : Prop :=
  ∀ n, (P12018252971814412919.a n : ℤ) = A007929 (n + 1)

end A007929

/-! ## A007929.P17074030191121949086

`∩[2*n+1, A007928(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A007929

/-- `∩[2*n+1, A007928(n+1)]` -/
def P17074030191121949086.Spec : Prop :=
  ∀ n, (P17074030191121949086.a n : ℤ) = A007929 (n + 1)

theorem P17074030191121949086.correct : P17074030191121949086.Spec := by
  intro n
  simp only [A007929, Nat.add_sub_cancel]

end A007929

/-! ## A007929.P12352502710875484875

`∩[A007928(n+1), A020742(n)]`
-/

namespace A007929.P12352502710875484875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007929.P12352502710875484875

namespace A007929

/-- `∩[A007928(n+1), A020742(n)]` -/
def P12352502710875484875.Spec : Prop :=
  ∀ n, (P12352502710875484875.a n : ℤ) = A007929 (n + 1)

end A007929

/-! ## A007929.P11064526202994284839

`∩[A007928(n+1), A060747(n)]`
-/

namespace A007929.P11064526202994284839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007929.P11064526202994284839

namespace A007929

/-- `∩[A007928(n+1), A060747(n)]` -/
def P11064526202994284839.Spec : Prop :=
  ∀ n, (P11064526202994284839.a n : ℤ) = A007929 (n + 1)

end A007929

/-! ## A007929.P6161880711643299058

`∩[A007928(n+1), A020735(n+1)]`
-/

namespace A007929.P6161880711643299058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007929.P6161880711643299058

namespace A007929

/-- `∩[A007928(n+1), A020735(n+1)]` -/
def P6161880711643299058.Spec : Prop :=
  ∀ n, (P6161880711643299058.a n : ℤ) = A007929 (n + 1)

end A007929

/-! ## A007929.P2495043281423455548

`∩[A007928(n+1), A144396(n+1)]`
-/

namespace A007929.P2495043281423455548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007929.P2495043281423455548

namespace A007929

/-- `∩[A007928(n+1), A144396(n+1)]` -/
def P2495043281423455548.Spec : Prop :=
  ∀ n, (P2495043281423455548.a n : ℤ) = A007929 (n + 1)

end A007929

/-!
# A007930: Some nontrivial permutation of digits gives an even number.

The programs for A007930, there is no canonical definition to state claims against.
-/

/-! ## A007930.P14164776211706801759

`lt[A000034(A004086(n)), A045843(n)]`
-/

namespace A007930.P14164776211706801759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045843 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007930.P14164776211706801759

/-! ## A007930.P14061564818583207143

`lt[A000034(A032762(n)), A045843(n)]`
-/

namespace A007930.P14061564818583207143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A032762 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045843 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007930.P14061564818583207143

/-! ## A007930.P1564501012845142362

`lt[A134451(A267193(n)), A045843(n)]`
-/

namespace A007930.P1564501012845142362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A267193 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045843 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007930.P1564501012845142362

/-! ## A007930.P16730882939931568502

`lt[A000007(A045887(n+1)), A045887(n)]`
-/

namespace A007930.P16730882939931568502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A045887 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045887 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007930.P16730882939931568502

/-! ## A007930.P677681338550140241

`lt[A046053(3*n+5), A124625(A102685(n))]`
-/

namespace A007930.P677681338550140241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 (A102685 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007930.P677681338550140241

/-! ## A007930.P13702927930133722482

`A111706(A102494(n+1))`
-/

namespace A007930.P13702927930133722482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111706 (A102494 (n + 1)).toNat

end

end A007930.P13702927930133722482

/-! ## A007930.P13393777779498250799

`A118759(A024657(n))+20`
-/

namespace A007930.P13393777779498250799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A024657 n).toNat + 20

end

end A007930.P13393777779498250799

/-! ## A007930.P6366488592288023892

`A118759(A140281(n))+20`
-/

namespace A007930.P6366488592288023892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A140281 n).toNat + 20

end

end A007930.P6366488592288023892

/-! ## A007930.P1770741837455760128

`lt[A112469(A169718(n)), 0]`
-/

namespace A007930.P1770741837455760128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112469 (A169718 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A007930.P1770741837455760128

/-!
# A007931: Numbers that contain only 1's and 2's. Nonempty binary strings of length n in lexicographic order.

The programs for A007931, there is no canonical definition to state claims against.
-/

/-! ## A007931.P11019015219857083445

`A284920(n+1)/2`
-/

namespace A007931.P11019015219857083445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284920 (n + 1) : ℚ) / 2

end

end A007931.P11019015219857083445

/-! ## A007931.P1552456253373477395

`A284633(n+1)/3`
-/

namespace A007931.P1552456253373477395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284633 (n + 1) : ℚ) / 3

end

end A007931.P1552456253373477395

/-! ## A007931.P6678408822902984240

`A284972(n+1)/4`
-/

namespace A007931.P6678408822902984240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284972 (n + 1) : ℚ) / 4

end

end A007931.P6678408822902984240

/-! ## A007931.P9945395619334447673

`A072961(n+1)-A032917(n+1)`
-/

namespace A007931.P9945395619334447673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072961 (n + 1) - A032917 (n + 1)

end

end A007931.P9945395619334447673

/-! ## A007931.P5454915339389447096

`A143967(n+1)-A072961(n+1)`
-/

namespace A007931.P5454915339389447096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143967 (n + 1) - A072961 (n + 1)

end

end A007931.P5454915339389447096

/-! ## A007931.P17287681044525058774

`A032810(n+1)-A256077(n+1)`
-/

namespace A007931.P17287681044525058774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (n + 1) - A256077 (n + 1)

end

end A007931.P17287681044525058774

/-! ## A007931.P9990744185396897327

`A284379(n+1)-A032810(n+1)`
-/

namespace A007931.P9990744185396897327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284379 (n + 1) - A032810 (n + 1)

end

end A007931.P9990744185396897327

/-! ## A007931.P16537200900136704928

`A284632(n+1)-A032822(n+1)`
-/

namespace A007931.P16537200900136704928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284632 (n + 1) - A032822 (n + 1)

end

end A007931.P16537200900136704928

/-! ## A007931.P13847122706001409580

`A284634(n+1)-A032834(n+1)`
-/

namespace A007931.P13847122706001409580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284634 (n + 1) - A032834 (n + 1)

end

end A007931.P13847122706001409580

/-! ## A007931.P1253490608674197703

`A284973(n+1)-A143967(n+1)`
-/

namespace A007931.P1253490608674197703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284973 (n + 1) - A143967 (n + 1)

end

end A007931.P1253490608674197703

/-! ## A007931.P10526831376684348701

`A284380(n+1)-A256290(n+1)`
-/

namespace A007931.P10526831376684348701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284380 (n + 1) - A256290 (n + 1)

end

end A007931.P10526831376684348701

/-! ## A007931.P16118747609167642064

`A284635(n+1)-A256291(n+1)`
-/

namespace A007931.P16118747609167642064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284635 (n + 1) - A256291 (n + 1)

end

end A007931.P16118747609167642064

/-! ## A007931.P4472377650457456461

`A285011(n+1)-A256292(n+1)`
-/

namespace A007931.P4472377650457456461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285011 (n + 1) - A256292 (n + 1)

end

end A007931.P4472377650457456461

/-! ## A007931.P11150484303351267694

`A284921(n+1)-A276037(n+1)`
-/

namespace A007931.P11150484303351267694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284921 (n + 1) - A276037 (n + 1)

end

end A007931.P11150484303351267694

/-! ## A007931.P1115289464451208085

`A284923(n+1)-A276039(n+1)`
-/

namespace A007931.P1115289464451208085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284923 (n + 1) - A276039 (n + 1)

end

end A007931.P1115289464451208085

/-! ## A007931.P5762176260554653058

`A284381(n+1)-A284634(n+1)`
-/

namespace A007931.P5762176260554653058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284381 (n + 1) - A284634 (n + 1)

end

end A007931.P5762176260554653058

/-! ## A007931.P10095362611884215988

`A284636(n+1)-A284380(n+1)`
-/

namespace A007931.P10095362611884215988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284636 (n + 1) - A284380 (n + 1)

end

end A007931.P10095362611884215988

/-! ## A007931.P17960312820756451780

`A284922(n+1)-A284293(n+1)`
-/

namespace A007931.P17960312820756451780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284922 (n + 1) - A284293 (n + 1)

end

end A007931.P17960312820756451780

/-! ## A007931.P16948331799310775099

`A284382(n+1)-A284971(n+1)`
-/

namespace A007931.P16948331799310775099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284382 (n + 1) - A284971 (n + 1)

end

end A007931.P16948331799310775099

/-! ## A007931.P9735306457106120467

`A284971(n+1)-A284379(n+1)`
-/

namespace A007931.P9735306457106120467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284971 (n + 1) - A284379 (n + 1)

end

end A007931.P9735306457106120467

/-!
# A007932: Numbers that contain only 1's, 2's and 3's.

The programs for A007932, the canonical program `A007932.P4019058118128328590` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007932 has offset 1).

The definition of A007932 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1983 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007932.P4019058118128328590

`A007090(A023705(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A007932

/-- `A007090(A023705(n+1))` -/
def P4019058118128328590.Spec : Prop :=
  ∀ n, P4019058118128328590.a n = A007932 (n + 1)

theorem P4019058118128328590.correct : P4019058118128328590.Spec := by
  intro n
  simp only [A007932, Nat.add_sub_cancel]

end A007932

/-! ## A007932.P8440704972832586115

`∩[A084544(n+1), A007090(n)]`
-/

namespace A007932.P8440704972832586115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007932.P8440704972832586115

namespace A007932

/-- `∩[A084544(n+1), A007090(n)]` -/
def P8440704972832586115.Spec : Prop :=
  ∀ n, (P8440704972832586115.a n : ℤ) = A007932 (n + 1)

end A007932

/-! ## A007932.P11445857242749672878

`A007090(eq[A000007(n), A160380(n)])`
-/

namespace A007932.P11445857242749672878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A007932.P11445857242749672878

namespace A007932

/-- `A007090(eq[A000007(n), A160380(n)])` -/
def P11445857242749672878.Spec : Prop :=
  ∀ n, P11445857242749672878.a n = A007932 (n + 1)

end A007932

/-! ## A007932.P7411294771944188883

`record[A046034(n+1)-A084544(n+1)]`
-/

namespace A007932.P7411294771944188883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1) - A084544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007932.P7411294771944188883

namespace A007932

/-- `record[A046034(n+1)-A084544(n+1)]` -/
def P7411294771944188883.Spec : Prop :=
  ∀ n, P7411294771944188883.a n = A007932 (n + 1)

end A007932

/-! ## A007932.P9257280756138420269

`∩[A001742(n+1), A007090(n)]`
-/

namespace A007932.P9257280756138420269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007932.P9257280756138420269

namespace A007932

/-- `∩[A001742(n+1), A007090(n)]` -/
def P9257280756138420269.Spec : Prop :=
  ∀ n, (P9257280756138420269.a n : ℤ) = A007932 (n + 1)

end A007932

/-! ## A007932.P16358477930304100611

`∩[A001742(n+1), A007091(n)]`
-/

namespace A007932.P16358477930304100611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007932.P16358477930304100611

namespace A007932

/-- `∩[A001742(n+1), A007091(n)]` -/
def P16358477930304100611.Spec : Prop :=
  ∀ n, (P16358477930304100611.a n : ℤ) = A007932 (n + 1)

end A007932

/-! ## A007932.P15414645096600211157

`∩[A084545(n+1), A007090(n)]`
-/

namespace A007932.P15414645096600211157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007932.P15414645096600211157

namespace A007932

/-- `∩[A084545(n+1), A007090(n)]` -/
def P15414645096600211157.Spec : Prop :=
  ∀ n, (P15414645096600211157.a n : ℤ) = A007932 (n + 1)

end A007932

/-! ## A007932.P6980705352299598023

`∩[A001742(n+1), A084544(n+1)]`
-/

namespace A007932.P6980705352299598023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007932.P6980705352299598023

namespace A007932

/-- `∩[A001742(n+1), A084544(n+1)]` -/
def P6980705352299598023.Spec : Prop :=
  ∀ n, (P6980705352299598023.a n : ℤ) = A007932 (n + 1)

end A007932

/-! ## A007932.P14658014019060865562

`record[gcd(A001742(n+1), A084545(n+1))]`
-/

namespace A007932.P14658014019060865562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001742 (n + 1)) (A084545 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007932.P14658014019060865562

namespace A007932

/-- `record[gcd(A001742(n+1), A084545(n+1))]` -/
def P14658014019060865562.Spec : Prop :=
  ∀ n, (P14658014019060865562.a n : ℤ) = A007932 (n + 1)

end A007932

/-! ## A007932.P17359422896237707513

`A001742(eq[2, A014263(n+2)/A001742(n+1)]+1)`
-/

namespace A007932.P17359422896237707513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014263 (n + 2) : ℚ) / (A001742 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1)

end

end A007932.P17359422896237707513

namespace A007932

/-- `A001742(eq[2, A014263(n+2)/A001742(n+1)]+1)` -/
def P17359422896237707513.Spec : Prop :=
  ∀ n, P17359422896237707513.a n = A007932 (n + 1)

end A007932

/-! ## A007932.P246421660912342053

`∩[A001729(n+1), A007090(n)]`
-/

namespace A007932.P246421660912342053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007932.P246421660912342053

namespace A007932

/-- `∩[A001729(n+1), A007090(n)]` -/
def P246421660912342053.Spec : Prop :=
  ∀ n, (P246421660912342053.a n : ℤ) = A007932 (n + 1)

end A007932

/-! ## A007932.P10138033717230919191

`∩[A057436(n+1), A007090(n)]`
-/

namespace A007932.P10138033717230919191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007932.P10138033717230919191

namespace A007932

/-- `∩[A057436(n+1), A007090(n)]` -/
def P10138033717230919191.Spec : Prop :=
  ∀ n, (P10138033717230919191.a n : ℤ) = A007932 (n + 1)

end A007932

/-! ## A007932.P9445614841240075641

`∩[A084544(n+1), A202267(n+1)]`
-/

namespace A007932.P9445614841240075641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007932.P9445614841240075641

namespace A007932

/-- `∩[A084544(n+1), A202267(n+1)]` -/
def P9445614841240075641.Spec : Prop :=
  ∀ n, (P9445614841240075641.a n : ℤ) = A007932 (n + 1)

end A007932

/-! ## A007932.P3411482420351602162

`∩[A214677(n+1), A007090(n)]`
-/

namespace A007932.P3411482420351602162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007932.P3411482420351602162

namespace A007932

/-- `∩[A214677(n+1), A007090(n)]` -/
def P3411482420351602162.Spec : Prop :=
  ∀ n, (P3411482420351602162.a n : ℤ) = A007932 (n + 1)

end A007932

/-! ## A007932.P5670586915848571463

`∩[A214678(n+1), A007090(n)]`
-/

namespace A007932.P5670586915848571463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007932.P5670586915848571463

namespace A007932

/-- `∩[A214678(n+1), A007090(n)]` -/
def P5670586915848571463.Spec : Prop :=
  ∀ n, (P5670586915848571463.a n : ℤ) = A007932 (n + 1)

end A007932

/-! ## A007932.P2987645555512941376

`∩[A261189(n+1), A007090(n)]`
-/

namespace A007932.P2987645555512941376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007932.P2987645555512941376

namespace A007932

/-- `∩[A261189(n+1), A007090(n)]` -/
def P2987645555512941376.Spec : Prop :=
  ∀ n, (P2987645555512941376.a n : ℤ) = A007932 (n + 1)

end A007932

/-! ## A007932.P12084143772137194965

`∩[A008541(n+1), A084544(n+1)]`
-/

namespace A007932.P12084143772137194965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007932.P12084143772137194965

namespace A007932

/-- `∩[A008541(n+1), A084544(n+1)]` -/
def P12084143772137194965.Spec : Prop :=
  ∀ n, (P12084143772137194965.a n : ℤ) = A007932 (n + 1)

end A007932

/-! ## A007932.P18437089098668302180

`∩[A008541(n+1), A084545(n+1)]`
-/

namespace A007932.P18437089098668302180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007932.P18437089098668302180

namespace A007932

/-- `∩[A008541(n+1), A084545(n+1)]` -/
def P18437089098668302180.Spec : Prop :=
  ∀ n, (P18437089098668302180.a n : ℤ) = A007932 (n + 1)

end A007932

/-!
# A007933: Some permutation of digits is a prime.

The programs for A007933, there is no canonical definition to state claims against.
-/

/-! ## A007933.P5631154604918537043

`∪[A000040(n+1), A007934(n+1)]`
-/

namespace A007933.P5631154604918537043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007933.P5631154604918537043

/-! ## A007933.P17804091776803711485

`∪[A000040(n+1), A007935(n+1)]`
-/

namespace A007933.P17804091776803711485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007933.P17804091776803711485

/-! ## A007933.P3517421684884222466

`∪[A007934(n+1), A029743(n+1)]`
-/

namespace A007933.P3517421684884222466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007933.P3517421684884222466

/-! ## A007933.P15595728176793401786

`∪[A007934(n+1), A039986(n+1)]`
-/

namespace A007933.P15595728176793401786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007933.P15595728176793401786

/-! ## A007933.P17947738426939080403

`∪[A007934(n+1), A049551(n+1)]`
-/

namespace A007933.P17947738426939080403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007933.P17947738426939080403

/-! ## A007933.P17453820205524082366

`∪[A007934(n+1), A049569(n+1)]`
-/

namespace A007933.P17453820205524082366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007933.P17453820205524082366

/-! ## A007933.P1116348157202328848

`∪[A007934(n+1), A049585(n+1)]`
-/

namespace A007933.P1116348157202328848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007933.P1116348157202328848

/-! ## A007933.P17454993771109195754

`∪[A007934(n+1), A050757(n+1)]`
-/

namespace A007933.P17454993771109195754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007933.P17454993771109195754

/-! ## A007933.P13743765881271731357

`∪[A007934(n+1), A052085(n+1)]`
-/

namespace A007933.P13743765881271731357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007933.P13743765881271731357

/-! ## A007933.P8985020903388178389

`∪[A076805(n+1), A007934(n+1)]`
-/

namespace A007933.P8985020903388178389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007933.P8985020903388178389

/-! ## A007933.P3399965725976199906

`∪[A082646(n+1), A007934(n+1)]`
-/

namespace A007933.P3399965725976199906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007933.P3399965725976199906

/-! ## A007933.P12737575010125045686

`lt[1, A039999(A028310(n))+1]`
-/

namespace A007933.P12737575010125045686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007933.P12737575010125045686

/-! ## A007933.P12950976100289534977

`eq[2, A040467(a(A039999(n)))]` with `a(0)=0`
-/

namespace A007933.P12950976100289534977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A040467 (f2 (A039999 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007933.P12950976100289534977

/-! ## A007933.P9753449647591476116

`eq[2, A152669(a(A039999(n)))]` with `a(0)=3`
-/

namespace A007933.P9753449647591476116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A152669 (f2 (A039999 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007933.P9753449647591476116

/-! ## A007933.P9747590516701127437

`eq[2, A000005(a(A039999(n)))]` with `a(0)=4`
-/

namespace A007933.P9747590516701127437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A000005 (f2 (A039999 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007933.P9747590516701127437

/-! ## A007933.P2125320144939946858

`eq[char[A067013(n+1)], A000007(n)]`
-/

namespace A007933.P2125320144939946858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067013 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A007933.P2125320144939946858

/-! ## A007933.P14952848757186355660

`eq[0, A000007(A039999(n+1))]+1`
-/

namespace A007933.P14952848757186355660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A039999 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A007933.P14952848757186355660

/-! ## A007933.P11502514385720826129

`A020725(lt[1, A039999(n+1)+1])`
-/

namespace A007933.P11502514385720826129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A007933.P11502514385720826129

/-! ## A007933.P7593159857853730774

`eq[8, 2*A000010(a(A039999(n)))]` with `a(0)=7`
-/

namespace A007933.P7593159857853730774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f2 =>
  2 * A000010 (f2 (A039999 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007933.P7593159857853730774

/-!
# A007934: Some nontrivial permutation of digits is a prime.

The programs for A007934, there is no canonical definition to state claims against.
-/

/-! ## A007934.P8830009713229367983

`∪[A007935(n+1), A359136(n+1)]`
-/

namespace A007934.P8830009713229367983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007934.P8830009713229367983

/-! ## A007934.P7073259828674507258

`A097312(n+5)%A225814(∑[gcd(3, n)])`
-/

namespace A007934.P7073259828674507258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097312 (n + 5)) (A225814 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A007934.P7073259828674507258

/-! ## A007934.P2756070887558948657

`sqrt(A097312(n+5)^gcd(2, A331931(n+1)))`
-/

namespace A007934.P2756070887558948657
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A097312 (n + 5) ^ Int.gcd 2 (A331931 (n + 1)) : ℝ)

end

end A007934.P2756070887558948657

/-! ## A007934.P15921176455169057512

`A097312(n+5)+A000007(A030545(n))`
-/

namespace A007934.P15921176455169057512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097312 (n + 5) + A000007 (A030545 n).toNat

end

end A007934.P15921176455169057512

/-! ## A007934.P2527268889906004519

`A097312(n+5)+A000007(A178346(n))`
-/

namespace A007934.P2527268889906004519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097312 (n + 5) + A000007 (A178346 n).toNat

end

end A007934.P2527268889906004519

/-!
# A007935: Composite numbers such that some permutation of digits is a prime.

The programs for A007935, there is no canonical definition to state claims against.
-/

/-! ## A007935.P10166474056338048320

`filter[A007934(n+1), A005171(#)]`
-/

namespace A007935.P10166474056338048320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A007935.P10166474056338048320

/-! ## A007935.P14719031184832865971

`filter[A007934(n+1), A066247(#)]`
-/

namespace A007935.P14719031184832865971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A007935.P14719031184832865971

/-! ## A007935.P845045066708255630

`∩[A002808(n+1), A007934(n+1)]`
-/

namespace A007935.P845045066708255630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007935.P845045066708255630

/-! ## A007935.P874158279820160474

`∩[A007934(n+1), A018252(n+1)]`
-/

namespace A007935.P874158279820160474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007935.P874158279820160474

/-! ## A007935.P10844239506458382474

`∩[A007934(n+1), A141468(n+1)]`
-/

namespace A007935.P10844239506458382474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007935.P10844239506458382474

/-! ## A007935.P11218088256487938157

`filter[A007933(n+1), A005171(#)]`
-/

namespace A007935.P11218088256487938157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A007935.P11218088256487938157

/-! ## A007935.P15895625613015578644

`filter[A007933(n+1), A066247(#)]`
-/

namespace A007935.P15895625613015578644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A007935.P15895625613015578644

/-! ## A007935.P2317010858027598704

`∩[A002808(n+1), A007933(n+1)]`
-/

namespace A007935.P2317010858027598704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007935.P2317010858027598704

/-! ## A007935.P4664891921530986273

`∩[A007933(n+1), A018252(n+1)]`
-/

namespace A007935.P4664891921530986273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007935.P4664891921530986273

/-! ## A007935.P9970649128507522686

`∩[A007933(n+1), A141468(n+1)]`
-/

namespace A007935.P9970649128507522686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007935.P9970649128507522686

/-! ## A007935.P6342326279201088172

`∩[A007933(n+1), A257586(n+1)]`
-/

namespace A007935.P6342326279201088172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007935.P6342326279201088172

/-! ## A007935.P6302748316373617211

`∩[A007934(n+1), A257586(n+1)]`
-/

namespace A007935.P6302748316373617211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007935.P6302748316373617211

/-! ## A007935.P6594344817374441300

`∩[A007933(n+1), A062973(n+1)]`
-/

namespace A007935.P6594344817374441300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007935.P6594344817374441300

/-! ## A007935.P8861305040782366936

`∩[A007934(n+1), A062973(n+1)]`
-/

namespace A007935.P8861305040782366936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007935.P8861305040782366936

/-! ## A007935.P12003797357873472877

`∩[A007933(n+1), A343311(n+1)]`
-/

namespace A007935.P12003797357873472877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007935.P12003797357873472877

/-! ## A007935.P1341472607967380275

`∩[A007934(n+1), A343311(n+1)]`
-/

namespace A007935.P1341472607967380275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007935.P1341472607967380275

/-! ## A007935.P14025015064027216537

`∩[A007933(n+1), A387319(n+1)]`
-/

namespace A007935.P14025015064027216537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007935.P14025015064027216537

/-! ## A007935.P15824836411948142092

`∩[A007934(n+1), A387319(n+1)]`
-/

namespace A007935.P15824836411948142092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007935.P15824836411948142092

/-! ## A007935.P7028968309007944449

`∩[A007934(n+1), A176423(n+1)]`
-/

namespace A007935.P7028968309007944449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007935.P7028968309007944449

/-! ## A007935.P7916584054329803400

`∩[A007933(n+1), A056653(n+1)]`
-/

namespace A007935.P7916584054329803400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007935.P7916584054329803400

/-!
# A007936: Some permutation of digits is a square.

The programs for A007936, there is no canonical definition to state claims against.
-/

/-! ## A007936.P13657341264832169572

`∪[(n+1)², A007937(n+1)]`
-/

namespace A007936.P13657341264832169572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007936.P13657341264832169572

/-! ## A007936.P13075105450143658189

`∪[(n+1)², A007938(n+1)]`
-/

namespace A007936.P13075105450143658189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007936.P13075105450143658189

/-! ## A007936.P1563408605757095412

`∪[A007937(n+1), A235993(n+1)]`
-/

namespace A007936.P1563408605757095412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007936.P1563408605757095412

/-! ## A007936.P9504177823670185485

`∪[A007938(n+1), A235993(n+1)]`
-/

namespace A007936.P9504177823670185485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007936.P9504177823670185485

/-! ## A007936.P13140094355686066288

`lt[acot(n), A062892(n)]`
-/

namespace A007936.P13140094355686066288
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062892 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A007936.P13140094355686066288

/-! ## A007936.P1003106324954721270

`lt[0, A062892(n+1)]+1`
-/

namespace A007936.P1003106324954721270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062892 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A007936.P1003106324954721270

/-! ## A007936.P16369314307200311904

`lt[A000007(n), A062892(n)]`
-/

namespace A007936.P16369314307200311904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062892 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007936.P16369314307200311904

/-! ## A007936.P1919971169221145306

`lt[A000038(n), A062892(n)]`
-/

namespace A007936.P1919971169221145306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062892 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007936.P1919971169221145306

/-! ## A007936.P9881148878481964226

`lt[A169585(n+1), A062892(n)]`
-/

namespace A007936.P9881148878481964226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062892 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007936.P9881148878481964226

/-! ## A007936.P12671062628838325716

`lt[1, A004277(n)*A062892(n)]`
-/

namespace A007936.P12671062628838325716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n * A062892 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007936.P12671062628838325716

/-! ## A007936.P412636393638633099

`lt[1, A014105(n)*A062892(n)]`
-/

namespace A007936.P412636393638633099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n * A062892 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007936.P412636393638633099

/-! ## A007936.P8711213775689130874

`lt[1, A062892(n)*A152743(n)]`
-/

namespace A007936.P8711213775689130874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062892 n * A152743 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007936.P8711213775689130874

/-! ## A007936.P16775678771463656403

`eq[gcd(5, A062892(n)), A057427(n)]`
-/

namespace A007936.P16775678771463656403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A062892 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007936.P16775678771463656403

/-! ## A007936.P11590817632593514474

`lt[A316866(n), n*A062892(n)]`
-/

namespace A007936.P11590817632593514474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A062892 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007936.P11590817632593514474

/-! ## A007936.P15233484173546336497

`lt[(n-A062892(n))², A000290(n)]`
-/

namespace A007936.P15233484173546336497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A062892 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007936.P15233484173546336497

/-! ## A007936.P2941004698320568569

`lt[A169585(n), (A062892(n)-A169585(n))²]`
-/

namespace A007936.P2941004698320568569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062892 n - A169585 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007936.P2941004698320568569

/-! ## A007936.P12435051057590596333

`eq[1, A057427(n*A062892(n))]`
-/

namespace A007936.P12435051057590596333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 ((n : ℤ) * A062892 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007936.P12435051057590596333

/-! ## A007936.P9796410353487251246

`lt[A169585(2*n), A062892(n)²]`
-/

namespace A007936.P9796410353487251246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062892 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007936.P9796410353487251246

/-! ## A007936.P18021406260925348315

`lt[A000035(A004277(n)), A062892(n)]`
-/

namespace A007936.P18021406260925348315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062892 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007936.P18021406260925348315

/-! ## A007936.P3313492222983784661

`lt[1, A062892(n)*A310526(n)]`
-/

namespace A007936.P3313492222983784661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062892 n * A310526 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007936.P3313492222983784661

/-!
# A007937: Nonsquares such that some permutation of digits is a square.

The programs for A007937, there is no canonical definition to state claims against.
-/

/-! ## A007937.P2724177674094318843

`filter[A007936(n+1), A049240(#)]`
-/

namespace A007937.P2724177674094318843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A007937.P2724177674094318843

/-! ## A007937.P6629766871793649676

`filter[A007938(n+1), A049240(#)]`
-/

namespace A007937.P6629766871793649676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A007937.P6629766871793649676

/-! ## A007937.P9936787227865584467

`∩[A007936(n+1), A375166(n+1)]`
-/

namespace A007937.P9936787227865584467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007937.P9936787227865584467

/-! ## A007937.P6328948020477082301

`∩[A007938(n+1), A375166(n+1)]`
-/

namespace A007937.P6328948020477082301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007937.P6328948020477082301

/-! ## A007937.P13806341712421196369

`∩[A000037(n+1), A007936(n+1)]`
-/

namespace A007937.P13806341712421196369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007937.P13806341712421196369

/-! ## A007937.P4429285759657623459

`∩[A000037(n+1), A007938(n+1)]`
-/

namespace A007937.P4429285759657623459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007937.P4429285759657623459

/-! ## A007937.P4845650103955182153

`∩[A007938(n+1), A164514(n+1)]`
-/

namespace A007937.P4845650103955182153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007937.P4845650103955182153

/-! ## A007937.P17325817779830906869

`lt[A000122(n)², A062892(n)]`
-/

namespace A007937.P17325817779830906869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062892 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007937.P17325817779830906869

/-! ## A007937.P16853001307575912942

`filter[A007936(n+1), A267594(#)]`
-/

namespace A007937.P16853001307575912942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A007937.P16853001307575912942

/-! ## A007937.P441976589466164744

`filter[A007938(n+1), A267594(#)]`
-/

namespace A007937.P441976589466164744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A007937.P441976589466164744

/-! ## A007937.P970845573961215321

`filter[A007936(n+1), A267635(#)]`
-/

namespace A007937.P970845573961215321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A007937.P970845573961215321

/-! ## A007937.P7244007356012161345

`filter[A007938(n+1), A267635(#)]`
-/

namespace A007937.P7244007356012161345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A007937.P7244007356012161345

/-! ## A007937.P16647860360407015316

`lt[A000122(n), A062892(A000122(n)+n)]`
-/

namespace A007937.P16647860360407015316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062892 (A000122 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007937.P16647860360407015316

/-! ## A007937.P9631970453141504955

`eq[A000038(n)^A062892(n), A000122(n)]`
-/

namespace A007937.P9631970453141504955
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) ^ (A062892 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A007937.P9631970453141504955

/-! ## A007937.P16264920253327832041

`eq[A000038(n)^A062892(n), A010052(n)]`
-/

namespace A007937.P16264920253327832041
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) ^ (A062892 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A007937.P16264920253327832041

/-! ## A007937.P15147082766952180735

`eq[A037213(n)^A062892(n), A000007(n)]`
-/

namespace A007937.P15147082766952180735
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037213 n : ℚ) ^ (A062892 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A007937.P15147082766952180735

/-! ## A007937.P1596639140259061063

`eq[A000038(n*A062892(n)), A000122(n)]`
-/

namespace A007937.P1596639140259061063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 ((n : ℤ) * A062892 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007937.P1596639140259061063

/-! ## A007937.P12013455628695206934

`eq[A000038(n*A062892(n)), A010052(n)]`
-/

namespace A007937.P12013455628695206934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 ((n : ℤ) * A062892 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007937.P12013455628695206934

/-! ## A007937.P7527918014260032546

`eq[A000007(n*A062892(n)), A037213(n)]`
-/

namespace A007937.P7527918014260032546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A062892 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007937.P7527918014260032546

/-!
# A007938: Some nontrivial permutation of digits is a square.

The programs for A007938, there is no canonical definition to state claims against.
-/

/-! ## A007938.P7679881732406301167

`A102837(A087051(n)+4)`
-/

namespace A007938.P7679881732406301167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102837 (A087051 n + 4).toNat

end

end A007938.P7679881732406301167

/-! ## A007938.P4921249551548426845

`A356417(A087051(n)+5)`
-/

namespace A007938.P4921249551548426845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356417 (A087051 n + 5).toNat

end

end A007938.P4921249551548426845

/-! ## A007938.P3232524692267542391

`filter[A102837(n+1), A377191(#)]`
-/

namespace A007938.P3232524692267542391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377191 (f1 j).toNat = 1) n)

end

end A007938.P3232524692267542391

/-! ## A007938.P17324634978119726835

`filter[A356417(n+1), A377191(#)]`
-/

namespace A007938.P17324634978119726835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377191 (f1 j).toNat = 1) n)

end

end A007938.P17324634978119726835

/-! ## A007938.P16781118241185920561

`∩[A102837(n+1), A257604(n+1)]`
-/

namespace A007938.P16781118241185920561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257604 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007938.P16781118241185920561

/-!
# A007939: Some permutation of digits is a cube.

The programs for A007939, there is no canonical definition to state claims against.
-/

/-! ## A007939.P3698025073510653336

`∪[A007940(n+1), A235994(n+1)]`
-/

namespace A007939.P3698025073510653336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007940 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007939.P3698025073510653336

/-! ## A007939.P4066446295479594729

`∪[A007941(n+1), A235994(n+1)]`
-/

namespace A007939.P4066446295479594729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007939.P4066446295479594729

/-!
# A007940: Noncubes such that some permutation of digits is a cube.

The programs for A007940, there is no canonical definition to state claims against.
-/

/-! ## A007940.P16561909621401365076

`∩[A007412(n+1), A007939(n+1)]`
-/

namespace A007940.P16561909621401365076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007940.P16561909621401365076

/-! ## A007940.P9913828978994572767

`∩[A007412(n+1), A007941(n+1)]`
-/

namespace A007940.P9913828978994572767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007940.P9913828978994572767

/-! ## A007940.P8179823458604603123

`∩[A007941(n+1), A147819(n+1)]`
-/

namespace A007940.P8179823458604603123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007940.P8179823458604603123

/-! ## A007940.P14700997111376456684

`∩[A007941(n+1), A227180(n+1)]`
-/

namespace A007940.P14700997111376456684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007940.P14700997111376456684

/-!
# A007941: Some nontrivial permutation of digits is a cube.

The programs for A007941, there is no canonical definition to state claims against.
-/

/-! ## A007941.P17657774494228643251

`A007940(n+1)-A007949(A063074(n))`
-/

namespace A007941.P17657774494228643251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007940 (n + 1) - A007949 (A063074 n).toNat

end

end A007941.P17657774494228643251

/-! ## A007941.P5404872362407669935

`A007940(n+1)-A193238(A004189(n))`
-/

namespace A007941.P5404872362407669935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007940 (n + 1) - A193238 (A004189 n).toNat

end

end A007941.P5404872362407669935

/-!
# A007942: Decimal concatenation of sequence (n, n-1, ..., 2, 1, 2, ..., n-1, n).

The programs for A007942, there is no canonical definition to state claims against.
-/

/-! ## A007942.P877589377023034824

`A083828(n+1)+A007907(A316492(n+1))`
-/

namespace A007942.P877589377023034824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083828 (n + 1) + A007907 (A316492 (n + 1)).toNat

end

end A007942.P877589377023034824

/-!
# A007943: Concatenation of sequence (1,3,..,2n-1,2n,2n-2,..,2).

The programs for A007943, there is no canonical definition to state claims against.
-/

/-! ## A007943.P2386760852311705183

`A089370(2*(n+1))`
-/

namespace A007943.P2386760852311705183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089370 (2 * (n + 1))

end

end A007943.P2386760852311705183

/-!
# A007944: a(n) is the largest even number k such that 6, 8, ..., k are sums of 2 of first n odd primes.

The programs for A007944, there is no canonical definition to state claims against.
-/

/-! ## A007944.P14664848196304840137

`A090259(n+2)-2`
-/

namespace A007944.P14664848196304840137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090259 (n + 2) - 2

end

end A007944.P14664848196304840137

/-! ## A007944.P2944542003383933750

`A001489(n+2)+A090259(n+2)+n`
-/

namespace A007944.P2944542003383933750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (n + 2) + (A090259 (n + 2) + (n : ℤ))

end

end A007944.P2944542003383933750

/-! ## A007944.P814581844402885398

`A046666(A090259(n+2))`
-/

namespace A007944.P814581844402885398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046666 (A090259 (n + 2)).toNat

end

end A007944.P814581844402885398

/-! ## A007944.P4017641915048443049

`A065168(lcm(2, A090259(n+2)))`
-/

namespace A007944.P4017641915048443049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065168 (Int.lcm 2 (A090259 (n + 2)))

end

end A007944.P4017641915048443049

/-! ## A007944.P17187138942043386460

`A065168(A090259(n+1)+Δ[A090259(n+1)])`
-/

namespace A007944.P17187138942043386460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065168 (A090259 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A007944.P17187138942043386460

/-!
# A007945: Expansion of g.f. (2-x-2*x^2)/((1-x)*(1-x+x^2)).

The programs for A007945, the canonical program `A007945.P7341183505095961370` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007945 has offset 0).

The definition of A007945 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2-x-2x^2)/(1-2x+2x^2-x^3))` (program `A007945.P7341183505095961370`, by `A007945.P7341183505095961370.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007945.P7341183505095961370

`ogf((2-x-2x^2)/(1-2x+2x^2-x^3))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007945

/-- `ogf((2-x-2x^2)/(1-2x+2x^2-x^3))` -/
def P7341183505095961370.Spec : Prop :=
  ∀ n, P7341183505095961370.a n = A007945 n

theorem P7341183505095961370.correct : P7341183505095961370.Spec := by
  intro n
  simp only [A007945]

end A007945

/-!
# A007946: a(n) = 6*(2*n+1)! / ((n!)^2*(n+3)).

The programs for A007946, the canonical program `A007946.P13750112167296804369` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007946 has offset 0).

The definition of A007946 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007946.P11609789251516420730

`A001791(n+1)+A002054(n+1)`
-/

namespace A007946.P11609789251516420730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (n + 1) + A002054 (n + 1)

end

end A007946.P11609789251516420730

namespace A007946

/-- `A001791(n+1)+A002054(n+1)` -/
def P11609789251516420730.Spec : Prop :=
  ∀ n, P11609789251516420730.a n = A007946 n

end A007946

/-! ## A007946.P6168443126968869036

`A242986(2*n)`
-/

namespace A007946.P6168443126968869036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242986 (2 * n)

end

end A007946.P6168443126968869036

namespace A007946

/-- `A242986(2*n)` -/
def P6168443126968869036.Spec : Prop :=
  ∀ n, P6168443126968869036.a n = A007946 n

end A007946

/-! ## A007946.P9222361482718385384

`C(2*n+2, n)+C(2*n+3, n)`
-/

namespace A007946.P9222361482718385384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 2) n + Nat.choose (2 * n + 3) n

end

end A007946.P9222361482718385384

namespace A007946

/-- `C(2*n+2, n)+C(2*n+3, n)` -/
def P9222361482718385384.Spec : Prop :=
  ∀ n, (P9222361482718385384.a n : ℤ) = A007946 n

end A007946

/-! ## A007946.P13750112167296804369

`6*(2*n+1)!/(n!²*(n+3))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007946

/-- `6*(2*n+1)!/(n!²*(n+3))` -/
def P13750112167296804369.Spec : Prop :=
  ∀ n, P13750112167296804369.a n = (A007946 n : ℚ)

end A007946

/-! ## A007946.P18160334388869229277

`Δ[A191307(Δ[n²])]`
-/

namespace A007946.P18160334388869229277
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191307 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007946.P18160334388869229277

namespace A007946

/-- `Δ[A191307(Δ[n²])]` -/
def P18160334388869229277.Spec : Prop :=
  ∀ n, P18160334388869229277.a n = A007946 n

end A007946

/-! ## A007946.P4323166899495468291

`(n+2)*∑[A026012(n)]`
-/

namespace A007946.P4323166899495468291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007946.P4323166899495468291

namespace A007946

/-- `(n+2)*∑[A026012(n)]` -/
def P4323166899495468291.Spec : Prop :=
  ∀ n, P4323166899495468291.a n = A007946 n

end A007946

/-! ## A007946.P17785993835683809574

`(n+2)*A000245(n+1)`
-/

namespace A007946.P17785993835683809574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000245 (n + 1)

end

end A007946.P17785993835683809574

namespace A007946

/-- `(n+2)*A000245(n+1)` -/
def P17785993835683809574.Spec : Prop :=
  ∀ n, P17785993835683809574.a n = A007946 n

end A007946

/-! ## A007946.P2816771488200828262

`(n+2)*A071724(n+1)`
-/

namespace A007946.P2816771488200828262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A071724 (n + 1)

end

end A007946.P2816771488200828262

namespace A007946

/-- `(n+2)*A071724(n+1)` -/
def P2816771488200828262.Spec : Prop :=
  ∀ n, P2816771488200828262.a n = A007946 n

end A007946

/-! ## A007946.P4498604602810025114

`abs(Δ[A191307(2*n+1)])`
-/

namespace A007946.P4498604602810025114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A007946.P4498604602810025114

namespace A007946

/-- `abs(Δ[A191307(2*n+1)])` -/
def P4498604602810025114.Spec : Prop :=
  ∀ n, P4498604602810025114.a n = A007946 n

end A007946

/-! ## A007946.P16855529737908950889

`(n+2)*A026008(Δ[n²])`
-/

namespace A007946.P16855529737908950889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A026008 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A007946.P16855529737908950889

namespace A007946

/-- `(n+2)*A026008(Δ[n²])` -/
def P16855529737908950889.Spec : Prop :=
  ∀ n, P16855529737908950889.a n = A007946 n

end A007946

/-! ## A007946.P5190994317737608131

`∑[n+1]*A007054(n+1)`
-/

namespace A007946.P5190994317737608131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A007054 (n + 1)

end

end A007946.P5190994317737608131

namespace A007946

/-- `∑[n+1]*A007054(n+1)` -/
def P5190994317737608131.Spec : Prop :=
  ∀ n, P5190994317737608131.a n = A007946 n

end A007946

/-! ## A007946.P11572492437087448017

`Δ[A000108(n+1)]*(n+2)`
-/

namespace A007946.P11572492437087448017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (n + 2 : ℤ)

end

end A007946.P11572492437087448017

namespace A007946

/-- `Δ[A000108(n+1)]*(n+2)` -/
def P11572492437087448017.Spec : Prop :=
  ∀ n, P11572492437087448017.a n = A007946 n

end A007946

/-! ## A007946.P10741487787758381213

`∑[n+1]*A091712(n+3)`
-/

namespace A007946.P10741487787758381213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A091712 (n + 3)

end

end A007946.P10741487787758381213

namespace A007946

/-- `∑[n+1]*A091712(n+3)` -/
def P10741487787758381213.Spec : Prop :=
  ∀ n, P10741487787758381213.a n = A007946 n

end A007946

/-! ## A007946.P1930254132688068819

`(n+2)*Δ[A120304(n+1)]`
-/

namespace A007946.P1930254132688068819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A007946.P1930254132688068819

namespace A007946

/-- `(n+2)*Δ[A120304(n+1)]` -/
def P1930254132688068819.Spec : Prop :=
  ∀ n, P1930254132688068819.a n = A007946 n

end A007946

/-! ## A007946.P14606525700567159217

`(n+2)*Δ[A120588(n+2)]`
-/

namespace A007946.P14606525700567159217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A007946.P14606525700567159217

namespace A007946

/-- `(n+2)*Δ[A120588(n+2)]` -/
def P14606525700567159217.Spec : Prop :=
  ∀ n, P14606525700567159217.a n = A007946 n

end A007946

/-! ## A007946.P11655058766357593636

`(n+2)*∑[A026021(2*n)]`
-/

namespace A007946.P11655058766357593636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026021 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007946.P11655058766357593636

namespace A007946

/-- `(n+2)*∑[A026021(2*n)]` -/
def P11655058766357593636.Spec : Prop :=
  ∀ n, P11655058766357593636.a n = A007946 n

end A007946

/-! ## A007946.P8146848952290363219

`(n+1)/2*A038629(n+1)`
-/

namespace A007946.P8146848952290363219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A038629 (n + 1) : ℚ)

end

end A007946.P8146848952290363219

namespace A007946

/-- `(n+1)/2*A038629(n+1)` -/
def P8146848952290363219.Spec : Prop :=
  ∀ n, P8146848952290363219.a n = (A007946 n : ℚ)

end A007946

/-! ## A007946.P13892283831806000669

`(n+2)*A071721(n+1)/2`
-/

namespace A007946.P13892283831806000669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * A071721 (n + 1) : ℚ) / 2

end

end A007946.P13892283831806000669

namespace A007946

/-- `(n+2)*A071721(n+1)/2` -/
def P13892283831806000669.Spec : Prop :=
  ∀ n, P13892283831806000669.a n = (A007946 n : ℚ)

end A007946

/-! ## A007946.P3945298085041765488

`A262768(n+1)+A051960(n)`
-/

namespace A007946.P3945298085041765488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262768 (n + 1) + A051960 n

end

end A007946.P3945298085041765488

namespace A007946

/-- `A262768(n+1)+A051960(n)` -/
def P3945298085041765488.Spec : Prop :=
  ∀ n, P3945298085041765488.a n = A007946 n

end A007946

/-! ## A007946.P15196811596251096461

`Δ[A001791(n+1)-A014138(n)]`
-/

namespace A007946.P15196811596251096461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (n + 1) - A014138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007946.P15196811596251096461

namespace A007946

/-- `Δ[A001791(n+1)-A014138(n)]` -/
def P15196811596251096461.Spec : Prop :=
  ∀ n, P15196811596251096461.a n = A007946 n

end A007946

/-!
# A007947: Largest squarefree number dividing n: the squarefree kernel of n, rad(n), radical of n.

The programs for A007947, the canonical program `A007947.P6860725317735988916` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007947 has offset 1).

The definition of A007947 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A007947.anchor (n : ℕ) (hn : 1 ≤ n) : A007947 n = ((UniqueFactorizationMonoid.radical n : ℕ) : ℤ)` in `Proof.A007.A007947`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007947.P7376284118562227654

`(n+1)/A003557(n+1)`
-/

namespace A007947.P7376284118562227654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A003557 (n + 1) : ℚ)

end

end A007947.P7376284118562227654

namespace A007947

/-- `(n+1)/A003557(n+1)` -/
def P7376284118562227654.Spec : Prop :=
  ∀ n, P7376284118562227654.a n = (A007947 (n + 1) : ℚ)

end A007947

/-! ## A007947.P5318922725074606312

`A020639(n+1)*a(A028234(n+1)-1)` with `a(0)=1`
-/

namespace A007947.P5318922725074606312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020639 (n + 1) * a (A028234 (n + 1) - 1).toNat

end

end A007947.P5318922725074606312

namespace A007947

/-- `A020639(n+1)*a(A028234(n+1)-1)` -/
def P5318922725074606312.Spec : Prop :=
  ∀ n, P5318922725074606312.a n = A007947 (n + 1)

end A007947

/-! ## A007947.P17571588519930538945

`A019565(A087207(n+1))`
-/

namespace A007947.P17571588519930538945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A087207 (n + 1)).toNat

end

end A007947.P17571588519930538945

namespace A007947

/-- `A019565(A087207(n+1))` -/
def P17571588519930538945.Spec : Prop :=
  ∀ n, P17571588519930538945.a n = A007947 (n + 1)

end A007947

/-! ## A007947.P6860725317735988916

`∏{p}[n+1, #]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007947

/-- `∏{p}[n+1, #]` -/
def P6860725317735988916.Spec : Prop :=
  ∀ n, (P6860725317735988916.a n : ℤ) = A007947 (n + 1)

theorem P6860725317735988916.correct : P6860725317735988916.Spec := by
  intro n
  simp only [A007947, Nat.add_sub_cancel]

end A007947

/-! ## A007947.P2541065594246245334

`exp(∑{p}[n+1, log(#)])`
-/

namespace A007947.P2541065594246245334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ p ∈ Nat.primeFactors (f1 n), Real.log (p : ℝ))

end

end A007947.P2541065594246245334

namespace A007947

/-- `exp(∑{p}[n+1, log(#)])` -/
def P2541065594246245334.Spec : Prop :=
  ∀ n, P2541065594246245334.a n = (A007947 (n + 1) : ℝ)

end A007947

/-! ## A007947.P2945675499131222528

`2^∑{p}[n+1, log2(#)]`
-/

namespace A007947.P2945675499131222528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (p : ℝ))

end

end A007947.P2945675499131222528

namespace A007947

/-- `2^∑{p}[n+1, log2(#)]` -/
def P2945675499131222528.Spec : Prop :=
  ∀ n, P2945675499131222528.a n = (A007947 (n + 1) : ℝ)

end A007947

/-! ## A007947.P3061608611626793225

`abs(∏{p}[2*n-(n-1), -#])`
-/

namespace A007947.P3061608611626793225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-(p : ℤ))|

end

end A007947.P3061608611626793225

namespace A007947

/-- `abs(∏{p}[2*n-(n-1), -#])` -/
def P3061608611626793225.Spec : Prop :=
  ∀ n, P3061608611626793225.a n = A007947 (n + 1)

end A007947

/-! ## A007947.P8076254109104453819

`sqrt(∏{p}[2*n-(n-1), #²])`
-/

namespace A007947.P8076254109104453819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2 : ℕ) : ℝ)

end

end A007947.P8076254109104453819

namespace A007947

/-- `sqrt(∏{p}[2*n-(n-1), #²])` -/
def P8076254109104453819.Spec : Prop :=
  ∀ n, P8076254109104453819.a n = (A007947 (n + 1) : ℝ)

end A007947

/-! ## A007947.P3114494224761057536

`abs(A062953(n+1))`
-/

namespace A007947.P3114494224761057536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062953 (n + 1)|

end

end A007947.P3114494224761057536

namespace A007947

/-- `abs(A062953(n+1))` -/
def P3114494224761057536.Spec : Prop :=
  ∀ n, P3114494224761057536.a n = A007947 (n + 1)

end A007947

/-! ## A007947.P12838208597117595761

`sqrt(A078615(n+1))`
-/

namespace A007947.P12838208597117595761
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A078615 (n + 1) : ℝ)

end

end A007947.P12838208597117595761

namespace A007947

/-- `sqrt(A078615(n+1))` -/
def P12838208597117595761.Spec : Prop :=
  ∀ n, P12838208597117595761.a n = (A007947 (n + 1) : ℝ)

end A007947

/-! ## A007947.P17616613721223218293

`A075423(n+1)+1`
-/

namespace A007947.P17616613721223218293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075423 (n + 1) + 1

end

end A007947.P17616613721223218293

namespace A007947

/-- `A075423(n+1)+1` -/
def P17616613721223218293.Spec : Prop :=
  ∀ n, P17616613721223218293.a n = A007947 (n + 1)

theorem P17616613721223218293.correct : P17616613721223218293.Spec := by
  intro n
  simp only [A007947, Nat.add_sub_cancel, A007947.P17616613721223218293.a, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A075423, A075423.P4628253282240293727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007947

/-! ## A007947.P2882581883694112049

`A076618(n+1)-1`
-/

namespace A007947.P2882581883694112049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076618 (n + 1) - 1

end

end A007947.P2882581883694112049

namespace A007947

/-- `A076618(n+1)-1` -/
def P2882581883694112049.Spec : Prop :=
  ∀ n, P2882581883694112049.a n = A007947 (n + 1)

theorem P2882581883694112049.correct : P2882581883694112049.Spec := by
  intro n
  simp only [A007947, Nat.add_sub_cancel, A007947.P2882581883694112049.a, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A076618, A076618.P8099091245670450071.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007947

/-! ## A007947.P10387143942199901439

`gcd(n+1, A144845(n))`
-/

namespace A007947.P10387143942199901439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A144845 n)

end

end A007947.P10387143942199901439

namespace A007947

/-- `gcd(n+1, A144845(n))` -/
def P10387143942199901439.Spec : Prop :=
  ∀ n, (P10387143942199901439.a n : ℤ) = A007947 (n + 1)

end A007947

/-! ## A007947.P2676090641389275645

`∏{d}[n+1, A089026(#)]`
-/

namespace A007947.P2676090641389275645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A089026 d

end

end A007947.P2676090641389275645

namespace A007947

/-- `∏{d}[n+1, A089026(#)]` -/
def P2676090641389275645.Spec : Prop :=
  ∀ n, P2676090641389275645.a n = A007947 (n + 1)

end A007947

/-! ## A007947.P4436061765878599373

`1-A066503(n+1)+n`
-/

namespace A007947.P4436061765878599373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A066503 (n + 1) + (n : ℤ)

end

end A007947.P4436061765878599373

namespace A007947

/-- `1-A066503(n+1)+n` -/
def P4436061765878599373.Spec : Prop :=
  ∀ n, P4436061765878599373.a n = A007947 (n + 1)

theorem P4436061765878599373.correct : P4436061765878599373.Spec := by
  intro n
  simp only [A007947, Nat.add_sub_cancel, A007947.P4436061765878599373.a, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A066503, A066503.P17588364347287804265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007947

/-! ## A007947.P4130430595405356349

`A073353(n+1)-(n+1)`
-/

namespace A007947.P4130430595405356349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073353 (n + 1) - (n + 1 : ℤ)

end

end A007947.P4130430595405356349

namespace A007947

/-- `A073353(n+1)-(n+1)` -/
def P4130430595405356349.Spec : Prop :=
  ∀ n, P4130430595405356349.a n = A007947 (n + 1)

theorem P4130430595405356349.correct : P4130430595405356349.Spec := by
  intro n
  simp only [A007947, Nat.add_sub_cancel, A007947.P4130430595405356349.a, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A073353, A073353.P4516188460080726977.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007947

/-! ## A007947.P1544328703141342300

`A064549(n+1)/(n+1)`
-/

namespace A007947.P1544328703141342300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064549 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A007947.P1544328703141342300

namespace A007947

/-- `A064549(n+1)/(n+1)` -/
def P1544328703141342300.Spec : Prop :=
  ∀ n, P1544328703141342300.a n = (A007947 (n + 1) : ℚ)

end A007947

/-! ## A007947.P6000958977024512583

`A355038(n+1)%(n+2)`
-/

namespace A007947.P6000958977024512583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355038 (n + 1)) (n + 2 : ℤ)

end

end A007947.P6000958977024512583

namespace A007947

/-- `A355038(n+1)%(n+2)` -/
def P6000958977024512583.Spec : Prop :=
  ∀ n, P6000958977024512583.a n = A007947 (n + 1)

end A007947

/-! ## A007947.P16285436396894238732

`A078636(n)/a(n-1)` with `a(0)=1`
-/

namespace A007947.P16285436396894238732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A078636 n : ℚ) / a (n - 1)

end

end A007947.P16285436396894238732

namespace A007947

/-- `A078636(n)/a(n-1)` -/
def P16285436396894238732.Spec : Prop :=
  ∀ n, P16285436396894238732.a n = (A007947 (n + 1) : ℚ)

end A007947

/-! ## A007947.P18307578431533962633

`(n+1)/(n+1-A010848(n+1))`
-/

namespace A007947.P18307578431533962633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((n + 1 : ℤ) - A010848 (n + 1) : ℚ)

end

end A007947.P18307578431533962633

namespace A007947

/-- `(n+1)/(n+1-A010848(n+1))` -/
def P18307578431533962633.Spec : Prop :=
  ∀ n, P18307578431533962633.a n = (A007947 (n + 1) : ℚ)

end A007947

/-!
# A007948: Largest cubefree number dividing n.

The programs for A007948, the canonical program `A007948.P9205423498154585874` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007948 has offset 1).

The definition of A007948 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007948.P13903999332151217003

`(n+1)/A062378(n+1)`
-/

namespace A007948.P13903999332151217003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A062378 (n + 1) : ℚ)

end

end A007948.P13903999332151217003

namespace A007948

/-- `(n+1)/A062378(n+1)` -/
def P13903999332151217003.Spec : Prop :=
  ∀ n, P13903999332151217003.a n = (A007948 (n + 1) : ℚ)

end A007948

/-! ## A007948.P9205423498154585874

`A071773(n+1)*A007947(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A007948

/-- `A071773(n+1)*A007947(n+1)` -/
def P9205423498154585874.Spec : Prop :=
  ∀ n, P9205423498154585874.a n = A007948 (n + 1)

theorem P9205423498154585874.correct : P9205423498154585874.Spec := by
  intro n
  simp only [A007948, Nat.add_sub_cancel]

end A007948

/-! ## A007948.P4313338210219065195

`(n+1)/A003557(A003557(n+1))`
-/

namespace A007948.P4313338210219065195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A003557 (A003557 (n + 1)).toNat : ℚ)

end

end A007948.P4313338210219065195

namespace A007948

/-- `(n+1)/A003557(A003557(n+1))` -/
def P4313338210219065195.Spec : Prop :=
  ∀ n, P4313338210219065195.a n = (A007948 (n + 1) : ℚ)

end A007948

/-! ## A007948.P11415078223619850164

`∏{p}[n+1, gcd(n+1, #²)]`
-/

namespace A007948.P11415078223619850164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd (n + 1) (p ^ 2)

end

end A007948.P11415078223619850164

namespace A007948

/-- `∏{p}[n+1, gcd(n+1, #²)]` -/
def P11415078223619850164.Spec : Prop :=
  ∀ n, (P11415078223619850164.a n : ℤ) = A007948 (n + 1)

end A007948

/-! ## A007948.P5314434482752650641

`A097377(n+1)-1`
-/

namespace A007948.P5314434482752650641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097377 (n + 1) - 1

end

end A007948.P5314434482752650641

namespace A007948

/-- `A097377(n+1)-1` -/
def P5314434482752650641.Spec : Prop :=
  ∀ n, P5314434482752650641.a n = A007948 (n + 1)

theorem P5314434482752650641.correct : P5314434482752650641.Spec := by
  intro n
  simp only [A007948, Nat.add_sub_cancel, A007948.P5314434482752650641.a, A007948.P9205423498154585874.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A071773, A071773.P10551485978970375506.a, A097377, A097377.P4336530497269463132.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007948

/-! ## A007948.P13874297523465372258

`gcd(n+1, A078615(n+1))`
-/

namespace A007948.P13874297523465372258
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A078615 (n + 1))

end

end A007948.P13874297523465372258

namespace A007948

/-- `gcd(n+1, A078615(n+1))` -/
def P13874297523465372258.Spec : Prop :=
  ∀ n, (P13874297523465372258.a n : ℤ) = A007948 (n + 1)

end A007948

/-! ## A007948.P12569310392406928165

`A353897(A058035(n+1))`
-/

namespace A007948.P12569310392406928165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353897 (A058035 (n + 1)).toNat

end

end A007948.P12569310392406928165

namespace A007948

/-- `A353897(A058035(n+1))` -/
def P12569310392406928165.Spec : Prop :=
  ∀ n, P12569310392406928165.a n = A007948 (n + 1)

end A007948

/-! ## A007948.P16711977822184937406

`A066990(A353897(n+1))`
-/

namespace A007948.P16711977822184937406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 (A353897 (n + 1)).toNat

end

end A007948.P16711977822184937406

namespace A007948

/-- `A066990(A353897(n+1))` -/
def P16711977822184937406.Spec : Prop :=
  ∀ n, P16711977822184937406.a n = A007948 (n + 1)

end A007948

/-! ## A007948.P5278036330526636516

`gcd(A007947(n+1)², A131738(n))`
-/

namespace A007948.P5278036330526636516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007947 (n + 1) ^ 2) (A131738 n)

end

end A007948.P5278036330526636516

namespace A007948

/-- `gcd(A007947(n+1)², A131738(n))` -/
def P5278036330526636516.Spec : Prop :=
  ∀ n, (P5278036330526636516.a n : ℤ) = A007948 (n + 1)

end A007948

/-! ## A007948.P2283836808110673385

`A076998(n+1)+A007947(n+1)`
-/

namespace A007948.P2283836808110673385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076998 (n + 1) + A007947 (n + 1)

end

end A007948.P2283836808110673385

namespace A007948

/-- `A076998(n+1)+A007947(n+1)` -/
def P2283836808110673385.Spec : Prop :=
  ∀ n, P2283836808110673385.a n = A007948 (n + 1)

theorem P2283836808110673385.correct : P2283836808110673385.Spec := by
  intro n
  simp only [A007948, Nat.add_sub_cancel, A007948.P2283836808110673385.a, A007948.P9205423498154585874.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A071773, A071773.P10551485978970375506.a, A076998, A076998.P17388172569221754780.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007948

/-! ## A007948.P16042978904911953485

`A055229(n+1)*A066990(n+1)`
-/

namespace A007948.P16042978904911953485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (n + 1) * A066990 (n + 1)

end

end A007948.P16042978904911953485

namespace A007948

/-- `A055229(n+1)*A066990(n+1)` -/
def P16042978904911953485.Spec : Prop :=
  ∀ n, P16042978904911953485.a n = A007948 (n + 1)

end A007948

/-! ## A007948.P3174552392982497743

`A078615(n+1)/A055231(n+1)`
-/

namespace A007948.P3174552392982497743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078615 (n + 1) : ℚ) / (A055231 (n + 1) : ℚ)

end

end A007948.P3174552392982497743

namespace A007948

/-- `A078615(n+1)/A055231(n+1)` -/
def P3174552392982497743.Spec : Prop :=
  ∀ n, P3174552392982497743.a n = (A007948 (n + 1) : ℚ)

end A007948

/-! ## A007948.P16662542605605262491

`A071773(n+1)²*A055231(n+1)`
-/

namespace A007948.P16662542605605262491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (n + 1) ^ 2 * A055231 (n + 1)

end

end A007948.P16662542605605262491

namespace A007948

/-- `A071773(n+1)²*A055231(n+1)` -/
def P16662542605605262491.Spec : Prop :=
  ∀ n, P16662542605605262491.a n = A007948 (n + 1)

end A007948

/-! ## A007948.P9243436881849868515

`A007947(n+1)²/A055231(n+1)`
-/

namespace A007948.P9243436881849868515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) ^ 2 : ℚ) / (A055231 (n + 1) : ℚ)

end

end A007948.P9243436881849868515

namespace A007948

/-- `A007947(n+1)²/A055231(n+1)` -/
def P9243436881849868515.Spec : Prop :=
  ∀ n, P9243436881849868515.a n = (A007948 (n + 1) : ℚ)

end A007948

/-! ## A007948.P6269588926144456308

`A076618(n+1)+A076998(n+1)-1`
-/

namespace A007948.P6269588926144456308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076618 (n + 1) + (A076998 (n + 1) - 1)

end

end A007948.P6269588926144456308

namespace A007948

/-- `A076618(n+1)+A076998(n+1)-1` -/
def P6269588926144456308.Spec : Prop :=
  ∀ n, P6269588926144456308.a n = A007948 (n + 1)

theorem P6269588926144456308.correct : P6269588926144456308.Spec := by
  intro n
  simp only [A007948, Nat.add_sub_cancel, A007948.P6269588926144456308.a, A007948.P9205423498154585874.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A071773, A071773.P10551485978970375506.a, A076618, A076618.P8099091245670450071.a, A076998, A076998.P17388172569221754780.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007948

/-! ## A007948.P8693490794364552393

`(A097378(n+1)-1)/A007947(n+1)`
-/

namespace A007948.P8693490794364552393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097378 (n + 1) - 1 : ℚ) / (A007947 (n + 1) : ℚ)

end

end A007948.P8693490794364552393

namespace A007948

/-- `(A097378(n+1)-1)/A007947(n+1)` -/
def P8693490794364552393.Spec : Prop :=
  ∀ n, P8693490794364552393.a n = (A007948 (n + 1) : ℚ)

end A007948

/-! ## A007948.P15057862826345793464

`A007947(A000188(n+1))*A007947(n+1)`
-/

namespace A007948.P15057862826345793464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A000188 (n + 1)).toNat * A007947 (n + 1)

end

end A007948.P15057862826345793464

namespace A007948

/-- `A007947(A000188(n+1))*A007947(n+1)` -/
def P15057862826345793464.Spec : Prop :=
  ∀ n, P15057862826345793464.a n = A007948 (n + 1)

end A007948

/-! ## A007948.P13707317840022942548

`A007947(A000189(n+1))*A007947(n+1)`
-/

namespace A007948.P13707317840022942548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A000189 (n + 1)).toNat * A007947 (n + 1)

end

end A007948.P13707317840022942548

namespace A007948

/-- `A007947(A000189(n+1))*A007947(n+1)` -/
def P13707317840022942548.Spec : Prop :=
  ∀ n, P13707317840022942548.a n = A007948 (n + 1)

end A007948

/-! ## A007948.P4913485554850589643

`A007947(A000190(n+1))*A007947(n+1)`
-/

namespace A007948.P4913485554850589643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A000190 (n + 1)).toNat * A007947 (n + 1)

end

end A007948.P4913485554850589643

namespace A007948

/-- `A007947(A000190(n+1))*A007947(n+1)` -/
def P4913485554850589643.Spec : Prop :=
  ∀ n, P4913485554850589643.a n = A007948 (n + 1)

end A007948

/-! ## A007948.P7678932418191149964

`A007947(A003557(n+1))*A007947(n+1)`
-/

namespace A007948.P7678932418191149964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A003557 (n + 1)).toNat * A007947 (n + 1)

end

end A007948.P7678932418191149964

namespace A007948

/-- `A007947(A003557(n+1))*A007947(n+1)` -/
def P7678932418191149964.Spec : Prop :=
  ∀ n, P7678932418191149964.a n = A007948 (n + 1)

end A007948

/-!
# A007949: Greatest k such that 3^k divides n. Or, 3-adic valuation of n.

The programs for A007949, the canonical program `A007949.P16509802526550351827` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007949 has offset 1).

The definition of A007949 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007949.P16509802526550351827

`val(n+1, 3)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007949

/-- `val(n+1, 3)` -/
def P16509802526550351827.Spec : Prop :=
  ∀ n, (P16509802526550351827.a n : ℤ) = A007949 (n + 1)

theorem P16509802526550351827.correct : P16509802526550351827.Spec := by
  intro n
  simp only [A007949, Nat.add_sub_cancel]

end A007949

/-! ## A007949.P6800638566306354931

`A051064(n+1)-1`
-/

namespace A007949.P6800638566306354931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (n + 1) - 1

end

end A007949.P6800638566306354931

namespace A007949

/-- `A051064(n+1)-1` -/
def P6800638566306354931.Spec : Prop :=
  ∀ n, P6800638566306354931.a n = A007949 (n + 1)

theorem P6800638566306354931.correct : P6800638566306354931.Spec := by
  intro n
  simp only [A007949, Nat.add_sub_cancel, A007949.P6800638566306354931.a, A007949.P16509802526550351827.a, A051064, A051064.P9470330273706946210.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007949

/-! ## A007949.P11200039885087243952

`A080342(gcd(n+1, 3^A080342(n+1)))`
-/

namespace A007949.P11200039885087243952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080342 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A080342 (n + 1) : ℤ))))

end

end A007949.P11200039885087243952

namespace A007949

/-- `A080342(gcd(n+1, 3^A080342(n+1)))` -/
def P11200039885087243952.Spec : Prop :=
  ∀ n, P11200039885087243952.a n = A007949 (n + 1)

end A007949

/-! ## A007949.P12244028494676368525

`A000005(n+1)/(A000005(3*(n+1))-A000005(n+1))-1`
-/

namespace A007949.P12244028494676368525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A000005 (3 * (n + 1)) - A000005 (n + 1) : ℚ) - 1

end

end A007949.P12244028494676368525

namespace A007949

/-- `A000005(n+1)/(A000005(3*(n+1))-A000005(n+1))-1` -/
def P12244028494676368525.Spec : Prop :=
  ∀ n, P12244028494676368525.a n = (A007949 (n + 1) : ℚ)

end A007949

/-! ## A007949.P10318443818516487592

`dr(val(record[(n-1)²], 9))`
-/

namespace A007949.P10318443818516487592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 9 : ℤ)

end

end A007949.P10318443818516487592

namespace A007949

/-- `dr(val(record[(n-1)²], 9))` -/
def P10318443818516487592.Spec : Prop :=
  ∀ n, (P10318443818516487592.a n : ℤ) = A007949 (n + 1)

end A007949

/-! ## A007949.P6720907940080529157

`val(record[(1-n)²], 3)/2`
-/

namespace A007949.P6720907940080529157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 3 : ℚ) / 2

end

end A007949.P6720907940080529157

namespace A007949

/-- `val(record[(1-n)²], 3)/2` -/
def P6720907940080529157.Spec : Prop :=
  ∀ n, P6720907940080529157.a n = (A007949 (n + 1) : ℚ)

end A007949

/-! ## A007949.P8279235087536655788

`val(∑[record[xor(1, n)]], 3)/2`
-/

namespace A007949.P8279235087536655788
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 3 : ℚ) / 2

end

end A007949.P8279235087536655788

namespace A007949

/-- `val(∑[record[xor(1, n)]], 3)/2` -/
def P8279235087536655788.Spec : Prop :=
  ∀ n, P8279235087536655788.a n = (A007949 (n + 1) : ℚ)

end A007949

/-! ## A007949.P1088324879236759850

`val(∑[n], 3)-a(n-1)` with `a(0)=0`
-/

namespace A007949.P1088324879236759850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 3 : ℤ) - a (n - 1)

end

end A007949.P1088324879236759850

namespace A007949

/-- `val(∑[n], 3)-a(n-1)` -/
def P1088324879236759850.Spec : Prop :=
  ∀ n, P1088324879236759850.a n = A007949 (n + 1)

end A007949

/-! ## A007949.P9266805950106673463

`Δ[a(floor(n/3))+n]-1` with `a(0)=0`
-/

namespace A007949.P9266805950106673463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 3⌋.toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A007949.P9266805950106673463

namespace A007949

/-- `Δ[a(floor(n/3))+n]-1` -/
def P9266805950106673463.Spec : Prop :=
  ∀ n, P9266805950106673463.a n = A007949 (n + 1)

end A007949

/-! ## A007949.P5621122978607131674

`val((2*n-(n-1))², 3)/2`
-/

namespace A007949.P5621122978607131674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (((2 * n : ℤ) - ((n : ℤ) - 1)) ^ 2).toNat 3 : ℚ) / 2

end

end A007949.P5621122978607131674

namespace A007949

/-- `val((2*n-(n-1))², 3)/2` -/
def P5621122978607131674.Spec : Prop :=
  ∀ n, P5621122978607131674.a n = (A007949 (n + 1) : ℚ)

end A007949

/-! ## A007949.P13517665984099486125

`Δ[A054861(n)]`
-/

namespace A007949.P13517665984099486125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007949.P13517665984099486125

namespace A007949

/-- `Δ[A054861(n)]` -/
def P13517665984099486125.Spec : Prop :=
  ∀ n, P13517665984099486125.a n = A007949 (n + 1)

end A007949

/-! ## A007949.P12886693351060666401

`log2(A318666(n+1))`
-/

namespace A007949.P12886693351060666401
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A318666 (n + 1) : ℝ)

end

end A007949.P12886693351060666401

namespace A007949

/-- `log2(A318666(n+1))` -/
def P12886693351060666401.Spec : Prop :=
  ∀ n, P12886693351060666401.a n = (A007949 (n + 1) : ℝ)

end A007949

/-! ## A007949.P13328523423036884719

`Δ[A344853(n)/2]`
-/

namespace A007949.P13328523423036884719
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344853 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007949.P13328523423036884719

namespace A007949

/-- `Δ[A344853(n)/2]` -/
def P13328523423036884719.Spec : Prop :=
  ∀ n, P13328523423036884719.a n = (A007949 (n + 1) : ℚ)

end A007949

/-! ## A007949.P16758154238005536061

`A366922(n+1)-2`
-/

namespace A007949.P16758154238005536061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366922 (n + 1) - 2

end

end A007949.P16758154238005536061

namespace A007949

/-- `A366922(n+1)-2` -/
def P16758154238005536061.Spec : Prop :=
  ∀ n, P16758154238005536061.a n = A007949 (n + 1)

theorem P16758154238005536061.correct : P16758154238005536061.Spec := by
  intro n
  simp only [A007949, Nat.add_sub_cancel, A007949.P16758154238005536061.a, A007949.P16509802526550351827.a, A366922, A366922.P8080897665247785144.a, A051064, A051064.P9470330273706946210.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007949

/-! ## A007949.P3631569077575025802

`floor(log(A038500(n+1)))`
-/

namespace A007949.P3631569077575025802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A038500 (n + 1) : ℝ)⌋

end

end A007949.P3631569077575025802

namespace A007949

/-- `floor(log(A038500(n+1)))` -/
def P3631569077575025802.Spec : Prop :=
  ∀ n, P3631569077575025802.a n = A007949 (n + 1)

end A007949

/-! ## A007949.P3558850679801586039

`ceil(ratio[A054390(n)])-1`
-/

namespace A007949.P3558850679801586039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ - 1

end

end A007949.P3558850679801586039

namespace A007949

/-- `ceil(ratio[A054390(n)])-1` -/
def P3558850679801586039.Spec : Prop :=
  ∀ n, P3558850679801586039.a n = A007949 (n + 1)

end A007949

/-! ## A007949.P489229820544770494

`ceil(ratio[A117535(n)])-1`
-/

namespace A007949.P489229820544770494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117535 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ - 1

end

end A007949.P489229820544770494

namespace A007949

/-- `ceil(ratio[A117535(n)])-1` -/
def P489229820544770494.Spec : Prop :=
  ∀ n, P489229820544770494.a n = A007949 (n + 1)

end A007949

/-! ## A007949.P12634691401957497050

`A371638(n+1)%(n+1)`
-/

namespace A007949.P12634691401957497050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A371638 (n + 1)) (n + 1 : ℤ)

end

end A007949.P12634691401957497050

namespace A007949

/-- `A371638(n+1)%(n+1)` -/
def P12634691401957497050.Spec : Prop :=
  ∀ n, P12634691401957497050.a n = A007949 (n + 1)

end A007949

/-! ## A007949.P5727660975389831877

`ceil(log(A074724(n+1)))-2`
-/

namespace A007949.P5727660975389831877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A074724 (n + 1) : ℝ)⌉ - 2

end

end A007949.P5727660975389831877

namespace A007949

/-- `ceil(log(A074724(n+1)))-2` -/
def P5727660975389831877.Spec : Prop :=
  ∀ n, P5727660975389831877.a n = A007949 (n + 1)

end A007949

/-!
# A007950: Binary sieve: delete every 2nd number, then every 4th, 8th, etc.

The programs for A007950, there is no canonical definition to state claims against.
-/

/-! ## A007950.P10226659219788104982

`lt[Δ[A316470(n+1)], A122458(n+2)]`
-/

namespace A007950.P10226659219788104982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316470 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122458 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A007950.P10226659219788104982

/-! ## A007950.P2903969974345372355

`lt[A300856(A300845(n+1)), A300817(3*(n+1))]`
-/

namespace A007950.P2903969974345372355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300856 (A300845 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007950.P2903969974345372355

/-! ## A007950.P12937391618074943113

`A037471(A187829(n+1)+A037475(n))`
-/

namespace A007950.P12937391618074943113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (A187829 (n + 1) + A037475 n).toNat

end

end A007950.P12937391618074943113

/-! ## A007950.P12810994129080004892

`A047623(A004709(n+1)%A300555(n+1))`
-/

namespace A007950.P12810994129080004892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047623 (Int.tmod (A004709 (n + 1)) (A300555 (n + 1))).toNat

end

end A007950.P12810994129080004892

/-! ## A007950.P2643156164274143431

`eq[A123737(n+1), A156419(n)]`
-/

namespace A007950.P2643156164274143431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156419 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007950.P2643156164274143431

/-!
# A007951: Ternary sieve: delete every 3rd number, then every 9th, 27th, etc.

The programs for A007951, there is no canonical definition to state claims against.
-/

/-! ## A007951.P16890792210796213647

`A001651(eq[A114099(n), A185238(n)])`
-/

namespace A007951.P16890792210796213647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A007951.P16890792210796213647

/-! ## A007951.P14912855517746821092

`eq[A347706(2*n+1)+1, A007862(2*n+3)]`
-/

namespace A007951.P14912855517746821092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347706 (2 * n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007951.P14912855517746821092

/-! ## A007951.P15601662113041200398

`A001651(eq[A114099(n), A185255(n)])`
-/

namespace A007951.P15601662113041200398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A007951.P15601662113041200398

/-! ## A007951.P5970686599115169389

`A001651(A168183(n+1)%A089316(n))`
-/

namespace A007951.P5970686599115169389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (Int.tmod (A168183 (n + 1)) (A089316 n)).toNat

end

end A007951.P5970686599115169389

/-! ## A007951.P3359886201218474571

`A001651(A168183(n+1))%A326064(n+1)`
-/

namespace A007951.P3359886201218474571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001651 (A168183 (n + 1)).toNat) (A326064 (n + 1))

end

end A007951.P3359886201218474571

/-!
# A007952: Generated by a sieve: keep first number, drop every 2nd, keep first, drop every 3rd, keep first, drop every 4th, etc.

The programs for A007952, there is no canonical definition to state claims against.
-/

/-! ## A007952.P8417230856397293346

`A002491(n+1)-1`
-/

namespace A007952.P8417230856397293346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002491 (n + 1) - 1

end

end A007952.P8417230856397293346

/-! ## A007952.P10231600428724807890

`A028913(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A007952.P10231600428724807890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A028913 (n - 1) + a (n - 1)

end

end A007952.P10231600428724807890

/-! ## A007952.P14750523397319496822

`∑[A028913(n)]-A028913(n)`
-/

namespace A007952.P14750523397319496822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A028913 n

end

end A007952.P14750523397319496822

/-! ## A007952.P6346797929442195587

`A057428(A003557(n+1))+A002491(n+1)`
-/

namespace A007952.P6346797929442195587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A003557 (n + 1)).toNat + A002491 (n + 1)

end

end A007952.P6346797929442195587

/-! ## A007952.P10231826550851534803

`A057428(A026233(n+1))+A002491(n+1)`
-/

namespace A007952.P10231826550851534803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A026233 (n + 1)).toNat + A002491 (n + 1)

end

end A007952.P10231826550851534803

/-! ## A007952.P12389631578682530852

`A033999(A103811(n+1))+A002491(n+1)`
-/

namespace A007952.P12389631578682530852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A103811 (n + 1)).toNat + A002491 (n + 1)

end

end A007952.P12389631578682530852

/-! ## A007952.P2385542683257968992

`A108696(n+2)-2`
-/

namespace A007952.P2385542683257968992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108696 (n + 2) - 2

end

end A007952.P2385542683257968992

/-! ## A007952.P13391693275374002010

`A057428(n+1)+A002491(n+1)`
-/

namespace A007952.P13391693275374002010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A002491 (n + 1)

end

end A007952.P13391693275374002010

/-! ## A007952.P6306956988489270730

`∑[A108696(n+2)%A108696(n+1)]`
-/

namespace A007952.P6306956988489270730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108696 (n + 2)) (A108696 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007952.P6306956988489270730

/-! ## A007952.P6610757124123359324

`A033999(2*n+1)+A002491(n+1)`
-/

namespace A007952.P6610757124123359324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A002491 (n + 1)

end

end A007952.P6610757124123359324

/-! ## A007952.P18436947286255185275

`A346468(A002491(n+1))`
-/

namespace A007952.P18436947286255185275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346468 (A002491 (n + 1)).toNat

end

end A007952.P18436947286255185275

/-! ## A007952.P5869512142925150893

`lt[n, A028920(n)²]`
-/

namespace A007952.P5869512142925150893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007952.P5869512142925150893

/-! ## A007952.P14415849826011223913

`eq[1, A130747(n+1)]`
-/

namespace A007952.P14415849826011223913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130747 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007952.P14415849826011223913

/-! ## A007952.P9721008408752652368

`A023444(A108696(n+2))`
-/

namespace A007952.P9721008408752652368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A108696 (n + 2)).toNat

end

end A007952.P9721008408752652368

/-! ## A007952.P1122386049130384395

`record[n*A028920(n)]/A000027(n+1)`
-/

namespace A007952.P1122386049130384395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A028920 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A000027 (n + 1) : ℚ)

end

end A007952.P1122386049130384395

/-! ## A007952.P17423070647758259125

`lt[A206914(n)/A028920(n), A028920(n)]`
-/

namespace A007952.P17423070647758259125
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206914 n : ℚ) / (A028920 n : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A007952.P17423070647758259125

/-! ## A007952.P11948482876004143280

`eq[A028920(n), A082447(n+1)]`
-/

namespace A007952.P11948482876004143280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007952.P11948482876004143280

/-! ## A007952.P8842875213651152329

`A113749(A034856(n+1)+1)-1`
-/

namespace A007952.P8842875213651152329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (A034856 (n + 1) + 1).toNat - 1

end

end A007952.P8842875213651152329

/-!
# A007953: Digital sum (i.e., sum of digits) of n; also called digsum(n).

The programs for A007953, the canonical program `A007953.P3472751987379697826` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007953 has offset 0).

The definition of A007953 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054899, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A007953.P3472751987379697826

`n-9*A054899(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007953

/-- `n-9*A054899(n)` -/
def P3472751987379697826.Spec : Prop :=
  ∀ n, P3472751987379697826.a n = A007953 n

theorem P3472751987379697826.correct : P3472751987379697826.Spec := by
  intro n
  simp only [A007953]

end A007953

/-! ## A007953.P17470406891730602483

`∑{digits}[n, #]`
-/

namespace A007953.P17470406891730602483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A007953.P17470406891730602483

namespace A007953

/-- `∑{digits}[n, #]` -/
def P17470406891730602483.Spec : Prop :=
  ∀ n, (P17470406891730602483.a n : ℤ) = A007953 n

end A007953

/-! ## A007953.P140046108768581977

`log(∏{digits}[n, exp(#)])`
-/

namespace A007953.P140046108768581977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Real.exp (x : ℝ)).prod

end

end A007953.P140046108768581977

namespace A007953

/-- `log(∏{digits}[n, exp(#)])` -/
def P140046108768581977.Spec : Prop :=
  ∀ n, P140046108768581977.a n = (A007953 n : ℝ)

end A007953

/-! ## A007953.P11939204618655991885

`log2(∏{digits}[n, 2^#])`
-/

namespace A007953.P11939204618655991885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ)

end

end A007953.P11939204618655991885

namespace A007953

/-- `log2(∏{digits}[n, 2^#])` -/
def P11939204618655991885.Spec : Prop :=
  ∀ n, P11939204618655991885.a n = (A007953 n : ℝ)

end A007953

/-! ## A007953.P8016089391910986047

`val(∏{digits}[n, 2^#], 2)`
-/

namespace A007953.P8016089391910986047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod 2

end

end A007953.P8016089391910986047

namespace A007953

/-- `val(∏{digits}[n, 2^#], 2)` -/
def P8016089391910986047.Spec : Prop :=
  ∀ n, (P8016089391910986047.a n : ℤ) = A007953 n

end A007953

/-! ## A007953.P7379372911304978712

`a(floor(n/10))+n%10` with `a(0)=0`
-/

namespace A007953.P7379372911304978712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 10⌋.toNat + n % 10

end

end A007953.P7379372911304978712

namespace A007953

/-- `a(floor(n/10))+n%10` -/
def P7379372911304978712.Spec : Prop :=
  ∀ n, (P7379372911304978712.a n : ℤ) = A007953 n

end A007953

/-! ## A007953.P2146669337502175996

`sqrt(A118881(n))`
-/

namespace A007953.P2146669337502175996
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118881 n : ℝ)

end

end A007953.P2146669337502175996

namespace A007953

/-- `sqrt(A118881(n))` -/
def P2146669337502175996.Spec : Prop :=
  ∀ n, P2146669337502175996.a n = (A007953 n : ℝ)

end A007953

/-! ## A007953.P6069611800162644672

`log2(A329562(n))`
-/

namespace A007953.P6069611800162644672
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A329562 n : ℝ)

end

end A007953.P6069611800162644672

namespace A007953

/-- `log2(A329562(n))` -/
def P6069611800162644672.Spec : Prop :=
  ∀ n, P6069611800162644672.a n = (A007953 n : ℝ)

end A007953

/-! ## A007953.P3470839045574470891

`A169805(n)/2`
-/

namespace A007953.P3470839045574470891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169805 n : ℚ) / 2

end

end A007953.P3470839045574470891

namespace A007953

/-- `A169805(n)/2` -/
def P3470839045574470891.Spec : Prop :=
  ∀ n, P3470839045574470891.a n = (A007953 n : ℚ)

theorem P3470839045574470891.correct : P3470839045574470891.Spec := by
  intro n
  simp only [A007953, Nat.add_sub_cancel, A007953.P3470839045574470891.a, A007953.P3472751987379697826.a, A054899, A054899.P10770181254942084517.a, A169805, A169805.P17977796700678006772.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007953

/-! ## A007953.P2216714254448337196

`A062028(n)-n`
-/

namespace A007953.P2216714254448337196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n - (n : ℤ)

end

end A007953.P2216714254448337196

namespace A007953

/-- `A062028(n)-n` -/
def P2216714254448337196.Spec : Prop :=
  ∀ n, P2216714254448337196.a n = A007953 n

theorem P2216714254448337196.correct : P2216714254448337196.Spec := by
  intro n
  simp only [A007953, Nat.add_sub_cancel, A007953.P2216714254448337196.a, A007953.P3472751987379697826.a, A054899, A054899.P10770181254942084517.a, A062028, A062028.P8420805724104474199.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007953

/-! ## A007953.P1506185556257193578

`n-A066568(n)`
-/

namespace A007953.P1506185556257193578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A066568 n

end

end A007953.P1506185556257193578

namespace A007953

/-- `n-A066568(n)` -/
def P1506185556257193578.Spec : Prop :=
  ∀ n, P1506185556257193578.a n = A007953 n

theorem P1506185556257193578.correct : P1506185556257193578.Spec := by
  intro n
  simp only [A007953, Nat.add_sub_cancel, A007953.P1506185556257193578.a, A007953.P3472751987379697826.a, A054899, A054899.P10770181254942084517.a, A066568, A066568.P9469533663660008085.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007953

/-! ## A007953.P4829504634682455717

`A118880(n)^(1/3)`
-/

namespace A007953.P4829504634682455717
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A118880 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A007953.P4829504634682455717

namespace A007953

/-- `A118880(n)^(1/3)` -/
def P4829504634682455717.Spec : Prop :=
  ∀ n, P4829504634682455717.a n = (A007953 n : ℝ)

end A007953

/-! ## A007953.P13730891101462781396

`A061762(n)-∏{digits}[n, #]`
-/

namespace A007953.P13730891101462781396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ)

end

end A007953.P13730891101462781396

namespace A007953

/-- `A061762(n)-∏{digits}[n, #]` -/
def P13730891101462781396.Spec : Prop :=
  ∀ n, P13730891101462781396.a n = A007953 n

end A007953

/-! ## A007953.P6406475365747886613

`ceil(A057147(n)/(n+1))`
-/

namespace A007953.P6406475365747886613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057147 n : ℚ) / (n + 1 : ℚ)⌉

end

end A007953.P6406475365747886613

namespace A007953

/-- `ceil(A057147(n)/(n+1))` -/
def P6406475365747886613.Spec : Prop :=
  ∀ n, P6406475365747886613.a n = A007953 n

end A007953

/-! ## A007953.P6100323061468455013

`1-A160941(n+1)+n`
-/

namespace A007953.P6100323061468455013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A160941 (n + 1) + (n : ℤ)

end

end A007953.P6100323061468455013

namespace A007953

/-- `1-A160941(n+1)+n` -/
def P6100323061468455013.Spec : Prop :=
  ∀ n, P6100323061468455013.a n = A007953 n

end A007953

/-! ## A007953.P9223460278733282522

`A160939(n+1)-(n+1)`
-/

namespace A007953.P9223460278733282522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160939 (n + 1) - (n + 1 : ℤ)

end

end A007953.P9223460278733282522

namespace A007953

/-- `A160939(n+1)-(n+1)` -/
def P9223460278733282522.Spec : Prop :=
  ∀ n, P9223460278733282522.a n = A007953 n

theorem P9223460278733282522.correct : P9223460278733282522.Spec := by
  intro n
  simp only [A007953, Nat.add_sub_cancel, A007953.P9223460278733282522.a, A007953.P3472751987379697826.a, A054899, A054899.P10770181254942084517.a, A160939, A160939.P10335950988782502839.a, A062028, A062028.P8420805724104474199.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007953

/-! ## A007953.P13786370541121630880

`A160942(n+1)/(n+1)`
-/

namespace A007953.P13786370541121630880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160942 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A007953.P13786370541121630880

namespace A007953

/-- `A160942(n+1)/(n+1)` -/
def P13786370541121630880.Spec : Prop :=
  ∀ n, P13786370541121630880.a n = (A007953 n : ℚ)

end A007953

/-! ## A007953.P8224023448486568010

`A001281(A169805(n))`
-/

namespace A007953.P8224023448486568010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A169805 n).toNat

end

end A007953.P8224023448486568010

namespace A007953

/-- `A001281(A169805(n))` -/
def P8224023448486568010.Spec : Prop :=
  ∀ n, P8224023448486568010.a n = A007953 n

end A007953

/-! ## A007953.P9591147142209217567

`A096234(A136614(n))`
-/

namespace A007953.P9591147142209217567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096234 (A136614 n).toNat

end

end A007953.P9591147142209217567

namespace A007953

/-- `A096234(A136614(n))` -/
def P9591147142209217567.Spec : Prop :=
  ∀ n, P9591147142209217567.a n = A007953 n

end A007953

/-! ## A007953.P14213826728406944929

`A062329(n)+A007954(n)`
-/

namespace A007953.P14213826728406944929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062329 n + A007954 n

end

end A007953.P14213826728406944929

namespace A007953

/-- `A062329(n)+A007954(n)` -/
def P14213826728406944929.Spec : Prop :=
  ∀ n, P14213826728406944929.a n = A007953 n

end A007953

/-!
# A007954: Product of decimal digits of n.

The programs for A007954, the canonical program `A007954.P17322577641810457605` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007954 has offset 0).

The definition of A007954 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A187844, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A007954.P17322577641810457605

`abs(A187844(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007954

/-- `abs(A187844(n))` -/
def P17322577641810457605.Spec : Prop :=
  ∀ n, P17322577641810457605.a n = A007954 n

theorem P17322577641810457605.correct : P17322577641810457605.Spec := by
  intro n
  simp only [A007954]

end A007954

/-! ## A007954.P3550466674019444084

`∏{digits}[n, #]`
-/

namespace A007954.P3550466674019444084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod

end

end A007954.P3550466674019444084

namespace A007954

/-- `∏{digits}[n, #]` -/
def P3550466674019444084.Spec : Prop :=
  ∀ n, (P3550466674019444084.a n : ℤ) = A007954 n

end A007954

/-! ## A007954.P16623477038417473271

`n-A070565(n)`
-/

namespace A007954.P16623477038417473271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A070565 n

end

end A007954.P16623477038417473271

namespace A007954

/-- `n-A070565(n)` -/
def P16623477038417473271.Spec : Prop :=
  ∀ n, P16623477038417473271.a n = A007954 n

end A007954

/-! ## A007954.P66790980387704058

`A230099(n)-n`
-/

namespace A007954.P66790980387704058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 n - (n : ℤ)

end

end A007954.P66790980387704058

namespace A007954

/-- `A230099(n)-n` -/
def P66790980387704058.Spec : Prop :=
  ∀ n, P66790980387704058.a n = A007954 n

end A007954

/-! ## A007954.P9070055955627452810

`A061762(n)-∑{digits}[n, #]`
-/

namespace A007954.P9070055955627452810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A007954.P9070055955627452810

namespace A007954

/-- `A061762(n)-∑{digits}[n, #]` -/
def P9070055955627452810.Spec : Prop :=
  ∀ n, P9070055955627452810.a n = A007954 n

end A007954

/-! ## A007954.P6868043974353772117

`∑{digits}[n, #]-A062329(n)`
-/

namespace A007954.P6868043974353772117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - A062329 n

end

end A007954.P6868043974353772117

namespace A007954

/-- `∑{digits}[n, #]-A062329(n)` -/
def P6868043974353772117.Spec : Prop :=
  ∀ n, P6868043974353772117.a n = A007954 n

end A007954

/-! ## A007954.P2305444332260445697

`ceil(A098736(n)/(n+1))`
-/

namespace A007954.P2305444332260445697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A098736 n : ℚ) / (n + 1 : ℚ)⌉

end

end A007954.P2305444332260445697

namespace A007954

/-- `ceil(A098736(n)/(n+1))` -/
def P2305444332260445697.Spec : Prop :=
  ∀ n, P2305444332260445697.a n = A007954 n

end A007954

/-! ## A007954.P10130144538701099011

`A061762(n)-A007953(n)`
-/

namespace A007954.P10130144538701099011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n - A007953 n

end

end A007954.P10130144538701099011

namespace A007954

/-- `A061762(n)-A007953(n)` -/
def P10130144538701099011.Spec : Prop :=
  ∀ n, P10130144538701099011.a n = A007954 n

theorem P10130144538701099011.correct : P10130144538701099011.Spec := by
  intro n
  simp only [A007954, Nat.add_sub_cancel, A007954.P10130144538701099011.a, A007954.P17322577641810457605.a, A007953, A007953.P3472751987379697826.a, A061762, A061762.P2226516995009236848.a, A187844, A187844.P2226367484960758357.f1, A187844.P2226367484960758357.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007954

/-! ## A007954.P8263382813107034712

`A007953(n)-A062329(n)`
-/

namespace A007954.P8263382813107034712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n - A062329 n

end

end A007954.P8263382813107034712

namespace A007954

/-- `A007953(n)-A062329(n)` -/
def P8263382813107034712.Spec : Prop :=
  ∀ n, P8263382813107034712.a n = A007954 n

end A007954

/-! ## A007954.P3371020240217574849

`A066568(n)-A249121(n)`
-/

namespace A007954.P3371020240217574849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 n - A249121 n

end

end A007954.P3371020240217574849

namespace A007954

/-- `A066568(n)-A249121(n)` -/
def P3371020240217574849.Spec : Prop :=
  ∀ n, P3371020240217574849.a n = A007954 n

theorem P3371020240217574849.correct : P3371020240217574849.Spec := by
  intro n
  simp only [A007954, Nat.add_sub_cancel, A007954.P3371020240217574849.a, A007954.P17322577641810457605.a, A066568, A066568.P9469533663660008085.a, A187844, A187844.P2226367484960758357.f1, A187844.P2226367484960758357.a, A249121, A249121.P5600374421228380133.a, A007953, A007953.P3472751987379697826.a, A061762, A061762.P2226516995009236848.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007954

/-! ## A007954.P13657724331386225137

`A051801(n)*A168046(n)`
-/

namespace A007954.P13657724331386225137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n * A168046 n

end

end A007954.P13657724331386225137

namespace A007954

/-- `A051801(n)*A168046(n)` -/
def P13657724331386225137.Spec : Prop :=
  ∀ n, P13657724331386225137.a n = A007954 n

end A007954

/-! ## A007954.P4770291316453627747

`A098736(n)/A028310(n)`
-/

namespace A007954.P4770291316453627747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098736 n : ℚ) / (A028310 n : ℚ)

end

end A007954.P4770291316453627747

namespace A007954

/-- `A098736(n)/A028310(n)` -/
def P4770291316453627747.Spec : Prop :=
  ∀ n, P4770291316453627747.a n = (A007954 n : ℚ)

end A007954

/-! ## A007954.P16718895194249908951

`lcm(A051801(n), A054054(n))`
-/

namespace A007954.P16718895194249908951
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051801 n) (A054054 n)

end

end A007954.P16718895194249908951

namespace A007954

/-- `lcm(A051801(n), A054054(n))` -/
def P16718895194249908951.Spec : Prop :=
  ∀ n, (P16718895194249908951.a n : ℤ) = A007954 n

end A007954

/-! ## A007954.P14436179181662103693

`lcm(A000030(n), A187844(n))`
-/

namespace A007954.P14436179181662103693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000030 n) (A187844 n)

end

end A007954.P14436179181662103693

namespace A007954

/-- `lcm(A000030(n), A187844(n))` -/
def P14436179181662103693.Spec : Prop :=
  ∀ n, (P14436179181662103693.a n : ℤ) = A007954 n

end A007954

/-! ## A007954.P4584290338872544021

`∑{d}[A187844(n), A000010(#)]`
-/

namespace A007954.P4584290338872544021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A007954.P4584290338872544021

namespace A007954

/-- `∑{d}[A187844(n), A000010(#)]` -/
def P4584290338872544021.Spec : Prop :=
  ∀ n, P4584290338872544021.a n = A007954 n

end A007954

/-! ## A007954.P1075434752272499964

`A061762(n)-A169805(n)/2`
-/

namespace A007954.P1075434752272499964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061762 n : ℚ) - (A169805 n : ℚ) / 2

end

end A007954.P1075434752272499964

namespace A007954

/-- `A061762(n)-A169805(n)/2` -/
def P1075434752272499964.Spec : Prop :=
  ∀ n, P1075434752272499964.a n = (A007954 n : ℚ)

theorem P1075434752272499964.correct : P1075434752272499964.Spec := by
  intro n
  simp only [A007954, Nat.add_sub_cancel, A007954.P1075434752272499964.a, A007954.P17322577641810457605.a, A061762, A061762.P2226516995009236848.a, A169805, A169805.P17977796700678006772.a, A187844, A187844.P2226367484960758357.f1, A187844.P2226367484960758357.a, A007953, A007953.P3472751987379697826.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007954

/-! ## A007954.P4338586287977558706

`A169805(n)/2-A062329(n)`
-/

namespace A007954.P4338586287977558706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169805 n : ℚ) / 2 - (A062329 n : ℚ)

end

end A007954.P4338586287977558706

namespace A007954

/-- `A169805(n)/2-A062329(n)` -/
def P4338586287977558706.Spec : Prop :=
  ∀ n, P4338586287977558706.a n = (A007954 n : ℚ)

end A007954

/-! ## A007954.P7391756901122253576

`A061762(n)+n-A062028(n)`
-/

namespace A007954.P7391756901122253576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n + ((n : ℤ) - A062028 n)

end

end A007954.P7391756901122253576

namespace A007954

/-- `A061762(n)+n-A062028(n)` -/
def P7391756901122253576.Spec : Prop :=
  ∀ n, P7391756901122253576.a n = A007954 n

theorem P7391756901122253576.correct : P7391756901122253576.Spec := by
  intro n
  simp only [A007954, Nat.add_sub_cancel, A007954.P7391756901122253576.a, A007954.P17322577641810457605.a, A061762, A061762.P2226516995009236848.a, A062028, A062028.P8420805724104474199.a, A187844, A187844.P2226367484960758357.f1, A187844.P2226367484960758357.a, A007953, A007953.P3472751987379697826.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007954

/-! ## A007954.P2133928350013160119

`A062028(n)-(A062329(n)+n)`
-/

namespace A007954.P2133928350013160119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n - (A062329 n + (n : ℤ))

end

end A007954.P2133928350013160119

namespace A007954

/-- `A062028(n)-(A062329(n)+n)` -/
def P2133928350013160119.Spec : Prop :=
  ∀ n, P2133928350013160119.a n = A007954 n

end A007954

/-! ## A007954.P11678676459706587677

`n-(A249121(n)+A007953(n))`
-/

namespace A007954.P11678676459706587677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A249121 n + A007953 n)

end

end A007954.P11678676459706587677

namespace A007954

/-- `n-(A249121(n)+A007953(n))` -/
def P11678676459706587677.Spec : Prop :=
  ∀ n, P11678676459706587677.a n = A007954 n

theorem P11678676459706587677.correct : P11678676459706587677.Spec := by
  intro n
  simp only [A007954, Nat.add_sub_cancel, A007954.P11678676459706587677.a, A007954.P17322577641810457605.a, A007953, A007953.P3472751987379697826.a, A187844, A187844.P2226367484960758357.f1, A187844.P2226367484960758357.a, A249121, A249121.P5600374421228380133.a, A054899, A054899.P10770181254942084517.a, A061762, A061762.P2226516995009236848.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007954

/-!
# A007955: Product of divisors of n.

The programs for A007955, the canonical program `A007955.P14752630106558465512` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007955 has offset 1).

The definition of A007955 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007955.P8770333074879441749

`(n+1)*A007956(n+1)`
-/

namespace A007955.P8770333074879441749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007956 (n + 1)

end

end A007955.P8770333074879441749

namespace A007955

/-- `(n+1)*A007956(n+1)` -/
def P8770333074879441749.Spec : Prop :=
  ∀ n, P8770333074879441749.a n = A007955 (n + 1)

end A007955

/-! ## A007955.P14752630106558465512

`(n+1)^(A000005(n+1)/2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A007955

/-- `(n+1)^(A000005(n+1)/2)` -/
def P14752630106558465512.Spec : Prop :=
  ∀ n, P14752630106558465512.a n = (A007955 (n + 1) : ℝ)

end A007955

/-! ## A007955.P17657263159876018477

`A078599(n+1)*A178649(n+1)`
-/

namespace A007955.P17657263159876018477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078599 (n + 1) * A178649 (n + 1)

end

end A007955.P17657263159876018477

namespace A007955

/-- `A078599(n+1)*A178649(n+1)` -/
def P17657263159876018477.Spec : Prop :=
  ∀ n, P17657263159876018477.a n = A007955 (n + 1)

end A007955

/-! ## A007955.P5999456803974293544

`∏{d}[n+1, #]`
-/

namespace A007955.P5999456803974293544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A007955.P5999456803974293544

namespace A007955

/-- `∏{d}[n+1, #]` -/
def P5999456803974293544.Spec : Prop :=
  ∀ n, (P5999456803974293544.a n : ℤ) = A007955 (n + 1)

end A007955

/-! ## A007955.P13883123718804981545

`exp(∑{d}[n+1, log(#)])`
-/

namespace A007955.P13883123718804981545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ d ∈ Nat.divisors (f1 n), Real.log (d : ℝ))

end

end A007955.P13883123718804981545

namespace A007955

/-- `exp(∑{d}[n+1, log(#)])` -/
def P13883123718804981545.Spec : Prop :=
  ∀ n, P13883123718804981545.a n = (A007955 (n + 1) : ℝ)

end A007955

/-! ## A007955.P11184505832162425783

`2^∑{d}[n+1, log2(#)]`
-/

namespace A007955.P11184505832162425783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ d ∈ Nat.divisors (f1 n), Real.logb 2 (d : ℝ))

end

end A007955.P11184505832162425783

namespace A007955

/-- `2^∑{d}[n+1, log2(#)]` -/
def P11184505832162425783.Spec : Prop :=
  ∀ n, P11184505832162425783.a n = (A007955 (n + 1) : ℝ)

end A007955

/-! ## A007955.P582312298185973309

`ratio[∏{d}[n, #]]*∏{d}[n, #]`
-/

namespace A007955.P582312298185973309
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), d

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * ((∏ d ∈ Nat.divisors (f3 n), d : ℕ) : ℚ)

end

end A007955.P582312298185973309

namespace A007955

/-- `ratio[∏{d}[n, #]]*∏{d}[n, #]` -/
def P582312298185973309.Spec : Prop :=
  ∀ n, P582312298185973309.a n = (A007955 (n + 1) : ℚ)

end A007955

/-! ## A007955.P11347044849982031714

`abs(∏{d}[2*n-(n-1), -#])`
-/

namespace A007955.P11347044849982031714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ d ∈ Nat.divisors (f1 n).natAbs, (-(d : ℤ))|

end

end A007955.P11347044849982031714

namespace A007955

/-- `abs(∏{d}[2*n-(n-1), -#])` -/
def P11347044849982031714.Spec : Prop :=
  ∀ n, P11347044849982031714.a n = A007955 (n + 1)

end A007955

/-! ## A007955.P13937764317116311334

`∏{d}[2*n-(n-1), sqrt(#)]²`
-/

namespace A007955.P13937764317116311334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∏ d ∈ Nat.divisors (f1 n).natAbs, Real.sqrt (d : ℝ)) ^ 2

end

end A007955.P13937764317116311334

namespace A007955

/-- `∏{d}[2*n-(n-1), sqrt(#)]²` -/
def P13937764317116311334.Spec : Prop :=
  ∀ n, P13937764317116311334.a n = (A007955 (n + 1) : ℝ)

end A007955

/-! ## A007955.P9961263090169959006

`sqrt(n+1)^∏{e}[n+1, #+1]`
-/

namespace A007955.P9961263090169959006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ) ^ (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A007955.P9961263090169959006

namespace A007955

/-- `sqrt(n+1)^∏{e}[n+1, #+1]` -/
def P9961263090169959006.Spec : Prop :=
  ∀ n, P9961263090169959006.a n = (A007955 (n + 1) : ℝ)

end A007955

/-! ## A007955.P13937868258617567660

`∑{d}[n+1, A174940(#)]`
-/

namespace A007955.P13937868258617567660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A174940 d

end

end A007955.P13937868258617567660

namespace A007955

/-- `∑{d}[n+1, A174940(#)]` -/
def P13937868258617567660.Spec : Prop :=
  ∀ n, P13937868258617567660.a n = A007955 (n + 1)

end A007955

/-! ## A007955.P10969334021993838502

`A338576(n+1)/(n+1)`
-/

namespace A007955.P10969334021993838502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338576 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A007955.P10969334021993838502

namespace A007955

/-- `A338576(n+1)/(n+1)` -/
def P10969334021993838502.Spec : Prop :=
  ∀ n, P10969334021993838502.a n = (A007955 (n + 1) : ℚ)

end A007955

/-! ## A007955.P8662883809178455009

`sqrt(n+1)^Δ[A006218(n)]`
-/

namespace A007955.P8662883809178455009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A007955.P8662883809178455009

namespace A007955

/-- `sqrt(n+1)^Δ[A006218(n)]` -/
def P8662883809178455009.Spec : Prop :=
  ∀ n, P8662883809178455009.a n = (A007955 (n + 1) : ℝ)

end A007955

/-! ## A007955.P577450297940828735

`sqrt(n+1)^A000005(n+1)`
-/

namespace A007955.P577450297940828735
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ) ^ (A000005 (n + 1) : ℤ)

end

end A007955.P577450297940828735

namespace A007955

/-- `sqrt(n+1)^A000005(n+1)` -/
def P577450297940828735.Spec : Prop :=
  ∀ n, P577450297940828735.a n = (A007955 (n + 1) : ℝ)

end A007955

/-! ## A007955.P17546596655369005908

`A076721(n+1)+A000203(n+1)`
-/

namespace A007955.P17546596655369005908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076721 (n + 1) + A000203 (n + 1)

end

end A007955.P17546596655369005908

namespace A007955

/-- `A076721(n+1)+A000203(n+1)` -/
def P17546596655369005908.Spec : Prop :=
  ∀ n, P17546596655369005908.a n = A007955 (n + 1)

end A007955

/-! ## A007955.P11590345695315295096

`A076720(n+1)-A000203(n+1)`
-/

namespace A007955.P11590345695315295096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076720 (n + 1) - A000203 (n + 1)

end

end A007955.P11590345695315295096

namespace A007955

/-- `A076720(n+1)-A000203(n+1)` -/
def P11590345695315295096.Spec : Prop :=
  ∀ n, P11590345695315295096.a n = A007955 (n + 1)

end A007955

/-! ## A007955.P11039591140950939758

`A005451(n+1)*A066729(n+1)`
-/

namespace A007955.P11039591140950939758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (n + 1) * A066729 (n + 1)

end

end A007955.P11039591140950939758

namespace A007955

/-- `A005451(n+1)*A066729(n+1)` -/
def P11039591140950939758.Spec : Prop :=
  ∀ n, P11039591140950939758.a n = A007955 (n + 1)

end A007955

/-! ## A007955.P13385193374045544924

`A007947(n+1)*A087652(n+1)`
-/

namespace A007955.P13385193374045544924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A087652 (n + 1)

end

end A007955.P13385193374045544924

namespace A007955

/-- `A007947(n+1)*A087652(n+1)` -/
def P13385193374045544924.Spec : Prop :=
  ∀ n, P13385193374045544924.a n = A007955 (n + 1)

end A007955

/-! ## A007955.P3296878721946785594

`A056925(n+1)*A056926(n+1)`
-/

namespace A007955.P3296878721946785594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056925 (n + 1) * A056926 (n + 1)

end

end A007955.P3296878721946785594

namespace A007955

/-- `A056925(n+1)*A056926(n+1)` -/
def P3296878721946785594.Spec : Prop :=
  ∀ n, P3296878721946785594.a n = A007955 (n + 1)

end A007955

/-! ## A007955.P8290894247035935642

`A061537(n+1)*A061538(n+1)`
-/

namespace A007955.P8290894247035935642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061537 (n + 1) * A061538 (n + 1)

end

end A007955.P8290894247035935642

namespace A007955

/-- `A061537(n+1)*A061538(n+1)` -/
def P8290894247035935642.Spec : Prop :=
  ∀ n, P8290894247035935642.a n = A007955 (n + 1)

end A007955

/-!
# A007956: Product of the proper divisors of n.

The programs for A007956, the canonical program `A007956.P11894205286673783912` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007956 has offset 1).

The definition of A007956 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007956.P11894205286673783912

`A007955(n+1)/(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A007956

/-- `A007955(n+1)/(n+1)` -/
def P11894205286673783912.Spec : Prop :=
  ∀ n, P11894205286673783912.a n = (A007956 (n + 1) : ℚ)

end A007956

/-! ## A007956.P9234242352707452411

`(n+1)^(A000005(n+1)/2-1)`
-/

namespace A007956.P9234242352707452411
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((A000005 (n + 1) : ℚ) / 2 - 1 : ℝ)

end

end A007956.P9234242352707452411

namespace A007956

/-- `(n+1)^(A000005(n+1)/2-1)` -/
def P9234242352707452411.Spec : Prop :=
  ∀ n, P9234242352707452411.a n = (A007956 (n + 1) : ℝ)

end A007956

/-! ## A007956.P13302348599870899304

`∏{d}[n+1, #]/(n+1)`
-/

namespace A007956.P13302348599870899304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ)

end

end A007956.P13302348599870899304

namespace A007956

/-- `∏{d}[n+1, #]/(n+1)` -/
def P13302348599870899304.Spec : Prop :=
  ∀ n, P13302348599870899304.a n = (A007956 (n + 1) : ℚ)

end A007956

/-! ## A007956.P15012866165782838652

`(n+1)^-1*∏{d}[n+1, #]`
-/

namespace A007956.P15012866165782838652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (-1 : ℤ) * ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ)

end

end A007956.P15012866165782838652

namespace A007956

/-- `(n+1)^-1*∏{d}[n+1, #]` -/
def P15012866165782838652.Spec : Prop :=
  ∀ n, P15012866165782838652.a n = (A007956 (n + 1) : ℚ)

end A007956

/-! ## A007956.P11628860485735813754

`2^∑{d}[n+1, log2(#)]/(n+1)`
-/

namespace A007956.P11628860485735813754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ d ∈ Nat.divisors (f1 n), Real.logb 2 (d : ℝ)) / (n + 1 : ℝ)

end

end A007956.P11628860485735813754

namespace A007956

/-- `2^∑{d}[n+1, log2(#)]/(n+1)` -/
def P11628860485735813754.Spec : Prop :=
  ∀ n, P11628860485735813754.a n = (A007956 (n + 1) : ℝ)

end A007956

/-! ## A007956.P2649396048676727871

`A338576(n+1)/(n+1)²`
-/

namespace A007956.P2649396048676727871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338576 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A007956.P2649396048676727871

namespace A007956

/-- `A338576(n+1)/(n+1)²` -/
def P2649396048676727871.Spec : Prop :=
  ∀ n, P2649396048676727871.a n = (A007956 (n + 1) : ℚ)

end A007956

/-! ## A007956.P11467793902971554634

`(n+1)^(A070824(n+1)/2)`
-/

namespace A007956.P11467793902971554634
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((A070824 (n + 1) : ℚ) / 2 : ℝ)

end

end A007956.P11467793902971554634

namespace A007956

/-- `(n+1)^(A070824(n+1)/2)` -/
def P11467793902971554634.Spec : Prop :=
  ∀ n, P11467793902971554634.a n = (A007956 (n + 1) : ℝ)

end A007956

/-! ## A007956.P16761400539362383960

`A066729(A005451(n+1))`
-/

namespace A007956.P16761400539362383960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066729 (A005451 (n + 1)).toNat

end

end A007956.P16761400539362383960

namespace A007956

/-- `A066729(A005451(n+1))` -/
def P16761400539362383960.Spec : Prop :=
  ∀ n, P16761400539362383960.a n = A007956 (n + 1)

end A007956

/-! ## A007956.P217449763601224624

`A066729(1-A166260(n+1)+n)`
-/

namespace A007956.P217449763601224624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066729 (1 - A166260 (n + 1) + (n : ℤ)).toNat

end

end A007956.P217449763601224624

namespace A007956

/-- `A066729(1-A166260(n+1)+n)` -/
def P217449763601224624.Spec : Prop :=
  ∀ n, P217449763601224624.a n = A007956 (n + 1)

end A007956

/-! ## A007956.P17567292613733797381

`A066729(n*A066247(n+1)+1)`
-/

namespace A007956.P17567292613733797381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066729 ((n : ℤ) * A066247 (n + 1) + 1).toNat

end

end A007956.P17567292613733797381

namespace A007956

/-- `A066729(n*A066247(n+1)+1)` -/
def P17567292613733797381.Spec : Prop :=
  ∀ n, P17567292613733797381.a n = A007956 (n + 1)

end A007956

/-! ## A007956.P6448365025599735990

`A066729(2-A089026(n+1)+n)`
-/

namespace A007956.P6448365025599735990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066729 (2 - A089026 (n + 1) + (n : ℤ)).toNat

end

end A007956.P6448365025599735990

namespace A007956

/-- `A066729(2-A089026(n+1)+n)` -/
def P6448365025599735990.Spec : Prop :=
  ∀ n, P6448365025599735990.a n = A007956 (n + 1)

end A007956

/-! ## A007956.P12985152782633972945

`A061538(n+1)*A290480(n+1)`
-/

namespace A007956.P12985152782633972945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061538 (n + 1) * A290480 (n + 1)

end

end A007956.P12985152782633972945

namespace A007956

/-- `A061538(n+1)*A290480(n+1)` -/
def P12985152782633972945.Spec : Prop :=
  ∀ n, P12985152782633972945.a n = A007956 (n + 1)

end A007956

/-! ## A007956.P11203517991306857578

`A072499(n+1)*A363521(n+1)`
-/

namespace A007956.P11203517991306857578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072499 (n + 1) * A363521 (n + 1)

end

end A007956.P11203517991306857578

namespace A007956

/-- `A072499(n+1)*A363521(n+1)` -/
def P11203517991306857578.Spec : Prop :=
  ∀ n, P11203517991306857578.a n = A007956 (n + 1)

end A007956

/-! ## A007956.P13615374885639510946

`A087652(n+1)/A003557(n+1)`
-/

namespace A007956.P13615374885639510946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087652 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A007956.P13615374885639510946

namespace A007956

/-- `A087652(n+1)/A003557(n+1)` -/
def P13615374885639510946.Spec : Prop :=
  ∀ n, P13615374885639510946.a n = (A007956 (n + 1) : ℚ)

end A007956

/-! ## A007956.P12292009201413239604

`A076722(n+1)/A064987(n+1)`
-/

namespace A007956.P12292009201413239604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076722 (n + 1) : ℚ) / (A064987 (n + 1) : ℚ)

end

end A007956.P12292009201413239604

namespace A007956

/-- `A076722(n+1)/A064987(n+1)` -/
def P12292009201413239604.Spec : Prop :=
  ∀ n, P12292009201413239604.a n = (A007956 (n + 1) : ℚ)

end A007956

/-! ## A007956.P13693166821106676454

`A066729((n+1)/A089026(n+1))`
-/

namespace A007956.P13693166821106676454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066729 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A089026 (n + 1) : ℚ))).toNat

end

end A007956.P13693166821106676454

namespace A007956

/-- `A066729((n+1)/A089026(n+1))` -/
def P13693166821106676454.Spec : Prop :=
  ∀ n, P13693166821106676454.a n = A007956 (n + 1)

end A007956

/-! ## A007956.P11718199946859973409

`A394346(n+1)/A038040(n+1)`
-/

namespace A007956.P11718199946859973409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A394346 (n + 1) : ℚ) / (A038040 (n + 1) : ℚ)

end

end A007956.P11718199946859973409

namespace A007956

/-- `A394346(n+1)/A038040(n+1)` -/
def P11718199946859973409.Spec : Prop :=
  ∀ n, P11718199946859973409.a n = (A007956 (n + 1) : ℚ)

end A007956

/-! ## A007956.P16249702235893585439

`A066729(gcd(n+1, A029832(n+1)))`
-/

namespace A007956.P16249702235893585439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066729 (Int.gcd (n + 1 : ℤ) (A029832 (n + 1)))

end

end A007956.P16249702235893585439

namespace A007956

/-- `A066729(gcd(n+1, A029832(n+1)))` -/
def P16249702235893585439.Spec : Prop :=
  ∀ n, P16249702235893585439.a n = A007956 (n + 1)

end A007956

/-! ## A007956.P16554267366856958637

`gcd(A061007(n+1), A066729(n+1))`
-/

namespace A007956.P16554267366856958637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061007 (n + 1)) (A066729 (n + 1))

end

end A007956.P16554267366856958637

namespace A007956

/-- `gcd(A061007(n+1), A066729(n+1))` -/
def P16554267366856958637.Spec : Prop :=
  ∀ n, (P16554267366856958637.a n : ℤ) = A007956 (n + 1)

end A007956

/-!
# A007957: Numbers that contain an odd digit.

The programs for A007957, the canonical program `A007957.P2732842976765979235` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007957 has offset 1).

The definition of A007957 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007957.P3220225615071432376

`comp[A004520(n)]`
-/

namespace A007957.P3220225615071432376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004520 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007957.P3220225615071432376

namespace A007957

/-- `comp[A004520(n)]` -/
def P3220225615071432376.Spec : Prop :=
  ∀ n, (P3220225615071432376.a n : ℤ) = A007957 (n + 1)

end A007957

/-! ## A007957.P17182344055488780393

`comp[A059627(n)]`
-/

namespace A007957.P17182344055488780393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059627 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007957.P17182344055488780393

namespace A007957

/-- `comp[A059627(n)]` -/
def P17182344055488780393.Spec : Prop :=
  ∀ n, (P17182344055488780393.a n : ℤ) = A007957 (n + 1)

end A007957

/-! ## A007957.P5438926083791506471

`comp[A014263(n+1)]`
-/

namespace A007957.P5438926083791506471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007957.P5438926083791506471

namespace A007957

/-- `comp[A014263(n+1)]` -/
def P5438926083791506471.Spec : Prop :=
  ∀ n, (P5438926083791506471.a n : ℤ) = A007957 (n + 1)

end A007957

/-! ## A007957.P7371353355162072956

`comp[2*A007091(n)]`
-/

namespace A007957.P7371353355162072956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007957.P7371353355162072956

namespace A007957

/-- `comp[2*A007091(n)]` -/
def P7371353355162072956.Spec : Prop :=
  ∀ n, (P7371353355162072956.a n : ℤ) = A007957 (n + 1)

end A007957

/-! ## A007957.P531536124543861337

`comp[A024657(2*n)]`
-/

namespace A007957.P531536124543861337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007957.P531536124543861337

namespace A007957

/-- `comp[A024657(2*n)]` -/
def P531536124543861337.Spec : Prop :=
  ∀ n, (P531536124543861337.a n : ℤ) = A007957 (n + 1)

end A007957

/-! ## A007957.P2732842976765979235

`eq[1, A061486(n)%2]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007957

/-- `eq[1, A061486(n)%2]` -/
def P2732842976765979235.Spec : Prop :=
  ∀ n, (P2732842976765979235.a n : ℤ) = A007957 (n + 1)

theorem P2732842976765979235.correct : P2732842976765979235.Spec := by
  intro n
  simp only [A007957, Nat.add_sub_cancel]

end A007957

/-! ## A007957.P5522660867946110424

`comp[2*lt[A054055(n), 5]]`
-/

namespace A007957.P5522660867946110424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A007957.P5522660867946110424

namespace A007957

/-- `comp[2*lt[A054055(n), 5]]` -/
def P5522660867946110424.Spec : Prop :=
  ∀ n, (P5522660867946110424.a n : ℤ) = A007957 (n + 1)

end A007957

/-! ## A007957.P15413269963366055836

`∪[2*n+1, A007958(n+1)]`
-/

namespace A007957.P15413269963366055836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007957.P15413269963366055836

namespace A007957

/-- `∪[2*n+1, A007958(n+1)]` -/
def P15413269963366055836.Spec : Prop :=
  ∀ n, (P15413269963366055836.a n : ℤ) = A007957 (n + 1)

end A007957

/-! ## A007957.P11405756162551416114

`∪[2*n+1, A007959(n+1)]`
-/

namespace A007957.P11405756162551416114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007957.P11405756162551416114

namespace A007957

/-- `∪[2*n+1, A007959(n+1)]` -/
def P11405756162551416114.Spec : Prop :=
  ∀ n, (P11405756162551416114.a n : ℤ) = A007957 (n + 1)

end A007957

/-! ## A007957.P4013460112796208872

`eq[2, A100961(A171797(n)-1)]`
-/

namespace A007957.P4013460112796208872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100961 (A171797 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007957.P4013460112796208872

namespace A007957

/-- `eq[2, A100961(A171797(n)-1)]` -/
def P4013460112796208872.Spec : Prop :=
  ∀ n, (P4013460112796208872.a n : ℤ) = A007957 (n + 1)

end A007957

/-! ## A007957.P463127837166913564

`∪[A007959(n+1), A029740(n+1)]`
-/

namespace A007957.P463127837166913564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007957.P463127837166913564

namespace A007957

/-- `∪[A007959(n+1), A029740(n+1)]` -/
def P463127837166913564.Spec : Prop :=
  ∀ n, (P463127837166913564.a n : ℤ) = A007957 (n + 1)

end A007957

/-! ## A007957.P13534864846064824928

`∪[A007959(n+1), A030142(n+1)]`
-/

namespace A007957.P13534864846064824928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007957.P13534864846064824928

namespace A007957

/-- `∪[A007959(n+1), A030142(n+1)]` -/
def P13534864846064824928.Spec : Prop :=
  ∀ n, (P13534864846064824928.a n : ℤ) = A007957 (n + 1)

end A007957

/-! ## A007957.P6508329568128506867

`∪[A007959(n+1), A054684(n+1)]`
-/

namespace A007957.P6508329568128506867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007957.P6508329568128506867

namespace A007957

/-- `∪[A007959(n+1), A054684(n+1)]` -/
def P6508329568128506867.Spec : Prop :=
  ∀ n, (P6508329568128506867.a n : ℤ) = A007957 (n + 1)

end A007957

/-! ## A007957.P16089322509017782868

`∪[A007959(n+1), A089684(n+1)]`
-/

namespace A007957.P16089322509017782868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007957.P16089322509017782868

namespace A007957

/-- `∪[A007959(n+1), A089684(n+1)]` -/
def P16089322509017782868.Spec : Prop :=
  ∀ n, (P16089322509017782868.a n : ℤ) = A007957 (n + 1)

end A007957

/-! ## A007957.P18312130374884001649

`∪[A169968(n+1), A011535(n+1)]`
-/

namespace A007957.P18312130374884001649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007957.P18312130374884001649

namespace A007957

/-- `∪[A169968(n+1), A011535(n+1)]` -/
def P18312130374884001649.Spec : Prop :=
  ∀ n, (P18312130374884001649.a n : ℤ) = A007957 (n + 1)

end A007957

/-! ## A007957.P1347121930587146735

`lt[0, A196564(n)]`
-/

namespace A007957.P1347121930587146735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007957.P1347121930587146735

namespace A007957

/-- `lt[0, A196564(n)]` -/
def P1347121930587146735.Spec : Prop :=
  ∀ n, (P1347121930587146735.a n : ℤ) = A007957 (n + 1)

end A007957

/-! ## A007957.P14137935376518928143

`eq[2, gcd(2, A089898(n))]`
-/

namespace A007957.P14137935376518928143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A089898 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007957.P14137935376518928143

namespace A007957

/-- `eq[2, gcd(2, A089898(n))]` -/
def P14137935376518928143.Spec : Prop :=
  ∀ n, (P14137935376518928143.a n : ℤ) = A007957 (n + 1)

end A007957

/-! ## A007957.P10199116355836633459

`eq[1, and(1, A059717(n))]`
-/

namespace A007957.P10199116355836633459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A059717 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007957.P10199116355836633459

namespace A007957

/-- `eq[1, and(1, A059717(n))]` -/
def P10199116355836633459.Spec : Prop :=
  ∀ n, (P10199116355836633459.a n : ℤ) = A007957 (n + 1)

end A007957

/-! ## A007957.P14852498782128802550

`lt[2*A106747(n), n]`
-/

namespace A007957.P14852498782128802550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106747 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A007957.P14852498782128802550

namespace A007957

/-- `lt[2*A106747(n), n]` -/
def P14852498782128802550.Spec : Prop :=
  ∀ n, (P14852498782128802550.a n : ℤ) = A007957 (n + 1)

end A007957

/-! ## A007957.P2266426603281134632

`comp[A329249(n)]`
-/

namespace A007957.P2266426603281134632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329249 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007957.P2266426603281134632

namespace A007957

/-- `comp[A329249(n)]` -/
def P2266426603281134632.Spec : Prop :=
  ∀ n, (P2266426603281134632.a n : ℤ) = A007957 (n + 1)

end A007957

/-!
# A007958: Even numbers with at least one odd digit.

The programs for A007958, the canonical program `A007958.P16980940167034855960` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007958 has offset 1).

The definition of A007958 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007958.P16980940167034855960

`2*comp[A007091(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A007958

/-- `2*comp[A007091(n)]` -/
def P16980940167034855960.Spec : Prop :=
  ∀ n, (P16980940167034855960.a n : ℤ) = A007958 (n + 1)

theorem P16980940167034855960.correct : P16980940167034855960.Spec := by
  intro n
  simp only [A007958, Nat.add_sub_cancel]

end A007958

/-! ## A007958.P4258910501403604071

`2*comp[A135210(A191610(n+1)+1)]`
-/

namespace A007958.P4258910501403604071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135210 (A191610 (n + 1) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007958.P4258910501403604071

namespace A007958

/-- `2*comp[A135210(A191610(n+1)+1)]` -/
def P4258910501403604071.Spec : Prop :=
  ∀ n, (P4258910501403604071.a n : ℤ) = A007958 (n + 1)

end A007958

/-! ## A007958.P15636697794360067021

`2*comp[∩[A039147(n+1), A007092(n)]]`
-/

namespace A007958.P15636697794360067021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039147 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A007958.P15636697794360067021

namespace A007958

/-- `2*comp[∩[A039147(n+1), A007092(n)]]` -/
def P15636697794360067021.Spec : Prop :=
  ∀ n, (P15636697794360067021.a n : ℤ) = A007958 (n + 1)

end A007958

/-! ## A007958.P4570152354367487695

`2*comp[∩[A135210(n+1), A007092(n)]]`
-/

namespace A007958.P4570152354367487695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135210 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A007958.P4570152354367487695

namespace A007958

/-- `2*comp[∩[A135210(n+1), A007092(n)]]` -/
def P4570152354367487695.Spec : Prop :=
  ∀ n, (P4570152354367487695.a n : ℤ) = A007958 (n + 1)

end A007958

/-! ## A007958.P2178798603058736174

`2*lt[A167831(n), n]`
-/

namespace A007958.P2178798603058736174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167831 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A007958.P2178798603058736174

namespace A007958

/-- `2*lt[A167831(n), n]` -/
def P2178798603058736174.Spec : Prop :=
  ∀ n, (P2178798603058736174.a n : ℤ) = A007958 (n + 1)

end A007958

/-! ## A007958.P5417713019193008220

`A004277(comp[A007091(n)])`
-/

namespace A007958.P5417713019193008220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A007958.P5417713019193008220

namespace A007958

/-- `A004277(comp[A007091(n)])` -/
def P5417713019193008220.Spec : Prop :=
  ∀ n, P5417713019193008220.a n = A007958 (n + 1)

end A007958

/-! ## A007958.P7842773451075826241

`A005843(comp[A007091(n)])`
-/

namespace A007958.P7842773451075826241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A007958.P7842773451075826241

namespace A007958

/-- `A005843(comp[A007091(n)])` -/
def P7842773451075826241.Spec : Prop :=
  ∀ n, P7842773451075826241.a n = A007958 (n + 1)

end A007958

/-! ## A007958.P4434473354260390356

`A004277(lt[4, A054055(n)])`
-/

namespace A007958.P4434473354260390356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A007958.P4434473354260390356

namespace A007958

/-- `A004277(lt[4, A054055(n)])` -/
def P4434473354260390356.Spec : Prop :=
  ∀ n, P4434473354260390356.a n = A007958 (n + 1)

end A007958

/-! ## A007958.P6658214336563192220

`A004277(lt[A167831(n), n])`
-/

namespace A007958.P6658214336563192220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167831 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A007958.P6658214336563192220

namespace A007958

/-- `A004277(lt[A167831(n), n])` -/
def P6658214336563192220.Spec : Prop :=
  ∀ n, P6658214336563192220.a n = A007958 (n + 1)

end A007958

/-! ## A007958.P9618349198306943311

`A005843(lt[A167831(n), n])`
-/

namespace A007958.P9618349198306943311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167831 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A007958.P9618349198306943311

namespace A007958

/-- `A005843(lt[A167831(n), n])` -/
def P9618349198306943311.Spec : Prop :=
  ∀ n, P9618349198306943311.a n = A007958 (n + 1)

end A007958

/-! ## A007958.P3377394083791037691

`A004277(lt[A167832(n)-n, n])`
-/

namespace A007958.P3377394083791037691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167832 n - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A007958.P3377394083791037691

namespace A007958

/-- `A004277(lt[A167832(n)-n, n])` -/
def P3377394083791037691.Spec : Prop :=
  ∀ n, P3377394083791037691.a n = A007958 (n + 1)

end A007958

/-! ## A007958.P8368133004372278657

`A005843(lt[A167832(n)-n, n])`
-/

namespace A007958.P8368133004372278657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167832 n - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A007958.P8368133004372278657

namespace A007958

/-- `A005843(lt[A167832(n)-n, n])` -/
def P8368133004372278657.Spec : Prop :=
  ∀ n, P8368133004372278657.a n = A007958 (n + 1)

end A007958

/-! ## A007958.P16135370779508004769

`∩[2*n, A007959(n+1)]`
-/

namespace A007958.P16135370779508004769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007958.P16135370779508004769

namespace A007958

/-- `∩[2*n, A007959(n+1)]` -/
def P16135370779508004769.Spec : Prop :=
  ∀ n, (P16135370779508004769.a n : ℤ) = A007958 (n + 1)

end A007958

/-! ## A007958.P126130349179739270

`∩[A007959(n+1), A004271(n)]`
-/

namespace A007958.P126130349179739270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007958.P126130349179739270

namespace A007958

/-- `∩[A007959(n+1), A004271(n)]` -/
def P126130349179739270.Spec : Prop :=
  ∀ n, (P126130349179739270.a n : ℤ) = A007958 (n + 1)

end A007958

/-! ## A007958.P15706048325284417034

`∩[A007959(n+1), A004272(n)]`
-/

namespace A007958.P15706048325284417034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007958.P15706048325284417034

namespace A007958

/-- `∩[A007959(n+1), A004272(n)]` -/
def P15706048325284417034.Spec : Prop :=
  ∀ n, (P15706048325284417034.a n : ℤ) = A007958 (n + 1)

end A007958

/-! ## A007958.P16264709464128879707

`∩[A007959(n+1), A004275(n)]`
-/

namespace A007958.P16264709464128879707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007958.P16264709464128879707

namespace A007958

/-- `∩[A007959(n+1), A004275(n)]` -/
def P16264709464128879707.Spec : Prop :=
  ∀ n, (P16264709464128879707.a n : ℤ) = A007958 (n + 1)

end A007958

/-! ## A007958.P15170601835447068681

`∩[A007959(n+1), A004277(n)]`
-/

namespace A007958.P15170601835447068681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007958.P15170601835447068681

namespace A007958

/-- `∩[A007959(n+1), A004277(n)]` -/
def P15170601835447068681.Spec : Prop :=
  ∀ n, (P15170601835447068681.a n : ℤ) = A007958 (n + 1)

end A007958

/-! ## A007958.P2681384178901989176

`∩[A007959(n+1), A004279(n)]`
-/

namespace A007958.P2681384178901989176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007958.P2681384178901989176

namespace A007958

/-- `∩[A007959(n+1), A004279(n)]` -/
def P2681384178901989176.Spec : Prop :=
  ∀ n, (P2681384178901989176.a n : ℤ) = A007958 (n + 1)

end A007958

/-! ## A007958.P2796769622686204889

`∩[A007959(n+1), A020739(n)]`
-/

namespace A007958.P2796769622686204889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007958.P2796769622686204889

namespace A007958

/-- `∩[A007959(n+1), A020739(n)]` -/
def P2796769622686204889.Spec : Prop :=
  ∀ n, (P2796769622686204889.a n : ℤ) = A007958 (n + 1)

end A007958

/-!
# A007959: Some nontrivial permutation of digits is an odd number.

The programs for A007959, there is no canonical definition to state claims against.
-/

/-! ## A007959.P3617706892467003112

`lt[13, A103181(n)*A139337(n)]`
-/

namespace A007959.P3617706892467003112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 n * A139337 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007959.P3617706892467003112

/-! ## A007959.P4605268891535113632

`lt[A010054(A178334(n)), A103181(n)]`
-/

namespace A007959.P4605268891535113632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A178334 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007959.P4605268891535113632

/-! ## A007959.P3157813644666847585

`lt[A228710(A003100(n)), A196564(n)]`
-/

namespace A007959.P3157813644666847585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 (A003100 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007959.P3157813644666847585

/-! ## A007959.P1881502515024420446

`lt[A153238(n+5)/A037471(n+2), A103181(n)]`
-/

namespace A007959.P1881502515024420446
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153238 (n + 5) : ℚ) / (A037471 (n + 2) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A007959.P1881502515024420446

/-! ## A007959.P1027296233467446597

`lt[A010673(A179051(n)), A045841(n)]`
-/

namespace A007959.P1027296233467446597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A179051 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045841 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007959.P1027296233467446597

/-! ## A007959.P15563710541745754243

`lt[A233427(A065031(n)), A103181(n)]`
-/

namespace A007959.P15563710541745754243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233427 (A065031 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007959.P15563710541745754243

/-! ## A007959.P5929575390005829395

`lt[A151933(A264668(n)), A103181(n)]`
-/

namespace A007959.P5929575390005829395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 (A264668 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007959.P5929575390005829395

/-! ## A007959.P7758062032739328549

`lt[9, A093178(A082216(n))]`
-/

namespace A007959.P7758062032739328549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A082216 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007959.P7758062032739328549

/-! ## A007959.P18334167590528473396

`lt[A119788(2*n+1), A103181(n)²]`
-/

namespace A007959.P18334167590528473396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119788 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007959.P18334167590528473396

/-! ## A007959.P1864786722360446733

`lt[dr(A119788(2*(n+1))), A103181(n)]`
-/

namespace A007959.P1864786722360446733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A119788 (2 * (n + 1)))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007959.P1864786722360446733

/-! ## A007959.P8411569717936975081

`lt[A309863(A025428(n)), A103181(n)]`
-/

namespace A007959.P8411569717936975081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309863 (A025428 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007959.P8411569717936975081

/-! ## A007959.P4040274474719155757

`lt[A054055(A004525(n)²), A103181(n)]`
-/

namespace A007959.P4040274474719155757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A004525 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007959.P4040274474719155757

/-! ## A007959.P8581031028221913570

`lt[A283431(A111707(n)), A103181(n)]`
-/

namespace A007959.P8581031028221913570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283431 (A111707 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007959.P8581031028221913570

/-! ## A007959.P9526731301117813056

`eq[0, A117780(A179051(n))]`
-/

namespace A007959.P9526731301117813056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117780 (A179051 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007959.P9526731301117813056

/-! ## A007959.P10222809790255011598

`eq[A000007(n), A120954(A179051(n))]`
-/

namespace A007959.P10222809790255011598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120954 (A179051 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007959.P10222809790255011598

/-!
# A007960: Positive numbers k with the property that some permutation of the digits of k is a triangular number.

The programs for A007960, there is no canonical definition to state claims against.
-/

/-! ## A007960.P1063236201686818713

`eq[A069288(n+1), A143062(A271592(n+1))]`
-/

namespace A007960.P1063236201686818713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143062 (A271592 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007960.P1063236201686818713

/-! ## A007960.P8533075759460048398

`eq[A069289(n+1), A143062(A271592(n+1))]`
-/

namespace A007960.P8533075759460048398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143062 (A271592 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007960.P8533075759460048398

/-! ## A007960.P3205603330866583678

`lt[0, A256280(A086329(n))]`
-/

namespace A007960.P3205603330866583678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256280 (A086329 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007960.P3205603330866583678

/-! ## A007960.P15400903949266667577

`eq[3, A001203(A324162(n))]`
-/

namespace A007960.P15400903949266667577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 (A324162 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007960.P15400903949266667577

/-! ## A007960.P13207977804728127626

`eq[A103709(n+1), A208459(n)]`
-/

namespace A007960.P13207977804728127626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208459 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007960.P13207977804728127626

/-!
# A007961: n written in base where place values are positive squares.

The programs for A007961, there is no canonical definition to state claims against.
-/

/-! ## A007961.P946237916672859126

`A007090(∑[A212363(n)^A079398(n)])`
-/

namespace A007961.P946237916672859126
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212363 n : ℚ) ^ (A079398 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A007961.P946237916672859126

/-! ## A007961.P3696258777967875289

`A007090(∑[A212363(n)^A007947(n+1)])`
-/

namespace A007961.P3696258777967875289
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212363 n : ℚ) ^ (A007947 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A007961.P3696258777967875289

/-! ## A007961.P6117158897533233882

`A007090(∑[A212363(n)^A293223(n+1)])`
-/

namespace A007961.P6117158897533233882
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212363 n : ℚ) ^ (A293223 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A007961.P6117158897533233882

/-! ## A007961.P2470925445332220594

`A061909(A335134(n+3)%A096757(n+1))`
-/

namespace A007961.P2470925445332220594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061909 (Int.tmod (A335134 (n + 3)) (A096757 (n + 1))).toNat

end

end A007961.P2470925445332220594

/-!
# A007962: a(n) is the largest odd number k such that 9, 11, ..., k are sums of 3 of first n odd primes.

The programs for A007962, there is no canonical definition to state claims against.
-/

/-! ## A007962.P16996739731644913475

`A118001(A186745(n)+A040976(2*n+5))`
-/

namespace A007962.P16996739731644913475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118001 (A186745 n + A040976 (2 * n + 5)).toNat

end

end A007962.P16996739731644913475

/-! ## A007962.P17377210236098583074

`A368849(A006053(n))+A040976(2*n+5)`
-/

namespace A007962.P17377210236098583074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368849 (A006053 n).toNat + A040976 (2 * n + 5)

end

end A007962.P17377210236098583074

/-! ## A007962.P14123814637035610635

`A325825(A342529(n))+A086801(2*n+5)`
-/

namespace A007962.P14123814637035610635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325825 (A342529 n).toNat + A086801 (2 * n + 5)

end

end A007962.P14123814637035610635

/-! ## A007962.P16831509291033938698

`A000040(2*n+5)-A010673(A138281(n))`
-/

namespace A007962.P16831509291033938698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * n + 5) - A010673 (A138281 n).toNat

end

end A007962.P16831509291033938698

/-! ## A007962.P2521101155083507705

`or(A040976(2*n+5), A096501(A002212(n)))`
-/

namespace A007962.P2521101155083507705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040976 (2 * n + 5)) (A096501 (A002212 n).toNat)

end

end A007962.P2521101155083507705

/-!
# A007963: Number of (unordered) ways of writing 2n+1 as a sum of 3 odd primes.

The programs for A007963, there is no canonical definition to state claims against.
-/

/-! ## A007963.P4243267878829562623

`A190353(Δ[n²])`
-/

namespace A007963.P4243267878829562623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190353 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A007963.P4243267878829562623

/-! ## A007963.P11443127354187288738

`A190353(2*n+1)%A001400(n)`
-/

namespace A007963.P11443127354187288738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190353 (2 * n + 1)) (A001400 n)

end

end A007963.P11443127354187288738

/-! ## A007963.P14258262913123547595

`A190353(n+1+n)+A000007(n+1)`
-/

namespace A007963.P14258262913123547595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190353 (n + 1 + n) + A000007 (n + 1)

end

end A007963.P14258262913123547595

/-! ## A007963.P17425614336908420699

`A308955(A048853(2*(n+2)))+A190353(2*n+1)`
-/

namespace A007963.P17425614336908420699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308955 (A048853 (2 * (n + 2))).toNat + A190353 (2 * n + 1)

end

end A007963.P17425614336908420699

/-! ## A007963.P10342024818857013654

`A190353(2*n+1)*A334019(A000961(n+1))`
-/

namespace A007963.P10342024818857013654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190353 (2 * n + 1) * A334019 (A000961 (n + 1)).toNat

end

end A007963.P10342024818857013654

/-! ## A007963.P11621167008311256020

`A190353(2*n+1)*A334019(A048848(n+1))`
-/

namespace A007963.P11621167008311256020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190353 (2 * n + 1) * A334019 (A048848 (n + 1)).toNat

end

end A007963.P11621167008311256020

/-! ## A007963.P3086007571005313495

`A190353(n+1+n)/A001222(A001359(n+1))`
-/

namespace A007963.P3086007571005313495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190353 (n + 1 + n) : ℚ) / (A001222 (A001359 (n + 1)).toNat : ℚ)

end

end A007963.P3086007571005313495

/-! ## A007963.P13428498716114737146

`A190353(n+1+n)+A010051(A000954(n+1))`
-/

namespace A007963.P13428498716114737146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190353 (n + 1 + n) + A010051 (A000954 (n + 1)).toNat

end

end A007963.P13428498716114737146

/-! ## A007963.P10721134322394365886

`A350399(A350400(A190353(2*n+1)))`
-/

namespace A007963.P10721134322394365886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350399 (A350400 (A190353 (2 * n + 1)).toNat).toNat

end

end A007963.P10721134322394365886

/-!
# A007964: Numbers k such that product of proper divisors of k is <= k; i.e., product of divisors of k is <= k^2.

The programs for A007964, the canonical program `A007964.P10104679954901547100` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007964 has offset 1).

The definition of A007964 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007964.P10104679954901547100

`eq[1, A353799(n+1)]+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007964

/-- `eq[1, A353799(n+1)]+1` -/
def P10104679954901547100.Spec : Prop :=
  ∀ n, (P10104679954901547100.a n : ℤ) = A007964 (n + 1)

theorem P10104679954901547100.correct : P10104679954901547100.Spec := by
  intro n
  simp only [A007964, Nat.add_sub_cancel]

end A007964

/-! ## A007964.P8194676123119008694

`lt[A339846(n+1), 2]+1`
-/

namespace A007964.P8194676123119008694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339846 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A007964.P8194676123119008694

namespace A007964

/-- `lt[A339846(n+1), 2]+1` -/
def P8194676123119008694.Spec : Prop :=
  ∀ n, (P8194676123119008694.a n : ℤ) = A007964 (n + 1)

end A007964

/-! ## A007964.P606662068575870414

`lt[A304793(n+1), 4]+1`
-/

namespace A007964.P606662068575870414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304793 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A007964.P606662068575870414

namespace A007964

/-- `lt[A304793(n+1), 4]+1` -/
def P606662068575870414.Spec : Prop :=
  ∀ n, (P606662068575870414.a n : ℤ) = A007964 (n + 1)

end A007964

/-! ## A007964.P3639588512226655396

`lt[A353378(n+1), 4]+1`
-/

namespace A007964.P3639588512226655396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353378 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A007964.P3639588512226655396

namespace A007964

/-- `lt[A353378(n+1), 4]+1` -/
def P3639588512226655396.Spec : Prop :=
  ∀ n, (P3639588512226655396.a n : ℤ) = A007964 (n + 1)

end A007964

/-! ## A007964.P6687918175176448379

`lt[A000005(n+1), 5]+1`
-/

namespace A007964.P6687918175176448379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A007964.P6687918175176448379

namespace A007964

/-- `lt[A000005(n+1), 5]+1` -/
def P6687918175176448379.Spec : Prop :=
  ∀ n, (P6687918175176448379.a n : ℤ) = A007964 (n + 1)

end A007964

/-! ## A007964.P3940256737256957703

`lt[A327527(n+1), 5]+1`
-/

namespace A007964.P3940256737256957703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327527 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A007964.P3940256737256957703

namespace A007964

/-- `lt[A327527(n+1), 5]+1` -/
def P3940256737256957703.Spec : Prop :=
  ∀ n, (P3940256737256957703.a n : ℤ) = A007964 (n + 1)

end A007964

/-! ## A007964.P1408902115384075443

`eq[1, A317939(n+1)²]+1`
-/

namespace A007964.P1408902115384075443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317939 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A007964.P1408902115384075443

namespace A007964

/-- `eq[1, A317939(n+1)²]+1` -/
def P1408902115384075443.Spec : Prop :=
  ∀ n, (P1408902115384075443.a n : ℤ) = A007964 (n + 1)

end A007964

/-! ## A007964.P1969123899397650956

`eq[1, A000700(A077462(n)+2)]`
-/

namespace A007964.P1969123899397650956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A077462 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007964.P1969123899397650956

namespace A007964

/-- `eq[1, A000700(A077462(n)+2)]` -/
def P1969123899397650956.Spec : Prop :=
  ∀ n, (P1969123899397650956.a n : ℤ) = A007964 (n + 1)

end A007964

/-! ## A007964.P7850076934139715054

`∪[A000430(n+1), A007422(n+1)]`
-/

namespace A007964.P7850076934139715054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007964.P7850076934139715054

namespace A007964

/-- `∪[A000430(n+1), A007422(n+1)]` -/
def P7850076934139715054.Spec : Prop :=
  ∀ n, (P7850076934139715054.a n : ℤ) = A007964 (n + 1)

end A007964

/-! ## A007964.P3505174241939411653

`∪[A030078(n+1), A037143(n+1)]`
-/

namespace A007964.P3505174241939411653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007964.P3505174241939411653

namespace A007964

/-- `∪[A030078(n+1), A037143(n+1)]` -/
def P3505174241939411653.Spec : Prop :=
  ∀ n, (P3505174241939411653.a n : ℤ) = A007964 (n + 1)

end A007964

/-! ## A007964.P563011246770474328

`∪[A001358(n+1), A088380(n+1)]`
-/

namespace A007964.P563011246770474328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007964.P563011246770474328

namespace A007964

/-- `∪[A001358(n+1), A088380(n+1)]` -/
def P563011246770474328.Spec : Prop :=
  ∀ n, (P563011246770474328.a n : ℤ) = A007964 (n + 1)

end A007964

/-! ## A007964.P2738965969778533472

`∪[A235050(n+1), A323644(n+1)]`
-/

namespace A007964.P2738965969778533472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007964.P2738965969778533472

namespace A007964

/-- `∪[A235050(n+1), A323644(n+1)]` -/
def P2738965969778533472.Spec : Prop :=
  ∀ n, (P2738965969778533472.a n : ℤ) = A007964 (n + 1)

end A007964

/-! ## A007964.P17675637874296327035

`eq[A008578(A033273(n+1)), A033273(n+1)]+1`
-/

namespace A007964.P17675637874296327035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A033273 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A007964.P17675637874296327035

namespace A007964

/-- `eq[A008578(A033273(n+1)), A033273(n+1)]+1` -/
def P17675637874296327035.Spec : Prop :=
  ∀ n, (P17675637874296327035.a n : ℤ) = A007964 (n + 1)

end A007964

/-! ## A007964.P614395971010159792

`filter[A354144(n+1), A340369(#)]`
-/

namespace A007964.P614395971010159792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A007964.P614395971010159792

namespace A007964

/-- `filter[A354144(n+1), A340369(#)]` -/
def P614395971010159792.Spec : Prop :=
  ∀ n, P614395971010159792.a n = A007964 (n + 1)

end A007964

/-! ## A007964.P16188484455486825062

`filter[A354144(n+1), A353799(#)]`
-/

namespace A007964.P16188484455486825062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A007964.P16188484455486825062

namespace A007964

/-- `filter[A354144(n+1), A353799(#)]` -/
def P16188484455486825062.Spec : Prop :=
  ∀ n, P16188484455486825062.a n = A007964 (n + 1)

end A007964

/-! ## A007964.P11632996633135607842

`filter[A085156(n+1), A340369(#)]`
-/

namespace A007964.P11632996633135607842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A007964.P11632996633135607842

namespace A007964

/-- `filter[A085156(n+1), A340369(#)]` -/
def P11632996633135607842.Spec : Prop :=
  ∀ n, P11632996633135607842.a n = A007964 (n + 1)

end A007964

/-! ## A007964.P15570884169279799348

`filter[A085156(n+1), A353799(#)]`
-/

namespace A007964.P15570884169279799348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A007964.P15570884169279799348

namespace A007964

/-- `filter[A085156(n+1), A353799(#)]` -/
def P15570884169279799348.Spec : Prop :=
  ∀ n, P15570884169279799348.a n = A007964 (n + 1)

end A007964

/-! ## A007964.P15988867386237261737

`filter[A119885(n+1), A340369(#)]`
-/

namespace A007964.P15988867386237261737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A007964.P15988867386237261737

namespace A007964

/-- `filter[A119885(n+1), A340369(#)]` -/
def P15988867386237261737.Spec : Prop :=
  ∀ n, P15988867386237261737.a n = A007964 (n + 1)

end A007964

/-! ## A007964.P7906072928956857384

`filter[A119885(n+1), A353799(#)]`
-/

namespace A007964.P7906072928956857384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A007964.P7906072928956857384

namespace A007964

/-- `filter[A119885(n+1), A353799(#)]` -/
def P7906072928956857384.Spec : Prop :=
  ∀ n, P7906072928956857384.a n = A007964 (n + 1)

end A007964

/-! ## A007964.P3544467572371884773

`filter[A115105(n+1), A353799(#)]`
-/

namespace A007964.P3544467572371884773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A007964.P3544467572371884773

namespace A007964

/-- `filter[A115105(n+1), A353799(#)]` -/
def P3544467572371884773.Spec : Prop :=
  ∀ n, P3544467572371884773.a n = A007964 (n + 1)

end A007964

/-!
# A007965: a(n) = n^prime(n) - prime(n)^n.

The programs for A007965, the canonical program `A007965.P1414639077597057692` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007965 has offset 1).

The definition of A007965 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007965.P1414639077597057692

`(n+1)^A000040(n+1)-A000040(n+1)^(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007965

/-- `(n+1)^A000040(n+1)-A000040(n+1)^(n+1)` -/
def P1414639077597057692.Spec : Prop :=
  ∀ n, P1414639077597057692.a n = (A007965 (n + 1) : ℚ)

end A007965

/-! ## A007965.P5470627076095516968

`A062481(n+1)-A062457(n+1)`
-/

namespace A007965.P5470627076095516968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062481 (n + 1) - A062457 (n + 1)

end

end A007965.P5470627076095516968

namespace A007965

/-- `A062481(n+1)-A062457(n+1)` -/
def P5470627076095516968.Spec : Prop :=
  ∀ n, P5470627076095516968.a n = A007965 (n + 1)

end A007965

/-! ## A007965.P16248714971118955886

`A062481(n+1)+1-A062006(n+1)`
-/

namespace A007965.P16248714971118955886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062481 (n + 1) + (1 - A062006 (n + 1))

end

end A007965.P16248714971118955886

namespace A007965

/-- `A062481(n+1)+1-A062006(n+1)` -/
def P16248714971118955886.Spec : Prop :=
  ∀ n, P16248714971118955886.a n = A007965 (n + 1)

end A007965

/-! ## A007965.P864405310604981769

`A062481(n+1)-(A069459(n+1)+1)`
-/

namespace A007965.P864405310604981769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062481 (n + 1) - (A069459 (n + 1) + 1)

end

end A007965.P864405310604981769

namespace A007965

/-- `A062481(n+1)-(A069459(n+1)+1)` -/
def P864405310604981769.Spec : Prop :=
  ∀ n, P864405310604981769.a n = A007965 (n + 1)

end A007965

/-! ## A007965.P3816611148039593884

`(n+1)^A006005(n+1)-A062457(n+1)`
-/

namespace A007965.P3816611148039593884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A006005 (n + 1) : ℤ) - (A062457 (n + 1) : ℚ)

end

end A007965.P3816611148039593884

namespace A007965

/-- `(n+1)^A006005(n+1)-A062457(n+1)` -/
def P3816611148039593884.Spec : Prop :=
  ∀ n, P3816611148039593884.a n = (A007965 (n + 1) : ℚ)

end A007965

/-!
# A007966: First factor in happy factorization of n.

The programs for A007966, there is no canonical definition to state claims against.
-/

/-! ## A007966.P5611297579254484528

`2*n/A004277(A007967(n))`
-/

namespace A007966.P5611297579254484528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℚ) / (A004277 (A007967 n).toNat : ℚ))

end

end A007966.P5611297579254484528

/-! ## A007966.P4073443716082577883

`n/A007967(A000007(n)+n)`
-/

namespace A007966.P4073443716082577883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A007967 (A000007 n + (n : ℤ)).toNat : ℚ)

end

end A007966.P4073443716082577883

/-! ## A007966.P16678548145515969401

`n/A007967(A000038(n)+n)`
-/

namespace A007966.P16678548145515969401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A007967 (A000038 n + (n : ℤ)).toNat : ℚ)

end

end A007966.P16678548145515969401

/-! ## A007966.P11881646091021412148

`n/(A007967(n)-A000007(n))`
-/

namespace A007966.P11881646091021412148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A007967 n - A000007 n : ℚ)

end

end A007966.P11881646091021412148

/-! ## A007966.P11828486671969704894

`n/A007967(A004277(n)-n)`
-/

namespace A007966.P11828486671969704894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A007967 (A004277 n - (n : ℤ)).toNat : ℚ)

end

end A007966.P11828486671969704894

/-! ## A007966.P5012454654734813508

`A005843(n)/A004277(A007967(n))`
-/

namespace A007966.P5012454654734813508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 n : ℚ) / (A004277 (A007967 n).toNat : ℚ)

end

end A007966.P5012454654734813508

/-! ## A007966.P13921189722935203527

`n/A007967(A007318(∑[n]+1))`
-/

namespace A007966.P13921189722935203527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A007967 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat : ℚ)

end

end A007966.P13921189722935203527

/-! ## A007966.P5224442346431879757

`A262324(2*n)`
-/

namespace A007966.P5224442346431879757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262324 (2 * n)

end

end A007966.P5224442346431879757

/-!
# A007967: Second factor in happy factorization of n.

The programs for A007967, there is no canonical definition to state claims against.
-/

/-! ## A007967.P4858936606513361316

`n/A007966(C(2, n)+n)`
-/

namespace A007967.P4858936606513361316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A007966 (Nat.choose 2 n + n) : ℚ)

end

end A007967.P4858936606513361316

/-! ## A007967.P7042503257923199308

`n/A028310(A007966(n))`
-/

namespace A007967.P7042503257923199308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A028310 (A007966 n).toNat : ℚ)

end

end A007967.P7042503257923199308

/-! ## A007967.P1106385446414583227

`n/A007966(A233583(n+1))`
-/

namespace A007967.P1106385446414583227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A007966 (A233583 (n + 1)).toNat : ℚ)

end

end A007967.P1106385446414583227

/-! ## A007967.P13655792338207679616

`n/A007966(A065033(2*n))`
-/

namespace A007967.P13655792338207679616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A007966 (A065033 (2 * n)).toNat : ℚ)

end

end A007967.P13655792338207679616

/-! ## A007967.P17124999087630176415

`n/A007966(A004277(n)-n)`
-/

namespace A007967.P17124999087630176415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A007966 (A004277 n - (n : ℤ)).toNat : ℚ)

end

end A007967.P17124999087630176415

/-! ## A007967.P7231927578378352797

`A005843(n)/A004277(A007966(n))`
-/

namespace A007967.P7231927578378352797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 n : ℚ) / (A004277 (A007966 n).toNat : ℚ)

end

end A007967.P7231927578378352797

/-! ## A007967.P6628423051829665330

`A008585(n)/A008486(A007966(n))`
-/

namespace A007967.P6628423051829665330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008585 n : ℚ) / (A008486 (A007966 n).toNat : ℚ)

end

end A007967.P6628423051829665330

/-! ## A007967.P6848757053098503815

`A008586(n)/A008574(A007966(n))`
-/

namespace A007967.P6848757053098503815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008586 n : ℚ) / (A008574 (A007966 n).toNat : ℚ)

end

end A007967.P6848757053098503815

/-! ## A007967.P1539484910768284165

`n/A007966(A007318(∑[n]+1))`
-/

namespace A007967.P1539484910768284165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A007966 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat : ℚ)

end

end A007967.P1539484910768284165

/-! ## A007967.P5700233961415655237

`n/A007966(A079643(n²+1))`
-/

namespace A007967.P5700233961415655237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A007966 (A079643 (n ^ 2 + 1)).toNat : ℚ)

end

end A007967.P5700233961415655237

/-!
# A007968: Type of happy factorization of n.

The programs for A007968, there is no canonical definition to state claims against.
-/

/-! ## A007968.P6840749904310574460

`1-char[n²]+char[A007970(n+1)]`
-/

namespace A007968.P6840749904310574460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007970 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A007968.P6840749904310574460

/-! ## A007968.P1454934471919270365

`char[A007970(n+1)]+1-A010052(n)`
-/

namespace A007968.P1454934471919270365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007970 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℤ) - A010052 n

end

end A007968.P1454934471919270365

/-! ## A007968.P6446446164019789980

`char[A007970(n+1)]+char[A000037(n+1)]`
-/

namespace A007968.P6446446164019789980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A007968.P6446446164019789980

/-! ## A007968.P5526203476248123923

`A088569(A319356(n+1))-A302052(n)`
-/

namespace A007968.P5526203476248123923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088569 (A319356 (n + 1)).toNat - A302052 n

end

end A007968.P5526203476248123923

/-! ## A007968.P12397021613733089198

`A373269(A120230(3*n+1))-A008966(n+1)`
-/

namespace A007968.P12397021613733089198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373269 (A120230 (3 * n + 1)).toNat - A008966 (n + 1)

end

end A007968.P12397021613733089198

/-!
# A007969: Rectangular numbers.

The programs for A007969, there is no canonical definition to state claims against.
-/

/-! ## A007969.P12204200970156678360

`A191854(n+1)*A191855(n+1)`
-/

namespace A007969.P12204200970156678360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191854 (n + 1) * A191855 (n + 1)

end

end A007969.P12204200970156678360

/-! ## A007969.P4399607632047521953

`comp[∪[A007970(n+1), n²]]`
-/

namespace A007969.P4399607632047521953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007970 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A007969.P4399607632047521953

/-! ## A007969.P967480113433769570

`comp[∪[A000290(n), A007970(n+1)]]`
-/

namespace A007969.P967480113433769570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007970 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A007969.P967480113433769570

/-! ## A007969.P5962003040491088469

`eq[2, A266722(A010340(n+1))]+1`
-/

namespace A007969.P5962003040491088469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266722 (A010340 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A007969.P5962003040491088469

/-! ## A007969.P7247836302888212169

`lt[1, A260738(A010340(n+1)+1)]+1`
-/

namespace A007969.P7247836302888212169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260738 (A010340 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A007969.P7247836302888212169

/-! ## A007969.P10050568742955338881

`lt[2, A020639(A010340(n+1)+1)]+1`
-/

namespace A007969.P10050568742955338881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A010340 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A007969.P10050568742955338881

/-! ## A007969.P3741185213569387284

`eq[A010341(n+1)%2, A000122(n+1)]+1`
-/

namespace A007969.P3741185213569387284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010341 (n + 1)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A007969.P3741185213569387284

/-! ## A007969.P8149586755384268962

`lcm(A191854(A000027(n+1)), A191855(n+1))`
-/

namespace A007969.P8149586755384268962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A191854 (A000027 (n + 1)).toNat) (A191855 (n + 1))

end

end A007969.P8149586755384268962

/-! ## A007969.P14263423928750813893

`eq[1, A007968(n)]`
-/

namespace A007969.P14263423928750813893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007969.P14263423928750813893

/-! ## A007969.P10752676879604463524

`record[2-A007968(n+1)²+n]`
-/

namespace A007969.P10752676879604463524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A007968 (n + 1) ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007969.P10752676879604463524

/-! ## A007969.P4668790508288774838

`record[A000037(n+1)/A007968(A000037(n+1))]`
-/

namespace A007969.P4668790508288774838
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000037 (n + 1) : ℚ) / (A007968 (A000037 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007969.P4668790508288774838

/-!
# A007970: Rhombic numbers.

The programs for A007970, there is no canonical definition to state claims against.
-/

/-! ## A007970.P4612441872923677940

`A191856(n+1)*A191857(n+1)`
-/

namespace A007970.P4612441872923677940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191856 (n + 1) * A191857 (n + 1)

end

end A007970.P4612441872923677940

/-! ## A007970.P15980380671041701855

`lt[0, A010340(n+1)%2]+1`
-/

namespace A007970.P15980380671041701855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010340 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A007970.P15980380671041701855

/-! ## A007970.P7002053667676330769

`lt[0, A010341(n+1)%2]+1`
-/

namespace A007970.P7002053667676330769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010341 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A007970.P7002053667676330769

/-! ## A007970.P6328377213858948327

`eq[1, gcd(2, A010340(n+2))]+2`
-/

namespace A007970.P6328377213858948327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A010340 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A007970.P6328377213858948327

/-! ## A007970.P3700752130102543572

`lt[6-a(A010341(n)%2), 2]` with `a(0)=2, a(1)=5`
-/

namespace A007970.P3700752130102543572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n f1 =>
  6 - f1 (Int.tmod (A010341 n) 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A007970.P3700752130102543572

/-! ## A007970.P16279423421947415084

`eq[1, A010340(A028310(n))%2]`
-/

namespace A007970.P16279423421947415084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010340 (A028310 n).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007970.P16279423421947415084

/-! ## A007970.P18204328653802510393

`eq[A308778(n)%2, A134430(n)]`
-/

namespace A007970.P18204328653802510393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308778 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134430 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007970.P18204328653802510393

/-! ## A007970.P15257344102386625080

`A020725(eq[1, A010341(n+1)%2])`
-/

namespace A007970.P15257344102386625080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010341 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A007970.P15257344102386625080

/-! ## A007970.P15083805975199057154

`A065475(eq[1, A010340(n+1)%2])`
-/

namespace A007970.P15083805975199057154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010340 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A007970.P15083805975199057154

/-! ## A007970.P16232844761603240240

`eq[2, A020639(A010340(n+1)+1)]+1`
-/

namespace A007970.P16232844761603240240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A010340 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A007970.P16232844761603240240

/-!
# A007971: INVERTi transform of central trinomial coefficients (A002426).

The programs for A007971, the canonical program `A007971.P3280594718535611421` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007971 has offset 0).

The definition of A007971 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007971.P4453306587097726642

`A126068(n)+char[1]`
-/

namespace A007971.P4453306587097726642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126068 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A007971.P4453306587097726642

namespace A007971

/-- `A126068(n)+char[1]` -/
def P4453306587097726642.Spec : Prop :=
  ∀ n, P4453306587097726642.a n = A007971 n

end A007971

/-! ## A007971.P2548426038423862896

`floor(acot(n)-A167022(n))`
-/

namespace A007971.P2548426038423862896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (A167022 n : ℝ)⌋

end

end A007971.P2548426038423862896

namespace A007971

/-- `floor(acot(n)-A167022(n))` -/
def P2548426038423862896.Spec : Prop :=
  ∀ n, P2548426038423862896.a n = A007971 n

end A007971

/-! ## A007971.P4041417255866407751

`(2-char[1])*A086246(n)`
-/

namespace A007971.P4041417255866407751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A086246 n

end

end A007971.P4041417255866407751

namespace A007971

/-- `(2-char[1])*A086246(n)` -/
def P4041417255866407751.Spec : Prop :=
  ∀ n, P4041417255866407751.a n = A007971 n

end A007971

/-! ## A007971.P3280594718535611421

`A168055(n)%(3*(a(n-1)+a(n-2)))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A007971

/-- `A168055(n)%(3*(a(n-1)+a(n-2)))` -/
def P3280594718535611421.Spec : Prop :=
  ∀ n, P3280594718535611421.a n = A007971 n

theorem P3280594718535611421.correct : P3280594718535611421.Spec := by
  intro n
  simp only [A007971]

end A007971

/-! ## A007971.P2694919143724651954

`A000007(n)-A167022(n)`
-/

namespace A007971.P2694919143724651954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A167022 n

end

end A007971.P2694919143724651954

namespace A007971

/-- `A000007(n)-A167022(n)` -/
def P2694919143724651954.Spec : Prop :=
  ∀ n, P2694919143724651954.a n = A007971 n

theorem P2694919143724651954.correct : P2694919143724651954.Spec := by
  intro n
  simp only [A007971, Nat.add_sub_cancel, A007971.P2694919143724651954.a, A007971.P3280594718535611421.a, A000007, A000007.P6599383543502402472.a, A167022, A167022.P9505370295991698775.a, A168055, A168055.P15791623395348376297.a, A036453, A036453.P17495263989008753229.a, A168049, A168049.P8332189401244449518.f1, A168049.P8332189401244449518.a, A001006, A001006.P11199602840237397285.a, A010553, A010553.P11932377395426747626.a, A036450, A036450.P17654615826854850628.a, A000005, A000005.P16091521709108585461.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007971

/-! ## A007971.P3432586979785059423

`A168049(n)-A292440(n)`
-/

namespace A007971.P3432586979785059423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 n - A292440 n

end

end A007971.P3432586979785059423

namespace A007971

/-- `A168049(n)-A292440(n)` -/
def P3432586979785059423.Spec : Prop :=
  ∀ n, P3432586979785059423.a n = A007971 n

end A007971

/-! ## A007971.P1897611457449008359

`A086246(n)*A130130(n)`
-/

namespace A007971.P1897611457449008359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 n * A130130 n

end

end A007971.P1897611457449008359

namespace A007971

/-- `A086246(n)*A130130(n)` -/
def P1897611457449008359.Spec : Prop :=
  ∀ n, P1897611457449008359.a n = A007971 n

end A007971

/-! ## A007971.P13254290273522679094

`A057428(n)*A167022(n)`
-/

namespace A007971.P13254290273522679094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A167022 n

end

end A007971.P13254290273522679094

namespace A007971

/-- `A057428(n)*A167022(n)` -/
def P13254290273522679094.Spec : Prop :=
  ∀ n, P13254290273522679094.a n = A007971 n

end A007971

/-! ## A007971.P3156991610503985394

`lcm(A134451(n), A167022(n))`
-/

namespace A007971.P3156991610503985394
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A134451 n) (A167022 n)

end

end A007971.P3156991610503985394

namespace A007971

/-- `lcm(A134451(n), A167022(n))` -/
def P3156991610503985394.Spec : Prop :=
  ∀ n, (P3156991610503985394.a n : ℤ) = A007971 n

end A007971

/-! ## A007971.P13451778481500202806

`xor(A063524(n), A126068(n))`
-/

namespace A007971.P13451778481500202806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A126068 n)

end

end A007971.P13451778481500202806

namespace A007971

/-- `xor(A063524(n), A126068(n))` -/
def P13451778481500202806.Spec : Prop :=
  ∀ n, P13451778481500202806.a n = A007971 n

end A007971

/-! ## A007971.P3384790876566605761

`A225569(n²)-A167022(n)`
-/

namespace A007971.P3384790876566605761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225569 (n ^ 2) - A167022 n

end

end A007971.P3384790876566605761

namespace A007971

/-- `A225569(n²)-A167022(n)` -/
def P3384790876566605761.Spec : Prop :=
  ∀ n, P3384790876566605761.a n = A007971 n

end A007971

/-! ## A007971.P8732834339566485229

`char[A132013(n)]-A168058(n)`
-/

namespace A007971.P8732834339566485229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132013 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A168058 n

end

end A007971.P8732834339566485229

namespace A007971

/-- `char[A132013(n)]-A168058(n)` -/
def P8732834339566485229.Spec : Prop :=
  ∀ n, P8732834339566485229.a n = A007971 n

end A007971

/-! ## A007971.P494634429174635869

`or(char[A167022(n)], A126068(n))`
-/

namespace A007971.P494634429174635869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167022 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A126068 n)

end

end A007971.P494634429174635869

namespace A007971

/-- `or(char[A167022(n)], A126068(n))` -/
def P494634429174635869.Spec : Prop :=
  ∀ n, P494634429174635869.a n = A007971 n

end A007971

/-! ## A007971.P10919185101236573631

`A168055(A154955(n+1)+n)`
-/

namespace A007971.P10919185101236573631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168055 (A154955 (n + 1) + (n : ℤ)).toNat

end

end A007971.P10919185101236573631

namespace A007971

/-- `A168055(A154955(n+1)+n)` -/
def P10919185101236573631.Spec : Prop :=
  ∀ n, P10919185101236573631.a n = A007971 n

end A007971

/-! ## A007971.P16631875411040453259

`A019590(n+1)-A168058(n)`
-/

namespace A007971.P16631875411040453259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1) - A168058 n

end

end A007971.P16631875411040453259

namespace A007971

/-- `A019590(n+1)-A168058(n)` -/
def P16631875411040453259.Spec : Prop :=
  ∀ n, P16631875411040453259.a n = A007971 n

end A007971

/-! ## A007971.P8955249346352003891

`and(1, A113679(n))-A167022(n)`
-/

namespace A007971.P8955249346352003891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A113679 n) - A167022 n

end

end A007971.P8955249346352003891

namespace A007971

/-- `and(1, A113679(n))-A167022(n)` -/
def P8955249346352003891.Spec : Prop :=
  ∀ n, P8955249346352003891.a n = A007971 n

end A007971

/-! ## A007971.P9866157148652875037

`xor(A019590(n+1), A168055(n))`
-/

namespace A007971.P9866157148652875037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A019590 (n + 1)) (A168055 n)

end

end A007971.P9866157148652875037

namespace A007971

/-- `xor(A019590(n+1), A168055(n))` -/
def P9866157148652875037.Spec : Prop :=
  ∀ n, P9866157148652875037.a n = A007971 n

end A007971

/-! ## A007971.P15147540633461409182

`A081729(2*n+1)*A167022(n)`
-/

namespace A007971.P15147540633461409182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 (2 * n + 1) * A167022 n

end

end A007971.P15147540633461409182

namespace A007971

/-- `A081729(2*n+1)*A167022(n)` -/
def P15147540633461409182.Spec : Prop :=
  ∀ n, P15147540633461409182.a n = A007971 n

end A007971

/-! ## A007971.P6424913795519044933

`A000010(n+1)%2-A168058(n)`
-/

namespace A007971.P6424913795519044933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) 2 - A168058 n

end

end A007971.P6424913795519044933

namespace A007971

/-- `A000010(n+1)%2-A168058(n)` -/
def P6424913795519044933.Spec : Prop :=
  ∀ n, P6424913795519044933.a n = A007971 n

end A007971

/-! ## A007971.P17442221709635545208

`A008683(A000118(n))-A167022(n)`
-/

namespace A007971.P17442221709635545208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000118 n).toNat - A167022 n

end

end A007971.P17442221709635545208

namespace A007971

/-- `A008683(A000118(n))-A167022(n)` -/
def P17442221709635545208.Spec : Prop :=
  ∀ n, P17442221709635545208.a n = A007971 n

end A007971

/-!
# A007972: Number of permutations that are 2 "block reversals" away from 12...n.

The programs for A007972, there is no canonical definition to state claims against.
-/

/-! ## A007972.P443127321023872958

`∑[4*C(n+3, 3)-3]+1`
-/

namespace A007972.P443127321023872958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * Nat.choose (n + 3) 3 : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A007972.P443127321023872958

/-! ## A007972.P13228461831376382060

`∑[∑[∑[4*(n+1)]]-3]+1`
-/

namespace A007972.P13228461831376382060
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A007972.P13228461831376382060

/-! ## A007972.P10808303621047228645

`abs((n+1)*(C(n+4, 3)-2)-n)`
-/

namespace A007972.P10808303621047228645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * ((Nat.choose (n + 4) 3 : ℤ) - 2) - (n : ℤ)|

end

end A007972.P10808303621047228645

/-! ## A007972.P6613210135223157015

`abs(3*n+2-A033488(n+1))`
-/

namespace A007972.P6613210135223157015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 * n + 2 : ℤ) - A033488 (n + 1)|

end

end A007972.P6613210135223157015

/-! ## A007972.P7954571278893775877

`abs(∑[2-∑[A046092(n+1)]]+n)`
-/

namespace A007972.P7954571278893775877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)|

end

end A007972.P7954571278893775877

/-! ## A007972.P13003830052499507036

`∑[A192023(n+1)+floor(3/acot(n))]`
-/

namespace A007972.P13003830052499507036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192023 (n + 1) + ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007972.P13003830052499507036

/-! ## A007972.P11064696212151985175

`abs(∑[∑[(n+2)*A103517(n)]]-n)`
-/

namespace A007972.P11064696212151985175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A103517 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A007972.P11064696212151985175

/-! ## A007972.P11305830867814552498

`∑[A008486(n)+∑[A059993(n)]]`
-/

namespace A007972.P11305830867814552498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059993 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007972.P11305830867814552498

/-! ## A007972.P11426634573225680503

`∑[A004273(n)+∑[A090288(n)]]`
-/

namespace A007972.P11426634573225680503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090288 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007972.P11426634573225680503

/-! ## A007972.P2411365292443423545

`abs(A033488(n+1)-A016789(n))`
-/

namespace A007972.P2411365292443423545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033488 (n + 1) - A016789 n|

end

end A007972.P2411365292443423545

/-!
# A007973: Number of permutations that are n-2 "block reversals" away from 12...n.

The programs for A007973, there is no canonical definition to state claims against.
-/

/-! ## A007973.P17842500053199144168

`A300003(∑[n+2])`
-/

namespace A007973.P17842500053199144168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300003 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007973.P17842500053199144168

/-! ## A007973.P11324089565757330296

`record[A300003(∑[A152271(n)])]`
-/

namespace A007973.P11324089565757330296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300003 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007973.P11324089565757330296

/-! ## A007973.P1760225107240895384

`record[A300003(lt[A119865(n), 5])]`
-/

namespace A007973.P1760225107240895384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119865 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300003 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007973.P1760225107240895384

/-! ## A007973.P1846849147209670872

`record[A055137(n)*A300003(n)]`
-/

namespace A007973.P1846849147209670872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055137 n * A300003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007973.P1846849147209670872

/-! ## A007973.P7515928630800128645

`record[A300003(n)/A176631(n)]`
-/

namespace A007973.P7515928630800128645
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300003 n : ℚ) / (A176631 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007973.P7515928630800128645

/-!
# A007974: Number of permutations that are n-3 "block reversals" away from 12...n.

The programs for A007974, there is no canonical definition to state claims against.
-/

/-! ## A007974.P13619010989566790986

`A300003(∑[n+3]+1)`
-/

namespace A007974.P13619010989566790986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300003 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A007974.P13619010989566790986

/-! ## A007974.P10649681203490252498

`record[A300003(A347633(n+1))]`
-/

namespace A007974.P10649681203490252498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300003 (A347633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007974.P10649681203490252498

/-! ## A007974.P6157205712904125151

`record[A300003(A198455(n+1)-1)]`
-/

namespace A007974.P6157205712904125151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300003 (A198455 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007974.P6157205712904125151

/-! ## A007974.P14664747802751387732

`record[A300003(gcd(n, A351153(n+1)))]`
-/

namespace A007974.P14664747802751387732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300003 (Int.gcd (n : ℤ) (A351153 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007974.P14664747802751387732

/-!
# A007975: Number of permutations that are 3 "block reversals" away from 12...n.

The programs for A007975, there is no canonical definition to state claims against.
-/

/-! ## A007975.P2209837917751680669

`A228397(n+4)-A228396(n+4)`
-/

namespace A007975.P2209837917751680669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228397 (n + 4) - A228396 (n + 4)

end

end A007975.P2209837917751680669

/-! ## A007975.P9260180992955131993

`A300003(A141214(n)+7)`
-/

namespace A007975.P9260180992955131993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300003 (A141214 n + 7).toNat

end

end A007975.P9260180992955131993

/-! ## A007975.P13810407999049176457

`A300003(A052905(n)+9)`
-/

namespace A007975.P13810407999049176457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300003 (A052905 n + 9).toNat

end

end A007975.P13810407999049176457

/-! ## A007975.P5292720123135732540

`A300003(A055999(n)+10)`
-/

namespace A007975.P5292720123135732540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300003 (A055999 n + 10).toNat

end

end A007975.P5292720123135732540

/-! ## A007975.P6128392505311139882

`A300003(eq[5, A066657(n)])`
-/

namespace A007975.P6128392505311139882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300003 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A007975.P6128392505311139882

/-!
# A007976: Generalized Euler numbers O_n^+(2).

The programs for A007976, there is no canonical definition to state claims against.
-/

/-! ## A007976.P2356290262970171658

`A062276(A062282(n)+A062272(n+2))`
-/

namespace A007976.P2356290262970171658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062276 (A062282 n + A062272 (n + 2)).toNat

end

end A007976.P2356290262970171658

/-! ## A007976.P14607036294088991402

`A080680(a(n-1)²)` with `a(0)=1`
-/

namespace A007976.P14607036294088991402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A080680 (a (n - 1) ^ 2).toNat

end

end A007976.P14607036294088991402

/-!
# A007978: Least non-divisor of n.

The programs for A007978, there is no canonical definition to state claims against.
-/

/-! ## A007978.P9177279876056924958

`A055874(n+1)+1`
-/

namespace A007978.P9177279876056924958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (n + 1) + 1

end

end A007978.P9177279876056924958

/-! ## A007978.P3433248441611524994

`A346563(n+1)-(n+1)`
-/

namespace A007978.P3433248441611524994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346563 (n + 1) - (n + 1 : ℤ)

end

end A007978.P3433248441611524994

/-! ## A007978.P3554764290345398613

`(n+1)/A350509(n+1)+1`
-/

namespace A007978.P3554764290345398613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A350509 (n + 1) : ℚ) + 1

end

end A007978.P3554764290345398613

/-! ## A007978.P10624983623753166779

`A053669(n+1)-A061853(n+1)`
-/

namespace A007978.P10624983623753166779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (n + 1) - A061853 (n + 1)

end

end A007978.P10624983623753166779

/-! ## A007978.P16617435727327130854

`A071222(n)+1-A061853(n+1)`
-/

namespace A007978.P16617435727327130854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071222 n + (1 - A061853 (n + 1))

end

end A007978.P16617435727327130854

/-! ## A007978.P800495979503303327

`sqrt(A089090(n+1))-A061853(n+1)`
-/

namespace A007978.P800495979503303327
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A089090 (n + 1) : ℝ) - (A061853 (n + 1) : ℝ)

end

end A007978.P800495979503303327

/-! ## A007978.P3347268431638966144

`A350509(n+1)+1-A350576(n+1)`
-/

namespace A007978.P3347268431638966144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350509 (n + 1) + (1 - A350576 (n + 1))

end

end A007978.P3347268431638966144

/-! ## A007978.P8718235021494318088

`A199968(A208570(n+1)+n+1)`
-/

namespace A007978.P8718235021494318088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199968 (A208570 (n + 1) + (n + 1 : ℤ)).toNat

end

end A007978.P8718235021494318088

/-! ## A007978.P4671870442473566278

`A199968(A008593(n+1))`
-/

namespace A007978.P4671870442473566278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199968 (A008593 (n + 1)).toNat

end

end A007978.P4671870442473566278

/-! ## A007978.P18217469755241211877

`A199968(A109052(n+1))`
-/

namespace A007978.P18217469755241211877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199968 (A109052 (n + 1)).toNat

end

end A007978.P18217469755241211877

/-! ## A007978.P15175068806241573360

`A199968(A008595(n+1))`
-/

namespace A007978.P15175068806241573360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199968 (A008595 (n + 1)).toNat

end

end A007978.P15175068806241573360

/-! ## A007978.P14946466436658063970

`A199968(A008599(n+1))`
-/

namespace A007978.P14946466436658063970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199968 (A008599 (n + 1)).toNat

end

end A007978.P14946466436658063970

/-! ## A007978.P4336091051177112536

`A199968(A008601(n+1))`
-/

namespace A007978.P4336091051177112536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199968 (A008601 (n + 1)).toNat

end

end A007978.P4336091051177112536

/-! ## A007978.P5245968931142442927

`A199968(A008605(n+1))`
-/

namespace A007978.P5245968931142442927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199968 (A008605 (n + 1)).toNat

end

end A007978.P5245968931142442927

/-!
# A007979: Expansion of (1+x^2)(1+x^4)/((1-x)^2*(1-x^2)*(1-x^3)).

The programs for A007979, the canonical program `A007979.P12531594186640200208` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007979 has offset 0).

The definition of A007979 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^2+x^4+x^6)/(1-2x+x^3+x^4-2x^6+x^7))` (program `A007979.P12531594186640200208`, by `A007979.P12531594186640200208.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007979.P12531594186640200208

`ogf((1+x^2+x^4+x^6)/(1-2x+x^3+x^4-2x^6+x^7))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007979

/-- `ogf((1+x^2+x^4+x^6)/(1-2x+x^3+x^4-2x^6+x^7))` -/
def P12531594186640200208.Spec : Prop :=
  ∀ n, P12531594186640200208.a n = A007979 n

theorem P12531594186640200208.correct : P12531594186640200208.Spec := by
  intro n
  simp only [A007979]

end A007979

/-! ## A007979.P5369587279938932004

`floor((2*n^3+3*n²+24*n+18)/18)`
-/

namespace A007979.P5369587279938932004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n ^ 3 + 3 * n ^ 2 + 24 * n + 18 : ℚ) / 18⌋

end

end A007979.P5369587279938932004

namespace A007979

/-- `floor((2*n^3+3*n²+24*n+18)/18)` -/
def P5369587279938932004.Spec : Prop :=
  ∀ n, P5369587279938932004.a n = A007979 n

end A007979

/-! ## A007979.P3536453258044603018

`∑[floor(∑[a(n-2)+4]/3)]` with `a(0)=3, a(1)=2, a(2)=5, a(3)=3`
-/

namespace A007979.P3536453258044603018
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 5, 3] fun n f2 =>
  f2 (n - 2) + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007979.P3536453258044603018

namespace A007979

/-- `∑[floor(∑[a(n-2)+4]/3)]` -/
def P3536453258044603018.Spec : Prop :=
  ∀ n, P3536453258044603018.a n = A007979 n

end A007979

/-! ## A007979.P1738766959663578971

`A051462(n)-A171218(n)`
-/

namespace A007979.P1738766959663578971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051462 n - A171218 n

end

end A007979.P1738766959663578971

namespace A007979

/-- `A051462(n)-A171218(n)` -/
def P1738766959663578971.Spec : Prop :=
  ∀ n, P1738766959663578971.a n = A007979 n

end A007979

/-! ## A007979.P14954436633254562049

`∑[A040001(n)+A000212(n)]`
-/

namespace A007979.P14954436633254562049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n + A000212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007979.P14954436633254562049

namespace A007979

/-- `∑[A040001(n)+A000212(n)]` -/
def P14954436633254562049.Spec : Prop :=
  ∀ n, P14954436633254562049.a n = A007979 n

end A007979

/-! ## A007979.P17071632632621758684

`A181286(n)+A001651(n+1)`
-/

namespace A007979.P17071632632621758684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181286 n + A001651 (n + 1)

end

end A007979.P17071632632621758684

namespace A007979

/-- `A181286(n)+A001651(n+1)` -/
def P17071632632621758684.Spec : Prop :=
  ∀ n, P17071632632621758684.a n = A007979 n

end A007979

/-! ## A007979.P11116736731025149754

`A301739(n+4)-A111711(n+1)`
-/

namespace A007979.P11116736731025149754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301739 (n + 4) - A111711 (n + 1)

end

end A007979.P11116736731025149754

namespace A007979

/-- `A301739(n+4)-A111711(n+1)` -/
def P11116736731025149754.Spec : Prop :=
  ∀ n, P11116736731025149754.a n = A007979 n

end A007979

/-! ## A007979.P8290820821777321381

`∑[∑[A131737(2*A028242(n))]]`
-/

namespace A007979.P8290820821777321381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131737 (2 * A028242 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007979.P8290820821777321381

namespace A007979

/-- `∑[∑[A131737(2*A028242(n))]]` -/
def P8290820821777321381.Spec : Prop :=
  ∀ n, P8290820821777321381.a n = A007979 n

end A007979

/-! ## A007979.P18276122451481565413

`A008769(2*n)`
-/

namespace A007979.P18276122451481565413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008769 (2 * n)

end

end A007979.P18276122451481565413

namespace A007979

/-- `A008769(2*n)` -/
def P18276122451481565413.Spec : Prop :=
  ∀ n, P18276122451481565413.a n = A007979 n

end A007979

/-! ## A007979.P14167887285398068294

`record[A008769(n)/A152271(n)]`
-/

namespace A007979.P14167887285398068294
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008769 n : ℚ) / (A152271 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007979.P14167887285398068294

namespace A007979

/-- `record[A008769(n)/A152271(n)]` -/
def P14167887285398068294.Spec : Prop :=
  ∀ n, P14167887285398068294.a n = (A007979 n : ℚ)

end A007979

/-! ## A007979.P8655138087816593854

`record[A008769(Δ[A008755(n)])]`
-/

namespace A007979.P8655138087816593854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008755 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008769 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007979.P8655138087816593854

namespace A007979

/-- `record[A008769(Δ[A008755(n)])]` -/
def P8655138087816593854.Spec : Prop :=
  ∀ n, P8655138087816593854.a n = A007979 n

end A007979

/-! ## A007979.P8563167122103366251

`∑[A051274(n²)]+n`
-/

namespace A007979.P8563167122103366251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051274 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A007979.P8563167122103366251

namespace A007979

/-- `∑[A051274(n²)]+n` -/
def P8563167122103366251.Spec : Prop :=
  ∀ n, P8563167122103366251.a n = A007979 n

end A007979

/-! ## A007979.P7759010939242292372

`∑[A051275(n²)]+n`
-/

namespace A007979.P7759010939242292372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051275 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A007979.P7759010939242292372

namespace A007979

/-- `∑[A051275(n²)]+n` -/
def P7759010939242292372.Spec : Prop :=
  ∀ n, P7759010939242292372.a n = A007979 n

end A007979

/-! ## A007979.P8323154522446841998

`∑[A341307(n²)]+n`
-/

namespace A007979.P8323154522446841998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341307 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A007979.P8323154522446841998

namespace A007979

/-- `∑[A341307(n²)]+n` -/
def P8323154522446841998.Spec : Prop :=
  ∀ n, P8323154522446841998.a n = A007979 n

end A007979

/-!
# A007980: Expansion of (1+x^2)/((1-x)^2*(1-x^3)).

The programs for A007980, the canonical program `A007980.P3993726415780608331` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007980 has offset 0).

The definition of A007980 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^2)/(1-2x+x^2-x^3+2x^4-x^5))` (program `A007980.P3993726415780608331`, by `A007980.P3993726415780608331.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007980.P8987629095390355265

`ceil((n+1)*(n+2)/3)`
-/

namespace A007980.P8987629095390355265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1) * (n + 2) : ℚ) / 3⌉

end

end A007980.P8987629095390355265

namespace A007980

/-- `ceil((n+1)*(n+2)/3)` -/
def P8987629095390355265.Spec : Prop :=
  ∀ n, P8987629095390355265.a n = A007980 n

end A007980

/-! ## A007980.P3993726415780608331

`ogf((1+x^2)/(1-2x+x^2-x^3+2x^4-x^5))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007980

/-- `ogf((1+x^2)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P3993726415780608331.Spec : Prop :=
  ∀ n, P3993726415780608331.a n = A007980 n

theorem P3993726415780608331.correct : P3993726415780608331.Spec := by
  intro n
  simp only [A007980]

end A007980

/-! ## A007980.P11531153692643754367

`a(n-1)+a(n-3)-a(n-4)+2` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7`
-/

namespace A007980.P11531153692643754367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 7] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4) + 2

end

end A007980.P11531153692643754367

namespace A007980

/-- `a(n-1)+a(n-3)-a(n-4)+2` -/
def P11531153692643754367.Spec : Prop :=
  ∀ n, P11531153692643754367.a n = A007980 n

end A007980

/-! ## A007980.P9084713580467343348

`((n+1)*(n+2)+(2*cos(2*π*n/3)+1)/3)/3`
-/

namespace A007980.P9084713580467343348
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (n + 2) : ℝ) + (2 * Real.cos (2 * Real.pi * (n : ℝ) / 3) + 1) / 3) / 3

end

end A007980.P9084713580467343348

namespace A007980

/-- `((n+1)*(n+2)+(2*cos(2*π*n/3)+1)/3)/3` -/
def P9084713580467343348.Spec : Prop :=
  ∀ n, P9084713580467343348.a n = (A007980 n : ℝ)

end A007980

/-! ## A007980.P11153260201243417191

`A000212(n)+n+1`
-/

namespace A007980.P11153260201243417191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 n + (n : ℤ) + 1

end

end A007980.P11153260201243417191

namespace A007980

/-- `A000212(n)+n+1` -/
def P11153260201243417191.Spec : Prop :=
  ∀ n, P11153260201243417191.a n = A007980 n

end A007980

/-! ## A007980.P8229708768712184325

`A192736(n+1)/(n+1)`
-/

namespace A007980.P8229708768712184325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192736 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A007980.P8229708768712184325

namespace A007980

/-- `A192736(n+1)/(n+1)` -/
def P8229708768712184325.Spec : Prop :=
  ∀ n, P8229708768712184325.a n = (A007980 n : ℚ)

end A007980

/-! ## A007980.P10968538527106426883

`A001399(2*n)`
-/

namespace A007980.P10968538527106426883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (2 * n)

end

end A007980.P10968538527106426883

namespace A007980

/-- `A001399(2*n)` -/
def P10968538527106426883.Spec : Prop :=
  ∀ n, P10968538527106426883.a n = A007980 n

end A007980

/-! ## A007980.P14213553172652155107

`A008796(2*n)`
-/

namespace A007980.P14213553172652155107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008796 (2 * n)

end

end A007980.P14213553172652155107

namespace A007980

/-- `A008796(2*n)` -/
def P14213553172652155107.Spec : Prop :=
  ∀ n, P14213553172652155107.a n = A007980 n

end A007980

/-! ## A007980.P8037673768860653855

`A069905(2*n+3)`
-/

namespace A007980.P8037673768860653855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (2 * n + 3)

end

end A007980.P8037673768860653855

namespace A007980

/-- `A069905(2*n+3)` -/
def P8037673768860653855.Spec : Prop :=
  ∀ n, P8037673768860653855.a n = A007980 n

end A007980

/-! ## A007980.P9082756724311766990

`A211540(2*n+5)`
-/

namespace A007980.P9082756724311766990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 (2 * n + 5)

end

end A007980.P9082756724311766990

namespace A007980

/-- `A211540(2*n+5)` -/
def P9082756724311766990.Spec : Prop :=
  ∀ n, P9082756724311766990.a n = A007980 n

end A007980

/-! ## A007980.P1184815489784228703

`∑[∑[(1-n)²%3]]`
-/

namespace A007980.P1184815489784228703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((1 - (n : ℤ)) ^ 2) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007980.P1184815489784228703

namespace A007980

/-- `∑[∑[(1-n)²%3]]` -/
def P1184815489784228703.Spec : Prop :=
  ∀ n, P1184815489784228703.a n = A007980 n

end A007980

/-! ## A007980.P15253730390557763802

`∑[a(n-3)+2]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A007980.P15253730390557763802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  f1 (n - 3) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007980.P15253730390557763802

namespace A007980

/-- `∑[a(n-3)+2]` -/
def P15253730390557763802.Spec : Prop :=
  ∀ n, (P15253730390557763802.a n : ℤ) = A007980 n

end A007980

/-! ## A007980.P15467651595140269333

`round(2/3*C(n+2, 2))`
-/

namespace A007980.P15467651595140269333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) / 3 * (Nat.choose (n + 2) 2 : ℚ))

end

end A007980.P15467651595140269333

namespace A007980

/-- `round(2/3*C(n+2, 2))` -/
def P15467651595140269333.Spec : Prop :=
  ∀ n, P15467651595140269333.a n = A007980 n

end A007980

/-! ## A007980.P13948642798394712399

`∑[∑[a(n-3)²]]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A007980.P13948642798394712399
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f2 =>
  f2 (n - 3) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007980.P13948642798394712399

namespace A007980

/-- `∑[∑[a(n-3)²]]` -/
def P13948642798394712399.Spec : Prop :=
  ∀ n, (P13948642798394712399.a n : ℤ) = A007980 n

end A007980

/-! ## A007980.P1348157476811339843

`round(2/(3*acot(∑[n+1])))`
-/

namespace A007980.P1348157476811339843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / (3 * SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)))

end

end A007980.P1348157476811339843

namespace A007980

/-- `round(2/(3*acot(∑[n+1])))` -/
def P1348157476811339843.Spec : Prop :=
  ∀ n, P1348157476811339843.a n = A007980 n

end A007980

/-! ## A007980.P5436798282049218801

`record[floor(n²/3-(n-1))]`
-/

namespace A007980.P5436798282049218801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) / 3 - ((n : ℤ) - 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007980.P5436798282049218801

namespace A007980

/-- `record[floor(n²/3-(n-1))]` -/
def P5436798282049218801.Spec : Prop :=
  ∀ n, P5436798282049218801.a n = A007980 n

end A007980

/-! ## A007980.P11780302737183610927

`round(record[n²/3-(n-1)])`
-/

namespace A007980.P11780302737183610927
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / 3 - ((n : ℤ) - 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A007980.P11780302737183610927

namespace A007980

/-- `round(record[n²/3-(n-1)])` -/
def P11780302737183610927.Spec : Prop :=
  ∀ n, P11780302737183610927.a n = A007980 n

end A007980

/-! ## A007980.P13750117204944952928

`a(n-3)+2*n` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A007980.P13750117204944952928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 3) + 2 * n

end

end A007980.P13750117204944952928

namespace A007980

/-- `a(n-3)+2*n` -/
def P13750117204944952928.Spec : Prop :=
  ∀ n, (P13750117204944952928.a n : ℤ) = A007980 n

end A007980

/-! ## A007980.P16604112962399189828

`a(n-3)+n+n` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A007980.P16604112962399189828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 3) + n + n

end

end A007980.P16604112962399189828

namespace A007980

/-- `a(n-3)+n+n` -/
def P16604112962399189828.Spec : Prop :=
  ∀ n, (P16604112962399189828.a n : ℤ) = A007980 n

end A007980

/-! ## A007980.P12364068831346844110

`floor((n+1)/sin(3/(n+2)))`
-/

namespace A007980.P12364068831346844110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.sin (3 / (n + 2 : ℚ) : ℝ)⌋

end

end A007980.P12364068831346844110

namespace A007980

/-- `floor((n+1)/sin(3/(n+2)))` -/
def P12364068831346844110.Spec : Prop :=
  ∀ n, P12364068831346844110.a n = A007980 n

end A007980

/-!
# A007981: Number of nonsplit type 2 metacyclic 2-groups of order 2^n.

The programs for A007981, there is no canonical definition to state claims against.
-/

/-! ## A007981.P723939455500665141

`∑[A000195(A148015(A340285(n+1)))]`
-/

namespace A007981.P723939455500665141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (A148015 (A340285 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007981.P723939455500665141

/-! ## A007981.P11031258600889569889

`A056556(A349796(n)²)`
-/

namespace A007981.P11031258600889569889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A349796 n ^ 2).toNat

end

end A007981.P11031258600889569889

/-! ## A007981.P5982628604416870429

`A330640(n)-A118759(A218506(n))`
-/

namespace A007981.P5982628604416870429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330640 n - A118759 (A218506 n).toNat

end

end A007981.P5982628604416870429

/-! ## A007981.P8885302954609485202

`A056556(A349796(n)*A349796(n))`
-/

namespace A007981.P8885302954609485202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A349796 n * A349796 n).toNat

end

end A007981.P8885302954609485202

/-! ## A007981.P1894829060326294439

`A330640(n)-A118759(A308733(n+4)-char[4*(n+1)])`
-/

namespace A007981.P1894829060326294439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330640 n - A118759 (A308733 (n + 4) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A007981.P1894829060326294439

/-!
# A007982: Number of non-Abelian metacyclic groups of order 2^n.

The programs for A007982, there is no canonical definition to state claims against.
-/

/-! ## A007982.P688537734791163841

`A136184(n+1)-floor((n+1)/2)-1`
-/

namespace A007982.P688537734791163841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136184 (n + 1) - ⌊(n + 1 : ℚ) / 2⌋ - 1

end

end A007982.P688537734791163841

/-! ## A007982.P14726438095798165276

`A136184(n+1)-A080513(n)`
-/

namespace A007982.P14726438095798165276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136184 (n + 1) - A080513 n

end

end A007982.P14726438095798165276

/-! ## A007982.P5263932983576250172

`A136184(n+1)-A008619(n+1)`
-/

namespace A007982.P5263932983576250172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136184 (n + 1) - A008619 (n + 1)

end

end A007982.P5263932983576250172

/-! ## A007982.P12087972496461544995

`A136184(n+1)-(A110654(n)+1)`
-/

namespace A007982.P12087972496461544995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136184 (n + 1) - (A110654 n + 1)

end

end A007982.P12087972496461544995

/-! ## A007982.P3786292950328181097

`A136184(n+1)-∑[A135528(n+1)]`
-/

namespace A007982.P3786292950328181097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136184 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007982.P3786292950328181097

/-! ## A007982.P9845679382375417088

`A136184(n+1)+A004526(n)-(n+1)`
-/

namespace A007982.P9845679382375417088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136184 (n + 1) + (A004526 n - (n + 1 : ℤ))

end

end A007982.P9845679382375417088

/-! ## A007982.P12390223064337266676

`A007983(n+1)+A136184(n+1)-A136185(n+1)`
-/

namespace A007982.P12390223064337266676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007983 (n + 1) + (A136184 (n + 1) - A136185 (n + 1))

end

end A007982.P12390223064337266676

/-!
# A007983: Number of non-Abelian metacyclic groups of order p^n (p odd).

The programs for A007983, the canonical program `A007983.P11551575728455360974` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007983 has offset 1).

The definition of A007983 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136185, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A007983.P11551575728455360974

`A136185(n+1)-floor((n+1)/2)-1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A007983

/-- `A136185(n+1)-floor((n+1)/2)-1` -/
def P11551575728455360974.Spec : Prop :=
  ∀ n, P11551575728455360974.a n = A007983 (n + 1)

theorem P11551575728455360974.correct : P11551575728455360974.Spec := by
  intro n
  simp only [A007983, Nat.add_sub_cancel]

end A007983

/-! ## A007983.P4458566320892321009

`∑[A001399(n+1)-(a(n-1)+2)]` with `a(0)=0`
-/

namespace A007983.P4458566320892321009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A001399 (n + 1) - (f1 (n - 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007983.P4458566320892321009

namespace A007983

/-- `∑[A001399(n+1)-(a(n-1)+2)]` -/
def P4458566320892321009.Spec : Prop :=
  ∀ n, P4458566320892321009.a n = A007983 (n + 1)

end A007983

/-! ## A007983.P13991139547182671303

`A136185(n+1)-A080513(n)`
-/

namespace A007983.P13991139547182671303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136185 (n + 1) - A080513 n

end

end A007983.P13991139547182671303

namespace A007983

/-- `A136185(n+1)-A080513(n)` -/
def P13991139547182671303.Spec : Prop :=
  ∀ n, P13991139547182671303.a n = A007983 (n + 1)

end A007983

/-! ## A007983.P1999239524933563683

`A136185(n+1)-A008619(n+1)`
-/

namespace A007983.P1999239524933563683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136185 (n + 1) - A008619 (n + 1)

end

end A007983.P1999239524933563683

namespace A007983

/-- `A136185(n+1)-A008619(n+1)` -/
def P1999239524933563683.Spec : Prop :=
  ∀ n, P1999239524933563683.a n = A007983 (n + 1)

theorem P1999239524933563683.correct : P1999239524933563683.Spec := by
  intro n
  simp only [A007983, Nat.add_sub_cancel, A007983.P1999239524933563683.a, A007983.P11551575728455360974.a, A008619, A008619.P16053834178911111118.a, A136185, A136185.P10286674294395953972.f1, A136185.P10286674294395953972.a, A103221, A103221.P347123473638743333.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007983

/-! ## A007983.P12382714592690057259

`A136185(n+1)-(A110654(n)+1)`
-/

namespace A007983.P12382714592690057259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136185 (n + 1) - (A110654 n + 1)

end

end A007983.P12382714592690057259

namespace A007983

/-- `A136185(n+1)-(A110654(n)+1)` -/
def P12382714592690057259.Spec : Prop :=
  ∀ n, P12382714592690057259.a n = A007983 (n + 1)

end A007983

/-! ## A007983.P1791186238358570383

`A136185(n+1)-∑[A135528(n+1)]`
-/

namespace A007983.P1791186238358570383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136185 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007983.P1791186238358570383

namespace A007983

/-- `A136185(n+1)-∑[A135528(n+1)]` -/
def P1791186238358570383.Spec : Prop :=
  ∀ n, P1791186238358570383.a n = A007983 (n + 1)

end A007983

/-! ## A007983.P4245484227679814527

`A004652(n+1)+A006918(n)-A000601(n)`
-/

namespace A007983.P4245484227679814527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (n + 1) + (A006918 n - A000601 n)

end

end A007983.P4245484227679814527

namespace A007983

/-- `A004652(n+1)+A006918(n)-A000601(n)` -/
def P4245484227679814527.Spec : Prop :=
  ∀ n, P4245484227679814527.a n = A007983 (n + 1)

end A007983

/-! ## A007983.P3932300354175669120

`A007982(n+1)+A136185(n+1)-A136184(n+1)`
-/

namespace A007983.P3932300354175669120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007982 (n + 1) + (A136185 (n + 1) - A136184 (n + 1))

end

end A007983.P3932300354175669120

namespace A007983

/-- `A007982(n+1)+A136185(n+1)-A136184(n+1)` -/
def P3932300354175669120.Spec : Prop :=
  ∀ n, P3932300354175669120.a n = A007983 (n + 1)

end A007983

/-! ## A007983.P4655532747246477182

`A266769(n+1)-A109613(n+1)`
-/

namespace A007983.P4655532747246477182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266769 (n + 1) - A109613 (n + 1)

end

end A007983.P4655532747246477182

namespace A007983

/-- `A266769(n+1)-A109613(n+1)` -/
def P4655532747246477182.Spec : Prop :=
  ∀ n, P4655532747246477182.a n = A007983 (n + 1)

end A007983

/-! ## A007983.P1551547650257831456

`A266769(n+1)-A004525(2*n+3)`
-/

namespace A007983.P1551547650257831456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266769 (n + 1) - A004525 (2 * n + 3)

end

end A007983.P1551547650257831456

namespace A007983

/-- `A266769(n+1)-A004525(2*n+3)` -/
def P1551547650257831456.Spec : Prop :=
  ∀ n, P1551547650257831456.a n = A007983 (n + 1)

end A007983

/-! ## A007983.P4158933294176732707

`A008763(n+1)+A008615(n²)`
-/

namespace A007983.P4158933294176732707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (n + 1) + A008615 (n ^ 2)

end

end A007983.P4158933294176732707

namespace A007983

/-- `A008763(n+1)+A008615(n²)` -/
def P4158933294176732707.Spec : Prop :=
  ∀ n, P4158933294176732707.a n = A007983 (n + 1)

end A007983

/-! ## A007983.P11410933084017476830

`A008615(n²)+A008766(n)-A008642(n)`
-/

namespace A007983.P11410933084017476830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (n ^ 2) + (A008766 n - A008642 n)

end

end A007983.P11410933084017476830

namespace A007983

/-- `A008615(n²)+A008766(n)-A008642(n)` -/
def P11410933084017476830.Spec : Prop :=
  ∀ n, P11410933084017476830.a n = A007983 (n + 1)

end A007983

/-!
# A007985: Co-growth function of the group < a, b, a^{-1}, b^{-1} | b >, isomorphic to Z (counting only reduced words).

The programs for A007985, there is no canonical definition to state claims against.
-/

/-! ## A007985.P14442408324718228922

`A058320(A062452(n))`
-/

namespace A007985.P14442408324718228922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058320 (A062452 n).toNat

end

end A007985.P14442408324718228922

/-! ## A007985.P7102483400204383642

`A161205(or(A214752(n+1), A235348(n+1)))`
-/

namespace A007985.P7102483400204383642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (Int.lor (A214752 (n + 1)) (A235348 (n + 1))).toNat

end

end A007985.P7102483400204383642

/-!
# A007986: Co-growth function of the symmetric group S_3 generated by 6 generators together with their inverses, with the relations sending each generator to a different element of the group (counting only reduced words).

The programs for A007986, the canonical program `A007986.P2390076210566125810` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007986 has offset 1).

The definition of A007986 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007986.P2390076210566125810

`11*a(n-1)-11*a(n-2)+121*a(n-3)` with `a(0)=2, a(1)=12, a(2)=242`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007986

/-- `11*a(n-1)-11*a(n-2)+121*a(n-3)` -/
def P2390076210566125810.Spec : Prop :=
  ∀ n, P2390076210566125810.a n = A007986 (n + 1)

theorem P2390076210566125810.correct : P2390076210566125810.Spec := by
  intro n
  simp only [A007986, Nat.add_sub_cancel]

end A007986

/-!
# A007987: Number of irreducible words of length 2n in the free group with generators x,y such that the total degree of x and the total degree of y both equal zero.

The programs for A007987, the canonical program `A007987.P10557796786755274729` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007987 has offset 0).

The definition of A007987 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007987.P5629433406548898271

`Δ[A005213(A004278(n+1))²]`
-/

namespace A007987.P5629433406548898271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 (A004278 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007987.P5629433406548898271

namespace A007987

/-- `Δ[A005213(A004278(n+1))²]` -/
def P5629433406548898271.Spec : Prop :=
  ∀ n, P5629433406548898271.a n = A007987 n

end A007987

/-! ## A007987.P8811985969021467952

`Δ[A005213(A300576(n+1))²]`
-/

namespace A007987.P8811985969021467952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 (A300576 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007987.P8811985969021467952

namespace A007987

/-- `Δ[A005213(A300576(n+1))²]` -/
def P8811985969021467952.Spec : Prop :=
  ∀ n, P8811985969021467952.a n = A007987 n

end A007987

/-! ## A007987.P10557796786755274729

`Δ[(A025565(n+1)-A002426(n))²]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A007987

/-- `Δ[(A025565(n+1)-A002426(n))²]` -/
def P10557796786755274729.Spec : Prop :=
  ∀ n, P10557796786755274729.a n = A007987 n

theorem P10557796786755274729.correct : P10557796786755274729.Spec := by
  intro n
  simp only [A007987]

end A007987

/-! ## A007987.P9635555738227723803

`Δ[A005213(A004442(A004273(n)))²]`
-/

namespace A007987.P9635555738227723803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 (A004442 (A004273 n).toNat).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007987.P9635555738227723803

namespace A007987

/-- `Δ[A005213(A004442(A004273(n)))²]` -/
def P9635555738227723803.Spec : Prop :=
  ∀ n, P9635555738227723803.a n = A007987 n

end A007987

/-! ## A007987.P5450717066426851251

`(A105696(n+1)-A025178(n+1))*A025565(n+1)`
-/

namespace A007987.P5450717066426851251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A105696 (n + 1) - A025178 (n + 1)) * A025565 (n + 1)

end

end A007987.P5450717066426851251

namespace A007987

/-- `(A105696(n+1)-A025178(n+1))*A025565(n+1)` -/
def P5450717066426851251.Spec : Prop :=
  ∀ n, P5450717066426851251.a n = A007987 n

end A007987

/-!
# A007988: Expansion of (x^6-x^5-x^4+2x^2)/((1-x^3)(1-x^2)^2(1-x)).

The programs for A007988, the canonical program `A007988.P8235636041290700295` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007988 has offset 2).

The definition of A007988 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2-x^2-x^3+x^4)/(1-x-2x^2+x^3+2x^4+x^5-2x^6-x^7+x^8))` (program `A007988.P8235636041290700295`, by `A007988.P8235636041290700295.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007988.P8235636041290700295

`ogf((2-x^2-x^3+x^4)/(1-x-2x^2+x^3+2x^4+x^5-2x^6-x^7+x^8))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007988

/-- `ogf((2-x^2-x^3+x^4)/(1-x-2x^2+x^3+2x^4+x^5-2x^6-x^7+x^8))` -/
def P8235636041290700295.Spec : Prop :=
  ∀ n, P8235636041290700295.a n = A007988 (n + 2)

theorem P8235636041290700295.correct : P8235636041290700295.Spec := by
  intro n
  simp only [A007988, Nat.add_sub_cancel]

end A007988

/-! ## A007988.P8130072946371517836

`floor((n+3)*(27*(-1)^(n+2)+41+16*(n+2)+2*(n+2)²)/144)`
-/

namespace A007988.P8130072946371517836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 3 : ℤ) * (27 * (-1) ^ (n + 2) + 41 + (16 * (n + 2) : ℤ) + (2 * (n + 2) ^ 2 : ℤ)) : ℚ) / 144⌋

end

end A007988.P8130072946371517836

namespace A007988

/-- `floor((n+3)*(27*(-1)^(n+2)+41+16*(n+2)+2*(n+2)²)/144)` -/
def P8130072946371517836.Spec : Prop :=
  ∀ n, P8130072946371517836.a n = A007988 (n + 2)

end A007988

/-! ## A007988.P16532632748952856007

`A008805(n)+A008627(n)`
-/

namespace A007988.P16532632748952856007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n + A008627 n

end

end A007988.P16532632748952856007

namespace A007988

/-- `A008805(n)+A008627(n)` -/
def P16532632748952856007.Spec : Prop :=
  ∀ n, P16532632748952856007.a n = A007988 (n + 2)

end A007988

/-! ## A007988.P16109697765086455573

`A008805(n)+∑[A008742(n)]`
-/

namespace A007988.P16109697765086455573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007988.P16109697765086455573

namespace A007988

/-- `A008805(n)+∑[A008742(n)]` -/
def P16109697765086455573.Spec : Prop :=
  ∀ n, P16109697765086455573.a n = A007988 (n + 2)

end A007988

/-! ## A007988.P16928218868016292218

`∑[A027656(n)+A008742(n)]`
-/

namespace A007988.P16928218868016292218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n + A008742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007988.P16928218868016292218

namespace A007988

/-- `∑[A027656(n)+A008742(n)]` -/
def P16928218868016292218.Spec : Prop :=
  ∀ n, P16928218868016292218.a n = A007988 (n + 2)

end A007988

/-! ## A007988.P8276570538234388956

`A053090(n+5)-(n+1)%2`
-/

namespace A007988.P8276570538234388956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053090 (n + 5) - (((n + 1) % 2 : ℕ) : ℤ)

end

end A007988.P8276570538234388956

namespace A007988

/-- `A053090(n+5)-(n+1)%2` -/
def P8276570538234388956.Spec : Prop :=
  ∀ n, P8276570538234388956.a n = A007988 (n + 2)

end A007988

/-! ## A007988.P16564379982501874061

`A001400(n+1)+A001400(n)-A008743(n+1)`
-/

namespace A007988.P16564379982501874061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 (n + 1) + (A001400 n - A008743 (n + 1))

end

end A007988.P16564379982501874061

namespace A007988

/-- `A001400(n+1)+A001400(n)-A008743(n+1)` -/
def P16564379982501874061.Spec : Prop :=
  ∀ n, P16564379982501874061.a n = A007988 (n + 2)

end A007988

/-! ## A007988.P11575120486929972511

`A008806(n+2)+a(n-2)` with `a(0)=2, a(1)=2`
-/

namespace A007988.P11575120486929972511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A008806 (n + 2) + a (n - 2)

end

end A007988.P11575120486929972511

namespace A007988

/-- `A008806(n+2)+a(n-2)` -/
def P11575120486929972511.Spec : Prop :=
  ∀ n, P11575120486929972511.a n = A007988 (n + 2)

end A007988

/-! ## A007988.P7128609551953811323

`A008742(n)+∑[A008742(n+2)]`
-/

namespace A007988.P7128609551953811323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007988.P7128609551953811323

namespace A007988

/-- `A008742(n)+∑[A008742(n+2)]` -/
def P7128609551953811323.Spec : Prop :=
  ∀ n, P7128609551953811323.a n = A007988 (n + 2)

end A007988

/-! ## A007988.P5144082445088215185

`A008627(n)+∑[(A002265(2*n)+1)*char[2*n]]`
-/

namespace A007988.P5144082445088215185
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002265 (2 * n) + 1) * ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008627 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007988.P5144082445088215185

namespace A007988

/-- `A008627(n)+∑[(A002265(2*n)+1)*char[2*n]]` -/
def P5144082445088215185.Spec : Prop :=
  ∀ n, P5144082445088215185.a n = A007988 (n + 2)

end A007988

/-! ## A007988.P16762136542317506562

`A008731(2*n)+A008763(n)+A008731(n)`
-/

namespace A007988.P16762136542317506562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008731 (2 * n) + (A008763 n + A008731 n)

end

end A007988.P16762136542317506562

namespace A007988

/-- `A008731(2*n)+A008763(n)+A008731(n)` -/
def P16762136542317506562.Spec : Prop :=
  ∀ n, P16762136542317506562.a n = A007988 (n + 2)

end A007988

/-!
# A007989: Slowest increasing sequence with property that a(n) does not divide any term of form a(n+m*a(n)) for any m; this is the slowest increasing "non-difference-divisible" sequence.

The programs for A007989, there is no canonical definition to state claims against.
-/

/-! ## A007989.P3175114832636212914

`lt[1, A157208(A113325(2*n+5))]`
-/

namespace A007989.P3175114832636212914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157208 (A113325 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007989.P3175114832636212914

/-! ## A007989.P5641571559987999317

`lt[A053989(n+1), A324181(A268448(n+1))]`
-/

namespace A007989.P5641571559987999317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324181 (A268448 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007989.P5641571559987999317

/-! ## A007989.P7163063235171332568

`lt[A349472(n+1), A338060(A338062(n+1))]`
-/

namespace A007989.P7163063235171332568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338060 (A338062 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007989.P7163063235171332568

/-! ## A007989.P11695106112115167551

`lt[A341831(A178914(n)), A098709(2*n+3)]`
-/

namespace A007989.P11695106112115167551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341831 (A178914 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098709 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007989.P11695106112115167551

/-! ## A007989.P9971615051192432749

`lt[A071664(A126316(2*n+3)), A352715(3*(n+1))]`
-/

namespace A007989.P9971615051192432749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071664 (A126316 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352715 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007989.P9971615051192432749

/-!
# A007990: Poincaré series [or Poincare series] of Lie algebra associated with a certain braid group.

The programs for A007990, there is no canonical definition to state claims against.
-/

/-! ## A007990.P3468699562579345287

`A156231(n+2)-A053090(n+5)`
-/

namespace A007990.P3468699562579345287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156231 (n + 2) - A053090 (n + 5)

end

end A007990.P3468699562579345287

/-! ## A007990.P7785802820727366893

`A300272(A000712(n))+A007318(n)`
-/

namespace A007990.P7785802820727366893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300272 (A000712 n).toNat + A007318 n

end

end A007990.P7785802820727366893

/-!
# A007991: Poincaré series [or Poincare series] of Lie algebra associated with a certain braid group.

The programs for A007991, there is no canonical definition to state claims against.
-/

/-! ## A007991.P17241413033259299230

`A329161(A002522(n))-A084242(n+1)`
-/

namespace A007991.P17241413033259299230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329161 (A002522 n).toNat - A084242 (n + 1)

end

end A007991.P17241413033259299230

/-! ## A007991.P224025052236459280

`A381781(A103257(3*n)+A028310(n))`
-/

namespace A007991.P224025052236459280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381781 (A103257 (3 * n) + A028310 n).toNat

end

end A007991.P224025052236459280

/-! ## A007991.P6525284403511459114

`A246716(A095121(n)^A196746(n+1))`
-/

namespace A007991.P6525284403511459114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246716 (SequenceMachineLib.roundAway ((A095121 n : ℚ) ^ (A196746 (n + 1) : ℤ))).toNat

end

end A007991.P6525284403511459114

/-!
# A007992: Augmented amicable pairs (smaller member of each pair).

The programs for A007992, there is no canonical definition to state claims against.
-/

/-! ## A007992.P2874198083635217842

`A281265(A083964(n+1))`
-/

namespace A007992.P2874198083635217842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281265 (A083964 (n + 1)).toNat

end

end A007992.P2874198083635217842

/-!
# A007993: Poincaré series [or Poincare series] of Lie algebra associated with a certain braid group.

The programs for A007993, the canonical program `A007993.P5200342048077932814` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007993 has offset 1).

The definition of A007993 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007993.P5200342048077932814

`∑[∑[∑[∑[n+2]+1]]]-3*n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007993

/-- `∑[∑[∑[∑[n+2]+1]]]-3*n` -/
def P5200342048077932814.Spec : Prop :=
  ∀ n, P5200342048077932814.a n = A007993 (n + 1)

theorem P5200342048077932814.correct : P5200342048077932814.Spec := by
  intro n
  simp only [A007993, Nat.add_sub_cancel]

end A007993

/-! ## A007993.P246885330070126632

`abs(∑[A005718(n)-3]+3)`
-/

namespace A007993.P246885330070126632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005718 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j + 3|

end

end A007993.P246885330070126632

namespace A007993

/-- `abs(∑[A005718(n)-3]+3)` -/
def P246885330070126632.Spec : Prop :=
  ∀ n, P246885330070126632.a n = A007993 (n + 1)

end A007993

/-! ## A007993.P14812637537428804771

`abs(∑[n+4]-3-A027659(n))`
-/

namespace A007993.P14812637537428804771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3 - A027659 n|

end

end A007993.P14812637537428804771

namespace A007993

/-- `abs(∑[n+4]-3-A027659(n))` -/
def P14812637537428804771.Spec : Prop :=
  ∀ n, P14812637537428804771.a n = A007993 (n + 1)

end A007993

/-! ## A007993.P9747602065530971715

`(∑[A005718(n)-3]+3)*A057427(n+4)`
-/

namespace A007993.P9747602065530971715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005718 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 3) * A057427 (n + 4)

end

end A007993.P9747602065530971715

namespace A007993

/-- `(∑[A005718(n)-3]+3)*A057427(n+4)` -/
def P9747602065530971715.Spec : Prop :=
  ∀ n, P9747602065530971715.a n = A007993 (n + 1)

end A007993

/-! ## A007993.P3654902031832979286

`∑[record[abs(A000332(n+4)-(n+4))]]`
-/

namespace A007993.P3654902031832979286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000332 (n + 4) - (n + 4 : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007993.P3654902031832979286

namespace A007993

/-- `∑[record[abs(A000332(n+4)-(n+4))]]` -/
def P3654902031832979286.Spec : Prop :=
  ∀ n, P3654902031832979286.a n = A007993 (n + 1)

end A007993

/-! ## A007993.P6997804698765123731

`∑[A050174(Δ[A062748(n)])]`
-/

namespace A007993.P6997804698765123731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062748 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050174 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007993.P6997804698765123731

namespace A007993

/-- `∑[A050174(Δ[A062748(n)])]` -/
def P6997804698765123731.Spec : Prop :=
  ∀ n, P6997804698765123731.a n = A007993 (n + 1)

end A007993

/-!
# A007996: Primes that divide at least one term of Sylvester's sequence s = A000058: s(n+1) = s(n)^2 - s(n) + 1, s(0) = 2.

The programs for A007996, there is no canonical definition to state claims against.
-/

/-! ## A007996.P14986758854293845024

`p?[Δ[A007504(n)]*A256147(n+1)]`
-/

namespace A007996.P14986758854293845024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A256147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007996.P14986758854293845024

/-! ## A007996.P7790004432999067376

`p?[p?[A259153(n)]*A256147(n+1)]`
-/

namespace A007996.P7790004432999067376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) * A256147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007996.P7790004432999067376

/-! ## A007996.P17745445914888799914

`p?[A000040(n+1)*A256147(n+1)]`
-/

namespace A007996.P17745445914888799914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A256147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007996.P17745445914888799914

/-! ## A007996.P12434052125433251639

`p?[p?[A018252(n+1)-7]*A256147(n+1)]`
-/

namespace A007996.P12434052125433251639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) * A256147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007996.P12434052125433251639

/-!
# A007997: a(n) = ceiling((n-3)(n-4)/6).

The programs for A007997, the canonical program `A007997.P15311044557207680914` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007997 has offset 3).

The definition of A007997 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n*(n-1)/6)` (program `A007997.P15311044557207680914`, by `A007997.P15311044557207680914.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007997.P6209984581351214894

`ceil(C(n, 2)/3)`
-/

namespace A007997.P6209984581351214894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose n 2 : ℚ) / 3⌉

end

end A007997.P6209984581351214894

namespace A007997

/-- `ceil(C(n, 2)/3)` -/
def P6209984581351214894.Spec : Prop :=
  ∀ n, P6209984581351214894.a n = A007997 (n + 3)

end A007997

/-! ## A007997.P15311044557207680914

`ceil(n*(n-1)/6)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007997

/-- `ceil(n*(n-1)/6)` -/
def P15311044557207680914.Spec : Prop :=
  ∀ n, P15311044557207680914.a n = A007997 (n + 3)

theorem P15311044557207680914.correct : P15311044557207680914.Spec := by
  intro n
  simp only [A007997, Nat.add_sub_cancel]

end A007997

/-! ## A007997.P14106344323679783867

`n-2+a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A007997.P14106344323679783867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  (n : ℤ) - 2 + a (n - 3)

end

end A007997.P14106344323679783867

namespace A007997

/-- `n-2+a(n-3)` -/
def P14106344323679783867.Spec : Prop :=
  ∀ n, P14106344323679783867.a n = A007997 (n + 3)

end A007997

/-! ## A007997.P4194789713283411330

`floor((C(n, 2)+2)/3)`
-/

namespace A007997.P4194789713283411330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n 2 + 2 : ℚ) / 3⌋

end

end A007997.P4194789713283411330

namespace A007997

/-- `floor((C(n, 2)+2)/3)` -/
def P4194789713283411330.Spec : Prop :=
  ∀ n, P4194789713283411330.a n = A007997 (n + 3)

end A007997

/-! ## A007997.P15060510706707420352

`round((C(n, 2)+1)/3)`
-/

namespace A007997.P15060510706707420352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose n 2 + 1 : ℚ) / 3)

end

end A007997.P15060510706707420352

namespace A007997

/-- `round((C(n, 2)+1)/3)` -/
def P15060510706707420352.Spec : Prop :=
  ∀ n, P15060510706707420352.a n = A007997 (n + 3)

end A007997

/-! ## A007997.P2318338190234740884

`∑[∑[2-gcd(3, n)]]+1`
-/

namespace A007997.P2318338190234740884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.gcd 3 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A007997.P2318338190234740884

namespace A007997

/-- `∑[∑[2-gcd(3, n)]]+1` -/
def P2318338190234740884.Spec : Prop :=
  ∀ n, P2318338190234740884.a n = A007997 (n + 3)

end A007997

/-! ## A007997.P15414311029333955473

`n-(2-a(n-3))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A007997.P15414311029333955473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  (n : ℤ) - (2 - a (n - 3))

end

end A007997.P15414311029333955473

namespace A007997

/-- `n-(2-a(n-3))` -/
def P15414311029333955473.Spec : Prop :=
  ∀ n, P15414311029333955473.a n = A007997 (n + 3)

end A007997

/-! ## A007997.P11529312886033292804

`∑[(3*n+1)%comp[4*n]]`
-/

namespace A007997.P11529312886033292804
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n + 1) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007997.P11529312886033292804

namespace A007997

/-- `∑[(3*n+1)%comp[4*n]]` -/
def P11529312886033292804.Spec : Prop :=
  ∀ n, (P11529312886033292804.a n : ℤ) = A007997 (n + 3)

end A007997

/-! ## A007997.P5503084182847848055

`A058212(n+1)`
-/

namespace A007997.P5503084182847848055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058212 (n + 1)

end

end A007997.P5503084182847848055

namespace A007997

/-- `A058212(n+1)` -/
def P5503084182847848055.Spec : Prop :=
  ∀ n, P5503084182847848055.a n = A007997 (n + 3)

end A007997

/-! ## A007997.P1293177938624256651

`∑[n]-A032765(n)`
-/

namespace A007997.P1293177938624256651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A032765 n

end

end A007997.P1293177938624256651

namespace A007997

/-- `∑[n]-A032765(n)` -/
def P1293177938624256651.Spec : Prop :=
  ∀ n, P1293177938624256651.a n = A007997 (n + 3)

end A007997

/-! ## A007997.P4297684423145118501

`floor(∑[A131737(n)/2])`
-/

namespace A007997.P4297684423145118501
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131737 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A007997.P4297684423145118501

namespace A007997

/-- `floor(∑[A131737(n)/2])` -/
def P4297684423145118501.Spec : Prop :=
  ∀ n, P4297684423145118501.a n = A007997 (n + 3)

end A007997

/-! ## A007997.P11951164922193715572

`floor(A089071(n+1)/3)`
-/

namespace A007997.P11951164922193715572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A089071 (n + 1) : ℚ) / 3⌋

end

end A007997.P11951164922193715572

namespace A007997

/-- `floor(A089071(n+1)/3)` -/
def P11951164922193715572.Spec : Prop :=
  ∀ n, P11951164922193715572.a n = A007997 (n + 3)

end A007997

/-! ## A007997.P247540607797180784

`round(A097922(n)/2)-1`
-/

namespace A007997.P247540607797180784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A097922 n : ℚ) / 2) - 1

end

end A007997.P247540607797180784

namespace A007997

/-- `round(A097922(n)/2)-1` -/
def P247540607797180784.Spec : Prop :=
  ∀ n, P247540607797180784.a n = A007997 (n + 3)

end A007997

/-! ## A007997.P6241186829278400538

`floor(A004006(n)/(n+1))`
-/

namespace A007997.P6241186829278400538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004006 n : ℚ) / (n + 1 : ℚ)⌋

end

end A007997.P6241186829278400538

namespace A007997

/-- `floor(A004006(n)/(n+1))` -/
def P6241186829278400538.Spec : Prop :=
  ∀ n, P6241186829278400538.a n = A007997 (n + 3)

end A007997

/-! ## A007997.P12873857308407835535

`∑[A008611(n+1)]-n`
-/

namespace A007997.P12873857308407835535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A007997.P12873857308407835535

namespace A007997

/-- `∑[A008611(n+1)]-n` -/
def P12873857308407835535.Spec : Prop :=
  ∀ n, P12873857308407835535.a n = A007997 (n + 3)

end A007997

/-! ## A007997.P70939728057861511

`A266542(n+1)-(n+2)`
-/

namespace A007997.P70939728057861511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266542 (n + 1) - (n + 2 : ℤ)

end

end A007997.P70939728057861511

namespace A007997

/-- `A266542(n+1)-(n+2)` -/
def P70939728057861511.Spec : Prop :=
  ∀ n, P70939728057861511.a n = A007997 (n + 3)

end A007997

/-! ## A007997.P2789390375189997539

`n²-∑[A047217(n+1)]`
-/

namespace A007997.P2789390375189997539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007997.P2789390375189997539

namespace A007997

/-- `n²-∑[A047217(n+1)]` -/
def P2789390375189997539.Spec : Prop :=
  ∀ n, P2789390375189997539.a n = A007997 (n + 3)

end A007997

/-! ## A007997.P11318332585166092206

`∑[A194960(n+1)-2]+1`
-/

namespace A007997.P11318332585166092206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194960 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A007997.P11318332585166092206

namespace A007997

/-- `∑[A194960(n+1)-2]+1` -/
def P11318332585166092206.Spec : Prop :=
  ∀ n, P11318332585166092206.a n = A007997 (n + 3)

end A007997

/-! ## A007997.P15481048481683247540

`∑[A063200(n+1)-(n+1)]`
-/

namespace A007997.P15481048481683247540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063200 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007997.P15481048481683247540

namespace A007997

/-- `∑[A063200(n+1)-(n+1)]` -/
def P15481048481683247540.Spec : Prop :=
  ∀ n, P15481048481683247540.a n = A007997 (n + 3)

end A007997

/-! ## A007997.P15301605319398586305

`∑[n+1]-A183859(n+1)`
-/

namespace A007997.P15301605319398586305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A183859 (n + 1)

end

end A007997.P15301605319398586305

namespace A007997

/-- `∑[n+1]-A183859(n+1)` -/
def P15301605319398586305.Spec : Prop :=
  ∀ n, P15301605319398586305.a n = A007997 (n + 3)

end A007997

/-!
# A007999: a(n) is the number of permutations w of 1,2,...,n such that both w and w^{-1} are alternating.

The programs for A007999, there is no canonical definition to state claims against.
-/

/-! ## A007999.P16929140973378035871

`A070106(A000108(n))+A046854(2*n)`
-/

namespace A007999.P16929140973378035871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070106 (A000108 n).toNat + A046854 (2 * n)

end

end A007999.P16929140973378035871

/-! ## A007999.P17157978365812056256

`A328867(A007827(n))`
-/

namespace A007999.P17157978365812056256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328867 (A007827 n).toNat

end

end A007999.P17157978365812056256

/-! ## A007999.P13592365628075799657

`A330104(A221547(n))`
-/

namespace A007999.P13592365628075799657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330104 (A221547 n).toNat

end

end A007999.P13592365628075799657

/-! ## A007999.P15491116239074254659

`A241898(A367236(n))`
-/

namespace A007999.P15491116239074254659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241898 (A367236 n).toNat

end

end A007999.P15491116239074254659

/-! ## A007999.P14372131668322790346

`A236510(A324615(n+1))`
-/

namespace A007999.P14372131668322790346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236510 (A324615 (n + 1)).toNat

end

end A007999.P14372131668322790346

