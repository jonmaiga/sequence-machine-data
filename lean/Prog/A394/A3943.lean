import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A394301: a(n) is the number of unit squares in the square lattice, divided by 4, that have 1 vertex strictly inside and 3 vertices strictly outside the circle (x-1/2)^2 + (y-1/2)^2 = n, i.e., the circle centered at the deep hole.

The programs for A394301, there is no canonical definition to state claims against.
-/

/-! ## A394301.P13707383943251055322

`(A394303(n)+1)%(n+1)`
-/

namespace A394301.P13707383943251055322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A394303 n + 1) (n + 1 : ℤ)

end

end A394301.P13707383943251055322

/-! ## A394301.P8775934312492886926

`A394303(n)+A057427(n)`
-/

namespace A394301.P8775934312492886926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394303 n + A057427 n

end

end A394301.P8775934312492886926

/-! ## A394301.P3033881622382429454

`A394303(n)-A057428(n)`
-/

namespace A394301.P3033881622382429454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394303 n - A057428 n

end

end A394301.P3033881622382429454

/-! ## A394301.P13841533110163742930

`A394303(n)+log2(A040000(n))`
-/

namespace A394301.P13841533110163742930
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A394303 n : ℝ) + Real.logb 2 (A040000 n : ℝ)

end

end A394301.P13841533110163742930

/-! ## A394301.P15174616741475467632

`A394303(n)+1-A000007(n)`
-/

namespace A394301.P15174616741475467632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394303 n + (1 - A000007 n)

end

end A394301.P15174616741475467632

/-! ## A394301.P15721483511714892592

`A394303(n)+A301471(A001316(n))`
-/

namespace A394301.P15721483511714892592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394303 n + A301471 (A001316 n).toNat

end

end A394301.P15721483511714892592

/-! ## A394301.P11153902669199474442

`A394303(n)+A055396(A000010(2*n+1))`
-/

namespace A394301.P11153902669199474442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394303 n + A055396 (A000010 (2 * n + 1)).toNat

end

end A394301.P11153902669199474442

/-! ## A394301.P5566516850590618186

`A394303(n)+char[A194857(n+1)]`
-/

namespace A394301.P5566516850590618186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194857 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394303 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A394301.P5566516850590618186

/-! ## A394301.P205703235714364974

`A394303(n)+A057979(A320131(n))`
-/

namespace A394301.P205703235714364974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394303 n + A057979 (A320131 n).toNat

end

end A394301.P205703235714364974

/-! ## A394301.P17822344826968333395

`A394303(n)+A071625(A000961(n+1))`
-/

namespace A394301.P17822344826968333395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394303 n + A071625 (A000961 (n + 1)).toNat

end

end A394301.P17822344826968333395

/-! ## A394301.P1592660273856536702

`A394303(n)+A046079(A005382(n+1))`
-/

namespace A394301.P1592660273856536702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394303 n + A046079 (A005382 (n + 1)).toNat

end

end A394301.P1592660273856536702

/-!
# A394303: a(n) is the number of unit squares in the square lattice, divided by 4, that have 3 vertices strictly inside and 1 vertex strictly outside the circle (x-1/2)^2 + (y-1/2)^2 = n, i.e., the circle centered at the deep hole.

The programs for A394303, there is no canonical definition to state claims against.
-/

/-! ## A394303.P15817151186328306376

`(A394301(n)-1)%(n+1)`
-/

namespace A394303.P15817151186328306376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A394301 n - 1) (n + 1 : ℤ)

end

end A394303.P15817151186328306376

/-! ## A394303.P5937419969630928759

`A394301(A028310(n))-1`
-/

namespace A394303.P5937419969630928759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394301 (A028310 n).toNat - 1

end

end A394303.P5937419969630928759

/-! ## A394303.P6802427003329767371

`A394301(n)+A057428(n)`
-/

namespace A394303.P6802427003329767371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394301 n + A057428 n

end

end A394303.P6802427003329767371

/-! ## A394303.P2221286922009918750

`A394301(n)-A057427(n)`
-/

namespace A394303.P2221286922009918750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394301 n - A057427 n

end

end A394303.P2221286922009918750

/-! ## A394303.P3548454951856819695

`A394301(n)-log2(A040000(n))`
-/

namespace A394303.P3548454951856819695
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A394301 n : ℝ) - Real.logb 2 (A040000 n : ℝ)

end

end A394303.P3548454951856819695

/-! ## A394303.P8662083119093064020

`A394301(n)-A055396(A001316(n))`
-/

namespace A394303.P8662083119093064020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394301 n - A055396 (A001316 n).toNat

end

end A394303.P8662083119093064020

/-! ## A394303.P8542441683464607301

`A394301(n)-A159075(n+1)-1`
-/

namespace A394303.P8542441683464607301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394301 n - A159075 (n + 1) - 1

end

end A394303.P8542441683464607301

/-! ## A394303.P16741351133678035645

`A393696(A393698(A394301(n)))`
-/

namespace A394303.P16741351133678035645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393696 (A393698 (A394301 n).toNat).toNat

end

end A394303.P16741351133678035645

/-! ## A394303.P7909032835430193786

`A394301(n)-char[A172002(n+1)]`
-/

namespace A394303.P7909032835430193786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172002 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394301 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A394303.P7909032835430193786

/-! ## A394303.P15673347508111434568

`A394301(n)-char[A289439(n+2)]`
-/

namespace A394303.P15673347508111434568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289439 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394301 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A394303.P15673347508111434568

/-! ## A394303.P7474463214371358090

`A394301(n)-A055396(A008574(n))`
-/

namespace A394303.P7474463214371358090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394301 n - A055396 (A008574 n).toNat

end

end A394303.P7474463214371358090

/-! ## A394303.P4890434183927462407

`A394301(n)-A071625(A000961(n+1))`
-/

namespace A394303.P4890434183927462407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394301 n - A071625 (A000961 (n + 1)).toNat

end

end A394303.P4890434183927462407

/-! ## A394303.P10498771853958398274

`A394301(n)-A068494(A000040(n+1))`
-/

namespace A394303.P10498771853958398274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394301 n - A068494 (A000040 (n + 1)).toNat

end

end A394303.P10498771853958398274

/-! ## A394303.P5734147588375919249

`A394301(n)-A001221(A302596(n+1))`
-/

namespace A394303.P5734147588375919249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394301 n - A001221 (A302596 (n + 1)).toNat

end

end A394303.P5734147588375919249

/-! ## A394303.P17564771019312169939

`A394301(n)-A033831(A082885(n+1))`
-/

namespace A394303.P17564771019312169939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394301 n - A033831 (A082885 (n + 1)).toNat

end

end A394303.P17564771019312169939

/-!
# A394307: Number of induced cubes in the n X n zebra graph.

The programs for A394307, the canonical program `A394307.P9585517144181321218` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394307 has offset 1).

The definition of A394307 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394307.P9585517144181321218

`ogf((1+x+8x^3+4x^5+10x^6-2x^7+8x^8+x^10+x^11)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A394307

/-- `ogf((1+x+8x^3+4x^5+10x^6-2x^7+8x^8+x^10+x^11)/(1-3x+3x^2-x^3))` -/
def P9585517144181321218.Spec : Prop :=
  ∀ n, P9585517144181321218.a n = A394307 (n + 1)

theorem P9585517144181321218.correct : P9585517144181321218.Spec := by
  intro n
  simp only [A394307, Nat.add_sub_cancel]

end A394307

/-!
# A394308: a(n) is the number of n-digit numbers that are primes or squares of primes.

The programs for A394308, there is no canonical definition to state claims against.
-/

/-! ## A394308.P17378724713672807716

`A006879(n+1)+A379566(n+1)`
-/

namespace A394308.P17378724713672807716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1) + A379566 (n + 1)

end

end A394308.P17378724713672807716

/-! ## A394308.P3316701535685981355

`Δ[A122121(n)+A006880(n)]`
-/

namespace A394308.P3316701535685981355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 n + A006880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A394308.P3316701535685981355

/-! ## A394308.P17923129084937883269

`Δ[A122121(n)+∑[A006879(n)]]`
-/

namespace A394308.P17923129084937883269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A394308.P17923129084937883269

/-! ## A394308.P6429522004062969658

`A006879(n+1)+Δ[A122121(n)]`
-/

namespace A394308.P6429522004062969658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1) + (f1 (n + 1) - f1 n)

end

end A394308.P6429522004062969658

/-! ## A394308.P17979139896282504008

`Δ[A122121(n)+A090226(n+1)]`
-/

namespace A394308.P17979139896282504008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 n + A090226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A394308.P17979139896282504008

/-!
# A394309: Number of peakless Motzkin paths of length n with up steps in n colors.

The programs for A394309, there is no canonical definition to state claims against.
-/

/-! ## A394309.P11194016635674124036

`A110656(∑[∑[(3*n)!/(n!*(2*n+1)!)]])`
-/

namespace A394309.P11194016635674124036
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (3 * n) : ℚ) / (Nat.factorial n * Nat.factorial (2 * n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A394309.P11194016635674124036

/-! ## A394309.P1743902255474879368

`A110656(∑[A104859(n)])`
-/

namespace A394309.P1743902255474879368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A394309.P1743902255474879368

/-! ## A394309.P906740774419729808

`A110656(∑[∑[A001764(n)]])`
-/

namespace A394309.P906740774419729808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A394309.P906740774419729808

/-!
# A394310: a(n) is the number of n-digit numbers that are not powers of primes.

The programs for A394310, there is no canonical definition to state claims against.
-/

/-! ## A394310.P9836921115310943229

`Δ[A065894(n)+A057428(n)-A076048(n)]`
-/

namespace A394310.P9836921115310943229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065894 n + A057428 n - A076048 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A394310.P9836921115310943229

/-! ## A394310.P4153290315596444615

`Δ[A065894(n)-A057427(n)-A076048(n)]`
-/

namespace A394310.P4153290315596444615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065894 n - A057427 n - A076048 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A394310.P4153290315596444615

/-!
# A394314: a(n) = 2^(2*n-1) - 3^n + 2^n - 1, n > 0; a(0)=0.

The programs for A394314, the canonical program `A394314.P7002470424039581728` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394314 has offset 0).

The definition of A394314 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394314.P12891755016610119145

`ogf((2x^2-8x^3+12x^4)/(1-10x+35x^2-50x^3+24x^4))`
-/

namespace A394314.P12891755016610119145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, -8, 12] [1, -10, 35, -50, 24] n

end

end A394314.P12891755016610119145

namespace A394314

/-- `ogf((2x^2-8x^3+12x^4)/(1-10x+35x^2-50x^3+24x^4))` -/
def P12891755016610119145.Spec : Prop :=
  ∀ n, P12891755016610119145.a n = A394314 n

end A394314

/-! ## A394314.P7002470424039581728

`10*a(n-1)-35*a(n-2)+50*a(n-3)-24*a(n-4)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=12, a(4)=62`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A394314

/-- `10*a(n-1)-35*a(n-2)+50*a(n-3)-24*a(n-4)` -/
def P7002470424039581728.Spec : Prop :=
  ∀ n, P7002470424039581728.a n = A394314 n

theorem P7002470424039581728.correct : P7002470424039581728.Spec := by
  intro n
  simp only [A394314]

end A394314

/-! ## A394314.P18268251108581888250

`A134165(n)-A003945(n)`
-/

namespace A394314.P18268251108581888250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134165 n - A003945 n

end

end A394314.P18268251108581888250

namespace A394314

/-- `A134165(n)-A003945(n)` -/
def P18268251108581888250.Spec : Prop :=
  ∀ n, P18268251108581888250.a n = A394314 n

end A394314

/-! ## A394314.P15202767791278980568

`A081294(n)-A083323(n)`
-/

namespace A394314.P15202767791278980568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n - A083323 n

end

end A394314.P15202767791278980568

namespace A394314

/-- `A081294(n)-A083323(n)` -/
def P15202767791278980568.Spec : Prop :=
  ∀ n, P15202767791278980568.a n = A394314 n

end A394314

/-! ## A394314.P12083828030527941630

`A084869(n)-A094373(n)`
-/

namespace A394314.P12083828030527941630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084869 n - A094373 n

end

end A394314.P12083828030527941630

namespace A394314

/-- `A084869(n)-A094373(n)` -/
def P12083828030527941630.Spec : Prop :=
  ∀ n, P12083828030527941630.a n = A394314 n

end A394314

/-! ## A394314.P10802138316210311040

`A133789(n)-A131577(n)`
-/

namespace A394314.P10802138316210311040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133789 n - A131577 n

end

end A394314.P10802138316210311040

namespace A394314

/-- `A133789(n)-A131577(n)` -/
def P10802138316210311040.Spec : Prop :=
  ∀ n, P10802138316210311040.a n = A394314 n

end A394314

/-! ## A394314.P9357984292164480276

`A011782(2*n)-A083323(n)`
-/

namespace A394314.P9357984292164480276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n) - A083323 n

end

end A394314.P9357984292164480276

namespace A394314

/-- `A011782(2*n)-A083323(n)` -/
def P9357984292164480276.Spec : Prop :=
  ∀ n, P9357984292164480276.a n = A394314 n

end A394314

/-! ## A394314.P8532279375341015519

`A093356(n+1)-A074506(n)`
-/

namespace A394314.P8532279375341015519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093356 (n + 1) - A074506 n

end

end A394314.P8532279375341015519

namespace A394314

/-- `A093356(n+1)-A074506(n)` -/
def P8532279375341015519.Spec : Prop :=
  ∀ n, P8532279375341015519.a n = A394314 n

end A394314

/-!
# A394317: Concatenated permutations of integers in decimal.

The programs for A394317, there is no canonical definition to state claims against.
-/

/-! ## A394317.P8828999659317476008

`A235049(A030299(n+1))`
-/

namespace A394317.P8828999659317476008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A030299 (n + 1)).toNat

end

end A394317.P8828999659317476008

/-! ## A394317.P6379469404052598333

`∩[A031183(n+1), A215014(n+1)]`
-/

namespace A394317.P6379469404052598333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394317.P6379469404052598333

/-! ## A394317.P13278063757368477096

`∩[A031183(n+1), A376300(n+1)]`
-/

namespace A394317.P13278063757368477096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394317.P13278063757368477096

/-! ## A394317.P11462877478588945056

`∩[A281943(n+1), A376314(n+1)]`
-/

namespace A394317.P11462877478588945056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394317.P11462877478588945056

/-!
# A394318: Triangle T(n,k), n >= 0, 0 <= k <= n, read by rows, where T(0,0) = 1 and T(n,k) = 2*(k+1)*(2*k+1) * T(n-1,k+1) + (4*(4*k + 1)*n + 8*k^2 - 8*k - 3) * T(n-1,k) + 2*(4*n + 2*k - 5)*(2*n + k - 1) * T(n-1,k-1), with T(n,k) = 0 if k < 0 or k >= n+1.

The programs for A394318, there is no canonical definition to state claims against.
-/

/-! ## A394318.P16625090021776190938

`A001770(a(n-1))+n` with `a(0)=1, a(1)=1`
-/

namespace A394318.P16625090021776190938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A001770 (a (n - 1)).toNat + (n : ℤ)

end

end A394318.P16625090021776190938

/-!
# A394319: a(n) = (2*n)! * [x^(2*n)] (C(x)'' - 2*x*C(x)' - C(x)) / 2, where C(x) satisfies C(x) = cosh( Integral C(x)^3 dx ).

The programs for A394319, there is no canonical definition to state claims against.
-/

/-! ## A394319.P5099626817875701611

`lcm(A341593(n+1), A394318(A000124(n)))`
-/

namespace A394319.P5099626817875701611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A341593 (n + 1)) (A394318 (A000124 n).toNat)

end

end A394319.P5099626817875701611

/-!
# A394320: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where A(n,k) = (2*n)! * [x^(2*n)] (f(x)^k + f(-x)^k)/2 and f(x) = 1/(cos(x) + sin(x)).

The programs for A394320, there is no canonical definition to state claims against.
-/

/-! ## A394320.P6892803924495890987

`A235605(n+1)%A084268(A317332(n+1))`
-/

namespace A394320.P6892803924495890987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235605 (n + 1)) (A084268 (A317332 (n + 1)).toNat)

end

end A394320.P6892803924495890987

/-!
# A394321: Number of partitions p of n such that (maximal multiplicity of the parts of p) <= 2 * (maximal part of p).

The programs for A394321, there is no canonical definition to state claims against.
-/

/-! ## A394321.P17867673691685926716

`A025065(2*n)-A335523(A098613(n))`
-/

namespace A394321.P17867673691685926716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025065 (2 * n) - A335523 (A098613 n).toNat

end

end A394321.P17867673691685926716

/-! ## A394321.P6633435193126776568

`A156251(A003318(n+1))+A143592(n+1)`
-/

namespace A394321.P6633435193126776568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156251 (A003318 (n + 1)).toNat + A143592 (n + 1)

end

end A394321.P6633435193126776568

/-! ## A394321.P12851637883529318165

`A238866(n+1)-A287170(A002216(n+1))`
-/

namespace A394321.P12851637883529318165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238866 (n + 1) - A287170 (A002216 (n + 1)).toNat

end

end A394321.P12851637883529318165

/-! ## A394321.P15568947681627902686

`A240328(A118285(n+2))+A015744(2*(n+1))`
-/

namespace A394321.P15568947681627902686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240328 (A118285 (n + 2)).toNat + A015744 (2 * (n + 1))

end

end A394321.P15568947681627902686

/-!
# A394322: Number of partitions p of n such that (minimal multiplicity of the parts of p) >= (minimal part of p).

The programs for A394322, there is no canonical definition to state claims against.
-/

/-! ## A394322.P15081273737742477744

`A336121(A007689(n))+A000041(n)`
-/

namespace A394322.P15081273737742477744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336121 (A007689 n).toNat + A000041 n

end

end A394322.P15081273737742477744

/-! ## A394322.P15807738497207076

`A369239(A102627(n+1))+A000041(n)`
-/

namespace A394322.P15807738497207076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369239 (A102627 (n + 1)).toNat + A000041 n

end

end A394322.P15807738497207076

/-! ## A394322.P3064331034016508788

`A178687(A286111(n+3))+A000041(n)`
-/

namespace A394322.P3064331034016508788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178687 (A286111 (n + 3)).toNat + A000041 n

end

end A394322.P3064331034016508788

/-!
# A394324: Number of partitions p of n such that (minimal multiplicity of the parts of p) >= (maximal part of p).

The programs for A394324, there is no canonical definition to state claims against.
-/

/-! ## A394324.P7777142216366264043

`A000120(A167015(n)+A005043(n))`
-/

namespace A394324.P7777142216366264043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A167015 n + A005043 n).toNat

end

end A394324.P7777142216366264043

/-!
# A394325: Number of partitions p of n such that (minimal multiplicity of the parts of p) >= 2 * (maximal part of p).

The programs for A394325, there is no canonical definition to state claims against.
-/

/-! ## A394325.P7850767348720226933

`A334440(A274936(n))`
-/

namespace A394325.P7850767348720226933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334440 (A274936 n).toNat

end

end A394325.P7850767348720226933

/-! ## A394325.P2530551993118608435

`A102671(A049915(n+2))`
-/

namespace A394325.P2530551993118608435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102671 (A049915 (n + 2)).toNat

end

end A394325.P2530551993118608435

/-! ## A394325.P7061015788641929171

`A001221(A365004(n)+A000129(n))`
-/

namespace A394325.P7061015788641929171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A365004 n + A000129 n).toNat

end

end A394325.P7061015788641929171

/-! ## A394325.P2226050000401189945

`A001222(A229886(n)+A001222(n+1))`
-/

namespace A394325.P2226050000401189945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A229886 n + A001222 (n + 1)).toNat

end

end A394325.P2226050000401189945

/-! ## A394325.P12389756184496984449

`A008481(A229886(n)+A008481(n+1))`
-/

namespace A394325.P12389756184496984449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (A229886 n + A008481 (n + 1)).toNat

end

end A394325.P12389756184496984449

/-!
# A394327: Indices corresponding to records in A393379.

The programs for A394327, there is no canonical definition to state claims against.
-/

/-! ## A394327.P4510081478539815680

`A134930(A291249(n))-A096869(n+1)`
-/

namespace A394327.P4510081478539815680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134930 (A291249 n).toNat - A096869 (n + 1)

end

end A394327.P4510081478539815680

/-! ## A394327.P1731936271230605504

`record[A304750(A001222(3*n+4)*A074605(n))]`
-/

namespace A394327.P1731936271230605504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304750 (A001222 (3 * n + 4) * A074605 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A394327.P1731936271230605504

/-!
# A394328: Irregular triangle read by rows: exponents of the primes in the prime factorization of A394167(n) (primes in increasing order).

The programs for A394328, there is no canonical definition to state claims against.
-/

/-! ## A394328.P9591316920321937257

`A279316(A168388(3*n+1))+A131371(n+1)`
-/

namespace A394328.P9591316920321937257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279316 (A168388 (3 * n + 1)).toNat + A131371 (n + 1)

end

end A394328.P9591316920321937257

/-!
# A394329: a(n) = A394328(2*n,1); that is, the bipartition of the first column of A394328.

The programs for A394329, there is no canonical definition to state claims against.
-/

/-! ## A394329.P18170157789159439996

`A187059(n)+A005187(n)`
-/

namespace A394329.P18170157789159439996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187059 n + A005187 n

end

end A394329.P18170157789159439996

/-! ## A394329.P11591819090777842548

`A187059(n)+A011371(2*n)`
-/

namespace A394329.P11591819090777842548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187059 n + A011371 (2 * n)

end

end A394329.P11591819090777842548

/-! ## A394329.P15812286465048214524

`A187059(2*n)-A187059(n)`
-/

namespace A394329.P15812286465048214524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187059 (2 * n) - A187059 n

end

end A394329.P15812286465048214524

/-! ## A394329.P7713482231206970235

`n+A187059(n)+A011371(n)`
-/

namespace A394329.P7713482231206970235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + (A187059 n + A011371 n)

end

end A394329.P7713482231206970235

/-! ## A394329.P341667997716831163

`A391958(n)+n-A187059(n)`
-/

namespace A394329.P341667997716831163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391958 n + (n : ℤ) - A187059 n

end

end A394329.P341667997716831163

/-!
# A394339: Number of unlabeled posemigroups on n elements.

The programs for A394339, there is no canonical definition to state claims against.
-/

/-! ## A394339.P18391997536054225195

`A367135(n)+A334273(A000228(n+1))`
-/

namespace A394339.P18391997536054225195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367135 n + A334273 (A000228 (n + 1)).toNat

end

end A394339.P18391997536054225195

/-!
# A394340: Number of self-avoiding walks on the cubic lattice with the first three orthogonal steps specified (see Comments).

The programs for A394340, there is no canonical definition to state claims against.
-/

/-! ## A394340.P6604656003231669422

`(A001412(n+1)+24*A046171(n+1)+18)/48`
-/

namespace A394340.P6604656003231669422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001412 (n + 1) + 24 * A046171 (n + 1) + 18 : ℚ) / 48

end

end A394340.P6604656003231669422

/-! ## A394340.P4545531362547254151

`A157271(A151102(n))`
-/

namespace A394340.P4545531362547254151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A151102 n).toNat

end

end A394340.P4545531362547254151

/-!
# A394342: a(n) = n*(3^n - 1) + 1.

The programs for A394342, the canonical program `A394342.P5072940989807657412` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394342 has offset 0).

The definition of A394342 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3^n-1)+1` (program `A394342.P5072940989807657412`, by `A394342.P5072940989807657412.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A394342.P5072940989807657412

`n*(3^n-1)+1`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A394342

/-- `n*(3^n-1)+1` -/
def P5072940989807657412.Spec : Prop :=
  ∀ n, P5072940989807657412.a n = A394342 n

theorem P5072940989807657412.correct : P5072940989807657412.Spec := by
  intro n
  simp only [A394342]

end A394342

/-! ## A394342.P8763256995135495850

`ogf((1-5x+15x^2-15x^3)/(1-8x+22x^2-24x^3+9x^4))`
-/

namespace A394342.P8763256995135495850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 15, -15] [1, -8, 22, -24, 9] n

end

end A394342.P8763256995135495850

namespace A394342

/-- `ogf((1-5x+15x^2-15x^3)/(1-8x+22x^2-24x^3+9x^4))` -/
def P8763256995135495850.Spec : Prop :=
  ∀ n, P8763256995135495850.a n = A394342 n

end A394342

/-! ## A394342.P8001292372032710054

`or(1, (3^n-1)*n)`
-/

namespace A394342.P8001292372032710054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((3 ^ n : ℤ) - 1) * (n : ℤ))

end

end A394342.P8001292372032710054

namespace A394342

/-- `or(1, (3^n-1)*n)` -/
def P8001292372032710054.Spec : Prop :=
  ∀ n, P8001292372032710054.a n = A394342 n

end A394342

/-! ## A394342.P10807987619368891071

`xor(1, (3^n-1)*n)`
-/

namespace A394342.P10807987619368891071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (((3 ^ n : ℤ) - 1) * (n : ℤ))

end

end A394342.P10807987619368891071

namespace A394342

/-- `xor(1, (3^n-1)*n)` -/
def P10807987619368891071.Spec : Prop :=
  ∀ n, P10807987619368891071.a n = A394342 n

end A394342

/-! ## A394342.P10160081840796135380

`∑[xor(1, A229277(n))]`
-/

namespace A394342.P10160081840796135380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A229277 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394342.P10160081840796135380

namespace A394342

/-- `∑[xor(1, A229277(n))]` -/
def P10160081840796135380.Spec : Prop :=
  ∀ n, P10160081840796135380.a n = A394342 n

end A394342

/-! ## A394342.P14628631905228519532

`abs(n-A050914(n))`
-/

namespace A394342.P14628631905228519532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A050914 n|

end

end A394342.P14628631905228519532

namespace A394342

/-- `abs(n-A050914(n))` -/
def P14628631905228519532.Spec : Prop :=
  ∀ n, P14628631905228519532.a n = A394342 n

end A394342

/-!
# A394345: a(n) is the smallest prime in the form of ((2n)^m - 1)/(2n - 1) - (2n)^(k - 1), where k < m are both positive integers.

The programs for A394345, there is no canonical definition to state claims against.
-/

/-! ## A394345.P9133065817124659968

`A007918((2*(n+1))^A000005(n+1))`
-/

namespace A394345.P9133065817124659968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) ^ (A000005 (n + 1) : ℤ))).toNat

end

end A394345.P9133065817124659968

/-!
# A394346: a(n) = tau(n) * pod(n) where tau(k) = the number of the divisors of k (A000005) and pod(k) = the product of the divisors of k (A007955).

The programs for A394346, the canonical program `A394346.P4603799114259171752` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394346 has offset 1).

The definition of A394346 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A306671, A324528, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A394346.P219588846261258921

`A000005(n+1)*A007955(n+1)`
-/

namespace A394346.P219588846261258921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A007955 (n + 1)

end

end A394346.P219588846261258921

namespace A394346

/-- `A000005(n+1)*A007955(n+1)` -/
def P219588846261258921.Spec : Prop :=
  ∀ n, P219588846261258921.a n = A394346 (n + 1)

end A394346

/-! ## A394346.P4603799114259171752

`A324528(n+1)*A306671(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A394346

/-- `A324528(n+1)*A306671(n+1)` -/
def P4603799114259171752.Spec : Prop :=
  ∀ n, P4603799114259171752.a n = A394346 (n + 1)

theorem P4603799114259171752.correct : P4603799114259171752.Spec := by
  intro n
  simp only [A394346, Nat.add_sub_cancel]

end A394346

/-! ## A394346.P1847968497104938980

`∏{d}[n+1, #]*∏{e}[n+1, #+1]`
-/

namespace A394346.P1847968497104938980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ d ∈ Nat.divisors (f1 n), d) * (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

end

end A394346.P1847968497104938980

namespace A394346

/-- `∏{d}[n+1, #]*∏{e}[n+1, #+1]` -/
def P1847968497104938980.Spec : Prop :=
  ∀ n, (P1847968497104938980.a n : ℤ) = A394346 (n + 1)

end A394346

/-! ## A394346.P16525375230296534740

`exp(∑{d}[1+n, log(#)])*∏{e}[n+1, #+1]`
-/

namespace A394346.P16525375230296534740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ d ∈ Nat.divisors (f1 n), Real.log (d : ℝ)) * ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℝ)

end

end A394346.P16525375230296534740

namespace A394346

/-- `exp(∑{d}[1+n, log(#)])*∏{e}[n+1, #+1]` -/
def P16525375230296534740.Spec : Prop :=
  ∀ n, P16525375230296534740.a n = (A394346 (n + 1) : ℝ)

end A394346

/-! ## A394346.P15669087854583187042

`∏{d}[n+1, #]/(n+1)*∑{d}[n+1, lcm(#, n+1)]`
-/

namespace A394346.P15669087854583187042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ) * ((∑ d ∈ Nat.divisors (f2 n), Nat.lcm d (n + 1) : ℕ) : ℚ)

end

end A394346.P15669087854583187042

namespace A394346

/-- `∏{d}[n+1, #]/(n+1)*∑{d}[n+1, lcm(#, n+1)]` -/
def P15669087854583187042.Spec : Prop :=
  ∀ n, P15669087854583187042.a n = (A394346 (n + 1) : ℚ)

end A394346

/-! ## A394346.P1312725257455118970

`Δ[A006218(n)]*∏{d}[1+n, #]`
-/

namespace A394346.P1312725257455118970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * ((∏ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A394346.P1312725257455118970

namespace A394346

/-- `Δ[A006218(n)]*∏{d}[1+n, #]` -/
def P1312725257455118970.Spec : Prop :=
  ∀ n, P1312725257455118970.a n = A394346 (n + 1)

end A394346

/-! ## A394346.P13713072624046086943

`∏{d}[n+1, #]*A000005(n+1)`
-/

namespace A394346.P13713072624046086943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A000005 (n + 1)

end

end A394346.P13713072624046086943

namespace A394346

/-- `∏{d}[n+1, #]*A000005(n+1)` -/
def P13713072624046086943.Spec : Prop :=
  ∀ n, P13713072624046086943.a n = A394346 (n + 1)

end A394346

/-! ## A394346.P4893989267857281677

`∏{e}[n+1, #+1]*A007955(n+1)`
-/

namespace A394346.P4893989267857281677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) * A007955 (n + 1)

end

end A394346.P4893989267857281677

namespace A394346

/-- `∏{e}[n+1, #+1]*A007955(n+1)` -/
def P4893989267857281677.Spec : Prop :=
  ∀ n, P4893989267857281677.a n = A394346 (n + 1)

end A394346

/-! ## A394346.P4809824139034077452

`Δ[A006218(n)]*A007955(n+1)`
-/

namespace A394346.P4809824139034077452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A007955 (n + 1)

end

end A394346.P4809824139034077452

namespace A394346

/-- `Δ[A006218(n)]*A007955(n+1)` -/
def P4809824139034077452.Spec : Prop :=
  ∀ n, P4809824139034077452.a n = A394346 (n + 1)

end A394346

/-! ## A394346.P2529344097727588453

`A007956(n+1)*A038040(n+1)`
-/

namespace A394346.P2529344097727588453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007956 (n + 1) * A038040 (n + 1)

end

end A394346.P2529344097727588453

namespace A394346

/-- `A007956(n+1)*A038040(n+1)` -/
def P2529344097727588453.Spec : Prop :=
  ∀ n, P2529344097727588453.a n = A394346 (n + 1)

end A394346

/-! ## A394346.P10470403499104395888

`A087652(n+1)*A304409(n+1)`
-/

namespace A394346.P10470403499104395888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087652 (n + 1) * A304409 (n + 1)

end

end A394346.P10470403499104395888

namespace A394346

/-- `A087652(n+1)*A304409(n+1)` -/
def P10470403499104395888.Spec : Prop :=
  ∀ n, P10470403499104395888.a n = A394346 (n + 1)

end A394346

/-! ## A394346.P12466296618722771039

`A306671(n+1)*A324528(n+1)`
-/

namespace A394346.P12466296618722771039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306671 (n + 1) * A324528 (n + 1)

end

end A394346.P12466296618722771039

namespace A394346

/-- `A306671(n+1)*A324528(n+1)` -/
def P12466296618722771039.Spec : Prop :=
  ∀ n, P12466296618722771039.a n = A394346 (n + 1)

theorem P12466296618722771039.correct : P12466296618722771039.Spec := by
  intro n
  simp only [A394346, Nat.add_sub_cancel, A394346.P12466296618722771039.a, A394346.P4603799114259171752.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A394346

/-! ## A394346.P2146337736243291503

`(A056924(n+1)+A038548(n+1))*A007955(n+1)`
-/

namespace A394346.P2146337736243291503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056924 (n + 1) + A038548 (n + 1)) * A007955 (n + 1)

end

end A394346.P2146337736243291503

namespace A394346

/-- `(A056924(n+1)+A038548(n+1))*A007955(n+1)` -/
def P2146337736243291503.Spec : Prop :=
  ∀ n, P2146337736243291503.a n = A394346 (n + 1)

end A394346

/-! ## A394346.P4667094949333679466

`(A087991(n+1)+A087990(n+1))*A007955(n+1)`
-/

namespace A394346.P4667094949333679466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A087991 (n + 1) + A087990 (n + 1)) * A007955 (n + 1)

end

end A394346.P4667094949333679466

namespace A394346

/-- `(A087991(n+1)+A087990(n+1))*A007955(n+1)` -/
def P4667094949333679466.Spec : Prop :=
  ∀ n, P4667094949333679466.a n = A394346 (n + 1)

end A394346

/-! ## A394346.P2013679788461167799

`A000005(n+1)*A007947(n+1)*A087652(n+1)`
-/

namespace A394346.P2013679788461167799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A007947 (n + 1) * A087652 (n + 1)

end

end A394346.P2013679788461167799

namespace A394346

/-- `A000005(n+1)*A007947(n+1)*A087652(n+1)` -/
def P2013679788461167799.Spec : Prop :=
  ∀ n, P2013679788461167799.a n = A394346 (n + 1)

end A394346

/-! ## A394346.P1196888547441893622

`A000005(n+1)*A125911(n+1)*A136655(n+1)`
-/

namespace A394346.P1196888547441893622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A125911 (n + 1) * A136655 (n + 1)

end

end A394346.P1196888547441893622

namespace A394346

/-- `A000005(n+1)*A125911(n+1)*A136655(n+1)` -/
def P1196888547441893622.Spec : Prop :=
  ∀ n, P1196888547441893622.a n = A394346 (n + 1)

end A394346

/-! ## A394346.P1161046889162684291

`A007955(n+1)/A000203(n+1)*A064840(n+1)`
-/

namespace A394346.P1161046889162684291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A064840 (n + 1) : ℚ)

end

end A394346.P1161046889162684291

namespace A394346

/-- `A007955(n+1)/A000203(n+1)*A064840(n+1)` -/
def P1161046889162684291.Spec : Prop :=
  ∀ n, P1161046889162684291.a n = (A394346 (n + 1) : ℚ)

end A394346

/-! ## A394346.P13924882515044744245

`A000005(n+1)/A000203(n+1)*A076722(n+1)`
-/

namespace A394346.P13924882515044744245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A076722 (n + 1) : ℚ)

end

end A394346.P13924882515044744245

namespace A394346

/-- `A000005(n+1)/A000203(n+1)*A076722(n+1)` -/
def P13924882515044744245.Spec : Prop :=
  ∀ n, P13924882515044744245.a n = (A394346 (n + 1) : ℚ)

end A394346

/-! ## A394346.P6792816151168357381

`A007955(n+1)*A183063(2*(n+1))`
-/

namespace A394346.P6792816151168357381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) * A183063 (2 * (n + 1))

end

end A394346.P6792816151168357381

namespace A394346

/-- `A007955(n+1)*A183063(2*(n+1))` -/
def P6792816151168357381.Spec : Prop :=
  ∀ n, P6792816151168357381.a n = A394346 (n + 1)

end A394346

/-! ## A394346.P6468358597345875619

`A000005(n+1)/A211776(n+1)*A306705(n+1)`
-/

namespace A394346.P6468358597345875619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A211776 (n + 1) : ℚ) * (A306705 (n + 1) : ℚ)

end

end A394346.P6468358597345875619

namespace A394346

/-- `A000005(n+1)/A211776(n+1)*A306705(n+1)` -/
def P6468358597345875619.Spec : Prop :=
  ∀ n, P6468358597345875619.a n = (A394346 (n + 1) : ℚ)

end A394346

/-!
# A394347: a(n) is the least prime not previously used containing n as a substring.

The programs for A394347, there is no canonical definition to state claims against.
-/

/-! ## A394347.P17443624946739139048

`or(A037824(A000085(n)), A062584(n))`
-/

namespace A394347.P17443624946739139048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037824 (A000085 n).toNat) (A062584 n)

end

end A394347.P17443624946739139048

/-! ## A394347.P14523996739968949604

`or(A062584(n), A333382(A000045(n)))`
-/

namespace A394347.P14523996739968949604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A062584 n) (A333382 (A000045 n).toNat)

end

end A394347.P14523996739968949604

/-! ## A394347.P18076089365256017744

`or(A062584(n), A333382(A050342(n)))`
-/

namespace A394347.P18076089365256017744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A062584 n) (A333382 (A050342 n).toNat)

end

end A394347.P18076089365256017744

/-! ## A394347.P3015747910808201007

`or(A062584(n), A387463(A006784(n+1)))`
-/

namespace A394347.P3015747910808201007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A062584 n) (A387463 (A006784 (n + 1)).toNat)

end

end A394347.P3015747910808201007

/-! ## A394347.P751381698283713155

`or(A010875(A000081(n+4)), A062584(n))`
-/

namespace A394347.P751381698283713155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010875 (A000081 (n + 4)).toNat) (A062584 n)

end

end A394347.P751381698283713155

/-!
# A394348: Number of rectangular plane partitions of n with exactly 3 rows and with rows and columns strictly decreasing.

The programs for A394348, there is no canonical definition to state claims against.
-/

/-! ## A394348.P9129190229796730086

`A127321(A105152(n))-1`
-/

namespace A394348.P9129190229796730086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A105152 n).toNat - 1

end

end A394348.P9129190229796730086

/-! ## A394348.P15674366521575132152

`A067659(n)-A359550(A191307(n+1))`
-/

namespace A394348.P15674366521575132152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 n - A359550 (A191307 (n + 1)).toNat

end

end A394348.P15674366521575132152

/-!
# A394352: a(n) is the least positive k such that n and 10^n - k are coprime.

The programs for A394352, there is no canonical definition to state claims against.
-/

/-! ## A394352.P11172486989819009870

`10^(n+1)-A108908(n+1)`
-/

namespace A394352.P11172486989819009870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) : ℤ) - A108908 (n + 1)

end

end A394352.P11172486989819009870

/-! ## A394352.P2530373362562640829

`A230404((n+1)^3)`
-/

namespace A394352.P2530373362562640829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230404 ((n + 1) ^ 3)

end

end A394352.P2530373362562640829

/-! ## A394352.P9314746784490371049

`A378914((n+1)^3)-1`
-/

namespace A394352.P9314746784490371049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378914 ((n + 1) ^ 3) - 1

end

end A394352.P9314746784490371049

/-! ## A394352.P10967405745718449009

`A089242(A022120(n))`
-/

namespace A394352.P10967405745718449009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089242 (A022120 n).toNat

end

end A394352.P10967405745718449009

/-! ## A394352.P15768409746186237489

`A089242(A048584(n))`
-/

namespace A394352.P15768409746186237489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089242 (A048584 n).toNat

end

end A394352.P15768409746186237489

/-!
# A394353: Number of distinct primes of the form x*y + x*z + y*z with integers 0 <= x <= y <= z <= n.

The programs for A394353, there is no canonical definition to state claims against.
-/

/-! ## A394353.P7640464423992330415

`A396668(n)+a(n-1)` with `a(0)=0`
-/

namespace A394353.P7640464423992330415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A396668 n + a (n - 1)

end

end A394353.P7640464423992330415

/-! ## A394353.P3671710284328586793

`∑[A396668(n+1)]-A396668(n+1)`
-/

namespace A394353.P3671710284328586793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A396668 (n + 1)

end

end A394353.P3671710284328586793

/-!
# A394361: Numbers k such that the values of d(k^2+1) set records, where d(k) is the number of divisors of k (A000005).

The programs for A394361, there is no canonical definition to state claims against.
-/

/-! ## A394361.P1131043489969817698

`A353008(A029744(n+1))`
-/

namespace A394361.P1131043489969817698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353008 (A029744 (n + 1)).toNat

end

end A394361.P1131043489969817698

/-! ## A394361.P4133199022142541710

`A353008(A394612(n+1)/2)`
-/

namespace A394361.P4133199022142541710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353008 (SequenceMachineLib.roundAway ((A394612 (n + 1) : ℚ) / 2)).toNat

end

end A394361.P4133199022142541710

/-! ## A394361.P4278776970972866661

`A353008(filter[A374698(n+3), A344438(#)]/2)`
-/

namespace A394361.P4278776970972866661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374698 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353008 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => A344438 (f1 j).toNat = 1) n) : ℚ) / 2)).toNat

end

end A394361.P4278776970972866661

/-! ## A394361.P7929773627500783542

`A353008(filter[A374767(n+3), A344438(#)]/2)`
-/

namespace A394361.P7929773627500783542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374767 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353008 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => A344438 (f1 j).toNat = 1) n) : ℚ) / 2)).toNat

end

end A394361.P7929773627500783542

/-!
# A394362: Number of divisors d of n which also divide n/d + 1.

The programs for A394362, there is no canonical definition to state claims against.
-/

/-! ## A394362.P10919899939772348782

`A380656(n+1)+A059841(A033583(n))`
-/

namespace A394362.P10919899939772348782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380656 (n + 1) + A059841 (A033583 n).toNat

end

end A394362.P10919899939772348782

/-! ## A394362.P7852234904622328016

`A380656(n+1)+A000688(A005471(n+1))`
-/

namespace A394362.P7852234904622328016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380656 (n + 1) + A000688 (A005471 (n + 1)).toNat

end

end A394362.P7852234904622328016

/-! ## A394362.P17274238265280375389

`A380656(n+1)+A001222(A165352(n+1))`
-/

namespace A394362.P17274238265280375389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380656 (n + 1) + A001222 (A165352 (n + 1)).toNat

end

end A394362.P17274238265280375389

/-! ## A394362.P3288585674957509815

`A380656(n+1)+A366524(A113156(n+1))`
-/

namespace A394362.P3288585674957509815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380656 (n + 1) + A366524 (A113156 (n + 1)).toNat

end

end A394362.P3288585674957509815

/-! ## A394362.P7196213223384046547

`A371883(A028871(n+1))*A380656(n+1)+1`
-/

namespace A394362.P7196213223384046547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371883 (A028871 (n + 1)).toNat * A380656 (n + 1) + 1

end

end A394362.P7196213223384046547

/-!
# A394370: A sequence constructed by greedily sampling the probability distribution given by log_2(1+1/i)^2 - log_2(1+1/(i+1))^2 to minimize ratio discrepancy.

The programs for A394370, there is no canonical definition to state claims against.
-/

/-! ## A394370.P9054894818349980117

`A030614(A233301(n+1))`
-/

namespace A394370.P9054894818349980117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030614 (A233301 (n + 1)).toNat

end

end A394370.P9054894818349980117

/-! ## A394370.P7103719527383774224

`gcd(A001414(A342366(3*n+5)), A102627(n+1))`
-/

namespace A394370.P7103719527383774224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001414 (A342366 (3 * n + 5)).toNat) (A102627 (n + 1))

end

end A394370.P7103719527383774224

/-! ## A394370.P17935588166906307127

`A083916(A188874(n+1)-A114236(n+3))+1`
-/

namespace A394370.P17935588166906307127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083916 (A188874 (n + 1) - A114236 (n + 3)).toNat + 1

end

end A394370.P17935588166906307127

/-! ## A394370.P3473457913737686252

`A051903(A324158(n+1)+A017113(3*n+1))`
-/

namespace A394370.P3473457913737686252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A324158 (n + 1) + A017113 (3 * n + 1)).toNat

end

end A394370.P3473457913737686252

/-! ## A394370.P5712055654929236735

`A359233(A270641(2*n+3)+A116883(3*n+4))`
-/

namespace A394370.P5712055654929236735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359233 (A270641 (2 * n + 3) + A116883 (3 * n + 4)).toNat

end

end A394370.P5712055654929236735

/-!
# A394371: a(n) = (16*n)!/((2*n)!*(4*n)!*(10*n)!).

The programs for A394371, there is no canonical definition to state claims against.
-/

/-! ## A394371.P5922941924862439186

`A391700(2*n)`
-/

namespace A394371.P5922941924862439186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391700 (2 * n)

end

end A394371.P5922941924862439186

/-!
# A394372: a(1)=1, a(2)=2, a(3)=3; for n > 3, a(n) = a(n-1) + gcd(n, a(n-2) * a(n-3)).

The programs for A394372, the canonical program `A394372.P2206490494112918782` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394372 has offset 1).

The definition of A394372 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+gcd(n+1, a(n-2)*a(n-3))` (program `A394372.P2206490494112918782`, by `A394372.P2206490494112918782.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A394372.P2206490494112918782

`a(n-1)+gcd(n+1, a(n-2)*a(n-3))` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A394372

/-- `a(n-1)+gcd(n+1, a(n-2)*a(n-3))` -/
def P2206490494112918782.Spec : Prop :=
  ∀ n, (P2206490494112918782.a n : ℤ) = A394372 (n + 1)

theorem P2206490494112918782.correct : P2206490494112918782.Spec := by
  intro n
  simp only [A394372, Nat.add_sub_cancel]

end A394372

/-!
# A394374: a(n) = Sum_{i=1..n} (2*i-1)^(2*i).

The programs for A394374, the canonical program `A394374.P11444638324699548566` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394374 has offset 1).

The definition of A394374 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394374.P11444638324699548566

`a(n-1)+(2*(n+1)-1)^(2*(n+1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A394374

/-- `a(n-1)+(2*(n+1)-1)^(2*(n+1))` -/
def P11444638324699548566.Spec : Prop :=
  ∀ n, P11444638324699548566.a n = A394374 (n + 1)

theorem P11444638324699548566.correct : P11444638324699548566.Spec := by
  intro n
  simp only [A394374, Nat.add_sub_cancel]

end A394374

/-! ## A394374.P3036657529715965812

`∑[record[(1-n)^n]]`
-/

namespace A394374.P3036657529715965812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394374.P3036657529715965812

namespace A394374

/-- `∑[record[(1-n)^n]]` -/
def P3036657529715965812.Spec : Prop :=
  ∀ n, P3036657529715965812.a n = A394374 (n + 1)

end A394374

/-! ## A394374.P12313559907004119555

`∑[(Δ[n²]^(1+n))²]`
-/

namespace A394374.P12313559907004119555
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ (1 + n)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394374.P12313559907004119555

namespace A394374

/-- `∑[(Δ[n²]^(1+n))²]` -/
def P12313559907004119555.Spec : Prop :=
  ∀ n, P12313559907004119555.a n = A394374 (n + 1)

end A394374

/-! ## A394374.P3687760443342738457

`-∑[-record[(-(n+1))^(n+2)]]`
-/

namespace A394374.P3687760443342738457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n + 1 : ℤ)) ^ (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A394374.P3687760443342738457

namespace A394374

/-- `-∑[-record[(-(n+1))^(n+2)]]` -/
def P3687760443342738457.Spec : Prop :=
  ∀ n, P3687760443342738457.a n = A394374 (n + 1)

end A394374

/-! ## A394374.P2405120170873052335

`and(∑[((2*n+1)^(n+1))²], -1)`
-/

namespace A394374.P2405120170873052335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (-1)

end

end A394374.P2405120170873052335

namespace A394374

/-- `and(∑[((2*n+1)^(n+1))²], -1)` -/
def P2405120170873052335.Spec : Prop :=
  ∀ n, P2405120170873052335.a n = A394374 (n + 1)

end A394374

/-!
# A394380: Number of totients below 2^n.

The programs for A394380, the canonical program `A394380.P12740966740896101419` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394380 has offset 1).

The definition of A394380 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A264810, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A394380.P12740966740896101419

`A264810(2^(n+1)-1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A394380

/-- `A264810(2^(n+1)-1)` -/
def P12740966740896101419.Spec : Prop :=
  ∀ n, P12740966740896101419.a n = A394380 (n + 1)

theorem P12740966740896101419.correct : P12740966740896101419.Spec := by
  intro n
  simp only [A394380, Nat.add_sub_cancel]

end A394380

/-! ## A394380.P13849544222077789887

`2^n-A072077(n+1)`
-/

namespace A394380.P13849544222077789887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A072077 (n + 1)

end

end A394380.P13849544222077789887

namespace A394380

/-- `2^n-A072077(n+1)` -/
def P13849544222077789887.Spec : Prop :=
  ∀ n, P13849544222077789887.a n = A394380 (n + 1)

end A394380

/-! ## A394380.P10022490196262080513

`eq[1, A001221(A002202(n+1))]`
-/

namespace A394380.P10022490196262080513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A002202 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A394380.P10022490196262080513

namespace A394380

/-- `eq[1, A001221(A002202(n+1))]` -/
def P10022490196262080513.Spec : Prop :=
  ∀ n, (P10022490196262080513.a n : ℤ) = A394380 (n + 1)

end A394380

/-! ## A394380.P17300319999190264985

`A264810(A000079(n+1))-1`
-/

namespace A394380.P17300319999190264985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264810 (A000079 (n + 1)).toNat - 1

end

end A394380.P17300319999190264985

namespace A394380

/-- `A264810(A000079(n+1))-1` -/
def P17300319999190264985.Spec : Prop :=
  ∀ n, P17300319999190264985.a n = A394380 (n + 1)

end A394380

/-! ## A394380.P11557868909766536263

`A000225(n+1)-A180639(A000225(n+1))`
-/

namespace A394380.P11557868909766536263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - A180639 (A000225 (n + 1)).toNat

end

end A394380.P11557868909766536263

namespace A394380

/-- `A000225(n+1)-A180639(A000225(n+1))` -/
def P11557868909766536263.Spec : Prop :=
  ∀ n, P11557868909766536263.a n = A394380 (n + 1)

end A394380

/-!
# A394381: Number of totients below exp(n).

The programs for A394381, the canonical program `A394381.P15980332945039088340` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394381 has offset 1).

The definition of A394381 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A264810, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A394381.P15980332945039088340

`A264810(A000149(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A394381

/-- `A264810(A000149(n+1))` -/
def P15980332945039088340.Spec : Prop :=
  ∀ n, P15980332945039088340.a n = A394381 (n + 1)

theorem P15980332945039088340.correct : P15980332945039088340.Spec := by
  intro n
  simp only [A394381, Nat.add_sub_cancel]

end A394381

/-! ## A394381.P6595561684834118036

`A264810(floor(exp(n+1)))`
-/

namespace A394381.P6595561684834118036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264810 ⌊Real.exp (n + 1 : ℝ)⌋.toNat

end

end A394381.P6595561684834118036

namespace A394381

/-- `A264810(floor(exp(n+1)))` -/
def P6595561684834118036.Spec : Prop :=
  ∀ n, P6595561684834118036.a n = A394381 (n + 1)

theorem P6595561684834118036.correct : P6595561684834118036.Spec := by
  intro n
  simp only [A394381, Nat.add_sub_cancel, A394381.P6595561684834118036.a, A394381.P15980332945039088340.a, A000149, A000149.P348263657615241890.a, A264810, A264810.P2061164047065023931.f1, A264810.P2061164047065023931.a, A264739, A264739.P1949049419371855396.f1, A264739.P1949049419371855396.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A394381

/-! ## A394381.P2059558304660540963

`A087817(A001551(n))`
-/

namespace A394381.P2059558304660540963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087817 (A001551 n).toNat

end

end A394381.P2059558304660540963

namespace A394381

/-- `A087817(A001551(n))` -/
def P2059558304660540963.Spec : Prop :=
  ∀ n, P2059558304660540963.a n = A394381 (n + 1)

end A394381

/-!
# A394383: a(n) = f^(n/f), where f is the largest prime factor of n.

The programs for A394383, the canonical program `A394383.P17827104241650237715` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394383 has offset 1).

The definition of A394383 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A052126, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A394383.P17827104241650237715

`A006530(n+1)^A052126(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A394383

/-- `A006530(n+1)^A052126(n+1)` -/
def P17827104241650237715.Spec : Prop :=
  ∀ n, P17827104241650237715.a n = (A394383 (n + 1) : ℚ)

end A394383

/-! ## A394383.P6455305072064681591

`A085392(2*(n+1))^A052126(n+1)`
-/

namespace A394383.P6455305072064681591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085392 (2 * (n + 1)) : ℚ) ^ (A052126 (n + 1) : ℤ)

end

end A394383.P6455305072064681591

namespace A394383

/-- `A085392(2*(n+1))^A052126(n+1)` -/
def P6455305072064681591.Spec : Prop :=
  ∀ n, P6455305072064681591.a n = (A394383 (n + 1) : ℚ)

end A394383

/-! ## A394383.P12272555913285413015

`A002034(∏{p}[1+n, #])^A052126(n+1)`
-/

namespace A394383.P12272555913285413015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002034 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ) ^ (A052126 (n + 1) : ℤ)

end

end A394383.P12272555913285413015

namespace A394383

/-- `A002034(∏{p}[1+n, #])^A052126(n+1)` -/
def P12272555913285413015.Spec : Prop :=
  ∀ n, P12272555913285413015.a n = (A394383 (n + 1) : ℚ)

end A394383

/-! ## A394383.P12696706295640686809

`A025492(∏{p}[n+1, #])^A052126(n+1)`
-/

namespace A394383.P12696706295640686809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025492 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ) ^ (A052126 (n + 1) : ℤ)

end

end A394383.P12696706295640686809

namespace A394383

/-- `A025492(∏{p}[n+1, #])^A052126(n+1)` -/
def P12696706295640686809.Spec : Prop :=
  ∀ n, P12696706295640686809.a n = (A394383 (n + 1) : ℚ)

end A394383

/-! ## A394383.P1376660054521730204

`A034699(∏{p}[1+n, #])^A052126(n+1)`
-/

namespace A394383.P1376660054521730204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034699 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ) ^ (A052126 (n + 1) : ℤ)

end

end A394383.P1376660054521730204

namespace A394383

/-- `A034699(∏{p}[1+n, #])^A052126(n+1)` -/
def P1376660054521730204.Spec : Prop :=
  ∀ n, P1376660054521730204.a n = (A394383 (n + 1) : ℚ)

end A394383

/-! ## A394383.P9808078634572374507

`A088387(∏{p}[n+1, #])^A052126(n+1)`
-/

namespace A394383.P9808078634572374507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088387 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ) ^ (A052126 (n + 1) : ℤ)

end

end A394383.P9808078634572374507

namespace A394383

/-- `A088387(∏{p}[n+1, #])^A052126(n+1)` -/
def P9808078634572374507.Spec : Prop :=
  ∀ n, P9808078634572374507.a n = (A394383 (n + 1) : ℚ)

end A394383

/-! ## A394383.P7822801396277739981

`A217434(∏{p}[n+1, #])^A052126(n+1)`
-/

namespace A394383.P7822801396277739981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217434 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ) ^ (A052126 (n + 1) : ℤ)

end

end A394383.P7822801396277739981

namespace A394383

/-- `A217434(∏{p}[n+1, #])^A052126(n+1)` -/
def P7822801396277739981.Spec : Prop :=
  ∀ n, P7822801396277739981.a n = (A394383 (n + 1) : ℚ)

end A394383

/-! ## A394383.P9440238829739662618

`A223491(∏{p}[n+1, #])^A052126(n+1)`
-/

namespace A394383.P9440238829739662618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223491 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ) ^ (A052126 (n + 1) : ℤ)

end

end A394383.P9440238829739662618

namespace A394383

/-- `A223491(∏{p}[n+1, #])^A052126(n+1)` -/
def P9440238829739662618.Spec : Prop :=
  ∀ n, P9440238829739662618.a n = (A394383 (n + 1) : ℚ)

end A394383

/-! ## A394383.P10606777070685970094

`A284695(∏{p}[n+1, #])^A052126(n+1)`
-/

namespace A394383.P10606777070685970094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284695 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ) ^ (A052126 (n + 1) : ℤ)

end

end A394383.P10606777070685970094

namespace A394383

/-- `A284695(∏{p}[n+1, #])^A052126(n+1)` -/
def P10606777070685970094.Spec : Prop :=
  ∀ n, P10606777070685970094.a n = (A394383 (n + 1) : ℚ)

end A394383

/-! ## A394383.P9509701540363463991

`A304180(∏{p}[n+1, #])^A052126(n+1)`
-/

namespace A394383.P9509701540363463991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304180 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ) ^ (A052126 (n + 1) : ℤ)

end

end A394383.P9509701540363463991

namespace A394383

/-- `A304180(∏{p}[n+1, #])^A052126(n+1)` -/
def P9509701540363463991.Spec : Prop :=
  ∀ n, P9509701540363463991.a n = (A394383 (n + 1) : ℚ)

end A394383

/-! ## A394383.P13172596342271535031

`(A253560(n+1)/(n+1))^A052126(n+1)`
-/

namespace A394383.P13172596342271535031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A253560 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ (A052126 (n + 1) : ℤ)

end

end A394383.P13172596342271535031

namespace A394383

/-- `(A253560(n+1)/(n+1))^A052126(n+1)` -/
def P13172596342271535031.Spec : Prop :=
  ∀ n, P13172596342271535031.a n = (A394383 (n + 1) : ℚ)

end A394383

/-! ## A394383.P11080969379034003383

`A002034(∏{p}[n+1, #])^(A335876(n+1)-(n+1))`
-/

namespace A394383.P11080969379034003383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002034 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ) ^ (A335876 (n + 1) - (n + 1 : ℤ) : ℤ)

end

end A394383.P11080969379034003383

namespace A394383

/-- `A002034(∏{p}[n+1, #])^(A335876(n+1)-(n+1))` -/
def P11080969379034003383.Spec : Prop :=
  ∀ n, P11080969379034003383.a n = (A394383 (n + 1) : ℚ)

end A394383

/-! ## A394383.P9079430514004027477

`A284695(∏{p}[n+1, #])^(A335876(n+1)-(n+1))`
-/

namespace A394383.P9079430514004027477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284695 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ) ^ (A335876 (n + 1) - (n + 1 : ℤ) : ℤ)

end

end A394383.P9079430514004027477

namespace A394383

/-- `A284695(∏{p}[n+1, #])^(A335876(n+1)-(n+1))` -/
def P9079430514004027477.Spec : Prop :=
  ∀ n, P9079430514004027477.a n = (A394383 (n + 1) : ℚ)

end A394383

/-! ## A394383.P7432639569882277283

`A002034(∏{p}[n+1, #])^((n+1)/A006530(n+1))`
-/

namespace A394383.P7432639569882277283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002034 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℝ) ^ ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ) : ℝ)

end

end A394383.P7432639569882277283

namespace A394383

/-- `A002034(∏{p}[n+1, #])^((n+1)/A006530(n+1))` -/
def P7432639569882277283.Spec : Prop :=
  ∀ n, P7432639569882277283.a n = (A394383 (n + 1) : ℝ)

end A394383

/-! ## A394383.P16766394339305274570

`A284695(∏{p}[n+1, #])^((n+1)/A006530(n+1))`
-/

namespace A394383.P16766394339305274570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A284695 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℝ) ^ ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ) : ℝ)

end

end A394383.P16766394339305274570

namespace A394383

/-- `A284695(∏{p}[n+1, #])^((n+1)/A006530(n+1))` -/
def P16766394339305274570.Spec : Prop :=
  ∀ n, P16766394339305274570.a n = (A394383 (n + 1) : ℝ)

end A394383

/-! ## A394383.P17063060406993581310

`A002034(∏{p}[n+1, #])^(A342768(n+1)/(n+1))`
-/

namespace A394383.P17063060406993581310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002034 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℝ) ^ ((A342768 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ)

end

end A394383.P17063060406993581310

namespace A394383

/-- `A002034(∏{p}[n+1, #])^(A342768(n+1)/(n+1))` -/
def P17063060406993581310.Spec : Prop :=
  ∀ n, P17063060406993581310.a n = (A394383 (n + 1) : ℝ)

end A394383

/-! ## A394383.P1947700131720780957

`((n+1)²/A342768(n+1))^(A335876(n+1)-(n+1))`
-/

namespace A394383.P1947700131720780957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℚ) / (A342768 (n + 1) : ℚ)) ^ (A335876 (n + 1) - (n + 1 : ℤ) : ℤ)

end

end A394383.P1947700131720780957

namespace A394383

/-- `((n+1)²/A342768(n+1))^(A335876(n+1)-(n+1))` -/
def P1947700131720780957.Spec : Prop :=
  ∀ n, P1947700131720780957.a n = (A394383 (n + 1) : ℚ)

end A394383

/-! ## A394383.P15749319441868280307

`A002034(∏{p}[n+1, #])^(A129597(n+1)/A103517(n))`
-/

namespace A394383.P15749319441868280307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002034 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℝ) ^ ((A129597 (n + 1) : ℚ) / (A103517 n : ℚ) : ℝ)

end

end A394383.P15749319441868280307

namespace A394383

/-- `A002034(∏{p}[n+1, #])^(A129597(n+1)/A103517(n))` -/
def P15749319441868280307.Spec : Prop :=
  ∀ n, P15749319441868280307.a n = (A394383 (n + 1) : ℝ)

end A394383

/-!
# A394384: Power tower of descending prime factors of n with multiplicity.

The programs for A394384, there is no canonical definition to state claims against.
-/

/-! ## A394384.P4902272854613939764

`A006530(n+1)^A394383(A052126(n+1))`
-/

namespace A394384.P4902272854613939764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 1) : ℚ) ^ (A394383 (A052126 (n + 1)).toNat : ℤ)

end

end A394384.P4902272854613939764

/-! ## A394384.P13408403127310350140

`((n+1)²/A342768(n+1))^A164340(A052126(n+1))`
-/

namespace A394384.P13408403127310350140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℚ) / (A342768 (n + 1) : ℚ)) ^ (A164340 (A052126 (n + 1)).toNat : ℤ)

end

end A394384.P13408403127310350140

/-! ## A394384.P2279403001323331151

`A002034(∏{p}[n+1, #])^A164340(A342768(n+1)/(n+1))`
-/

namespace A394384.P2279403001323331151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002034 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ) ^ (A164340 (SequenceMachineLib.roundAway ((A342768 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat : ℤ)

end

end A394384.P2279403001323331151

/-! ## A394384.P15233286941180608091

`A025492(∏{p}[n+1, #])^A164340(A342768(n+1)/(n+1))`
-/

namespace A394384.P15233286941180608091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025492 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ) ^ (A164340 (SequenceMachineLib.roundAway ((A342768 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat : ℤ)

end

end A394384.P15233286941180608091

/-! ## A394384.P17664415495229775503

`A223491(∏{p}[n+1, #])^A164340(A342768(n+1)/(n+1))`
-/

namespace A394384.P17664415495229775503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223491 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ) ^ (A164340 (SequenceMachineLib.roundAway ((A342768 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat : ℤ)

end

end A394384.P17664415495229775503

/-!
# A394385: Triangle read by rows: T(n,k) is the number of ordered rooted trees with node weights summing to n that have k leaf nodes; where the root has weight 0 and non-root nodes have positive integer weights.

The programs for A394385, there is no canonical definition to state claims against.
-/

/-! ## A394385.P13068653867262608195

`A293451(A173006(n))+A173050(n)`
-/

namespace A394385.P13068653867262608195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293451 (A173006 n).toNat + A173050 n

end

end A394385.P13068653867262608195

/-! ## A394385.P5387502421266887452

`A269952(n)-A180649(A269952(n))`
-/

namespace A394385.P5387502421266887452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269952 n - A180649 (A269952 n).toNat

end

end A394385.P5387502421266887452

/-! ## A394385.P3129687599672570087

`A001222((2*T(n-1,k)+T(n-1,k-1)-T(n-2,k)+1)!)` with `a(0)=1, a(1)=0`
-/

namespace A394385.P3129687599672570087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A001222 (Nat.factorial (2 * SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2 a n + 1).toNat)

end

end A394385.P3129687599672570087

/-! ## A394385.P12939743036254701103

`A131469(A143395(n))`
-/

namespace A394385.P12939743036254701103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131469 (A143395 n).toNat

end

end A394385.P12939743036254701103

/-! ## A394385.P6080773015892350548

`A324662(A245667(n))`
-/

namespace A394385.P6080773015892350548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324662 (A245667 n).toNat

end

end A394385.P6080773015892350548

/-!
# A394390: Number of nonisomorphic abelian groups of order n which do not appear as the group of units of the ring Z/kZ taken over every k such that phi(k) = n.

The programs for A394390, there is no canonical definition to state claims against.
-/

/-! ## A394390.P12747732775967908576

`A000688(n+1)-A380578(n+1)`
-/

namespace A394390.P12747732775967908576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1) - A380578 (n + 1)

end

end A394390.P12747732775967908576

/-! ## A394390.P15377707391130536863

`∏{e}[1+n, A000041(#)]-A380578(n+1)`
-/

namespace A394390.P15377707391130536863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000041 (Nat.factorization (f1 n) p) - A380578 (n + 1)

end

end A394390.P15377707391130536863

/-! ## A394390.P14905814654091494905

`∏{e}[n+1, A213598(#)]-A380578(n+1)`
-/

namespace A394390.P14905814654091494905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A213598 (Nat.factorization (f1 n) p) - A380578 (n + 1)

end

end A394390.P14905814654091494905

/-! ## A394390.P3452158911475441163

`∏{e}[n+1, A332746(#)]-A380578(n+1)`
-/

namespace A394390.P3452158911475441163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A332746 (Nat.factorization (f1 n) p) - A380578 (n + 1)

end

end A394390.P3452158911475441163

/-! ## A394390.P17459971388120489012

`A000001(n+1)-A060689(n+1)-A380578(n+1)`
-/

namespace A394390.P17459971388120489012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (n + 1) - A060689 (n + 1) - A380578 (n + 1)

end

end A394390.P17459971388120489012

/-! ## A394390.P8208487075990352368

`A238877(Δ[n²])-A380578(n+1)`
-/

namespace A394390.P8208487075990352368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A380578 (n + 1)

end

end A394390.P8208487075990352368

/-!
# A394391: a(n) = tau(n)^2 + (n - tau(n))^2.

The programs for A394391, the canonical program `A394391.P4992548440944162986` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394391 has offset 1).

The definition of A394391 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)²+(n+1-A000005(n+1))²` (program `A394391.P4992548440944162986`, by `A394391.P4992548440944162986.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A394391.P4992548440944162986

`A000005(n+1)²+(n+1-A000005(n+1))²`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A394391

/-- `A000005(n+1)²+(n+1-A000005(n+1))²` -/
def P4992548440944162986.Spec : Prop :=
  ∀ n, P4992548440944162986.a n = A394391 (n + 1)

theorem P4992548440944162986.correct : P4992548440944162986.Spec := by
  intro n
  simp only [A394391, Nat.add_sub_cancel]

end A394391

/-! ## A394391.P10848188568470124096

`2*A349360(n+1)-(1+n)`
-/

namespace A394391.P10848188568470124096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A349360 (n + 1) - (1 + n : ℤ)

end

end A394391.P10848188568470124096

namespace A394391

/-- `2*A349360(n+1)-(1+n)` -/
def P10848188568470124096.Spec : Prop :=
  ∀ n, P10848188568470124096.a n = A394391 (n + 1)

end A394391

/-! ## A394391.P7109707925445807213

`∏{e}[n+1, (#+1)²]+A049820(n+1)²`
-/

namespace A394391.P7109707925445807213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) ^ 2 : ℕ) : ℤ) + A049820 (n + 1) ^ 2

end

end A394391.P7109707925445807213

namespace A394391

/-- `∏{e}[n+1, (#+1)²]+A049820(n+1)²` -/
def P7109707925445807213.Spec : Prop :=
  ∀ n, P7109707925445807213.a n = A394391 (n + 1)

end A394391

/-! ## A394391.P3416557433637112475

`A035116(n+1)+A049820(n+1)²`
-/

namespace A394391.P3416557433637112475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035116 (n + 1) + A049820 (n + 1) ^ 2

end

end A394391.P3416557433637112475

namespace A394391

/-- `A035116(n+1)+A049820(n+1)²` -/
def P3416557433637112475.Spec : Prop :=
  ∀ n, P3416557433637112475.a n = A394391 (n + 1)

end A394391

/-!
# A394394: Largest number of distinct lines determined by pairs of cell centers of a polycube with n cells.

The programs for A394394, there is no canonical definition to state claims against.
-/

/-! ## A394394.P15324782939546071266

`∑[n-A000122(A044459(n+1))]`
-/

namespace A394394.P15324782939546071266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000122 (A044459 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394394.P15324782939546071266

/-! ## A394394.P5337316973080353274

`∑[n-2*A309395(A000189(n+1))]`
-/

namespace A394394.P5337316973080353274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A309395 (A000189 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394394.P5337316973080353274

/-! ## A394394.P2002443187581194615

`∑[n-A281116(A066657(2*n+3))]`
-/

namespace A394394.P2002443187581194615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A281116 (A066657 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394394.P2002443187581194615

/-! ## A394394.P2826817263396959803

`abs(∑[A046645(A001223(3*n+1)+1)-(n+1)])`
-/

namespace A394394.P2826817263396959803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (A001223 (3 * n + 1) + 1).toNat - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A394394.P2826817263396959803

/-! ## A394394.P11005420370648340349

`∑[abs(A070203(A367357(2*(n+2)))-n)]`
-/

namespace A394394.P11005420370648340349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A070203 (A367357 (2 * (n + 2))).toNat - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394394.P11005420370648340349

/-!
# A394399: Numbers k in A014574 (averages of twin prime pairs) such that gcd(k, sigma(k)) = 3.

The programs for A394399, there is no canonical definition to state claims against.
-/

/-! ## A394399.P2403568712365421314

`∩[A000982(n), A394757(n+1)]`
-/

namespace A394399.P2403568712365421314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394399.P2403568712365421314

/-! ## A394399.P12828516323327878053

`∩[A394757(n+1), A001105(n)]`
-/

namespace A394399.P12828516323327878053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394399.P12828516323327878053

/-! ## A394399.P13271353877638695489

`∩[A394757(n+1), A195147(n)]`
-/

namespace A394399.P13271353877638695489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195147 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394399.P13271353877638695489

/-! ## A394399.P2448760389360822873

`∩[A394757(n+1), A195321(n)]`
-/

namespace A394399.P2448760389360822873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195321 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394399.P2448760389360822873

/-! ## A394399.P12535087174365572566

`∩[A394757(n+1), A299256(n)]`
-/

namespace A394399.P12535087174365572566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299256 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394399.P12535087174365572566

