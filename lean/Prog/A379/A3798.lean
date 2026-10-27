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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
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
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
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
# A379801: Nearest integer to n*(1+sqrt(6))/2.

The programs for A379801, the canonical program `A379801.P8533795642980982233` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379801 has offset 0).

The definition of A379801 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379801.P8533795642980982233

`ceil((floor(n*sqrt(6))+n)/2)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A379801

/-- `ceil((floor(n*sqrt(6))+n)/2)` -/
def P8533795642980982233.Spec : Prop :=
  ∀ n, P8533795642980982233.a n = A379801 n

theorem P8533795642980982233.correct : P8533795642980982233.Spec := by
  intro n
  simp only [A379801]

end A379801

/-! ## A379801.P12543817482095926098

`A379805(2*n)-A379805(n)`
-/

namespace A379801.P12543817482095926098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379805 (2 * n) - A379805 n

end

end A379801.P12543817482095926098

namespace A379801

/-- `A379805(2*n)-A379805(n)` -/
def P12543817482095926098.Spec : Prop :=
  ∀ n, P12543817482095926098.a n = A379801 n

end A379801

/-! ## A379801.P9527158848566107417

`A004526(ceil(n*sqrt(6))+n)`
-/

namespace A379801.P9527158848566107417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (⌈(n : ℝ) * Real.sqrt (6 : ℝ)⌉ + (n : ℤ)).toNat

end

end A379801.P9527158848566107417

namespace A379801

/-- `A004526(ceil(n*sqrt(6))+n)` -/
def P9527158848566107417.Spec : Prop :=
  ∀ n, P9527158848566107417.a n = A379801 n

end A379801

/-! ## A379801.P6320552607688809749

`round(A276871(2*n+1)/11)`
-/

namespace A379801.P6320552607688809749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A276871 (2 * n + 1) : ℚ) / 11)

end

end A379801.P6320552607688809749

namespace A379801

/-- `round(A276871(2*n+1)/11)` -/
def P6320552607688809749.Spec : Prop :=
  ∀ n, P6320552607688809749.a n = A379801 n

end A379801

/-! ## A379801.P956005764417746053

`A083120(n+1)-A010052(A328233(n+1))`
-/

namespace A379801.P956005764417746053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083120 (n + 1) - A010052 (A328233 (n + 1)).toNat

end

end A379801.P956005764417746053

namespace A379801

/-- `A083120(n+1)-A010052(A328233(n+1))` -/
def P956005764417746053.Spec : Prop :=
  ∀ n, P956005764417746053.a n = A379801 n

end A379801

/-!
# A379802: Indices k such that A377091(k) is immediately followed by A377091(k+1) = -A377091(k).

The programs for A379802, there is no canonical definition to state claims against.
-/

/-! ## A379802.P15464433502967507454

`A379063(eq[1, A379065(n)])`
-/

namespace A379802.P15464433502967507454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A379802.P15464433502967507454

/-! ## A379802.P18214347229660036258

`A379063(lcm(2, A379803(n+1)))`
-/

namespace A379802.P18214347229660036258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379063 (Int.lcm 2 (A379803 (n + 1)))

end

end A379802.P18214347229660036258

/-! ## A379802.P11192218308871419616

`eq[A379070(n+1), A379070(n)]`
-/

namespace A379802.P11192218308871419616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379070 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A379802.P11192218308871419616

/-! ## A379802.P12528364205205607023

`eq[-A377091(n+1), A377091(n)]`
-/

namespace A379802.P12528364205205607023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A377091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A379802.P12528364205205607023

/-! ## A379802.P10049707297095136761

`eq[A379078(n+2), A379078(n)]+1`
-/

namespace A379802.P10049707297095136761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379078 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379078 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A379802.P10049707297095136761

/-! ## A379802.P10872890828054756491

`A379063(eq[1, A379064(n)-A379063(n)])`
-/

namespace A379802.P10872890828054756491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379064 n - A379063 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A379802.P10872890828054756491

/-!
# A379803: A377091(k) for k in A379802.

The programs for A379803, there is no canonical definition to state claims against.
-/

/-! ## A379803.P14471480903665324199

`A377091(A379802(n+1))`
-/

namespace A379803.P14471480903665324199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 (A379802 (n + 1)).toNat

end

end A379803.P14471480903665324199

/-! ## A379803.P15291332666678698905

`A001105(n+1)*A093075(A096870(2*(n+3)))`
-/

namespace A379803.P15291332666678698905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (n + 1) * A093075 (A096870 (2 * (n + 3))).toNat

end

end A379803.P15291332666678698905

/-! ## A379803.P8463932052239984925

`A076479(A135071(n+2))*A129194(2*(n+1))`
-/

namespace A379803.P8463932052239984925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076479 (A135071 (n + 2)).toNat * A129194 (2 * (n + 1))

end

end A379803.P8463932052239984925

/-!
# A379805: Floor of n*(1+sqrt(6))/2.

The programs for A379805, the canonical program `A379805.P4545572005740995452` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379805 has offset 0).

The definition of A379805 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379805.P4545572005740995452

`floor(n*(sqrt(6)+1)/2)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A379805

/-- `floor(n*(sqrt(6)+1)/2)` -/
def P4545572005740995452.Spec : Prop :=
  ∀ n, P4545572005740995452.a n = A379805 n

theorem P4545572005740995452.correct : P4545572005740995452.Spec := by
  intro n
  simp only [A379805]

end A379805

/-! ## A379805.P9967934967515492203

`A004526(floor(n*sqrt(6))+n)`
-/

namespace A379805.P9967934967515492203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (⌊(n : ℝ) * Real.sqrt (6 : ℝ)⌋ + (n : ℤ)).toNat

end

end A379805.P9967934967515492203

namespace A379805

/-- `A004526(floor(n*sqrt(6))+n)` -/
def P9967934967515492203.Spec : Prop :=
  ∀ n, P9967934967515492203.a n = A379805 n

end A379805

/-! ## A379805.P7668380561148263931

`comp[A108120(2*(n+1))]%A048290(n+1)`
-/

namespace A379805.P7668380561148263931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108120 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A048290 (n + 1))

end

end A379805.P7668380561148263931

namespace A379805

/-- `comp[A108120(2*(n+1))]%A048290(n+1)` -/
def P7668380561148263931.Spec : Prop :=
  ∀ n, P7668380561148263931.a n = A379805 n

end A379805

/-! ## A379805.P8565184798348868124

`A202304(A002378(n)-A055571(n+1))`
-/

namespace A379805.P8565184798348868124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A002378 n - A055571 (n + 1)).toNat

end

end A379805.P8565184798348868124

namespace A379805

/-- `A202304(A002378(n)-A055571(n+1))` -/
def P8565184798348868124.Spec : Prop :=
  ∀ n, P8565184798348868124.a n = A379805 n

end A379805

/-! ## A379805.P5793301581775596769

`floor(sqrt(A367191(2*n+1)+n+2))-1`
-/

namespace A379805.P5793301581775596769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A367191 (2 * n + 1) + (n + 2 : ℤ)) - 1

end

end A379805.P5793301581775596769

namespace A379805

/-- `floor(sqrt(A367191(2*n+1)+n+2))-1` -/
def P5793301581775596769.Spec : Prop :=
  ∀ n, P5793301581775596769.a n = A379805 n

end A379805

/-!
# A379806: Numbers k such that 2^prime(k) - 3 is prime.

The programs for A379806, there is no canonical definition to state claims against.
-/

/-! ## A379806.P17075281209078657404

`A000720(A283266(n+1))`
-/

namespace A379806.P17075281209078657404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A283266 (n + 1)).toNat

end

end A379806.P17075281209078657404

/-!
# A379807: Records in A379059.

The programs for A379807, there is no canonical definition to state claims against.
-/

/-! ## A379807.P15793800434849766105

`record[A379059(n)]`
-/

namespace A379807.P15793800434849766105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379807.P15793800434849766105

/-! ## A379807.P14995782217457681873

`record[A379786(n)+2*n]`
-/

namespace A379807.P14995782217457681873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379786 n + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379807.P14995782217457681873

/-! ## A379807.P14212339081488529235

`A379059(A379808(n+1))`
-/

namespace A379807.P14212339081488529235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379059 (A379808 (n + 1)).toNat

end

end A379807.P14212339081488529235

/-! ## A379807.P15360261479549096652

`record[A379063(n)+A379064(n)-A379060(n)]`
-/

namespace A379807.P15360261479549096652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379063 n + (A379064 n - A379060 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379807.P15360261479549096652

/-! ## A379807.P12443357290703558431

`record[A379060(n)+A379786(n)-A379787(n)]`
-/

namespace A379807.P12443357290703558431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379060 n + (A379786 n - A379787 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379807.P12443357290703558431

/-!
# A379808: Indices of records in A379059.

The programs for A379808, there is no canonical definition to state claims against.
-/

/-! ## A379808.P4434079375249920395

`A377091(record[A379059(n)])`
-/

namespace A379808.P4434079375249920395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A379808.P4434079375249920395

/-! ## A379808.P6865398800035754397

`A379070(record[A379059(n)])`
-/

namespace A379808.P6865398800035754397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379070 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A379808.P6865398800035754397

/-! ## A379808.P16835853641803766760

`A377091(A379807(n+1))`
-/

namespace A379808.P16835853641803766760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 (A379807 (n + 1)).toNat

end

end A379808.P16835853641803766760

/-! ## A379808.P16719738307037053584

`A377091(record[A379786(n)+2*n])`
-/

namespace A379808.P16719738307037053584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379786 n + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A379808.P16719738307037053584

/-! ## A379808.P13244110910835253281

`A379070(A379807(n+1)%A016921(n))`
-/

namespace A379808.P13244110910835253281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379070 (Int.tmod (A379807 (n + 1)) (A016921 n)).toNat

end

end A379808.P13244110910835253281

/-! ## A379808.P1776968780916658472

`eq[char[A379067(n)], A057427(n)]`
-/

namespace A379808.P1776968780916658472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379067 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A379808.P1776968780916658472

/-! ## A379808.P11129621809586467406

`record[A377091(n)%A379067(n)]`
-/

namespace A379808.P11129621809586467406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A377091 n) (A379067 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379808.P11129621809586467406

/-! ## A379808.P7719932871926982040

`lt[n, A379067(A379786(n)+2*n)]`
-/

namespace A379808.P7719932871926982040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379067 (A379786 n + (2 * n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A379808.P7719932871926982040

/-!
# A379809: Coefficient of x^n in (3-sqrt(5+4*sqrt(1-36*x)))/12.

The programs for A379809, there is no canonical definition to state claims against.
-/

/-! ## A379809.P15191375769768784928

`∏{p}[A364375(3*n+2), #]`
-/

namespace A379809.P15191375769768784928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364375 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A379809.P15191375769768784928

/-!
# A379810: Composite numbers in A381019 which are immediately followed by another composite number, in order of their appearance.

The programs for A379810, there is no canonical definition to state claims against.
-/

/-! ## A379810.P16857524681321793772

`A381019(A381120(n+1))`
-/

namespace A379810.P16857524681321793772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381019 (A381120 (n + 1)).toNat

end

end A379810.P16857524681321793772

/-!
# A379811: a(n) = index of 2*prime(n) in A381019.

The programs for A379811, there is no canonical definition to state claims against.
-/

/-! ## A379811.P5394860651999075861

`A333859(A052003(n+1))`
-/

namespace A379811.P5394860651999075861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333859 (A052003 (n + 1)).toNat

end

end A379811.P5394860651999075861

/-! ## A379811.P6555288142371383708

`∩[A333859(n+1), A139250(n)]`
-/

namespace A379811.P6555288142371383708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379811.P6555288142371383708

/-!
# A379812: a(n) = sigma_1(n) * sigma_2(n).

The programs for A379812, the canonical program `A379812.P10955070158037639960` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379812 has offset 1).

The definition of A379812 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)*A001157(n+1)` (program `A379812.P10955070158037639960`, by `A379812.P10955070158037639960.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A379812.P10955070158037639960

`A000203(n+1)*A001157(n+1)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A379812

/-- `A000203(n+1)*A001157(n+1)` -/
def P10955070158037639960.Spec : Prop :=
  ∀ n, P10955070158037639960.a n = A379812 (n + 1)

theorem P10955070158037639960.correct : P10955070158037639960.Spec := by
  intro n
  simp only [A379812, Nat.add_sub_cancel]

end A379812

/-! ## A379812.P17815529574037162886

`∑{d}[n+1, #²]*∑{d}[n+1, #]`
-/

namespace A379812.P17815529574037162886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d ^ 2) * (∑ d ∈ Nat.divisors (f2 n), d)

end

end A379812.P17815529574037162886

namespace A379812

/-- `∑{d}[n+1, #²]*∑{d}[n+1, #]` -/
def P17815529574037162886.Spec : Prop :=
  ∀ n, (P17815529574037162886.a n : ℤ) = A379812 (n + 1)

theorem P17815529574037162886.correct : P17815529574037162886.Spec := by
  intro n
  simp only [A379812, Nat.add_sub_cancel, A379812.P17815529574037162886.f1, A379812.P17815529574037162886.f2, A379812.P17815529574037162886.a, A379812.P10955070158037639960.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A379812

/-! ## A379812.P9483934208693005406

`A068020(n+1)-A067817(n+1)`
-/

namespace A379812.P9483934208693005406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068020 (n + 1) - A067817 (n + 1)

end

end A379812.P9483934208693005406

namespace A379812

/-- `A068020(n+1)-A067817(n+1)` -/
def P9483934208693005406.Spec : Prop :=
  ∀ n, P9483934208693005406.a n = A379812 (n + 1)

end A379812

/-! ## A379812.P12078404800451266928

`(A088580(n+1)-1)*A001157(n+1)`
-/

namespace A379812.P12078404800451266928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088580 (n + 1) - 1) * A001157 (n + 1)

end

end A379812.P12078404800451266928

namespace A379812

/-- `(A088580(n+1)-1)*A001157(n+1)` -/
def P12078404800451266928.Spec : Prop :=
  ∀ n, P12078404800451266928.a n = A379812 (n + 1)

theorem P12078404800451266928.correct : P12078404800451266928.Spec := by
  intro n
  simp only [A379812, Nat.add_sub_cancel, A379812.P12078404800451266928.a, A379812.P10955070158037639960.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A088580, A088580.P3089093194242277422.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A379812

/-! ## A379812.P1035429122066601178

`A001157(n+1)/2*A074400(n+1)`
-/

namespace A379812.P1035429122066601178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) : ℚ) / 2 * (A074400 (n + 1) : ℚ)

end

end A379812.P1035429122066601178

namespace A379812

/-- `A001157(n+1)/2*A074400(n+1)` -/
def P1035429122066601178.Spec : Prop :=
  ∀ n, P1035429122066601178.a n = (A379812 (n + 1) : ℚ)

theorem P1035429122066601178.correct : P1035429122066601178.Spec := by
  intro n
  simp only [A379812, Nat.add_sub_cancel, A379812.P1035429122066601178.a, A379812.P10955070158037639960.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A379812

/-! ## A379812.P11020610919127561239

`A007437(n+1)²-A069153(n+1)²`
-/

namespace A379812.P11020610919127561239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007437 (n + 1) ^ 2 - A069153 (n + 1) ^ 2

end

end A379812.P11020610919127561239

namespace A379812

/-- `A007437(n+1)²-A069153(n+1)²` -/
def P11020610919127561239.Spec : Prop :=
  ∀ n, P11020610919127561239.a n = A379812 (n + 1)

end A379812

/-! ## A379812.P1910692170631093571

`∑{d}[n+1, A001158(#)*A064971((n+1)/#)]`
-/

namespace A379812.P1910692170631093571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001158 d * A064971 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A379812.P1910692170631093571

namespace A379812

/-- `∑{d}[n+1, A001158(#)*A064971((n+1)/#)]` -/
def P1910692170631093571.Spec : Prop :=
  ∀ n, P1910692170631093571.a n = A379812 (n + 1)

end A379812

/-! ## A379812.P5392355641383142109

`∑{d}[n+1, A034677(#)*A064987((n+1)/#)]`
-/

namespace A379812.P5392355641383142109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034677 d * A064987 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A379812.P5392355641383142109

namespace A379812

/-- `∑{d}[n+1, A034677(#)*A064987((n+1)/#)]` -/
def P5392355641383142109.Spec : Prop :=
  ∀ n, P5392355641383142109.a n = A379812 (n + 1)

end A379812

/-! ## A379812.P2756346581369617919

`A001157(n+1)+A001157(n+1)*A039653(n+1)`
-/

namespace A379812.P2756346581369617919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) + A001157 (n + 1) * A039653 (n + 1)

end

end A379812.P2756346581369617919

namespace A379812

/-- `A001157(n+1)+A001157(n+1)*A039653(n+1)` -/
def P2756346581369617919.Spec : Prop :=
  ∀ n, P2756346581369617919.a n = A379812 (n + 1)

end A379812

/-! ## A379812.P16054162454617746977

`(A086666(n+1)+A000203(n+1))*A000203(n+1)`
-/

namespace A379812.P16054162454617746977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A086666 (n + 1) + A000203 (n + 1)) * A000203 (n + 1)

end

end A379812.P16054162454617746977

namespace A379812

/-- `(A086666(n+1)+A000203(n+1))*A000203(n+1)` -/
def P16054162454617746977.Spec : Prop :=
  ∀ n, P16054162454617746977.a n = A379812 (n + 1)

theorem P16054162454617746977.correct : P16054162454617746977.Spec := by
  intro n
  simp only [A379812, Nat.add_sub_cancel, A379812.P16054162454617746977.a, A379812.P10955070158037639960.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A086666, A086666.P3609160851876626108.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A379812

/-! ## A379812.P16698757741793467139

`(A146076(n+1)+A000593(n+1))*A001157(n+1)`
-/

namespace A379812.P16698757741793467139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A146076 (n + 1) + A000593 (n + 1)) * A001157 (n + 1)

end

end A379812.P16698757741793467139

namespace A379812

/-- `(A146076(n+1)+A000593(n+1))*A001157(n+1)` -/
def P16698757741793467139.Spec : Prop :=
  ∀ n, P16698757741793467139.a n = A379812 (n + 1)

theorem P16698757741793467139.correct : P16698757741793467139.Spec := by
  intro n
  simp only [A379812, Nat.add_sub_cancel, A379812.P16698757741793467139.a, A379812.P10955070158037639960.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000593, A000593.P10331878810394225172.f1, A000593.P10331878810394225172.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A146076, A146076.P5513778411624192836.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A379812

/-! ## A379812.P8684959152431378840

`(A326142(n+1)+A007947(n+1))*A001157(n+1)`
-/

namespace A379812.P8684959152431378840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A326142 (n + 1) + A007947 (n + 1)) * A001157 (n + 1)

end

end A379812.P8684959152431378840

namespace A379812

/-- `(A326142(n+1)+A007947(n+1))*A001157(n+1)` -/
def P8684959152431378840.Spec : Prop :=
  ∀ n, P8684959152431378840.a n = A379812 (n + 1)

theorem P8684959152431378840.correct : P8684959152431378840.Spec := by
  intro n
  simp only [A379812, Nat.add_sub_cancel, A379812.P8684959152431378840.a, A379812.P10955070158037639960.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A326142, A326142.P15415912859726343761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A379812

/-! ## A379812.P12851857598050204790

`(A059819(n+1)-A002133(n+1))*A001157(n+1)`
-/

namespace A379812.P12851857598050204790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059819 (n + 1) - A002133 (n + 1)) * A001157 (n + 1)

end

end A379812.P12851857598050204790

namespace A379812

/-- `(A059819(n+1)-A002133(n+1))*A001157(n+1)` -/
def P12851857598050204790.Spec : Prop :=
  ∀ n, P12851857598050204790.a n = A379812 (n + 1)

end A379812

/-! ## A379812.P3201604779634206699

`(A065387(n+1)-A000010(n+1))*A001157(n+1)`
-/

namespace A379812.P3201604779634206699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065387 (n + 1) - A000010 (n + 1)) * A001157 (n + 1)

end

end A379812.P3201604779634206699

namespace A379812

/-- `(A065387(n+1)-A000010(n+1))*A001157(n+1)` -/
def P3201604779634206699.Spec : Prop :=
  ∀ n, P3201604779634206699.a n = A379812 (n + 1)

theorem P3201604779634206699.correct : P3201604779634206699.Spec := by
  intro n
  simp only [A379812, Nat.add_sub_cancel, A379812.P3201604779634206699.a, A379812.P10955070158037639960.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A065387, A065387.P11284875715279330998.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A379812

/-! ## A379812.P13329134439371930215

`(A007437(n+1)-A069153(n+1))*A001157(n+1)`
-/

namespace A379812.P13329134439371930215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007437 (n + 1) - A069153 (n + 1)) * A001157 (n + 1)

end

end A379812.P13329134439371930215

namespace A379812

/-- `(A007437(n+1)-A069153(n+1))*A001157(n+1)` -/
def P13329134439371930215.Spec : Prop :=
  ∀ n, P13329134439371930215.a n = A379812 (n + 1)

end A379812

/-! ## A379812.P12103604650704386602

`(A001157(n+1)-A086666(n+1))*A001157(n+1)`
-/

namespace A379812.P12103604650704386602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) - A086666 (n + 1)) * A001157 (n + 1)

end

end A379812.P12103604650704386602

namespace A379812

/-- `(A001157(n+1)-A086666(n+1))*A001157(n+1)` -/
def P12103604650704386602.Spec : Prop :=
  ∀ n, P12103604650704386602.a n = A379812 (n + 1)

theorem P12103604650704386602.correct : P12103604650704386602.Spec := by
  intro n
  simp only [A379812, Nat.add_sub_cancel, A379812.P12103604650704386602.a, A379812.P10955070158037639960.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A086666, A086666.P3609160851876626108.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A379812

/-! ## A379812.P6694719554668643369

`(A072861(n+1)-A066293(n+1))*A000203(n+1)`
-/

namespace A379812.P6694719554668643369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A072861 (n + 1) - A066293 (n + 1)) * A000203 (n + 1)

end

end A379812.P6694719554668643369

namespace A379812

/-- `(A072861(n+1)-A066293(n+1))*A000203(n+1)` -/
def P6694719554668643369.Spec : Prop :=
  ∀ n, P6694719554668643369.a n = A379812 (n + 1)

theorem P6694719554668643369.correct : P6694719554668643369.Spec := by
  intro n
  simp only [A379812, Nat.add_sub_cancel, A379812.P6694719554668643369.a, A379812.P10955070158037639960.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A066293, A066293.P1248160133260108300.a, A072861, A072861.P7379814568350881994.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A379812

/-! ## A379812.P13420704102706531508

`(A067692(n+1)-A119616(n+1))*A000203(n+1)`
-/

namespace A379812.P13420704102706531508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A067692 (n + 1) - A119616 (n + 1)) * A000203 (n + 1)

end

end A379812.P13420704102706531508

namespace A379812

/-- `(A067692(n+1)-A119616(n+1))*A000203(n+1)` -/
def P13420704102706531508.Spec : Prop :=
  ∀ n, P13420704102706531508.a n = A379812 (n + 1)

end A379812

/-! ## A379812.P14694398611105106601

`(A064987(n+1)-A303384(n+1))*A000203(n+1)`
-/

namespace A379812.P14694398611105106601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) - A303384 (n + 1)) * A000203 (n + 1)

end

end A379812.P14694398611105106601

namespace A379812

/-- `(A064987(n+1)-A303384(n+1))*A000203(n+1)` -/
def P14694398611105106601.Spec : Prop :=
  ∀ n, P14694398611105106601.a n = A379812 (n + 1)

theorem P14694398611105106601.correct : P14694398611105106601.Spec := by
  intro n
  simp only [A379812, Nat.add_sub_cancel, A379812.P14694398611105106601.a, A379812.P10955070158037639960.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A064987, A064987.P14181610018234257040.a, A303384, A303384.P10676162683554511722.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A379812

/-! ## A379812.P15851970328116378737

`A001157(n+1)*A082903(n+1)*A161942(n+1)`
-/

namespace A379812.P15851970328116378737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) * A082903 (n + 1) * A161942 (n + 1)

end

end A379812.P15851970328116378737

namespace A379812

/-- `A001157(n+1)*A082903(n+1)*A161942(n+1)` -/
def P15851970328116378737.Spec : Prop :=
  ∀ n, P15851970328116378737.a n = A379812 (n + 1)

end A379812

/-!
# A379813: a(n) = sigma_1(n) * sigma_3(n).

The programs for A379813, the canonical program `A379813.P10472357877815493423` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379813 has offset 1).

The definition of A379813 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)*A001158(n+1)` (program `A379813.P10472357877815493423`, by `A379813.P10472357877815493423.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A379813.P10472357877815493423

`A000203(n+1)*A001158(n+1)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A379813

/-- `A000203(n+1)*A001158(n+1)` -/
def P10472357877815493423.Spec : Prop :=
  ∀ n, P10472357877815493423.a n = A379813 (n + 1)

theorem P10472357877815493423.correct : P10472357877815493423.Spec := by
  intro n
  simp only [A379813, Nat.add_sub_cancel]

end A379813

/-! ## A379813.P10256127237953977043

`Δ[A160664(n)]*A001158(n+1)`
-/

namespace A379813.P10256127237953977043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001158 (n + 1)

end

end A379813.P10256127237953977043

namespace A379813

/-- `Δ[A160664(n)]*A001158(n+1)` -/
def P10256127237953977043.Spec : Prop :=
  ∀ n, P10256127237953977043.a n = A379813 (n + 1)

end A379813

/-! ## A379813.P14545517362822301735

`A001158(n+1)/2*A074400(n+1)`
-/

namespace A379813.P14545517362822301735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001158 (n + 1) : ℚ) / 2 * (A074400 (n + 1) : ℚ)

end

end A379813.P14545517362822301735

namespace A379813

/-- `A001158(n+1)/2*A074400(n+1)` -/
def P14545517362822301735.Spec : Prop :=
  ∀ n, P14545517362822301735.a n = (A379813 (n + 1) : ℚ)

theorem P14545517362822301735.correct : P14545517362822301735.Spec := by
  intro n
  simp only [A379813, Nat.add_sub_cancel, A379813.P14545517362822301735.a, A379813.P10472357877815493423.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001158, A001158.P5142498491642488153.f1, A001158.P5142498491642488153.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A379813

/-! ## A379813.P6730639376920752347

`∑{d}[n+1, A034678(#)*A328259((n+1)/#)]`
-/

namespace A379813.P6730639376920752347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034678 d * A328259 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A379813.P6730639376920752347

namespace A379813

/-- `∑{d}[n+1, A034678(#)*A328259((n+1)/#)]` -/
def P6730639376920752347.Spec : Prop :=
  ∀ n, P6730639376920752347.a n = A379813 (n + 1)

end A379813

/-! ## A379813.P5587520977867627406

`∑{d}[n+1, A349469(#)*A356533((n+1)/#)]`
-/

namespace A379813.P5587520977867627406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349469 d * A356533 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A379813.P5587520977867627406

namespace A379813

/-- `∑{d}[n+1, A349469(#)*A356533((n+1)/#)]` -/
def P5587520977867627406.Spec : Prop :=
  ∀ n, P5587520977867627406.a n = A379813 (n + 1)

end A379813

/-! ## A379813.P7134517767535345934

`(A092348(n+1)+A000203(n+1))*A000203(n+1)`
-/

namespace A379813.P7134517767535345934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A092348 (n + 1) + A000203 (n + 1)) * A000203 (n + 1)

end

end A379813.P7134517767535345934

namespace A379813

/-- `(A092348(n+1)+A000203(n+1))*A000203(n+1)` -/
def P7134517767535345934.Spec : Prop :=
  ∀ n, P7134517767535345934.a n = A379813 (n + 1)

theorem P7134517767535345934.correct : P7134517767535345934.Spec := by
  intro n
  simp only [A379813, Nat.add_sub_cancel, A379813.P7134517767535345934.a, A379813.P10472357877815493423.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001158, A001158.P5142498491642488153.f1, A001158.P5142498491642488153.a, A092348, A092348.P6797940107064523525.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A379813

/-! ## A379813.P1242010306122128547

`(A001157(n+1)-A086666(n+1))*A001158(n+1)`
-/

namespace A379813.P1242010306122128547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) - A086666 (n + 1)) * A001158 (n + 1)

end

end A379813.P1242010306122128547

namespace A379813

/-- `(A001157(n+1)-A086666(n+1))*A001158(n+1)` -/
def P1242010306122128547.Spec : Prop :=
  ∀ n, P1242010306122128547.a n = A379813 (n + 1)

theorem P1242010306122128547.correct : P1242010306122128547.Spec := by
  intro n
  simp only [A379813, Nat.add_sub_cancel, A379813.P1242010306122128547.a, A379813.P10472357877815493423.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A001158, A001158.P5142498491642488153.f1, A001158.P5142498491642488153.a, A086666, A086666.P3609160851876626108.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A379813

/-! ## A379813.P3172437108019356721

`(A001158(n+1)-A092348(n+1))*A001158(n+1)`
-/

namespace A379813.P3172437108019356721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001158 (n + 1) - A092348 (n + 1)) * A001158 (n + 1)

end

end A379813.P3172437108019356721

namespace A379813

/-- `(A001158(n+1)-A092348(n+1))*A001158(n+1)` -/
def P3172437108019356721.Spec : Prop :=
  ∀ n, P3172437108019356721.a n = A379813 (n + 1)

theorem P3172437108019356721.correct : P3172437108019356721.Spec := by
  intro n
  simp only [A379813, Nat.add_sub_cancel, A379813.P3172437108019356721.a, A379813.P10472357877815493423.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001158, A001158.P5142498491642488153.f1, A001158.P5142498491642488153.a, A092348, A092348.P6797940107064523525.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A379813

/-! ## A379813.P15469008255086387050

`A001158(n+1)*A082903(n+1)*A161942(n+1)`
-/

namespace A379813.P15469008255086387050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (n + 1) * A082903 (n + 1) * A161942 (n + 1)

end

end A379813.P15469008255086387050

namespace A379813

/-- `A001158(n+1)*A082903(n+1)*A161942(n+1)` -/
def P15469008255086387050.Spec : Prop :=
  ∀ n, P15469008255086387050.a n = A379813 (n + 1)

end A379813

/-! ## A379813.P13509332912214629031

`A072861(n+1)/A379812(n+1)*A379814(n+1)`
-/

namespace A379813.P13509332912214629031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072861 (n + 1) : ℚ) / (A379812 (n + 1) : ℚ) * (A379814 (n + 1) : ℚ)

end

end A379813.P13509332912214629031

namespace A379813

/-- `A072861(n+1)/A379812(n+1)*A379814(n+1)` -/
def P13509332912214629031.Spec : Prop :=
  ∀ n, P13509332912214629031.a n = (A379813 (n + 1) : ℚ)

end A379813

/-! ## A379813.P10292997466732942909

`A356534(n+1)*A379812(n+1)/A379814(n+1)`
-/

namespace A379813.P10292997466732942909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356534 (n + 1) * A379812 (n + 1) : ℚ) / (A379814 (n + 1) : ℚ)

end

end A379813.P10292997466732942909

namespace A379813

/-- `A356534(n+1)*A379812(n+1)/A379814(n+1)` -/
def P10292997466732942909.Spec : Prop :=
  ∀ n, P10292997466732942909.a n = (A379813 (n + 1) : ℚ)

end A379813

/-! ## A379813.P14193647276446230414

`(A092345(n+1)-A000203(n+1))*A000203(n+1)`
-/

namespace A379813.P14193647276446230414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A092345 (n + 1) - A000203 (n + 1)) * A000203 (n + 1)

end

end A379813.P14193647276446230414

namespace A379813

/-- `(A092345(n+1)-A000203(n+1))*A000203(n+1)` -/
def P14193647276446230414.Spec : Prop :=
  ∀ n, P14193647276446230414.a n = A379813 (n + 1)

end A379813

/-! ## A379813.P16652323562313965226

`(A092345(n+1)-A001158(n+1))*A001158(n+1)`
-/

namespace A379813.P16652323562313965226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A092345 (n + 1) - A001158 (n + 1)) * A001158 (n + 1)

end

end A379813.P16652323562313965226

namespace A379813

/-- `(A092345(n+1)-A001158(n+1))*A001158(n+1)` -/
def P16652323562313965226.Spec : Prop :=
  ∀ n, P16652323562313965226.a n = A379813 (n + 1)

end A379813

/-! ## A379813.P14847505331430842846

`A001158(n+1)/A000045(n+1)*A203848(n+1)`
-/

namespace A379813.P14847505331430842846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001158 (n + 1) : ℚ) / (A000045 (n + 1) : ℚ) * (A203848 (n + 1) : ℚ)

end

end A379813.P14847505331430842846

namespace A379813

/-- `A001158(n+1)/A000045(n+1)*A203848(n+1)` -/
def P14847505331430842846.Spec : Prop :=
  ∀ n, P14847505331430842846.a n = (A379813 (n + 1) : ℚ)

end A379813

/-!
# A379814: a(n) = sigma_2(n) * sigma_3(n).

The programs for A379814, the canonical program `A379814.P16691352175471226694` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379814 has offset 1).

The definition of A379814 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001157(n+1)*A001158(n+1)` (program `A379814.P16691352175471226694`, by `A379814.P16691352175471226694.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A379814.P16691352175471226694

`A001157(n+1)*A001158(n+1)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A379814

/-- `A001157(n+1)*A001158(n+1)` -/
def P16691352175471226694.Spec : Prop :=
  ∀ n, P16691352175471226694.a n = A379814 (n + 1)

theorem P16691352175471226694.correct : P16691352175471226694.Spec := by
  intro n
  simp only [A379814, Nat.add_sub_cancel]

end A379814

/-! ## A379814.P1532305597848999274

`A000203(n+1)*A320917(n+1)`
-/

namespace A379814.P1532305597848999274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A320917 (n + 1)

end

end A379814.P1532305597848999274

namespace A379814

/-- `A000203(n+1)*A320917(n+1)` -/
def P1532305597848999274.Spec : Prop :=
  ∀ n, P1532305597848999274.a n = A379814 (n + 1)

end A379814

/-! ## A379814.P7978078343242610000

`sqrt(A356534(n+1))*A001157(n+1)`
-/

namespace A379814.P7978078343242610000
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A356534 (n + 1) : ℝ) * (A001157 (n + 1) : ℝ)

end

end A379814.P7978078343242610000

namespace A379814

/-- `sqrt(A356534(n+1))*A001157(n+1)` -/
def P7978078343242610000.Spec : Prop :=
  ∀ n, P7978078343242610000.a n = (A379814 (n + 1) : ℝ)

end A379814

/-! ## A379814.P14968155900387223382

`(A086666(n+1)+A000203(n+1))*A001158(n+1)`
-/

namespace A379814.P14968155900387223382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A086666 (n + 1) + A000203 (n + 1)) * A001158 (n + 1)

end

end A379814.P14968155900387223382

namespace A379814

/-- `(A086666(n+1)+A000203(n+1))*A001158(n+1)` -/
def P14968155900387223382.Spec : Prop :=
  ∀ n, P14968155900387223382.a n = A379814 (n + 1)

theorem P14968155900387223382.correct : P14968155900387223382.Spec := by
  intro n
  simp only [A379814, Nat.add_sub_cancel, A379814.P14968155900387223382.a, A379814.P16691352175471226694.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A001158, A001158.P5142498491642488153.f1, A001158.P5142498491642488153.a, A086666, A086666.P3609160851876626108.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A379814

/-! ## A379814.P3935550255533542570

`(A092348(n+1)+A000203(n+1))*A001157(n+1)`
-/

namespace A379814.P3935550255533542570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A092348 (n + 1) + A000203 (n + 1)) * A001157 (n + 1)

end

end A379814.P3935550255533542570

namespace A379814

/-- `(A092348(n+1)+A000203(n+1))*A001157(n+1)` -/
def P3935550255533542570.Spec : Prop :=
  ∀ n, P3935550255533542570.a n = A379814 (n + 1)

theorem P3935550255533542570.correct : P3935550255533542570.Spec := by
  intro n
  simp only [A379814, Nat.add_sub_cancel, A379814.P3935550255533542570.a, A379814.P16691352175471226694.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A001158, A001158.P5142498491642488153.f1, A001158.P5142498491642488153.a, A092348, A092348.P6797940107064523525.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A379814

/-! ## A379814.P8255106239476317360

`(A092349(n+1)+A001157(n+1))*A001157(n+1)`
-/

namespace A379814.P8255106239476317360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A092349 (n + 1) + A001157 (n + 1)) * A001157 (n + 1)

end

end A379814.P8255106239476317360

namespace A379814

/-- `(A092349(n+1)+A001157(n+1))*A001157(n+1)` -/
def P8255106239476317360.Spec : Prop :=
  ∀ n, P8255106239476317360.a n = A379814 (n + 1)

theorem P8255106239476317360.correct : P8255106239476317360.Spec := by
  intro n
  simp only [A379814, Nat.add_sub_cancel, A379814.P8255106239476317360.a, A379814.P16691352175471226694.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A001158, A001158.P5142498491642488153.f1, A001158.P5142498491642488153.a, A092349, A092349.P6108062605440403893.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A379814

/-! ## A379814.P12773508977126840848

`(A001158(n+1)-A092349(n+1))*A001158(n+1)`
-/

namespace A379814.P12773508977126840848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001158 (n + 1) - A092349 (n + 1)) * A001158 (n + 1)

end

end A379814.P12773508977126840848

namespace A379814

/-- `(A001158(n+1)-A092349(n+1))*A001158(n+1)` -/
def P12773508977126840848.Spec : Prop :=
  ∀ n, P12773508977126840848.a n = A379814 (n + 1)

theorem P12773508977126840848.correct : P12773508977126840848.Spec := by
  intro n
  simp only [A379814, Nat.add_sub_cancel, A379814.P12773508977126840848.a, A379814.P16691352175471226694.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A001158, A001158.P5142498491642488153.f1, A001158.P5142498491642488153.a, A092349, A092349.P6108062605440403893.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A379814

/-! ## A379814.P6718670478429034627

`(A092344(n+1)-A001157(n+1))*A001157(n+1)`
-/

namespace A379814.P6718670478429034627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A092344 (n + 1) - A001157 (n + 1)) * A001157 (n + 1)

end

end A379814.P6718670478429034627

namespace A379814

/-- `(A092344(n+1)-A001157(n+1))*A001157(n+1)` -/
def P6718670478429034627.Spec : Prop :=
  ∀ n, P6718670478429034627.a n = A379814 (n + 1)

end A379814

/-! ## A379814.P5908876778485272821

`(A092344(n+1)-A001158(n+1))*A001158(n+1)`
-/

namespace A379814.P5908876778485272821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A092344 (n + 1) - A001158 (n + 1)) * A001158 (n + 1)

end

end A379814.P5908876778485272821

namespace A379814

/-- `(A092344(n+1)-A001158(n+1))*A001158(n+1)` -/
def P5908876778485272821.Spec : Prop :=
  ∀ n, P5908876778485272821.a n = A379814 (n + 1)

end A379814

/-! ## A379814.P1649690298967992400

`(A092348(n+1)-A092350(n+1))*A001158(n+1)`
-/

namespace A379814.P1649690298967992400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A092348 (n + 1) - A092350 (n + 1)) * A001158 (n + 1)

end

end A379814.P1649690298967992400

namespace A379814

/-- `(A092348(n+1)-A092350(n+1))*A001158(n+1)` -/
def P1649690298967992400.Spec : Prop :=
  ∀ n, P1649690298967992400.a n = A379814 (n + 1)

theorem P1649690298967992400.correct : P1649690298967992400.Spec := by
  intro n
  simp only [A379814, Nat.add_sub_cancel, A379814.P1649690298967992400.a, A379814.P16691352175471226694.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A001158, A001158.P5142498491642488153.f1, A001158.P5142498491642488153.a, A092348, A092348.P6797940107064523525.a, A092350, A092350.P468185143034267318.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A379814

/-! ## A379814.P2013615324416349307

`A379812(n+1)/A072861(n+1)*A379813(n+1)`
-/

namespace A379814.P2013615324416349307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379812 (n + 1) : ℚ) / (A072861 (n + 1) : ℚ) * (A379813 (n + 1) : ℚ)

end

end A379814.P2013615324416349307

namespace A379814

/-- `A379812(n+1)/A072861(n+1)*A379813(n+1)` -/
def P2013615324416349307.Spec : Prop :=
  ∀ n, P2013615324416349307.a n = (A379814 (n + 1) : ℚ)

end A379814

/-! ## A379814.P9506915145366102637

`A356533(n+1)/A379812(n+1)*A379813(n+1)`
-/

namespace A379814.P9506915145366102637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356533 (n + 1) : ℚ) / (A379812 (n + 1) : ℚ) * (A379813 (n + 1) : ℚ)

end

end A379814.P9506915145366102637

namespace A379814

/-- `A356533(n+1)/A379812(n+1)*A379813(n+1)` -/
def P9506915145366102637.Spec : Prop :=
  ∀ n, P9506915145366102637.a n = (A379814 (n + 1) : ℚ)

end A379814

/-! ## A379814.P979962850647052329

`A356534(n+1)*A379812(n+1)/A379813(n+1)`
-/

namespace A379814.P979962850647052329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356534 (n + 1) * A379812 (n + 1) : ℚ) / (A379813 (n + 1) : ℚ)

end

end A379814.P979962850647052329

namespace A379814

/-- `A356534(n+1)*A379812(n+1)/A379813(n+1)` -/
def P979962850647052329.Spec : Prop :=
  ∀ n, P979962850647052329.a n = (A379814 (n + 1) : ℚ)

end A379814

/-! ## A379814.P2249769808928866594

`A001158(n+1)+A001158(n+1)*A053807(n+2)`
-/

namespace A379814.P2249769808928866594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (n + 1) + A001158 (n + 1) * A053807 (n + 2)

end

end A379814.P2249769808928866594

namespace A379814

/-- `A001158(n+1)+A001158(n+1)*A053807(n+2)` -/
def P2249769808928866594.Spec : Prop :=
  ∀ n, P2249769808928866594.a n = A379814 (n + 1)

end A379814

/-! ## A379814.P3995770609519523259

`(A059358(n+1)-A363607(n+1))*A001158(n+1)`
-/

namespace A379814.P3995770609519523259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059358 (n + 1) - A363607 (n + 1)) * A001158 (n + 1)

end

end A379814.P3995770609519523259

namespace A379814

/-- `(A059358(n+1)-A363607(n+1))*A001158(n+1)` -/
def P3995770609519523259.Spec : Prop :=
  ∀ n, P3995770609519523259.a n = A379814 (n + 1)

end A379814

/-! ## A379814.P14310641929693124389

`A001158(n+1)/A000045(n+1)*A203849(n+1)`
-/

namespace A379814.P14310641929693124389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001158 (n + 1) : ℚ) / (A000045 (n + 1) : ℚ) * (A203849 (n + 1) : ℚ)

end

end A379814.P14310641929693124389

namespace A379814

/-- `A001158(n+1)/A000045(n+1)*A203849(n+1)` -/
def P14310641929693124389.Spec : Prop :=
  ∀ n, P14310641929693124389.a n = (A379814 (n + 1) : ℚ)

end A379814

/-! ## A379814.P2370738615025666775

`A001157(n+1)/A000045(n+1)*A203838(n+1)`
-/

namespace A379814.P2370738615025666775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) : ℚ) / (A000045 (n + 1) : ℚ) * (A203838 (n + 1) : ℚ)

end

end A379814.P2370738615025666775

namespace A379814

/-- `A001157(n+1)/A000045(n+1)*A203838(n+1)` -/
def P2370738615025666775.Spec : Prop :=
  ∀ n, P2370738615025666775.a n = (A379814 (n + 1) : ℚ)

end A379814

/-!
# A379820: Array read by ascending antidiagonals: A(n, k) = (-1)^(n + k) * Sum_{j=0..k} j! * Stirling1(n, j) * Stirling1(k, j).

The programs for A379820, there is no canonical definition to state claims against.
-/

/-! ## A379820.P11347160044307711784

`A090001(A155825(n))`
-/

namespace A379820.P11347160044307711784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090001 (A155825 n).toNat

end

end A379820.P11347160044307711784

/-! ## A379820.P13803139236870306547

`∑{e}[A276903(A055652(n)), #]`
-/

namespace A379820.P13803139236870306547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276903 (A055652 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A379820.P13803139236870306547

/-! ## A379820.P6964969919870625766

`A112658(A156188(n))`
-/

namespace A379820.P6964969919870625766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112658 (A156188 n).toNat

end

end A379820.P6964969919870625766

/-! ## A379820.P14078118792245697646

`A136177(A157117(n))`
-/

namespace A379820.P14078118792245697646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136177 (A157117 n).toNat

end

end A379820.P14078118792245697646

/-! ## A379820.P14085279808020118975

`A328698(A156233(n))`
-/

namespace A379820.P14085279808020118975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328698 (A156233 n).toNat

end

end A379820.P14085279808020118975

/-!
# A379821: Array read by ascending antidiagonals: A(n, k) = (-1)^(n + k) * Sum_{j=0..k} (j!)^2 * Stirling1(n, j) * Stirling1(k, j).

The programs for A379821, there is no canonical definition to state claims against.
-/

/-! ## A379821.P12695639742006500134

`A078768(A257610(n))`
-/

namespace A379821.P12695639742006500134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078768 (A257610 n).toNat

end

end A379821.P12695639742006500134

/-! ## A379821.P13283642635627832732

`A174807(A383153(n+1))`
-/

namespace A379821.P13283642635627832732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174807 (A383153 (n + 1)).toNat

end

end A379821.P13283642635627832732

/-! ## A379821.P2099031381709477132

`A075425(A383153(n+1)*A383153(n+1))`
-/

namespace A379821.P2099031381709477132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075425 (A383153 (n + 1) * A383153 (n + 1)).toNat

end

end A379821.P2099031381709477132

/-! ## A379821.P7954780668950119243

`A000701(A080796(n)+A007318(n))`
-/

namespace A379821.P7954780668950119243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 (A080796 n + A007318 n).toNat

end

end A379821.P7954780668950119243

/-! ## A379821.P17874782887072445420

`A328698(A270061(n)+A155825(n))`
-/

namespace A379821.P17874782887072445420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328698 (A270061 n + A155825 n).toNat

end

end A379821.P17874782887072445420

/-!
# A379822: Triangle read by rows: T(n, k) is the number of walks of length n on the Z X Z grid with unit steps in all four directions (NSWE) starting at (0, 0), and ending on the vertical line x = 0 if k = 0, or on the line x = k or x = -(n + 1 - k) if k > 0.

The programs for A379822, the canonical program `A379822.P7224189513868805994` is in `Seq.B003.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379822 has offset 0).

The definition of A379822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379822.P7224189513868805994

`A094527(n)+A122366(n)-A062344(n)`

The canonical program, it is in `Seq.B003.C006`.
-/

namespace A379822

/-- `A094527(n)+A122366(n)-A062344(n)` -/
def P7224189513868805994.Spec : Prop :=
  ∀ n, P7224189513868805994.a n = A379822 n

theorem P7224189513868805994.correct : P7224189513868805994.Spec := by
  intro n
  simp only [A379822]

end A379822

/-!
# A379823: a(n) = (-1)^n * hypergeom([-n, n/2 + 1, n/2 + 1/2], [1, n + 2], 4). Central terms of A379907.

The programs for A379823, there is no canonical definition to state claims against.
-/

/-! ## A379823.P8923538610874061845

`A082759(n)-n*A106228(n)`
-/

namespace A379823.P8923538610874061845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082759 n - (n : ℤ) * A106228 n

end

end A379823.P8923538610874061845

/-! ## A379823.P16766312982157277001

`A379907(∑[4*n])`
-/

namespace A379823.P16766312982157277001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379907 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A379823.P16766312982157277001

/-!
# A379825: a(n) = [x^n] x/(12*x^2 - 6*x + 1).

The programs for A379825, the canonical program `A379825.P5427250244027885407` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379825 has offset 0).

The definition of A379825 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A379825.P5427250244027885407

`6*(a(n-1)-2*a(n-2))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A379825

/-- `6*(a(n-1)-2*a(n-2))` -/
def P5427250244027885407.Spec : Prop :=
  ∀ n, P5427250244027885407.a n = A379825 n

theorem P5427250244027885407.correct : P5427250244027885407.Spec := by
  intro n
  simp only [A379825]

end A379825

/-! ## A379825.P7655610885543777641

`2^(n-1)*∑[A057682(n)]`
-/

namespace A379825.P7655610885543777641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057682 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A379825.P7655610885543777641

namespace A379825

/-- `2^(n-1)*∑[A057682(n)]` -/
def P7655610885543777641.Spec : Prop :=
  ∀ n, P7655610885543777641.a n = (A379825 n : ℚ)

end A379825

/-! ## A379825.P835486717535222956

`∑[A057682(n)]*A011782(n)`
-/

namespace A379825.P835486717535222956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A011782 n

end

end A379825.P835486717535222956

namespace A379825

/-- `∑[A057682(n)]*A011782(n)` -/
def P835486717535222956.Spec : Prop :=
  ∀ n, P835486717535222956.a n = A379825 n

end A379825

/-! ## A379825.P4814922898923390549

`ogf(x/(1-6x+12x^2))`
-/

namespace A379825.P4814922898923390549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -6, 12] n

end

end A379825.P4814922898923390549

namespace A379825

/-- `ogf(x/(1-6x+12x^2))` -/
def P4814922898923390549.Spec : Prop :=
  ∀ n, P4814922898923390549.a n = A379825 n

end A379825

/-!
# A379828: Ulam numbers that are oblong (or promic) numbers.

The programs for A379828, there is no canonical definition to state claims against.
-/

/-! ## A379828.P15487056457109570393

`∩[A382798(n+1), A002378(n)]`
-/

namespace A379828.P15487056457109570393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379828.P15487056457109570393

/-! ## A379828.P9132100105438333975

`∩[A382798(n+1), A028310(n)²+n]`
-/

namespace A379828.P9132100105438333975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379828.P9132100105438333975

/-! ## A379828.P9519488378619239138

`∩[A002858(n+1), n²+n]`
-/

namespace A379828.P9519488378619239138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A379828.P9519488378619239138

/-! ## A379828.P1791812232179854449

`∩[A002378(n), A002858(n+1)]`
-/

namespace A379828.P1791812232179854449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379828.P1791812232179854449

/-! ## A379828.P12520861821076454531

`∩[A142705(2*n+3), A002858(n+1)]`
-/

namespace A379828.P12520861821076454531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142705 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379828.P12520861821076454531

/-!
# A379830: a(n) is the number of Pythagorean triples (u, v, w) for which w - u = n where u < v < w.

The programs for A379830, there is no canonical definition to state claims against.
-/

/-! ## A379830.P6944938038812093750

`and(A128280(n), A352517(A006995(n+1)))`
-/

namespace A379830.P6944938038812093750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A128280 n) (A352517 (A006995 (n + 1)).toNat)

end

end A379830.P6944938038812093750

/-! ## A379830.P13018469060024907274

`and(A135499(n+1), A304886(A329738(n)))`
-/

namespace A379830.P13018469060024907274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A135499 (n + 1)) (A304886 (A329738 n).toNat)

end

end A379830.P13018469060024907274

/-! ## A379830.P2243419308579544117

`A113901(3*n+1)%A136693(A000043(n+1))`
-/

namespace A379830.P2243419308579544117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113901 (3 * n + 1)) (A136693 (A000043 (n + 1)).toNat)

end

end A379830.P2243419308579544117

/-! ## A379830.P9001079993122324454

`A378929(A247687(3*n+5))%A285203(n+1)`
-/

namespace A379830.P9001079993122324454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A378929 (A247687 (3 * n + 5)).toNat) (A285203 (n + 1))

end

end A379830.P9001079993122324454

/-! ## A379830.P15913397869318728645

`and(A001285(A213925(n+1)), A113340(3*n+2))`
-/

namespace A379830.P15913397869318728645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001285 (A213925 (n + 1)).toNat) (A113340 (3 * n + 2))

end

end A379830.P15913397869318728645

/-!
# A379832: The second Jordan totient function applied to the exponentially odd numbers.

The programs for A379832, the canonical program `A379832.P7411395680414309384` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379832 has offset 1).

The definition of A379832 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A379832.P7411395680414309384

`A007434(A268335(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A379832

/-- `A007434(A268335(n+1))` -/
def P7411395680414309384.Spec : Prop :=
  ∀ n, P7411395680414309384.a n = A379832 (n + 1)

theorem P7411395680414309384.correct : P7411395680414309384.Spec := by
  intro n
  simp only [A379832, Nat.add_sub_cancel]

end A379832

/-! ## A379832.P1471312056318668786

`A374456(n+1)*A374457(n+1)`
-/

namespace A379832.P1471312056318668786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374456 (n + 1) * A374457 (n + 1)

end

end A379832.P1471312056318668786

namespace A379832

/-- `A374456(n+1)*A374457(n+1)` -/
def P1471312056318668786.Spec : Prop :=
  ∀ n, P1471312056318668786.a n = A379832 (n + 1)

end A379832

/-! ## A379832.P13014830227063402609

`A007434(record[A350389(n+1)])`
-/

namespace A379832.P13014830227063402609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A379832.P13014830227063402609

namespace A379832

/-- `A007434(record[A350389(n+1)])` -/
def P13014830227063402609.Spec : Prop :=
  ∀ n, P13014830227063402609.a n = A379832 (n + 1)

end A379832

/-! ## A379832.P14917980056463370062

`A063659(A374458(n+1))`
-/

namespace A379832.P14917980056463370062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063659 (A374458 (n + 1)).toNat

end

end A379832.P14917980056463370062

namespace A379832

/-- `A063659(A374458(n+1))` -/
def P14917980056463370062.Spec : Prop :=
  ∀ n, P14917980056463370062.a n = A379832 (n + 1)

end A379832

/-! ## A379832.P8775736523243755973

`A063659(A268335(n+1)²)`
-/

namespace A379832.P8775736523243755973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063659 (A268335 (n + 1) ^ 2).toNat

end

end A379832.P8775736523243755973

namespace A379832

/-- `A063659(A268335(n+1)²)` -/
def P8775736523243755973.Spec : Prop :=
  ∀ n, P8775736523243755973.a n = A379832 (n + 1)

end A379832

/-! ## A379832.P4054481049673507599

`A384247(A268335(n+1)²)`
-/

namespace A379832.P4054481049673507599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384247 (A268335 (n + 1) ^ 2).toNat

end

end A379832.P4054481049673507599

namespace A379832

/-- `A384247(A268335(n+1)²)` -/
def P4054481049673507599.Spec : Prop :=
  ∀ n, P4054481049673507599.a n = A379832 (n + 1)

end A379832

/-! ## A379832.P3400748506866378313

`A384247(A268335(n+1)*A268335(n+1))`
-/

namespace A379832.P3400748506866378313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384247 (A268335 (n + 1) * A268335 (n + 1)).toNat

end

end A379832.P3400748506866378313

namespace A379832

/-- `A384247(A268335(n+1)*A268335(n+1))` -/
def P3400748506866378313.Spec : Prop :=
  ∀ n, P3400748506866378313.a n = A379832 (n + 1)

end A379832

/-!
# A379833: The second Jordan totient function applied to the squares.

The programs for A379833, the canonical program `A379833.P6496859754452473676` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379833 has offset 1).

The definition of A379833 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A379833.P6496859754452473676

`A007434(A000290(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A379833

/-- `A007434(A000290(n+1))` -/
def P6496859754452473676.Spec : Prop :=
  ∀ n, P6496859754452473676.a n = A379833 (n + 1)

theorem P6496859754452473676.correct : P6496859754452473676.Spec := by
  intro n
  simp only [A379833, Nat.add_sub_cancel]

end A379833

/-! ## A379833.P11703729725937153123

`(n+1)*A000056(n+1)`
-/

namespace A379833.P11703729725937153123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000056 (n + 1)

end

end A379833.P11703729725937153123

namespace A379833

/-- `(n+1)*A000056(n+1)` -/
def P11703729725937153123.Spec : Prop :=
  ∀ n, P11703729725937153123.a n = A379833 (n + 1)

end A379833

/-! ## A379833.P7514059028076193467

`(n+1)²*Δ[A321879(n)]`
-/

namespace A379833.P7514059028076193467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A379833.P7514059028076193467

namespace A379833

/-- `(n+1)²*Δ[A321879(n)]` -/
def P7514059028076193467.Spec : Prop :=
  ∀ n, P7514059028076193467.a n = A379833 (n + 1)

end A379833

/-! ## A379833.P13208900911014484335

`(n+1)*(n+1)*A007434(n+1)`
-/

namespace A379833.P13208900911014484335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) * A007434 (n + 1))

end

end A379833.P13208900911014484335

namespace A379833

/-- `(n+1)*(n+1)*A007434(n+1)` -/
def P13208900911014484335.Spec : Prop :=
  ∀ n, P13208900911014484335.a n = A379833 (n + 1)

end A379833

/-! ## A379833.P8400305411604551171

`A000082(n+1)*A002618(n+1)`
-/

namespace A379833.P8400305411604551171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000082 (n + 1) * A002618 (n + 1)

end

end A379833.P8400305411604551171

namespace A379833

/-- `A000082(n+1)*A002618(n+1)` -/
def P8400305411604551171.Spec : Prop :=
  ∀ n, P8400305411604551171.a n = A379833 (n + 1)

end A379833

/-! ## A379833.P10857194669938178603

`A000010(n+1)*A033196(n+1)`
-/

namespace A379833.P10857194669938178603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A033196 (n + 1)

end

end A379833.P10857194669938178603

namespace A379833

/-- `A000010(n+1)*A033196(n+1)` -/
def P10857194669938178603.Spec : Prop :=
  ∀ n, P10857194669938178603.a n = A379833 (n + 1)

end A379833

/-! ## A379833.P8471197233492706061

`A001615(n+1)*A053191(n+1)`
-/

namespace A379833.P8471197233492706061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) * A053191 (n + 1)

end

end A379833.P8471197233492706061

namespace A379833

/-- `A001615(n+1)*A053191(n+1)` -/
def P8471197233492706061.Spec : Prop :=
  ∀ n, P8471197233492706061.a n = A379833 (n + 1)

end A379833

/-! ## A379833.P7411742734644145574

`A000056(n+1)²/A007434(n+1)`
-/

namespace A379833.P7411742734644145574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (n + 1) ^ 2 : ℚ) / (A007434 (n + 1) : ℚ)

end

end A379833.P7411742734644145574

namespace A379833

/-- `A000056(n+1)²/A007434(n+1)` -/
def P7411742734644145574.Spec : Prop :=
  ∀ n, P7411742734644145574.a n = (A379833 (n + 1) : ℚ)

end A379833

/-! ## A379833.P1535365934993602047

`(n+1)/A000010(n+1)*A000252(n+1)`
-/

namespace A379833.P1535365934993602047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000010 (n + 1) : ℚ) * (A000252 (n + 1) : ℚ)

end

end A379833.P1535365934993602047

namespace A379833

/-- `(n+1)/A000010(n+1)*A000252(n+1)` -/
def P1535365934993602047.Spec : Prop :=
  ∀ n, P1535365934993602047.a n = (A379833 (n + 1) : ℚ)

end A379833

/-! ## A379833.P6944270695770785065

`∑{d}[n+1, A001159(#)*A053822((n+1)/#)]`
-/

namespace A379833.P6944270695770785065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001159 d * A053822 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A379833.P6944270695770785065

namespace A379833

/-- `∑{d}[n+1, A001159(#)*A053822((n+1)/#)]` -/
def P6944270695770785065.Spec : Prop :=
  ∀ n, P6944270695770785065.a n = A379833 (n + 1)

end A379833

/-! ## A379833.P10907013741632574000

`∑{d}[n+1, A008683(#)*A084218((n+1)/#)]`
-/

namespace A379833.P10907013741632574000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A084218 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A379833.P10907013741632574000

namespace A379833

/-- `∑{d}[n+1, A008683(#)*A084218((n+1)/#)]` -/
def P10907013741632574000.Spec : Prop :=
  ∀ n, P10907013741632574000.a n = A379833 (n + 1)

end A379833

/-! ## A379833.P12101888289759533829

`∑{d}[n+1, A046970(#)*A059377((n+1)/#)]`
-/

namespace A379833.P12101888289759533829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046970 d * A059377 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A379833.P12101888289759533829

namespace A379833

/-- `∑{d}[n+1, A046970(#)*A059377((n+1)/#)]` -/
def P12101888289759533829.Spec : Prop :=
  ∀ n, P12101888289759533829.a n = A379833 (n + 1)

end A379833

/-! ## A379833.P10844062934371492930

`∑{d}[n+1, A053191(#)*A189393((n+1)/#)]`
-/

namespace A379833.P10844062934371492930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053191 d * A189393 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A379833.P10844062934371492930

namespace A379833

/-- `∑{d}[n+1, A053191(#)*A189393((n+1)/#)]` -/
def P10844062934371492930.Spec : Prop :=
  ∀ n, P10844062934371492930.a n = A379833 (n + 1)

end A379833

/-! ## A379833.P11651604229712530161

`∑{d}[n+1, A027848(#)*A328254((n+1)/#)]`
-/

namespace A379833.P11651604229712530161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A027848 d * A328254 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A379833.P11651604229712530161

namespace A379833

/-- `∑{d}[n+1, A027848(#)*A328254((n+1)/#)]` -/
def P11651604229712530161.Spec : Prop :=
  ∀ n, P11651604229712530161.a n = A379833 (n + 1)

end A379833

/-! ## A379833.P5304063467921089714

`∑{d}[n+1, A065960(#)*A328639((n+1)/#)]`
-/

namespace A379833.P5304063467921089714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065960 d * A328639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A379833.P5304063467921089714

namespace A379833

/-- `∑{d}[n+1, A065960(#)*A328639((n+1)/#)]` -/
def P5304063467921089714.Spec : Prop :=
  ∀ n, P5304063467921089714.a n = A379833 (n + 1)

end A379833

/-! ## A379833.P8564073537217007735

`∑{d}[n+1, A343498(#)*A351654((n+1)/#)]`
-/

namespace A379833.P8564073537217007735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A343498 d * A351654 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A379833.P8564073537217007735

namespace A379833

/-- `∑{d}[n+1, A343498(#)*A351654((n+1)/#)]` -/
def P8564073537217007735.Spec : Prop :=
  ∀ n, P8564073537217007735.a n = A379833 (n + 1)

end A379833

/-! ## A379833.P13037726867041753783

`∑{d}[n+1, A328502(#)*A372952((n+1)/#)]`
-/

namespace A379833.P13037726867041753783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328502 d * A372952 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A379833.P13037726867041753783

namespace A379833

/-- `∑{d}[n+1, A328502(#)*A372952((n+1)/#)]` -/
def P13037726867041753783.Spec : Prop :=
  ∀ n, P13037726867041753783.a n = A379833 (n + 1)

end A379833

/-! ## A379833.P2773621366623569498

`A000010(n+1)*(n+1)²*A001615(n+1)`
-/

namespace A379833.P2773621366623569498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * ((n + 1) ^ 2 : ℤ) * A001615 (n + 1)

end

end A379833.P2773621366623569498

namespace A379833

/-- `A000010(n+1)*(n+1)²*A001615(n+1)` -/
def P2773621366623569498.Spec : Prop :=
  ∀ n, P2773621366623569498.a n = A379833 (n + 1)

end A379833

/-! ## A379833.P16947305518218916615

`A002618(n+1)*A040001(n+1)*A070732(n+1)`
-/

namespace A379833.P16947305518218916615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (n + 1) * A040001 (n + 1) * A070732 (n + 1)

end

end A379833.P16947305518218916615

namespace A379833

/-- `A002618(n+1)*A040001(n+1)*A070732(n+1)` -/
def P16947305518218916615.Spec : Prop :=
  ∀ n, P16947305518218916615.a n = A379833 (n + 1)

end A379833

/-! ## A379833.P14482767534602038451

`A379716(A361936(n+1))`
-/

namespace A379833.P14482767534602038451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379716 (A361936 (n + 1)).toNat

end

end A379833.P14482767534602038451

namespace A379833

/-- `A379716(A361936(n+1))` -/
def P14482767534602038451.Spec : Prop :=
  ∀ n, P14482767534602038451.a n = A379833 (n + 1)

end A379833

/-!
# A379835: Number of 1's in binary expansion of Lucas(n).

The programs for A379835, the canonical program `A379835.P16096637972306843515` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379835 has offset 0).

The definition of A379835 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A379835.P16096637972306843515

`A000120(A000032(n))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A379835

/-- `A000120(A000032(n))` -/
def P16096637972306843515.Spec : Prop :=
  ∀ n, P16096637972306843515.a n = A379835 n

theorem P16096637972306843515.correct : P16096637972306843515.Spec := by
  intro n
  simp only [A379835]

end A379835

/-! ## A379835.P7690660914242441323

`∑{digits}[A287015(n), #]`
-/

namespace A379835.P7690660914242441323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287015 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A379835.P7690660914242441323

namespace A379835

/-- `∑{digits}[A287015(n), #]` -/
def P7690660914242441323.Spec : Prop :=
  ∀ n, (P7690660914242441323.a n : ℤ) = A379835 n

end A379835

/-! ## A379835.P4101141768389879273

`val(A001316(A169985(n)), 2)`
-/

namespace A379835.P4101141768389879273
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001316 (A169985 n).toNat).toNat 2

end

end A379835.P4101141768389879273

namespace A379835

/-- `val(A001316(A169985(n)), 2)` -/
def P4101141768389879273.Spec : Prop :=
  ∀ n, (P4101141768389879273.a n : ℤ) = A379835 n

end A379835

/-! ## A379835.P11217915121075470895

`A000120(round(ϕ^n))`
-/

namespace A379835.P11217915121075470895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway (Real.goldenRatio ^ n)).toNat

end

end A379835.P11217915121075470895

namespace A379835

/-- `A000120(round(ϕ^n))` -/
def P11217915121075470895.Spec : Prop :=
  ∀ n, P11217915121075470895.a n = A379835 n

end A379835

/-! ## A379835.P1844542868904475721

`A274009(xor(1, A000032(n)))`
-/

namespace A379835.P1844542868904475721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 (Int.xor 1 (A000032 n)).toNat

end

end A379835.P1844542868904475721

namespace A379835

/-- `A274009(xor(1, A000032(n)))` -/
def P1844542868904475721.Spec : Prop :=
  ∀ n, P1844542868904475721.a n = A379835 n

end A379835

/-!
# A379837: Triangle read by rows formed using Pascal's rule except that n-th row begins and ends with Fibonacci(n+3).

The programs for A379837, there is no canonical definition to state claims against.
-/

/-! ## A379837.P5056425085160632471

`A108617(lt[1, A007318(n)])`
-/

namespace A379837.P5056425085160632471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A379837.P5056425085160632471

/-! ## A379837.P11673463370875328930

`A108617(lt[1, A026780(n)])`
-/

namespace A379837.P11673463370875328930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A379837.P11673463370875328930

/-! ## A379837.P14961291638103608850

`A108617(lt[1, A052509(n)])`
-/

namespace A379837.P14961291638103608850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A379837.P14961291638103608850

/-! ## A379837.P5211873401263712625

`A108617(lt[1, A108625(n)])`
-/

namespace A379837.P5211873401263712625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A379837.P5211873401263712625

/-! ## A379837.P11410025123443553677

`A108617(lt[1, A129062(n)])`
-/

namespace A379837.P11410025123443553677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A379837.P11410025123443553677

/-! ## A379837.P15355862971748181943

`A108617(lt[1, A131767(n)])`
-/

namespace A379837.P15355862971748181943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A379837.P15355862971748181943

/-! ## A379837.P2262746971837399426

`A108617(lt[1, A134380(n)])`
-/

namespace A379837.P2262746971837399426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134380 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A379837.P2262746971837399426

/-! ## A379837.P13015158251127466272

`A108617(lt[1, A157151(n)])`
-/

namespace A379837.P13015158251127466272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A379837.P13015158251127466272

/-! ## A379837.P2289603162198470872

`A108617(lt[1, A157153(n)])`
-/

namespace A379837.P2289603162198470872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A379837.P2289603162198470872

/-! ## A379837.P4546639475283660635

`A316938(n)-A316939(n)`
-/

namespace A379837.P4546639475283660635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316938 n - A316939 n

end

end A379837.P4546639475283660635

/-!
# A379839: Numbers that are the sum + product of some multiset of positive integers > 1. Nonzeros of A379669.

The programs for A379839, there is no canonical definition to state claims against.
-/

/-! ## A379839.P18208466050145295641

`lt[0, A379669(n)]`
-/

namespace A379839.P18208466050145295641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379669 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A379839.P18208466050145295641

/-! ## A379839.P14473603331616468125

`comp[A379670(n+1)-1]+1`
-/

namespace A379839.P14473603331616468125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379670 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A379839.P14473603331616468125

/-! ## A379839.P3213082715304273929

`∪[A379841(n+1), A001520(n)]`
-/

namespace A379839.P3213082715304273929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001520 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A379839.P3213082715304273929

/-! ## A379839.P13638927225802609827

`∪[A001559(n), A379841(n+1)]`
-/

namespace A379839.P13638927225802609827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001559 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A379839.P13638927225802609827

/-! ## A379839.P4323220351044929188

`∪[A379841(n+1), A001849(n)]`
-/

namespace A379839.P4323220351044929188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001849 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A379839.P4323220351044929188

/-! ## A379839.P7812282027348057252

`∪[A379841(n+1), A005286(n)]`
-/

namespace A379839.P7812282027348057252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A379839.P7812282027348057252

/-! ## A379839.P17819913022421350136

`∪[A379841(n+1), A006857(n)]`
-/

namespace A379839.P17819913022421350136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006857 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A379839.P17819913022421350136

/-! ## A379839.P15504533579907207311

`∪[A379841(n+1), A010004(n)]`
-/

namespace A379839.P15504533579907207311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010004 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A379839.P15504533579907207311

/-! ## A379839.P16316793349476199963

`∪[A010905(n), A379841(n+1)]`
-/

namespace A379839.P16316793349476199963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010905 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A379839.P16316793349476199963

/-!
# A379840: Numbers that are the sum + product of a unique multiset of positive integers > 1.

The programs for A379840, there is no canonical definition to state claims against.
-/

/-! ## A379840.P13853346795123653585

`eq[1, A379669(n)]`
-/

namespace A379840.P13853346795123653585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379669 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379840.P13853346795123653585

/-!
# A379841: Numbers that are the sum + product of some set of positive integers > 1. Positions of nonzeros in A379679.

The programs for A379841, there is no canonical definition to state claims against.
-/

/-! ## A379841.P613781343751741412

`lt[0, A379679(n+1)]+1`
-/

namespace A379841.P613781343751741412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379679 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A379841.P613781343751741412

/-! ## A379841.P2284873795552671087

`comp[A379680(n+1)-1]+1`
-/

namespace A379841.P2284873795552671087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379680 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A379841.P2284873795552671087

/-! ## A379841.P7053307115043428195

`lt[char[A140637(n+1)], A379669(n)]`
-/

namespace A379841.P7053307115043428195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140637 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379669 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A379841.P7053307115043428195

/-! ## A379841.P3124691740172680921

`lt[char[A379680(n+1)], A071625(n+1)]`
-/

namespace A379841.P3124691740172680921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379680 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A379841.P3124691740172680921

/-! ## A379841.P14305886113703099819

`lt[char[A000110(2*(n+1))], A379669(n)]`
-/

namespace A379841.P14305886113703099819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379669 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A379841.P14305886113703099819

/-! ## A379841.P10742381946033443155

`eq[char[A379680(n+1)], A014197(2*n+1)]`
-/

namespace A379841.P10742381946033443155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379680 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A379841.P10742381946033443155

/-! ## A379841.P648460225625824824

`lt[A000038(n), A379679(A028310(n))]`
-/

namespace A379841.P648460225625824824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379679 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A379841.P648460225625824824

/-! ## A379841.P2494266942347115254

`lt[A010054(A046306(n+1)), A379669(n)]`
-/

namespace A379841.P2494266942347115254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A046306 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379669 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A379841.P2494266942347115254

/-! ## A379841.P18361701081214427633

`lt[A379669(A372603(n+1)), A379669(n)]`
-/

namespace A379841.P18361701081214427633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379669 (A372603 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379669 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A379841.P18361701081214427633

/-!
# A379842: Numbers that are the sum + product of a unique set of positive integers > 1. Positions of 1 in A379679.

The programs for A379842, there is no canonical definition to state claims against.
-/

/-! ## A379842.P9302439045526767966

`eq[1, A379679(n+1)]+1`
-/

namespace A379842.P9302439045526767966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379679 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A379842.P9302439045526767966

/-! ## A379842.P3180582273198127889

`eq[A057427(n), A379679(A028310(n))]`
-/

namespace A379842.P3180582273198127889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379679 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A379842.P3180582273198127889

/-! ## A379842.P12721037277539363409

`eq[A043529(A240850(2*(n+1))), A051903(n+1)]`
-/

namespace A379842.P12721037277539363409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 (A240850 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A379842.P12721037277539363409

/-!
# A379844: Squarefree numbers x such that the product of prime indices of x is a multiple of the sum of prime indices of x.

The programs for A379844, there is no canonical definition to state claims against.
-/

/-! ## A379844.P6159338440119063231

`record[A007913(A326149(n+1))]`
-/

namespace A379844.P6159338440119063231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A326149 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379844.P6159338440119063231

/-! ## A379844.P9119477382285512005

`filter[A326149(n+1), A008966(#)]`
-/

namespace A379844.P9119477382285512005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A379844.P9119477382285512005

/-! ## A379844.P14297111748119686455

`filter[A326149(n+1), A323154(#)]`
-/

namespace A379844.P14297111748119686455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A379844.P14297111748119686455

/-! ## A379844.P11333743529388719011

`filter[A326149(n+1), A353559(#)]`
-/

namespace A379844.P11333743529388719011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A379844.P11333743529388719011

/-! ## A379844.P12532620781668520346

`record[A007947(A326149(n+1)²)]`
-/

namespace A379844.P12532620781668520346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A326149 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379844.P12532620781668520346

/-! ## A379844.P5593900016613740544

`∪[A326158(n+1), Δ[A007504(n)]]`
-/

namespace A379844.P5593900016613740544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326158 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A379844.P5593900016613740544

/-! ## A379844.P17823256489255876685

`∩[A005117(n+1), A326149(n+1)]`
-/

namespace A379844.P17823256489255876685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379844.P17823256489255876685

/-! ## A379844.P12068305106401960791

`∩[A064594(n+1), A326149(n+1)]`
-/

namespace A379844.P12068305106401960791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379844.P12068305106401960791

/-! ## A379844.P9732916231754893727

`∩[A143719(n+1), A326149(n+1)]`
-/

namespace A379844.P9732916231754893727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379844.P9732916231754893727

/-! ## A379844.P17693715312400405243

`∩[A144338(n+1), A326149(n+1)]`
-/

namespace A379844.P17693715312400405243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379844.P17693715312400405243

/-!
# A379845: Even squarefree numbers x such that the product of prime indices of x is a multiple of the sum of prime indices of x.

The programs for A379845, there is no canonical definition to state claims against.
-/

/-! ## A379845.P9160032910445397794

`∩[A039956(n+1), A326149(n+1)]`
-/

namespace A379845.P9160032910445397794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379845.P9160032910445397794

/-! ## A379845.P7496062346817294420

`record[A007913(A379319(n+1))]`
-/

namespace A379845.P7496062346817294420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A379319 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379845.P7496062346817294420

/-! ## A379845.P13874261901294897194

`filter[A379319(n+1), A008966(#)]`
-/

namespace A379845.P13874261901294897194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A379845.P13874261901294897194

/-! ## A379845.P11425426205198628738

`filter[A379319(n+1), A323154(#)]`
-/

namespace A379845.P11425426205198628738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A379845.P11425426205198628738

/-! ## A379845.P260409913550875654

`filter[A379319(n+1), A379966(#)]`
-/

namespace A379845.P260409913550875654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379966 (f1 j).toNat = 1) n)

end

end A379845.P260409913550875654

/-!
# A379846: Expansion of e.g.f. (1/x) * Series_Reversion( x * exp(-x) / (1 + x*exp(2*x)) ).

The programs for A379846, there is no canonical definition to state claims against.
-/

/-! ## A379846.P9351853358151914822

`floor(A065027(A000108(n)*A002110(n))/2)`
-/

namespace A379846.P9351853358151914822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A065027 (A000108 n * A002110 n).toNat : ℚ) / 2⌋

end

end A379846.P9351853358151914822

/-!
# A379847: Expansion of e.g.f. (1/x) * Series_Reversion( x * exp(-x) / (1 + x*exp(3*x)) ).

The programs for A379847, there is no canonical definition to state claims against.
-/

/-! ## A379847.P9501057026942548540

`A099714(n)+A056169(A099703(n))`
-/

namespace A379847.P9501057026942548540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099714 n + A056169 (A099703 n).toNat

end

end A379847.P9501057026942548540

/-!
# A379849: Taxicab numbers that are deficient.

The programs for A379849, there is no canonical definition to state claims against.
-/

/-! ## A379849.P14250848063764367775

`A001235(A299806(2*n+1)^A278112(2*n+1))`
-/

namespace A379849.P14250848063764367775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001235 (SequenceMachineLib.roundAway ((A299806 (2 * n + 1) : ℚ) ^ (A278112 (2 * n + 1) : ℤ))).toNat

end

end A379849.P14250848063764367775

/-!
# A379851: Numbers k such that phi(k) does not divide k. Complement of A007694.

The programs for A379851, the canonical program `A379851.P2408517926029222728` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379851 has offset 1).

The definition of A379851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379851.P2408517926029222728

`lt[2, A332881(n+1)]+1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A379851

/-- `lt[2, A332881(n+1)]+1` -/
def P2408517926029222728.Spec : Prop :=
  ∀ n, (P2408517926029222728.a n : ℤ) = A379851 (n + 1)

theorem P2408517926029222728.correct : P2408517926029222728.Spec := by
  intro n
  simp only [A379851, Nat.add_sub_cancel]

end A379851

/-! ## A379851.P13717095932663230956

`∪[A059485(n+1), A016945(n)]`
-/

namespace A379851.P13717095932663230956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A379851.P13717095932663230956

namespace A379851

/-- `∪[A059485(n+1), A016945(n)]` -/
def P13717095932663230956.Spec : Prop :=
  ∀ n, (P13717095932663230956.a n : ℤ) = A379851 (n + 1)

end A379851

/-! ## A379851.P15587148871166335312

`∪[A005818(n+1), A059485(n+1)]`
-/

namespace A379851.P15587148871166335312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A379851.P15587148871166335312

namespace A379851

/-- `∪[A005818(n+1), A059485(n+1)]` -/
def P15587148871166335312.Spec : Prop :=
  ∀ n, (P15587148871166335312.a n : ℤ) = A379851 (n + 1)

end A379851

/-! ## A379851.P15439589464133952050

`∪[A007617(n+1), A059485(n+1)]`
-/

namespace A379851.P15439589464133952050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A379851.P15439589464133952050

namespace A379851

/-- `∪[A007617(n+1), A059485(n+1)]` -/
def P15439589464133952050.Spec : Prop :=
  ∀ n, (P15439589464133952050.a n : ℤ) = A379851 (n + 1)

end A379851

/-! ## A379851.P6143610434667518131

`∪[A081062(n+1), A007617(n+1)]`
-/

namespace A379851.P6143610434667518131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A379851.P6143610434667518131

namespace A379851

/-- `∪[A081062(n+1), A007617(n+1)]` -/
def P6143610434667518131.Spec : Prop :=
  ∀ n, (P6143610434667518131.a n : ℤ) = A379851 (n + 1)

end A379851

/-! ## A379851.P2386975215770801886

`∪[A251727(n+1), A007617(n+1)]`
-/

namespace A379851.P2386975215770801886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A379851.P2386975215770801886

namespace A379851

/-- `∪[A251727(n+1), A007617(n+1)]` -/
def P2386975215770801886.Spec : Prop :=
  ∀ n, (P2386975215770801886.a n : ℤ) = A379851 (n + 1)

end A379851

/-! ## A379851.P5206870384535979767

`∪[A214547(n+1), A059485(n+1)]`
-/

namespace A379851.P5206870384535979767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A379851.P5206870384535979767

namespace A379851

/-- `∪[A214547(n+1), A059485(n+1)]` -/
def P5206870384535979767.Spec : Prop :=
  ∀ n, (P5206870384535979767.a n : ℤ) = A379851 (n + 1)

end A379851

/-! ## A379851.P13241344578313534902

`∪[A225563(n+1), A059485(n+1)]`
-/

namespace A379851.P13241344578313534902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225563 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A379851.P13241344578313534902

namespace A379851

/-- `∪[A225563(n+1), A059485(n+1)]` -/
def P13241344578313534902.Spec : Prop :=
  ∀ n, (P13241344578313534902.a n : ℤ) = A379851 (n + 1)

end A379851

/-! ## A379851.P1899712324563056685

`record[A378641(n+3)]`
-/

namespace A379851.P1899712324563056685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378641 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379851.P1899712324563056685

namespace A379851

/-- `record[A378641(n+3)]` -/
def P1899712324563056685.Spec : Prop :=
  ∀ n, P1899712324563056685.a n = A379851 (n + 1)

end A379851

/-! ## A379851.P6468379241089208481

`lt[1, ∏{p}[n, log(#)]]`
-/

namespace A379851.P6468379241089208481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Real.log (p : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A379851.P6468379241089208481

namespace A379851

/-- `lt[1, ∏{p}[n, log(#)]]` -/
def P6468379241089208481.Spec : Prop :=
  ∀ n, (P6468379241089208481.a n : ℤ) = A379851 (n + 1)

end A379851

/-! ## A379851.P755164410300477917

`lt[3, ∑{p}[n, #²-5]]`
-/

namespace A379851.P755164410300477917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), ((p ^ 2 : ℤ) - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A379851.P755164410300477917

namespace A379851

/-- `lt[3, ∑{p}[n, #²-5]]` -/
def P755164410300477917.Spec : Prop :=
  ∀ n, (P755164410300477917.a n : ℤ) = A379851 (n + 1)

end A379851

/-! ## A379851.P9693600826061581405

`lt[∏{p}[n, ϕ²/#], 1]`
-/

namespace A379851.P9693600826061581405
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Real.goldenRatio ^ 2 / (p : ℝ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A379851.P9693600826061581405

namespace A379851

/-- `lt[∏{p}[n, ϕ²/#], 1]` -/
def P9693600826061581405.Spec : Prop :=
  ∀ n, (P9693600826061581405.a n : ℤ) = A379851 (n + 1)

end A379851

/-! ## A379851.P5290552943019389455

`∪[A080259(n+1), A297466(n)]`
-/

namespace A379851.P5290552943019389455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297466 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A379851.P5290552943019389455

namespace A379851

/-- `∪[A080259(n+1), A297466(n)]` -/
def P5290552943019389455.Spec : Prop :=
  ∀ n, (P5290552943019389455.a n : ℤ) = A379851 (n + 1)

end A379851

/-! ## A379851.P13647059037625173336

`∪[A080259(n+1), A120686(n)]`
-/

namespace A379851.P13647059037625173336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120686 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A379851.P13647059037625173336

namespace A379851

/-- `∪[A080259(n+1), A120686(n)]` -/
def P13647059037625173336.Spec : Prop :=
  ∀ n, (P13647059037625173336.a n : ℤ) = A379851 (n + 1)

end A379851

/-! ## A379851.P5833683029411660928

`lt[1, A254048(n²)]`
-/

namespace A379851.P5833683029411660928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254048 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A379851.P5833683029411660928

namespace A379851

/-- `lt[1, A254048(n²)]` -/
def P5833683029411660928.Spec : Prop :=
  ∀ n, (P5833683029411660928.a n : ℤ) = A379851 (n + 1)

end A379851

/-!
# A379852: a(n) = floor(8*n^3/27).

The programs for A379852, the canonical program `A379852.P10342932365070926377` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379852 has offset 0).

The definition of A379852 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(8*n^3/27)` (program `A379852.P10342932365070926377`, by `A379852.P10342932365070926377.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A379852.P10342932365070926377

`floor(8*n^3/27)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A379852

/-- `floor(8*n^3/27)` -/
def P10342932365070926377.Spec : Prop :=
  ∀ n, P10342932365070926377.a n = A379852 n

theorem P10342932365070926377.correct : P10342932365070926377.Spec := by
  intro n
  simp only [A379852]

end A379852

/-! ## A379852.P15853215873839882796

`A002264(A002264(A002264(A000578(2*n))))`
-/

namespace A379852.P15853215873839882796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A002264 (A002264 (A000578 (2 * n)).toNat).toNat).toNat

end

end A379852.P15853215873839882796

namespace A379852

/-- `A002264(A002264(A002264(A000578(2*n))))` -/
def P15853215873839882796.Spec : Prop :=
  ∀ n, P15853215873839882796.a n = A379852 n

end A379852

/-!
# A379853: Decimal expansion of the fraction of a population falling beyond +- 1 standard deviation of the mean, assuming a normal distribution.

The programs for A379853, there is no canonical definition to state claims against.
-/

/-! ## A379853.P4366037950669533804

`9-A178647(n)`
-/

namespace A379853.P4366037950669533804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A178647 n

end

end A379853.P4366037950669533804

/-!
# A379857: Number of values of k for which n can be written as a sum of k distinct positive squares.

The programs for A379857, there is no canonical definition to state claims against.
-/

/-! ## A379857.P8690791650447950669

`A302243(A033461(n)^A069733(3*n+1))`
-/

namespace A379857.P8690791650447950669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302243 (SequenceMachineLib.roundAway ((A033461 n : ℚ) ^ (A069733 (3 * n + 1) : ℤ))).toNat

end

end A379857.P8690791650447950669

/-!
# A379858: E.g.f. A(x) satisfies A(x) = exp(-x*A(x)^3) + x.

The programs for A379858, there is no canonical definition to state claims against.
-/

/-! ## A379858.P991611343450021609

`A261962(n)-A274101(A056265(n+1))`
-/

namespace A379858.P991611343450021609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261962 n - A274101 (A056265 (n + 1)).toNat

end

end A379858.P991611343450021609

/-!
# A379859: Expansion of e.g.f. (1/x) * Series_Reversion( x * exp(x) * (1 - x*exp(x))^2 ).

The programs for A379859, there is no canonical definition to state claims against.
-/

/-! ## A379859.P12568565366685601621

`A060831(A317666(n)-A079777(n))`
-/

namespace A379859.P12568565366685601621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 (A317666 n - A079777 n).toNat

end

end A379859.P12568565366685601621

/-!
# A379860: Expansion of e.g.f. (1/x) * Series_Reversion( x * exp(-x) * (1 - x*exp(x))^2 ).

The programs for A379860, there is no canonical definition to state claims against.
-/

/-! ## A379860.P13830700850710833541

`A380690(A000272(n))+A380666(n)`
-/

namespace A379860.P13830700850710833541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380690 (A000272 n).toNat + A380666 n

end

end A379860.P13830700850710833541

/-!
# A379861: Expansion of e.g.f. (1/x) * Series_Reversion( x * exp(x)/(1 + x*exp(x))^2 ).

The programs for A379861, there is no canonical definition to state claims against.
-/

/-! ## A379861.P5858108384277083165

`or(Δ[A383337(n)], A295316(n+1))`
-/

namespace A379861.P5858108384277083165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383337 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A295316 (n + 1))

end

end A379861.P5858108384277083165

/-!
# A379865: Number of base 10 digits of 2^(p-1)*(2^p-1) where p = prime(n).

The programs for A379865, the canonical program `A379865.P7694616822125640737` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379865 has offset 1).

The definition of A379865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379865.P7694616822125640737

`A192543(A100484(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A379865

/-- `A192543(A100484(n+1))` -/
def P7694616822125640737.Spec : Prop :=
  ∀ n, P7694616822125640737.a n = A379865 (n + 1)

theorem P7694616822125640737.correct : P7694616822125640737.Spec := by
  intro n
  simp only [A379865, Nat.add_sub_cancel]

end A379865

/-! ## A379865.P13144086376334702953

`A034887(A076274(n+2))`
-/

namespace A379865.P13144086376334702953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A076274 (n + 2)).toNat

end

end A379865.P13144086376334702953

namespace A379865

/-- `A034887(A076274(n+2))` -/
def P13144086376334702953.Spec : Prop :=
  ∀ n, P13144086376334702953.a n = A379865 (n + 1)

end A379865

/-! ## A379865.P11805973221756580377

`A192543(A001747(n+2))`
-/

namespace A379865.P11805973221756580377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192543 (A001747 (n + 2)).toNat

end

end A379865.P11805973221756580377

namespace A379865

/-- `A192543(A001747(n+2))` -/
def P11805973221756580377.Spec : Prop :=
  ∀ n, P11805973221756580377.a n = A379865 (n + 1)

end A379865

/-! ## A379865.P11378370919771722291

`A192543(A077017(n+2))`
-/

namespace A379865.P11378370919771722291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192543 (A077017 (n + 2)).toNat

end

end A379865.P11378370919771722291

namespace A379865

/-- `A192543(A077017(n+2))` -/
def P11378370919771722291.Spec : Prop :=
  ∀ n, P11378370919771722291.a n = A379865 (n + 1)

end A379865

/-! ## A379865.P14495930679759420305

`A192543(2*A000040(n+1))`
-/

namespace A379865.P14495930679759420305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192543 (2 * A000040 (n + 1)).toNat

end

end A379865.P14495930679759420305

namespace A379865

/-- `A192543(2*A000040(n+1))` -/
def P14495930679759420305.Spec : Prop :=
  ∀ n, P14495930679759420305.a n = A379865 (n + 1)

end A379865

/-! ## A379865.P15991298744327291044

`A034887(A006093(n+1)+A000040(n+1))`
-/

namespace A379865.P15991298744327291044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A006093 (n + 1) + A000040 (n + 1)).toNat

end

end A379865.P15991298744327291044

namespace A379865

/-- `A034887(A006093(n+1)+A000040(n+1))` -/
def P15991298744327291044.Spec : Prop :=
  ∀ n, P15991298744327291044.a n = A379865 (n + 1)

end A379865

/-! ## A379865.P2544722904756241065

`A192543(A339114(n+2))`
-/

namespace A379865.P2544722904756241065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192543 (A339114 (n + 2)).toNat

end

end A379865.P2544722904756241065

namespace A379865

/-- `A192543(A339114(n+2))` -/
def P2544722904756241065.Spec : Prop :=
  ∀ n, P2544722904756241065.a n = A379865 (n + 1)

end A379865

/-!
# A379872: Numbers k that are the product of the lower half of their nontrivial divisors.

The programs for A379872, there is no canonical definition to state claims against.
-/

/-! ## A379872.P4913548279909567021

`eq[n+1, A072499(n+1)]+1`
-/

namespace A379872.P4913548279909567021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072499 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A379872.P4913548279909567021

/-! ## A379872.P5425690277599852647

`eq[n, A072499(A028310(n))]`
-/

namespace A379872.P5425690277599852647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072499 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379872.P5425690277599852647

/-! ## A379872.P7458646426388551393

`eq[A000578(n), A072500(A028310(n))]`
-/

namespace A379872.P7458646426388551393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072500 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A379872.P7458646426388551393

/-!
# A379873: Nonnegative values in A377091, in order of appearance and with offset 0.

The programs for A379873, there is no canonical definition to state claims against.
-/

/-! ## A379873.P16045102410310775150

`A377091(A379072(n+1))`
-/

namespace A379873.P16045102410310775150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 (A379072 (n + 1)).toNat

end

end A379873.P16045102410310775150

/-! ## A379873.P8766213893718894428

`A377091(lt[-1, A377091(n)])`
-/

namespace A379873.P8766213893718894428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A379873.P8766213893718894428

/-! ## A379873.P915801519419495522

`A379070(A379072(2*n+1-n))`
-/

namespace A379873.P915801519419495522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379070 (A379072 (2 * n + 1 - n)).toNat

end

end A379873.P915801519419495522

/-! ## A379873.P14412866014238402188

`A377091(eq[A377091(n), A379070(n)])`
-/

namespace A379873.P14412866014238402188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A379873.P14412866014238402188

/-! ## A379873.P4421665499282830550

`A379070(lcm(A106400(n+4), A379072(n+1)))`
-/

namespace A379873.P4421665499282830550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379070 (Int.lcm (A106400 (n + 4)) (A379072 (n + 1)))

end

end A379873.P4421665499282830550

/-! ## A379873.P8907838955929234459

`A377091(comp[A379060(n+1)])`
-/

namespace A379873.P8907838955929234459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379060 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A379873.P8907838955929234459

/-! ## A379873.P6399929919305172719

`A379070(comp[A379060(n+1)])`
-/

namespace A379873.P6399929919305172719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379060 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379070 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A379873.P6399929919305172719

/-!
# A379874: Nonpositive values in A377091, negated, in order of appearance and with offset 0.

The programs for A379874, there is no canonical definition to state claims against.
-/

/-! ## A379874.P16271188845740969624

`A379070(A379073(n+1))`
-/

namespace A379874.P16271188845740969624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379070 (A379073 (n + 1)).toNat

end

end A379874.P16271188845740969624

/-! ## A379874.P3572399467056956929

`A379070(lt[A377091(n), 1])`
-/

namespace A379874.P3572399467056956929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379070 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A379874.P3572399467056956929

/-! ## A379874.P2778400861508346312

`A379070(comp[A379072(n+2)])`
-/

namespace A379874.P2778400861508346312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379072 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379070 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A379874.P2778400861508346312

/-! ## A379874.P15036165901995113723

`A000007(n+2)-A377091(A379073(n+1))`
-/

namespace A379874.P15036165901995113723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 2) - A377091 (A379073 (n + 1)).toNat

end

end A379874.P15036165901995113723

/-! ## A379874.P17886727883038239181

`lcm(A106400(n+4), A377091(A379073(n+1)))`
-/

namespace A379874.P17886727883038239181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106400 (n + 4)) (A377091 (A379073 (n + 1)).toNat)

end

end A379874.P17886727883038239181

/-! ## A379874.P17290397603997236185

`A185015(3*n)-A377091(A379073(n+1))`
-/

namespace A379874.P17290397603997236185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185015 (3 * n) - A377091 (A379073 (n + 1)).toNat

end

end A379874.P17290397603997236185

/-!
# A379877: E.g.f. A(x) satisfies A(x) = exp(-x*A(x)^2) + x*A(x)^3.

The programs for A379877, there is no canonical definition to state claims against.
-/

/-! ## A379877.P17016312079760929628

`∑[A145300(a(n-1)+2*n-1)]` with `a(0)=1, a(1)=-1, a(2)=1, a(3)=1`
-/

namespace A379877.P17016312079760929628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1, 1] fun n f1 =>
  A145300 (f1 (n - 1) + (2 * n : ℤ) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379877.P17016312079760929628

/-! ## A379877.P7455262165196842054

`((n-2)*A000035(A015564(n)))^5+1`
-/

namespace A379877.P7455262165196842054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 2) * A000035 (A015564 n).toNat) ^ 5 + 1

end

end A379877.P7455262165196842054

/-!
# A379878: E.g.f. A(x) satisfies A(x) = exp(-x) + x*A(x)^3.

The programs for A379878, there is no canonical definition to state claims against.
-/

/-! ## A379878.P6940600556768678320

`A380009(A241892(n))+A264442(n)`
-/

namespace A379878.P6940600556768678320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380009 (A241892 n).toNat + A264442 n

end

end A379878.P6940600556768678320

/-! ## A379878.P10951765066478247033

`A380009(or(A241892(n), A264442(n)))`
-/

namespace A379878.P10951765066478247033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380009 (Int.lor (A241892 n) (A264442 n)).toNat

end

end A379878.P10951765066478247033

/-!
# A379879: E.g.f. A(x) satisfies A(x) = exp(-x) + x*A(x)^2.

The programs for A379879, there is no canonical definition to state claims against.
-/

/-! ## A379879.P652436552400748631

`A317079(n)-A184198(3*(n+1))`
-/

namespace A379879.P652436552400748631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317079 n - A184198 (3 * (n + 1))

end

end A379879.P652436552400748631

/-! ## A379879.P11240080056969413353

`A317079(n)-A056239(A052542(n))`
-/

namespace A379879.P11240080056969413353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317079 n - A056239 (A052542 n).toNat

end

end A379879.P11240080056969413353

/-!
# A379881: Prime numbers of the form 8*x^2 + 27*y^2 where x and y are positive integers.

The programs for A379881, there is no canonical definition to state claims against.
-/

/-! ## A379881.P12723778753654051456

`∩[A107161(n+1), A332446(n+1)]`
-/

namespace A379881.P12723778753654051456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379881.P12723778753654051456

/-! ## A379881.P4537328688918839159

`∩[A107007(n+1), A107161(n+1)]`
-/

namespace A379881.P4537328688918839159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379881.P4537328688918839159

/-! ## A379881.P16802689126487951708

`∩[A107161(n+1), A168539(n+1)]`
-/

namespace A379881.P16802689126487951708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379881.P16802689126487951708

/-! ## A379881.P116416725347174203

`∩[A068231(n+1), A107161(n+1)]`
-/

namespace A379881.P116416725347174203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379881.P116416725347174203

/-! ## A379881.P17084823575237905752

`∩[A107161(n+1), A141187(n+1)]`
-/

namespace A379881.P17084823575237905752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379881.P17084823575237905752

/-! ## A379881.P9069753677302873522

`∩[A007520(n+1), A107161(n+1)]`
-/

namespace A379881.P9069753677302873522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379881.P9069753677302873522

/-! ## A379881.P3605234689604873406

`∩[A107161(n+1), A163183(n+1)]`
-/

namespace A379881.P3605234689604873406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379881.P3605234689604873406

/-! ## A379881.P16815412532745322055

`∩[A107161(n+1), A192717(n+1)]`
-/

namespace A379881.P16815412532745322055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379881.P16815412532745322055

/-! ## A379881.P3226149448258421410

`∩[A107161(n+1), A332516(n+1)]`
-/

namespace A379881.P3226149448258421410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379881.P3226149448258421410

/-! ## A379881.P7579620106755377939

`∩[A107161(n+1), A348845(n)]`
-/

namespace A379881.P7579620106755377939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348845 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379881.P7579620106755377939

/-! ## A379881.P2610914466008400995

`∩[A097933(n+1), A107161(n+1)]`
-/

namespace A379881.P2610914466008400995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379881.P2610914466008400995

/-! ## A379881.P17991217262585479906

`∩[A107161(n+1), A296933(n+1)]`
-/

namespace A379881.P17991217262585479906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379881.P17991217262585479906

/-! ## A379881.P17781487702571202763

`∩[A033200(n+1), A107161(n+1)]`
-/

namespace A379881.P17781487702571202763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379881.P17781487702571202763

/-! ## A379881.P17708474057537224493

`∩[A002145(n+1), A107161(n+1)]`
-/

namespace A379881.P17708474057537224493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379881.P17708474057537224493

/-! ## A379881.P13778522140650456492

`∩[A085760(n+1), A107161(n+1)]`
-/

namespace A379881.P13778522140650456492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379881.P13778522140650456492

/-! ## A379881.P2126557962433413579

`∩[A038877(n+1), A107161(n+1)]`
-/

namespace A379881.P2126557962433413579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379881.P2126557962433413579

/-! ## A379881.P12171093434969488384

`∩[A107161(n+1), A197504(n+1)]`
-/

namespace A379881.P12171093434969488384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379881.P12171093434969488384

/-! ## A379881.P15671517923133786029

`∩[A107161(n+1), A365082(n+1)]`
-/

namespace A379881.P15671517923133786029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379881.P15671517923133786029

/-! ## A379881.P2242451969649143242

`∩[A107161(n+1), A365313(n+1)]`
-/

namespace A379881.P2242451969649143242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379881.P2242451969649143242

/-! ## A379881.P1160981799785239809

`∩[A107161(n+1), A292762(n+1)]`
-/

namespace A379881.P1160981799785239809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379881.P1160981799785239809

/-!
# A379882: a(n) is the length of the n-th maximal run of consecutive terms of A377091 with the same sign.

The programs for A379882, there is no canonical definition to state claims against.
-/

/-! ## A379882.P11118194670872323032

`A380588(n+1)+A057427(A015723(n+1))`
-/

namespace A379882.P11118194670872323032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380588 (n + 1) + A057427 (A015723 (n + 1)).toNat

end

end A379882.P11118194670872323032

/-! ## A379882.P2975726823755696478

`A380588(n+1)+A067029(A133959(n+1))`
-/

namespace A379882.P2975726823755696478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380588 (n + 1) + A067029 (A133959 (n + 1)).toNat

end

end A379882.P2975726823755696478

/-! ## A379882.P6401185530635350943

`A380588(n+1)+A380586(A373815(n+1))`
-/

namespace A379882.P6401185530635350943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380588 (n + 1) + A380586 (A373815 (n + 1)).toNat

end

end A379882.P6401185530635350943

/-! ## A379882.P16098944078982427565

`A380588(n+1)+A380584(A380579(2*n+5))`
-/

namespace A379882.P16098944078982427565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380588 (n + 1) + A380584 (A380579 (2 * n + 5)).toNat

end

end A379882.P16098944078982427565

/-! ## A379882.P12827903524230977029

`A380588(n+1)%A163892(n)+1`
-/

namespace A379882.P12827903524230977029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A380588 (n + 1)) (A163892 n) + 1

end

end A379882.P12827903524230977029

/-!
# A379883: a(1) = 1. Let j = a(n-1) and r = A046144(j). Then for n > 1, if j is novel and r > 0, a(n) = r. If j is novel and r = 0 then a(n) = 1. If j has occurred k (>1) times already then a(n) = k*j.

The programs for A379883, there is no canonical definition to state claims against.
-/

/-! ## A379883.P11610552345042309657

`A353960(n+1)-A025456(A122536(n+1))`
-/

namespace A379883.P11610552345042309657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353960 (n + 1) - A025456 (A122536 (n + 1)).toNat

end

end A379883.P11610552345042309657

/-!
# A379884: E.g.f. A(x) satisfies A(x) = 1/(exp(-x*A(x)^2) - x).

The programs for A379884, there is no canonical definition to state claims against.
-/

/-! ## A379884.P12823087698168461093

`A244129(n+1)+A003601(A045755(n))`
-/

namespace A379884.P12823087698168461093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244129 (n + 1) + A003601 (A045755 n).toNat

end

end A379884.P12823087698168461093

/-!
# A379885: E.g.f. A(x) satisfies A(x) = 1/(exp(-x) - x*A(x)).

The programs for A379885, there is no canonical definition to state claims against.
-/

/-! ## A379885.P12059469170792716102

`A332063(A192801(n))`
-/

namespace A379885.P12059469170792716102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332063 (A192801 n).toNat

end

end A379885.P12059469170792716102

/-!
# A379893: Triangle read by rows: T(n,k) is the number of standard Young tableaux with shapes in {lambda = (lambda_1,lambda_2,...) | lambda_1-lambda_2=k, lambda_i<=1 for i>=3, |lambda| = n}, n >= 0 and 0 <= k <= n.

The programs for A379893, there is no canonical definition to state claims against.
-/

/-! ## A379893.P15068720948050081214

`A384582(A176129(A292860(n+1))+n)`
-/

namespace A379893.P15068720948050081214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384582 (A176129 (A292860 (n + 1)).toNat + (n : ℤ)).toNat

end

end A379893.P15068720948050081214

/-! ## A379893.P15910385387958590745

`A355246(A349454(n))`
-/

namespace A379893.P15910385387958590745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355246 (A349454 n).toNat

end

end A379893.P15910385387958590745

/-! ## A379893.P6395827839726517123

`A394093(A114656(n+2))`
-/

namespace A379893.P6395827839726517123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394093 (A114656 (n + 2)).toNat

end

end A379893.P6395827839726517123

/-! ## A379893.P16280036070302656311

`A337930(A221693(n+2))`
-/

namespace A379893.P16280036070302656311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337930 (A221693 (n + 2)).toNat

end

end A379893.P16280036070302656311

/-! ## A379893.P1129195685495685353

`A251139(2^A008290(n))`
-/

namespace A379893.P1129195685495685353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251139 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A008290 n : ℤ))).toNat

end

end A379893.P1129195685495685353

