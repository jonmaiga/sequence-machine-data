import SequenceMachineLib
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
# A273800: Numbers n for which n = phi(x)*phi(y), where n = x + y and phi(x) is the Euler totient function of x.

The programs for A273800, there is no canonical definition to state claims against.
-/

/-! ## A273800.P10376364636796261714

`record[4*A000005(A216955(n+1))]`
-/

namespace A273800.P10376364636796261714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000005 (A216955 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273800.P10376364636796261714

/-! ## A273800.P17487683373196247743

`record[A053249(record[A053204(n+4)])]`
-/

namespace A273800.P17487683373196247743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053249 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273800.P17487683373196247743

/-! ## A273800.P921104617250987570

`∩[A189829(n+1), A344181(n+1)]`
-/

namespace A273800.P921104617250987570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273800.P921104617250987570

/-! ## A273800.P3940485777181143300

`record[A053249(A157139(n+1)+A008794(n))]`
-/

namespace A273800.P3940485777181143300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053249 (A157139 (n + 1) + A008794 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273800.P3940485777181143300

/-! ## A273800.P11356938545967714381

`A025487(lt[A171912(3*(n+1)), A134451(n)])`
-/

namespace A273800.P11356938545967714381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171912 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A273800.P11356938545967714381

/-!
# A273801: Numbers n for which n = (x - phi(x)) * (y - phi(y)), where n = x + y and x - phi(x) is the Euler cototient function of x.

The programs for A273801, the canonical program `A273801.P14178267973279234663` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273801 has offset 1).

The definition of A273801 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273801.P14178267973279234663

`4*(p?[2*n+1]+1)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A273801

/-- `4*(p?[2*n+1]+1)` -/
def P14178267973279234663.Spec : Prop :=
  ∀ n, (P14178267973279234663.a n : ℤ) = A273801 (n + 1)

theorem P14178267973279234663.correct : P14178267973279234663.Spec := by
  intro n
  simp only [A273801, Nat.add_sub_cancel]

end A273801

/-! ## A273801.P13630683432599502494

`∑{d}[or(1, p?[2*n-1]), lcm(4, #)]`
-/

namespace A273801.P13630683432599502494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.lcm 4 d

end

end A273801.P13630683432599502494

namespace A273801

/-- `∑{d}[or(1, p?[2*n-1]), lcm(4, #)]` -/
def P13630683432599502494.Spec : Prop :=
  ∀ n, (P13630683432599502494.a n : ℤ) = A273801 (n + 1)

end A273801

/-! ## A273801.P3456930117533558542

`A001749(n+2)+4`
-/

namespace A273801.P3456930117533558542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 2) + 4

end

end A273801.P3456930117533558542

namespace A273801

/-- `A001749(n+2)+4` -/
def P3456930117533558542.Spec : Prop :=
  ∀ n, P3456930117533558542.a n = A273801 (n + 1)

end A273801

/-! ## A273801.P353080186963686738

`4*A055670(n+2)`
-/

namespace A273801.P353080186963686738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A055670 (n + 2)

end

end A273801.P353080186963686738

namespace A273801

/-- `4*A055670(n+2)` -/
def P353080186963686738.Spec : Prop :=
  ∀ n, P353080186963686738.a n = A273801 (n + 1)

end A273801

/-! ## A273801.P395240801897535764

`8*A006254(n+1)`
-/

namespace A273801.P395240801897535764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A006254 (n + 1)

end

end A273801.P395240801897535764

namespace A273801

/-- `8*A006254(n+1)` -/
def P395240801897535764.Spec : Prop :=
  ∀ n, P395240801897535764.a n = A273801 (n + 1)

end A273801

/-! ## A273801.P9265006804352344187

`4*(A065091(n+1)+1)`
-/

namespace A273801.P9265006804352344187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A065091 (n + 1) + 1)

end

end A273801.P9265006804352344187

namespace A273801

/-- `4*(A065091(n+1)+1)` -/
def P9265006804352344187.Spec : Prop :=
  ∀ n, P9265006804352344187.a n = A273801 (n + 1)

end A273801

/-! ## A273801.P14147055119090956955

`4*(A048974(n+1)-1)`
-/

namespace A273801.P14147055119090956955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A048974 (n + 1) - 1)

end

end A273801.P14147055119090956955

namespace A273801

/-- `4*(A048974(n+1)-1)` -/
def P14147055119090956955.Spec : Prop :=
  ∀ n, P14147055119090956955.a n = A273801 (n + 1)

end A273801

/-! ## A273801.P13063635690133732310

`4*(A298252(n+1)-2)`
-/

namespace A273801.P13063635690133732310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A298252 (n + 1) - 2)

end

end A273801.P13063635690133732310

namespace A273801

/-- `4*(A298252(n+1)-2)` -/
def P13063635690133732310.Spec : Prop :=
  ∀ n, P13063635690133732310.a n = A273801 (n + 1)

end A273801

/-! ## A273801.P6724880760959231455

`4*(A154115(n+1)+4)`
-/

namespace A273801.P6724880760959231455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A154115 (n + 1) + 4)

end

end A273801.P6724880760959231455

namespace A273801

/-- `4*(A154115(n+1)+4)` -/
def P6724880760959231455.Spec : Prop :=
  ∀ n, P6724880760959231455.a n = A273801 (n + 1)

end A273801

/-! ## A273801.P9796730708179777742

`4*(A014690(n+1)-n)`
-/

namespace A273801.P9796730708179777742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A014690 (n + 1) - (n : ℤ))

end

end A273801.P9796730708179777742

namespace A273801

/-- `4*(A014690(n+1)-n)` -/
def P9796730708179777742.Spec : Prop :=
  ∀ n, P9796730708179777742.a n = A273801 (n + 1)

end A273801

/-! ## A273801.P1613971225048451424

`A129070(n+2)-1`
-/

namespace A273801.P1613971225048451424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129070 (n + 2) - 1

end

end A273801.P1613971225048451424

namespace A273801

/-- `A129070(n+2)-1` -/
def P1613971225048451424.Spec : Prop :=
  ∀ n, P1613971225048451424.a n = A273801 (n + 1)

end A273801

/-! ## A273801.P2492123765381180725

`A062876(n+2)+4`
-/

namespace A273801.P2492123765381180725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062876 (n + 2) + 4

end

end A273801.P2492123765381180725

namespace A273801

/-- `A062876(n+2)+4` -/
def P2492123765381180725.Spec : Prop :=
  ∀ n, P2492123765381180725.a n = A273801 (n + 1)

end A273801

/-! ## A273801.P11328061827794542552

`2*A089241(n+2)`
-/

namespace A273801.P11328061827794542552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089241 (n + 2)

end

end A273801.P11328061827794542552

namespace A273801

/-- `2*A089241(n+2)` -/
def P11328061827794542552.Spec : Prop :=
  ∀ n, P11328061827794542552.a n = A273801 (n + 1)

end A273801

/-! ## A273801.P13892359791150529535

`A240068(n+2)/2`
-/

namespace A273801.P13892359791150529535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240068 (n + 2) : ℚ) / 2

end

end A273801.P13892359791150529535

namespace A273801

/-- `A240068(n+2)/2` -/
def P13892359791150529535.Spec : Prop :=
  ∀ n, P13892359791150529535.a n = (A273801 (n + 1) : ℚ)

end A273801

/-! ## A273801.P4513921903736263639

`4*A008864(n+2)`
-/

namespace A273801.P4513921903736263639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A008864 (n + 2)

end

end A273801.P4513921903736263639

namespace A273801

/-- `4*A008864(n+2)` -/
def P4513921903736263639.Spec : Prop :=
  ∀ n, P4513921903736263639.a n = A273801 (n + 1)

end A273801

/-! ## A273801.P6726837824037982174

`4*A028815(n+2)`
-/

namespace A273801.P6726837824037982174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A028815 (n + 2)

end

end A273801.P6726837824037982174

namespace A273801

/-- `4*A028815(n+2)` -/
def P6726837824037982174.Spec : Prop :=
  ∀ n, P6726837824037982174.a n = A273801 (n + 1)

end A273801

/-! ## A273801.P807558703702990246

`4*A175216(n+2)`
-/

namespace A273801.P807558703702990246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A175216 (n + 2)

end

end A273801.P807558703702990246

namespace A273801

/-- `4*A175216(n+2)` -/
def P807558703702990246.Spec : Prop :=
  ∀ n, P807558703702990246.a n = A273801 (n + 1)

end A273801

/-! ## A273801.P3316836403167060815

`A055669(n+2)/6`
-/

namespace A273801.P3316836403167060815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055669 (n + 2) : ℚ) / 6

end

end A273801.P3316836403167060815

namespace A273801

/-- `A055669(n+2)/6` -/
def P3316836403167060815.Spec : Prop :=
  ∀ n, P3316836403167060815.a n = (A273801 (n + 1) : ℚ)

end A273801

/-! ## A273801.P17192718933675287530

`8*A111333(n+2)`
-/

namespace A273801.P17192718933675287530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A111333 (n + 2)

end

end A273801.P17192718933675287530

namespace A273801

/-- `8*A111333(n+2)` -/
def P17192718933675287530.Spec : Prop :=
  ∀ n, P17192718933675287530.a n = A273801 (n + 1)

end A273801

/-! ## A273801.P17513584940557902400

`8*A130291(n+2)`
-/

namespace A273801.P17513584940557902400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A130291 (n + 2)

end

end A273801.P17513584940557902400

namespace A273801

/-- `8*A130291(n+2)` -/
def P17513584940557902400.Spec : Prop :=
  ∀ n, P17513584940557902400.a n = A273801 (n + 1)

end A273801

/-!
# A273803: Numbers that are a product of distinct Fibonacci numbers (A160009) and also a product of distinct Lucas numbers (A274280).

The programs for A273803, there is no canonical definition to state claims against.
-/

/-! ## A273803.P15063868207473975724

`∩[A160009(n+1), A274280(n+1)]`
-/

namespace A273803.P15063868207473975724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273803.P15063868207473975724

/-! ## A273803.P1330127668713098113

`∩[A274280(n+1), A274371(n+1)]`
-/

namespace A273803.P1330127668713098113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273803.P1330127668713098113

/-!
# A273813: Composite numbers whose sum of unitary divisors is a multiple of the sum of their aliquot parts.

The programs for A273813, there is no canonical definition to state claims against.
-/

/-! ## A273813.P11581102587074818419

`A326136(A065125(n+1))`
-/

namespace A273813.P11581102587074818419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326136 (A065125 (n + 1)).toNat

end

end A273813.P11581102587074818419

/-!
# A273814: Numbers k such that (12^k - 7^k)/5 is prime.

The programs for A273814, there is no canonical definition to state claims against.
-/

/-! ## A273814.P14319969276284782924

`p?[A246281(A048398(n+1))]`
-/

namespace A273814.P14319969276284782924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246281 (A048398 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A273814.P14319969276284782924

/-! ## A273814.P16939175528181612210

`p?[∑[A297402(A003244(n+1))]]`
-/

namespace A273814.P16939175528181612210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297402 (A003244 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A273814.P16939175528181612210

/-! ## A273814.P606674767121472511

`p?[A305081(∑[A317707(n+1)])]`
-/

namespace A273814.P606674767121472511
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317707 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305081 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A273814.P606674767121472511

/-!
# A273820: Least common multiple of (2^n, 2^n + 1, ..., 2^(n+1) - 1).

The programs for A273820, the canonical program `A273820.P12866763565535476415` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273820 has offset 0).

The definition of A273820 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273820.P12866763565535476415

`A003418(2^(n+1)-1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A273820

/-- `A003418(2^(n+1)-1)` -/
def P12866763565535476415.Spec : Prop :=
  ∀ n, P12866763565535476415.a n = A273820 n

theorem P12866763565535476415.correct : P12866763565535476415.Spec := by
  intro n
  simp only [A273820]

end A273820

/-! ## A273820.P15364512689933109861

`A076100(2^n)`
-/

namespace A273820.P15364512689933109861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076100 (2 ^ n)

end

end A273820.P15364512689933109861

namespace A273820

/-- `A076100(2^n)` -/
def P15364512689933109861.Spec : Prop :=
  ∀ n, P15364512689933109861.a n = A273820 n

end A273820

/-! ## A273820.P7590274587201221531

`A025552(∑[2^n])`
-/

namespace A273820.P7590274587201221531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025552 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A273820.P7590274587201221531

namespace A273820

/-- `A025552(∑[2^n])` -/
def P7590274587201221531.Spec : Prop :=
  ∀ n, P7590274587201221531.a n = A273820 n

end A273820

/-!
# A273821: Triangle read by rows: T(n,k) is the number of 123-avoiding permutations p of [n] (A000108) such that k is maximal with the property that the k largest entries of p, taken in order, avoid 132.

The programs for A273821, there is no canonical definition to state claims against.
-/

/-! ## A273821.P15385881257030069205

`or(A127324(A022185(n)), A208756(n+1))`
-/

namespace A273821.P15385881257030069205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A127324 (A022185 n).toNat) (A208756 (n + 1))

end

end A273821.P15385881257030069205

/-!
# A273823: Table read by rows: the n-th row is the list of numbers to the left of n in the natural numbers read by antidiagonals.

The programs for A273823, there is no canonical definition to state claims against.
-/

/-! ## A273823.P15551284691753929191

`gcd(A112384(n+1), A217016(n+1))`
-/

namespace A273823.P15551284691753929191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112384 (n + 1)) (A217016 (n + 1))

end

end A273823.P15551284691753929191

/-! ## A273823.P14859837618456164453

`A112384(lt[A046988(n), A121458(n)])`
-/

namespace A273823.P14859837618456164453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046988 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112384 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A273823.P14859837618456164453

/-! ## A273823.P5429063188431484270

`A112384(A065200(n+1)%A217016(n+1))`
-/

namespace A273823.P5429063188431484270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112384 (Int.tmod (A065200 (n + 1)) (A217016 (n + 1))).toNat

end

end A273823.P5429063188431484270

/-!
# A273827: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 950", based on the 5-celled von Neumann neighborhood.

The programs for A273827, there is no canonical definition to state claims against.
-/

/-! ## A273827.P9250631513126458374

`A273830(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273827.P9250631513126458374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273830 (n - 1) + a (n - 1)

end

end A273827.P9250631513126458374

/-! ## A273827.P5860219708508369044

`1+∑[A273830(n)]-A273830(n)`
-/

namespace A273827.P5860219708508369044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + (∑ j ∈ Finset.range (n + 1), f1 j - A273830 n)

end

end A273827.P5860219708508369044

/-! ## A273827.P17892329551099830331

`Δ[A273829(n)]-A273830(n)`
-/

namespace A273827.P17892329551099830331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273829 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273830 n

end

end A273827.P17892329551099830331

/-! ## A273827.P9329451811517350864

`A273829(n+1)-(A273830(n)+A273829(n))`
-/

namespace A273827.P9329451811517350864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273829 (n + 1) - (A273830 n + A273829 n)

end

end A273827.P9329451811517350864

/-!
# A273828: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 950", based on the 5-celled von Neumann neighborhood.

The programs for A273828, there is no canonical definition to state claims against.
-/

/-! ## A273828.P16033529579905647171

`ceil(∑[2^n]²/2)-4%(2^n)`
-/

namespace A273828.P16033529579905647171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / 2⌉ - ((4 % 2 ^ n : ℕ) : ℤ)

end

end A273828.P16033529579905647171

/-! ## A273828.P8201398887190016403

`A092440(n)-A050443(C(2, n))`
-/

namespace A273828.P8201398887190016403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092440 n - A050443 (Nat.choose 2 n)

end

end A273828.P8201398887190016403

/-! ## A273828.P6450556879583555774

`A092440(n)-and(4, A000225(n))`
-/

namespace A273828.P6450556879583555774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092440 n - Int.land 4 (A000225 n)

end

end A273828.P6450556879583555774

/-! ## A273828.P15154003456170536445

`A092440(n)-and(4, A087323(n))`
-/

namespace A273828.P15154003456170536445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092440 n - Int.land 4 (A087323 n)

end

end A273828.P15154003456170536445

/-! ## A273828.P16859247689516909946

`A092440(n)-and(4, A128209(n))`
-/

namespace A273828.P16859247689516909946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092440 n - Int.land 4 (A128209 n)

end

end A273828.P16859247689516909946

/-!
# A273829: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 950", based on the 5-celled von Neumann neighborhood.

The programs for A273829, there is no canonical definition to state claims against.
-/

/-! ## A273829.P14726578074185827336

`∑[A273827(n)]`
-/

namespace A273829.P14726578074185827336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273827 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273829.P14726578074185827336

/-! ## A273829.P14930865506302342504

`∑[A273830(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A273829.P14930865506302342504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A273830 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273829.P14930865506302342504

/-! ## A273829.P3675547545166556122

`∑[∑[A273830(n)]-A273830(n)+1]`
-/

namespace A273829.P3675547545166556122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273830 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A273830 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273829.P3675547545166556122

/-! ## A273829.P12566184053751316979

`a(n-1)+A273827(n)%A195025(n)` with `a(0)=1`
-/

namespace A273829.P12566184053751316979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A273827 n) (A195025 n)

end

end A273829.P12566184053751316979

/-! ## A273829.P12207092557692917168

`A273827(n%A273827(n))+a(n-1)` with `a(0)=1`
-/

namespace A273829.P12207092557692917168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273827 (Int.tmod (n : ℤ) (A273827 n)).toNat + a (n - 1)

end

end A273829.P12207092557692917168

/-! ## A273829.P9090837082664542755

`∑[∑[A273830(n)]-A014681(A273830(n))]`
-/

namespace A273829.P9090837082664542755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273830 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A014681 (A273830 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273829.P9090837082664542755

/-!
# A273830: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 950", based on the 5-celled von Neumann neighborhood.

The programs for A273830, there is no canonical definition to state claims against.
-/

/-! ## A273830.P5459491297162677596

`Δ[A273827(n)]`
-/

namespace A273830.P5459491297162677596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273827 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273830.P5459491297162677596

/-! ## A273830.P12220064458608073648

`A273827(n+1)-A273827(n)`
-/

namespace A273830.P12220064458608073648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273827 (n + 1) - A273827 n

end

end A273830.P12220064458608073648

/-! ## A273830.P3835672156276476481

`record[A273827(abs(1-n))]-A273827(n)`
-/

namespace A273830.P3835672156276476481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273827 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A273827 n

end

end A273830.P3835672156276476481

/-! ## A273830.P886133739723963924

`A273827(n+1)+A001489(A273827(n)+1)+1`
-/

namespace A273830.P886133739723963924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273827 (n + 1) + A001489 (A273827 n + 1).toNat + 1

end

end A273830.P886133739723963924

/-!
# A273831: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 961", based on the 5-celled von Neumann neighborhood.

The programs for A273831, the canonical program `A273831.P9283550994654767689` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273831 has offset 0).

The definition of A273831 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2706 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273831.P12057779300691245515

`char[3]+(2*n+1)²-and(5, a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A273831.P12057779300691245515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (((2 * n + 1) ^ 2 : ℤ) - Int.land 5 (a (n - 1)))

end

end A273831.P12057779300691245515

namespace A273831

/-- `char[3]+(2*n+1)²-and(5, a(n-1))` -/
def P12057779300691245515.Spec : Prop :=
  ∀ n, P12057779300691245515.a n = A273831 n

end A273831

/-! ## A273831.P9283550994654767689

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=4, a(2)=21, a(3)=45, a(4)=76, a(5)=117, a(6)=164`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A273831

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P9283550994654767689.Spec : Prop :=
  ∀ n, P9283550994654767689.a n = A273831 n

theorem P9283550994654767689.correct : P9283550994654767689.Spec := by
  intro n
  simp only [A273831]

end A273831

/-! ## A273831.P6914781110508920757

`A265056(n)-char[A103517(n)]`
-/

namespace A273831.P6914781110508920757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265056 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A273831.P6914781110508920757

namespace A273831

/-- `A265056(n)-char[A103517(n)]` -/
def P6914781110508920757.Spec : Prop :=
  ∀ n, P6914781110508920757.a n = A273831 n

end A273831

/-! ## A273831.P2718379293833788856

`A265056(n)+A266719(n)-1`
-/

namespace A273831.P2718379293833788856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265056 n + (A266719 n - 1)

end

end A273831.P2718379293833788856

namespace A273831

/-- `A265056(n)+A266719(n)-1` -/
def P2718379293833788856.Spec : Prop :=
  ∀ n, P2718379293833788856.a n = A273831 n

end A273831

/-! ## A273831.P11660258475640268339

`A265056(n)-A000035(A007920(n))`
-/

namespace A273831.P11660258475640268339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265056 n - A000035 (A007920 n).toNat

end

end A273831.P11660258475640268339

namespace A273831

/-- `A265056(n)-A000035(A007920(n))` -/
def P11660258475640268339.Spec : Prop :=
  ∀ n, P11660258475640268339.a n = A273831 n

end A273831

/-! ## A273831.P3731208256700286348

`A265056(n)-A000035(A051699(n))`
-/

namespace A273831.P3731208256700286348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265056 n - A000035 (A051699 n).toNat

end

end A273831.P3731208256700286348

namespace A273831

/-- `A265056(n)-A000035(A051699(n))` -/
def P3731208256700286348.Spec : Prop :=
  ∀ n, P3731208256700286348.a n = A273831 n

end A273831

/-! ## A273831.P2264234115258392807

`xor(A000035(A007918(n)), A273405(n))`
-/

namespace A273831.P2264234115258392807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (A007918 n).toNat) (A273405 n)

end

end A273831.P2264234115258392807

namespace A273831

/-- `xor(A000035(A007918(n)), A273405(n))` -/
def P2264234115258392807.Spec : Prop :=
  ∀ n, P2264234115258392807.a n = A273831 n

end A273831

/-! ## A273831.P3056011911172103662

`xor(A057427(A002264(n)), A273405(n))`
-/

namespace A273831.P3056011911172103662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 (A002264 n).toNat) (A273405 n)

end

end A273831.P3056011911172103662

namespace A273831

/-- `xor(A057427(A002264(n)), A273405(n))` -/
def P3056011911172103662.Spec : Prop :=
  ∀ n, P3056011911172103662.a n = A273831 n

end A273831

/-! ## A273831.P17441592771921510681

`xor(A057427(A004524(n)), A273405(n))`
-/

namespace A273831.P17441592771921510681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 (A004524 n).toNat) (A273405 n)

end

end A273831.P17441592771921510681

namespace A273831

/-- `xor(A057427(A004524(n)), A273405(n))` -/
def P17441592771921510681.Spec : Prop :=
  ∀ n, P17441592771921510681.a n = A273831 n

end A273831

/-! ## A273831.P7886629184838832697

`xor(A060576(A008620(n)), A273405(n))`
-/

namespace A273831.P7886629184838832697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A060576 (A008620 n).toNat) (A273405 n)

end

end A273831.P7886629184838832697

namespace A273831

/-- `xor(A060576(A008620(n)), A273405(n))` -/
def P7886629184838832697.Spec : Prop :=
  ∀ n, P7886629184838832697.a n = A273831 n

end A273831

/-! ## A273831.P12577514930683153424

`xor(A057427(A344853(n)), A273405(n))`
-/

namespace A273831.P12577514930683153424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 (A344853 n).toNat) (A273405 n)

end

end A273831.P12577514930683153424

namespace A273831

/-- `xor(A057427(A344853(n)), A273405(n))` -/
def P12577514930683153424.Spec : Prop :=
  ∀ n, P12577514930683153424.a n = A273831 n

end A273831

/-! ## A273831.P16603513958035448281

`xor(A267587(A000203(n+1)), A273405(n))`
-/

namespace A273831.P16603513958035448281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A267587 (A000203 (n + 1)).toNat) (A273405 n)

end

end A273831.P16603513958035448281

namespace A273831

/-- `xor(A267587(A000203(n+1)), A273405(n))` -/
def P16603513958035448281.Spec : Prop :=
  ∀ n, P16603513958035448281.a n = A273831 n

end A273831

/-! ## A273831.P7448494115235084314

`A273834(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273831.P7448494115235084314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273834 (n - 1) + a (n - 1)

end

end A273831.P7448494115235084314

namespace A273831

/-- `A273834(n-1)+a(n-1)` -/
def P7448494115235084314.Spec : Prop :=
  ∀ n, P7448494115235084314.a n = A273831 n

end A273831

/-! ## A273831.P9305830941075988766

`Δ[A273833(n)]-A273834(n)`
-/

namespace A273831.P9305830941075988766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273833 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273834 n

end

end A273831.P9305830941075988766

namespace A273831

/-- `Δ[A273833(n)]-A273834(n)` -/
def P9305830941075988766.Spec : Prop :=
  ∀ n, P9305830941075988766.a n = A273831 n

end A273831

/-! ## A273831.P8861397678062168955

`A273833(n+1)-(A273834(n)+A273833(n))`
-/

namespace A273831.P8861397678062168955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273833 (n + 1) - (A273834 n + A273833 n)

end

end A273831.P8861397678062168955

namespace A273831

/-- `A273833(n+1)-(A273834(n)+A273833(n))` -/
def P8861397678062168955.Spec : Prop :=
  ∀ n, P8861397678062168955.a n = A273831 n

end A273831

/-! ## A273831.P13913856401916701638

`or(A036453(n+1)², A273417(n))`
-/

namespace A273831.P13913856401916701638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036453 (n + 1) ^ 2) (A273417 n)

end

end A273831.P13913856401916701638

namespace A273831

/-- `or(A036453(n+1)², A273417(n))` -/
def P13913856401916701638.Spec : Prop :=
  ∀ n, P13913856401916701638.a n = A273831 n

end A273831

/-! ## A273831.P18087287948347369922

`or(4, A273417(n))%A001248(n+1)`
-/

namespace A273831.P18087287948347369922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor 4 (A273417 n)) (A001248 (n + 1))

end

end A273831.P18087287948347369922

namespace A273831

/-- `or(4, A273417(n))%A001248(n+1)` -/
def P18087287948347369922.Spec : Prop :=
  ∀ n, P18087287948347369922.a n = A273831 n

end A273831

/-! ## A273831.P17664159280554171735

`xor(1-A010051(a(n-1)+1), A273405(n))` with `a(0)=1`
-/

namespace A273831.P17664159280554171735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (1 - A010051 (a (n - 1) + 1).toNat) (A273405 n)

end

end A273831.P17664159280554171735

namespace A273831

/-- `xor(1-A010051(a(n-1)+1), A273405(n))` -/
def P17664159280554171735.Spec : Prop :=
  ∀ n, P17664159280554171735.a n = A273831 n

end A273831

/-!
# A273832: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 961", based on the 5-celled von Neumann neighborhood.

The programs for A273832, the canonical program `A273832.P17429440904856934592` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273832 has offset 0).

The definition of A273832 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273832.P2611973615195697424

`A269911(n)-char[1]`
-/

namespace A273832.P2611973615195697424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269911 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A273832.P2611973615195697424

namespace A273832

/-- `A269911(n)-char[1]` -/
def P2611973615195697424.Spec : Prop :=
  ∀ n, P2611973615195697424.a n = A273832 n

end A273832

/-! ## A273832.P5307393747354482626

`or(1-char[1], A269907(n))`
-/

namespace A273832.P5307393747354482626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) (A269907 n)

end

end A273832.P5307393747354482626

namespace A273832

/-- `or(1-char[1], A269907(n))` -/
def P5307393747354482626.Spec : Prop :=
  ∀ n, P5307393747354482626.a n = A273832 n

end A273832

/-! ## A273832.P12565010213391625440

`A269907(n)+A157928(n)`
-/

namespace A273832.P12565010213391625440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269907 n + A157928 n

end

end A273832.P12565010213391625440

namespace A273832

/-- `A269907(n)+A157928(n)` -/
def P12565010213391625440.Spec : Prop :=
  ∀ n, P12565010213391625440.a n = A273832 n

end A273832

/-! ## A273832.P8697622858737544761

`or(A269907(n), A273418(n))`
-/

namespace A273832.P8697622858737544761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A269907 n) (A273418 n)

end

end A273832.P8697622858737544761

namespace A273832

/-- `or(A269907(n), A273418(n))` -/
def P8697622858737544761.Spec : Prop :=
  ∀ n, P8697622858737544761.a n = A273832 n

end A273832

/-! ## A273832.P17140248806834497715

`xor(A063524(n), A269911(n))`
-/

namespace A273832.P17140248806834497715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A269911 n)

end

end A273832.P17140248806834497715

namespace A273832

/-- `xor(A063524(n), A269911(n))` -/
def P17140248806834497715.Spec : Prop :=
  ∀ n, P17140248806834497715.a n = A273832 n

end A273832

/-! ## A273832.P12662089668562402893

`xor(char[A269958(n)], A269911(n))`
-/

namespace A273832.P12662089668562402893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269958 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A269911 n)

end

end A273832.P12662089668562402893

namespace A273832

/-- `xor(char[A269958(n)], A269911(n))` -/
def P12662089668562402893.Spec : Prop :=
  ∀ n, P12662089668562402893.a n = A273832 n

end A273832

/-! ## A273832.P4495927949009573227

`A273418(n)+4*A157928(n)`
-/

namespace A273832.P4495927949009573227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273418 n + 4 * A157928 n

end

end A273832.P4495927949009573227

namespace A273832

/-- `A273418(n)+4*A157928(n)` -/
def P4495927949009573227.Spec : Prop :=
  ∀ n, P4495927949009573227.a n = A273832 n

end A273832

/-! ## A273832.P11190287107537129326

`2*A267816(n)-A130706(n)!`
-/

namespace A273832.P11190287107537129326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A267816 n - (Nat.factorial (A130706 n).toNat : ℤ)

end

end A273832.P11190287107537129326

namespace A273832

/-- `2*A267816(n)-A130706(n)!` -/
def P11190287107537129326.Spec : Prop :=
  ∀ n, P11190287107537129326.a n = A273832 n

end A273832

/-! ## A273832.P10520052538117142090

`A269907(n)+(n+1)%(A000007(n)+n)`
-/

namespace A273832.P10520052538117142090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269907 n + Int.tmod (n + 1 : ℤ) (A000007 n + (n : ℤ))

end

end A273832.P10520052538117142090

namespace A273832

/-- `A269907(n)+(n+1)%(A000007(n)+n)` -/
def P10520052538117142090.Spec : Prop :=
  ∀ n, P10520052538117142090.a n = A273832 n

end A273832

/-! ## A273832.P7003045687830067317

`A269907(n)+A057427(n-A057427(n))`
-/

namespace A273832.P7003045687830067317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269907 n + A057427 ((n : ℤ) - A057427 n).toNat

end

end A273832.P7003045687830067317

namespace A273832

/-- `A269907(n)+A057427(n-A057427(n))` -/
def P7003045687830067317.Spec : Prop :=
  ∀ n, P7003045687830067317.a n = A273832 n

end A273832

/-! ## A273832.P2706824384276425765

`A269907(n)-A057428(A057428(n)+n)`
-/

namespace A273832.P2706824384276425765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269907 n - A057428 (A057428 n + (n : ℤ)).toNat

end

end A273832.P2706824384276425765

namespace A273832

/-- `A269907(n)-A057428(A057428(n)+n)` -/
def P2706824384276425765.Spec : Prop :=
  ∀ n, P2706824384276425765.a n = A273832 n

end A273832

/-! ## A273832.P17429440904856934592

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=4, a(2)=45, a(3)=221, a(4)=957`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A273832

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P17429440904856934592.Spec : Prop :=
  ∀ n, P17429440904856934592.a n = A273832 n

theorem P17429440904856934592.correct : P17429440904856934592.Spec := by
  intro n
  simp only [A273832]

end A273832

/-! ## A273832.P122853466443110147

`2*A267816(n)-A065033(A014963(∑[n+1]))`
-/

namespace A273832.P122853466443110147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A267816 n - A065033 (A014963 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A273832.P122853466443110147

namespace A273832

/-- `2*A267816(n)-A065033(A014963(∑[n+1]))` -/
def P122853466443110147.Spec : Prop :=
  ∀ n, P122853466443110147.a n = A273832 n

end A273832

/-! ## A273832.P583220274780131209

`A269907(n)-A057428(n²-n)`
-/

namespace A273832.P583220274780131209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269907 n - A057428 (n ^ 2 - n)

end

end A273832.P583220274780131209

namespace A273832

/-- `A269907(n)-A057428(n²-n)` -/
def P583220274780131209.Spec : Prop :=
  ∀ n, P583220274780131209.a n = A273832 n

end A273832

/-!
# A273833: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 961", based on the 5-celled von Neumann neighborhood.

The programs for A273833, the canonical program `A273833.P6379096045100970875` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273833 has offset 0).

The definition of A273833 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2775 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273833.P6379096045100970875

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=1, a(1)=5, a(2)=26, a(3)=71, a(4)=147, a(5)=264, a(6)=428`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A273833

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P6379096045100970875.Spec : Prop :=
  ∀ n, P6379096045100970875.a n = A273833 n

theorem P6379096045100970875.correct : P6379096045100970875.Spec := by
  intro n
  simp only [A273833]

end A273833

/-! ## A273833.P14681337752850885381

`∑[A265056(n)-char[A103517(n)]]`
-/

namespace A273833.P14681337752850885381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265056 n - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273833.P14681337752850885381

namespace A273833

/-- `∑[A265056(n)-char[A103517(n)]]` -/
def P14681337752850885381.Spec : Prop :=
  ∀ n, P14681337752850885381.a n = A273833 n

end A273833

/-! ## A273833.P15535124066853554666

`A273408(n)-∑[char[A103517(n)]]`
-/

namespace A273833.P15535124066853554666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273408 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A273833.P15535124066853554666

namespace A273833

/-- `A273408(n)-∑[char[A103517(n)]]` -/
def P15535124066853554666.Spec : Prop :=
  ∀ n, P15535124066853554666.a n = A273833 n

end A273833

/-! ## A273833.P13996035279615423246

`A273408(n)-A123108(A004442(n))`
-/

namespace A273833.P13996035279615423246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273408 n - A123108 (A004442 n).toNat

end

end A273833.P13996035279615423246

namespace A273833

/-- `A273408(n)-A123108(A004442(n))` -/
def P13996035279615423246.Spec : Prop :=
  ∀ n, P13996035279615423246.a n = A273833 n

end A273833

/-! ## A273833.P6184449371898531215

`∑[A265056(n)-A000035(A007920(n))]`
-/

namespace A273833.P6184449371898531215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265056 n - A000035 (A007920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273833.P6184449371898531215

namespace A273833

/-- `∑[A265056(n)-A000035(A007920(n))]` -/
def P6184449371898531215.Spec : Prop :=
  ∀ n, P6184449371898531215.a n = A273833 n

end A273833

/-! ## A273833.P7868941840126708290

`∑[A265056(n)-A000035(A051699(n))]`
-/

namespace A273833.P7868941840126708290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265056 n - A000035 (A051699 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273833.P7868941840126708290

namespace A273833

/-- `∑[A265056(n)-A000035(A051699(n))]` -/
def P7868941840126708290.Spec : Prop :=
  ∀ n, P7868941840126708290.a n = A273833 n

end A273833

/-! ## A273833.P14391389413053076837

`∑[A265056(n)]-A123108(A004442(n))`
-/

namespace A273833.P14391389413053076837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A123108 (A004442 n).toNat

end

end A273833.P14391389413053076837

namespace A273833

/-- `∑[A265056(n)]-A123108(A004442(n))` -/
def P14391389413053076837.Spec : Prop :=
  ∀ n, P14391389413053076837.a n = A273833 n

end A273833

/-! ## A273833.P1231322988316960184

`∑[A273831(n)]`
-/

namespace A273833.P1231322988316960184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273833.P1231322988316960184

namespace A273833

/-- `∑[A273831(n)]` -/
def P1231322988316960184.Spec : Prop :=
  ∀ n, P1231322988316960184.a n = A273833 n

end A273833

/-! ## A273833.P5210043598298470118

`∑[or(4, A273417(n))]-4`
-/

namespace A273833.P5210043598298470118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A273417 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4

end

end A273833.P5210043598298470118

namespace A273833

/-- `∑[or(4, A273417(n))]-4` -/
def P5210043598298470118.Spec : Prop :=
  ∀ n, P5210043598298470118.a n = A273833 n

end A273833

/-! ## A273833.P6050922230862862467

`∑[or(4, A273417(n))%A001248(n+1)]`
-/

namespace A273833.P6050922230862862467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor 4 (A273417 n)) (A001248 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273833.P6050922230862862467

namespace A273833

/-- `∑[or(4, A273417(n))%A001248(n+1)]` -/
def P6050922230862862467.Spec : Prop :=
  ∀ n, P6050922230862862467.a n = A273833 n

end A273833

/-!
# A273834: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 961", based on the 5-celled von Neumann neighborhood.

The programs for A273834, the canonical program `A273834.P5984939748236288137` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273834 has offset 0).

The definition of A273834 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2686 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273834.P5984939748236288137

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=3, a(1)=17, a(2)=24, a(3)=31, a(4)=41, a(5)=47`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A273834

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P5984939748236288137.Spec : Prop :=
  ∀ n, P5984939748236288137.a n = A273834 n

theorem P5984939748236288137.correct : P5984939748236288137.Spec := by
  intro n
  simp only [A273834]

end A273834

/-! ## A273834.P13712960317143430842

`Δ[A273831(n)]`
-/

namespace A273834.P13712960317143430842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273834.P13712960317143430842

namespace A273834

/-- `Δ[A273831(n)]` -/
def P13712960317143430842.Spec : Prop :=
  ∀ n, P13712960317143430842.a n = A273834 n

end A273834

/-! ## A273834.P4533725061439536481

`Δ[A266719(n)+A265056(n)]`
-/

namespace A273834.P4533725061439536481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266719 n + A265056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273834.P4533725061439536481

namespace A273834

/-- `Δ[A266719(n)+A265056(n)]` -/
def P4533725061439536481.Spec : Prop :=
  ∀ n, P4533725061439536481.a n = A273834 n

end A273834

/-! ## A273834.P8499255072174029222

`A273831(n+1)-A273831(n)`
-/

namespace A273834.P8499255072174029222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273831 (n + 1) - A273831 n

end

end A273834.P8499255072174029222

namespace A273834

/-- `A273831(n+1)-A273831(n)` -/
def P8499255072174029222.Spec : Prop :=
  ∀ n, P8499255072174029222.a n = A273834 n

end A273834

/-! ## A273834.P4341010023459364754

`Δ[A265056(n)-A000035(A051699(n))]`
-/

namespace A273834.P4341010023459364754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265056 n - A000035 (A051699 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273834.P4341010023459364754

namespace A273834

/-- `Δ[A265056(n)-A000035(A051699(n))]` -/
def P4341010023459364754.Spec : Prop :=
  ∀ n, P4341010023459364754.a n = A273834 n

end A273834

/-! ## A273834.P5249686067473210694

`Δ[or(4, A273417(n))%A001248(n+1)]`
-/

namespace A273834.P5249686067473210694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor 4 (A273417 n)) (A001248 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273834.P5249686067473210694

namespace A273834

/-- `Δ[or(4, A273417(n))%A001248(n+1)]` -/
def P5249686067473210694.Spec : Prop :=
  ∀ n, P5249686067473210694.a n = A273834 n

end A273834

/-! ## A273834.P14287542556582016549

`A273420(n)+A000203(n+1)*char[2]`
-/

namespace A273834.P14287542556582016549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273420 n + A000203 (n + 1) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A273834.P14287542556582016549

namespace A273834

/-- `A273420(n)+A000203(n+1)*char[2]` -/
def P14287542556582016549.Spec : Prop :=
  ∀ n, P14287542556582016549.a n = A273834 n

end A273834

/-! ## A273834.P13250883964017360915

`A092486(xor(3, A273420(n)))`
-/

namespace A273834.P13250883964017360915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (Int.xor 3 (A273420 n)).toNat

end

end A273834.P13250883964017360915

namespace A273834

/-- `A092486(xor(3, A273420(n)))` -/
def P13250883964017360915.Spec : Prop :=
  ∀ n, P13250883964017360915.a n = A273834 n

end A273834

/-! ## A273834.P14796292728629585244

`A092486(xor(3, Δ[A273417(n)]))`
-/

namespace A273834.P14796292728629585244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273417 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (Int.xor 3 (f1 (n + 1) - f1 n)).toNat

end

end A273834.P14796292728629585244

namespace A273834

/-- `A092486(xor(3, Δ[A273417(n)]))` -/
def P14796292728629585244.Spec : Prop :=
  ∀ n, P14796292728629585244.a n = A273834 n

end A273834

/-! ## A273834.P17598245584176313914

`A302852(A273420(n))`
-/

namespace A273834.P17598245584176313914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302852 (A273420 n).toNat

end

end A273834.P17598245584176313914

namespace A273834

/-- `A302852(A273420(n))` -/
def P17598245584176313914.Spec : Prop :=
  ∀ n, P17598245584176313914.a n = A273834 n

end A273834

/-! ## A273834.P8226156868713300318

`A302852(Δ[A273417(n)])`
-/

namespace A273834.P8226156868713300318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273417 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302852 (f1 (n + 1) - f1 n).toNat

end

end A273834.P8226156868713300318

namespace A273834

/-- `A302852(Δ[A273417(n)])` -/
def P8226156868713300318.Spec : Prop :=
  ∀ n, P8226156868713300318.a n = A273834 n

end A273834

/-! ## A273834.P9700244543072813526

`A302852(A273417(n+1)-A273417(n))`
-/

namespace A273834.P9700244543072813526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302852 (A273417 (n + 1) - A273417 n).toNat

end

end A273834.P9700244543072813526

namespace A273834

/-- `A302852(A273417(n+1)-A273417(n))` -/
def P9700244543072813526.Spec : Prop :=
  ∀ n, P9700244543072813526.a n = A273834 n

end A273834

/-! ## A273834.P9838190751580540588

`A273420(n)+and(4, A057775(n))`
-/

namespace A273834.P9838190751580540588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273420 n + Int.land 4 (A057775 n)

end

end A273834.P9838190751580540588

namespace A273834

/-- `A273420(n)+and(4, A057775(n))` -/
def P9838190751580540588.Spec : Prop :=
  ∀ n, P9838190751580540588.a n = A273834 n

end A273834

/-! ## A273834.P4099661642775726414

`A273420(n)+A055672(∑[n])`
-/

namespace A273834.P4099661642775726414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273420 n + A055672 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A273834.P4099661642775726414

namespace A273834

/-- `A273420(n)+A055672(∑[n])` -/
def P4099661642775726414.Spec : Prop :=
  ∀ n, P4099661642775726414.a n = A273834 n

end A273834

/-!
# A273835: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 966", based on the 5-celled von Neumann neighborhood.

The programs for A273835, there is no canonical definition to state claims against.
-/

/-! ## A273835.P14851696699529131563

`A273838(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273835.P14851696699529131563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273838 (n - 1) + a (n - 1)

end

end A273835.P14851696699529131563

/-! ## A273835.P15230246342337480159

`Δ[A273837(n)]-A273838(n)`
-/

namespace A273835.P15230246342337480159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273838 n

end

end A273835.P15230246342337480159

/-! ## A273835.P3643154761264982027

`A273837(n+1)-(A273838(n)+A273837(n))`
-/

namespace A273835.P3643154761264982027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273837 (n + 1) - (A273838 n + A273837 n)

end

end A273835.P3643154761264982027

/-! ## A273835.P15066799832199575098

`A020985(n)²+∑[A273838(n)]-A273838(n)`
-/

namespace A273835.P15066799832199575098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A273838 n)

end

end A273835.P15066799832199575098

/-! ## A273835.P8988053351908105672

`A087960(n)²+∑[A273838(n)]-A273838(n)`
-/

namespace A273835.P8988053351908105672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A273838 n)

end

end A273835.P8988053351908105672

/-! ## A273835.P9454387914476793056

`(∑[A273838(n)]-A273838(n)+1)%A215197(n+1)`
-/

namespace A273835.P9454387914476793056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - A273838 n + 1) (A215197 (n + 1))

end

end A273835.P9454387914476793056

/-! ## A273835.P17344886063473127937

`A101000(9*n+1)+∑[A273838(n)]-A273838(n)`
-/

namespace A273835.P17344886063473127937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101000 (9 * n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - A273838 n)

end

end A273835.P17344886063473127937

/-! ## A273835.P10454841793623072067

`A005408((∑[A273838(n)]-A273838(n))/2)`
-/

namespace A273835.P10454841793623072067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j - A273838 n : ℤ) : ℚ) / 2)).toNat

end

end A273835.P10454841793623072067

/-! ## A273835.P16611319978394710675

`A141310(∑[A273838(n)]-A273838(n))`
-/

namespace A273835.P16611319978394710675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (∑ j ∈ Finset.range (n + 1), f1 j - A273838 n).toNat

end

end A273835.P16611319978394710675

/-!
# A273836: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 966", based on the 5-celled von Neumann neighborhood.

The programs for A273836, there is no canonical definition to state claims against.
-/

/-! ## A273836.P18370786559572904679

`A273835(2^n-1)`
-/

namespace A273836.P18370786559572904679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273835 (2 ^ n - 1)

end

end A273836.P18370786559572904679

/-! ## A273836.P6772682868789896892

`record[A273835(A173787(n))]`
-/

namespace A273836.P6772682868789896892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273835 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273836.P6772682868789896892

/-! ## A273836.P456992511827958969

`record[A273835(A218616(n))]`
-/

namespace A273836.P456992511827958969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273835 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273836.P456992511827958969

/-! ## A273836.P2087290446493447554

`record[A273835(A255565(n))]`
-/

namespace A273836.P2087290446493447554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273835 (A255565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273836.P2087290446493447554

/-! ## A273836.P15548640663953962677

`or(1, A273835(A000225(n)))`
-/

namespace A273836.P15548640663953962677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273835 (A000225 n).toNat)

end

end A273836.P15548640663953962677

/-!
# A273837: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 966", based on the 5-celled von Neumann neighborhood.

The programs for A273837, there is no canonical definition to state claims against.
-/

/-! ## A273837.P17542587598093942161

`∑[A273835(n)]`
-/

namespace A273837.P17542587598093942161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273837.P17542587598093942161

/-! ## A273837.P17415148638528448848

`A273835(n%A273835(n))+a(n-1)` with `a(0)=1`
-/

namespace A273837.P17415148638528448848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273835 (Int.tmod (n : ℤ) (A273835 n)).toNat + a (n - 1)

end

end A273837.P17415148638528448848

/-! ## A273837.P17805358944053038126

`∑[A273838(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A273837.P17805358944053038126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A273838 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273837.P17805358944053038126

/-! ## A273837.P3428058538603419030

`∑[∑[A273838(n)]+1-A273838(n)]`
-/

namespace A273837.P3428058538603419030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273838 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273838 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273837.P3428058538603419030

/-! ## A273837.P8659228812471691570

`A273835(n+1)+a(n-1)-A273838(n)` with `a(0)=1`
-/

namespace A273837.P8659228812471691570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273835 (n + 1) + (a (n - 1) - A273838 n)

end

end A273837.P8659228812471691570

/-!
# A273838: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 966", based on the 5-celled von Neumann neighborhood.

The programs for A273838, there is no canonical definition to state claims against.
-/

/-! ## A273838.P7744114388324777433

`Δ[A273835(n)]`
-/

namespace A273838.P7744114388324777433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273838.P7744114388324777433

/-! ## A273838.P9942372329030094418

`A273835(n+1)-A273835(n)`
-/

namespace A273838.P9942372329030094418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273835 (n + 1) - A273835 n

end

end A273838.P9942372329030094418

/-!
# A273843: Numbers that are the average of 3 nonzero squares and the average of 2 positive cubes.

The programs for A273843, there is no canonical definition to state claims against.
-/

/-! ## A273843.P6171837027982496333

`lt[A280618(A093907(n+1)), A280618(2*n)]`
-/

namespace A273843.P6171837027982496333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280618 (A093907 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280618 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A273843.P6171837027982496333

/-! ## A273843.P9298190144605774459

`lt[A280618(A340983(n+4)), A280618(2*n)]`
-/

namespace A273843.P9298190144605774459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280618 (A340983 (n + 4 + 10)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280618 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A273843.P9298190144605774459

/-! ## A273843.P3109930509620878062

`lt[A178225(A367354(n+1)), A280618(2*n)]`
-/

namespace A273843.P3109930509620878062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 (A367354 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280618 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A273843.P3109930509620878062

/-! ## A273843.P8632564386596877483

`lt[A025444(A028310(n+4)), A280618(2*n)]`
-/

namespace A273843.P8632564386596877483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 (A028310 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280618 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A273843.P8632564386596877483

/-! ## A273843.P18163475884380468567

`lt[A025439(n+1), A025455(2*n)]`
-/

namespace A273843.P18163475884380468567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A273843.P18163475884380468567

/-!
# A273844: Least number k such that j*Sd(k) = Sd(k^j) for 1 <= j <= n, where Sd(k) is the sum of the digits of k.

The programs for A273844, there is no canonical definition to state claims against.
-/

/-! ## A273844.P2152056150173384006

`(n+1)*A335726(a(n-1))²` with `a(0)=1`
-/

namespace A273844.P2152056150173384006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * A335726 (a (n - 1)).toNat ^ 2

end

end A273844.P2152056150173384006

/-!
# A273845: Expansion of Product_{n>=1} (1 - x^(3*n))/(1 - x^n)^3 in powers of x.

The programs for A273845, there is no canonical definition to state claims against.
-/

/-! ## A273845.P11241394258225678203

`A000007(n)+3*A277968(n)`
-/

namespace A273845.P11241394258225678203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 3 * A277968 n

end

end A273845.P11241394258225678203

/-! ## A273845.P8839571742566333605

`val(a(n-1)+2, A006331(n))+3*A277968(n)` with `a(0)=1`
-/

namespace A273845.P8839571742566333605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.valuation (a (n - 1) + 2).toNat (A006331 n).toNat : ℤ) + 3 * A277968 n

end

end A273845.P8839571742566333605

/-! ## A273845.P9202577665745933186

`val(a(n-1)+2, A273687(n))+3*A277968(n)` with `a(0)=1`
-/

namespace A273845.P9202577665745933186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.valuation (a (n - 1) + 2).toNat (A273687 n).toNat : ℤ) + 3 * A277968 n

end

end A273845.P9202577665745933186

/-! ## A273845.P7412758779547943651

`val(a(n-1)+2, A052905(n+5))+3*A277968(n)` with `a(0)=1`
-/

namespace A273845.P7412758779547943651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.valuation (a (n - 1) + 2).toNat (A052905 (n + 5)).toNat : ℤ) + 3 * A277968 n

end

end A273845.P7412758779547943651

/-! ## A273845.P3826538424962452573

`val(A167499(n), A185869(n+1))+3*A277968(n)`
-/

namespace A273845.P3826538424962452573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A167499 n).toNat (A185869 (n + 1)).toNat : ℤ) + 3 * A277968 n

end

end A273845.P3826538424962452573

/-! ## A273845.P6997486215775172991

`val(A046691(n+2), A167499(n))+3*A277968(n)`
-/

namespace A273845.P6997486215775172991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A046691 (n + 2)).toNat (A167499 n).toNat : ℤ) + 3 * A277968 n

end

end A273845.P6997486215775172991

/-! ## A273845.P8439012664287055788

`val(n+2, Δ[2*A099376(n)])+3*A277968(n)`
-/

namespace A273845.P8439012664287055788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 2) (f1 (n + 1) - f1 n).toNat : ℤ) + 3 * A277968 n

end

end A273845.P8439012664287055788

/-!
# A273846: Smallest x > 0 such that 10^x - prime(n) is a prime number or 0 if no such prime exists.

The programs for A273846, there is no canonical definition to state claims against.
-/

/-! ## A273846.P9189597895811564489

`A090290(n+2)%(A024912(A090290(n+3)+1)-n)`
-/

namespace A273846.P9189597895811564489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090290 (n + 2)) (A024912 (A090290 (n + 3) + 1).toNat - (n : ℤ))

end

end A273846.P9189597895811564489

/-! ## A273846.P2100228285377930101

`A090290(n+2)%(4-A090289(n+2))`
-/

namespace A273846.P2100228285377930101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090290 (n + 2)) (4 - A090289 (n + 2))

end

end A273846.P2100228285377930101

/-! ## A273846.P574025733687426221

`A090290(n+2)%A007318(A090289(n+2))`
-/

namespace A273846.P574025733687426221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090290 (n + 2)) (A007318 (A090289 (n + 2)).toNat)

end

end A273846.P574025733687426221

/-! ## A273846.P12093829611500071202

`and(A090281(A090288(3*(n+1))), A090290(n+2))`
-/

namespace A273846.P12093829611500071202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A090281 (A090288 (3 * (n + 1))).toNat) (A090290 (n + 2))

end

end A273846.P12093829611500071202

/-! ## A273846.P3990812128845288098

`and(Δ[A089856(3*n+5)], A090290(n+2))`
-/

namespace A273846.P3990812128845288098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089856 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A090290 (n + 2))

end

end A273846.P3990812128845288098

/-!
# A273847: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 969", based on the 5-celled von Neumann neighborhood.

The programs for A273847, the canonical program `A273847.P10148791115079332978` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273847 has offset 0).

The definition of A273847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2842 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273847.P10148791115079332978

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=21, a(3)=45, a(4)=76, a(5)=121, a(6)=169, a(7)=225`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A273847

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P10148791115079332978.Spec : Prop :=
  ∀ n, P10148791115079332978.a n = A273847 n

theorem P10148791115079332978.correct : P10148791115079332978.Spec := by
  intro n
  simp only [A273847]

end A273847

/-! ## A273847.P5476725941842287843

`A273850(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273847.P5476725941842287843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273850 (n - 1) + a (n - 1)

end

end A273847.P5476725941842287843

namespace A273847

/-- `A273850(n-1)+a(n-1)` -/
def P5476725941842287843.Spec : Prop :=
  ∀ n, P5476725941842287843.a n = A273847 n

end A273847

/-! ## A273847.P16142614356015072497

`Δ[A273781(n)-8%(A005836(n+1)+1)]-A273850(n)`
-/

namespace A273847.P16142614356015072497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273781 n - Int.tmod 8 (A005836 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273850 n

end

end A273847.P16142614356015072497

namespace A273847

/-- `Δ[A273781(n)-8%(A005836(n+1)+1)]-A273850(n)` -/
def P16142614356015072497.Spec : Prop :=
  ∀ n, P16142614356015072497.a n = A273847 n

end A273847

/-! ## A273847.P2531556150391611626

`Δ[A273849(n)]-A273850(n)`
-/

namespace A273847.P2531556150391611626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273850 n

end

end A273847.P2531556150391611626

namespace A273847

/-- `Δ[A273849(n)]-A273850(n)` -/
def P2531556150391611626.Spec : Prop :=
  ∀ n, P2531556150391611626.a n = A273847 n

end A273847

/-! ## A273847.P10928573700222261602

`A273849(n+1)-(A273850(n)+A273849(n))`
-/

namespace A273847.P10928573700222261602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273849 (n + 1) - (A273850 n + A273849 n)

end

end A273847.P10928573700222261602

namespace A273847

/-- `A273849(n+1)-(A273850(n)+A273849(n))` -/
def P10928573700222261602.Spec : Prop :=
  ∀ n, P10928573700222261602.a n = A273847 n

end A273847

/-! ## A273847.P6657596118382525046

`∑[A273850(log2(A011782(n)))]-2`
-/

namespace A273847.P6657596118382525046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273850 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A273847.P6657596118382525046

namespace A273847

/-- `∑[A273850(log2(A011782(n)))]-2` -/
def P6657596118382525046.Spec : Prop :=
  ∀ n, P6657596118382525046.a n = A273847 n

end A273847

/-!
# A273848: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 969", based on the 5-celled von Neumann neighborhood.

The programs for A273848, there is no canonical definition to state claims against.
-/

/-! ## A273848.P8981268851904089691

`A270130(n)+char[2]`
-/

namespace A273848.P8981268851904089691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270130 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A273848.P8981268851904089691

/-! ## A273848.P10210233908921628554

`A273767(n)-3*char[2]`
-/

namespace A273848.P10210233908921628554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273767 n - ((3 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A273848.P10210233908921628554

/-! ## A273848.P4423464221462573085

`A270088(n)+5*char[2]`
-/

namespace A273848.P4423464221462573085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270088 n + ((5 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A273848.P4423464221462573085

/-! ## A273848.P11654005181348736420

`A328794(n)+A270130(n)`
-/

namespace A273848.P11654005181348736420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328794 n + A270130 n

end

end A273848.P11654005181348736420

/-! ## A273848.P7395874881145613185

`or(A185012(n), A270130(n))`
-/

namespace A273848.P7395874881145613185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185012 n) (A270130 n)

end

end A273848.P7395874881145613185

/-!
# A273849: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 969", based on the 5-celled von Neumann neighborhood.

The programs for A273849, the canonical program `A273849.P8565137006253817042` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273849 has offset 0).

The definition of A273849 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2796 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273849.P8565137006253817042

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=26, a(3)=71, a(4)=147, a(5)=268, a(6)=437, a(7)=662`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A273849

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P8565137006253817042.Spec : Prop :=
  ∀ n, P8565137006253817042.a n = A273849 n

theorem P8565137006253817042.correct : P8565137006253817042.Spec := by
  intro n
  simp only [A273849]

end A273849

/-! ## A273849.P11021729521387556567

`∑[A273847(n)]`
-/

namespace A273849.P11021729521387556567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273849.P11021729521387556567

namespace A273849

/-- `∑[A273847(n)]` -/
def P11021729521387556567.Spec : Prop :=
  ∀ n, P11021729521387556567.a n = A273849 n

end A273849

/-! ## A273849.P9389715527896173765

`∑[A273850(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A273849.P9389715527896173765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A273850 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273849.P9389715527896173765

namespace A273849

/-- `∑[A273850(n-1)+a(n-1)]` -/
def P9389715527896173765.Spec : Prop :=
  ∀ n, P9389715527896173765.a n = A273849 n

end A273849

/-! ## A273849.P984212129627736263

`A273847(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A273849.P984212129627736263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273847 n + a (A023443 n).toNat

end

end A273849.P984212129627736263

namespace A273849

/-- `A273847(n)+a(A023443(n))` -/
def P984212129627736263.Spec : Prop :=
  ∀ n, P984212129627736263.a n = A273849 n

end A273849

/-! ## A273849.P32725508124107035

`A273781(n)-8%(A005836(n+1)+1)`
-/

namespace A273849.P32725508124107035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273781 n - Int.tmod 8 (A005836 (n + 1) + 1)

end

end A273849.P32725508124107035

namespace A273849

/-- `A273781(n)-8%(A005836(n+1)+1)` -/
def P32725508124107035.Spec : Prop :=
  ∀ n, P32725508124107035.a n = A273849 n

end A273849

/-! ## A273849.P17140047841236411861

`a(n-1)+A273847(n)+A000007(n)` with `a(0)=1`
-/

namespace A273849.P17140047841236411861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A273847 n + A000007 n)

end

end A273849.P17140047841236411861

namespace A273849

/-- `a(n-1)+A273847(n)+A000007(n)` -/
def P17140047841236411861.Spec : Prop :=
  ∀ n, P17140047841236411861.a n = A273849 n

end A273849

/-!
# A273850: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 969", based on the 5-celled von Neumann neighborhood.

The programs for A273850, the canonical program `A273850.P13367046219896992170` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273850 has offset 0).

The definition of A273850 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2841 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273850.P13367046219896992170

`2*a(n-1)-a(n-2)` with `a(0)=3, a(1)=17, a(2)=24, a(3)=31, a(4)=45, a(5)=48, a(6)=56`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A273850

/-- `2*a(n-1)-a(n-2)` -/
def P13367046219896992170.Spec : Prop :=
  ∀ n, P13367046219896992170.a n = A273850 n

theorem P13367046219896992170.correct : P13367046219896992170.Spec := by
  intro n
  simp only [A273850]

end A273850

/-!
# A273851: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 974", based on the 5-celled von Neumann neighborhood.

The programs for A273851, there is no canonical definition to state claims against.
-/

/-! ## A273851.P10741556998385236941

`A273854(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273851.P10741556998385236941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273854 (n - 1) + a (n - 1)

end

end A273851.P10741556998385236941

/-! ## A273851.P716063879182169769

`Δ[A273853(n)]-A273854(n)`
-/

namespace A273851.P716063879182169769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273853 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273854 n

end

end A273851.P716063879182169769

/-! ## A273851.P17993189815607559293

`A273853(n+1)-(A273854(n)+A273853(n))`
-/

namespace A273851.P17993189815607559293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273853 (n + 1) - (A273854 n + A273853 n)

end

end A273851.P17993189815607559293

/-! ## A273851.P8911013161469253324

`A020985(n)²+∑[A273854(n)]-A273854(n)`
-/

namespace A273851.P8911013161469253324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A273854 n)

end

end A273851.P8911013161469253324

/-! ## A273851.P9300961728307101491

`A057427(n+1)+∑[A273854(n)]-A273854(n)`
-/

namespace A273851.P9300961728307101491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - A273854 n)

end

end A273851.P9300961728307101491

/-! ## A273851.P11021656618979776446

`A000034(2*n)+∑[A273854(n)]-A273854(n)`
-/

namespace A273851.P11021656618979776446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) + (∑ j ∈ Finset.range (n + 1), f1 j - A273854 n)

end

end A273851.P11021656618979776446

/-! ## A273851.P16265843282518078127

`(∑[A273854(n)]-A273854(n)+1)%A001546(n)`
-/

namespace A273851.P16265843282518078127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - A273854 n + 1) (A001546 n)

end

end A273851.P16265843282518078127

/-! ## A273851.P17042849231357600493

`(∑[A273854(n)]-A273854(n))%A072025(n)+1`
-/

namespace A273851.P17042849231357600493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - A273854 n) (A072025 n) + 1

end

end A273851.P17042849231357600493

/-! ## A273851.P4487883612227490359

`A265643(n+1)²+∑[A273854(n)]-A273854(n)`
-/

namespace A273851.P4487883612227490359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265643 (n + 1) ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A273854 n)

end

end A273851.P4487883612227490359

/-! ## A273851.P2168512841540548231

`(1-A334820(n))!+∑[A273854(n)]-A273854(n)`
-/

namespace A273851.P2168512841540548231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (1 - A334820 n).toNat : ℤ) + (∑ j ∈ Finset.range (n + 1), f1 j - A273854 n)

end

end A273851.P2168512841540548231

/-! ## A273851.P10021880554110781209

`∑[A273854(n)]-A273854(n)--1%A017017(n)`
-/

namespace A273851.P10021880554110781209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A273854 n - Int.tmod (-1) (A017017 n)

end

end A273851.P10021880554110781209

/-! ## A273851.P17939720950804240913

`A043038(n+1)%2+∑[A273854(n)]-A273854(n)`
-/

namespace A273851.P17939720950804240913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043038 (n + 1)) 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A273854 n)

end

end A273851.P17939720950804240913

/-! ## A273851.P6150296532293328610

`A063226(n+1)%2+∑[A273854(n)]-A273854(n)`
-/

namespace A273851.P6150296532293328610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063226 (n + 1)) 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A273854 n)

end

end A273851.P6150296532293328610

/-! ## A273851.P16741550147842276787

`A008619(2*n)-n+∑[A273854(n)]-A273854(n)`
-/

namespace A273851.P16741550147842276787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - (n : ℤ) + (∑ j ∈ Finset.range (n + 1), f1 j - A273854 n)

end

end A273851.P16741550147842276787

/-! ## A273851.P8421040957327275065

`A014963(4*n+6)+∑[A273854(n)]-A273854(n)`
-/

namespace A273851.P8421040957327275065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 6) + (∑ j ∈ Finset.range (n + 1), f1 j - A273854 n)

end

end A273851.P8421040957327275065

/-! ## A273851.P10219413580991895587

`A000027(∑[A273854(n)]-A273854(n)+1)`
-/

namespace A273851.P10219413580991895587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j - A273854 n + 1).toNat

end

end A273851.P10219413580991895587

/-! ## A273851.P11308040786649771798

`A000265(∑[A273854(n)]-A273854(n)+1)`
-/

namespace A273851.P11308040786649771798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∑ j ∈ Finset.range (n + 1), f1 j - A273854 n + 1).toNat

end

end A273851.P11308040786649771798

/-! ## A273851.P17789900792708989551

`A093411(∑[A273854(n)]-A273854(n)+1)`
-/

namespace A273851.P17789900792708989551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (∑ j ∈ Finset.range (n + 1), f1 j - A273854 n + 1).toNat

end

end A273851.P17789900792708989551

/-!
# A273852: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 974", based on the 5-celled von Neumann neighborhood.

The programs for A273852, there is no canonical definition to state claims against.
-/

/-! ## A273852.P15973437294814113596

`A273851(2^n-1)`
-/

namespace A273852.P15973437294814113596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273851 (2 ^ n - 1)

end

end A273852.P15973437294814113596

/-! ## A273852.P5350863945650735046

`record[A273851(A255067(n))]`
-/

namespace A273852.P5350863945650735046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273851 (A255067 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273852.P5350863945650735046

/-! ## A273852.P12121426591480302201

`record[A273851(A292600(n))]`
-/

namespace A273852.P12121426591480302201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273851 (A292600 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273852.P12121426591480302201

/-! ## A273852.P2324399137573780601

`or(1, A273851(A000225(n)))`
-/

namespace A273852.P2324399137573780601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273851 (A000225 n).toNat)

end

end A273852.P2324399137573780601

/-! ## A273852.P3307401289570141491

`record[A273851(Δ[A228693(n)])]`
-/

namespace A273852.P3307401289570141491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273851 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273852.P3307401289570141491

/-!
# A273853: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 974", based on the 5-celled von Neumann neighborhood.

The programs for A273853, there is no canonical definition to state claims against.
-/

/-! ## A273853.P5583964114715433978

`∑[∑[A273854(n)]+1-A273854(n)]`
-/

namespace A273853.P5583964114715433978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273854 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273854 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273853.P5583964114715433978

/-! ## A273853.P2807607201379522612

`∑[A273851(n)]`
-/

namespace A273853.P2807607201379522612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273853.P2807607201379522612

/-! ## A273853.P2785675025102316979

`A273851(A110654(n+n))+a(n-1)` with `a(0)=1`
-/

namespace A273853.P2785675025102316979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273851 (A110654 (n + n)).toNat + a (n - 1)

end

end A273853.P2785675025102316979

/-! ## A273853.P7025141156422213825

`A273851(n%A025725(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A273853.P7025141156422213825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273851 (Int.tmod (n : ℤ) (A025725 (n + 1))).toNat + a (n - 1)

end

end A273853.P7025141156422213825

/-! ## A273853.P16398432404040232901

`A273851(val(A011782(n+1), 2))+a(n-1)` with `a(0)=1`
-/

namespace A273853.P16398432404040232901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273851 (SequenceMachineLib.valuation (A011782 (n + 1)).toNat 2) + a (n - 1)

end

end A273853.P16398432404040232901

/-! ## A273853.P8532865078802111598

`∑[A098180(∑[A273854(n)]-A273854(n))]`
-/

namespace A273853.P8532865078802111598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273854 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098180 (∑ j ∈ Finset.range (n + 1), f2 j - A273854 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273853.P8532865078802111598

/-!
# A273854: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 974", based on the 5-celled von Neumann neighborhood.

The programs for A273854, there is no canonical definition to state claims against.
-/

/-! ## A273854.P2547775348660551939

`Δ[A273853(n)]-A273851(n)`
-/

namespace A273854.P2547775348660551939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273853 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273851 n

end

end A273854.P2547775348660551939

/-! ## A273854.P8039089398122161670

`Δ[A273851(n)]`
-/

namespace A273854.P8039089398122161670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273854.P8039089398122161670

/-! ## A273854.P14705626415663376674

`A273851(n+1)-A273851(n)`
-/

namespace A273854.P14705626415663376674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273851 (n + 1) - A273851 n

end

end A273854.P14705626415663376674

/-!
# A273855: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 998", based on the 5-celled von Neumann neighborhood.

The programs for A273855, there is no canonical definition to state claims against.
-/

/-! ## A273855.P2786551426451913762

`A273858(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273855.P2786551426451913762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273858 (n - 1) + a (n - 1)

end

end A273855.P2786551426451913762

/-! ## A273855.P6320671440846112653

`Δ[A273857(n)]-A273858(n)`
-/

namespace A273855.P6320671440846112653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273857 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273858 n

end

end A273855.P6320671440846112653

/-! ## A273855.P10354131656184848823

`A273857(n+1)-(A273858(n)+A273857(n))`
-/

namespace A273855.P10354131656184848823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273857 (n + 1) - (A273858 n + A273857 n)

end

end A273855.P10354131656184848823

/-! ## A273855.P11739655025668322658

`A000034(2*n)+∑[A273858(n)]-A273858(n)`
-/

namespace A273855.P11739655025668322658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) + (∑ j ∈ Finset.range (n + 1), f1 j - A273858 n)

end

end A273855.P11739655025668322658

/-! ## A273855.P14224155753296429391

`A266303(2*n)+∑[A273858(n)]-A273858(n)`
-/

namespace A273855.P14224155753296429391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266303 (2 * n) + (∑ j ∈ Finset.range (n + 1), f1 j - A273858 n)

end

end A273855.P14224155753296429391

/-! ## A273855.P8658881196978192768

`A165326(n+1)²+∑[A273858(n)]-A273858(n)`
-/

namespace A273855.P8658881196978192768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (n + 1) ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A273858 n)

end

end A273855.P8658881196978192768

/-! ## A273855.P14386319243696856247

`A000027(∑[A273858(n)]-A273858(n)+1)`
-/

namespace A273855.P14386319243696856247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j - A273858 n + 1).toNat

end

end A273855.P14386319243696856247

/-! ## A273855.P471788946211475293

`A016813((∑[A273858(n)]-A273858(n))/4)`
-/

namespace A273855.P471788946211475293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j - A273858 n : ℤ) : ℚ) / 4)).toNat

end

end A273855.P471788946211475293

/-! ## A273855.P2303140023248506361

`A004442(∑[A273858(n)]-A273858(n))`
-/

namespace A273855.P2303140023248506361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (∑ j ∈ Finset.range (n + 1), f1 j - A273858 n).toNat

end

end A273855.P2303140023248506361

/-! ## A273855.P14455050290544842677

`1-A001489(∑[A273858(n)]-A273858(n))`
-/

namespace A273855.P14455050290544842677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001489 (∑ j ∈ Finset.range (n + 1), f1 j - A273858 n).toNat

end

end A273855.P14455050290544842677

/-!
# A273856: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 998", based on the 5-celled von Neumann neighborhood.

The programs for A273856, there is no canonical definition to state claims against.
-/

/-! ## A273856.P11384536665532980794

`A273855(2^n-1)`
-/

namespace A273856.P11384536665532980794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273855 (2 ^ n - 1)

end

end A273856.P11384536665532980794

/-! ## A273856.P12205370454514414106

`record[A273855(A173787(n))]`
-/

namespace A273856.P12205370454514414106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273855 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273856.P12205370454514414106

/-! ## A273856.P7663382772955095021

`or(1, A273855(A000225(n)))`
-/

namespace A273856.P7663382772955095021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273855 (A000225 n).toNat)

end

end A273856.P7663382772955095021

/-! ## A273856.P6399714075364412667

`record[A273855(Δ[A228693(n)])]`
-/

namespace A273856.P6399714075364412667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273855 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273856.P6399714075364412667

/-! ## A273856.P4937249616488432466

`record[A273855(A175946(n+1))]`
-/

namespace A273856.P4937249616488432466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273855 (A175946 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273856.P4937249616488432466

/-!
# A273857: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 998", based on the 5-celled von Neumann neighborhood.

The programs for A273857, there is no canonical definition to state claims against.
-/

/-! ## A273857.P10356308129518603249

`∑[A273855(n)]`
-/

namespace A273857.P10356308129518603249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273855 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273857.P10356308129518603249

/-! ## A273857.P10838658202827176089

`A273855(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A273857.P10838658202827176089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273855 n + a (A023443 n).toNat

end

end A273857.P10838658202827176089

/-! ## A273857.P588723213881028869

`a(n-1)+A273855(n)%A160831(n)` with `a(0)=1`
-/

namespace A273857.P588723213881028869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A273855 n) (A160831 n)

end

end A273857.P588723213881028869

/-! ## A273857.P15452244049796278818

`a(n-1)+or(A051731(n+1), A273855(n))` with `a(0)=1`
-/

namespace A273857.P15452244049796278818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.lor (A051731 (n + 1)) (A273855 n)

end

end A273857.P15452244049796278818

/-! ## A273857.P15192678673665240858

`∑[A273858(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A273857.P15192678673665240858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A273858 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273857.P15192678673665240858

/-! ## A273857.P14979767061533288439

`∑[∑[A273858(n)]-A273858(n)+1]`
-/

namespace A273857.P14979767061533288439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273858 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A273858 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273857.P14979767061533288439

/-!
# A273858: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 998", based on the 5-celled von Neumann neighborhood.

The programs for A273858, there is no canonical definition to state claims against.
-/

/-! ## A273858.P11354729722397176448

`Δ[A273855(n)]`
-/

namespace A273858.P11354729722397176448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273855 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273858.P11354729722397176448

/-! ## A273858.P7092537263391772228

`A273855(n+1)-A273855(n)`
-/

namespace A273858.P7092537263391772228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273855 (n + 1) - A273855 n

end

end A273858.P7092537263391772228

/-! ## A273858.P14667020589005882836

`A273855(A000027(n+1))+A001489(A273855(n))`
-/

namespace A273858.P14667020589005882836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273855 (A000027 (n + 1)).toNat + A001489 (A273855 n).toNat

end

end A273858.P14667020589005882836

/-! ## A273858.P2081699432961806730

`A273855(A028310(n)+1)+A001489(A273855(n))`
-/

namespace A273858.P2081699432961806730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273855 (A028310 n + 1).toNat + A001489 (A273855 n).toNat

end

end A273858.P2081699432961806730

/-! ## A273858.P14682685964139689026

`A273855(A131730(4*n+2))+A001489(A273855(n))`
-/

namespace A273858.P14682685964139689026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273855 (A131730 (4 * n + 2)).toNat + A001489 (A273855 n).toNat

end

end A273858.P14682685964139689026

/-! ## A273858.P17505928020744876935

`(A273855(n+1)+A001489(A273855(n)))%A158372(n+1)`
-/

namespace A273858.P17505928020744876935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273855 (n + 1) + A001489 (A273855 n).toNat) (A158372 (n + 1))

end

end A273858.P17505928020744876935

/-!
# A273859: The successive numbers of integers visible between two primes are given by the sequence itself.

The programs for A273859, there is no canonical definition to state claims against.
-/

/-! ## A273859.P698040022685953263

`A332073(A028310(n))%A107674(n)`
-/

namespace A273859.P698040022685953263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332073 (A028310 n).toNat) (A107674 n)

end

end A273859.P698040022685953263

/-! ## A273859.P11359918836809068381

`A332073(A028310(n))-A000007(A152760(n))`
-/

namespace A273859.P11359918836809068381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332073 (A028310 n).toNat - A000007 (A152760 n).toNat

end

end A273859.P11359918836809068381

/-! ## A273859.P8784976674736286345

`A332073(A065033(2*n))%A119106(n+1)`
-/

namespace A273859.P8784976674736286345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332073 (A065033 (2 * n)).toNat) (A119106 (n + 1))

end

end A273859.P8784976674736286345

/-! ## A273859.P17045660931310229263

`A332073(A028310(n))-A073424(A046679(n+1))`
-/

namespace A273859.P17045660931310229263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332073 (A028310 n).toNat - A073424 (A046679 (n + 1)).toNat

end

end A273859.P17045660931310229263

/-!
# A273860: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 1006", based on the 5-celled von Neumann neighborhood.

The programs for A273860, there is no canonical definition to state claims against.
-/

/-! ## A273860.P5167480180629074455

`A169709(2^n-1)`
-/

namespace A273860.P5167480180629074455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169709 (2 ^ n - 1)

end

end A273860.P5167480180629074455

/-! ## A273860.P6539538959724815960

`record[A169709(A173787(n))]`
-/

namespace A273860.P6539538959724815960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169709 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273860.P6539538959724815960

/-! ## A273860.P388276214250600957

`record[A169709(A255067(n))]`
-/

namespace A273860.P388276214250600957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169709 (A255067 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273860.P388276214250600957

/-! ## A273860.P2250500561701053053

`record[A169709(A303763(n))]`
-/

namespace A273860.P2250500561701053053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169709 (A303763 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273860.P2250500561701053053

/-! ## A273860.P16774344707703045177

`record[A169709(A303765(n))]`
-/

namespace A273860.P16774344707703045177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169709 (A303765 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273860.P16774344707703045177

/-!
# A273861: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 1006", based on the 5-celled von Neumann neighborhood.

The programs for A273861, there is no canonical definition to state claims against.
-/

/-! ## A273861.P6630892672617229316

`∑[A169709(n)]`
-/

namespace A273861.P6630892672617229316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273861.P6630892672617229316

/-! ## A273861.P10182857854660812149

`A169709(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A273861.P10182857854660812149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A169709 n + a (A023443 n).toNat

end

end A273861.P10182857854660812149

/-! ## A273861.P3578664492244339482

`a(n-1)+A169709(n)+A000007(n)` with `a(0)=1`
-/

namespace A273861.P3578664492244339482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A169709 n + A000007 n)

end

end A273861.P3578664492244339482

/-! ## A273861.P6482669498214263529

`a(n-1)+A001221(A002476(n+1))*A169709(n)` with `a(0)=1`
-/

namespace A273861.P6482669498214263529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A001221 (A002476 (n + 1)).toNat * A169709 n

end

end A273861.P6482669498214263529

/-! ## A273861.P17698017194175857447

`∑[∑[A169710(n)]-A169710(n)+1]`
-/

namespace A273861.P17698017194175857447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169710 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A169710 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273861.P17698017194175857447

/-! ## A273861.P6664592855017186453

`a(n-1)+A348945(A001748(n+1))+A169709(n)` with `a(0)=1`
-/

namespace A273861.P6664592855017186453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A348945 (A001748 (n + 1)).toNat + A169709 n)

end

end A273861.P6664592855017186453

/-! ## A273861.P17864744470382672568

`∑[A004442(∑[A169710(n)]-A169710(n))]`
-/

namespace A273861.P17864744470382672568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169710 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (∑ j ∈ Finset.range (n + 1), f2 j - A169710 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273861.P17864744470382672568

/-!
# A273863: The successive numbers of integers visible between two even terms are given by the sequence itself.

The programs for A273863, there is no canonical definition to state claims against.
-/

/-! ## A273863.P1808155751315698721

`A171086(n+1)-1`
-/

namespace A273863.P1808155751315698721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171086 (n + 1) - 1

end

end A273863.P1808155751315698721

/-! ## A273863.P7810756102940498613

`A023443(A171086(n+1))`
-/

namespace A273863.P7810756102940498613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A171086 (n + 1)).toNat

end

end A273863.P7810756102940498613

/-! ## A273863.P5636934301323725441

`A023444(A171086(n+1)+1)`
-/

namespace A273863.P5636934301323725441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A171086 (n + 1) + 1).toNat

end

end A273863.P5636934301323725441

/-! ## A273863.P8834955061861655189

`A289207(A171086(n+1)+1)`
-/

namespace A273863.P8834955061861655189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A171086 (n + 1) + 1).toNat

end

end A273863.P8834955061861655189

/-! ## A273863.P2527881529257520673

`A023445(A171086(n+1)+2)`
-/

namespace A273863.P2527881529257520673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A171086 (n + 1) + 2).toNat

end

end A273863.P2527881529257520673

/-! ## A273863.P13523098029857956618

`A023446(A171086(n+1)+3)`
-/

namespace A273863.P13523098029857956618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A171086 (n + 1) + 3).toNat

end

end A273863.P13523098029857956618

/-! ## A273863.P11469740771740459509

`A140106(2*A171086(n+1))`
-/

namespace A273863.P11469740771740459509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A171086 (n + 1)).toNat

end

end A273863.P11469740771740459509

/-! ## A273863.P10954274413332744568

`A279119(2*A171086(n+1))`
-/

namespace A273863.P10954274413332744568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279119 (2 * A171086 (n + 1)).toNat

end

end A273863.P10954274413332744568

/-! ## A273863.P17466676505574674516

`A059169(4*A171086(n+1))`
-/

namespace A273863.P17466676505574674516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (4 * A171086 (n + 1)).toNat

end

end A273863.P17466676505574674516

/-! ## A273863.P9571746960328037689

`A260196(n+2)+A171086(n+1)`
-/

namespace A273863.P9571746960328037689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A171086 (n + 1)

end

end A273863.P9571746960328037689

/-!
# A273865: The successive numbers of integers visible between two odd terms are given by the sequence itself.

The programs for A273865, there is no canonical definition to state claims against.
-/

/-! ## A273865.P16749722283064018345

`A332072(n+1)-1`
-/

namespace A273865.P16749722283064018345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332072 (n + 1) - 1

end

end A273865.P16749722283064018345

/-! ## A273865.P9332545908099106704

`A023443(A332072(n+1))`
-/

namespace A273865.P9332545908099106704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A332072 (n + 1)).toNat

end

end A273865.P9332545908099106704

/-! ## A273865.P29191324973327207

`A023444(A332072(n+1)+1)`
-/

namespace A273865.P29191324973327207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A332072 (n + 1) + 1).toNat

end

end A273865.P29191324973327207

/-! ## A273865.P6682604976464474971

`A289207(A332072(n+1)+1)`
-/

namespace A273865.P6682604976464474971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A332072 (n + 1) + 1).toNat

end

end A273865.P6682604976464474971

/-! ## A273865.P18333224862292856659

`A023445(A332072(n+1)+2)`
-/

namespace A273865.P18333224862292856659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A332072 (n + 1) + 2).toNat

end

end A273865.P18333224862292856659

/-! ## A273865.P16947903132370359676

`A140106(2*A332072(n+1))`
-/

namespace A273865.P16947903132370359676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A332072 (n + 1)).toNat

end

end A273865.P16947903132370359676

/-! ## A273865.P13208495292581684457

`xor(A004174(gcd(n, n+1))*A332072(n+1), -1)`
-/

namespace A273865.P13208495292581684457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004174 (Nat.gcd n (n + 1)) * A332072 (n + 1)) (-1)

end

end A273865.P13208495292581684457

/-! ## A273865.P3468436724040006824

`abs(A332072(n+1)+A057428(A304036(n)))`
-/

namespace A273865.P3468436724040006824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332072 (n + 1) + A057428 (A304036 n).toNat|

end

end A273865.P3468436724040006824

/-! ## A273865.P3516952581157223871

`A140106(A332072(n+1)+A332072(n+1))`
-/

namespace A273865.P3516952581157223871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A332072 (n + 1) + A332072 (n + 1)).toNat

end

end A273865.P3516952581157223871

/-!
# A273866: Coefficients a(k,m) of polynomials a{k}(h) appearing in the product Product_{k >= 1} (1 - a{k}(h)*x^k) = 1 - h*x/(1-x).

The programs for A273866, there is no canonical definition to state claims against.
-/

/-! ## A273866.P5180631637194329359

`A133801(A330341(n+1)+1)`
-/

namespace A273866.P5180631637194329359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133801 (A330341 (n + 1) + 1).toNat

end

end A273866.P5180631637194329359

/-!
# A273868: Numbers k such that 10^k - 9^(k+1) is prime.

The programs for A273868, there is no canonical definition to state claims against.
-/

/-! ## A273868.P7036726717936305636

`A336366(A086982(n+1)-A007895(n))`
-/

namespace A273868.P7036726717936305636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336366 (A086982 (n + 1) - A007895 n).toNat

end

end A273868.P7036726717936305636

/-!
# A273869: Integers n such that floor(sqrt(n!)) (A055226(n)) is a prime number.

The programs for A273869, there is no canonical definition to state claims against.
-/

/-! ## A273869.P2154873479765482711

`A247233(A287212(n+1))`
-/

namespace A273869.P2154873479765482711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247233 (A287212 (n + 1)).toNat

end

end A273869.P2154873479765482711

/-!
# A273870: Numbers m such that 4^(m-1) == 1 (mod (m-1)^2 + 1).

The programs for A273870, there is no canonical definition to state claims against.
-/

/-! ## A273870.P10157673395197204128

`sqrt(A273999(n+1)-1)+1`
-/

namespace A273870.P10157673395197204128
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A273999 (n + 1) - 1 : ℝ) + 1

end

end A273870.P10157673395197204128

/-! ## A273870.P10717113528715825491

`ceil(sqrt(A273999(n+1)))`
-/

namespace A273870.P10717113528715825491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A273999 (n + 1) : ℝ)⌉

end

end A273870.P10717113528715825491

/-! ## A273870.P1129698171831511744

`floor(A057427(n)+sqrt(A273999(n+1)))`
-/

namespace A273870.P1129698171831511744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057427 n : ℝ) + Real.sqrt (A273999 (n + 1) : ℝ)⌋

end

end A273870.P1129698171831511744

/-! ## A273870.P559783624752857523

`ceil(root(A273999(n+1), A036453(n+1)))`
-/

namespace A273870.P559783624752857523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A273999 (n + 1) : ℝ) ^ (1 / (A036453 (n + 1) : ℝ))⌉

end

end A273870.P559783624752857523

/-!
# A273871: Primes p such that (4^(p-1)-1) == 0 mod ((p-1)^2+1).

The programs for A273871, there is no canonical definition to state claims against.
-/

/-! ## A273871.P14868401843005058004

`p?[A273870(n+1)]`
-/

namespace A273871.P14868401843005058004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A273871.P14868401843005058004

/-! ## A273871.P1802380808768154908

`p?[ceil(sqrt(A273999(n+1)))]`
-/

namespace A273871.P1802380808768154908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A273999 (n + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A273871.P1802380808768154908

/-! ## A273871.P2620719786313096874

`p?[record[A273870(A106466(n))]]`
-/

namespace A273871.P2620719786313096874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273870 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A273871.P2620719786313096874

/-! ## A273871.P7482232327357185916

`p?[record[A273870(A126759(n))]]`
-/

namespace A273871.P7482232327357185916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273870 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A273871.P7482232327357185916

/-!
# A273872: Subword complexity (number of distinct blocks of length n) of sequence A189576.

The programs for A273872, there is no canonical definition to state claims against.
-/

/-! ## A273872.P9310812722503760557

`∑[A196046(p?[A339022(n+2)])]`
-/

namespace A273872.P9310812722503760557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339022 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196046 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273872.P9310812722503760557

/-! ## A273872.P16134842544743632124

`∑[A069010(∑[A007534(2*(n+2))])]`
-/

namespace A273872.P16134842544743632124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007534 (2 * (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273872.P16134842544743632124

/-! ## A273872.P5619276727966802650

`A300403(A000041(n))+A130664(n+1)`
-/

namespace A273872.P5619276727966802650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300403 (A000041 n).toNat + A130664 (n + 1)

end

end A273872.P5619276727966802650

/-! ## A273872.P12108284728895855897

`∑[A141070(A229240(n+1))]`
-/

namespace A273872.P12108284728895855897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141070 (A229240 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273872.P12108284728895855897

/-! ## A273872.P17181709385326978186

`∑[A297773(∑[A140790(n+1)])]`
-/

namespace A273872.P17181709385326978186
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140790 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297773 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273872.P17181709385326978186

/-!
# A273873: Number of strict trees of weight n.

The programs for A273873, there is no canonical definition to state claims against.
-/

/-! ## A273873.P15533982501267288507

`A295279(2^(n+1))`
-/

namespace A273873.P15533982501267288507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295279 (2 ^ (n + 1))

end

end A273873.P15533982501267288507

/-! ## A273873.P17821965070476338317

`∏{p}[2^n, A295279(#*2^n)]`
-/

namespace A273873.P17821965070476338317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A295279 (p * 2 ^ n)

end

end A273873.P17821965070476338317

/-! ## A273873.P18156383630791171358

`gcd(floor(acot(n)²), A295279(A000079(n+1)))`
-/

namespace A273873.P18156383630791171358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋ (A295279 (A000079 (n + 1)).toNat)

end

end A273873.P18156383630791171358

/-! ## A273873.P593079372098251112

`A295279(A198633(n))%A198633(n)`
-/

namespace A273873.P593079372098251112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295279 (A198633 n).toNat) (A198633 n)

end

end A273873.P593079372098251112

/-! ## A273873.P4315134550308633320

`A295279(A000079(n+1))+A011731(n)`
-/

namespace A273873.P4315134550308633320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295279 (A000079 (n + 1)).toNat + A011731 n

end

end A273873.P4315134550308633320

/-!
# A273875: Number of ordered ways to write n as w^2 + x^2 + y^2 + z^2 with x*y + 2*y*z + 4*z*x a nonnegative cube, where w,x,y,z are integers with w >= 0 and x > 0.

The programs for A273875, there is no canonical definition to state claims against.
-/

/-! ## A273875.P16193976104745136349

`A179651(n+1)-A033665(A019565(n))`
-/

namespace A273875.P16193976104745136349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179651 (n + 1) - A033665 (A019565 n).toNat

end

end A273875.P16193976104745136349

/-!
# A273876: The successive numbers of digits visible between two odd terms are given by the sequence itself.

The programs for A273876, there is no canonical definition to state claims against.
-/

/-! ## A273876.P2462491230444759868

`A011649(comp[floor(ϕ*n)])+n`
-/

namespace A273876.P2462491230444759868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011649 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + (n : ℤ)

end

end A273876.P2462491230444759868

/-! ## A273876.P1023579842274928009

`Δ[A290667(n+1)%2]+n`
-/

namespace A273876.P1023579842274928009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290667 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A273876.P1023579842274928009

/-! ## A273876.P7500701034690425912

`Δ[A074290(round(∑[3*2^(n-2)]))²]+n`
-/

namespace A273876.P7500701034690425912
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074290 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A273876.P7500701034690425912

/-! ## A273876.P1658359682352864853

`A073445(A000294(n))+n`
-/

namespace A273876.P1658359682352864853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073445 (A000294 n).toNat + (n : ℤ)

end

end A273876.P1658359682352864853

/-!
# A273878: Numerator of (2*(n+1)!/(n+2)).

The programs for A273878, there is no canonical definition to state claims against.
-/

/-! ## A273878.P9760662487055658367

`(n+1)*A090586(n+1)`
-/

namespace A273878.P9760662487055658367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A090586 (n + 1)

end

end A273878.P9760662487055658367

/-! ## A273878.P7281746369166239965

`lcm(n+2, 2*(n+1)!)/(n+2)`
-/

namespace A273878.P7281746369166239965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 2) (2 * Nat.factorial (n + 1)) : ℚ) / (n + 2 : ℚ)

end

end A273878.P7281746369166239965

/-! ## A273878.P8733018675294299226

`(n+1)*A093422(∑[n+1])`
-/

namespace A273878.P8733018675294299226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A093422 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A273878.P8733018675294299226

/-! ## A273878.P4178837267465149550

`A001563(n+1)/A069268(n+1)`
-/

namespace A273878.P4178837267465149550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001563 (n + 1) : ℚ) / (A069268 (n + 1) : ℚ)

end

end A273878.P4178837267465149550

/-! ## A273878.P7365807619894472886

`A090586(n+1)+A062119(n+1)/A069268(n+1)`
-/

namespace A273878.P7365807619894472886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090586 (n + 1) : ℚ) + (A062119 (n + 1) : ℚ) / (A069268 (n + 1) : ℚ)

end

end A273878.P7365807619894472886

/-!
# A273881: Pick any pair of "3" digits in the sequence. Those two "3"s are separated by k digits. This is the lexicographically earliest sequence of distinct terms in which all the resulting values of k are distinct.

The programs for A273881, there is no canonical definition to state claims against.
-/

/-! ## A273881.P1098586332802580015

`A241469(A303929(n))+n`
-/

namespace A273881.P1098586332802580015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241469 (A303929 n).toNat + (n : ℤ)

end

end A273881.P1098586332802580015

/-! ## A273881.P15832666730088777514

`A256974(A351637(n))+n`
-/

namespace A273881.P15832666730088777514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 (A351637 n).toNat + (n : ℤ)

end

end A273881.P15832666730088777514

/-! ## A273881.P11932169164499705829

`A031285(A031285(n+1))-3`
-/

namespace A273881.P11932169164499705829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 (A031285 (n + 1)).toNat - 3

end

end A273881.P11932169164499705829

/-! ## A273881.P5958341561640317519

`A192323(A202006(n+1))+n`
-/

namespace A273881.P5958341561640317519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192323 (A202006 (n + 1)).toNat + (n : ℤ)

end

end A273881.P5958341561640317519

/-! ## A273881.P12559246906350899700

`A243831(A127398(2*n))+n`
-/

namespace A273881.P12559246906350899700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243831 (A127398 (2 * n)).toNat + (n : ℤ)

end

end A273881.P12559246906350899700

/-!
# A273882: Pick any pair of "4" digits in the sequence. Those two "4"s are separated by k digits. This is the lexicographically earliest sequence of distinct terms in which all the resulting values of k are distinct.

The programs for A273882, there is no canonical definition to state claims against.
-/

/-! ## A273882.P17891959953357796954

`Δ[A325854(A186718(3*n+2))]+n`
-/

namespace A273882.P17891959953357796954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325854 (A186718 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A273882.P17891959953357796954

/-! ## A273882.P13648829196931411630

`Δ[A025469(A269526(n+1)²²)]+n`
-/

namespace A273882.P13648829196931411630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 ((A269526 (n + 1) ^ 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A273882.P13648829196931411630

/-! ## A273882.P14248579460686939523

`A240328(n+3)/A356233(2*n+3)+n`
-/

namespace A273882.P14248579460686939523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240328 (n + 3) : ℚ) / (A356233 (2 * n + 3) : ℚ) + (n : ℚ)

end

end A273882.P14248579460686939523

/-! ## A273882.P11545147292915761347

`Δ[floor(A333382(A133620(3*n+1))/3)]+n`
-/

namespace A273882.P11545147292915761347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A333382 (A133620 (3 * n + 1)).toNat : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A273882.P11545147292915761347

/-! ## A273882.P3571429351990155202

`Δ[A025469(C(n+1, A118914(3*n+5)))]+n`
-/

namespace A273882.P3571429351990155202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 (Nat.choose (n + 1) (A118914 (3 * n + 5)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A273882.P3571429351990155202

/-!
# A273883: Pick any pair of "5" digits in the sequence. Those two "5"s are separated by k digits. This is the lexicographically earliest sequence of distinct terms in which all the resulting values of k are distinct.

The programs for A273883, there is no canonical definition to state claims against.
-/

/-! ## A273883.P15130013088490882990

`Δ[A025469(n)]^A279399(2*n+3)+n`
-/

namespace A273883.P15130013088490882990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A279399 (2 * n + 3) : ℤ) + (n : ℚ)

end

end A273883.P15130013088490882990

/-! ## A273883.P9508772104959607369

`Δ[val(A025366(n+5), A208379(2*(n+2)))^4]+n`
-/

namespace A273883.P9508772104959607369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025366 (n + 5)).toNat (A208379 (2 * (n + 2))).toNat ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)

end

end A273883.P9508772104959607369

/-! ## A273883.P5864377393056221660

`A089869(A089867(n)%A196271(n+4))`
-/

namespace A273883.P5864377393056221660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 (Int.tmod (A089867 n) (A196271 (n + 4))).toNat

end

end A273883.P5864377393056221660

/-! ## A273883.P7372607889973384216

`A089869(A089868(n)%A196271(n+4))`
-/

namespace A273883.P7372607889973384216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 (Int.tmod (A089868 n) (A196271 (n + 4))).toNat

end

end A273883.P7372607889973384216

/-! ## A273883.P4031291102725404451

`A240328(n+2)+A094518(A097370(n+1))`
-/

namespace A273883.P4031291102725404451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240328 (n + 2) + A094518 (A097370 (n + 1)).toNat

end

end A273883.P4031291102725404451

/-! ## A273883.P15429579693252968465

`A089869(lcm(A062513(2*n+1), A089867(n)))`
-/

namespace A273883.P15429579693252968465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 (Int.lcm (A062513 (2 * n + 1)) (A089867 n))

end

end A273883.P15429579693252968465

/-! ## A273883.P1975854208955218604

`(Δ[A025466(n)]+n)*A347955(A031934(n+3))`
-/

namespace A273883.P1975854208955218604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + (n : ℤ)) * A347955 (A031934 (n + 3)).toNat

end

end A273883.P1975854208955218604

/-! ## A273883.P12755092625196676291

`(Δ[A025466(n)]+n)%A311129(n²)`
-/

namespace A273883.P12755092625196676291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n + (n : ℤ)) (A311129 (n ^ 2))

end

end A273883.P12755092625196676291

/-!
# A273884: Pick any pair of "6" digits in the sequence. Those two "6"s are separated by k digits. This is the lexicographically earliest sequence of distinct terms in which all the resulting values of k are distinct.

The programs for A273884, there is no canonical definition to state claims against.
-/

/-! ## A273884.P10946464358899004766

`Δ[A089723(A360248(n+1))]+n`
-/

namespace A273884.P10946464358899004766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (A360248 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A273884.P10946464358899004766

/-! ## A273884.P13244489780650653834

`Δ[(A025466(A344186(n+1))+1)!]+n`
-/

namespace A273884.P13244489780650653834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A025466 (A344186 (n + 1)).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)

end

end A273884.P13244489780650653834

/-! ## A273884.P14668065793028008443

`Δ[A369611(n)%A040001(A099627(2*(n+2)))]+n`
-/

namespace A273884.P14668065793028008443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369611 n) (A040001 (A099627 (2 * (n + 2))).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A273884.P14668065793028008443

/-! ## A273884.P6686880351818926543

`Δ[A002624(n+3)%A040001(A099627(2*(n+2)))]+n`
-/

namespace A273884.P6686880351818926543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002624 (n + 3)) (A040001 (A099627 (2 * (n + 2))).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A273884.P6686880351818926543

/-! ## A273884.P14542101432910465924

`Δ[A139353(3*n+2)%A040001(A099627(2*(n+2)))]+n`
-/

namespace A273884.P14542101432910465924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139353 (3 * n + 2)) (A040001 (A099627 (2 * (n + 2))).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A273884.P14542101432910465924

/-! ## A273884.P13947117033517473092

`Δ[A025466(A033184(n+1)%A226603(n+1))]+n`
-/

namespace A273884.P13947117033517473092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025466 (Int.tmod (A033184 (n + 1)) (A226603 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A273884.P13947117033517473092

/-! ## A273884.P7653703300013321088

`Δ[A025466(A036763(n+1)%A226603(n+1))]+n`
-/

namespace A273884.P7653703300013321088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025466 (Int.tmod (A036763 (n + 1)) (A226603 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A273884.P7653703300013321088

/-! ## A273884.P9392567242361220697

`Δ[A025466(A250120(n)%A267633(n))]+n`
-/

namespace A273884.P9392567242361220697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025466 (Int.tmod (A250120 n) (A267633 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A273884.P9392567242361220697

/-! ## A273884.P5667154091439727362

`Δ[A025466(A280069(n+2)%A267633(n))]+n`
-/

namespace A273884.P5667154091439727362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025466 (Int.tmod (A280069 (n + 2)) (A267633 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A273884.P5667154091439727362

/-! ## A273884.P1433220344683357013

`Δ[A045698(A140256(2*n+5))]+n`
-/

namespace A273884.P1433220344683357013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045698 (A140256 (2 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A273884.P1433220344683357013

/-!
# A273885: Pick any pair of "7" digits in the sequence. Those two "7"s are separated by k digits. This is the lexicographically earliest sequence of distinct terms in which all the resulting values of k are distinct.

The programs for A273885, there is no canonical definition to state claims against.
-/

/-! ## A273885.P6434295020743991240

`Δ[val(A237249(2*n+3), A216065(n+2))^4]+n`
-/

namespace A273885.P6434295020743991240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A237249 (2 * n + 3)).toNat (A216065 (n + 2)).toNat ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)

end

end A273885.P6434295020743991240

/-! ## A273885.P5072125885572470659

`(Δ[A025469(A184103(n+1))]+n)%A265136(n+1)`
-/

namespace A273885.P5072125885572470659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 (A184103 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n + (n : ℤ)) (A265136 (n + 1))

end

end A273885.P5072125885572470659

/-! ## A273885.P18104144311867390297

`(Δ[A025469(A384045(n+1))]+n)%A358377(n+1)`
-/

namespace A273885.P18104144311867390297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 (A384045 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n + (n : ℤ)) (A358377 (n + 1))

end

end A273885.P18104144311867390297

/-! ## A273885.P1581642418819475985

`Δ[A025469(A265136(n+1)-A109906(n))]+n`
-/

namespace A273885.P1581642418819475985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 (A265136 (n + 1) - A109906 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A273885.P1581642418819475985

/-! ## A273885.P2544610569561706352

`A240328(n)*A289128(A167614(3*n+4))+n`
-/

namespace A273885.P2544610569561706352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240328 n * A289128 (A167614 (3 * n + 4)).toNat + (n : ℤ)

end

end A273885.P2544610569561706352

/-!
# A273886: Pick any pair of "8" digits in the sequence. Those two "8"s are separated by k digits. This is the lexicographically earliest sequence of distinct terms in which all the resulting values of k are distinct.

The programs for A273886, there is no canonical definition to state claims against.
-/

/-! ## A273886.P15057590230386535861

`A014067(A063176(n+2))+n`
-/

namespace A273886.P15057590230386535861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014067 (A063176 (n + 2)).toNat + (n : ℤ)

end

end A273886.P15057590230386535861

/-! ## A273886.P5936096325540298978

`Δ[A326620(A327915(n+1))]+n`
-/

namespace A273886.P5936096325540298978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326620 (A327915 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A273886.P5936096325540298978

/-! ## A273886.P9668875912851406826

`Δ[A333254(A324697(n+3))]+n`
-/

namespace A273886.P9668875912851406826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333254 (A324697 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A273886.P9668875912851406826

/-! ## A273886.P313686099777020457

`A014856(A014822(3*(n+1)))+n`
-/

namespace A273886.P313686099777020457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014856 (A014822 (3 * (n + 1))).toNat + (n : ℤ)

end

end A273886.P313686099777020457

/-! ## A273886.P12893258704485165669

`Δ[A025469(A324650(n)+A001263(n+1))]+n`
-/

namespace A273886.P12893258704485165669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 (A324650 n + A001263 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A273886.P12893258704485165669

/-! ## A273886.P341884927290381184

`Δ[A346446(n+1)%A040001(A233320(n))]+n`
-/

namespace A273886.P341884927290381184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346446 (n + 1)) (A040001 (A233320 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A273886.P341884927290381184

/-! ## A273886.P7954124356954219549

`A240350(A045944(n+2))+n`
-/

namespace A273886.P7954124356954219549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240350 (A045944 (n + 2)).toNat + (n : ℤ)

end

end A273886.P7954124356954219549

/-! ## A273886.P4740484554114470065

`Δ[A025469(5*A256037(n+1))]+n`
-/

namespace A273886.P4740484554114470065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 (5 * A256037 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A273886.P4740484554114470065

/-! ## A273886.P5063454760242276825

`Δ[floor(n/A300351(n+5))]+n`
-/

namespace A273886.P5063454760242276825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A300351 (n + 5) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A273886.P5063454760242276825

/-! ## A273886.P13910628402577016576

`abs(A214295(abs(A107115(n+1)-n))-n)`
-/

namespace A273886.P13910628402577016576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A214295 |A107115 (n + 1) - (n : ℤ)|.toNat - (n : ℤ))|

end

end A273886.P13910628402577016576

/-!
# A273887: Pick any pair of "9" digits in the sequence. Those two "9"s are separated by k digits. This is the lexicographically earliest sequence of distinct terms in which all the resulting values of k are distinct.

The programs for A273887, there is no canonical definition to state claims against.
-/

/-! ## A273887.P1779441600417905392

`A273888(n+2)-A060904(A059452(n+1))`
-/

namespace A273887.P1779441600417905392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273888 (n + 2) - A060904 (A059452 (n + 1)).toNat

end

end A273887.P1779441600417905392

/-! ## A273887.P9289314019299947898

`A273888(n+2)-A185114(A343403(3*n+5))`
-/

namespace A273887.P9289314019299947898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273888 (n + 2) - A185114 (A343403 (3 * n + 5)).toNat

end

end A273887.P9289314019299947898

/-! ## A273887.P12224882690204779116

`A273888(n+2)-A185114(A252532(n+1))`
-/

namespace A273887.P12224882690204779116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273888 (n + 2) - A185114 (A252532 (n + 1)).toNat

end

end A273887.P12224882690204779116

/-! ## A273887.P4063474872355400608

`A273888(n+2)-A060904(A136020(2*n+5))`
-/

namespace A273887.P4063474872355400608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273888 (n + 2) - A060904 (A136020 (2 * n + 5)).toNat

end

end A273887.P4063474872355400608

/-! ## A273887.P8960236996761746251

`A273888(n+2)-A341596(A069677(n+1))`
-/

namespace A273887.P8960236996761746251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273888 (n + 2) - A341596 (A069677 (n + 1)).toNat

end

end A273887.P8960236996761746251

/-!
# A273888: Pick any pair of "0" digits in the sequence. Those two "0"s are separated by k digits. This is the lexicographically earliest sequence of distinct terms in which all the resulting values of k are distinct.

The programs for A273888, there is no canonical definition to state claims against.
-/

/-! ## A273888.P9334930500706141505

`Δ[A088722(A054552(n))]+n`
-/

namespace A273888.P9334930500706141505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088722 (A054552 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A273888.P9334930500706141505

/-! ## A273888.P9930270876874604290

`Δ[A050361(A112073(n+1))]+n`
-/

namespace A273888.P9930270876874604290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (A112073 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A273888.P9930270876874604290

/-! ## A273888.P2284744564490396473

`Δ[A089723(A360248(n+7))]+n`
-/

namespace A273888.P2284744564490396473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (A360248 (n + 7)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A273888.P2284744564490396473

/-! ## A273888.P14238883962933365077

`Δ[A025469(or(n+1, A096680(n+1)))]+n`
-/

namespace A273888.P14238883962933365077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 (Int.lor (n + 1 : ℤ) (A096680 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A273888.P14238883962933365077

/-! ## A273888.P15009186659305392931

`Δ[A025469(A096680(n+1)-A334492(n+1))]+n`
-/

namespace A273888.P15009186659305392931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 (A096680 (n + 1) - A334492 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A273888.P15009186659305392931

/-!
# A273889: a(n) = ((4n-3)!! + (4n-2)!!) / (4n-1).

The programs for A273889, there is no canonical definition to state claims against.
-/

/-! ## A273889.P3388781011121293627

`A060696(4*n+3)/(4*n+3)`
-/

namespace A273889.P3388781011121293627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060696 (4 * n + 3) : ℚ) / (4 * n + 3 : ℚ)

end

end A273889.P3388781011121293627

/-! ## A273889.P17603053485252376450

`A232617(2*n+1)/A004767(n)`
-/

namespace A273889.P17603053485252376450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232617 (2 * n + 1) : ℚ) / (A004767 n : ℚ)

end

end A273889.P17603053485252376450

/-! ## A273889.P18014508138097127856

`A232617(2*n+1)/A005408(2*n+1)`
-/

namespace A273889.P18014508138097127856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232617 (2 * n + 1) : ℚ) / (A005408 (2 * n + 1) : ℚ)

end

end A273889.P18014508138097127856

/-! ## A273889.P12550898448384344598

`A232617(2*n+1)/(A004277(2*n+1)+1)`
-/

namespace A273889.P12550898448384344598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232617 (2 * n + 1) : ℚ) / (A004277 (2 * n + 1) + 1 : ℚ)

end

end A273889.P12550898448384344598

/-! ## A273889.P12606506272066834008

`A076051(A016825(n))/A004767(n)`
-/

namespace A273889.P12606506272066834008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076051 (A016825 n).toNat : ℚ) / (A004767 n : ℚ)

end

end A273889.P12606506272066834008

/-!
# A273891: Triangle read by rows: T(n,k) is the number of n-bead bracelets with exactly k different colored beads.

The programs for A273891, there is no canonical definition to state claims against.
-/

/-! ## A273891.P17752999702835891866

`A214306(n+1)/A135278(n)`
-/

namespace A273891.P17752999702835891866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214306 (n + 1) : ℚ) / (A135278 n : ℚ)

end

end A273891.P17752999702835891866

/-! ## A273891.P4594422356820406679

`A087854(n+1)-A305541(n+1)`
-/

namespace A273891.P4594422356820406679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087854 (n + 1) - A305541 (n + 1)

end

end A273891.P4594422356820406679

/-! ## A273891.P2421807072597495543

`A214306(n+1)/A074909(n+1)`
-/

namespace A273891.P2421807072597495543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214306 (n + 1) : ℚ) / (A074909 (n + 1) : ℚ)

end

end A273891.P2421807072597495543

/-! ## A273891.P9480929476845560753

`A214306(n+1)/A007318(comp[∑[n]])`
-/

namespace A273891.P9480929476845560753
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214306 (n + 1) : ℚ) / (A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ)

end

end A273891.P9480929476845560753

/-! ## A273891.P10376933167958632084

`floor(A214306(ϕ²-(ϕ-n))/A135278(n))`
-/

namespace A273891.P10376933167958632084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A214306 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat : ℚ) / (A135278 n : ℚ)⌋

end

end A273891.P10376933167958632084

/-! ## A273891.P14164937063955685373

`A213935(n+1)/A135278(n)-A305541(n+1)`
-/

namespace A273891.P14164937063955685373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213935 (n + 1) : ℚ) / (A135278 n : ℚ) - (A305541 (n + 1) : ℚ)

end

end A273891.P14164937063955685373

/-! ## A273891.P3071827607473759153

`A213935(n+1)/A074909(n+1)-A305541(n+1)`
-/

namespace A273891.P3071827607473759153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213935 (n + 1) : ℚ) / (A074909 (n + 1) : ℚ) - (A305541 (n + 1) : ℚ)

end

end A273891.P3071827607473759153

/-! ## A273891.P11180212833456094721

`A087854(n+1)/A213935(n+1)*A214306(n+1)`
-/

namespace A273891.P11180212833456094721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087854 (n + 1) : ℚ) / (A213935 (n + 1) : ℚ) * (A214306 (n + 1) : ℚ)

end

end A273891.P11180212833456094721

/-!
# A273892: Numbers starting with an even (decimal) digit.

The programs for A273892, the canonical program `A273892.P3546823388509802216` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273892 has offset 1).

The definition of A273892 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273892.P2609384915684775685

`record[A249278(n)]`
-/

namespace A273892.P2609384915684775685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273892.P2609384915684775685

namespace A273892

/-- `record[A249278(n)]` -/
def P2609384915684775685.Spec : Prop :=
  ∀ n, P2609384915684775685.a n = A273892 (n + 1)

end A273892

/-! ## A273892.P16444044035300930773

`lt[n, A306436(n)]`
-/

namespace A273892.P16444044035300930773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306436 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A273892.P16444044035300930773

namespace A273892

/-- `lt[n, A306436(n)]` -/
def P16444044035300930773.Spec : Prop :=
  ∀ n, (P16444044035300930773.a n : ℤ) = A273892 (n + 1)

end A273892

/-! ## A273892.P10008216456579024504

`comp[A306590(n+1)]`
-/

namespace A273892.P10008216456579024504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A273892.P10008216456579024504

namespace A273892

/-- `comp[A306590(n+1)]` -/
def P10008216456579024504.Spec : Prop :=
  ∀ n, (P10008216456579024504.a n : ℤ) = A273892 (n + 1)

end A273892

/-! ## A273892.P3546823388509802216

`eq[0, A000030(n)%2]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A273892

/-- `eq[0, A000030(n)%2]` -/
def P3546823388509802216.Spec : Prop :=
  ∀ n, (P3546823388509802216.a n : ℤ) = A273892 (n + 1)

theorem P3546823388509802216.correct : P3546823388509802216.Spec := by
  intro n
  simp only [A273892, Nat.add_sub_cancel]

end A273892

/-! ## A273892.P3578840796213819971

`lt[A249279(n), n+1]`
-/

namespace A273892.P3578840796213819971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249279 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A273892.P3578840796213819971

namespace A273892

/-- `lt[A249279(n), n+1]` -/
def P3578840796213819971.Spec : Prop :=
  ∀ n, (P3578840796213819971.a n : ℤ) = A273892 (n + 1)

end A273892

/-! ## A273892.P1370361237133078215

`record[n*A109910(n)%2]`
-/

namespace A273892.P1370361237133078215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (A109910 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273892.P1370361237133078215

namespace A273892

/-- `record[n*A109910(n)%2]` -/
def P1370361237133078215.Spec : Prop :=
  ∀ n, P1370361237133078215.a n = A273892 (n + 1)

end A273892

/-! ## A273892.P10799509998248629241

`eq[1, A000034(A004086(n))]`
-/

namespace A273892.P10799509998248629241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A273892.P10799509998248629241

namespace A273892

/-- `eq[1, A000034(A004086(n))]` -/
def P10799509998248629241.Spec : Prop :=
  ∀ n, (P10799509998248629241.a n : ℤ) = A273892 (n + 1)

end A273892

/-! ## A273892.P6374993822842852409

`lt[A000034(A032762(n)), 2]`
-/

namespace A273892.P6374993822842852409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A032762 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A273892.P6374993822842852409

namespace A273892

/-- `lt[A000034(A032762(n)), 2]` -/
def P6374993822842852409.Spec : Prop :=
  ∀ n, (P6374993822842852409.a n : ℤ) = A273892 (n + 1)

end A273892

/-! ## A273892.P16032205744596607830

`eq[1, A158416(A032762(n)+1)]`
-/

namespace A273892.P16032205744596607830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A032762 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A273892.P16032205744596607830

namespace A273892

/-- `eq[1, A158416(A032762(n)+1)]` -/
def P16032205744596607830.Spec : Prop :=
  ∀ n, (P16032205744596607830.a n : ℤ) = A273892 (n + 1)

end A273892

/-! ## A273892.P16639439516610926214

`lt[1, A019430(A004086(n)+1)]`
-/

namespace A273892.P16639439516610926214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 (A004086 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A273892.P16639439516610926214

namespace A273892

/-- `lt[1, A019430(A004086(n)+1)]` -/
def P16639439516610926214.Spec : Prop :=
  ∀ n, (P16639439516610926214.a n : ℤ) = A273892 (n + 1)

end A273892

/-! ## A273892.P13874101685110801757

`eq[1, A019425(A004086(n)+2)]`
-/

namespace A273892.P13874101685110801757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A004086 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A273892.P13874101685110801757

namespace A273892

/-- `eq[1, A019425(A004086(n)+2)]` -/
def P13874101685110801757.Spec : Prop :=
  ∀ n, (P13874101685110801757.a n : ℤ) = A273892 (n + 1)

end A273892

/-! ## A273892.P1061576420884800058

`eq[1, A019426(A004086(n)+2)]`
-/

namespace A273892.P1061576420884800058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A004086 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A273892.P1061576420884800058

namespace A273892

/-- `eq[1, A019426(A004086(n)+2)]` -/
def P1061576420884800058.Spec : Prop :=
  ∀ n, (P1061576420884800058.a n : ℤ) = A273892 (n + 1)

end A273892

/-! ## A273892.P11290297301866188436

`lt[A035363(A004086(n)+1), 1]`
-/

namespace A273892.P11290297301866188436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A004086 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A273892.P11290297301866188436

namespace A273892

/-- `lt[A035363(A004086(n)+1), 1]` -/
def P11290297301866188436.Spec : Prop :=
  ∀ n, (P11290297301866188436.a n : ℤ) = A273892 (n + 1)

end A273892

/-! ## A273892.P5648526994807766103

`eq[1, A093178(A004086(n)+2)]`
-/

namespace A273892.P5648526994807766103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A004086 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A273892.P5648526994807766103

namespace A273892

/-- `eq[1, A093178(A004086(n)+2)]` -/
def P5648526994807766103.Spec : Prop :=
  ∀ n, (P5648526994807766103.a n : ℤ) = A273892 (n + 1)

end A273892

/-! ## A273892.P14498613045946618756

`eq[1, A117365(A032762(n)+2)]`
-/

namespace A273892.P14498613045946618756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117365 (A032762 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A273892.P14498613045946618756

namespace A273892

/-- `eq[1, A117365(A032762(n)+2)]` -/
def P14498613045946618756.Spec : Prop :=
  ∀ n, (P14498613045946618756.a n : ℤ) = A273892 (n + 1)

end A273892

/-! ## A273892.P16602348404397936400

`eq[2, A020639(A004086(n)+2)]`
-/

namespace A273892.P16602348404397936400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004086 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A273892.P16602348404397936400

namespace A273892

/-- `eq[2, A020639(A004086(n)+2)]` -/
def P16602348404397936400.Spec : Prop :=
  ∀ n, (P16602348404397936400.a n : ℤ) = A273892 (n + 1)

end A273892

/-! ## A273892.P17575873145435336104

`eq[2, A133265(A004086(n)+2)]`
-/

namespace A273892.P17575873145435336104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (A004086 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A273892.P17575873145435336104

namespace A273892

/-- `eq[2, A133265(A004086(n)+2)]` -/
def P17575873145435336104.Spec : Prop :=
  ∀ n, (P17575873145435336104.a n : ℤ) = A273892 (n + 1)

end A273892

/-! ## A273892.P2244671679172149196

`lt[2, A176895(A004086(n)+1)]`
-/

namespace A273892.P2244671679172149196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 (A004086 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A273892.P2244671679172149196

namespace A273892

/-- `lt[2, A176895(A004086(n)+1)]` -/
def P2244671679172149196.Spec : Prop :=
  ∀ n, (P2244671679172149196.a n : ℤ) = A273892 (n + 1)

end A273892

/-! ## A273892.P1593690322045711297

`lt[n, A004773(A107130(n)+1)]`
-/

namespace A273892.P1593690322045711297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A107130 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A273892.P1593690322045711297

namespace A273892

/-- `lt[n, A004773(A107130(n)+1)]` -/
def P1593690322045711297.Spec : Prop :=
  ∀ n, (P1593690322045711297.a n : ℤ) = A273892 (n + 1)

end A273892

/-! ## A273892.P14212967892767518758

`lt[A107128(n), A107130(n)+1]`
-/

namespace A273892.P14212967892767518758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107130 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A273892.P14212967892767518758

namespace A273892

/-- `lt[A107128(n), A107130(n)+1]` -/
def P14212967892767518758.Spec : Prop :=
  ∀ n, (P14212967892767518758.a n : ℤ) = A273892 (n + 1)

end A273892

/-!
# A273893: Denominator of n/3^n.

The programs for A273893, the canonical program `A273893.P5656685477311246350` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273893 has offset 0).

The definition of A273893 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273893.P5656685477311246350

`3^n/gcd(n, 3^n)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A273893

/-- `3^n/gcd(n, 3^n)` -/
def P5656685477311246350.Spec : Prop :=
  ∀ n, P5656685477311246350.a n = (A273893 n : ℚ)

end A273893

/-! ## A273893.P790850694858631605

`3^(n-val(A028310(n), 3))`
-/

namespace A273893.P790850694858631605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - (SequenceMachineLib.valuation (A028310 n).toNat 3 : ℤ) : ℤ)

end

end A273893.P790850694858631605

namespace A273893

/-- `3^(n-val(A028310(n), 3))` -/
def P790850694858631605.Spec : Prop :=
  ∀ n, P790850694858631605.a n = (A273893 n : ℚ)

end A273893

/-! ## A273893.P17808272926895748344

`3^(n-val(A065033(2*n), 3))`
-/

namespace A273893.P17808272926895748344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - (SequenceMachineLib.valuation (A065033 (2 * n)).toNat 3 : ℤ) : ℤ)

end

end A273893.P17808272926895748344

namespace A273893

/-- `3^(n-val(A065033(2*n), 3))` -/
def P17808272926895748344.Spec : Prop :=
  ∀ n, P17808272926895748344.a n = (A273893 n : ℚ)

end A273893

/-! ## A273893.P4332357358433399275

`lcm(3^n, lcm(n, a(n-1)))/n` with `a(0)=1`
-/

namespace A273893.P4332357358433399275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.lcm (3 ^ n) (Int.lcm (n : ℤ) (SequenceMachineLib.roundAway (a (n - 1)))) : ℚ) / (n : ℚ)

end

end A273893.P4332357358433399275

namespace A273893

/-- `lcm(3^n, lcm(n, a(n-1)))/n` -/
def P4332357358433399275.Spec : Prop :=
  ∀ n, P4332357358433399275.a n = (A273893 n : ℚ)

end A273893

/-! ## A273893.P15283745202516861933

`3^(n-val(A007318(∑[n]+1), 3))`
-/

namespace A273893.P15283745202516861933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - (SequenceMachineLib.valuation (A007318 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat 3 : ℤ) : ℤ)

end

end A273893.P15283745202516861933

namespace A273893

/-- `3^(n-val(A007318(∑[n]+1), 3))` -/
def P15283745202516861933.Spec : Prop :=
  ∀ n, P15283745202516861933.a n = (A273893 n : ℚ)

end A273893

/-!
# A273895: T(n, k) is the number of Horizontal Convex Polyominoes with n cells and k rows.

The programs for A273895, there is no canonical definition to state claims against.
-/

/-! ## A273895.P634743357912910460

`and(-A030167(n), A086329(n))`
-/

namespace A273895.P634743357912910460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A030167 n) (A086329 n)

end

end A273895.P634743357912910460

/-! ## A273895.P4422755792712720309

`and(-A030167(n), A123125(n))`
-/

namespace A273895.P4422755792712720309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A030167 n) (A123125 n)

end

end A273895.P4422755792712720309

/-! ## A273895.P17364671239522028754

`A065941(n)*A138033(A336575(n))`
-/

namespace A273895.P17364671239522028754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 n * A138033 (A336575 n).toNat

end

end A273895.P17364671239522028754

/-! ## A273895.P14103332555440748136

`A003984(A053616(n)^A065033(n))`
-/

namespace A273895.P14103332555440748136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 (SequenceMachineLib.roundAway ((A053616 n : ℚ) ^ (A065033 n : ℤ))).toNat

end

end A273895.P14103332555440748136

/-! ## A273895.P2898741512501013010

`A323224(n)*A359893(A391045(n))`
-/

namespace A273895.P2898741512501013010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323224 n * A359893 (A391045 n).toNat

end

end A273895.P2898741512501013010

/-!
# A273897: Triangle read by rows: T(n,k) is the number of bargraphs of semiperimeter n having abscissa of first descent k (n>=2, 1<=k<=n-1).

The programs for A273897, there is no canonical definition to state claims against.
-/

/-! ## A273897.P5387333684731817214

`A089865(A339067(n+1))`
-/

namespace A273897.P5387333684731817214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089865 (A339067 (n + 1)).toNat

end

end A273897.P5387333684731817214

/-! ## A273897.P5736017201860867498

`A089869(A064189(A089869(n)))`
-/

namespace A273897.P5736017201860867498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 (A064189 (A089869 n).toNat).toNat

end

end A273897.P5736017201860867498

/-! ## A273897.P12745626991321610568

`A185238(A130321(n))+A064189(n)`
-/

namespace A273897.P12745626991321610568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A130321 n).toNat + A064189 n

end

end A273897.P12745626991321610568

/-! ## A273897.P11850199782389837709

`A285957(A196685(2*n+1))+A064189(n)`
-/

namespace A273897.P11850199782389837709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285957 (A196685 (2 * n + 1)).toNat + A064189 n

end

end A273897.P11850199782389837709

/-!
# A273898: Sum of the abscissae of the first descents of all bargraphs of semiperimeter n (n>=2).

The programs for A273898, there is no canonical definition to state claims against.
-/

/-! ## A273898.P10718147764187883184

`A082582(n+4)-2*A082582(n+3)`
-/

namespace A273898.P10718147764187883184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082582 (n + 4) - 2 * A082582 (n + 3)

end

end A273898.P10718147764187883184

/-! ## A273898.P4684804429687202718

`Δ[A188464(n)-A105633(n)]`
-/

namespace A273898.P4684804429687202718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188464 n - A105633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273898.P4684804429687202718

/-! ## A273898.P17641284317751746484

`Δ[A188464(n)]-A086581(n+1)`
-/

namespace A273898.P17641284317751746484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188464 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A086581 (n + 1)

end

end A273898.P17641284317751746484

/-! ## A273898.P17667770048066913668

`Δ[A188464(n)]-A082582(n+2)`
-/

namespace A273898.P17667770048066913668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188464 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A082582 (n + 2)

end

end A273898.P17667770048066913668

/-! ## A273898.P5142191937946356097

`∑[A273900(n+3)-A188464(n)]`
-/

namespace A273898.P5142191937946356097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273900 (n + 3) - A188464 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273898.P5142191937946356097

/-! ## A273898.P5814213095206554107

`Δ[A188464(n)]-A025242(n+3)`
-/

namespace A273898.P5814213095206554107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188464 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A025242 (n + 3)

end

end A273898.P5814213095206554107

/-! ## A273898.P7370054281307481515

`A273900(n+3)-Δ[A105633(n)]`
-/

namespace A273898.P7370054281307481515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273900 (n + 3) - (f1 (n + 1) - f1 n)

end

end A273898.P7370054281307481515

/-! ## A273898.P13291419377959317771

`A188464(n+1)-A086581(n+2)`
-/

namespace A273898.P13291419377959317771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188464 (n + 1) - A086581 (n + 2)

end

end A273898.P13291419377959317771

/-! ## A273898.P5224186682481027641

`A188464(n+1)-A082582(n+3)`
-/

namespace A273898.P5224186682481027641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188464 (n + 1) - A082582 (n + 3)

end

end A273898.P5224186682481027641

/-! ## A273898.P5864418068756763522

`A273900(n+3)-A086581(n+1)`
-/

namespace A273898.P5864418068756763522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273900 (n + 3) - A086581 (n + 1)

end

end A273898.P5864418068756763522

/-! ## A273898.P1361101985297404140

`A273900(n+3)-A082582(n+2)`
-/

namespace A273898.P1361101985297404140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273900 (n + 3) - A082582 (n + 2)

end

end A273898.P1361101985297404140

/-! ## A273898.P5491682780238234168

`A273900(n+3)-A025242(n+3)`
-/

namespace A273898.P5491682780238234168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273900 (n + 3) - A025242 (n + 3)

end

end A273898.P5491682780238234168

/-! ## A273898.P728303719892184229

`A188464(n+1)-(∑[A188464(n)]+1)`
-/

namespace A273898.P728303719892184229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188464 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188464 (n + 1) - (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A273898.P728303719892184229

/-! ## A273898.P14709069564732641785

`Δ[A188464(n)-A086581(n)]-A086581(n)`
-/

namespace A273898.P14709069564732641785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188464 n - A086581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A086581 n

end

end A273898.P14709069564732641785

/-! ## A273898.P7916321229169557038

`Δ[Δ[A105633(n+1)]-A105633(n+1)]`
-/

namespace A273898.P7916321229169557038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105633 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A105633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273898.P7916321229169557038

/-! ## A273898.P887923828265358251

`A273720(n+2)+A277973(n+2)-A278135(n+2)`
-/

namespace A273898.P887923828265358251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273720 (n + 2) + (A277973 (n + 2) - A278135 (n + 2))

end

end A273898.P887923828265358251

/-!
# A273899: Triangle read by rows: for n>=1, 0<=k<=n-1, T(n,k) is the number of bargraphs of semiperimeter n having k columns of length 1.

The programs for A273899, there is no canonical definition to state claims against.
-/

/-! ## A273899.P2820732998329269212

`xor(A010057(A018142(n)), A188285(n))`
-/

namespace A273899.P2820732998329269212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010057 (A018142 n).toNat) (A188285 n)

end

end A273899.P2820732998329269212

/-! ## A273899.P6348622389690273819

`A188285(n)-A014055(A273916(n))`
-/

namespace A273899.P6348622389690273819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188285 n - A014055 (A273916 n).toNat

end

end A273899.P6348622389690273819

/-! ## A273899.P983987508754824661

`A037474(A188285(n)%A272810(n))`
-/

namespace A273899.P983987508754824661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (Int.tmod (A188285 n) (A272810 n)).toNat

end

end A273899.P983987508754824661

/-! ## A273899.P17099001176212904015

`xor(A019425(A069646(n)), A188285(n))`
-/

namespace A273899.P17099001176212904015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A019425 (A069646 n).toNat) (A188285 n)

end

end A273899.P17099001176212904015

/-! ## A273899.P8479183208759234429

`A188285(A028310(n))+A025443(A005179(n+1))`
-/

namespace A273899.P8479183208759234429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188285 (A028310 n).toNat + A025443 (A005179 (n + 1)).toNat

end

end A273899.P8479183208759234429

