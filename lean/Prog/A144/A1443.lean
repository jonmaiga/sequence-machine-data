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
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A144300: Number of partitions of n minus number of divisors of n.

The programs for A144300, there is no canonical definition to state claims against.
-/

/-! ## A144300.P9744005938493049911

`A000041(n+1)-A000005(n+1)`
-/

namespace A144300.P9744005938493049911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A000005 (n + 1)

end

end A144300.P9744005938493049911

/-! ## A144300.P18106932734500581047

`A167934(n+1)-1`
-/

namespace A144300.P18106932734500581047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167934 (n + 1) - 1

end

end A144300.P18106932734500581047

/-! ## A144300.P7287690658323197373

`A000041(n+1)-Δ[A006218(n)]`
-/

namespace A144300.P7287690658323197373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (f1 (n + 1) - f1 n)

end

end A144300.P7287690658323197373

/-! ## A144300.P13344808737610439475

`A000041(n+1)-Δ[A054519(n)]`
-/

namespace A144300.P13344808737610439475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (f1 (n + 1) - f1 n)

end

end A144300.P13344808737610439475

/-! ## A144300.P18049258088307909000

`A004250(n+1)+A003165(n+1)`
-/

namespace A144300.P18049258088307909000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004250 (n + 1) + A003165 (n + 1)

end

end A144300.P18049258088307909000

/-! ## A144300.P6372045435775299760

`A086739(n+1)+A063070(n+1)`
-/

namespace A144300.P6372045435775299760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086739 (n + 1) + A063070 (n + 1)

end

end A144300.P6372045435775299760

/-! ## A144300.P1560970738551055331

`A086738(n+1)+A065608(n+1)`
-/

namespace A144300.P1560970738551055331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086738 (n + 1) + A065608 (n + 1)

end

end A144300.P1560970738551055331

/-! ## A144300.P1754676652881782948

`A183151(n+1)+A082513(n+1)`
-/

namespace A144300.P1754676652881782948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183151 (n + 1) + A082513 (n + 1)

end

end A144300.P1754676652881782948

/-! ## A144300.P14369589815130623959

`A167930(n+1)+A111133(n+1)`
-/

namespace A144300.P14369589815130623959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167930 (n + 1) + A111133 (n + 1)

end

end A144300.P14369589815130623959

/-! ## A144300.P10093419274834610211

`A000065(n+1)-A032741(n+1)`
-/

namespace A144300.P10093419274834610211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (n + 1) - A032741 (n + 1)

end

end A144300.P10093419274834610211

/-! ## A144300.P8126984963797154942

`A195364(n+1)-A062011(n+1)`
-/

namespace A144300.P8126984963797154942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195364 (n + 1) - A062011 (n + 1)

end

end A144300.P8126984963797154942

/-! ## A144300.P18105334951937053643

`A282467(n+1)-A183063(n+1)`
-/

namespace A144300.P18105334951937053643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282467 (n + 1) - A183063 (n + 1)

end

end A144300.P18105334951937053643

/-! ## A144300.P15163094594133859932

`A167930(n+1)+∑[A087897(n+1)]`
-/

namespace A144300.P15163094594133859932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167930 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144300.P15163094594133859932

/-! ## A144300.P6676360379779910113

`∑[A002865(n+1)]-A032741(n+1)`
-/

namespace A144300.P6676360379779910113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A032741 (n + 1)

end

end A144300.P6676360379779910113

/-! ## A144300.P8074555572666306159

`A195364(n+1)-2*A000005(n+1)`
-/

namespace A144300.P8074555572666306159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195364 (n + 1) - 2 * A000005 (n + 1)

end

end A144300.P8074555572666306159

/-! ## A144300.P10789755483392232087

`A000041(n+1)+A006218(n)-A006218(n+1)`
-/

namespace A144300.P10789755483392232087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A006218 n - A006218 (n + 1))

end

end A144300.P10789755483392232087

/-! ## A144300.P11608837357002997108

`A000837(n+1)+A018783(n+1)-A000005(n+1)`
-/

namespace A144300.P11608837357002997108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (n + 1) + (A018783 (n + 1) - A000005 (n + 1))

end

end A144300.P11608837357002997108

/-! ## A144300.P2617983658297581017

`A000720(n+1)+A183151(n+1)-A000005(n+1)`
-/

namespace A144300.P2617983658297581017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (A183151 (n + 1) - A000005 (n + 1))

end

end A144300.P2617983658297581017

/-! ## A144300.P14986570103458089972

`A000041(n+1)+A000041(n+1)-A195364(n+1)`
-/

namespace A144300.P14986570103458089972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A000041 (n + 1) - A195364 (n + 1))

end

end A144300.P14986570103458089972

/-! ## A144300.P7936711993394714930

`A000065(n+1)+A167930(n+1)-A047967(n+1)`
-/

namespace A144300.P7936711993394714930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (n + 1) + (A167930 (n + 1) - A047967 (n + 1))

end

end A144300.P7936711993394714930

/-!
# A144301: a(0) = a(1) = 1; thereafter a(n) = (2*n-3)*a(n-1) + a(n-2).

The programs for A144301, the canonical program `A144301.P7302560893740921483` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144301 has offset 0).

The definition of A144301 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-3)*a(n-1)+a(n-2)` (program `A144301.P7302560893740921483`, by `A144301.P7302560893740921483.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A144301.P7302560893740921483

`(2*n-3)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A144301

/-- `(2*n-3)*a(n-1)+a(n-2)` -/
def P7302560893740921483.Spec : Prop :=
  ∀ n, P7302560893740921483.a n = A144301 n

theorem P7302560893740921483.correct : P7302560893740921483.Spec := by
  intro n
  simp only [A144301]

end A144301

/-! ## A144301.P1296147369070153766

`a(n-2)-(3-2*n)*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A144301.P1296147369070153766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) - (3 - (2 * n : ℤ)) * a (n - 1)

end

end A144301.P1296147369070153766

namespace A144301

/-- `a(n-2)-(3-2*n)*a(n-1)` -/
def P1296147369070153766.Spec : Prop :=
  ∀ n, P1296147369070153766.a n = A144301 n

end A144301

/-! ## A144301.P5587816051493563580

`A144502(∑[n])`
-/

namespace A144301.P5587816051493563580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144502 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A144301.P5587816051493563580

namespace A144301

/-- `A144502(∑[n])` -/
def P5587816051493563580.Spec : Prop :=
  ∀ n, P5587816051493563580.a n = A144301 n

end A144301

/-! ## A144301.P865761389624896034

`A144505(∑[n])`
-/

namespace A144301.P865761389624896034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144505 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A144301.P865761389624896034

namespace A144301

/-- `A144505(∑[n])` -/
def P865761389624896034.Spec : Prop :=
  ∀ n, P865761389624896034.a n = A144301 n

end A144301

/-! ## A144301.P9067430083339484552

`A001515(n-ceil(sin(n)²))`
-/

namespace A144301.P9067430083339484552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001515 ((n : ℤ) - ⌈Real.sin (n : ℝ) ^ 2⌉).toNat

end

end A144301.P9067430083339484552

namespace A144301

/-- `A001515(n-ceil(sin(n)²))` -/
def P9067430083339484552.Spec : Prop :=
  ∀ n, P9067430083339484552.a n = A144301 n

end A144301

/-! ## A144301.P7486172945612237658

`A001515((n-1)%(n+1))`
-/

namespace A144301.P7486172945612237658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001515 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A144301.P7486172945612237658

namespace A144301

/-- `A001515((n-1)%(n+1))` -/
def P7486172945612237658.Spec : Prop :=
  ∀ n, P7486172945612237658.a n = A144301 n

end A144301

/-! ## A144301.P910508724068924275

`abs(A144505(A000217(n)))`
-/

namespace A144301.P910508724068924275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A144505 (A000217 n).toNat|

end

end A144301.P910508724068924275

namespace A144301

/-- `abs(A144505(A000217(n)))` -/
def P910508724068924275.Spec : Prop :=
  ∀ n, P910508724068924275.a n = A144301 n

end A144301

/-! ## A144301.P10508628870072247990

`A001515(A004273(n)-n)`
-/

namespace A144301.P10508628870072247990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001515 (A004273 n - (n : ℤ)).toNat

end

end A144301.P10508628870072247990

namespace A144301

/-- `A001515(A004273(n)-n)` -/
def P10508628870072247990.Spec : Prop :=
  ∀ n, P10508628870072247990.a n = A144301 n

end A144301

/-! ## A144301.P891957601128012610

`A001515(n-abs(A062157(n)))`
-/

namespace A144301.P891957601128012610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001515 ((n : ℤ) - |A062157 n|).toNat

end

end A144301.P891957601128012610

namespace A144301

/-- `A001515(n-abs(A062157(n)))` -/
def P891957601128012610.Spec : Prop :=
  ∀ n, P891957601128012610.a n = A144301 n

end A144301

/-! ## A144301.P18162121284023169988

`A001515(n-A062157(n)²)`
-/

namespace A144301.P18162121284023169988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001515 ((n : ℤ) - A062157 n ^ 2).toNat

end

end A144301.P18162121284023169988

namespace A144301

/-- `A001515(n-A062157(n)²)` -/
def P18162121284023169988.Spec : Prop :=
  ∀ n, P18162121284023169988.a n = A144301 n

end A144301

/-!
# A144302: Odd members of A049445.

The programs for A144302, the canonical program `A144302.P15425808234958730441` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144302 has offset 1).

The definition of A144302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4201 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144302.P4721400823468000284

`A049445(A152567(n+1))`
-/

namespace A144302.P4721400823468000284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049445 (A152567 (n + 1)).toNat

end

end A144302.P4721400823468000284

namespace A144302

/-- `A049445(A152567(n+1))` -/
def P4721400823468000284.Spec : Prop :=
  ∀ n, P4721400823468000284.a n = A144302 (n + 1)

end A144302

/-! ## A144302.P15425808234958730441

`A049445(eq[1, A049445(n+1)%2]+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A144302

/-- `A049445(eq[1, A049445(n+1)%2]+1)` -/
def P15425808234958730441.Spec : Prop :=
  ∀ n, P15425808234958730441.a n = A144302 (n + 1)

theorem P15425808234958730441.correct : P15425808234958730441.Spec := by
  intro n
  simp only [A144302, Nat.add_sub_cancel]

end A144302

/-! ## A144302.P11384419592325546266

`A049445(eq[1, gcd(2, A049445(n+1))]+1)`
-/

namespace A144302.P11384419592325546266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A049445 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049445 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A144302.P11384419592325546266

namespace A144302

/-- `A049445(eq[1, gcd(2, A049445(n+1))]+1)` -/
def P11384419592325546266.Spec : Prop :=
  ∀ n, P11384419592325546266.a n = A144302 (n + 1)

end A144302

/-! ## A144302.P6118811284856978996

`A049445(record[(n+1)*and(1, A049445(n+1))])`
-/

namespace A144302.P6118811284856978996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.land 1 (A049445 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049445 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A144302.P6118811284856978996

namespace A144302

/-- `A049445(record[(n+1)*and(1, A049445(n+1))])` -/
def P6118811284856978996.Spec : Prop :=
  ∀ n, P6118811284856978996.a n = A144302 (n + 1)

end A144302

/-! ## A144302.P3743751259108720867

`filter[A049445(n+1), A228495(#)]`
-/

namespace A144302.P3743751259108720867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228495 (f1 j).toNat = 1) n)

end

end A144302.P3743751259108720867

namespace A144302

/-- `filter[A049445(n+1), A228495(#)]` -/
def P3743751259108720867.Spec : Prop :=
  ∀ n, P3743751259108720867.a n = A144302 (n + 1)

end A144302

/-! ## A144302.P7609938724449431267

`filter[A363787(n+1), A228495(#)]`
-/

namespace A144302.P7609938724449431267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228495 (f1 j).toNat = 1) n)

end

end A144302.P7609938724449431267

namespace A144302

/-- `filter[A363787(n+1), A228495(#)]` -/
def P7609938724449431267.Spec : Prop :=
  ∀ n, P7609938724449431267.a n = A144302 (n + 1)

end A144302

/-! ## A144302.P15187781829444486245

`∩[A049445(n+1), A092246(n+1)]`
-/

namespace A144302.P15187781829444486245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049445 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144302.P15187781829444486245

namespace A144302

/-- `∩[A049445(n+1), A092246(n+1)]` -/
def P15187781829444486245.Spec : Prop :=
  ∀ n, (P15187781829444486245.a n : ℤ) = A144302 (n + 1)

end A144302

/-! ## A144302.P16438419484189565094

`∩[A092246(n+1), A363787(n+1)]`
-/

namespace A144302.P16438419484189565094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144302.P16438419484189565094

namespace A144302

/-- `∩[A092246(n+1), A363787(n+1)]` -/
def P16438419484189565094.Spec : Prop :=
  ∀ n, (P16438419484189565094.a n : ℤ) = A144302 (n + 1)

end A144302

/-! ## A144302.P10961445509691765361

`∩[A125592(n+1)+1, A363787(n+1)]`
-/

namespace A144302.P10961445509691765361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125592 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144302.P10961445509691765361

namespace A144302

/-- `∩[A125592(n+1)+1, A363787(n+1)]` -/
def P10961445509691765361.Spec : Prop :=
  ∀ n, (P10961445509691765361.a n : ℤ) = A144302 (n + 1)

end A144302

/-! ## A144302.P11868666173585284534

`∩[A091855(n+1), A363787(n+1)]`
-/

namespace A144302.P11868666173585284534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144302.P11868666173585284534

namespace A144302

/-- `∩[A091855(n+1), A363787(n+1)]` -/
def P11868666173585284534.Spec : Prop :=
  ∀ n, (P11868666173585284534.a n : ℤ) = A144302 (n + 1)

end A144302

/-! ## A144302.P8305364314876339504

`∩[A014076(n+1), A049445(n+1)]`
-/

namespace A144302.P8305364314876339504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049445 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144302.P8305364314876339504

namespace A144302

/-- `∩[A014076(n+1), A049445(n+1)]` -/
def P8305364314876339504.Spec : Prop :=
  ∀ n, (P8305364314876339504.a n : ℤ) = A144302 (n + 1)

end A144302

/-! ## A144302.P9721291830815868742

`∩[A014076(n+1), A363787(n+1)]`
-/

namespace A144302.P9721291830815868742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144302.P9721291830815868742

namespace A144302

/-- `∩[A014076(n+1), A363787(n+1)]` -/
def P9721291830815868742.Spec : Prop :=
  ∀ n, (P9721291830815868742.a n : ℤ) = A144302 (n + 1)

end A144302

/-! ## A144302.P5180905477028836877

`∩[A229937(n+1), A363787(n+1)]`
-/

namespace A144302.P5180905477028836877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144302.P5180905477028836877

namespace A144302

/-- `∩[A229937(n+1), A363787(n+1)]` -/
def P5180905477028836877.Spec : Prop :=
  ∀ n, (P5180905477028836877.a n : ℤ) = A144302 (n + 1)

end A144302

/-! ## A144302.P12478396944009465883

`∩[A049445(n+1), A255763(n+1)]`
-/

namespace A144302.P12478396944009465883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049445 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144302.P12478396944009465883

namespace A144302

/-- `∩[A049445(n+1), A255763(n+1)]` -/
def P12478396944009465883.Spec : Prop :=
  ∀ n, (P12478396944009465883.a n : ℤ) = A144302 (n + 1)

end A144302

/-! ## A144302.P771343847570081898

`∩[A255763(n+1), A363787(n+1)]`
-/

namespace A144302.P771343847570081898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144302.P771343847570081898

namespace A144302

/-- `∩[A255763(n+1), A363787(n+1)]` -/
def P771343847570081898.Spec : Prop :=
  ∀ n, (P771343847570081898.a n : ℤ) = A144302 (n + 1)

end A144302

/-! ## A144302.P12685416621261512810

`∩[A049445(n+1), A193071(n+1)]`
-/

namespace A144302.P12685416621261512810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049445 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144302.P12685416621261512810

namespace A144302

/-- `∩[A049445(n+1), A193071(n+1)]` -/
def P12685416621261512810.Spec : Prop :=
  ∀ n, (P12685416621261512810.a n : ℤ) = A144302 (n + 1)

end A144302

/-! ## A144302.P13191283198761726093

`∩[A193071(n+1), A363787(n+1)]`
-/

namespace A144302.P13191283198761726093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144302.P13191283198761726093

namespace A144302

/-- `∩[A193071(n+1), A363787(n+1)]` -/
def P13191283198761726093.Spec : Prop :=
  ∀ n, (P13191283198761726093.a n : ℤ) = A144302 (n + 1)

end A144302

/-! ## A144302.P13150152668413525421

`record[A093178(A049445(n+1))]`
-/

namespace A144302.P13150152668413525421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A049445 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144302.P13150152668413525421

namespace A144302

/-- `record[A093178(A049445(n+1))]` -/
def P13150152668413525421.Spec : Prop :=
  ∀ n, P13150152668413525421.a n = A144302 (n + 1)

end A144302

/-! ## A144302.P1071217681311987560

`∩[A049445(n+1), A004273(n)]`
-/

namespace A144302.P1071217681311987560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049445 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144302.P1071217681311987560

namespace A144302

/-- `∩[A049445(n+1), A004273(n)]` -/
def P1071217681311987560.Spec : Prop :=
  ∀ n, (P1071217681311987560.a n : ℤ) = A144302 (n + 1)

end A144302

/-! ## A144302.P10211498154390955807

`∩[A049445(n+1), A060747(n)]`
-/

namespace A144302.P10211498154390955807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049445 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144302.P10211498154390955807

namespace A144302

/-- `∩[A049445(n+1), A060747(n)]` -/
def P10211498154390955807.Spec : Prop :=
  ∀ n, (P10211498154390955807.a n : ℤ) = A144302 (n + 1)

end A144302

/-!
# A144303: Square array A(n,m), n>=0, m>=0, read by antidiagonals: A(n,m) = n-th number of the m-th iteration of the hyperbinomial transform on the sequence of 1's.

The programs for A144303, there is no canonical definition to state claims against.
-/

/-! ## A144303.P6067064526015937098

`A203092(A061579(n))/A007318(n)`
-/

namespace A144303.P6067064526015937098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203092 (A061579 n).toNat : ℚ) / (A007318 n : ℚ)

end

end A144303.P6067064526015937098

/-! ## A144303.P15094695522485861146

`abs(A203092(A061579(n))/A130595(n))`
-/

namespace A144303.P15094695522485861146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A203092 (A061579 n).toNat : ℚ) / (A130595 n : ℚ)|

end

end A144303.P15094695522485861146

/-! ## A144303.P15661803587548785611

`A203092(A061579(n))/sqrt(A008459(n))`
-/

namespace A144303.P15661803587548785611
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203092 (A061579 n).toNat : ℝ) / Real.sqrt (A008459 n : ℝ)

end

end A144303.P15661803587548785611

/-! ## A144303.P5023536880782039561

`A203092(A061579(n))/Δ[A102363(n)]`
-/

namespace A144303.P5023536880782039561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203092 (A061579 n).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A144303.P5023536880782039561

/-! ## A144303.P5686207807950764322

`A306202(A008279(n*A051168(n)))`
-/

namespace A144303.P5686207807950764322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306202 (A008279 ((n : ℤ) * A051168 n).toNat).toNat

end

end A144303.P5686207807950764322

/-!
# A144304: Square array A(n,m), n>=0, m>=0, read by antidiagonals: A(n,m) = n-th number of the m-th iteration of the hyperbinomial transform on sequence A001858.

The programs for A144304, there is no canonical definition to state claims against.
-/

/-! ## A144304.P15757635235446455374

`A305924(A009766(n)%A292309(3*n+1))`
-/

namespace A144304.P15757635235446455374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305924 (Int.tmod (A009766 n) (A292309 (3 * n + 1))).toNat

end

end A144304.P15757635235446455374

/-!
# A144305: Triangle read by rows: prime numbers p(n) along left edge (n, 1) and totient phi(n) along right edge (n, n), with (n, k) = (n - 1, k - 1) + (n - 1, k) for 1 < k < n when n > 2.

The programs for A144305, there is no canonical definition to state claims against.
-/

/-! ## A144305.P16109985019029436016

`or(A025142(2^n+n²), A053727(n+1))`
-/

namespace A144305.P16109985019029436016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025142 (2 ^ n + n ^ 2)) (A053727 (n + 1))

end

end A144305.P16109985019029436016

/-! ## A144305.P2677615253815291388

`A002024(A209170(n+1)%A290183(n))`
-/

namespace A144305.P2677615253815291388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Int.tmod (A209170 (n + 1)) (A290183 n)).toNat

end

end A144305.P2677615253815291388

/-! ## A144305.P8529292712385682122

`A132108(n)+A031346(A056040(n))`
-/

namespace A144305.P8529292712385682122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132108 n + A031346 (A056040 n).toNat

end

end A144305.P8529292712385682122

/-!
# A144307: Triangle read by rows: prime numbers p(n) along left edge (n, 1) and p(n - 1) along right edge (n, n), with (n, k) = rad((n - 1, k - 1) + (n - 1, k)) for 1 < k < n when n > 2.

The programs for A144307, there is no canonical definition to state claims against.
-/

/-! ## A144307.P6223496850428668636

`A124976(A124976(n+1))*A144308(n+1)`
-/

namespace A144307.P6223496850428668636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124976 (A124976 (n + 1)).toNat * A144308 (n + 1)

end

end A144307.P6223496850428668636

/-! ## A144307.P2404734835827451040

`lcm(A001221(A022173(n)+1), A144308(n+1))`
-/

namespace A144307.P2404734835827451040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (A022173 n + 1).toNat) (A144308 (n + 1))

end

end A144307.P2404734835827451040

/-! ## A144307.P7908751511375210371

`A144308(lcm(n+1, A152798(n)))`
-/

namespace A144307.P7908751511375210371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144308 (Int.lcm (n + 1 : ℤ) (A152798 n))

end

end A144307.P7908751511375210371

/-! ## A144307.P9148556909846456140

`lcm(A144308(n+1), A281727(A209196(n)))`
-/

namespace A144307.P9148556909846456140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A144308 (n + 1)) (A281727 (A209196 n).toNat)

end

end A144307.P9148556909846456140

/-! ## A144307.P669315348200486868

`A144308(A043317(n+1))`
-/

namespace A144307.P669315348200486868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144308 (A043317 (n + 1)).toNat

end

end A144307.P669315348200486868

/-!
# A144308: Triangle read by rows: prime numbers p(n) along left edge (n, 1) and p(n - 1) along right edge (n, n), with (n, k) = core((n - 1, k - 1) + (n - 1, k)) for 1 < k < n when n > 2.

The programs for A144308, there is no canonical definition to state claims against.
-/

/-! ## A144308.P3522580249169011795

`A144307(n+1)/A124976(A124976(n+1))`
-/

namespace A144308.P3522580249169011795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144307 (n + 1) : ℚ) / (A124976 (A124976 (n + 1)).toNat : ℚ)

end

end A144308.P3522580249169011795

/-! ## A144308.P3335948564058575829

`gcd(A144307(n+1), A185245(A049569(n+1)))`
-/

namespace A144308.P3335948564058575829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A144307 (n + 1)) (A185245 (A049569 (n + 1)).toNat)

end

end A144308.P3335948564058575829

/-!
# A144309: a(n) is the index of the smallest prime such that the gap to the next prime is not less than 2*n.

The programs for A144309, there is no canonical definition to state claims against.
-/

/-! ## A144309.P6271139464536508622

`A000720(A100964(n+1))`
-/

namespace A144309.P6271139464536508622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A100964 (n + 1)).toNat

end

end A144309.P6271139464536508622

/-! ## A144309.P13441826735883172266

`A329622(A100965(n+1))`
-/

namespace A144309.P13441826735883172266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329622 (A100965 (n + 1)).toNat

end

end A144309.P13441826735883172266

/-! ## A144309.P8114292678163982238

`A000720(A104138(Δ[n²]))`
-/

namespace A144309.P8114292678163982238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A104138 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A144309.P8114292678163982238

/-! ## A144309.P15382692249211527444

`A061395(p?[A100964(n+1)])`
-/

namespace A144309.P15382692249211527444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A144309.P15382692249211527444

/-!
# A144312: a(n) = 5*n*(5*n + 1)/2.

The programs for A144312, the canonical program `A144312.P14308186421867435590` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144312 has offset 0).

The definition of A144312 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n*(5*n+1)/2` (program `A144312.P14387776071374767807`, by `A144312.P14387776071374767807.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A144312.P14387776071374767807

`5*n*(5*n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A144312.P14387776071374767807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * ((n : ℚ) * ((5 * n + 1 : ℚ) / 2))

end

end A144312.P14387776071374767807

namespace A144312

/-- `5*n*(5*n+1)/2` -/
def P14387776071374767807.Spec : Prop :=
  ∀ n, P14387776071374767807.a n = (A144312 n : ℚ)

theorem P14387776071374767807.correct : P14387776071374767807.Spec := by
  intro n
  induction n with
  | zero => simp [A144312, A144312.P14387776071374767807.a, A144312.P14308186421867435590.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A144312, Nat.add_sub_cancel, A144312.P14387776071374767807.a, A144312.P14308186421867435590.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A144312

/-! ## A144312.P14308186421867435590

`a(n-1)+25*n-10` with `a(0)=0`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A144312

/-- `a(n-1)+25*n-10` -/
def P14308186421867435590.Spec : Prop :=
  ∀ n, P14308186421867435590.a n = A144312 n

theorem P14308186421867435590.correct : P14308186421867435590.Spec := by
  intro n
  simp only [A144312]

end A144312

/-! ## A144312.P18430325495628771950

`A000217(5*n)`
-/

namespace A144312.P18430325495628771950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (5 * n)

end

end A144312.P18430325495628771950

namespace A144312

/-- `A000217(5*n)` -/
def P18430325495628771950.Spec : Prop :=
  ∀ n, P18430325495628771950.a n = A144312 n

end A144312

/-! ## A144312.P6804570047712853418

`C(5*n+1, 2)`
-/

namespace A144312.P6804570047712853418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (5 * n + 1) 2

end

end A144312.P6804570047712853418

namespace A144312

/-- `C(5*n+1, 2)` -/
def P6804570047712853418.Spec : Prop :=
  ∀ n, (P6804570047712853418.a n : ℤ) = A144312 n

end A144312

/-! ## A144312.P5674864458726262735

`∑[a(n-1)+25]` with `a(0)=0, a(1)=15`
-/

namespace A144312.P5674864458726262735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 15] fun n f1 =>
  f1 (n - 1) + 25

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144312.P5674864458726262735

namespace A144312

/-- `∑[a(n-1)+25]` -/
def P5674864458726262735.Spec : Prop :=
  ∀ n, (P5674864458726262735.a n : ℤ) = A144312 n

end A144312

/-! ## A144312.P1902660886736627620

`floor(5*(2-∑[a(n-1)-5]))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A144312.P1902660886736627620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A144312.P1902660886736627620

namespace A144312

/-- `floor(5*(2-∑[a(n-1)-5]))` -/
def P1902660886736627620.Spec : Prop :=
  ∀ n, P1902660886736627620.a n = A144312 n

end A144312

/-! ## A144312.P11835461294849295287

`A022283(n)+2*n`
-/

namespace A144312.P11835461294849295287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022283 n + (2 * n : ℤ)

end

end A144312.P11835461294849295287

namespace A144312

/-- `A022283(n)+2*n` -/
def P11835461294849295287.Spec : Prop :=
  ∀ n, P11835461294849295287.a n = A144312 n

end A144312

/-! ## A144312.P16005522195030119680

`A022282(n)+3*n`
-/

namespace A144312.P16005522195030119680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022282 n + (3 * n : ℤ)

end

end A144312.P16005522195030119680

namespace A144312

/-- `A022282(n)+3*n` -/
def P16005522195030119680.Spec : Prop :=
  ∀ n, P16005522195030119680.a n = A144312 n

end A144312

/-! ## A144312.P15315603746155311259

`A093485(n)-(n+1)²`
-/

namespace A144312.P15315603746155311259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093485 n - ((n + 1) ^ 2 : ℤ)

end

end A144312.P15315603746155311259

namespace A144312

/-- `A093485(n)-(n+1)²` -/
def P15315603746155311259.Spec : Prop :=
  ∀ n, P15315603746155311259.a n = A144312 n

end A144312

/-! ## A144312.P7441048393388457802

`A022275(n)+A002943(n)`
-/

namespace A144312.P7441048393388457802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022275 n + A002943 n

end

end A144312.P7441048393388457802

namespace A144312

/-- `A022275(n)+A002943(n)` -/
def P7441048393388457802.Spec : Prop :=
  ∀ n, P7441048393388457802.a n = A144312 n

end A144312

/-! ## A144312.P6497655795763207487

`A022281(n)+A005563(n)`
-/

namespace A144312.P6497655795763207487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022281 n + A005563 n

end

end A144312.P6497655795763207487

namespace A144312

/-- `A022281(n)+A005563(n)` -/
def P6497655795763207487.Spec : Prop :=
  ∀ n, P6497655795763207487.a n = A144312 n

end A144312

/-! ## A144312.P10377248431240135914

`A022278(n)+A014106(n)`
-/

namespace A144312.P10377248431240135914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022278 n + A014106 n

end

end A144312.P10377248431240135914

namespace A144312

/-- `A022278(n)+A014106(n)` -/
def P10377248431240135914.Spec : Prop :=
  ∀ n, P10377248431240135914.a n = A144312 n

end A144312

/-! ## A144312.P1272485967758381630

`A033566(n)+A006137(n)`
-/

namespace A144312.P1272485967758381630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033566 n + A006137 n

end

end A144312.P1272485967758381630

namespace A144312

/-- `A033566(n)+A006137(n)` -/
def P1272485967758381630.Spec : Prop :=
  ∀ n, P1272485967758381630.a n = A144312 n

end A144312

/-! ## A144312.P8030122601122202258

`A027468(n)+A014635(n)`
-/

namespace A144312.P8030122601122202258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027468 n + A014635 n

end

end A144312.P8030122601122202258

namespace A144312

/-- `A027468(n)+A014635(n)` -/
def P8030122601122202258.Spec : Prop :=
  ∀ n, P8030122601122202258.a n = A144312 n

end A144312

/-! ## A144312.P13280395719675926047

`A028552(n)+A022280(n)`
-/

namespace A144312.P13280395719675926047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 n + A022280 n

end

end A144312.P13280395719675926047

namespace A144312

/-- `A028552(n)+A022280(n)` -/
def P13280395719675926047.Spec : Prop :=
  ∀ n, P13280395719675926047.a n = A144312 n

end A144312

/-! ## A144312.P1932448617932973450

`A028896(n)+A022276(n)`
-/

namespace A144312.P1932448617932973450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028896 n + A022276 n

end

end A144312.P1932448617932973450

namespace A144312

/-- `A028896(n)+A022276(n)` -/
def P1932448617932973450.Spec : Prop :=
  ∀ n, P1932448617932973450.a n = A144312 n

end A144312

/-! ## A144312.P10519678957625940549

`A033580(n)+A022271(n)`
-/

namespace A144312.P10519678957625940549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033580 n + A022271 n

end

end A144312.P10519678957625940549

namespace A144312

/-- `A033580(n)+A022271(n)` -/
def P10519678957625940549.Spec : Prop :=
  ∀ n, P10519678957625940549.a n = A144312 n

end A144312

/-! ## A144312.P17827061256364325480

`A033585(n)+A022267(n)`
-/

namespace A144312.P17827061256364325480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033585 n + A022267 n

end

end A144312.P17827061256364325480

namespace A144312

/-- `A033585(n)+A022267(n)` -/
def P17827061256364325480.Spec : Prop :=
  ∀ n, P17827061256364325480.a n = A144312 n

end A144312

/-! ## A144312.P13829196473863989289

`A033954(n)+A022274(n)`
-/

namespace A144312.P13829196473863989289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033954 n + A022274 n

end

end A144312.P13829196473863989289

namespace A144312

/-- `A033954(n)+A022274(n)` -/
def P13829196473863989289.Spec : Prop :=
  ∀ n, P13829196473863989289.a n = A144312 n

end A144312

/-! ## A144312.P17046860439911184197

`A033583(n)+A028895(n)`
-/

namespace A144312.P17046860439911184197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 n + A028895 n

end

end A144312.P17046860439911184197

namespace A144312

/-- `A033583(n)+A028895(n)` -/
def P17046860439911184197.Spec : Prop :=
  ∀ n, P17046860439911184197.a n = A144312 n

end A144312

/-!
# A144313: Prime numbers p such that p - 1 is the fourth a-figurate number, seventh b-figurate number and possibly tenth c-figurate number for some a, b and c and not a d-figurate number for any nontrivial d.

The programs for A144313, there is no canonical definition to state claims against.
-/

/-! ## A144313.P1075194610763458024

`A144715(n+1)-(A144325(n+1)+A144315(n+1))`
-/

namespace A144313.P1075194610763458024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144715 (n + 1) - (A144325 (n + 1) + A144315 (n + 1))

end

end A144313.P1075194610763458024

/-! ## A144313.P10237451642982958580

`p?[A144333(A231655(n+1))+A139607(n)]`
-/

namespace A144313.P10237451642982958580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144333 (A231655 (n + 1)).toNat + A139607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144313.P10237451642982958580

/-!
# A144314: a(n) = 3*n*(6*n + 1).

The programs for A144314, the canonical program `A144314.P6774438569121853376` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144314 has offset 0).

The definition of A144314 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*(6*n+1)` (program `A144314.P6774438569121853376`, by `A144314.P6774438569121853376.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A144314.P11651119953513939805

`18*n²+3*n`
-/

namespace A144314.P11651119953513939805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 * n ^ 2 + 3 * n

end

end A144314.P11651119953513939805

namespace A144314

/-- `18*n²+3*n` -/
def P11651119953513939805.Spec : Prop :=
  ∀ n, (P11651119953513939805.a n : ℤ) = A144314 n

theorem P11651119953513939805.correct : P11651119953513939805.Spec := by
  intro n
  simp only [A144314, Nat.add_sub_cancel, A144314.P11651119953513939805.a, A144314.P6774438569121853376.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A144314

/-! ## A144314.P6774438569121853376

`3*n*(6*n+1)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A144314

/-- `3*n*(6*n+1)` -/
def P6774438569121853376.Spec : Prop :=
  ∀ n, (P6774438569121853376.a n : ℤ) = A144314 n

theorem P6774438569121853376.correct : P6774438569121853376.Spec := by
  intro n
  simp only [A144314]

end A144314

/-! ## A144314.P4177399432872399986

`A081266(2*n)`
-/

namespace A144314.P4177399432872399986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081266 (2 * n)

end

end A144314.P4177399432872399986

namespace A144314

/-- `A081266(2*n)` -/
def P4177399432872399986.Spec : Prop :=
  ∀ n, P4177399432872399986.a n = A144314 n

end A144314

/-! ## A144314.P729243927782076861

`A000217(6*n)`
-/

namespace A144314.P729243927782076861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (6 * n)

end

end A144314.P729243927782076861

namespace A144314

/-- `A000217(6*n)` -/
def P729243927782076861.Spec : Prop :=
  ∀ n, P729243927782076861.a n = A144314 n

end A144314

/-! ## A144314.P13430642432934885416

`A014105(3*n)`
-/

namespace A144314.P13430642432934885416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 (3 * n)

end

end A144314.P13430642432934885416

namespace A144314

/-- `A014105(3*n)` -/
def P13430642432934885416.Spec : Prop :=
  ∀ n, P13430642432934885416.a n = A144314 n

end A144314

/-! ## A144314.P6167008063092164224

`C(6*n+1, 2)`
-/

namespace A144314.P6167008063092164224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (6 * n + 1) 2

end

end A144314.P6167008063092164224

namespace A144314

/-- `C(6*n+1, 2)` -/
def P6167008063092164224.Spec : Prop :=
  ∀ n, (P6167008063092164224.a n : ℤ) = A144314 n

end A144314

/-! ## A144314.P8845757090207324397

`∑[a(n-1)+36]` with `a(0)=0, a(1)=21`
-/

namespace A144314.P8845757090207324397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 21] fun n f1 =>
  f1 (n - 1) + 36

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144314.P8845757090207324397

namespace A144314

/-- `∑[a(n-1)+36]` -/
def P8845757090207324397.Spec : Prop :=
  ∀ n, (P8845757090207324397.a n : ℤ) = A144314 n

end A144314

/-! ## A144314.P4608934469010128167

`floor(A017534(n)/8)`
-/

namespace A144314.P4608934469010128167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017534 n : ℚ) / 8⌋

end

end A144314.P4608934469010128167

namespace A144314

/-- `floor(A017534(n)/8)` -/
def P4608934469010128167.Spec : Prop :=
  ∀ n, P4608934469010128167.a n = A144314 n

end A144314

/-! ## A144314.P10754466025858498748

`lcm(A008486(n), A049453(n))`
-/

namespace A144314.P10754466025858498748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008486 n) (A049453 n)

end

end A144314.P10754466025858498748

namespace A144314

/-- `lcm(A008486(n), A049453(n))` -/
def P10754466025858498748.Spec : Prop :=
  ∀ n, (P10754466025858498748.a n : ℤ) = A144314 n

end A144314

/-! ## A144314.P14733084736451189307

`A016922(n)%A272399(n+1)`
-/

namespace A144314.P14733084736451189307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016922 n) (A272399 (n + 1))

end

end A144314.P14733084736451189307

namespace A144314

/-- `A016922(n)%A272399(n+1)` -/
def P14733084736451189307.Spec : Prop :=
  ∀ n, P14733084736451189307.a n = A144314 n

end A144314

/-! ## A144314.P15021183577048134736

`A016924(n)%A272399(n+1)`
-/

namespace A144314.P15021183577048134736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016924 n) (A272399 (n + 1))

end

end A144314.P15021183577048134736

namespace A144314

/-- `A016924(n)%A272399(n+1)` -/
def P15021183577048134736.Spec : Prop :=
  ∀ n, P15021183577048134736.a n = A144314 n

end A144314

/-! ## A144314.P16425686659004496435

`A016926(n)%A272399(n+1)`
-/

namespace A144314.P16425686659004496435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016926 n) (A272399 (n + 1))

end

end A144314.P16425686659004496435

namespace A144314

/-- `A016926(n)%A272399(n+1)` -/
def P16425686659004496435.Spec : Prop :=
  ∀ n, P16425686659004496435.a n = A144314 n

end A144314

/-! ## A144314.P16119418389367136145

`A045945(2*n)/2`
-/

namespace A144314.P16119418389367136145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045945 (2 * n) : ℚ) / 2

end

end A144314.P16119418389367136145

namespace A144314

/-- `A045945(2*n)/2` -/
def P16119418389367136145.Spec : Prop :=
  ∀ n, P16119418389367136145.a n = (A144314 n : ℚ)

end A144314

/-! ## A144314.P7984399855223988874

`A045946(2*n)/4`
-/

namespace A144314.P7984399855223988874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045946 (2 * n) : ℚ) / 4

end

end A144314.P7984399855223988874

namespace A144314

/-- `A045946(2*n)/4` -/
def P7984399855223988874.Spec : Prop :=
  ∀ n, P7984399855223988874.a n = (A144314 n : ℚ)

end A144314

/-!
# A144315: Prime numbers p such that p - 1 is the fourth a-figurate number, eighth b-figurate number and possibly sixteenth c-figurate number for some a, b and c and not a d-figurate number for any nontrivial d.

The programs for A144315, there is no canonical definition to state claims against.
-/

/-! ## A144315.P17423146984336248619

`A144715(n+1)-(A144325(n+1)+A144313(n+1))`
-/

namespace A144315.P17423146984336248619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144715 (n + 1) - (A144325 (n + 1) + A144313 (n + 1))

end

end A144315.P17423146984336248619

/-!
# A144316: Shifts left when Dirichlet convolution (DC:(b,b)->a) applied twice.

The programs for A144316, there is no canonical definition to state claims against.
-/

/-! ## A144316.P9102315474094087278

`A144823(∑[n+3]+1)`
-/

namespace A144316.P9102315474094087278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A144316.P9102315474094087278

/-! ## A144316.P10362254068760317341

`or(A000007(n), A144823(A034856(n+2)))`
-/

namespace A144316.P10362254068760317341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A144823 (A034856 (n + 2)).toNat)

end

end A144316.P10362254068760317341

/-! ## A144316.P18154668728916416554

`A144823(A034856(n+2))%A001653(n+2)`
-/

namespace A144316.P18154668728916416554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144823 (A034856 (n + 2)).toNat) (A001653 (n + 2))

end

end A144316.P18154668728916416554

/-! ## A144316.P10169947994017477801

`and(1, A055580(n))*A144823(A034856(n+2))`
-/

namespace A144316.P10169947994017477801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A055580 n) * A144823 (A034856 (n + 2)).toNat

end

end A144316.P10169947994017477801

/-! ## A144316.P3846217229309081564

`gcd(A000038(n), A144823((n+2)²-A000217(n)))`
-/

namespace A144316.P3846217229309081564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A144823 (((n + 2) ^ 2 : ℤ) - A000217 n).toNat)

end

end A144316.P3846217229309081564

/-!
# A144317: Shifts left when Dirichlet convolution (DC:(b,b)->a) applied 3 times.

The programs for A144317, there is no canonical definition to state claims against.
-/

/-! ## A144317.P15309406992220364121

`A144823(A055999(n+4))`
-/

namespace A144317.P15309406992220364121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (A055999 (n + 4)).toNat

end

end A144317.P15309406992220364121

/-! ## A144317.P17179371151187713832

`A144823(A000124(n+7)-7)`
-/

namespace A144317.P17179371151187713832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (A000124 (n + 7) - 7).toNat

end

end A144317.P17179371151187713832

/-! ## A144317.P2221995930064503076

`A144823(A000217(n+6)+n+1)`
-/

namespace A144317.P2221995930064503076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A144317.P2221995930064503076

/-! ## A144317.P12936559650798246851

`A144823(Δ[A000292(n+4)+(n+3)²])`
-/

namespace A144317.P12936559650798246851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 4) + ((n + 3) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (f1 (n + 1) - f1 n).toNat

end

end A144317.P12936559650798246851

/-! ## A144317.P17428388853705177144

`A144324(∑[n+3]+1)`
-/

namespace A144317.P17428388853705177144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144324 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A144317.P17428388853705177144

/-!
# A144318: Shifts left when Dirichlet convolution (DC:(b,b)->a) applied 4 times.

The programs for A144318, there is no canonical definition to state claims against.
-/

/-! ## A144318.P13642898350402843857

`A144324(∑[round(sqrt(n²+1))+3]+n+3)`
-/

namespace A144318.P13642898350402843857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144324 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3 : ℤ)).toNat

end

end A144318.P13642898350402843857

/-! ## A144318.P7880872842084489714

`A144324(A027379(n+2))^floor(atan(n))`
-/

namespace A144318.P7880872842084489714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144324 (A027379 (n + 2)).toNat : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A144318.P7880872842084489714

/-! ## A144318.P18054094039968650122

`A144324(A055998(n+2))*A178334(n+1)`
-/

namespace A144318.P18054094039968650122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144324 (A055998 (n + 2)).toNat * A178334 (n + 1)

end

end A144318.P18054094039968650122

/-!
# A144319: Shifts left when Dirichlet convolution (DC:(b,b)->a) applied 5 times.

The programs for A144319, there is no canonical definition to state claims against.
-/

/-! ## A144319.P17341479791589386340

`A144324(Δ[A264443(n)])`
-/

namespace A144319.P17341479791589386340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144324 (f1 (n + 1) - f1 n).toNat

end

end A144319.P17341479791589386340

/-! ## A144319.P16892454419891038965

`A144324(eq[4, A193592(n)])`
-/

namespace A144319.P16892454419891038965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144319.P16892454419891038965

/-! ## A144319.P14911179533681226233

`A144324(eq[8, A140996(n)])`
-/

namespace A144319.P14911179533681226233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144319.P14911179533681226233

/-! ## A144319.P12542332095101603432

`A144324(Δ[A023545(n+1)])`
-/

namespace A144319.P12542332095101603432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144324 (f1 (n + 1) - f1 n).toNat

end

end A144319.P12542332095101603432

/-! ## A144319.P13399587209646696123

`A144324(A052905(n+2)+1)`
-/

namespace A144319.P13399587209646696123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144324 (A052905 (n + 2) + 1).toNat

end

end A144319.P13399587209646696123

/-!
# A144320: Shifts left when Dirichlet convolution (DC:(b,b)->a) applied 6 times.

The programs for A144320, there is no canonical definition to state claims against.
-/

/-! ## A144320.P16848076795724713685

`A144324(A052905(n+3))`
-/

namespace A144320.P16848076795724713685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144324 (A052905 (n + 3)).toNat

end

end A144320.P16848076795724713685

/-! ## A144320.P1171919366836252924

`A144324(A056119(n)+16)`
-/

namespace A144320.P1171919366836252924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144324 (A056119 n + 16).toNat

end

end A144320.P1171919366836252924

/-! ## A144320.P12745012202867484529

`A144324(eq[3, A219347(n)])`
-/

namespace A144320.P12745012202867484529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144320.P12745012202867484529

/-! ## A144320.P17665947918959294127

`A144324(eq[5, A193592(n)])`
-/

namespace A144320.P17665947918959294127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144320.P17665947918959294127

/-! ## A144320.P7917741307771372134

`A144324(A027379(n+4)-2)`
-/

namespace A144320.P7917741307771372134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144324 (A027379 (n + 4) - 2).toNat

end

end A144320.P7917741307771372134

/-!
# A144321: Shifts left when Dirichlet convolution (DC:(b,b)->a) applied 7 times.

The programs for A144321, there is no canonical definition to state claims against.
-/

/-! ## A144321.P4364128773907918783

`A144324(A055999(n+4))`
-/

namespace A144321.P4364128773907918783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144324 (A055999 (n + 4)).toNat

end

end A144321.P4364128773907918783

/-! ## A144321.P2227801680588053822

`A144324(eq[4, A219347(n)])`
-/

namespace A144321.P2227801680588053822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144321.P2227801680588053822

/-! ## A144321.P1717915873415569537

`A144324(eq[6, A193592(n)])`
-/

namespace A144321.P1717915873415569537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144321.P1717915873415569537

/-! ## A144321.P15037424377005058424

`A144324(eq[10, A185782(n+1)])`
-/

namespace A144321.P15037424377005058424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144321.P15037424377005058424

/-! ## A144321.P7218770556651429994

`A144324(A166136(n+4)+2*n+1)`
-/

namespace A144321.P7218770556651429994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144324 (A166136 (n + 4) + (2 * n + 1 : ℤ)).toNat

end

end A144321.P7218770556651429994

/-!
# A144322: Shifts left when Dirichlet convolution (DC:(b,b)->a) applied 8 times.

The programs for A144322, there is no canonical definition to state claims against.
-/

/-! ## A144322.P14642577463530344765

`A144324(eq[5, A219347(n)])`
-/

namespace A144322.P14642577463530344765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144322.P14642577463530344765

/-! ## A144322.P15096778951812137694

`A144324(eq[7, A193592(n)])`
-/

namespace A144322.P15096778951812137694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144322.P15096778951812137694

/-! ## A144322.P4975902583458030003

`A144324(A155212(n+4)+1)`
-/

namespace A144322.P4975902583458030003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144324 (A155212 (n + 4) + 1).toNat

end

end A144322.P4975902583458030003

/-! ## A144322.P15483262066416690188

`A144324(eq[12, A185782(n+1)])`
-/

namespace A144322.P15483262066416690188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144322.P15483262066416690188

/-! ## A144322.P11102628312483018928

`A144324(eq[64, A057728(n+1)])`
-/

namespace A144322.P11102628312483018928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144322.P11102628312483018928

/-!
# A144323: Shifts left when Dirichlet convolution (DC:(b,b)->a) applied 9 times.

The programs for A144323, there is no canonical definition to state claims against.
-/

/-! ## A144323.P10765164766202106367

`A144324(eq[6, A219347(n)])`
-/

namespace A144323.P10765164766202106367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144323.P10765164766202106367

/-! ## A144323.P11182711135510288592

`A144324(eq[8, A193592(n)])`
-/

namespace A144323.P11182711135510288592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144323.P11182711135510288592

/-! ## A144323.P7917176700359865708

`A144324(A000108(C(2, n+2))+A055999(n+6)-3)`
-/

namespace A144323.P7917176700359865708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144324 (A000108 (Nat.choose 2 (n + 2)) + (A055999 (n + 6) - 3)).toNat

end

end A144323.P7917176700359865708

/-!
# A144324: Square array A(n,k), n>=1, k>=1, read by antidiagonals, with A(1,k)=1 and sequence a_k of column k shifts left when Dirichlet convolution (DC:(b,b)->a) applied k times.

The programs for A144324, there is no canonical definition to state claims against.
-/

/-! ## A144324.P17488751320154398605

`A048766((A285867(n)+1)*A294609(n))`
-/

namespace A144324.P17488751320154398605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 ((A285867 n + 1) * A294609 n).toNat

end

end A144324.P17488751320154398605

/-! ## A144324.P1641130750813676650

`A184720(n+1)^A167439(A131689(n))`
-/

namespace A144324.P1641130750813676650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184720 (n + 1) : ℚ) ^ (A167439 (A131689 n).toNat : ℤ)

end

end A144324.P1641130750813676650

/-! ## A144324.P3522968531212297467

`A184848(n+1)^A167439(A131689(n))`
-/

namespace A144324.P3522968531212297467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184848 (n + 1) : ℚ) ^ (A167439 (A131689 n).toNat : ℤ)

end

end A144324.P3522968531212297467

/-!
# A144325: Prime numbers p such that p - 1 is the third a-figurate number, sixth b-figurate number and possibly twelfth c-figurate number for some a, b and c and not a d-figurate number for any nontrivial d.

The programs for A144325, there is no canonical definition to state claims against.
-/

/-! ## A144325.P13647082550761076633

`A144715(n+1)-(A144315(n+1)+A144313(n+1))`
-/

namespace A144325.P13647082550761076633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144715 (n + 1) - (A144315 (n + 1) + A144313 (n + 1))

end

end A144325.P13647082550761076633

/-! ## A144325.P2665454578736846165

`A132231(lt[A093782(2*n+1), A087127(2*(n+2))])`
-/

namespace A144325.P2665454578736846165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093782 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087127 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A144325.P2665454578736846165

/-!
# A144327: Prime numbers p such that p - 1 is the fourth a-figurate number and nineteenth b-figurate number for some a and b.

The programs for A144327, there is no canonical definition to state claims against.
-/

/-! ## A144327.P8675978039110059983

`p?[3*57*n+20]`
-/

namespace A144327.P8675978039110059983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (57 * n) + 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A144327.P8675978039110059983

/-! ## A144327.P12814525583516358026

`or(1, p?[A139619(n)+1])`
-/

namespace A144327.P12814525583516358026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139619 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A144327.P12814525583516358026

/-! ## A144327.P4785136293075479905

`A000027(p?[A139619(n)+1])`
-/

namespace A144327.P4785136293075479905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139619 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A144327.P4785136293075479905

/-! ## A144327.P4630491214196982342

`∩[A061238(n+1), A215144(n)]`
-/

namespace A144327.P4630491214196982342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215144 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144327.P4630491214196982342

/-! ## A144327.P5782110437104841802

`∩[A061238(n+1), A141868(n+1)]`
-/

namespace A144327.P5782110437104841802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144327.P5782110437104841802

/-!
# A144328: A002260 preceded by a column of 1's: a (1, 1, 2, 3, 4, 5, ...) crescendo triangle by rows.

The programs for A144328, the canonical program `A144328.P13677371458497017703` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144328 has offset 1).

The definition of A144328 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144328.P13677371458497017703

`A002260(n+1)+A010054(n)-1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A144328

/-- `A002260(n+1)+A010054(n)-1` -/
def P13677371458497017703.Spec : Prop :=
  ∀ n, P13677371458497017703.a n = A144328 (n + 1)

theorem P13677371458497017703.correct : P13677371458497017703.Spec := by
  intro n
  simp only [A144328, Nat.add_sub_cancel]

end A144328

/-! ## A144328.P12344292576665353938

`A128227(abs(1-n))`
-/

namespace A144328.P12344292576665353938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 |1 - (n : ℤ)|.toNat

end

end A144328.P12344292576665353938

namespace A144328

/-- `A128227(abs(1-n))` -/
def P12344292576665353938.Spec : Prop :=
  ∀ n, P12344292576665353938.a n = A144328 (n + 1)

end A144328

/-! ## A144328.P13510653677265218715

`log2(A232089(n))+1`
-/

namespace A144328.P13510653677265218715
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A232089 n : ℝ) + 1

end

end A144328.P13510653677265218715

namespace A144328

/-- `log2(A232089(n))+1` -/
def P13510653677265218715.Spec : Prop :=
  ∀ n, P13510653677265218715.a n = (A144328 (n + 1) : ℝ)

end A144328

/-! ## A144328.P12377952631088051719

`floor(sqrt(A143844(n)+1))`
-/

namespace A144328.P12377952631088051719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A143844 n + 1)

end

end A144328.P12377952631088051719

namespace A144328

/-- `floor(sqrt(A143844(n)+1))` -/
def P12377952631088051719.Spec : Prop :=
  ∀ n, P12377952631088051719.a n = A144328 (n + 1)

end A144328

/-! ## A144328.P3962422508316584403

`A002260(char[∑[n]]+n)`
-/

namespace A144328.P3962422508316584403
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A144328.P3962422508316584403

namespace A144328

/-- `A002260(char[∑[n]]+n)` -/
def P3962422508316584403.Spec : Prop :=
  ∀ n, P3962422508316584403.a n = A144328 (n + 1)

end A144328

/-! ## A144328.P10986445503336441332

`A002262(n)+char[∑[n]]`
-/

namespace A144328.P10986445503336441332
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A144328.P10986445503336441332

namespace A144328

/-- `A002262(n)+char[∑[n]]` -/
def P10986445503336441332.Spec : Prop :=
  ∀ n, P10986445503336441332.a n = A144328 (n + 1)

end A144328

/-! ## A144328.P4528031650281031565

`val(lcm(2, A135764(n+1)), 2)`
-/

namespace A144328.P4528031650281031565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.lcm 2 (A135764 (n + 1))) 2

end

end A144328.P4528031650281031565

namespace A144328

/-- `val(lcm(2, A135764(n+1)), 2)` -/
def P4528031650281031565.Spec : Prop :=
  ∀ n, (P4528031650281031565.a n : ℤ) = A144328 (n + 1)

end A144328

/-! ## A144328.P10268005512712055747

`A028310(A002262(n))`
-/

namespace A144328.P10268005512712055747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A002262 n).toNat

end

end A144328.P10268005512712055747

namespace A144328

/-- `A028310(A002262(n))` -/
def P10268005512712055747.Spec : Prop :=
  ∀ n, P10268005512712055747.a n = A144328 (n + 1)

end A144328

/-! ## A144328.P15282489184341183279

`A134478(A112367(n))`
-/

namespace A144328.P15282489184341183279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (A112367 n).toNat

end

end A144328.P15282489184341183279

namespace A144328

/-- `A134478(A112367(n))` -/
def P15282489184341183279.Spec : Prop :=
  ∀ n, P15282489184341183279.a n = A144328 (n + 1)

end A144328

/-! ## A144328.P10043304587824748832

`A101279(A174028(n))`
-/

namespace A144328.P10043304587824748832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (A174028 n).toNat

end

end A144328.P10043304587824748832

namespace A144328

/-- `A101279(A174028(n))` -/
def P10043304587824748832.Spec : Prop :=
  ∀ n, P10043304587824748832.a n = A144328 (n + 1)

end A144328

/-! ## A144328.P7366478644717257091

`A003056(A112367(n)+1)`
-/

namespace A144328.P7366478644717257091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A112367 n + 1).toNat

end

end A144328.P7366478644717257091

namespace A144328

/-- `A003056(A112367(n)+1)` -/
def P7366478644717257091.Spec : Prop :=
  ∀ n, P7366478644717257091.a n = A144328 (n + 1)

end A144328

/-! ## A144328.P2425645123981823327

`A082460(A037126(n+1))`
-/

namespace A144328.P2425645123981823327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082460 (A037126 (n + 1)).toNat

end

end A144328.P2425645123981823327

namespace A144328

/-- `A082460(A037126(n+1))` -/
def P2425645123981823327.Spec : Prop :=
  ∀ n, P2425645123981823327.a n = A144328 (n + 1)

end A144328

/-! ## A144328.P7194014849758220351

`A007318(A112367(n)+1)`
-/

namespace A144328.P7194014849758220351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A112367 n + 1).toNat

end

end A144328.P7194014849758220351

namespace A144328

/-- `A007318(A112367(n)+1)` -/
def P7194014849758220351.Spec : Prop :=
  ∀ n, P7194014849758220351.a n = A144328 (n + 1)

end A144328

/-! ## A144328.P11474095875183505074

`A065033(2*A002262(n))`
-/

namespace A144328.P11474095875183505074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * A002262 n).toNat

end

end A144328.P11474095875183505074

namespace A144328

/-- `A065033(2*A002262(n))` -/
def P11474095875183505074.Spec : Prop :=
  ∀ n, P11474095875183505074.a n = A144328 (n + 1)

end A144328

/-! ## A144328.P13553237973378961988

`A010054(n)+A002262(n)`
-/

namespace A144328.P13553237973378961988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + A002262 n

end

end A144328.P13553237973378961988

namespace A144328

/-- `A010054(n)+A002262(n)` -/
def P13553237973378961988.Spec : Prop :=
  ∀ n, P13553237973378961988.a n = A144328 (n + 1)

end A144328

/-! ## A144328.P15068847687786805967

`A144330(n-A049780(n))`
-/

namespace A144328.P15068847687786805967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144330 ((n : ℤ) - A049780 n).toNat

end

end A144328.P15068847687786805967

namespace A144328

/-- `A144330(n-A049780(n))` -/
def P15068847687786805967.Spec : Prop :=
  ∀ n, P15068847687786805967.a n = A144328 (n + 1)

end A144328

/-! ## A144328.P1963281434590748387

`A386319(n)-A087401(n)`
-/

namespace A144328.P1963281434590748387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386319 n - A087401 n

end

end A144328.P1963281434590748387

namespace A144328

/-- `A386319(n)-A087401(n)` -/
def P1963281434590748387.Spec : Prop :=
  ∀ n, P1963281434590748387.a n = A144328 (n + 1)

end A144328

/-! ## A144328.P5208553495919008886

`A134399(n)/A007318(n)`
-/

namespace A144328.P5208553495919008886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134399 n : ℚ) / (A007318 n : ℚ)

end

end A144328.P5208553495919008886

namespace A144328

/-- `A134399(n)/A007318(n)` -/
def P5208553495919008886.Spec : Prop :=
  ∀ n, P5208553495919008886.a n = (A144328 (n + 1) : ℚ)

end A144328

/-! ## A144328.P11562051412366014329

`∏{d}[A002262(n), A014963(#)]`
-/

namespace A144328.P11562051412366014329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A144328.P11562051412366014329

namespace A144328

/-- `∏{d}[A002262(n), A014963(#)]` -/
def P11562051412366014329.Spec : Prop :=
  ∀ n, P11562051412366014329.a n = A144328 (n + 1)

end A144328

/-! ## A144328.P13224458189172079635

`A065033(A158405(n+1)-1)`
-/

namespace A144328.P13224458189172079635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A158405 (n + 1) - 1).toNat

end

end A144328.P13224458189172079635

namespace A144328

/-- `A065033(A158405(n+1)-1)` -/
def P13224458189172079635.Spec : Prop :=
  ∀ n, P13224458189172079635.a n = A144328 (n + 1)

end A144328

/-!
# A144329: Triangle read by rows, A000012 * A144328.

The programs for A144329, the canonical program `A144329.P4597072197910217241` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144329 has offset 1).

The definition of A144329 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144329.P16217912602854967372

`(C(comp[∑[n]]-n, 2)-n)*A144328(n+1)`
-/

namespace A144329.P16217912602854967372
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A144328 (n + 1)

end

end A144329.P16217912602854967372

namespace A144329

/-- `(C(comp[∑[n]]-n, 2)-n)*A144328(n+1)` -/
def P16217912602854967372.Spec : Prop :=
  ∀ n, P16217912602854967372.a n = A144329 (n + 1)

end A144329

/-! ## A144329.P11770826064954158009

`A342385(A007401(n+1))`
-/

namespace A144329.P11770826064954158009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342385 (A007401 (n + 1)).toNat

end

end A144329.P11770826064954158009

namespace A144329

/-- `A342385(A007401(n+1))` -/
def P11770826064954158009.Spec : Prop :=
  ∀ n, P11770826064954158009.a n = A144329 (n + 1)

end A144329

/-! ## A144329.P18312426168567340703

`A128139(n)-A167407(n)`
-/

namespace A144329.P18312426168567340703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128139 n - A167407 n

end

end A144329.P18312426168567340703

namespace A144329

/-- `A128139(n)-A167407(n)` -/
def P18312426168567340703.Spec : Prop :=
  ∀ n, P18312426168567340703.a n = A144329 (n + 1)

end A144329

/-! ## A144329.P15156975184283487094

`A342385(A003056(n)+n+1)`
-/

namespace A144329.P15156975184283487094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342385 (A003056 n + (n + 1 : ℤ)).toNat

end

end A144329.P15156975184283487094

namespace A144329

/-- `A342385(A003056(n)+n+1)` -/
def P15156975184283487094.Spec : Prop :=
  ∀ n, P15156975184283487094.a n = A144329 (n + 1)

end A144329

/-! ## A144329.P4597072197910217241

`A066182(n+1)-A144216(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A144329

/-- `A066182(n+1)-A144216(n+1)` -/
def P4597072197910217241.Spec : Prop :=
  ∀ n, P4597072197910217241.a n = A144329 (n + 1)

theorem P4597072197910217241.correct : P4597072197910217241.Spec := by
  intro n
  simp only [A144329, Nat.add_sub_cancel]

end A144329

/-! ## A144329.P8326544884391179652

`A141429(n+1)-A143595(n+1)`
-/

namespace A144329.P8326544884391179652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141429 (n + 1) - A143595 (n + 1)

end

end A144329.P8326544884391179652

namespace A144329

/-- `A141429(n+1)-A143595(n+1)` -/
def P8326544884391179652.Spec : Prop :=
  ∀ n, P8326544884391179652.a n = A144329 (n + 1)

end A144329

/-! ## A144329.P979428374659823782

`A004736(n+1)*A144328(n+1)`
-/

namespace A144329.P979428374659823782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A144328 (n + 1)

end

end A144329.P979428374659823782

namespace A144329

/-- `A004736(n+1)*A144328(n+1)` -/
def P979428374659823782.Spec : Prop :=
  ∀ n, P979428374659823782.a n = A144329 (n + 1)

end A144329

/-! ## A144329.P6911572623710218491

`(A025581(n)+1)*A144328(n+1)`
-/

namespace A144329.P6911572623710218491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A144328 (n + 1)

end

end A144329.P6911572623710218491

namespace A144329

/-- `(A025581(n)+1)*A144328(n+1)` -/
def P6911572623710218491.Spec : Prop :=
  ∀ n, P6911572623710218491.a n = A144329 (n + 1)

end A144329

/-! ## A144329.P1858463406705568323

`A158822(n)-C(A004736(n+1), 2)`
-/

namespace A144329.P1858463406705568323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158822 n - (Nat.choose (A004736 (n + 1)).toNat 2 : ℤ)

end

end A144329.P1858463406705568323

namespace A144329

/-- `A158822(n)-C(A004736(n+1), 2)` -/
def P1858463406705568323.Spec : Prop :=
  ∀ n, P1858463406705568323.a n = A144329 (n + 1)

end A144329

/-! ## A144329.P3298348653696239960

`2*A144337(n+1)-A144693(n+1)`
-/

namespace A144329.P3298348653696239960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A144337 (n + 1) - A144693 (n + 1)

end

end A144329.P3298348653696239960

namespace A144329

/-- `2*A144337(n+1)-A144693(n+1)` -/
def P3298348653696239960.Spec : Prop :=
  ∀ n, P3298348653696239960.a n = A144329 (n + 1)

end A144329

/-! ## A144329.P14073484294353313376

`A003991(n+2-A074294(2*n+1))`
-/

namespace A144329.P14073484294353313376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 ((n + 2 : ℤ) - A074294 (2 * n + 1)).toNat

end

end A144329.P14073484294353313376

namespace A144329

/-- `A003991(n+2-A074294(2*n+1))` -/
def P14073484294353313376.Spec : Prop :=
  ∀ n, P14073484294353313376.a n = A144329 (n + 1)

end A144329

/-! ## A144329.P3301014968669815897

`A137948(n)/A165680(n+1)`
-/

namespace A144329.P3301014968669815897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137948 n : ℚ) / (A165680 (n + 1) : ℚ)

end

end A144329.P3301014968669815897

namespace A144329

/-- `A137948(n)/A165680(n+1)` -/
def P3301014968669815897.Spec : Prop :=
  ∀ n, P3301014968669815897.a n = (A144329 (n + 1) : ℚ)

end A144329

/-! ## A144329.P16364539414405926802

`A227355(A179242(n+1))`
-/

namespace A144329.P16364539414405926802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227355 (A179242 (n + 1)).toNat

end

end A144329.P16364539414405926802

namespace A144329

/-- `A227355(A179242(n+1))` -/
def P16364539414405926802.Spec : Prop :=
  ∀ n, P16364539414405926802.a n = A144329 (n + 1)

end A144329

/-! ## A144329.P3276315416407111426

`A004736(n+1)*A320111(A059268(n))`
-/

namespace A144329.P3276315416407111426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A320111 (A059268 n).toNat

end

end A144329.P3276315416407111426

namespace A144329

/-- `A004736(n+1)*A320111(A059268(n))` -/
def P3276315416407111426.Spec : Prop :=
  ∀ n, P3276315416407111426.a n = A144329 (n + 1)

end A144329

/-! ## A144329.P5327633416382774577

`A124758(A048645(n+1))`
-/

namespace A144329.P5327633416382774577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (A048645 (n + 1)).toNat

end

end A144329.P5327633416382774577

namespace A144329

/-- `A124758(A048645(n+1))` -/
def P5327633416382774577.Spec : Prop :=
  ∀ n, P5327633416382774577.a n = A144329 (n + 1)

end A144329

/-!
# A144330: Triangle read by rows, A144328 * A000012 as infinite lower triangular matrices.

The programs for A144330, the canonical program `A144330.P3619810151422796478` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144330 has offset 0).

The definition of A144330 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144330.P11017788008046752884

`round(A271668(n)-sqrt(2*n))`
-/

namespace A144330.P11017788008046752884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A271668 n : ℝ) - Real.sqrt (2 * n : ℝ))

end

end A144330.P11017788008046752884

namespace A144330

/-- `round(A271668(n)-sqrt(2*n))` -/
def P11017788008046752884.Spec : Prop :=
  ∀ n, P11017788008046752884.a n = A144330 n

end A144330

/-! ## A144330.P5575735906933310655

`char[∑[n]]+n-A112367(n)`
-/

namespace A144330.P5575735906933310655
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ((n : ℤ) - A112367 n)

end

end A144330.P5575735906933310655

namespace A144330

/-- `char[∑[n]]+n-A112367(n)` -/
def P5575735906933310655.Spec : Prop :=
  ∀ n, P5575735906933310655.a n = A144330 n

end A144330

/-! ## A144330.P13090862195433130986

`char[∑[n]]-C(A002260(n+1), 2)+n`
-/

namespace A144330.P13090862195433130986
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - (Nat.choose (A002260 (n + 1)).toNat 2 : ℤ) + (n : ℤ)

end

end A144330.P13090862195433130986

namespace A144330

/-- `char[∑[n]]-C(A002260(n+1), 2)+n` -/
def P13090862195433130986.Spec : Prop :=
  ∀ n, P13090862195433130986.a n = A144330 n

end A144330

/-! ## A144330.P12121651121357115526

`n+2-A133263(n-C(∑[char[∑[n]]], 2))`
-/

namespace A144330.P12121651121357115526
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A133263 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2)

end

end A144330.P12121651121357115526

namespace A144330

/-- `n+2-A133263(n-C(∑[char[∑[n]]], 2))` -/
def P12121651121357115526.Spec : Prop :=
  ∀ n, P12121651121357115526.a n = A144330 n

end A144330

/-! ## A144330.P10625480243144057950

`A271668(n)-A123578(n)`
-/

namespace A144330.P10625480243144057950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271668 n - A123578 n

end

end A144330.P10625480243144057950

namespace A144330

/-- `A271668(n)-A123578(n)` -/
def P10625480243144057950.Spec : Prop :=
  ∀ n, P10625480243144057950.a n = A144330 n

end A144330

/-! ## A144330.P3619810151422796478

`A144328(n+1)+A049780(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A144330

/-- `A144328(n+1)+A049780(n)` -/
def P3619810151422796478.Spec : Prop :=
  ∀ n, P3619810151422796478.a n = A144330 n

theorem P3619810151422796478.correct : P3619810151422796478.Spec := by
  intro n
  simp only [A144330]

end A144330

/-! ## A144330.P11063032484810428500

`A193974(n)-A143956(n+1)`
-/

namespace A144330.P11063032484810428500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193974 n - A143956 (n + 1)

end

end A144330.P11063032484810428500

namespace A144330

/-- `A193974(n)-A143956(n+1)` -/
def P11063032484810428500.Spec : Prop :=
  ∀ n, P11063032484810428500.a n = A144330 n

end A144330

/-! ## A144330.P5083849364893642607

`A144334(n+1)/A144328(n+1)`
-/

namespace A144330.P5083849364893642607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144334 (n + 1) : ℚ) / (A144328 (n + 1) : ℚ)

end

end A144330.P5083849364893642607

namespace A144330

/-- `A144334(n+1)/A144328(n+1)` -/
def P5083849364893642607.Spec : Prop :=
  ∀ n, P5083849364893642607.a n = (A144330 n : ℚ)

end A144330

/-! ## A144330.P4737685694307359025

`n-A285732(A000217(A002260(n+1)))`
-/

namespace A144330.P4737685694307359025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A285732 (A000217 (A002260 (n + 1)).toNat).toNat

end

end A144330.P4737685694307359025

namespace A144330

/-- `n-A285732(A000217(A002260(n+1)))` -/
def P4737685694307359025.Spec : Prop :=
  ∀ n, P4737685694307359025.a n = A144330 n

end A144330

/-! ## A144330.P17009401236505732991

`n+2-A255556(2^(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A144330.P17009401236505732991
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A255556 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))).toNat

end

end A144330.P17009401236505732991

namespace A144330

/-- `n+2-A255556(2^(n-C(∑[char[∑[n]]], 2)))` -/
def P17009401236505732991.Spec : Prop :=
  ∀ n, P17009401236505732991.a n = A144330 n

end A144330

/-!
# A144331: Triangle b(n,k) for n >= 0, 0 <= k <= 2n, read by rows. See A144299 for definition and properties.

The programs for A144331, there is no canonical definition to state claims against.
-/

/-! ## A144331.P7381949043136763440

`A099174(A090894(n))`
-/

namespace A144331.P7381949043136763440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099174 (A090894 n).toNat

end

end A144331.P7381949043136763440

/-! ## A144331.P8786611327688044188

`A033999(n)*A066325(A090894(n))`
-/

namespace A144331.P8786611327688044188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A066325 (A090894 n).toNat

end

end A144331.P8786611327688044188

/-! ## A144331.P4636721844464021723

`gcd(A000038(n), A066325(A090894(n)))`
-/

namespace A144331.P4636721844464021723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A066325 (A090894 n).toNat)

end

end A144331.P4636721844464021723

/-! ## A144331.P11836924304743078436

`lcm(A020985(n), A066325(A090894(n)))`
-/

namespace A144331.P11836924304743078436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A066325 (A090894 n).toNat)

end

end A144331.P11836924304743078436

/-! ## A144331.P10605648516918098971

`A066325(A090894(n))/A033999(n+2)`
-/

namespace A144331.P10605648516918098971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066325 (A090894 n).toNat : ℚ) / (A033999 (n + 2) : ℚ)

end

end A144331.P10605648516918098971

/-! ## A144331.P5898616514219030441

`∑{d}[A066325(A090894(n)), A000010(#)]`
-/

namespace A144331.P5898616514219030441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 (A090894 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A144331.P5898616514219030441

/-!
# A144332: Triangle read by rows, A144328 * A007318.

The programs for A144332, there is no canonical definition to state claims against.
-/

/-! ## A144332.P15020429366584512281

`A111660(2*A209153(n+1))`
-/

namespace A144332.P15020429366584512281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (2 * A209153 (n + 1)).toNat

end

end A144332.P15020429366584512281

/-! ## A144332.P2981820319947470231

`A209153(n+1)-A079998(A154231(n))`
-/

namespace A144332.P2981820319947470231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209153 (n + 1) - A079998 (A154231 n).toNat

end

end A144332.P2981820319947470231

/-!
# A144333: Triangle read by rows, A007318 * A144328.

The programs for A144333, the canonical program `A144333.P2564093978440185654` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144333 has offset 1).

The definition of A144333 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144333.P2564093978440185654

`A055248(n)*A144328(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A144333

/-- `A055248(n)*A144328(n+1)` -/
def P2564093978440185654.Spec : Prop :=
  ∀ n, P2564093978440185654.a n = A144333 (n + 1)

theorem P2564093978440185654.correct : P2564093978440185654.Spec := by
  intro n
  simp only [A144333, Nat.add_sub_cancel]

end A144333

/-! ## A144333.P6627560789484706461

`A055248(n)*A128227(abs(1-n))`
-/

namespace A144333.P6627560789484706461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n * A128227 |1 - (n : ℤ)|.toNat

end

end A144333.P6627560789484706461

namespace A144333

/-- `A055248(n)*A128227(abs(1-n))` -/
def P6627560789484706461.Spec : Prop :=
  ∀ n, P6627560789484706461.a n = A144333 (n + 1)

end A144333

/-! ## A144333.P3930262192773823311

`A028310(n-C(∑[char[∑[n]]], 2))*A055248(n)`
-/

namespace A144333.P3930262192773823311
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2) * A055248 n

end

end A144333.P3930262192773823311

namespace A144333

/-- `A028310(n-C(∑[char[∑[n]]], 2))*A055248(n)` -/
def P3930262192773823311.Spec : Prop :=
  ∀ n, P3930262192773823311.a n = A144333 (n + 1)

end A144333

/-! ## A144333.P4364841415278623287

`A028310(A002262(n))*A055248(n)`
-/

namespace A144333.P4364841415278623287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A002262 n).toNat * A055248 n

end

end A144333.P4364841415278623287

namespace A144333

/-- `A028310(A002262(n))*A055248(n)` -/
def P4364841415278623287.Spec : Prop :=
  ∀ n, P4364841415278623287.a n = A144333 (n + 1)

end A144333

/-! ## A144333.P9916707328947198656

`A055248(n)*A134478(A112367(n))`
-/

namespace A144333.P9916707328947198656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n * A134478 (A112367 n).toNat

end

end A144333.P9916707328947198656

namespace A144333

/-- `A055248(n)*A134478(A112367(n))` -/
def P9916707328947198656.Spec : Prop :=
  ∀ n, P9916707328947198656.a n = A144333 (n + 1)

end A144333

/-! ## A144333.P4685328599816137345

`∏{e}[A059268(n), #]*A055248(n)`
-/

namespace A144333.P4685328599816137345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) * A055248 n

end

end A144333.P4685328599816137345

namespace A144333

/-- `∏{e}[A059268(n), #]*A055248(n)` -/
def P4685328599816137345.Spec : Prop :=
  ∀ n, P4685328599816137345.a n = A144333 (n + 1)

end A144333

/-! ## A144333.P16375784430175343168

`A000005(A232089(n))*A055248(n)`
-/

namespace A144333.P16375784430175343168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A232089 n).toNat * A055248 n

end

end A144333.P16375784430175343168

namespace A144333

/-- `A000005(A232089(n))*A055248(n)` -/
def P16375784430175343168.Spec : Prop :=
  ∀ n, P16375784430175343168.a n = A144333 (n + 1)

end A144333

/-! ## A144333.P17902014727986115961

`A005361(A059268(n))*A055248(n)`
-/

namespace A144333.P17902014727986115961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A059268 n).toNat * A055248 n

end

end A144333.P17902014727986115961

namespace A144333

/-- `A005361(A059268(n))*A055248(n)` -/
def P17902014727986115961.Spec : Prop :=
  ∀ n, P17902014727986115961.a n = A144333 (n + 1)

end A144333

/-! ## A144333.P15665054280971986829

`A001222(2*A232089(n))*A055248(n)`
-/

namespace A144333.P15665054280971986829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A232089 n).toNat * A055248 n

end

end A144333.P15665054280971986829

namespace A144333

/-- `A001222(2*A232089(n))*A055248(n)` -/
def P15665054280971986829.Spec : Prop :=
  ∀ n, P15665054280971986829.a n = A144333 (n + 1)

end A144333

/-!
# A144334: Triangle read by rows, A144328^2.

The programs for A144334, the canonical program `A144334.P8719362573491474286` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144334 has offset 1).

The definition of A144334 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144334.P8719362573491474286

`A144328(n+1)*A144330(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A144334

/-- `A144328(n+1)*A144330(n)` -/
def P8719362573491474286.Spec : Prop :=
  ∀ n, P8719362573491474286.a n = A144334 (n + 1)

theorem P8719362573491474286.correct : P8719362573491474286.Spec := by
  intro n
  simp only [A144334, Nat.add_sub_cancel]

end A144334

/-! ## A144334.P5332378752839164748

`round(A271668(n)-sqrt(2*n))*A144328(n+1)`
-/

namespace A144334.P5332378752839164748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A271668 n : ℝ) - Real.sqrt (2 * n : ℝ)) * A144328 (n + 1)

end

end A144334.P5332378752839164748

namespace A144334

/-- `round(A271668(n)-sqrt(2*n))*A144328(n+1)` -/
def P5332378752839164748.Spec : Prop :=
  ∀ n, P5332378752839164748.a n = A144334 (n + 1)

end A144334

/-! ## A144334.P8713343525617821031

`(A144328(n+1)+A049780(n))*A144328(n+1)`
-/

namespace A144334.P8713343525617821031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 1) + A049780 n) * A144328 (n + 1)

end

end A144334.P8713343525617821031

namespace A144334

/-- `(A144328(n+1)+A049780(n))*A144328(n+1)` -/
def P8713343525617821031.Spec : Prop :=
  ∀ n, P8713343525617821031.a n = A144334 (n + 1)

end A144334

/-!
# A144335: Row sums of triangle A144334, binomial transform of [1, 2, 6, 7, 3, 0, 0, 0, ...].

The programs for A144335, the canonical program `A144335.P6981775931438687201` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144335 has offset 1).

The definition of A144335 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144335.P6981775931438687201

`1-5/12*(n+1)+3/8*(n+1)²-1/12*(n+1)^3+1/8*(n+1)^4`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A144335

/-- `1-5/12*(n+1)+3/8*(n+1)²-1/12*(n+1)^3+1/8*(n+1)^4` -/
def P6981775931438687201.Spec : Prop :=
  ∀ n, P6981775931438687201.a n = (A144335 (n + 1) : ℚ)

end A144335

/-! ## A144335.P14172516049355134340

`abs(n-∑[A064808(n)])`
-/

namespace A144335.P14172516049355134340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064808 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A144335.P14172516049355134340

namespace A144335

/-- `abs(n-∑[A064808(n)])` -/
def P14172516049355134340.Spec : Prop :=
  ∀ n, P14172516049355134340.a n = A144335 (n + 1)

end A144335

/-! ## A144335.P14110069673085100676

`∑[(∑[n]+1)*A028310(n)]`
-/

namespace A144335.P14110069673085100676
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ) * A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144335.P14110069673085100676

namespace A144335

/-- `∑[(∑[n]+1)*A028310(n)]` -/
def P14110069673085100676.Spec : Prop :=
  ∀ n, P14110069673085100676.a n = A144335 (n + 1)

end A144335

/-! ## A144335.P9286339547823416589

`abs(∑[∑[A000326(n)+1]]-n)`
-/

namespace A144335.P9286339547823416589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A144335.P9286339547823416589

namespace A144335

/-- `abs(∑[∑[A000326(n)+1]]-n)` -/
def P9286339547823416589.Spec : Prop :=
  ∀ n, P9286339547823416589.a n = A144335 (n + 1)

end A144335

/-! ## A144335.P15677987156889329145

`abs(∑[∑[A104249(n)-n]]-n)`
-/

namespace A144335.P15677987156889329145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104249 n - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A144335.P15677987156889329145

namespace A144335

/-- `abs(∑[∑[A104249(n)-n]]-n)` -/
def P15677987156889329145.Spec : Prop :=
  ∀ n, P15677987156889329145.a n = A144335 (n + 1)

end A144335

/-! ## A144335.P2368327096562080786

`∑[A028310(n)+A002411(n)]`
-/

namespace A144335.P2368327096562080786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + A002411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144335.P2368327096562080786

namespace A144335

/-- `∑[A028310(n)+A002411(n)]` -/
def P2368327096562080786.Spec : Prop :=
  ∀ n, P2368327096562080786.a n = A144335 (n + 1)

end A144335

/-! ## A144335.P1906193507848550592

`(A056520(n)+A000124(n)²)/2`
-/

namespace A144335.P1906193507848550592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056520 n + A000124 n ^ 2 : ℚ) / 2

end

end A144335.P1906193507848550592

namespace A144335

/-- `(A056520(n)+A000124(n)²)/2` -/
def P1906193507848550592.Spec : Prop :=
  ∀ n, P1906193507848550592.a n = (A144335 (n + 1) : ℚ)

end A144335

/-! ## A144335.P12985496079261094725

`∑[A000007(n)+n*A000124(n)]`
-/

namespace A144335.P12985496079261094725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ) * A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144335.P12985496079261094725

namespace A144335

/-- `∑[A000007(n)+n*A000124(n)]` -/
def P12985496079261094725.Spec : Prop :=
  ∀ n, P12985496079261094725.a n = A144335 (n + 1)

end A144335

/-! ## A144335.P3637151239791100775

`Δ[∑[A090809(n)]+n]`
-/

namespace A144335.P3637151239791100775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090809 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144335.P3637151239791100775

namespace A144335

/-- `Δ[∑[A090809(n)]+n]` -/
def P3637151239791100775.Spec : Prop :=
  ∀ n, P3637151239791100775.a n = A144335 (n + 1)

end A144335

/-! ## A144335.P7055684253794391294

`∑[A000124(n)*A065033(2*n)]`
-/

namespace A144335.P7055684253794391294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n * A065033 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144335.P7055684253794391294

namespace A144335

/-- `∑[A000124(n)*A065033(2*n)]` -/
def P7055684253794391294.Spec : Prop :=
  ∀ n, P7055684253794391294.a n = A144335 (n + 1)

end A144335

/-! ## A144335.P3837683375021421662

`∑[A000124(n)*A123108(2*n)]`
-/

namespace A144335.P3837683375021421662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n * A123108 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144335.P3837683375021421662

namespace A144335

/-- `∑[A000124(n)*A123108(2*n)]` -/
def P3837683375021421662.Spec : Prop :=
  ∀ n, P3837683375021421662.a n = A144335 (n + 1)

end A144335

/-! ## A144335.P6123182861865547467

`∑[A028310(∑[n])+A006003(n)]`
-/

namespace A144335.P6123182861865547467
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f2 j) + A006003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144335.P6123182861865547467

namespace A144335

/-- `∑[A028310(∑[n])+A006003(n)]` -/
def P6123182861865547467.Spec : Prop :=
  ∀ n, P6123182861865547467.a n = A144335 (n + 1)

end A144335

/-! ## A144335.P10843469767464926228

`∑[A000124(n)*A193739(∑[n])]`
-/

namespace A144335.P10843469767464926228
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n * A193739 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144335.P10843469767464926228

namespace A144335

/-- `∑[A000124(n)*A193739(∑[n])]` -/
def P10843469767464926228.Spec : Prop :=
  ∀ n, P10843469767464926228.a n = A144335 (n + 1)

end A144335

/-! ## A144335.P1665737213304647107

`A125811(∑[n+1]+1)`
-/

namespace A144335.P1665737213304647107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125811 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A144335.P1665737213304647107

namespace A144335

/-- `A125811(∑[n+1]+1)` -/
def P1665737213304647107.Spec : Prop :=
  ∀ n, P1665737213304647107.a n = A144335 (n + 1)

end A144335

/-!
# A144336: Triangle read by rows, 2*A144328 - A007318^(-1).

The programs for A144336, the canonical program `A144336.P3305188520501149043` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144336 has offset 1).

The definition of A144336 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144336.P3305188520501149043

`2*A144328(n+1)-A130595(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A144336

/-- `2*A144328(n+1)-A130595(n)` -/
def P3305188520501149043.Spec : Prop :=
  ∀ n, P3305188520501149043.a n = A144336 (n + 1)

theorem P3305188520501149043.correct : P3305188520501149043.Spec := by
  intro n
  simp only [A144336, Nat.add_sub_cancel]

end A144336

/-! ## A144336.P4913119929958755588

`A140575(n)+A004277(A002262(n))`
-/

namespace A144336.P4913119929958755588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140575 n + A004277 (A002262 n).toNat

end

end A144336.P4913119929958755588

namespace A144336

/-- `A140575(n)+A004277(A002262(n))` -/
def P4913119929958755588.Spec : Prop :=
  ∀ n, P4913119929958755588.a n = A144336 (n + 1)

end A144336

/-! ## A144336.P17198846384343822901

`A140575(n)+A004275(A002260(n+1))`
-/

namespace A144336.P17198846384343822901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140575 n + A004275 (A002260 (n + 1)).toNat

end

end A144336.P17198846384343822901

namespace A144336

/-- `A140575(n)+A004275(A002260(n+1))` -/
def P17198846384343822901.Spec : Prop :=
  ∀ n, P17198846384343822901.a n = A144336 (n + 1)

end A144336

/-! ## A144336.P8133571428561742234

`A004277(A144328(n+1))-A130595(n)`
-/

namespace A144336.P8133571428561742234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A144328 (n + 1)).toNat - A130595 n

end

end A144336.P8133571428561742234

namespace A144336

/-- `A004277(A144328(n+1))-A130595(n)` -/
def P8133571428561742234.Spec : Prop :=
  ∀ n, P8133571428561742234.a n = A144336 (n + 1)

end A144336

/-! ## A144336.P17533513915608369235

`A233583(A158405(n+1))-A130595(n)`
-/

namespace A144336.P17533513915608369235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A158405 (n + 1)).toNat - A130595 n

end

end A144336.P17533513915608369235

namespace A144336

/-- `A233583(A158405(n+1))-A130595(n)` -/
def P17533513915608369235.Spec : Prop :=
  ∀ n, P17533513915608369235.a n = A144336 (n + 1)

end A144336

/-! ## A144336.P13591243036543164959

`A064680(A008574(A002262(n)))-A130595(n)`
-/

namespace A144336.P13591243036543164959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A008574 (A002262 n).toNat).toNat - A130595 n

end

end A144336.P13591243036543164959

namespace A144336

/-- `A064680(A008574(A002262(n)))-A130595(n)` -/
def P13591243036543164959.Spec : Prop :=
  ∀ n, P13591243036543164959.a n = A144336 (n + 1)

end A144336

/-! ## A144336.P16454813675140626841

`A002326(A232089(n))-A130595(n)`
-/

namespace A144336.P16454813675140626841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (A232089 n).toNat - A130595 n

end

end A144336.P16454813675140626841

namespace A144336

/-- `A002326(A232089(n))-A130595(n)` -/
def P16454813675140626841.Spec : Prop :=
  ∀ n, P16454813675140626841.a n = A144336 (n + 1)

end A144336

/-! ## A144336.P12431253730254054811

`2*A320111(A059268(n))-A130595(n)`
-/

namespace A144336.P12431253730254054811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A320111 (A059268 n).toNat - A130595 n

end

end A144336.P12431253730254054811

namespace A144336

/-- `2*A320111(A059268(n))-A130595(n)` -/
def P12431253730254054811.Spec : Prop :=
  ∀ n, P12431253730254054811.a n = A144336 (n + 1)

end A144336

/-!
# A144337: Triangle read by rows, A000012 * (2*A144328 - A000012).

The programs for A144337, the canonical program `A144337.P16245323222226020514` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144337 has offset 1).

The definition of A144337 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144337.P16245323222226020514

`A004273(A144328(n+1))*A004736(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A144337

/-- `A004273(A144328(n+1))*A004736(n+1)` -/
def P16245323222226020514.Spec : Prop :=
  ∀ n, P16245323222226020514.a n = A144337 (n + 1)

theorem P16245323222226020514.correct : P16245323222226020514.Spec := by
  intro n
  simp only [A144337, Nat.add_sub_cancel]

end A144337

/-! ## A144337.P9734504640812187485

`A078644(A153279(n))`
-/

namespace A144337.P9734504640812187485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078644 (A153279 n).toNat

end

end A144337.P9734504640812187485

namespace A144337

/-- `A078644(A153279(n))` -/
def P9734504640812187485.Spec : Prop :=
  ∀ n, P9734504640812187485.a n = A144337 (n + 1)

end A144337

/-! ## A144337.P12284091961877180311

`∑{d}[A153279(n), A100063(#)]`
-/

namespace A144337.P12284091961877180311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A100063 d

end

end A144337.P12284091961877180311

namespace A144337

/-- `∑{d}[A153279(n), A100063(#)]` -/
def P12284091961877180311.Spec : Prop :=
  ∀ n, P12284091961877180311.a n = A144337 (n + 1)

end A144337

/-! ## A144337.P8705460067585597158

`A145390(A175840(n))`
-/

namespace A144337.P8705460067585597158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145390 (A175840 n).toNat

end

end A144337.P8705460067585597158

namespace A144337

/-- `A145390(A175840(n))` -/
def P8705460067585597158.Spec : Prop :=
  ∀ n, P8705460067585597158.a n = A144337 (n + 1)

end A144337

/-! ## A144337.P14721007342680563432

`A004736(n+1)*A091860(A059268(n))`
-/

namespace A144337.P14721007342680563432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A091860 (A059268 n).toNat

end

end A144337.P14721007342680563432

namespace A144337

/-- `A004736(n+1)*A091860(A059268(n))` -/
def P14721007342680563432.Spec : Prop :=
  ∀ n, P14721007342680563432.a n = A144337 (n + 1)

end A144337

/-!
# A144338: Squarefree numbers > 1.

The programs for A144338, the canonical program `A144338.P10879318598833394857` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144338 has offset 1).

The definition of A144338 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144338.P13260119496805268806

`A005117(n+2)`
-/

namespace A144338.P13260119496805268806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 2)

end

end A144338.P13260119496805268806

namespace A144338

/-- `A005117(n+2)` -/
def P13260119496805268806.Spec : Prop :=
  ∀ n, P13260119496805268806.a n = A144338 (n + 1)

end A144338

/-! ## A144338.P10879318598833394857

`eq[0, A087049(n)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A144338

/-- `eq[0, A087049(n)]` -/
def P10879318598833394857.Spec : Prop :=
  ∀ n, (P10879318598833394857.a n : ℤ) = A144338 (n + 1)

theorem P10879318598833394857.correct : P10879318598833394857.Spec := by
  intro n
  simp only [A144338, Nat.add_sub_cancel]

end A144338

/-! ## A144338.P4519341066493854106

`record[A003967(n+2)]`
-/

namespace A144338.P4519341066493854106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144338.P4519341066493854106

namespace A144338

/-- `record[A003967(n+2)]` -/
def P4519341066493854106.Spec : Prop :=
  ∀ n, P4519341066493854106.a n = A144338 (n + 1)

end A144338

/-! ## A144338.P3265922018198820616

`record[A007913(n+2)]`
-/

namespace A144338.P3265922018198820616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144338.P3265922018198820616

namespace A144338

/-- `record[A007913(n+2)]` -/
def P3265922018198820616.Spec : Prop :=
  ∀ n, P3265922018198820616.a n = A144338 (n + 1)

end A144338

/-! ## A144338.P1375253884135822774

`record[A007947(n+2)]`
-/

namespace A144338.P1375253884135822774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144338.P1375253884135822774

namespace A144338

/-- `record[A007947(n+2)]` -/
def P1375253884135822774.Spec : Prop :=
  ∀ n, P1375253884135822774.a n = A144338 (n + 1)

end A144338

/-! ## A144338.P8728698417350804457

`record[A055231(n+2)]`
-/

namespace A144338.P8728698417350804457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144338.P8728698417350804457

namespace A144338

/-- `record[A055231(n+2)]` -/
def P8728698417350804457.Spec : Prop :=
  ∀ n, P8728698417350804457.a n = A144338 (n + 1)

end A144338

/-! ## A144338.P1615840675031934027

`record[A055653(n+2)]`
-/

namespace A144338.P1615840675031934027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055653 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144338.P1615840675031934027

namespace A144338

/-- `record[A055653(n+2)]` -/
def P1615840675031934027.Spec : Prop :=
  ∀ n, P1615840675031934027.a n = A144338 (n + 1)

end A144338

/-! ## A144338.P11061574170050840249

`A007913(A033198(n+1))`
-/

namespace A144338.P11061574170050840249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A033198 (n + 1)).toNat

end

end A144338.P11061574170050840249

namespace A144338

/-- `A007913(A033198(n+1))` -/
def P11061574170050840249.Spec : Prop :=
  ∀ n, P11061574170050840249.a n = A144338 (n + 1)

end A144338

/-! ## A144338.P2929456594807345416

`eq[A004530(n), A105570(n)]`
-/

namespace A144338.P2929456594807345416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004530 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144338.P2929456594807345416

namespace A144338

/-- `eq[A004530(n), A105570(n)]` -/
def P2929456594807345416.Spec : Prop :=
  ∀ n, (P2929456594807345416.a n : ℤ) = A144338 (n + 1)

end A144338

/-! ## A144338.P8809625759879653558

`eq[A105570(n), A204843(n)]`
-/

namespace A144338.P8809625759879653558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204843 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144338.P8809625759879653558

namespace A144338

/-- `eq[A105570(n), A204843(n)]` -/
def P8809625759879653558.Spec : Prop :=
  ∀ n, (P8809625759879653558.a n : ℤ) = A144338 (n + 1)

end A144338

/-! ## A144338.P5692600923305365499

`A113850(n+1)/A113849(n+1)`
-/

namespace A144338.P5692600923305365499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113850 (n + 1) : ℚ) / (A113849 (n + 1) : ℚ)

end

end A144338.P5692600923305365499

namespace A144338

/-- `A113850(n+1)/A113849(n+1)` -/
def P5692600923305365499.Spec : Prop :=
  ∀ n, P5692600923305365499.a n = (A144338 (n + 1) : ℚ)

end A144338

/-! ## A144338.P11159071705185117749

`A113851(n+1)/A113850(n+1)`
-/

namespace A144338.P11159071705185117749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113851 (n + 1) : ℚ) / (A113850 (n + 1) : ℚ)

end

end A144338.P11159071705185117749

namespace A144338

/-- `A113851(n+1)/A113850(n+1)` -/
def P11159071705185117749.Spec : Prop :=
  ∀ n, P11159071705185117749.a n = (A144338 (n + 1) : ℚ)

end A144338

/-! ## A144338.P9034689422417253994

`A113852(n+1)/A113851(n+1)`
-/

namespace A144338.P9034689422417253994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113852 (n + 1) : ℚ) / (A113851 (n + 1) : ℚ)

end

end A144338.P9034689422417253994

namespace A144338

/-- `A113852(n+1)/A113851(n+1)` -/
def P9034689422417253994.Spec : Prop :=
  ∀ n, P9034689422417253994.a n = (A144338 (n + 1) : ℚ)

end A144338

/-! ## A144338.P3234977657127461040

`sqrt(A062503(n+2))`
-/

namespace A144338.P3234977657127461040
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062503 (n + 2) : ℝ)

end

end A144338.P3234977657127461040

namespace A144338

/-- `sqrt(A062503(n+2))` -/
def P3234977657127461040.Spec : Prop :=
  ∀ n, P3234977657127461040.a n = (A144338 (n + 1) : ℝ)

end A144338

/-! ## A144338.P13916890113046326398

`Δ[A173143(n+1)]`
-/

namespace A144338.P13916890113046326398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144338.P13916890113046326398

namespace A144338

/-- `Δ[A173143(n+1)]` -/
def P13916890113046326398.Spec : Prop :=
  ∀ n, P13916890113046326398.a n = A144338 (n + 1)

end A144338

/-! ## A144338.P11263156418647169431

`filter[A064594(n+2), A008966(#)]`
-/

namespace A144338.P11263156418647169431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A144338.P11263156418647169431

namespace A144338

/-- `filter[A064594(n+2), A008966(#)]` -/
def P11263156418647169431.Spec : Prop :=
  ∀ n, P11263156418647169431.a n = A144338 (n + 1)

end A144338

/-! ## A144338.P3612271642132312696

`filter[A064594(n+2), A166486(#)]`
-/

namespace A144338.P3612271642132312696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A144338.P3612271642132312696

namespace A144338

/-- `filter[A064594(n+2), A166486(#)]` -/
def P3612271642132312696.Spec : Prop :=
  ∀ n, P3612271642132312696.a n = A144338 (n + 1)

end A144338

/-! ## A144338.P404756382155026506

`record[A344705(record[A344705(n+2)])]`
-/

namespace A144338.P404756382155026506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344705 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344705 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144338.P404756382155026506

namespace A144338

/-- `record[A344705(record[A344705(n+2)])]` -/
def P404756382155026506.Spec : Prop :=
  ∀ n, P404756382155026506.a n = A144338 (n + 1)

end A144338

/-! ## A144338.P4982195673941694559

`filter[A167207(n+1), A049240(#)]`
-/

namespace A144338.P4982195673941694559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A144338.P4982195673941694559

namespace A144338

/-- `filter[A167207(n+1), A049240(#)]` -/
def P4982195673941694559.Spec : Prop :=
  ∀ n, P4982195673941694559.a n = A144338 (n + 1)

end A144338

/-! ## A144338.P6074790961406577973

`filter[A064594(n+2), A168181(#)]`
-/

namespace A144338.P6074790961406577973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A144338.P6074790961406577973

namespace A144338

/-- `filter[A064594(n+2), A168181(#)]` -/
def P6074790961406577973.Spec : Prop :=
  ∀ n, P6074790961406577973.a n = A144338 (n + 1)

end A144338

/-!
# A144339: Second column (m=2) of triangle S2hat(-4) = A144285.

The programs for A144339, there is no canonical definition to state claims against.
-/

/-! ## A144339.P11110025473246833000

`A144285(∑[n+1]+2)`
-/

namespace A144339.P11110025473246833000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144285 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A144339.P11110025473246833000

/-! ## A144339.P3565979908181441339

`record[A144285(A080036(n))]`
-/

namespace A144339.P3565979908181441339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144285 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144339.P3565979908181441339

/-! ## A144339.P7342399852599991008

`record[A144285(A022856(n+1))]`
-/

namespace A144339.P7342399852599991008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144285 (A022856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144339.P7342399852599991008

/-! ## A144339.P8698876449872182141

`record[A144285(A089071(n+1))]`
-/

namespace A144339.P8698876449872182141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144285 (A089071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144339.P8698876449872182141

/-! ## A144339.P4333462041316873371

`record[A144285(record[A066181(n+1)])]`
-/

namespace A144339.P4333462041316873371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066181 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144285 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144339.P4333462041316873371

/-!
# A144340: Third column (m=3) of triangle S2hat(-4) = A144285.

The programs for A144340, there is no canonical definition to state claims against.
-/

/-! ## A144340.P12718083598412997650

`A144285(∑[n+2]+4)`
-/

namespace A144340.P12718083598412997650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144285 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A144340.P12718083598412997650

/-! ## A144340.P14286122039079705341

`record[A144285(n+1)*A238414(n+1)]`
-/

namespace A144340.P14286122039079705341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144285 (n + 1) * A238414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144340.P14286122039079705341

/-! ## A144340.P3100601819556091472

`record[A144285(n+1)*A319368(n+1)]`
-/

namespace A144340.P3100601819556091472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144285 (n + 1) * A319368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144340.P3100601819556091472

/-! ## A144340.P8092612391588283323

`lcm(∏{e}[n+1, #^#], A144285(A167614(n+1)))`
-/

namespace A144340.P8092612391588283323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ Nat.factorization (f1 n) p : ℕ) : ℤ) (A144285 (A167614 (n + 1)).toNat)

end

end A144340.P8092612391588283323

/-!
# A144341: Partition number array, called M32hat(-5)= 'M32(-5)/M3'= 'A144268/A036040', related to A011801(n,m)= |S2(-4;n,m)| (generalized Stirling triangle).

The programs for A144341, there is no canonical definition to state claims against.
-/

/-! ## A144341.P689381049434796614

`A144268(n+1)/A036040(n+1)`
-/

namespace A144341.P689381049434796614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144268 (n + 1) : ℚ) / (A036040 (n + 1) : ℚ)

end

end A144341.P689381049434796614

/-! ## A144341.P16173893192918116501

`A144268(n+1)/A124794(A185974(n+1))`
-/

namespace A144341.P16173893192918116501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144268 (n + 1) : ℚ) / (A124794 (A185974 (n + 1)).toNat : ℚ)

end

end A144341.P16173893192918116501

/-! ## A144341.P14062189522459141294

`A107106(n+1)/A036039(n+1)*A144268(n+1)`
-/

namespace A144341.P14062189522459141294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107106 (n + 1) : ℚ) / (A036039 (n + 1) : ℚ) * (A144268 (n + 1) : ℚ)

end

end A144341.P14062189522459141294

/-! ## A144341.P2148439851735986709

`A134133(n+1)/A130561(n+1)*A144268(n+1)`
-/

namespace A144341.P2148439851735986709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134133 (n + 1) : ℚ) / (A130561 (n + 1) : ℚ) * (A144268 (n + 1) : ℚ)

end

end A144341.P2148439851735986709

/-! ## A144341.P6935505468299449356

`A144268(n+1)/A143173(n+1)*A144279(n+1)`
-/

namespace A144341.P6935505468299449356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144268 (n + 1) : ℚ) / (A143173 (n + 1) : ℚ) * (A144279 (n + 1) : ℚ)

end

end A144341.P6935505468299449356

/-!
# A144342: Lower triangular array called S2hat(-5) related to partition number array A144341.

The programs for A144342, there is no canonical definition to state claims against.
-/

/-! ## A144342.P12772971055304130117

`A144341(∑[A241601(n)])`
-/

namespace A144342.P12772971055304130117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144341 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A144342.P12772971055304130117

/-! ## A144342.P9898930926232191557

`A144341(∑[A249909(n)])`
-/

namespace A144342.P9898930926232191557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144341 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A144342.P9898930926232191557

/-! ## A144342.P10609806247039238204

`A144341(A024648(n+1))`
-/

namespace A144342.P10609806247039238204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144341 (A024648 (n + 1)).toNat

end

end A144342.P10609806247039238204

/-!
# A144344: Second column (m=2) of triangle S2hat(-5) = A144342.

The programs for A144344, there is no canonical definition to state claims against.
-/

/-! ## A144344.P9043127494378369914

`A144342(∑[n+1]+2)`
-/

namespace A144344.P9043127494378369914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144342 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A144344.P9043127494378369914

/-! ## A144344.P15772524113544737781

`record[gcd(Δ[round(sqrt(2*n))²], A144342(n+1))]`
-/

namespace A144344.P15772524113544737781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f2 (n + 1) - f2 n) (A144342 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144344.P15772524113544737781

/-! ## A144344.P4141344658756327989

`record[A144342(A080036(n))]`
-/

namespace A144344.P4141344658756327989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144342 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144344.P4141344658756327989

/-! ## A144344.P29200330050553815

`record[A144342(A022856(n+1))]`
-/

namespace A144344.P29200330050553815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144342 (A022856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144344.P29200330050553815

/-! ## A144344.P8054437470098314480

`record[A144342(A089071(n+1))]`
-/

namespace A144344.P8054437470098314480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144342 (A089071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144344.P8054437470098314480

/-!
# A144345: Second column (m=2) of triangle S2p(-2) = A004747.

The programs for A144345, there is no canonical definition to state claims against.
-/

/-! ## A144345.P467485078316442207

`∏[3*n+2]-∏[3*n+1]`
-/

namespace A144345.P467485078316442207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A144345.P467485078316442207

/-! ## A144345.P17982574507512794877

`A004747(∑[n+1]+2)`
-/

namespace A144345.P17982574507512794877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004747 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A144345.P17982574507512794877

/-! ## A144345.P12441342545691211980

`record[gcd(A004747(n+2), A122848(n))]`
-/

namespace A144345.P12441342545691211980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004747 (n + 2)) (A122848 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144345.P12441342545691211980

/-! ## A144345.P1535940392010055062

`record[A136216(n+1)-A136214(n+1)]`
-/

namespace A144345.P1535940392010055062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136216 (n + 1) - A136214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144345.P1535940392010055062

/-! ## A144345.P17651221467743133584

`record[A136216(n+1)-A136215(n+1)]`
-/

namespace A144345.P17651221467743133584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136216 (n + 1) - A136215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144345.P17651221467743133584

/-!
# A144346: Third column (m=3) of triangle S2p(-2) = A004747.

The programs for A144346, there is no canonical definition to state claims against.
-/

/-! ## A144346.P5636172919480613293

`A035469(∑[n+1]+2)`
-/

namespace A144346.P5636172919480613293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035469 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A144346.P5636172919480613293

/-! ## A144346.P3693206549328282558

`A004747(∑[n+2]+4)`
-/

namespace A144346.P3693206549328282558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004747 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A144346.P3693206549328282558

/-! ## A144346.P6220666054335524335

`record[A035469(A080036(n))]`
-/

namespace A144346.P6220666054335524335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035469 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144346.P6220666054335524335

/-! ## A144346.P15123049360369287056

`record[and(A035469(n+1), A054654(n))]`
-/

namespace A144346.P15123049360369287056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035469 (n + 1)) (A054654 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144346.P15123049360369287056

/-! ## A144346.P6637179302323480351

`A034000(n+2)-A007559(n+2)`
-/

namespace A144346.P6637179302323480351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034000 (n + 2) - A007559 (n + 2)

end

end A144346.P6637179302323480351

/-!
# A144347: Second column (m=2) of triangle S2p(-4) = A011801.

The programs for A144347, there is no canonical definition to state claims against.
-/

/-! ## A144347.P5997327775483625681

`A011801(∑[n+1]+2)`
-/

namespace A144347.P5997327775483625681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011801 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A144347.P5997327775483625681

/-! ## A144347.P2819274947333017084

`record[A011801(A080036(n))]`
-/

namespace A144347.P2819274947333017084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011801 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144347.P2819274947333017084

/-! ## A144347.P4786667422985601537

`∏[A016897(n)]-∏[A016885(n)]`
-/

namespace A144347.P4786667422985601537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - ∏ j ∈ Finset.range (n + 1), f2 j

end

end A144347.P4786667422985601537

/-! ## A144347.P3388161752220799143

`A008546(n+1)-A047056(n+1)`
-/

namespace A144347.P3388161752220799143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008546 (n + 1) - A047056 (n + 1)

end

end A144347.P3388161752220799143

/-! ## A144347.P7644707087009842611

`record[and(A011801(n+1), A295343(n))]`
-/

namespace A144347.P7644707087009842611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011801 (n + 1)) (A295343 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144347.P7644707087009842611

/-!
# A144348: Third column (m=3) of triangle S2p(-4) = A011801.

The programs for A144348, there is no canonical definition to state claims against.
-/

/-! ## A144348.P7966272452234630238

`A011801(∑[n+2]+4)`
-/

namespace A144348.P7966272452234630238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011801 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A144348.P7966272452234630238

/-! ## A144348.P10228067308375486263

`lcm(A011801(A167614(n+1)), A020915(n))`
-/

namespace A144348.P10228067308375486263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011801 (A167614 (n + 1)).toNat) (A020915 n)

end

end A144348.P10228067308375486263

/-! ## A144348.P14121830000380426231

`A070204(n+1)+A011801(A167614(n+1))`
-/

namespace A144348.P14121830000380426231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070204 (n + 1) + A011801 (A167614 (n + 1)).toNat

end

end A144348.P14121830000380426231

/-! ## A144348.P17808012204489674476

`A011801(A167614(n+1))*A260897(n+1)`
-/

namespace A144348.P17808012204489674476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011801 (A167614 (n + 1)).toNat * A260897 (n + 1)

end

end A144348.P17808012204489674476

/-! ## A144348.P17499412174229581807

`A011801(A167614(n+1))%A208257(n+1)`
-/

namespace A144348.P17499412174229581807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011801 (A167614 (n + 1)).toNat) (A208257 (n + 1))

end

end A144348.P17499412174229581807

/-!
# A144349: Second column (m=2) of triangle S2p(-5) = A013988.

The programs for A144349, there is no canonical definition to state claims against.
-/

/-! ## A144349.P10317387178436124604

`A013988(∑[n+1]+2)`
-/

namespace A144349.P10317387178436124604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013988 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A144349.P10317387178436124604

/-! ## A144349.P11666412402046034438

`A049308(n)+(6*n+5)*a(n-1)` with `a(0)=1`
-/

namespace A144349.P11666412402046034438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A049308 n + (6 * n + 5 : ℤ) * a (n - 1)

end

end A144349.P11666412402046034438

/-! ## A144349.P16951417433185680716

`∏[6*n+5]/(6*n+5)+(A016897(n)+n)*a(n-1)` with `a(0)=1`
-/

namespace A144349.P16951417433185680716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 5

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (6 * n + 5 : ℚ) + (A016897 n + (n : ℤ) : ℚ) * a (n - 1)

end

end A144349.P16951417433185680716

/-! ## A144349.P12361612211222608698

`record[A013988(∑[A275437(n)])]`
-/

namespace A144349.P12361612211222608698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275437 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013988 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144349.P12361612211222608698

/-! ## A144349.P2630436764016937898

`record[A013988(A123110(n)+n)]`
-/

namespace A144349.P2630436764016937898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013988 (A123110 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144349.P2630436764016937898

/-!
# A144350: Third column (m=3) of triangle S2p(-5) = A013988.

The programs for A144350, there is no canonical definition to state claims against.
-/

/-! ## A144350.P15545583969519353200

`A013988(∑[n+2]+4)`
-/

namespace A144350.P15545583969519353200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013988 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A144350.P15545583969519353200

/-! ## A144350.P285601915881676434

`A025469(n)+A013988(A167614(n+1))`
-/

namespace A144350.P285601915881676434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 n + A013988 (A167614 (n + 1)).toNat

end

end A144350.P285601915881676434

/-! ## A144350.P12756915185274345385

`A185264(n)+A013988(A167614(n+1))`
-/

namespace A144350.P12756915185274345385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185264 n + A013988 (A167614 (n + 1)).toNat

end

end A144350.P12756915185274345385

/-! ## A144350.P11858991719932789812

`lcm(A000034(n), A013988(A167614(n+1)))`
-/

namespace A144350.P11858991719932789812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A013988 (A167614 (n + 1)).toNat)

end

end A144350.P11858991719932789812

/-! ## A144350.P18148302584649249221

`A000034(2*n)*A013988(A167614(n+1))`
-/

namespace A144350.P18148302584649249221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A013988 (A167614 (n + 1)).toNat

end

end A144350.P18148302584649249221

/-!
# A144351: Lower triangular array called S1hat(1) related to partition number array A107106.

The programs for A144351, there is no canonical definition to state claims against.
-/

/-! ## A144351.P2482784917059285377

`A122922(A274741(n))+A119502(n)`
-/

namespace A144351.P2482784917059285377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122922 (A274741 n).toNat + A119502 n

end

end A144351.P2482784917059285377

/-! ## A144351.P15926003493620858548

`A119502(n)+A085144(A069777(n)!)`
-/

namespace A144351.P15926003493620858548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 n + A085144 (Nat.factorial (A069777 n).toNat)

end

end A144351.P15926003493620858548

/-! ## A144351.P14672241678697464337

`A048197(A201922(n+1))`
-/

namespace A144351.P14672241678697464337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048197 (A201922 (n + 1)).toNat

end

end A144351.P14672241678697464337

/-! ## A144351.P15972646302961486014

`A272979(A106238(n+1))`
-/

namespace A144351.P15972646302961486014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272979 (A106238 (n + 1)).toNat

end

end A144351.P15972646302961486014

/-! ## A144351.P12200353167143202793

`A366320(A350772(n+1))`
-/

namespace A144351.P12200353167143202793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366320 (A350772 (n + 1)).toNat

end

end A144351.P12200353167143202793

/-!
# A144352: Third column (m=3) of triangle A144351.

The programs for A144352, there is no canonical definition to state claims against.
-/

/-! ## A144352.P3158277783927334004

`A144351(∑[n+2]+4)`
-/

namespace A144352.P3158277783927334004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144351 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A144352.P3158277783927334004

/-! ## A144352.P6905429599774723354

`and(-1, A144351(A167614(n+1)))`
-/

namespace A144352.P6905429599774723354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A144351 (A167614 (n + 1)).toNat)

end

end A144352.P6905429599774723354

/-! ## A144352.P6088561397331290376

`gcd(A000038(n), A144351(A167614(n+1)))`
-/

namespace A144352.P6088561397331290376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A144351 (A167614 (n + 1)).toNat)

end

end A144352.P6088561397331290376

/-! ## A144352.P4430923849009860432

`lcm(A029076(n), A144351(A167614(n+1)))`
-/

namespace A144352.P4430923849009860432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A029076 n) (A144351 (A167614 (n + 1)).toNat)

end

end A144352.P4430923849009860432

/-!
# A144353: Partition number array, called M31(3), related to A046089(n,m)= |S1(3;n,m)| (generalized Stirling triangle).

The programs for A144353, there is no canonical definition to state claims against.
-/

/-! ## A144353.P5063650137020467847

`A036040(n+1)*A144880(n+1)`
-/

namespace A144353.P5063650137020467847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036040 (n + 1) * A144880 (n + 1)

end

end A144353.P5063650137020467847

/-! ## A144353.P2721180466632280514

`A124794(A185974(n+1))*A144880(n+1)`
-/

namespace A144353.P2721180466632280514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124794 (A185974 (n + 1)).toNat * A144880 (n + 1)

end

end A144353.P2721180466632280514

/-! ## A144353.P2481341089511052698

`A036038(n+1)/A096162(n+1)*A144880(n+1)`
-/

namespace A144353.P2481341089511052698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036038 (n + 1) : ℚ) / (A096162 (n + 1) : ℚ) * (A144880 (n + 1) : ℚ)

end

end A144353.P2481341089511052698

/-! ## A144353.P10072223076630811050

`A036039(n+1)/A107106(n+1)*A144880(n+1)`
-/

namespace A144353.P10072223076630811050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036039 (n + 1) : ℚ) / (A107106 (n + 1) : ℚ) * (A144880 (n + 1) : ℚ)

end

end A144353.P10072223076630811050

/-! ## A144353.P14441951753336845626

`A049019(n+1)*A144880(n+1)/A178803(n+1)`
-/

namespace A144353.P14441951753336845626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049019 (n + 1) * A144880 (n + 1) : ℚ) / (A178803 (n + 1) : ℚ)

end

end A144353.P14441951753336845626

/-! ## A144353.P13131574025056470026

`A049009(n+1)/A178888(n+1)*A144880(n+1)`
-/

namespace A144353.P13131574025056470026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049009 (n + 1) : ℚ) / (A178888 (n + 1) : ℚ) * (A144880 (n + 1) : ℚ)

end

end A144353.P13131574025056470026

/-! ## A144353.P586144838585714448

`A130561(n+1)/A134133(n+1)*A144880(n+1)`
-/

namespace A144353.P586144838585714448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130561 (n + 1) : ℚ) / (A134133 (n + 1) : ℚ) * (A144880 (n + 1) : ℚ)

end

end A144353.P586144838585714448

/-! ## A144353.P3872932356615843359

`A143171(n+1)/A144269(n+1)*A144880(n+1)`
-/

namespace A144353.P3872932356615843359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143171 (n + 1) : ℚ) / (A144269 (n + 1) : ℚ) * (A144880 (n + 1) : ℚ)

end

end A144353.P3872932356615843359

/-! ## A144353.P3146455318159483115

`A144354(n+1)*A144880(n+1)/A144885(n+1)`
-/

namespace A144353.P3146455318159483115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144354 (n + 1) * A144880 (n + 1) : ℚ) / (A144885 (n + 1) : ℚ)

end

end A144353.P3146455318159483115

/-!
# A144354: Partition number array, called M31(4), related to A049352(n,m)= |S1(4;n,m)| (generalized Stirling triangle).

The programs for A144354, there is no canonical definition to state claims against.
-/

/-! ## A144354.P18128159642664312115

`A036040(n+1)*A144885(n+1)`
-/

namespace A144354.P18128159642664312115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036040 (n + 1) * A144885 (n + 1)

end

end A144354.P18128159642664312115

/-! ## A144354.P6757315472510344619

`A124794(A185974(n+1))*A144885(n+1)`
-/

namespace A144354.P6757315472510344619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124794 (A185974 (n + 1)).toNat * A144885 (n + 1)

end

end A144354.P6757315472510344619

/-! ## A144354.P12374526071553099248

`A036038(n+1)/A096162(n+1)*A144885(n+1)`
-/

namespace A144354.P12374526071553099248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036038 (n + 1) : ℚ) / (A096162 (n + 1) : ℚ) * (A144885 (n + 1) : ℚ)

end

end A144354.P12374526071553099248

/-! ## A144354.P10028925584429470801

`A036039(n+1)/A107106(n+1)*A144885(n+1)`
-/

namespace A144354.P10028925584429470801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036039 (n + 1) : ℚ) / (A107106 (n + 1) : ℚ) * (A144885 (n + 1) : ℚ)

end

end A144354.P10028925584429470801

/-! ## A144354.P17596439047497384970

`A122454(n+1)/A098546(n+1)*A144885(n+1)`
-/

namespace A144354.P17596439047497384970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122454 (n + 1) : ℚ) / (A098546 (n + 1) : ℚ) * (A144885 (n + 1) : ℚ)

end

end A144354.P17596439047497384970

/-! ## A144354.P10782141284546336703

`A049019(n+1)*A144885(n+1)/A178803(n+1)`
-/

namespace A144354.P10782141284546336703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049019 (n + 1) * A144885 (n + 1) : ℚ) / (A178803 (n + 1) : ℚ)

end

end A144354.P10782141284546336703

/-! ## A144354.P661857786358428451

`A049009(n+1)/A178888(n+1)*A144885(n+1)`
-/

namespace A144354.P661857786358428451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049009 (n + 1) : ℚ) / (A178888 (n + 1) : ℚ) * (A144885 (n + 1) : ℚ)

end

end A144354.P661857786358428451

/-! ## A144354.P6426654243747049878

`A130561(n+1)/A134133(n+1)*A144885(n+1)`
-/

namespace A144354.P6426654243747049878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130561 (n + 1) : ℚ) / (A134133 (n + 1) : ℚ) * (A144885 (n + 1) : ℚ)

end

end A144354.P6426654243747049878

/-! ## A144354.P7496788389420142873

`A143171(n+1)/A144269(n+1)*A144885(n+1)`
-/

namespace A144354.P7496788389420142873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143171 (n + 1) : ℚ) / (A144269 (n + 1) : ℚ) * (A144885 (n + 1) : ℚ)

end

end A144354.P7496788389420142873

/-! ## A144354.P18101390954622682935

`A144353(n+1)/A144880(n+1)*A144885(n+1)`
-/

namespace A144354.P18101390954622682935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144353 (n + 1) : ℚ) / (A144880 (n + 1) : ℚ) * (A144885 (n + 1) : ℚ)

end

end A144354.P18101390954622682935

/-!
# A144355: Partition number array, called M31(5), related to A049353(n,m)= |S1(5;n,m)| (generalized Stirling triangle).

The programs for A144355, there is no canonical definition to state claims against.
-/

/-! ## A144355.P3408975943491527620

`A036040(n+1)*A144890(n+1)`
-/

namespace A144355.P3408975943491527620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036040 (n + 1) * A144890 (n + 1)

end

end A144355.P3408975943491527620

/-! ## A144355.P2095911382352296900

`A124794(A185974(n+1))*A144890(n+1)`
-/

namespace A144355.P2095911382352296900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124794 (A185974 (n + 1)).toNat * A144890 (n + 1)

end

end A144355.P2095911382352296900

/-! ## A144355.P16229469915993069498

`A036038(n+1)/A096162(n+1)*A144890(n+1)`
-/

namespace A144355.P16229469915993069498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036038 (n + 1) : ℚ) / (A096162 (n + 1) : ℚ) * (A144890 (n + 1) : ℚ)

end

end A144355.P16229469915993069498

/-! ## A144355.P7799670768254797530

`A036039(n+1)/A107106(n+1)*A144890(n+1)`
-/

namespace A144355.P7799670768254797530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036039 (n + 1) : ℚ) / (A107106 (n + 1) : ℚ) * (A144890 (n + 1) : ℚ)

end

end A144355.P7799670768254797530

/-! ## A144355.P846935422627696293

`A134144(n+1)/A134145(n+1)*A144890(n+1)`
-/

namespace A144355.P846935422627696293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134144 (n + 1) : ℚ) / (A134145 (n + 1) : ℚ) * (A144890 (n + 1) : ℚ)

end

end A144355.P846935422627696293

/-!
# A144356: Partition number array, called M31(6), related to A049374(n,m)= |S1(6;n,m)| (generalized Stirling triangle).

The programs for A144356, there is no canonical definition to state claims against.
-/

/-! ## A144356.P11070954554437965653

`A036040(n+1)*A145356(n+1)`
-/

namespace A144356.P11070954554437965653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036040 (n + 1) * A145356 (n + 1)

end

end A144356.P11070954554437965653

/-! ## A144356.P18034428639778800678

`A124794(A185974(n+1))*A145356(n+1)`
-/

namespace A144356.P18034428639778800678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124794 (A185974 (n + 1)).toNat * A145356 (n + 1)

end

end A144356.P18034428639778800678

/-! ## A144356.P4866933495420621309

`A036038(n+1)/A096162(n+1)*A145356(n+1)`
-/

namespace A144356.P4866933495420621309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036038 (n + 1) : ℚ) / (A096162 (n + 1) : ℚ) * (A145356 (n + 1) : ℚ)

end

end A144356.P4866933495420621309

/-! ## A144356.P3359530719178313005

`A036039(n+1)/A107106(n+1)*A145356(n+1)`
-/

namespace A144356.P3359530719178313005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036039 (n + 1) : ℚ) / (A107106 (n + 1) : ℚ) * (A145356 (n + 1) : ℚ)

end

end A144356.P3359530719178313005

/-! ## A144356.P14254029115900530399

`A049009(n+1)/A178888(n+1)*A145356(n+1)`
-/

namespace A144356.P14254029115900530399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049009 (n + 1) : ℚ) / (A178888 (n + 1) : ℚ) * (A145356 (n + 1) : ℚ)

end

end A144356.P14254029115900530399

/-!
# A144357: Partition number array, called M31(-1), related to A049403(n,m) = S1(-1;n,m) (generalized Stirling triangle).

The programs for A144357, there is no canonical definition to state claims against.
-/

/-! ## A144357.P7092003384641381549

`A036039(n+1)*A145361(n+1)`
-/

namespace A144357.P7092003384641381549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036039 (n + 1) * A145361 (n + 1)

end

end A144357.P7092003384641381549

/-! ## A144357.P14637380162127743059

`A036040(n+1)*A145361(n+1)`
-/

namespace A144357.P14637380162127743059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036040 (n + 1) * A145361 (n + 1)

end

end A144357.P14637380162127743059

/-! ## A144357.P7558766805223974648

`A036039(n+1)%(2*A036040(n+1))`
-/

namespace A144357.P7558766805223974648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036039 (n + 1)) (2 * A036040 (n + 1))

end

end A144357.P7558766805223974648

/-! ## A144357.P16139888204330261166

`round(1/A049085(n+1))*A036039(n+1)`
-/

namespace A144357.P16139888204330261166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A049085 (n + 1) : ℚ)) * A036039 (n + 1)

end

end A144357.P16139888204330261166

/-! ## A144357.P13234441114711824220

`round(1/A049085(n+1))*A036040(n+1)`
-/

namespace A144357.P13234441114711824220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A049085 (n + 1) : ℚ)) * A036040 (n + 1)

end

end A144357.P13234441114711824220

/-! ## A144357.P14393871829328751167

`A014042(A049085(n+1))*A036040(n+1)`
-/

namespace A144357.P14393871829328751167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014042 (A049085 (n + 1)).toNat * A036040 (n + 1)

end

end A144357.P14393871829328751167

/-! ## A144357.P3872229757222202600

`A036039(n+1)*A065333(A185974(n+1))`
-/

namespace A144357.P3872229757222202600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036039 (n + 1) * A065333 (A185974 (n + 1)).toNat

end

end A144357.P3872229757222202600

/-! ## A144357.P9920059970835016642

`A036040(n+1)*A065333(A185974(n+1))`
-/

namespace A144357.P9920059970835016642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036040 (n + 1) * A065333 (A185974 (n + 1)).toNat

end

end A144357.P9920059970835016642

/-! ## A144357.P5716545884419640143

`A000010(val(A036035(n+1), 2))%2*A036039(n+1)`
-/

namespace A144357.P5716545884419640143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (SequenceMachineLib.valuation (A036035 (n + 1)).toNat 2)) 2 * A036039 (n + 1)

end

end A144357.P5716545884419640143

/-! ## A144357.P14219918771707639624

`floor(2/A000010(3*A049085(n+1)))*A036039(n+1)`
-/

namespace A144357.P14219918771707639624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / (A000010 (3 * A049085 (n + 1)).toNat : ℚ)⌋ * A036039 (n + 1)

end

end A144357.P14219918771707639624

/-!
# A144358: Partition number array, called M31(-2), related to A049404(n,m) = S1(-2;n,m) (generalized Stirling triangle).

The programs for A144358, there is no canonical definition to state claims against.
-/

/-! ## A144358.P6965415890494012246

`A036040(n+1)*A145363(n+1)`
-/

namespace A144358.P6965415890494012246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036040 (n + 1) * A145363 (n + 1)

end

end A144358.P6965415890494012246

/-! ## A144358.P10246167321442358809

`A124794(A185974(n+1))*A145363(n+1)`
-/

namespace A144358.P10246167321442358809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124794 (A185974 (n + 1)).toNat * A145363 (n + 1)

end

end A144358.P10246167321442358809

/-! ## A144358.P466224491444265782

`A036038(n+1)/A096162(n+1)*A145363(n+1)`
-/

namespace A144358.P466224491444265782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036038 (n + 1) : ℚ) / (A096162 (n + 1) : ℚ) * (A145363 (n + 1) : ℚ)

end

end A144358.P466224491444265782

/-! ## A144358.P16703643228274136097

`A130561(n+1)/A134133(n+1)*A145363(n+1)`
-/

namespace A144358.P16703643228274136097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130561 (n + 1) : ℚ) / (A134133 (n + 1) : ℚ) * (A145363 (n + 1) : ℚ)

end

end A144358.P16703643228274136097

/-! ## A144358.P2647408560732032613

`A127671(n+1)*A145363(n+1)/A264753(n+1)`
-/

namespace A144358.P2647408560732032613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127671 (n + 1) * A145363 (n + 1) : ℚ) / (A264753 (n + 1) : ℚ)

end

end A144358.P2647408560732032613

/-! ## A144358.P17266983064505242229

`A036038(n+1)/∏{e}[A185974(n+1), #!]*A145363(n+1)`
-/

namespace A144358.P17266983064505242229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036038 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p) : ℕ) : ℚ) * (A145363 (n + 1) : ℚ)

end

end A144358.P17266983064505242229

/-! ## A144358.P15317686715383900896

`A143171(n+1)/A144269(n+1)*A145363(n+1)`
-/

namespace A144358.P15317686715383900896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143171 (n + 1) : ℚ) / (A144269 (n + 1) : ℚ) * (A145363 (n + 1) : ℚ)

end

end A144358.P15317686715383900896

/-! ## A144358.P866151559730848930

`A144353(n+1)/A144880(n+1)*A145363(n+1)`
-/

namespace A144358.P866151559730848930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144353 (n + 1) : ℚ) / (A144880 (n + 1) : ℚ) * (A145363 (n + 1) : ℚ)

end

end A144358.P866151559730848930

/-!
# A144359: Numbers k such that A144264(k) = A144264(k+1).

The programs for A144359, there is no canonical definition to state claims against.
-/

/-! ## A144359.P17704544797510414024

`∩[A144264(n+1)-1, A144264(n+1)]`
-/

namespace A144359.P17704544797510414024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144264 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144359.P17704544797510414024

/-! ## A144359.P9967923272801644434

`eq[A161621(n+1), A161621(n+2)]+1`
-/

namespace A144359.P9967923272801644434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161621 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A144359.P9967923272801644434

/-!
# A144361: a(n) = rad(A143176(n)).

The programs for A144361, there is no canonical definition to state claims against.
-/

/-! ## A144361.P13457950820341945872

`gcd(A068510(n+1), A143176(n+1))`
-/

namespace A144361.P13457950820341945872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068510 (n + 1)) (A143176 (n + 1))

end

end A144361.P13457950820341945872

/-! ## A144361.P1179788193462358044

`gcd((n+1)*A143177(n+1), A068510(n+2))`
-/

namespace A144361.P1179788193462358044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) * A143177 (n + 1)) (A068510 (n + 2))

end

end A144361.P1179788193462358044

/-! ## A144361.P1950587314008744348

`gcd(A002110(n), A143176(n+1))`
-/

namespace A144361.P1950587314008744348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002110 n) (A143176 (n + 1))

end

end A144361.P1950587314008744348

/-! ## A144361.P15502422194878840757

`A007947((n+1)*A007947(A143177(n+1)))`
-/

namespace A144361.P15502422194878840757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 ((n + 1 : ℤ) * A007947 (A143177 (n + 1)).toNat).toNat

end

end A144361.P15502422194878840757

/-! ## A144361.P15480884560742344430

`∏{p}[A143176(n+1), #]`
-/

namespace A144361.P15480884560742344430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143176 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A144361.P15480884560742344430

/-!
# A144362: a(n) = core(A143176(n)).

The programs for A144362, there is no canonical definition to state claims against.
-/

/-! ## A144362.P10642461997093575242

`A007913((n+1)*A007913(A143177(n+1)))`
-/

namespace A144362.P10642461997093575242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 1 : ℤ) * A007913 (A143177 (n + 1)).toNat).toNat

end

end A144362.P10642461997093575242

/-! ## A144362.P877412207247558887

`A007913(A143176(n+1))`
-/

namespace A144362.P877412207247558887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A143176 (n + 1)).toNat

end

end A144362.P877412207247558887

/-! ## A144362.P17883965902564828501

`A007913((n+1)*A143177(n+1))`
-/

namespace A144362.P17883965902564828501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 1 : ℤ) * A143177 (n + 1)).toNat

end

end A144362.P17883965902564828501

/-! ## A144362.P17995255269843631537

`A144361(n+1)/A336643(A143176(n+1))`
-/

namespace A144362.P17995255269843631537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144361 (n + 1) : ℚ) / (A336643 (A143176 (n + 1)).toNat : ℚ)

end

end A144362.P17995255269843631537

/-! ## A144362.P17313823628967502353

`(n+1)*A143177(n+1)/A008833(A143176(n+1))`
-/

namespace A144362.P17313823628967502353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A143177 (n + 1) : ℚ) / (A008833 (A143176 (n + 1)).toNat : ℚ)

end

end A144362.P17313823628967502353

/-!
# A144363: Records in A144261.

The programs for A144363, there is no canonical definition to state claims against.
-/

/-! ## A144363.P13095226398186909423

`record[A144261(n+1)]`
-/

namespace A144363.P13095226398186909423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144363.P13095226398186909423

/-! ## A144363.P3468283225516065763

`A144261(A144364(n+1))`
-/

namespace A144363.P3468283225516065763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144261 (A144364 (n + 1)).toNat

end

end A144363.P3468283225516065763

/-!
# A144364: Where records occur in A144261.

The programs for A144364, there is no canonical definition to state claims against.
-/

/-! ## A144364.P11679681656198103210

`A358067(A144363(n+1))`
-/

namespace A144364.P11679681656198103210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358067 (A144363 (n + 1)).toNat

end

end A144364.P11679681656198103210

/-! ## A144364.P4257277338654378644

`A358067(record[A144261(n+1)])`
-/

namespace A144364.P4257277338654378644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358067 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A144364.P4257277338654378644

/-!
# A144366: Shifts 2 places left under Dirichlet convolution.

The programs for A144366, there is no canonical definition to state claims against.
-/

/-! ## A144366.P4037773788060675280

`A144374(∑[n]+2)`
-/

namespace A144366.P4037773788060675280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144374 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A144366.P4037773788060675280

/-! ## A144366.P13137260964008310258

`A144374(A133263(n))^(1-char[1])`
-/

namespace A144366.P13137260964008310258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144374 (A133263 n).toNat : ℚ) ^ (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A144366.P13137260964008310258

/-! ## A144366.P10678941067350712204

`A144374(A133263(n))%A022383(n)`
-/

namespace A144366.P10678941067350712204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144374 (A133263 n).toNat) (A022383 n)

end

end A144366.P10678941067350712204

/-! ## A144366.P15069247986307414308

`and(A126646(n), A144374(A133263(n)))`
-/

namespace A144366.P15069247986307414308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A144374 (A133263 n).toNat)

end

end A144366.P15069247986307414308

/-! ## A144366.P6011197431059833447

`or(A000007(n), A144374(A133263(n)))`
-/

namespace A144366.P6011197431059833447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A144374 (A133263 n).toNat)

end

end A144366.P6011197431059833447

/-! ## A144366.P4469994121007555345

`A033999(n)²*A144374(A133263(n))`
-/

namespace A144366.P4469994121007555345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A144374 (A133263 n).toNat

end

end A144366.P4469994121007555345

/-! ## A144366.P2643357489782512157

`A000034(2*n)*A144374(A133263(n))`
-/

namespace A144366.P2643357489782512157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A144374 (A133263 n).toNat

end

end A144366.P2643357489782512157

/-! ## A144366.P656578130920660981

`and(1, A055580(n))*A144374(A133263(n))`
-/

namespace A144366.P656578130920660981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A055580 n) * A144374 (A133263 n).toNat

end

end A144366.P656578130920660981

/-! ## A144366.P10561703110324183195

`A007895(A139764(n+1))*A144374(A133263(n))`
-/

namespace A144366.P10561703110324183195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A139764 (n + 1)).toNat * A144374 (A133263 n).toNat

end

end A144366.P10561703110324183195

/-! ## A144366.P7676617710986917960

`A014963(A025305(n+1))*A144374(A133263(n))`
-/

namespace A144366.P7676617710986917960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A025305 (n + 1)).toNat * A144374 (A133263 n).toNat

end

end A144366.P7676617710986917960

/-!
# A144367: Shifts 3 places left under Dirichlet convolution.

The programs for A144367, there is no canonical definition to state claims against.
-/

/-! ## A144367.P11776820109419802155

`A144374(A238531(n)+1+n)`
-/

namespace A144367.P11776820109419802155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144374 (A238531 n + 1 + (n : ℤ)).toNat

end

end A144367.P11776820109419802155

/-! ## A144367.P7772342661504399266

`A144374(A046698(n)+A000124(n))`
-/

namespace A144367.P7772342661504399266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144374 (A046698 n + A000124 n).toNat

end

end A144367.P7772342661504399266

/-! ## A144367.P17332380199472422118

`A144374(A022856(n+2)+A004277(n))`
-/

namespace A144367.P17332380199472422118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144374 (A022856 (n + 2) + A004277 n).toNat

end

end A144367.P17332380199472422118

/-! ## A144367.P5263144580662256550

`A144374(A167499(n)-3-A254667(n))`
-/

namespace A144367.P5263144580662256550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144374 (A167499 n - 3 - A254667 n).toNat

end

end A144367.P5263144580662256550

/-! ## A144367.P11909969438173304261

`A144374(A167499(n)-3-A233583(n+1))`
-/

namespace A144367.P11909969438173304261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144374 (A167499 n - 3 - A233583 (n + 1)).toNat

end

end A144367.P11909969438173304261

/-! ## A144367.P12531957654533208609

`A144374(∑[A065033(A223133(n))])`
-/

namespace A144367.P12531957654533208609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A223133 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144374 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A144367.P12531957654533208609

/-!
# A144368: Shifts 4 places left under Dirichlet convolution.

The programs for A144368, there is no canonical definition to state claims against.
-/

/-! ## A144368.P12647706090475088703

`A144374(A077169(n+1)-1)`
-/

namespace A144368.P12647706090475088703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144374 (A077169 (n + 1) - 1).toNat

end

end A144368.P12647706090475088703

/-! ## A144368.P12062039854741705654

`A144374(A133263(n)%A000079(n)+2)`
-/

namespace A144368.P12062039854741705654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144374 (Int.tmod (A133263 n) (A000079 n) + 2).toNat

end

end A144368.P12062039854741705654

/-!
# A144369: Shifts 5 places left under Dirichlet convolution.

The programs for A144369, there is no canonical definition to state claims against.
-/

/-! ## A144369.P9948545877693845234

`A144374(A077169(n)+n)`
-/

namespace A144369.P9948545877693845234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144374 (A077169 n + (n : ℤ)).toNat

end

end A144369.P9948545877693845234

/-!
# A144372: Shifts 8 places left under Dirichlet convolution.

The programs for A144372, there is no canonical definition to state claims against.
-/

/-! ## A144372.P5355540963056640504

`A289849(A273736(n))`
-/

namespace A144372.P5355540963056640504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289849 (A273736 n).toNat

end

end A144372.P5355540963056640504

/-! ## A144372.P449065268668289307

`A163374(A275063(n+1))`
-/

namespace A144372.P449065268668289307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163374 (A275063 (n + 1)).toNat

end

end A144372.P449065268668289307

/-! ## A144372.P129885819006756548

`A000005(A273736(n))%A002255(2*n+3)`
-/

namespace A144372.P129885819006756548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A273736 n).toNat) (A002255 (2 * n + 3))

end

end A144372.P129885819006756548

/-!
# A144373: Shifts 9 places left under Dirichlet convolution.

The programs for A144373, there is no canonical definition to state claims against.
-/

/-! ## A144373.P18190730877327354169

`A049419(A275076(n+1))`
-/

namespace A144373.P18190730877327354169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A275076 (n + 1)).toNat

end

end A144373.P18190730877327354169

/-! ## A144373.P11097074991610774040

`A229942(2*A274842(n))`
-/

namespace A144373.P11097074991610774040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229942 (2 * A274842 n).toNat

end

end A144373.P11097074991610774040

/-! ## A144373.P4094427216551410511

`A049419(∏[A054899(n+1)+1])`
-/

namespace A144373.P4094427216551410511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A144373.P4094427216551410511

/-! ## A144373.P1831272071733684494

`A038548(A000040(2*(n+2))*A274842(n))`
-/

namespace A144373.P1831272071733684494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A000040 (2 * (n + 2)) * A274842 n).toNat

end

end A144373.P1831272071733684494

/-!
# A144374: Triangle T(n,k), n>=1, 1<=k<=n, read by rows, where sequence a_k of column k begins with (k+1) 1's and a_k(n) shifts k places down under Dirichlet convolution.

The programs for A144374, there is no canonical definition to state claims against.
-/

/-! ## A144374.P17630505430268377520

`A076642(A114423(n))`
-/

namespace A144374.P17630505430268377520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076642 (A114423 n).toNat

end

end A144374.P17630505430268377520

/-! ## A144374.P15150015283272179362

`A013937(A155039(n+1))+A001222(A325280(n)^n+1)`
-/

namespace A144374.P15150015283272179362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013937 (A155039 (n + 1)).toNat + A001222 (A325280 n ^ n + 1).toNat

end

end A144374.P15150015283272179362

/-! ## A144374.P13267470769243701587

`A086638(A194543(n)%A335950(n+1))`
-/

namespace A144374.P13267470769243701587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086638 (Int.tmod (A194543 n) (A335950 (n + 1))).toNat

end

end A144374.P13267470769243701587

/-! ## A144374.P7886957704049722286

`gcd(A086638(A194543(n)), A152701(n+1))`
-/

namespace A144374.P7886957704049722286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A086638 (A194543 n).toNat) (A152701 (n + 1))

end

end A144374.P7886957704049722286

/-!
# A144375: Records in A144262.

The programs for A144375, there is no canonical definition to state claims against.
-/

/-! ## A144375.P17376345987742173310

`record[A144262(n+1)]`
-/

namespace A144375.P17376345987742173310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144375.P17376345987742173310

/-! ## A144375.P16312243316503134192

`record[A357937(n+1)/(n+1)]`
-/

namespace A144375.P16312243316503134192
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357937 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144375.P16312243316503134192

/-! ## A144375.P14888102055768996088

`A144262(A144376(n+1))`
-/

namespace A144375.P14888102055768996088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144262 (A144376 (n + 1)).toNat

end

end A144375.P14888102055768996088

/-!
# A144376: Where records occur in A144262.

The programs for A144376, there is no canonical definition to state claims against.
-/

/-! ## A144376.P6547506163695765509

`A007425(A026630(n+1)*A262501(n+1))`
-/

namespace A144376.P6547506163695765509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A026630 (n + 1) * A262501 (n + 1)).toNat

end

end A144376.P6547506163695765509

/-!
# A144377: Expansion of phi(q) / phi(q^5) in powers of q where phi() is a Ramanujan theta function.

The programs for A144377, there is no canonical definition to state claims against.
-/

/-! ## A144377.P2310453290165569334

`(-1)^n*A138527(n)`
-/

namespace A144377.P2310453290165569334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A138527 n

end

end A144377.P2310453290165569334

/-! ## A144377.P9488553510812543645

`A138527(n)/A033999(n)`
-/

namespace A144377.P9488553510812543645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138527 n : ℚ) / (A033999 n : ℚ)

end

end A144377.P9488553510812543645

/-! ## A144377.P14646419207499282075

`A138527(n)/A062157(n+1)`
-/

namespace A144377.P14646419207499282075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138527 n : ℚ) / (A062157 (n + 1) : ℚ)

end

end A144377.P14646419207499282075

/-! ## A144377.P1892219287743468096

`A138527(n)/A057077(A057077(n)+n)`
-/

namespace A144377.P1892219287743468096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138527 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A144377.P1892219287743468096

/-! ## A144377.P17625690162216500706

`A138527(n)/A057077(2*n)`
-/

namespace A144377.P17625690162216500706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138527 n : ℚ) / (A057077 (2 * n) : ℚ)

end

end A144377.P17625690162216500706

/-! ## A144377.P6783400549634148612

`A138527(n)/A131379(2*n)`
-/

namespace A144377.P6783400549634148612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138527 n : ℚ) / (A131379 (2 * n) : ℚ)

end

end A144377.P6783400549634148612

/-! ## A144377.P16893955020087417235

`A138526(n)*A138527(n)/A261968(n)`
-/

namespace A144377.P16893955020087417235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138526 n * A138527 n : ℚ) / (A261968 n : ℚ)

end

end A144377.P16893955020087417235

/-!
# A144379: Triangle read by rows, first n terms of an array formed by A054521 * A054521(transform).

The programs for A144379, there is no canonical definition to state claims against.
-/

/-! ## A144379.P8474869596496339825

`gcd(A000578(A281563(n+1)), A054526(n+1))`
-/

namespace A144379.P8474869596496339825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000578 (A281563 (n + 1)).toNat) (A054526 (n + 1))

end

end A144379.P8474869596496339825

/-! ## A144379.P8316372479687808324

`A001223(gcd(A025680(n+1), A156953(n)))`
-/

namespace A144379.P8316372479687808324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (Int.gcd (A025680 (n + 1)) (A156953 n))

end

end A144379.P8316372479687808324

/-! ## A144379.P1636422057620565480

`gcd(4, gcd(A115781(n+1), A233543(n))!)`
-/

namespace A144379.P1636422057620565480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 (Nat.factorial (Int.gcd (A115781 (n + 1)) (A233543 n)))

end

end A144379.P1636422057620565480

/-! ## A144379.P12848335186994237980

`A001223(gcd(A115781(n+1), A233543(n)))`
-/

namespace A144379.P12848335186994237980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (Int.gcd (A115781 (n + 1)) (A233543 n))

end

end A144379.P12848335186994237980

/-! ## A144379.P9361001747293546494

`gcd(A054526(n+1), A326758(A078932(n)))`
-/

namespace A144379.P9361001747293546494
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054526 (n + 1)) (A326758 (A078932 n).toNat)

end

end A144379.P9361001747293546494

/-!
# A144380: Third subdiagonal of A142458: a(n) = A142458(n+3,n).

The programs for A144380, there is no canonical definition to state claims against.
-/

/-! ## A144380.P14797065432789550351

`A142458(A374004(n+1))`
-/

namespace A144380.P14797065432789550351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142458 (A374004 (n + 1)).toNat

end

end A144380.P14797065432789550351

/-! ## A144380.P11424533760351021416

`A142458(A052905(n)+9)`
-/

namespace A144380.P11424533760351021416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142458 (A052905 n + 9).toNat

end

end A144380.P11424533760351021416

/-! ## A144380.P7818422060069277813

`A142458(A055999(n)+10)`
-/

namespace A144380.P7818422060069277813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142458 (A055999 n + 10).toNat

end

end A144380.P7818422060069277813

/-! ## A144380.P3870702308717079650

`A142458(A167614(n+2)+1)`
-/

namespace A144380.P3870702308717079650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142458 (A167614 (n + 2) + 1).toNat

end

end A144380.P3870702308717079650

/-! ## A144380.P5703950285945194145

`A142458(eq[5, A131818(n+1)])`
-/

namespace A144380.P5703950285945194145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142458 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144380.P5703950285945194145

/-! ## A144380.P13889011848935758968

`A142458(Δ[A023545(n+1)-n²])`
-/

namespace A144380.P13889011848935758968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142458 (f1 (n + 1) - f1 n).toNat

end

end A144380.P13889011848935758968

/-! ## A144380.P8133461760044172683

`A142458(A155212(n)+5)`
-/

namespace A144380.P8133461760044172683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142458 (A155212 n + 5).toNat

end

end A144380.P8133461760044172683

/-! ## A144380.P7256885491027430390

`A142458(eq[4, A209434(n)])`
-/

namespace A144380.P7256885491027430390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142458 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144380.P7256885491027430390

/-! ## A144380.P2780527342868935029

`A142458(eq[2, A057728(n+1)-2])`
-/

namespace A144380.P2780527342868935029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142458 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144380.P2780527342868935029

/-! ## A144380.P3931130007727551458

`A142458(eq[2, A057728(n+1)/2])`
-/

namespace A144380.P3931130007727551458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057728 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142458 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A144380.P3931130007727551458

/-!
# A144381: a(n) = A142458(n+5, n). Fifth diagonal of A142458 triangle.

The programs for A144381, there is no canonical definition to state claims against.
-/

/-! ## A144381.P3486705156294087480

`A142458(A374005(n+1))`
-/

namespace A144381.P3486705156294087480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142458 (A374005 (n + 1)).toNat

end

end A144381.P3486705156294087480

/-! ## A144381.P9074209692620754320

`A142458(A167499(n+3))`
-/

namespace A144381.P9074209692620754320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142458 (A167499 (n + 3)).toNat

end

end A144381.P9074209692620754320

/-! ## A144381.P8249521271660824082

`A142458(A155212(n)+13)`
-/

namespace A144381.P8249521271660824082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142458 (A155212 n + 13).toNat

end

end A144381.P8249521271660824082

/-! ## A144381.P2138060619888253501

`A142458(A000217(n+4)+5)`
-/

namespace A144381.P2138060619888253501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142458 (A000217 (n + 4) + 5).toNat

end

end A144381.P2138060619888253501

/-! ## A144381.P7921826543104047124

`A142458(eq[6, A131818(n+1)])`
-/

namespace A144381.P7921826543104047124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142458 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144381.P7921826543104047124

/-! ## A144381.P2992008194672759478

`A142458(eq[8, A209434(n)])`
-/

namespace A144381.P2992008194672759478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142458 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144381.P2992008194672759478

/-! ## A144381.P8922955439628602418

`A142458(Δ[A023545(n+1)])`
-/

namespace A144381.P8922955439628602418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142458 (f1 (n + 1) - f1 n).toNat

end

end A144381.P8922955439628602418

/-! ## A144381.P18163055575752750875

`A142458(eq[4, A049286(n+1)])`
-/

namespace A144381.P18163055575752750875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142458 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144381.P18163055575752750875

/-! ## A144381.P1896600862753963521

`A142458(eq[8, A057728(n+1)])`
-/

namespace A144381.P1896600862753963521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142458 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144381.P1896600862753963521

/-! ## A144381.P3506508889455139900

`A142458(A180486(n+1)+A167614(n+1))`
-/

namespace A144381.P3506508889455139900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142458 (A180486 (n + 1) + A167614 (n + 1)).toNat

end

end A144381.P3506508889455139900

/-!
# A144382: T(1,k) = -1 and T(n,k) = [t^k] 1/(-1 + t - t^n) for n >= 2, square array read by ascending antidiagonals (n >= 1, k >= 0).

The programs for A144382, there is no canonical definition to state claims against.
-/

/-! ## A144382.P2095197015159154877

`A373953(A212363(n))-2`
-/

namespace A144382.P2095197015159154877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373953 (A212363 n).toNat - 2

end

end A144382.P2095197015159154877

/-! ## A144382.P8544597222164104740

`or(A000035(n), A057428(A331571(n)))`
-/

namespace A144382.P8544597222164104740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A057428 (A331571 n).toNat)

end

end A144382.P8544597222164104740

/-! ## A144382.P7597581679013328504

`A105368(A275069(n)%A104309(3*n+2))`
-/

namespace A144382.P7597581679013328504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105368 (Int.tmod (A275069 n) (A104309 (3 * n + 2))).toNat

end

end A144382.P7597581679013328504

/-! ## A144382.P12735568814295539096

`or(A000035(n), A057428(A331567(n)))`
-/

namespace A144382.P12735568814295539096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A057428 (A331567 n).toNat)

end

end A144382.P12735568814295539096

/-!
# A144384: T(1,k) = 1 and T(n,k) = [t^k] (1 - t)/(1 - t^n) for n >= 2, square array read by ascending antidiagonals (n >= 1, k >= 0).

The programs for A144384, the canonical program `A144384.P4609313334345118213` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144384 has offset 1).

The definition of A144384 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144384.P2498196904435871961

`A004174(A051777(n+1))%2`
-/

namespace A144384.P2498196904435871961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004174 (A051777 (n + 1)).toNat) 2

end

end A144384.P2498196904435871961

namespace A144384

/-- `A004174(A051777(n+1))%2` -/
def P2498196904435871961.Spec : Prop :=
  ∀ n, P2498196904435871961.a n = A144384 (n + 1)

end A144384

/-! ## A144384.P4609313334345118213

`∏{d}[A051777(n+1), A001221(#)-1]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A144384

/-- `∏{d}[A051777(n+1), A001221(#)-1]` -/
def P4609313334345118213.Spec : Prop :=
  ∀ n, P4609313334345118213.a n = A144384 (n + 1)

theorem P4609313334345118213.correct : P4609313334345118213.Spec := by
  intro n
  simp only [A144384, Nat.add_sub_cancel]

end A144384

/-! ## A144384.P16134429879708728572

`∏{d}[A051777(n+1), A001222(#)-1]`
-/

namespace A144384.P16134429879708728572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, (A001222 d - 1)

end

end A144384.P16134429879708728572

namespace A144384

/-- `∏{d}[A051777(n+1), A001222(#)-1]` -/
def P16134429879708728572.Spec : Prop :=
  ∀ n, P16134429879708728572.a n = A144384 (n + 1)

end A144384

/-! ## A144384.P5278823258662526051

`A240328(A002262(n)%A193739(n))`
-/

namespace A144384.P5278823258662526051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240328 (Int.tmod (A002262 n) (A193739 n)).toNat

end

end A144384.P5278823258662526051

namespace A144384

/-- `A240328(A002262(n)%A193739(n))` -/
def P5278823258662526051.Spec : Prop :=
  ∀ n, P5278823258662526051.a n = A144384 (n + 1)

end A144384

/-! ## A144384.P1276484218075982560

`A008683(A008496(A051777(n+1)+7))`
-/

namespace A144384.P1276484218075982560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008496 (A051777 (n + 1) + 7).toNat).toNat

end

end A144384.P1276484218075982560

namespace A144384

/-- `A008683(A008496(A051777(n+1)+7))` -/
def P1276484218075982560.Spec : Prop :=
  ∀ n, P1276484218075982560.a n = A144384 (n + 1)

end A144384

/-! ## A144384.P1938755159852772647

`A008683(∑{d}[A095121(A051777(n+1)), #])`
-/

namespace A144384.P1938755159852772647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 (A051777 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A144384.P1938755159852772647

namespace A144384

/-- `A008683(∑{d}[A095121(A051777(n+1)), #])` -/
def P1938755159852772647.Spec : Prop :=
  ∀ n, P1938755159852772647.a n = A144384 (n + 1)

end A144384

/-! ## A144384.P6952634851803785295

`A121373(∑{d}[A051777(n+1), A095121(#)])`
-/

namespace A144384.P6952634851803785295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (∑ d ∈ Nat.divisors (f1 n).natAbs, A095121 d).toNat

end

end A144384.P6952634851803785295

namespace A144384

/-- `A121373(∑{d}[A051777(n+1), A095121(#)])` -/
def P6952634851803785295.Spec : Prop :=
  ∀ n, P6952634851803785295.a n = A144384 (n + 1)

end A144384

/-! ## A144384.P15012825622839644521

`A121373(A051777(n+1)²²+1)`
-/

namespace A144384.P15012825622839644521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 ((A051777 (n + 1) ^ 2) ^ 2 + 1).toNat

end

end A144384.P15012825622839644521

namespace A144384

/-- `A121373(A051777(n+1)²²+1)` -/
def P15012825622839644521.Spec : Prop :=
  ∀ n, P15012825622839644521.a n = A144384 (n + 1)

end A144384

/-! ## A144384.P8494703863195542051

`A016270(A051777(n+1)^4)`
-/

namespace A144384.P8494703863195542051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016270 (A051777 (n + 1) ^ 4).toNat

end

end A144384.P8494703863195542051

namespace A144384

/-- `A016270(A051777(n+1)^4)` -/
def P8494703863195542051.Spec : Prop :=
  ∀ n, P8494703863195542051.a n = A144384 (n + 1)

end A144384

/-! ## A144384.P18389577361527412759

`A016270(A051777(n+1)²²)`
-/

namespace A144384.P18389577361527412759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016270 ((A051777 (n + 1) ^ 2) ^ 2).toNat

end

end A144384.P18389577361527412759

namespace A144384

/-- `A016270(A051777(n+1)²²)` -/
def P18389577361527412759.Spec : Prop :=
  ∀ n, P18389577361527412759.a n = A144384 (n + 1)

end A144384

/-! ## A144384.P11088191981762427300

`A152163(A051777(n+1)^3)^A152163(A108588(n+1))`
-/

namespace A144384.P11088191981762427300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152163 (A051777 (n + 1) ^ 3).toNat : ℚ) ^ (A152163 (A108588 (n + 1)).toNat : ℤ)

end

end A144384.P11088191981762427300

namespace A144384

/-- `A152163(A051777(n+1)^3)^A152163(A108588(n+1))` -/
def P11088191981762427300.Spec : Prop :=
  ∀ n, P11088191981762427300.a n = (A144384 (n + 1) : ℚ)

end A144384

/-!
# A144385: Triangle read by rows: T(n,k) is the number of partitions of [1, 2, ..., k] into exactly n blocks, each of size 1, 2 or 3 (n >= 0, 0 <= k <= 3n).

The programs for A144385, there is no canonical definition to state claims against.
-/

/-! ## A144385.P12391130390381885745

`A189804(n)/A085141(n)!`
-/

namespace A144385.P12391130390381885745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189804 n : ℚ) / (Nat.factorial (A085141 n).toNat : ℚ)

end

end A144385.P12391130390381885745

/-! ## A144385.P6160193532510121495

`A189804(n)/A138902(A001935(n))`
-/

namespace A144385.P6160193532510121495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189804 n : ℚ) / (A138902 (A001935 n).toNat : ℚ)

end

end A144385.P6160193532510121495

/-! ## A144385.P18400137525113667973

`A189804(n)/A138902(A237752(n+4))`
-/

namespace A144385.P18400137525113667973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189804 n : ℚ) / (A138902 (A237752 (n + 4)).toNat : ℚ)

end

end A144385.P18400137525113667973

/-! ## A144385.P11472139319345059220

`A189804(n)/A138902(A003106(2*(n+2)))`
-/

namespace A144385.P11472139319345059220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189804 n : ℚ) / (A138902 (A003106 (2 * (n + 2))).toNat : ℚ)

end

end A144385.P11472139319345059220

/-!
# A144388: Triangle T(n,k) = binomial(n, k) + ((-1)^(n + k))*n*binomial(n - 1, k), T(0,0) = 1, read by rows, 0 <= k <= n.

The programs for A144388, the canonical program `A144388.P8676543943554811271` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144388 has offset 0).

The definition of A144388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144388.P8676543943554811271

`xor(1, A025581(n))*A130595(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A144388

/-- `xor(1, A025581(n))*A130595(n)` -/
def P8676543943554811271.Spec : Prop :=
  ∀ n, P8676543943554811271.a n = A144388 n

theorem P8676543943554811271.correct : P8676543943554811271.Spec := by
  intro n
  simp only [A144388]

end A144388

/-! ## A144388.P14093476124677136497

`A004442(A025581(n))*A130595(n)`
-/

namespace A144388.P14093476124677136497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A025581 n).toNat * A130595 n

end

end A144388.P14093476124677136497

namespace A144388

/-- `A004442(A025581(n))*A130595(n)` -/
def P14093476124677136497.Spec : Prop :=
  ∀ n, P14093476124677136497.a n = A144388 n

end A144388

/-! ## A144388.P18295137969165773085

`A007318(n)+A025581(n)*A130595(n)`
-/

namespace A144388.P18295137969165773085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + A025581 n * A130595 n

end

end A144388.P18295137969165773085

namespace A144388

/-- `A007318(n)+A025581(n)*A130595(n)` -/
def P18295137969165773085.Spec : Prop :=
  ∀ n, P18295137969165773085.a n = A144388 n

end A144388

/-! ## A144388.P1622022859348756968

`A135227(n)+A025581(n)*A091917(n)`
-/

namespace A144388.P1622022859348756968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135227 n + A025581 n * A091917 n

end

end A144388.P1622022859348756968

namespace A144388

/-- `A135227(n)+A025581(n)*A091917(n)` -/
def P1622022859348756968.Spec : Prop :=
  ∀ n, P1622022859348756968.a n = A144388 n

end A144388

/-! ## A144388.P6296906189095700803

`(A097807(n)+A025581(n))*A130595(n)`
-/

namespace A144388.P6296906189095700803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097807 n + A025581 n) * A130595 n

end

end A144388.P6296906189095700803

namespace A144388

/-- `(A097807(n)+A025581(n))*A130595(n)` -/
def P6296906189095700803.Spec : Prop :=
  ∀ n, P6296906189095700803.a n = A144388 n

end A144388

/-! ## A144388.P2715088212388501426

`A130595(n)*A283977(A130330(n))`
-/

namespace A144388.P2715088212388501426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n * A283977 (A130330 n).toNat

end

end A144388.P2715088212388501426

namespace A144388

/-- `A130595(n)*A283977(A130330(n))` -/
def P2715088212388501426.Spec : Prop :=
  ∀ n, P2715088212388501426.a n = A144388 n

end A144388

/-!
# A144389: Triangle T(n,k) = n*binomial(n - 1, k) - (-1)^(n - k)*binomial(n, k), T(0,0) = 1, read by rows, 0 <= k <= n.

The programs for A144389, the canonical program `A144389.P4957507962664652954` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144389 has offset 0).

The definition of A144389 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144389.P5945925492716702002

`A216973(n)-A130595(n)`
-/

namespace A144389.P5945925492716702002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216973 n - A130595 n

end

end A144389.P5945925492716702002

namespace A144389

/-- `A216973(n)-A130595(n)` -/
def P5945925492716702002.Spec : Prop :=
  ∀ n, P5945925492716702002.a n = A144389 n

end A144389

/-! ## A144389.P4957507962664652954

`A093375(n+1)-2*A119467(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A144389

/-- `A093375(n+1)-2*A119467(n)` -/
def P4957507962664652954.Spec : Prop :=
  ∀ n, P4957507962664652954.a n = A144389 n

theorem P4957507962664652954.correct : P4957507962664652954.Spec := by
  intro n
  simp only [A144389]

end A144389

/-! ## A144389.P9237489084013147466

`(xor(1, A004736(n+1))-1)*A007318(n)`
-/

namespace A144389.P9237489084013147466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A004736 (n + 1)) - 1) * A007318 n

end

end A144389.P9237489084013147466

namespace A144389

/-- `(xor(1, A004736(n+1))-1)*A007318(n)` -/
def P9237489084013147466.Spec : Prop :=
  ∀ n, P9237489084013147466.a n = A144389 n

end A144389

/-! ## A144389.P9577080026457701726

`A007318(n)-(A130595(n)+A055137(n))`
-/

namespace A144389.P9577080026457701726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - (A130595 n + A055137 n)

end

end A144389.P9577080026457701726

namespace A144389

/-- `A007318(n)-(A130595(n)+A055137(n))` -/
def P9577080026457701726.Spec : Prop :=
  ∀ n, P9577080026457701726.a n = A144389 n

end A144389

/-! ## A144389.P12925500829910548105

`(A025581(n)-A097807(n))*A007318(n)`
-/

namespace A144389.P12925500829910548105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n - A097807 n) * A007318 n

end

end A144389.P12925500829910548105

namespace A144389

/-- `(A025581(n)-A097807(n))*A007318(n)` -/
def P12925500829910548105.Spec : Prop :=
  ∀ n, P12925500829910548105.a n = A144389 n

end A144389

/-! ## A144389.P17381535239355530269

`A007318(n)*A025581(n)-A130595(n)`
-/

namespace A144389.P17381535239355530269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A025581 n - A130595 n

end

end A144389.P17381535239355530269

namespace A144389

/-- `A007318(n)*A025581(n)-A130595(n)` -/
def P17381535239355530269.Spec : Prop :=
  ∀ n, P17381535239355530269.a n = A144389 n

end A144389

/-! ## A144389.P9608396504240593251

`A003056(n)*A071919(n)-A130595(n)`
-/

namespace A144389.P9608396504240593251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n * A071919 n - A130595 n

end

end A144389.P9608396504240593251

namespace A144389

/-- `A003056(n)*A071919(n)-A130595(n)` -/
def P9608396504240593251.Spec : Prop :=
  ∀ n, P9608396504240593251.a n = A144389 n

end A144389

/-! ## A144389.P17943133295958019818

`-(A130595(n)+∑[A141692(n)])`
-/

namespace A144389.P17943133295958019818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A130595 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A144389.P17943133295958019818

namespace A144389

/-- `-(A130595(n)+∑[A141692(n)])` -/
def P17943133295958019818.Spec : Prop :=
  ∀ n, P17943133295958019818.a n = A144389 n

end A144389

/-! ## A144389.P11583748610681718574

`∑[A141692(A061579(n))]-A130595(n)`
-/

namespace A144389.P11583748610681718574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141692 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A130595 n

end

end A144389.P11583748610681718574

namespace A144389

/-- `∑[A141692(A061579(n))]-A130595(n)` -/
def P11583748610681718574.Spec : Prop :=
  ∀ n, P11583748610681718574.a n = A144389 n

end A144389

/-! ## A144389.P8602108096721770243

`A093375(n+1)-A005843(A119467(n))`
-/

namespace A144389.P8602108096721770243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093375 (n + 1) - A005843 (A119467 n).toNat

end

end A144389.P8602108096721770243

namespace A144389

/-- `A093375(n+1)-A005843(A119467(n))` -/
def P8602108096721770243.Spec : Prop :=
  ∀ n, P8602108096721770243.a n = A144389 n

end A144389

/-!
# A144390: a(n) = 3*n^2 - n - 1.

The programs for A144390, the canonical program `A144390.P6424163605810737516` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144390 has offset 1).

The definition of A144390 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144390.P6424163605810737516

`A003154(n+1)-A049451(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A144390

/-- `A003154(n+1)-A049451(n)` -/
def P6424163605810737516.Spec : Prop :=
  ∀ n, P6424163605810737516.a n = A144390 (n + 1)

theorem P6424163605810737516.correct : P6424163605810737516.Spec := by
  intro n
  simp only [A144390, Nat.add_sub_cancel]

end A144390

/-! ## A144390.P14198993600663425785

`A049450(n+1)-1`
-/

namespace A144390.P14198993600663425785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049450 (n + 1) - 1

end

end A144390.P14198993600663425785

namespace A144390

/-- `A049450(n+1)-1` -/
def P14198993600663425785.Spec : Prop :=
  ∀ n, P14198993600663425785.a n = A144390 (n + 1)

end A144390

/-! ## A144390.P11593321995005559492

`A003215(n+1)-2*A005408(n+1)`
-/

namespace A144390.P11593321995005559492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (n + 1) - 2 * A005408 (n + 1)

end

end A144390.P11593321995005559492

namespace A144390

/-- `A003215(n+1)-2*A005408(n+1)` -/
def P11593321995005559492.Spec : Prop :=
  ∀ n, P11593321995005559492.a n = A144390 (n + 1)

end A144390

/-! ## A144390.P13239730313917232735

`∑[6*n+2]-1`
-/

namespace A144390.P13239730313917232735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A144390.P13239730313917232735

namespace A144390

/-- `∑[6*n+2]-1` -/
def P13239730313917232735.Spec : Prop :=
  ∀ n, P13239730313917232735.a n = A144390 (n + 1)

end A144390

/-! ## A144390.P2164245980238423065

`∑[a(n-1)+6]` with `a(0)=1, a(1)=8`
-/

namespace A144390.P2164245980238423065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144390.P2164245980238423065

namespace A144390

/-- `∑[a(n-1)+6]` -/
def P2164245980238423065.Spec : Prop :=
  ∀ n, (P2164245980238423065.a n : ℤ) = A144390 (n + 1)

end A144390

/-! ## A144390.P7725783754272935784

`Δ[lcm(n, 1-(n²+n))]`
-/

namespace A144390.P7725783754272935784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (1 - (n ^ 2 + n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A144390.P7725783754272935784

namespace A144390

/-- `Δ[lcm(n, 1-(n²+n))]` -/
def P7725783754272935784.Spec : Prop :=
  ∀ n, P7725783754272935784.a n = A144390 (n + 1)

end A144390

/-! ## A144390.P11139086391173202611

`xor(1, 2*n+∑[6*n])`
-/

namespace A144390.P11139086391173202611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A144390.P11139086391173202611

namespace A144390

/-- `xor(1, 2*n+∑[6*n])` -/
def P11139086391173202611.Spec : Prop :=
  ∀ n, (P11139086391173202611.a n : ℤ) = A144390 (n + 1)

end A144390

/-! ## A144390.P3605594828870321276

`or(1, Δ[n^3]+2*n)`
-/

namespace A144390.P3605594828870321276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (2 * n : ℤ))

end

end A144390.P3605594828870321276

namespace A144390

/-- `or(1, Δ[n^3]+2*n)` -/
def P3605594828870321276.Spec : Prop :=
  ∀ n, P3605594828870321276.a n = A144390 (n + 1)

end A144390

/-! ## A144390.P3343794478499681052

`Δ[(n-1)*xor(n, -1)²]`
-/

namespace A144390.P3343794478499681052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * Int.xor (n : ℤ) (-1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144390.P3343794478499681052

namespace A144390

/-- `Δ[(n-1)*xor(n, -1)²]` -/
def P3343794478499681052.Spec : Prop :=
  ∀ n, P3343794478499681052.a n = A144390 (n + 1)

end A144390

/-! ## A144390.P13714633077832768619

`round((3-acot(n))*(n+1)²)`
-/

namespace A144390.P13714633077832768619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 - SequenceMachineLib.acot (n : ℝ)) * ((n + 1) ^ 2 : ℝ))

end

end A144390.P13714633077832768619

namespace A144390

/-- `round((3-acot(n))*(n+1)²)` -/
def P13714633077832768619.Spec : Prop :=
  ∀ n, P13714633077832768619.a n = A144390 (n + 1)

end A144390

/-! ## A144390.P16256348515585064509

`Δ[(n-1)*C(n+1, n)²]`
-/

namespace A144390.P16256348515585064509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.choose (n + 1) n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144390.P16256348515585064509

namespace A144390

/-- `Δ[(n-1)*C(n+1, n)²]` -/
def P16256348515585064509.Spec : Prop :=
  ∀ n, P16256348515585064509.a n = A144390 (n + 1)

end A144390

/-! ## A144390.P429116055447602161

`floor(6*n+a(n-1)+2)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A144390.P429116055447602161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  6 * n + (a (n - 1) + 2)

end

end A144390.P429116055447602161

namespace A144390

/-- `floor(6*n+a(n-1)+2)` -/
def P429116055447602161.Spec : Prop :=
  ∀ n, (P429116055447602161.a n : ℤ) = A144390 (n + 1)

end A144390

/-! ## A144390.P6674059787240279389

`Δ[2*n*C(n+1, 2)-n]`
-/

namespace A144390.P6674059787240279389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n * Nat.choose (n + 1) 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144390.P6674059787240279389

namespace A144390

/-- `Δ[2*n*C(n+1, 2)-n]` -/
def P6674059787240279389.Spec : Prop :=
  ∀ n, P6674059787240279389.a n = A144390 (n + 1)

end A144390

/-! ## A144390.P15540725258390037220

`abs(record[3*(1-n)²]-(n+2))`
-/

namespace A144390.P15540725258390037220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n + 2 : ℤ)|

end

end A144390.P15540725258390037220

namespace A144390

/-- `abs(record[3*(1-n)²]-(n+2))` -/
def P15540725258390037220.Spec : Prop :=
  ∀ n, P15540725258390037220.a n = A144390 (n + 1)

end A144390

/-! ## A144390.P1767265587365270303

`Δ[n*or(1, (n+2)*(n-1))]`
-/

namespace A144390.P1767265587365270303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.lor 1 ((n + 2 : ℤ) * ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144390.P1767265587365270303

namespace A144390

/-- `Δ[n*or(1, (n+2)*(n-1))]` -/
def P1767265587365270303.Spec : Prop :=
  ∀ n, P1767265587365270303.a n = A144390 (n + 1)

end A144390

/-! ## A144390.P11511859420758551649

`Δ[n*xor(1, (n+2)*(n-1))]`
-/

namespace A144390.P11511859420758551649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.xor 1 ((n + 2 : ℤ) * ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144390.P11511859420758551649

namespace A144390

/-- `Δ[n*xor(1, (n+2)*(n-1))]` -/
def P11511859420758551649.Spec : Prop :=
  ∀ n, P11511859420758551649.a n = A144390 (n + 1)

end A144390

/-! ## A144390.P17360239440983885343

`Δ[(n-1)*and(-3, (n+1)²)]`
-/

namespace A144390.P17360239440983885343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * Int.land (-3) ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144390.P17360239440983885343

namespace A144390

/-- `Δ[(n-1)*and(-3, (n+1)²)]` -/
def P17360239440983885343.Spec : Prop :=
  ∀ n, P17360239440983885343.a n = A144390 (n + 1)

end A144390

/-! ## A144390.P16372742976513844534

`Δ[(n-1)*∩[(n+1)², n²]]`
-/

namespace A144390.P16372742976513844534
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∧ ∃ j, f3 j = x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144390.P16372742976513844534

namespace A144390

/-- `Δ[(n-1)*∩[(n+1)², n²]]` -/
def P16372742976513844534.Spec : Prop :=
  ∀ n, P16372742976513844534.a n = A144390 (n + 1)

end A144390

/-!
# A144391: a(n) = 3*n^2 + n - 1.

The programs for A144391, the canonical program `A144391.P3028899788463531184` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144391 has offset 1).

The definition of A144391 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(n+1)²+n` (program `A144391.P3028899788463531184`, by `A144391.P3028899788463531184.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A144391.P3028899788463531184

`3*(n+1)²+n`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A144391

/-- `3*(n+1)²+n` -/
def P3028899788463531184.Spec : Prop :=
  ∀ n, (P3028899788463531184.a n : ℤ) = A144391 (n + 1)

theorem P3028899788463531184.correct : P3028899788463531184.Spec := by
  intro n
  simp only [A144391, Nat.add_sub_cancel]

end A144391

/-! ## A144391.P15884533116057618740

`A135370(2*(n+1))`
-/

namespace A144391.P15884533116057618740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135370 (2 * (n + 1))

end

end A144391.P15884533116057618740

namespace A144391

/-- `A135370(2*(n+1))` -/
def P15884533116057618740.Spec : Prop :=
  ∀ n, P15884533116057618740.a n = A144391 (n + 1)

end A144391

/-! ## A144391.P3006427953476524274

`∑[a(n-1)+6]` with `a(0)=3, a(1)=10`
-/

namespace A144391.P3006427953476524274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 10] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144391.P3006427953476524274

namespace A144391

/-- `∑[a(n-1)+6]` -/
def P3006427953476524274.Spec : Prop :=
  ∀ n, (P3006427953476524274.a n : ℤ) = A144391 (n + 1)

end A144391

/-! ## A144391.P6484687428327021012

`floor(3/acot((n+1)²)+n)`
-/

namespace A144391.P6484687428327021012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot ((n + 1) ^ 2 : ℝ) + (n : ℝ)⌋

end

end A144391.P6484687428327021012

namespace A144391

/-- `floor(3/acot((n+1)²)+n)` -/
def P6484687428327021012.Spec : Prop :=
  ∀ n, P6484687428327021012.a n = A144391 (n + 1)

end A144391

/-! ## A144391.P7416075731691502281

`xor(1, (3*n+1)*(n+2))`
-/

namespace A144391.P7416075731691502281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((3 * n + 1) * (n + 2))

end

end A144391.P7416075731691502281

namespace A144391

/-- `xor(1, (3*n+1)*(n+2))` -/
def P7416075731691502281.Spec : Prop :=
  ∀ n, (P7416075731691502281.a n : ℤ) = A144391 (n + 1)

end A144391

/-!
# A144393: Triangle read by rows (n >= 0, 0 <= k <= n): row n gives the coefficients in the expansion of x^n + n*x^(n - 1) + n*x + 1.

The programs for A144393, there is no canonical definition to state claims against.
-/

/-! ## A144393.P9695027632499271837

`A145677(n+1)+A145677(∑[char[∑[n]]]²-n)`
-/

namespace A144393.P9695027632499271837
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 (n + 1) + A145677 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A144393.P9695027632499271837

/-! ## A144393.P8193931502877243897

`A007318(n)*A105348(A284130(n+1))`
-/

namespace A144393.P8193931502877243897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A105348 (A284130 (n + 1)).toNat

end

end A144393.P8193931502877243897

/-! ## A144393.P5671913210317936436

`A077028(n)*A105348(A284130(n+1))`
-/

namespace A144393.P5671913210317936436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n * A105348 (A284130 (n + 1)).toNat

end

end A144393.P5671913210317936436

/-! ## A144393.P15614986897080180439

`A128229(A038722(n+1))+abs(A132013(n))`
-/

namespace A144393.P15614986897080180439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128229 (A038722 (n + 1)).toNat + |A132013 n|

end

end A144393.P15614986897080180439

/-! ## A144393.P2078460955954023331

`abs(A105348(A284130(n+1))*A108086(n))`
-/

namespace A144393.P2078460955954023331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A105348 (A284130 (n + 1)).toNat * A108086 n|

end

end A144393.P2078460955954023331

/-! ## A144393.P544307684225745663

`abs(A105348(A284130(n+1))*A130595(n))`
-/

namespace A144393.P544307684225745663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A105348 (A284130 (n + 1)).toNat * A130595 n|

end

end A144393.P544307684225745663

/-! ## A144393.P14463427152605411797

`A128229(A038722(n+1))+A128229(n+1)`
-/

namespace A144393.P14463427152605411797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128229 (A038722 (n + 1)).toNat + A128229 (n + 1)

end

end A144393.P14463427152605411797

/-! ## A144393.P17694114414197441583

`A128229(n+1)+A128229(A061579(n)+1)`
-/

namespace A144393.P17694114414197441583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128229 (n + 1) + A128229 (A061579 n + 1).toNat

end

end A144393.P17694114414197441583

/-! ## A144393.P2446929399112491986

`A128229(n+1)+A128229(A194922(n+1))`
-/

namespace A144393.P2446929399112491986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128229 (n + 1) + A128229 (A194922 (n + 1)).toNat

end

end A144393.P2446929399112491986

/-! ## A144393.P7007073695416487792

`A128229(A093995(n+1)-n)+A128229(n+1)`
-/

namespace A144393.P7007073695416487792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128229 (A093995 (n + 1) - (n : ℤ)).toNat + A128229 (n + 1)

end

end A144393.P7007073695416487792

/-!
# A144394: Triangle read by rows (n >= 4, 0 <= k <= n - 4): row n gives the coefficients in the expansion of ((x + 1)^n - (x^n + n*x^(n - 1) + n*x + 1))/x^2.

The programs for A144394, the canonical program `A144394.P4302788189746045217` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144394 has offset 4).

The definition of A144394 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6903 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144394.P6959557048323977439

`A168577(A080036(n+1))`
-/

namespace A144394.P6959557048323977439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168577 (A080036 (n + 1)).toNat

end

end A144394.P6959557048323977439

namespace A144394

/-- `A168577(A080036(n+1))` -/
def P6959557048323977439.Spec : Prop :=
  ∀ n, P6959557048323977439.a n = A144394 (n + 4)

end A144394

/-! ## A144394.P6856883524715468123

`A007318(lt[1, A004197(n)])`
-/

namespace A144394.P6856883524715468123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A144394.P6856883524715468123

namespace A144394

/-- `A007318(lt[1, A004197(n)])` -/
def P6856883524715468123.Spec : Prop :=
  ∀ n, P6856883524715468123.a n = A144394 (n + 4)

end A144394

/-! ## A144394.P18228228750550100370

`A007318(lt[1, A047996(n)])`
-/

namespace A144394.P18228228750550100370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A144394.P18228228750550100370

namespace A144394

/-- `A007318(lt[1, A047996(n)])` -/
def P18228228750550100370.Spec : Prop :=
  ∀ n, P18228228750550100370.a n = A144394 (n + 4)

end A144394

/-! ## A144394.P4489958446835938546

`A007318(lt[1, A052307(n)])`
-/

namespace A144394.P4489958446835938546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A144394.P4489958446835938546

namespace A144394

/-- `A007318(lt[1, A052307(n)])` -/
def P4489958446835938546.Spec : Prop :=
  ∀ n, P4489958446835938546.a n = A144394 (n + 4)

end A144394

/-! ## A144394.P16245190366916168272

`A007318(lt[1, A072233(n)])`
-/

namespace A144394.P16245190366916168272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A144394.P16245190366916168272

namespace A144394

/-- `A007318(lt[1, A072233(n)])` -/
def P16245190366916168272.Spec : Prop :=
  ∀ n, P16245190366916168272.a n = A144394 (n + 4)

end A144394

/-! ## A144394.P13857619663703964108

`A007318(lt[1, A288942(n)])`
-/

namespace A144394.P13857619663703964108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A144394.P13857619663703964108

namespace A144394

/-- `A007318(lt[1, A288942(n)])` -/
def P13857619663703964108.Spec : Prop :=
  ∀ n, P13857619663703964108.a n = A144394 (n + 4)

end A144394

/-! ## A144394.P839077422183637601

`A194118(n)+A028327(n)`
-/

namespace A144394.P839077422183637601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194118 n + A028327 n

end

end A144394.P839077422183637601

namespace A144394

/-- `A194118(n)+A028327(n)` -/
def P839077422183637601.Spec : Prop :=
  ∀ n, P839077422183637601.a n = A144394 (n + 4)

end A144394

/-! ## A144394.P9912931684557581679

`A192915(n)-A194119(n)`
-/

namespace A144394.P9912931684557581679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192915 n - A194119 n

end

end A144394.P9912931684557581679

namespace A144394

/-- `A192915(n)-A194119(n)` -/
def P9912931684557581679.Spec : Prop :=
  ∀ n, P9912931684557581679.a n = A144394 (n + 4)

end A144394

/-! ## A144394.P16681140218760629239

`A209518(lt[1, A007318(n)]+1)`
-/

namespace A144394.P16681140218760629239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209518 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A144394.P16681140218760629239

namespace A144394

/-- `A209518(lt[1, A007318(n)]+1)` -/
def P16681140218760629239.Spec : Prop :=
  ∀ n, P16681140218760629239.a n = A144394 (n + 4)

end A144394

/-! ## A144394.P1872520010866164118

`A007318(lt[2, A054124(n+1)])`
-/

namespace A144394.P1872520010866164118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A144394.P1872520010866164118

namespace A144394

/-- `A007318(lt[2, A054124(n+1)])` -/
def P1872520010866164118.Spec : Prop :=
  ∀ n, P1872520010866164118.a n = A144394 (n + 4)

end A144394

/-! ## A144394.P4302788189746045217

`A074909(lt[2, A002262(n+1)])`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A144394

/-- `A074909(lt[2, A002262(n+1)])` -/
def P4302788189746045217.Spec : Prop :=
  ∀ n, P4302788189746045217.a n = A144394 (n + 4)

theorem P4302788189746045217.correct : P4302788189746045217.Spec := by
  intro n
  simp only [A144394, Nat.add_sub_cancel]

end A144394

/-! ## A144394.P15198536090785049512

`A007318(lt[2, A054124(n)]-1)`
-/

namespace A144394.P15198536090785049512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n - 1)

end

end A144394.P15198536090785049512

namespace A144394

/-- `A007318(lt[2, A054124(n)]-1)` -/
def P15198536090785049512.Spec : Prop :=
  ∀ n, P15198536090785049512.a n = A144394 (n + 4)

end A144394

/-! ## A144394.P17824497476073616460

`A074909(lt[2, A002262(n)]-1)`
-/

namespace A144394.P17824497476073616460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n - 1)

end

end A144394.P17824497476073616460

namespace A144394

/-- `A074909(lt[2, A002262(n)]-1)` -/
def P17824497476073616460.Spec : Prop :=
  ∀ n, P17824497476073616460.a n = A144394 (n + 4)

end A144394

/-! ## A144394.P15733180677380464700

`A007318(lt[3, A002262(n+2)])`
-/

namespace A144394.P15733180677380464700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A144394.P15733180677380464700

namespace A144394

/-- `A007318(lt[3, A002262(n+2)])` -/
def P15733180677380464700.Spec : Prop :=
  ∀ n, P15733180677380464700.a n = A144394 (n + 4)

end A144394

/-! ## A144394.P15739621159125138420

`A194121(n)+A014410(n+2)`
-/

namespace A144394.P15739621159125138420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194121 n + A014410 (n + 2)

end

end A144394.P15739621159125138420

namespace A144394

/-- `A194121(n)+A014410(n+2)` -/
def P15739621159125138420.Spec : Prop :=
  ∀ n, P15739621159125138420.a n = A144394 (n + 4)

end A144394

/-! ## A144394.P2670897820605772629

`A194121(n)+A028327(n)/2`
-/

namespace A144394.P2670897820605772629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194121 n : ℚ) + (A028327 n : ℚ) / 2

end

end A144394.P2670897820605772629

namespace A144394

/-- `A194121(n)+A028327(n)/2` -/
def P2670897820605772629.Spec : Prop :=
  ∀ n, P2670897820605772629.a n = (A144394 (n + 4) : ℚ)

end A144394

/-! ## A144394.P3219154813540014904

`2*A194121(n)-A194118(n)`
-/

namespace A144394.P3219154813540014904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A194121 n - A194118 n

end

end A144394.P3219154813540014904

namespace A144394

/-- `2*A194121(n)-A194118(n)` -/
def P3219154813540014904.Spec : Prop :=
  ∀ n, P3219154813540014904.a n = A144394 (n + 4)

end A144394

/-! ## A144394.P789712317898443245

`A007318(lt[n+2, A134059(n)])`
-/

namespace A144394.P789712317898443245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A144394.P789712317898443245

namespace A144394

/-- `A007318(lt[n+2, A134059(n)])` -/
def P789712317898443245.Spec : Prop :=
  ∀ n, P789712317898443245.a n = A144394 (n + 4)

end A144394

/-! ## A144394.P10329407355215982235

`A007318(lt[2, A134059(n)-n])`
-/

namespace A144394.P10329407355215982235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134059 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A144394.P10329407355215982235

namespace A144394

/-- `A007318(lt[2, A134059(n)-n])` -/
def P10329407355215982235.Spec : Prop :=
  ∀ n, P10329407355215982235.a n = A144394 (n + 4)

end A144394

/-! ## A144394.P15585155527310853780

`A007318(lt[n, C(A007318(n), 2)])`
-/

namespace A144394.P15585155527310853780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007318 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A144394.P15585155527310853780

namespace A144394

/-- `A007318(lt[n, C(A007318(n), 2)])` -/
def P15585155527310853780.Spec : Prop :=
  ∀ n, P15585155527310853780.a n = A144394 (n + 4)

end A144394

/-!
# A144395: A designed polynomial set that gives a {1,6,1} quadratic and gives a symmetrical triangle of coefficients: p(x,n)=If[n == 2, 1, ((x + 1)^n -If[n == 0, 1, x^n + (n - 1)*x^(n - 1) + (n - 1)*x + 1])/x],.

The programs for A144395, there is no canonical definition to state claims against.
-/

/-! ## A144395.P5892606844400399608

`A184049(comp[∑[n-2]]+1)`
-/

namespace A144395.P5892606844400399608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184049 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A144395.P5892606844400399608

/-! ## A144395.P4935288346154862751

`A209518(n+1-char[∑[n]])`
-/

namespace A144395.P4935288346154862751
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209518 (n + 1 - (if ∃ j, f1 j = n then 1 else 0))

end

end A144395.P4935288346154862751

/-! ## A144395.P7907203088806658875

`A104712(char[∑[n-1]]+1+n)`
-/

namespace A144395.P7907203088806658875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104712 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 + n)

end

end A144395.P7907203088806658875

/-! ## A144395.P16821431253981662435

`A153861(comp[∑[n-2]]+1-char[∑[n]])`
-/

namespace A144395.P16821431253981662435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153861 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 - (if ∃ j, f3 j = n then 1 else 0))

end

end A144395.P16821431253981662435

/-! ## A144395.P12339415523538728897

`A135278(comp[∑[n-2]]+1-char[∑[n+1]])`
-/

namespace A144395.P12339415523538728897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 - (if ∃ j, f3 j = n then 1 else 0))

end

end A144395.P12339415523538728897

/-! ## A144395.P5191458609051690552

`A178244(A143088(n))`
-/

namespace A144395.P5191458609051690552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178244 (A143088 n).toNat

end

end A144395.P5191458609051690552

/-! ## A144395.P7105060624223526304

`A318762(A073060(n))`
-/

namespace A144395.P7105060624223526304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318762 (A073060 n).toNat

end

end A144395.P7105060624223526304

/-! ## A144395.P10637655252577810213

`A318810(2*A073060(n))`
-/

namespace A144395.P10637655252577810213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318810 (2 * A073060 n).toNat

end

end A144395.P10637655252577810213

/-! ## A144395.P4247459579178751528

`A124772(A136318(n+2)-2)`
-/

namespace A144395.P4247459579178751528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124772 (A136318 (n + 2) - 2).toNat

end

end A144395.P4247459579178751528

/-! ## A144395.P16773215149233623342

`A014410(n+2)-A103516(n)`
-/

namespace A144395.P16773215149233623342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014410 (n + 2) - A103516 n

end

end A144395.P16773215149233623342

/-!
# A144396: The odd numbers greater than 1.

The programs for A144396, the canonical program `A144396.P18396969748453668116` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144396 has offset 1).

The definition of A144396 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144396.P18396969748453668116

`2*(n+1)+1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A144396

/-- `2*(n+1)+1` -/
def P18396969748453668116.Spec : Prop :=
  ∀ n, (P18396969748453668116.a n : ℤ) = A144396 (n + 1)

theorem P18396969748453668116.correct : P18396969748453668116.Spec := by
  intro n
  simp only [A144396, Nat.add_sub_cancel]

end A144396

/-!
# A144397: Triangle read by rows: t(n,m)=(1 + n!)*Binomial[n, m]-n!/Binomial[n, m].

The programs for A144397, there is no canonical definition to state claims against.
-/

/-! ## A144397.P3705789651038098793

`A047972(A022176(n))`
-/

namespace A144397.P3705789651038098793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047972 (A022176 n).toNat

end

end A144397.P3705789651038098793

/-! ## A144397.P14668015936782562453

`A177054(A157207(n))`
-/

namespace A144397.P14668015936782562453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177054 (A157207 n).toNat

end

end A144397.P14668015936782562453

/-! ## A144397.P859396726788567740

`A230420(A174301(n))`
-/

namespace A144397.P859396726788567740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230420 (A174301 n).toNat

end

end A144397.P859396726788567740

/-! ## A144397.P10992567078727677133

`A230420(A174378(n))`
-/

namespace A144397.P10992567078727677133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230420 (A174378 n).toNat

end

end A144397.P10992567078727677133

/-! ## A144397.P5061773692317978688

`A362977(A156584(n))`
-/

namespace A144397.P5061773692317978688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362977 (A156584 n).toNat

end

end A144397.P5061773692317978688

/-!
# A144398: Coefficients of a symmetrical polynomial set:( Pascal's triangle with central zeros) p(x,n)=If[n <= 4, Sum[Binomial[n, i]*x^i, {i, 0, n}], x^n + n*x^(n - 1) + Binomial[n, 2]*x^(n - 2) + n*x + Binomial[n, 2]*x^2 + 1].

The programs for A144398, there is no canonical definition to state claims against.
-/

/-! ## A144398.P9301788707562735570

`C(A007318(n), A119335(n)^5)`
-/

namespace A144398.P9301788707562735570
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007318 n).toNat (A119335 n ^ 5).toNat

end

end A144398.P9301788707562735570

/-! ## A144398.P8659137315123161773

`(1-val(A140356(n), 3))*A007318(n)`
-/

namespace A144398.P8659137315123161773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (SequenceMachineLib.valuation (A140356 n).toNat 3 : ℤ)) * A007318 n

end

end A144398.P8659137315123161773

/-! ## A144398.P1704006875609163386

`(1-val(A140356(n), 3))*abs(A108086(n))`
-/

namespace A144398.P1704006875609163386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (SequenceMachineLib.valuation (A140356 n).toNat 3 : ℤ)) * |A108086 n|

end

end A144398.P1704006875609163386

/-! ## A144398.P17651737822515558886

`A007318(n)*A010057(A119335(n))`
-/

namespace A144398.P17651737822515558886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A010057 (A119335 n).toNat

end

end A144398.P17651737822515558886

/-! ## A144398.P10410952438762920332

`A007318(n)*A000161(A140356(n))`
-/

namespace A144398.P10410952438762920332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000161 (A140356 n).toNat

end

end A144398.P10410952438762920332

/-! ## A144398.P12748795139539463226

`A007318(n)*A010056(A152719(n))`
-/

namespace A144398.P12748795139539463226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A010056 (A152719 n).toNat

end

end A144398.P12748795139539463226

/-! ## A144398.P1011116264398973775

`A007318(n)*A014412(A152714(n))`
-/

namespace A144398.P1011116264398973775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A014412 (A152714 n).toNat

end

end A144398.P1011116264398973775

/-! ## A144398.P18121351249616328413

`A007318(n)*A000007(A180472(n))`
-/

namespace A144398.P18121351249616328413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000007 (A180472 n).toNat

end

end A144398.P18121351249616328413

/-! ## A144398.P8103989523072777022

`lcm(A007318(n), A015230(A152716(n)))`
-/

namespace A144398.P8103989523072777022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A015230 (A152716 n).toNat)

end

end A144398.P8103989523072777022

/-! ## A144398.P11165882843597138523

`A125093(A088925(n))`
-/

namespace A144398.P11165882843597138523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125093 (A088925 n).toNat

end

end A144398.P11165882843597138523

/-!
# A144399: Triangle in A144385 with rows left-adjusted.

The programs for A144399, there is no canonical definition to state claims against.
-/

/-! ## A144399.P15171531995722470205

`A144385(lt[0, A144385(n)])`
-/

namespace A144399.P15171531995722470205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144385 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144385 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A144399.P15171531995722470205

/-! ## A144399.P8915050012413712998

`A144385(A000217(floor(sqrt(n)))+n)`
-/

namespace A144399.P8915050012413712998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144385 (A000217 (Nat.sqrt n) + (n : ℤ)).toNat

end

end A144399.P8915050012413712998

/-! ## A144399.P8331232397097961629

`filter[A144385(n), A022930(#)]`
-/

namespace A144399.P8331232397097961629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144385 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022930 (f1 j).toNat = 1) n)

end

end A144399.P8331232397097961629

/-! ## A144399.P3795831061723953807

`filter[A144385(n), A144609(#)]`
-/

namespace A144399.P3795831061723953807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144385 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144609 (f1 j).toNat = 1) n)

end

end A144399.P3795831061723953807

/-! ## A144399.P5394037502216611911

`filter[A144385(n), A145568(#)]`
-/

namespace A144399.P5394037502216611911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144385 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A144399.P5394037502216611911

