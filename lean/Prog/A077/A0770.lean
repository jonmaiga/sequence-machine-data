import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A077000: a(n) = Fibonacci index of A076999(n).

The programs for A077000, there is no canonical definition to state claims against.
-/

/-! ## A077000.P14764851707426292109

`A259361(∑[A014681(A016431(n))])`
-/

namespace A077000.P14764851707426292109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A016431 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A077000.P14764851707426292109

/-! ## A077000.P11042749991948924006

`A003056(A008620(∑[A195145(n)]))`
-/

namespace A077000.P11042749991948924006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A008620 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A077000.P11042749991948924006

/-! ## A077000.P1184373383964961347

`ceil(log(A336606(n)+log(2)))`
-/

namespace A077000.P1184373383964961347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log ((A336606 n : ℝ) + Real.log (2 : ℝ))⌉

end

end A077000.P1184373383964961347

/-! ## A077000.P12705186662646748902

`char[50*n]+∑[A287272(A311553(n))]`
-/

namespace A077000.P12705186662646748902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  50 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (A311553 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A077000.P12705186662646748902

/-! ## A077000.P13635134907362432437

`∑[A258198(A128128(n))]-A258198(n)`
-/

namespace A077000.P13635134907362432437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258198 (A128128 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A258198 n

end

end A077000.P13635134907362432437

/-!
# A077001: a(1) = 1, a(n+1) is the largest squarefree number <= n*a(n).

The programs for A077001, there is no canonical definition to state claims against.
-/

/-! ## A077001.P7739988535848705313

`A070321(n*a(n-1))` with `a(0)=2`
-/

namespace A077001.P7739988535848705313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A070321 ((n : ℤ) * a (n - 1)).toNat

end

end A077001.P7739988535848705313

/-! ## A077001.P10514028143127888361

`A285719(n*a(n-1)+1)` with `a(0)=2`
-/

namespace A077001.P10514028143127888361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A285719 ((n : ℤ) * a (n - 1) + 1).toNat

end

end A077001.P10514028143127888361

/-! ## A077001.P16679199338776515987

`A046100(A052399(n)+1)`
-/

namespace A077001.P16679199338776515987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (A052399 n + 1).toNat

end

end A077001.P16679199338776515987

/-! ## A077001.P10031172101192317907

`A046100(A177553(n)+1)`
-/

namespace A077001.P10031172101192317907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (A177553 n + 1).toNat

end

end A077001.P10031172101192317907

/-!
# A077002: a(1) = 1, a(n+1) is the largest triangular number <= n*a(n).

The programs for A077002, there is no canonical definition to state claims against.
-/

/-! ## A077002.P1667631441954002156

`C(round(sqrt(2*(n*a(n-1)+1))), 2)` with `a(0)=1`
-/

namespace A077002.P1667631441954002156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * (n * a (n - 1) + 1) : ℝ))).toNat 2

end

end A077002.P1667631441954002156

/-! ## A077002.P11679615043970580699

`C(round(sqrt(2*n*a(n-1))), 2)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A077002.P11679615043970580699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 3] fun n a =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * (n * a (n - 1)) : ℝ))).toNat 2

end

end A077002.P11679615043970580699

/-! ## A077002.P6024893028229050908

`C(A077003(n+1)+1, 2)`
-/

namespace A077002.P6024893028229050908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A077003 (n + 1) + 1).toNat 2

end

end A077002.P6024893028229050908

/-! ## A077002.P17142402492170327815

`A000217(A077003(n+1))`
-/

namespace A077002.P17142402492170327815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A077003 (n + 1)).toNat

end

end A077002.P17142402492170327815

/-! ## A077002.P18362938753097029430

`A161680(A077003(n+1)+1)`
-/

namespace A077002.P18362938753097029430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A077003 (n + 1) + 1).toNat

end

end A077002.P18362938753097029430

/-!
# A077003: a(n) = index of triangular number A077002(n).

The programs for A077003, there is no canonical definition to state claims against.
-/

/-! ## A077003.P4759350446051190236

`floor(sqrt(2*A077002(n+1)))`
-/

namespace A077003.P4759350446051190236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A077002 (n + 1))

end

end A077003.P4759350446051190236

/-! ## A077003.P12709703664454938095

`round(sqrt(n*A002378(a(n-1))+1))-1` with `a(0)=1`
-/

namespace A077003.P12709703664454938095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (Real.sqrt ((n : ℤ) * A002378 (a (n - 1)).toNat + 1 : ℝ)) - 1

end

end A077003.P12709703664454938095

/-! ## A077003.P13677289375995957991

`A357049(A205568(n+1))+A035053(n)`
-/

namespace A077003.P13677289375995957991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357049 (A205568 (n + 1)).toNat + A035053 n

end

end A077003.P13677289375995957991

/-! ## A077003.P2104830468154597165

`A261488(A261459(n+3))+A035053(n)`
-/

namespace A077003.P2104830468154597165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261488 (A261459 (n + 3)).toNat + A035053 n

end

end A077003.P2104830468154597165

/-! ## A077003.P12083630607720494615

`or(A035053(n), A107017(A064731(n+1)))`
-/

namespace A077003.P12083630607720494615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035053 n) (A107017 (A064731 (n + 1)).toNat)

end

end A077003.P12083630607720494615

/-!
# A077005: Smallest k such that prime(n) divides k*prime(n-1) + 1, n > 1.

The programs for A077005, there is no canonical definition to state claims against.
-/

/-! ## A077005.P17342733726427450225

`A000040(n+2)-A069830(n+1)`
-/

namespace A077005.P17342733726427450225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A069830 (n + 1)

end

end A077005.P17342733726427450225

/-! ## A077005.P703881974552881476

`A077338(n+1)/p?[ceil(2/acot(n))]`
-/

namespace A077005.P703881974552881476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077338 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A077005.P703881974552881476

/-! ## A077005.P7603281255795153291

`A077338(n+1)/Δ[A007504(n)]`
-/

namespace A077005.P7603281255795153291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077338 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A077005.P7603281255795153291

/-! ## A077005.P1631389581894507167

`A065091(n+1)-A069830(n+1)`
-/

namespace A077005.P1631389581894507167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A069830 (n + 1)

end

end A077005.P1631389581894507167

/-! ## A077005.P903260354249378197

`A077338(n+1)/A000040(n+1)`
-/

namespace A077005.P903260354249378197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077338 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A077005.P903260354249378197

/-! ## A077005.P18043543862904863388

`A077338(n+1)/(A008864(n+1)-1)`
-/

namespace A077005.P18043543862904863388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077338 (n + 1) : ℚ) / (A008864 (n + 1) - 1 : ℚ)

end

end A077005.P18043543862904863388

/-! ## A077005.P17069361014530980758

`A065091(n+1)-A073603(n+1)/A000040(n+1)`
-/

namespace A077005.P17069361014530980758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065091 (n + 1) : ℚ) - (A073603 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A077005.P17069361014530980758

/-! ## A077005.P17281288231301308706

`A000040(n+2)-A073603(n+1)/A000040(n+1)`
-/

namespace A077005.P17281288231301308706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 2) : ℚ) - (A073603 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A077005.P17281288231301308706

/-! ## A077005.P5427690857746272884

`A073603(n+2)/A069830(n+2)-A069830(n+1)`
-/

namespace A077005.P5427690857746272884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073603 (n + 2) : ℚ) / (A069830 (n + 2) : ℚ) - (A069830 (n + 1) : ℚ)

end

end A077005.P5427690857746272884

/-! ## A077005.P14777975996562715872

`A194367(n+2)+A087454(n+3)-A069830(n+1)`
-/

namespace A077005.P14777975996562715872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194367 (n + 2) + (A087454 (n + 3) - A069830 (n + 1))

end

end A077005.P14777975996562715872

/-! ## A077005.P12167080742654441803

`record[A006530(n+3)]-A069830(n+1)`
-/

namespace A077005.P12167080742654441803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A069830 (n + 1)

end

end A077005.P12167080742654441803

/-! ## A077005.P8197531697150286474

`record[A020639(n+3)]-A069830(n+1)`
-/

namespace A077005.P8197531697150286474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A069830 (n + 1)

end

end A077005.P8197531697150286474

/-!
# A077006: Numbers k such that sigma(k)/k >= sigma(m)/m for all m <= k.

The programs for A077006, there is no canonical definition to state claims against.
-/

/-! ## A077006.P2107277981085218659

`∩[A073349(n+1), A396596(n+1)]`
-/

namespace A077006.P2107277981085218659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077006.P2107277981085218659

/-! ## A077006.P13893510780060272906

`∪[A166981(n+1), A208767(record[n%3+1+n])]`
-/

namespace A077006.P13893510780060272906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166981 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + 1 + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208767 (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A077006.P13893510780060272906

/-! ## A077006.P11247958561618660820

`∪[A095848(A244230(3*n+2)+n-1), A166981(n+1)]`
-/

namespace A077006.P11247958561618660820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095848 (A244230 (3 * n + 2) + ((n : ℤ) - 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A077006.P11247958561618660820

/-! ## A077006.P13992250900237954638

`∩[A073349(n+1), A094348(n+1)]`
-/

namespace A077006.P13992250900237954638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077006.P13992250900237954638

/-!
# A077007: Primes p such that p*q+1 or p*q-1 is divisible by r where q = nextprime(p) and r=nextprime(q).

The programs for A077007, there is no canonical definition to state claims against.
-/

/-! ## A077007.P10431956853258346608

`A000040(A041781(n)-char[1])`
-/

namespace A077007.P10431956853258346608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A041781 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A077007.P10431956853258346608

/-!
# A077008: Legendre symbol (-1,p) where p is the n-th prime.

The programs for A077008, the canonical program `A077008.P7276496796489003301` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077008 has offset 2).

The definition of A077008 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077008.P7276496796489003301

`A070750(n+2)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A077008

/-- `A070750(n+2)` -/
def P7276496796489003301.Spec : Prop :=
  ∀ n, P7276496796489003301.a n = A077008 (n + 2)

theorem P7276496796489003301.correct : P7276496796489003301.Spec := by
  intro n
  simp only [A077008, Nat.add_sub_cancel]

end A077008

/-! ## A077008.P13475823946685741517

`(-1)^((A000040(n+2)-1)/2)`
-/

namespace A077008.P13475823946685741517
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-1 : ℝ) ^ ((A000040 (n + 2) - 1 : ℚ) / 2 : ℝ)

end

end A077008.P13475823946685741517

namespace A077008

/-- `(-1)^((A000040(n+2)-1)/2)` -/
def P13475823946685741517.Spec : Prop :=
  ∀ n, P13475823946685741517.a n = (A077008 (n + 2) : ℝ)

end A077008

/-! ## A077008.P893611897909256598

`2-p?[2*n+1]%4`
-/

namespace A077008.P893611897909256598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) % 4 : ℕ) : ℤ)

end

end A077008.P893611897909256598

namespace A077008

/-- `2-p?[2*n+1]%4` -/
def P893611897909256598.Spec : Prop :=
  ∀ n, P893611897909256598.a n = A077008 (n + 2)

end A077008

/-! ## A077008.P3538808344981893654

`1-and(2, p?[2*n+1])`
-/

namespace A077008.P3538808344981893654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℤ)

end

end A077008.P3538808344981893654

namespace A077008

/-- `1-and(2, p?[2*n+1])` -/
def P3538808344981893654.Spec : Prop :=
  ∀ n, P3538808344981893654.a n = A077008 (n + 2)

end A077008

/-! ## A077008.P15811503280622005374

`floor(cos(and(2, p?[2*n+1])))`
-/

namespace A077008.P15811503280622005374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (Nat.land 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℝ)⌋

end

end A077008.P15811503280622005374

namespace A077008

/-- `floor(cos(and(2, p?[2*n+1])))` -/
def P15811503280622005374.Spec : Prop :=
  ∀ n, P15811503280622005374.a n = A077008 (n + 2)

end A077008

/-! ## A077008.P14871522284402872951

`round(cos(and(3, p?[2*n+1])))`
-/

namespace A077008.P14871522284402872951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (Nat.land 3 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℝ))

end

end A077008.P14871522284402872951

namespace A077008

/-- `round(cos(and(3, p?[2*n+1])))` -/
def P14871522284402872951.Spec : Prop :=
  ∀ n, P14871522284402872951.a n = A077008 (n + 2)

end A077008

/-! ## A077008.P10265121192918732194

`floor(tan(and(3, p?[2*n+1])))`
-/

namespace A077008.P10265121192918732194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (Nat.land 3 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℝ)⌋

end

end A077008.P10265121192918732194

namespace A077008

/-- `floor(tan(and(3, p?[2*n+1])))` -/
def P10265121192918732194.Spec : Prop :=
  ∀ n, P10265121192918732194.a n = A077008 (n + 2)

end A077008

/-! ## A077008.P5051556441824066495

`sin(p?[2*n+1]*acos(0))`
-/

namespace A077008.P5051556441824066495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ) * Real.arccos (0 : ℝ))

end

end A077008.P5051556441824066495

namespace A077008

/-- `sin(p?[2*n+1]*acos(0))` -/
def P5051556441824066495.Spec : Prop :=
  ∀ n, P5051556441824066495.a n = (A077008 (n + 2) : ℝ)

end A077008

/-! ## A077008.P9367262604703660352

`sin(p?[2*n+1]*asin(1))`
-/

namespace A077008.P9367262604703660352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ) * Real.arcsin (1 : ℝ))

end

end A077008.P9367262604703660352

namespace A077008

/-- `sin(p?[2*n+1]*asin(1))` -/
def P9367262604703660352.Spec : Prop :=
  ∀ n, P9367262604703660352.a n = (A077008 (n + 2) : ℝ)

end A077008

/-! ## A077008.P12676638505784394937

`-A212159(n+2)`
-/

namespace A077008.P12676638505784394937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A212159 (n + 2)

end

end A077008.P12676638505784394937

namespace A077008

/-- `-A212159(n+2)` -/
def P12676638505784394937.Spec : Prop :=
  ∀ n, P12676638505784394937.a n = A077008 (n + 2)

end A077008

/-! ## A077008.P12155799478454828274

`A271974(n+2)%2`
-/

namespace A077008.P12155799478454828274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271974 (n + 2)) 2

end

end A077008.P12155799478454828274

namespace A077008

/-- `A271974(n+2)%2` -/
def P12155799478454828274.Spec : Prop :=
  ∀ n, P12155799478454828274.a n = A077008 (n + 2)

end A077008

/-! ## A077008.P3881444630211305132

`Δ[-A038698(n+1)]`
-/

namespace A077008.P3881444630211305132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A038698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077008.P3881444630211305132

namespace A077008

/-- `Δ[-A038698(n+1)]` -/
def P3881444630211305132.Spec : Prop :=
  ∀ n, P3881444630211305132.a n = A077008 (n + 2)

end A077008

/-! ## A077008.P975535590548049890

`1-and(2, A045344(n+1))`
-/

namespace A077008.P975535590548049890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 2 (A045344 (n + 1))

end

end A077008.P975535590548049890

namespace A077008

/-- `1-and(2, A045344(n+1))` -/
def P975535590548049890.Spec : Prop :=
  ∀ n, P975535590548049890.a n = A077008 (n + 2)

end A077008

/-! ## A077008.P9602930150685262412

`1-and(2, A065091(n+1))`
-/

namespace A077008.P9602930150685262412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 2 (A065091 (n + 1))

end

end A077008.P9602930150685262412

namespace A077008

/-- `1-and(2, A065091(n+1))` -/
def P9602930150685262412.Spec : Prop :=
  ∀ n, P9602930150685262412.a n = A077008 (n + 2)

end A077008

/-! ## A077008.P9254261997040199276

`and(2, A154115(n+1))-1`
-/

namespace A077008.P9254261997040199276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A154115 (n + 1)) - 1

end

end A077008.P9254261997040199276

namespace A077008

/-- `and(2, A154115(n+1))-1` -/
def P9254261997040199276.Spec : Prop :=
  ∀ n, P9254261997040199276.a n = A077008 (n + 2)

end A077008

/-! ## A077008.P8179408665184823003

`and(2, A001748(n+2))-1`
-/

namespace A077008.P8179408665184823003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A001748 (n + 2)) - 1

end

end A077008.P8179408665184823003

namespace A077008

/-- `and(2, A001748(n+2))-1` -/
def P8179408665184823003.Spec : Prop :=
  ∀ n, P8179408665184823003.a n = A077008 (n + 2)

end A077008

/-! ## A077008.P5265147275792359956

`A038698(n+1)-A038698(n+2)`
-/

namespace A077008.P5265147275792359956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038698 (n + 1) - A038698 (n + 2)

end

end A077008.P5265147275792359956

namespace A077008

/-- `A038698(n+1)-A038698(n+2)` -/
def P5265147275792359956.Spec : Prop :=
  ∀ n, P5265147275792359956.a n = A077008 (n + 2)

end A077008

/-! ## A077008.P3208091614601340485

`Δ[A308567(n+1)]`
-/

namespace A077008.P3208091614601340485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077008.P3208091614601340485

namespace A077008

/-- `Δ[A308567(n+1)]` -/
def P3208091614601340485.Spec : Prop :=
  ∀ n, P3208091614601340485.a n = A077008 (n + 2)

end A077008

/-! ## A077008.P8300281347640883881

`2-A039702(n+2)`
-/

namespace A077008.P8300281347640883881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A039702 (n + 2)

end

end A077008.P8300281347640883881

namespace A077008

/-- `2-A039702(n+2)` -/
def P8300281347640883881.Spec : Prop :=
  ∀ n, P8300281347640883881.a n = A077008 (n + 2)

end A077008

/-! ## A077008.P9822142431664953767

`A073579(n+2)%2`
-/

namespace A077008.P9822142431664953767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073579 (n + 2)) 2

end

end A077008.P9822142431664953767

namespace A077008

/-- `A073579(n+2)%2` -/
def P9822142431664953767.Spec : Prop :=
  ∀ n, P9822142431664953767.a n = A077008 (n + 2)

end A077008

/-!
# A077009: Jacobi symbol(phi(2n+1),2n+1).

The programs for A077009, there is no canonical definition to state claims against.
-/

/-! ## A077009.P3595946334823788417

`A210826(A118185(n)*A285572(2*(n+2)))`
-/

namespace A077009.P3595946334823788417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210826 (A118185 n * A285572 (2 * (n + 2))).toNat

end

end A077009.P3595946334823788417

/-! ## A077009.P18076871201841021461

`A121373(and(A061395(3*(n+1)), A217934(2*n+1)))`
-/

namespace A077009.P18076871201841021461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (Int.land (A061395 (3 * (n + 1))) (A217934 (2 * n + 1))).toNat

end

end A077009.P18076871201841021461

/-! ## A077009.P5299569277004486215

`A008683(A207868(n+1)+A194794(n+1))`
-/

namespace A077009.P5299569277004486215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A207868 (n + 1) + A194794 (n + 1)).toNat

end

end A077009.P5299569277004486215

/-! ## A077009.P711983613961057808

`A225817(A264272(n+1)*A339047(n+1))`
-/

namespace A077009.P711983613961057808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225817 (A264272 (n + 1) * A339047 (n + 1)).toNat

end

end A077009.P711983613961057808

/-! ## A077009.P11232867386557698685

`A008683(or(A108978(n+1), A108990(2*n)))`
-/

namespace A077009.P11232867386557698685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.lor (A108978 (n + 1)) (A108990 (2 * n))).toNat

end

end A077009.P11232867386557698685

/-!
# A077010: Jacobi symbol(sigma(2n+1),2n+1).

The programs for A077010, there is no canonical definition to state claims against.
-/

/-! ## A077010.P14617541472922647270

`A008683(C(A003415(2*(n+1)), A353509(2*n+1)))`
-/

namespace A077010.P14617541472922647270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.choose (A003415 (2 * (n + 1))).toNat (A353509 (2 * n + 1)).toNat)

end

end A077010.P14617541472922647270

/-! ## A077010.P5645198091883521009

`A049347(A062327(n+5)*A098603(n))`
-/

namespace A077010.P5645198091883521009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A062327 (n + 5) * A098603 n).toNat

end

end A077010.P5645198091883521009

/-! ## A077010.P11713205718523462909

`A091337(A362079(2*(n+1))^A007949(n+5))`
-/

namespace A077010.P11713205718523462909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 (SequenceMachineLib.roundAway ((A362079 (2 * (n + 1)) : ℚ) ^ (A007949 (n + 5) : ℤ))).toNat

end

end A077010.P11713205718523462909

/-! ## A077010.P16252678190862783807

`A353354(2*(n+2))^A320003(A078943(n+1))`
-/

namespace A077010.P16252678190862783807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353354 (2 * (n + 2)) : ℚ) ^ (A320003 (A078943 (n + 1)).toNat : ℤ)

end

end A077010.P16252678190862783807

/-! ## A077010.P3024969895920142197

`A049347(A000217(n)*A006530(2*n+1))`
-/

namespace A077010.P3024969895920142197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A000217 n * A006530 (2 * n + 1)).toNat

end

end A077010.P3024969895920142197

/-!
# A077011: Triangle read by rows: T(n,k) = A002110(n)/prime(n+1-k), k = 1..n.

The programs for A077011, the canonical program `A077011.P6860682218887191644` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077011 has offset 1).

The definition of A077011 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077011.P6860682218887191644

`A002110(row(n)+1)/A000040(row(n)+2-(col(n)+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A077011

/-- `A002110(row(n)+1)/A000040(row(n)+2-(col(n)+1))` -/
def P6860682218887191644.Spec : Prop :=
  ∀ n, P6860682218887191644.a n = (A077011 (n + 1) : ℚ)

end A077011

/-! ## A077011.P14403025538320632694

`A019565(A089633(n))`
-/

namespace A077011.P14403025538320632694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A089633 n).toNat

end

end A077011.P14403025538320632694

namespace A077011

/-- `A019565(A089633(n))` -/
def P14403025538320632694.Spec : Prop :=
  ∀ n, P14403025538320632694.a n = A077011 (n + 1)

end A077011

/-! ## A077011.P6053870398175302929

`A121281(A099375(n)+1+n)`
-/

namespace A077011.P6053870398175302929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121281 (A099375 n + 1 + (n : ℤ)).toNat

end

end A077011.P6053870398175302929

namespace A077011

/-- `A121281(A099375(n)+1+n)` -/
def P6053870398175302929.Spec : Prop :=
  ∀ n, P6053870398175302929.a n = A077011 (n + 1)

end A077011

/-! ## A077011.P18342905287417794373

`record[A303760(A303768(n))]`
-/

namespace A077011.P18342905287417794373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303760 (A303768 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077011.P18342905287417794373

namespace A077011

/-- `record[A303760(A303768(n))]` -/
def P18342905287417794373.Spec : Prop :=
  ∀ n, P18342905287417794373.a n = A077011 (n + 1)

end A077011

/-! ## A077011.P2416631075907936040

`record[A019565(n)]`
-/

namespace A077011.P2416631075907936040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077011.P2416631075907936040

namespace A077011

/-- `record[A019565(n)]` -/
def P2416631075907936040.Spec : Prop :=
  ∀ n, P2416631075907936040.a n = A077011 (n + 1)

end A077011

/-! ## A077011.P9839866407849753307

`record[sqrt(A334110(n))]`
-/

namespace A077011.P9839866407849753307
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A334110 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077011.P9839866407849753307

namespace A077011

/-- `record[sqrt(A334110(n))]` -/
def P9839866407849753307.Spec : Prop :=
  ∀ n, P9839866407849753307.a n = (A077011 (n + 1) : ℝ)

end A077011

/-! ## A077011.P715564979633018747

`record[A339809(n)+1]`
-/

namespace A077011.P715564979633018747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077011.P715564979633018747

namespace A077011

/-- `record[A339809(n)+1]` -/
def P715564979633018747.Spec : Prop :=
  ∀ n, P715564979633018747.a n = A077011 (n + 1)

end A077011

/-! ## A077011.P3457854170575575027

`record[A284003(A003188(n))]`
-/

namespace A077011.P3457854170575575027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284003 (A003188 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077011.P3457854170575575027

namespace A077011

/-- `record[A284003(A003188(n))]` -/
def P3457854170575575027.Spec : Prop :=
  ∀ n, P3457854170575575027.a n = A077011 (n + 1)

end A077011

/-! ## A077011.P11264575990904793117

`A019565(lt[A302436(n), 4])`
-/

namespace A077011.P11264575990904793117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302436 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A077011.P11264575990904793117

namespace A077011

/-- `A019565(lt[A302436(n), 4])` -/
def P11264575990904793117.Spec : Prop :=
  ∀ n, P11264575990904793117.a n = A077011 (n + 1)

end A077011

/-! ## A077011.P13667765786763669609

`A019565(A023758(n+2)-1)`
-/

namespace A077011.P13667765786763669609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A023758 (n + 2) - 1).toNat

end

end A077011.P13667765786763669609

namespace A077011

/-- `A019565(A023758(n+2)-1)` -/
def P13667765786763669609.Spec : Prop :=
  ∀ n, P13667765786763669609.a n = A077011 (n + 1)

end A077011

/-!
# A077012: Triangle in which n-th row contains all possible products of n-1 of the first n natural numbers in ascending order.

The programs for A077012, the canonical program `A077012.P1073452310071073019` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077012 has offset 1).

The definition of A077012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077012.P9442808829501064243

`T(n-1,k-1)+(T(n-1,k-1)+T(n-1,k)-row(n)*T(n-2,k-1))*row(n)` with `a(0)=1`
-/

namespace A077012.P9442808829501064243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n - (SequenceMachineLib.triRow n : ℤ) * SequenceMachineLib.triUp2Left a n) * (SequenceMachineLib.triRow n : ℤ)

end

end A077012.P9442808829501064243

namespace A077012

/-- `T(n-1,k-1)+(T(n-1,k-1)+T(n-1,k)-row(n)*T(n-2,k-1))*row(n)` -/
def P9442808829501064243.Spec : Prop :=
  ∀ n, P9442808829501064243.a n = A077012 (n + 1)

end A077012

/-! ## A077012.P6588980010333294829

`(n-C(∑[char[∑[n]]], 2))!*(C(comp[∑[n]]-n, 2)-(n+1))!*C(∑[char[∑[n]]], n-C(∑[char[∑[n]]], 2))`
-/

namespace A077012.P6588980010333294829
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

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

open Classical in
def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f7 j = n then 1 else 0

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f11 j

open Classical in
def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f10 j = n then 1 else 0

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)).toNat * Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat * Nat.choose (∑ j ∈ Finset.range (n + 1), f6 j) ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f9 j) 2 : ℤ)).toNat

end

end A077012.P6588980010333294829

namespace A077012

/-- `(n-C(∑[char[∑[n]]], 2))!*(C(comp[∑[n]]-n, 2)-(n+1))!*C(∑[char[∑[n]]], n-C(∑[char[∑[n]]], 2))` -/
def P6588980010333294829.Spec : Prop :=
  ∀ n, (P6588980010333294829.a n : ℤ) = A077012 (n + 1)

end A077012

/-! ## A077012.P1073452310071073019

`A074909(n)*A098361(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A077012

/-- `A074909(n)*A098361(n)` -/
def P1073452310071073019.Spec : Prop :=
  ∀ n, P1073452310071073019.a n = A077012 (n + 1)

theorem P1073452310071073019.correct : P1073452310071073019.Spec := by
  intro n
  simp only [A077012, Nat.add_sub_cancel]

end A077012

/-! ## A077012.P14314332677483486210

`A119502(n)*A181511(n+1)`
-/

namespace A077012.P14314332677483486210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 n * A181511 (n + 1)

end

end A077012.P14314332677483486210

namespace A077012

/-- `A119502(n)*A181511(n+1)` -/
def P14314332677483486210.Spec : Prop :=
  ∀ n, P14314332677483486210.a n = A077012 (n + 1)

end A077012

/-! ## A077012.P13240846676518373374

`abs(A078921(n+1))`
-/

namespace A077012.P13240846676518373374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078921 (n + 1)|

end

end A077012.P13240846676518373374

namespace A077012

/-- `abs(A078921(n+1))` -/
def P13240846676518373374.Spec : Prop :=
  ∀ n, P13240846676518373374.a n = A077012 (n + 1)

end A077012

/-! ## A077012.P9966923953372105224

`A078921(n+1)*A097807(n)`
-/

namespace A077012.P9966923953372105224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078921 (n + 1) * A097807 n

end

end A077012.P9966923953372105224

namespace A077012

/-- `A078921(n+1)*A097807(n)` -/
def P9966923953372105224.Spec : Prop :=
  ∀ n, P9966923953372105224.a n = A077012 (n + 1)

end A077012

/-! ## A077012.P16164184065849273953

`gcd(A000038(n), A078921(n+1))`
-/

namespace A077012.P16164184065849273953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A078921 (n + 1))

end

end A077012.P16164184065849273953

namespace A077012

/-- `gcd(A000038(n), A078921(n+1))` -/
def P16164184065849273953.Spec : Prop :=
  ∀ n, (P16164184065849273953.a n : ℤ) = A077012 (n + 1)

end A077012

/-! ## A077012.P11031597962793299680

`(row(n)+1)!/(row(n)+1-col(n))`
-/

namespace A077012.P11031597962793299680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.triRow n + 1) : ℚ) / ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℚ)

end

end A077012.P11031597962793299680

namespace A077012

/-- `(row(n)+1)!/(row(n)+1-col(n))` -/
def P11031597962793299680.Spec : Prop :=
  ∀ n, P11031597962793299680.a n = (A077012 (n + 1) : ℚ)

end A077012

/-! ## A077012.P1557272536830413076

`∑[char[∑[n]]]!/(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A077012.P1557272536830413076
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
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ)

end

end A077012.P1557272536830413076

namespace A077012

/-- `∑[char[∑[n]]]!/(C(comp[∑[n]]-n, 2)-n)` -/
def P1557272536830413076.Spec : Prop :=
  ∀ n, P1557272536830413076.a n = (A077012 (n + 1) : ℚ)

end A077012

/-! ## A077012.P14306282173579742183

`A094310(∑[char[∑[n]]]²-n)`
-/

namespace A077012.P14306282173579742183
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094310 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A077012.P14306282173579742183

namespace A077012

/-- `A094310(∑[char[∑[n]]]²-n)` -/
def P14306282173579742183.Spec : Prop :=
  ∀ n, P14306282173579742183.a n = A077012 (n + 1)

end A077012

/-! ## A077012.P13394778998678339968

`A130493(n+1)/A004736(n+1)`
-/

namespace A077012.P13394778998678339968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130493 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ)

end

end A077012.P13394778998678339968

namespace A077012

/-- `A130493(n+1)/A004736(n+1)` -/
def P13394778998678339968.Spec : Prop :=
  ∀ n, P13394778998678339968.a n = (A077012 (n + 1) : ℚ)

end A077012

/-! ## A077012.P4179372442618524036

`A000142(A002024(n+1))/A004736(n+1)`
-/

namespace A077012.P4179372442618524036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (A002024 (n + 1)).toNat : ℚ) / (A004736 (n + 1) : ℚ)

end

end A077012.P4179372442618524036

namespace A077012

/-- `A000142(A002024(n+1))/A004736(n+1)` -/
def P4179372442618524036.Spec : Prop :=
  ∀ n, P4179372442618524036.a n = (A077012 (n + 1) : ℚ)

end A077012

/-! ## A077012.P7937911109252840290

`A058298(n+2)/A003057(n+2)`
-/

namespace A077012.P7937911109252840290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058298 (n + 2) : ℚ) / (A003057 (n + 2) : ℚ)

end

end A077012.P7937911109252840290

namespace A077012

/-- `A058298(n+2)/A003057(n+2)` -/
def P7937911109252840290.Spec : Prop :=
  ∀ n, P7937911109252840290.a n = (A077012 (n + 1) : ℚ)

end A077012

/-! ## A077012.P7406443669225811102

`A051683(n+1)/A003991(n+1)`
-/

namespace A077012.P7406443669225811102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051683 (n + 1) : ℚ) / (A003991 (n + 1) : ℚ)

end

end A077012.P7406443669225811102

namespace A077012

/-- `A051683(n+1)/A003991(n+1)` -/
def P7406443669225811102.Spec : Prop :=
  ∀ n, P7406443669225811102.a n = (A077012 (n + 1) : ℚ)

end A077012

/-! ## A077012.P17737218837938068808

`A152883(n+2)/A055461(n+1)`
-/

namespace A077012.P17737218837938068808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152883 (n + 2) : ℚ) / (A055461 (n + 1) : ℚ)

end

end A077012.P17737218837938068808

namespace A077012

/-- `A152883(n+2)/A055461(n+1)` -/
def P17737218837938068808.Spec : Prop :=
  ∀ n, P17737218837938068808.a n = (A077012 (n + 1) : ℚ)

end A077012

/-! ## A077012.P13106647945222637016

`A156992(n+1)/A093375(n+1)`
-/

namespace A077012.P13106647945222637016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156992 (n + 1) : ℚ) / (A093375 (n + 1) : ℚ)

end

end A077012.P13106647945222637016

namespace A077012

/-- `A156992(n+1)/A093375(n+1)` -/
def P13106647945222637016.Spec : Prop :=
  ∀ n, P13106647945222637016.a n = (A077012 (n + 1) : ℚ)

end A077012

/-!
# A077014: Number of ways that a directed line (or river) that starts in the south can cross an east-west road n times.

The programs for A077014, there is no canonical definition to state claims against.
-/

/-! ## A077014.P10512625518498520584

`gcd(2, n)*A005316(n)`
-/

namespace A077014.P10512625518498520584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A005316 n

end

end A077014.P10512625518498520584

/-! ## A077014.P4710664724658030178

`Δ[A007494(n)]*A005316(n)`
-/

namespace A077014.P4710664724658030178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A005316 n

end

end A077014.P4710664724658030178

/-! ## A077014.P14174655061976096772

`ratio[A060546(n)]*A005316(n)`
-/

namespace A077014.P14174655061976096772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A005316 n : ℚ)

end

end A077014.P14174655061976096772

/-! ## A077014.P13361968621122010515

`A000034(n+1)*A005316(n)`
-/

namespace A077014.P13361968621122010515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A005316 n

end

end A077014.P13361968621122010515

/-! ## A077014.P7874524545787183606

`(A059841(n)+1)*A005316(n)`
-/

namespace A077014.P7874524545787183606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059841 n + 1) * A005316 n

end

end A077014.P7874524545787183606

/-! ## A077014.P10686345759374284918

`2*A005316(n)/A000034(n)`
-/

namespace A077014.P10686345759374284918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A005316 n : ℚ) / (A000034 n : ℚ)

end

end A077014.P10686345759374284918

/-!
# A077016: a(1) = 1, a(2) = 4, continue by dividing by the smallest prime not used earlier and multiplying with the smallest composite number just greater than the previous prime used in the division and then take the integer part at every step.

The programs for A077016, there is no canonical definition to state claims against.
-/

/-! ## A077016.P34242320064827542

`A077015(n+1)+3*A345450(A254101(n+1))`
-/

namespace A077016.P34242320064827542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077015 (n + 1) + 3 * A345450 (A254101 (n + 1)).toNat

end

end A077016.P34242320064827542

/-!
# A077017: a(1) = 2, a(n+1) = smallest positive integer divisible by the n-th prime that also has a nontrivial common divisor with a(n).

The programs for A077017, the canonical program `A077017.P16608616585764219284` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077017 has offset 1).

The definition of A077017 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077017.P16608616585764219284

`∏{p}[2*p?[a(n-1)+2], #]` with `a(0)=2, a(1)=2, a(2)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A077017

/-- `∏{p}[2*p?[a(n-1)+2], #]` -/
def P16608616585764219284.Spec : Prop :=
  ∀ n, (P16608616585764219284.a n : ℤ) = A077017 (n + 1)

theorem P16608616585764219284.correct : P16608616585764219284.Spec := by
  intro n
  simp only [A077017, Nat.add_sub_cancel]

end A077017

/-! ## A077017.P9309583375131749281

`lcm(2, A008578(n+1))`
-/

namespace A077017.P9309583375131749281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A008578 (n + 1))

end

end A077017.P9309583375131749281

namespace A077017

/-- `lcm(2, A008578(n+1))` -/
def P9309583375131749281.Spec : Prop :=
  ∀ n, (P9309583375131749281.a n : ℤ) = A077017 (n + 1)

end A077017

/-! ## A077017.P4462088178944196246

`∏{p}[A001747(n+1), #]`
-/

namespace A077017.P4462088178944196246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A077017.P4462088178944196246

namespace A077017

/-- `∏{p}[A001747(n+1), #]` -/
def P4462088178944196246.Spec : Prop :=
  ∀ n, (P4462088178944196246.a n : ℤ) = A077017 (n + 1)

end A077017

/-! ## A077017.P14428020800485947070

`A001747(1-char[1]+n)`
-/

namespace A077017.P14428020800485947070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat

end

end A077017.P14428020800485947070

namespace A077017

/-- `A001747(1-char[1]+n)` -/
def P14428020800485947070.Spec : Prop :=
  ∀ n, P14428020800485947070.a n = A077017 (n + 1)

end A077017

/-! ## A077017.P11008223699364344027

`2*A006005(A028310(n))`
-/

namespace A077017.P11008223699364344027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006005 (A028310 n).toNat

end

end A077017.P11008223699364344027

namespace A077017

/-- `2*A006005(A028310(n))` -/
def P11008223699364344027.Spec : Prop :=
  ∀ n, P11008223699364344027.a n = A077017 (n + 1)

end A077017

/-! ## A077017.P5158231633066582149

`A001747(n+1)/A373565(n)`
-/

namespace A077017.P5158231633066582149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 (n + 1) : ℚ) / (A373565 n : ℚ)

end

end A077017.P5158231633066582149

namespace A077017

/-- `A001747(n+1)/A373565(n)` -/
def P5158231633066582149.Spec : Prop :=
  ∀ n, P5158231633066582149.a n = (A077017 (n + 1) : ℚ)

end A077017

/-! ## A077017.P3198133380594222576

`A008578(n+1)+A069102(n+1)-A158611(n+1)`
-/

namespace A077017.P3198133380594222576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + (A069102 (n + 1) - A158611 (n + 1))

end

end A077017.P3198133380594222576

namespace A077017

/-- `A008578(n+1)+A069102(n+1)-A158611(n+1)` -/
def P3198133380594222576.Spec : Prop :=
  ∀ n, P3198133380594222576.a n = A077017 (n + 1)

end A077017

/-! ## A077017.P11775256759000239565

`(A002378(n+1)-A164004(n))*A008578(n+1)`
-/

namespace A077017.P11775256759000239565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002378 (n + 1) - A164004 n) * A008578 (n + 1)

end

end A077017.P11775256759000239565

namespace A077017

/-- `(A002378(n+1)-A164004(n))*A008578(n+1)` -/
def P11775256759000239565.Spec : Prop :=
  ∀ n, P11775256759000239565.a n = A077017 (n + 1)

end A077017

/-! ## A077017.P13980217012285527636

`A069102(n+1)+A158611(n+2)-A158611(n+1)`
-/

namespace A077017.P13980217012285527636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069102 (n + 1) + (A158611 (n + 2) - A158611 (n + 1))

end

end A077017.P13980217012285527636

namespace A077017

/-- `A069102(n+1)+A158611(n+2)-A158611(n+1)` -/
def P13980217012285527636.Spec : Prop :=
  ∀ n, P13980217012285527636.a n = A077017 (n + 1)

end A077017

/-! ## A077017.P14818628977044998821

`2*A000265(A158611(n+2))`
-/

namespace A077017.P14818628977044998821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000265 (A158611 (n + 2)).toNat

end

end A077017.P14818628977044998821

namespace A077017

/-- `2*A000265(A158611(n+2))` -/
def P14818628977044998821.Spec : Prop :=
  ∀ n, P14818628977044998821.a n = A077017 (n + 1)

end A077017

/-! ## A077017.P17407488365799748759

`2*A000265(sqrt(A280076(n+1)))`
-/

namespace A077017.P17407488365799748759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000265 (SequenceMachineLib.roundAway (Real.sqrt (A280076 (n + 1) : ℝ))).toNat

end

end A077017.P17407488365799748759

namespace A077017

/-- `2*A000265(sqrt(A280076(n+1)))` -/
def P17407488365799748759.Spec : Prop :=
  ∀ n, P17407488365799748759.a n = A077017 (n + 1)

end A077017

/-! ## A077017.P15053025181138403421

`2*A000265(record[A006530(n+1)])`
-/

namespace A077017.P15053025181138403421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000265 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A077017.P15053025181138403421

namespace A077017

/-- `2*A000265(record[A006530(n+1)])` -/
def P15053025181138403421.Spec : Prop :=
  ∀ n, P15053025181138403421.a n = A077017 (n + 1)

end A077017

/-! ## A077017.P6272692706940055818

`2*A000265(record[A020639(n+1)])`
-/

namespace A077017.P6272692706940055818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000265 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A077017.P6272692706940055818

namespace A077017

/-- `2*A000265(record[A020639(n+1)])` -/
def P6272692706940055818.Spec : Prop :=
  ∀ n, P6272692706940055818.a n = A077017 (n + 1)

end A077017

/-! ## A077017.P9874557012261380722

`∏{p}[record[A127202(n+2)], #]`
-/

namespace A077017.P9874557012261380722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127202 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A077017.P9874557012261380722

namespace A077017

/-- `∏{p}[record[A127202(n+2)], #]` -/
def P9874557012261380722.Spec : Prop :=
  ∀ n, (P9874557012261380722.a n : ℤ) = A077017 (n + 1)

end A077017

/-! ## A077017.P15198367576574486759

`2*A318669(A000040(n+1))`
-/

namespace A077017.P15198367576574486759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A318669 (A000040 (n + 1)).toNat

end

end A077017.P15198367576574486759

namespace A077017

/-- `2*A318669(A000040(n+1))` -/
def P15198367576574486759.Spec : Prop :=
  ∀ n, P15198367576574486759.a n = A077017 (n + 1)

end A077017

/-! ## A077017.P6370142227488095621

`lcm(4, p?[floor(n/(n%2+1))]-char[1])/2`
-/

namespace A077017.P6370142227488095621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)) : ℚ) / 2

end

end A077017.P6370142227488095621

namespace A077017

/-- `lcm(4, p?[floor(n/(n%2+1))]-char[1])/2` -/
def P6370142227488095621.Spec : Prop :=
  ∀ n, P6370142227488095621.a n = (A077017 (n + 1) : ℚ)

end A077017

/-! ## A077017.P7689095130734810023

`A007947(A001747(n+1))`
-/

namespace A077017.P7689095130734810023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A001747 (n + 1)).toNat

end

end A077017.P7689095130734810023

namespace A077017

/-- `A007947(A001747(n+1))` -/
def P7689095130734810023.Spec : Prop :=
  ∀ n, P7689095130734810023.a n = A077017 (n + 1)

end A077017

/-! ## A077017.P4543914083895435251

`A007947(2*A008578(n+1))`
-/

namespace A077017.P4543914083895435251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (2 * A008578 (n + 1)).toNat

end

end A077017.P4543914083895435251

namespace A077017

/-- `A007947(2*A008578(n+1))` -/
def P4543914083895435251.Spec : Prop :=
  ∀ n, P4543914083895435251.a n = A077017 (n + 1)

end A077017

/-! ## A077017.P11270532959600574286

`A052410(2*A008578(n+1))`
-/

namespace A077017.P11270532959600574286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (2 * A008578 (n + 1)).toNat

end

end A077017.P11270532959600574286

namespace A077017

/-- `A052410(2*A008578(n+1))` -/
def P11270532959600574286.Spec : Prop :=
  ∀ n, P11270532959600574286.a n = A077017 (n + 1)

end A077017

/-! ## A077017.P9163924983501330537

`A007947(record[2*A006530(n+1)])`
-/

namespace A077017.P9163924983501330537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A077017.P9163924983501330537

namespace A077017

/-- `A007947(record[2*A006530(n+1)])` -/
def P9163924983501330537.Spec : Prop :=
  ∀ n, P9163924983501330537.a n = A077017 (n + 1)

end A077017

/-!
# A077018: Closest prime to n (break ties by taking the larger prime).

The programs for A077018, the canonical program `A077018.P4691575513976680086` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077018 has offset 0).

The definition of A077018 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077018.P6424105494886122373

`Δ[A342371(n)]-char[2]`
-/

namespace A077018.P6424105494886122373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342371 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A077018.P6424105494886122373

namespace A077018

/-- `Δ[A342371(n)]-char[2]` -/
def P6424105494886122373.Spec : Prop :=
  ∀ n, P6424105494886122373.a n = A077018 n

end A077018

/-! ## A077018.P16860841919747056764

`A051697(1-char[2]+n)`
-/

namespace A077018.P16860841919747056764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat

end

end A077018.P16860841919747056764

namespace A077018

/-- `A051697(1-char[2]+n)` -/
def P16860841919747056764.Spec : Prop :=
  ∀ n, P16860841919747056764.a n = A077018 n

end A077018

/-! ## A077018.P6419609857729581127

`xor(char[2], A051697(n+1))`
-/

namespace A077018.P6419609857729581127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A051697 (n + 1))

end

end A077018.P6419609857729581127

namespace A077018

/-- `xor(char[2], A051697(n+1))` -/
def P6419609857729581127.Spec : Prop :=
  ∀ n, P6419609857729581127.a n = A077018 n

end A077018

/-! ## A077018.P8931229530110146433

`A006530(A051697(n+1)+char[2])`
-/

namespace A077018.P8931229530110146433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A051697 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A077018.P8931229530110146433

namespace A077018

/-- `A006530(A051697(n+1)+char[2])` -/
def P8931229530110146433.Spec : Prop :=
  ∀ n, P8931229530110146433.a n = A077018 n

end A077018

/-! ## A077018.P3578479302311329259

`A020639(A051697(n+1)+char[2])`
-/

namespace A077018.P3578479302311329259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A051697 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A077018.P3578479302311329259

namespace A077018

/-- `A020639(A051697(n+1)+char[2])` -/
def P3578479302311329259.Spec : Prop :=
  ∀ n, P3578479302311329259.a n = A077018 n

end A077018

/-! ## A077018.P14776773060688274007

`A014963(A051697(n+1)+char[2])`
-/

namespace A077018.P14776773060688274007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A051697 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A077018.P14776773060688274007

namespace A077018

/-- `A014963(A051697(n+1)+char[2])` -/
def P14776773060688274007.Spec : Prop :=
  ∀ n, P14776773060688274007.a n = A077018 n

end A077018

/-! ## A077018.P14863318878604248861

`A007917(A051699(n)+n)`
-/

namespace A077018.P14863318878604248861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A051699 n + (n : ℤ)).toNat

end

end A077018.P14863318878604248861

namespace A077018

/-- `A007917(A051699(n)+n)` -/
def P14863318878604248861.Spec : Prop :=
  ∀ n, P14863318878604248861.a n = A077018 n

end A077018

/-! ## A077018.P4691575513976680086

`A076973(abs(1-2*n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A077018

/-- `A076973(abs(1-2*n))` -/
def P4691575513976680086.Spec : Prop :=
  ∀ n, P4691575513976680086.a n = A077018 n

theorem P4691575513976680086.correct : P4691575513976680086.Spec := by
  intro n
  simp only [A077018]

end A077018

/-! ## A077018.P13057334673743235628

`A076272(abs(2-n)+n+1)`
-/

namespace A077018.P13057334673743235628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (|2 - (n : ℤ)| + (n + 1 : ℤ)).toNat

end

end A077018.P13057334673743235628

namespace A077018

/-- `A076272(abs(2-n)+n+1)` -/
def P13057334673743235628.Spec : Prop :=
  ∀ n, P13057334673743235628.a n = A077018 n

end A077018

/-! ## A077018.P4559005290034096770

`p?[lcm(A000034(n), A076973(n+1))]`
-/

namespace A077018.P4559005290034096770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A076973 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A077018.P4559005290034096770

namespace A077018

/-- `p?[lcm(A000034(n), A076973(n+1))]` -/
def P4559005290034096770.Spec : Prop :=
  ∀ n, (P4559005290034096770.a n : ℤ) = A077018 n

end A077018

/-!
# A077019: a(n) is the smallest number for which the prime distance A051699 is equal to n.

The programs for A077019, there is no canonical definition to state claims against.
-/

/-! ## A077019.P4139989016500293690

`A079582(n)%A115164(n)`
-/

namespace A077019.P4139989016500293690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079582 n) (A115164 n)

end

end A077019.P4139989016500293690

/-! ## A077019.P13114463126259566410

`A059841(A055672(n))*A079582(n)`
-/

namespace A077019.P13114463126259566410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A055672 n).toNat * A079582 n

end

end A077019.P13114463126259566410

/-! ## A077019.P8950827118326339331

`A043545(A079592(n+1))*A079582(n)`
-/

namespace A077019.P8950827118326339331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (A079592 (n + 1)).toNat * A079582 n

end

end A077019.P8950827118326339331

/-! ## A077019.P14894530848948542783

`A043545(n²+11)*A079582(n)`
-/

namespace A077019.P14894530848948542783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (n ^ 2 + 11) * A079582 n

end

end A077019.P14894530848948542783

/-! ## A077019.P10080001366976367474

`A336365(∑[n+1])`
-/

namespace A077019.P10080001366976367474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336365 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077019.P10080001366976367474

/-! ## A077019.P17976409145446938446

`or(char[1], A336365(A000217(n+1)))`
-/

namespace A077019.P17976409145446938446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A336365 (A000217 (n + 1)).toNat)

end

end A077019.P17976409145446938446

/-! ## A077019.P10684325531416434557

`(A336365(∑[A008619(2*n)])^(1/2))²`
-/

namespace A077019.P10684325531416434557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A336365 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2

end

end A077019.P10684325531416434557

/-! ## A077019.P4725422865788623138

`lcm(A020985(n), A336365(A000217(n+1)))`
-/

namespace A077019.P4725422865788623138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A336365 (A000217 (n + 1)).toNat)

end

end A077019.P4725422865788623138

/-!
# A077020: a(n) is the unique odd positive solution x of 2^n = 7x^2+y^2.

The programs for A077020, the canonical program `A077020.P10730000832541303364` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077020 has offset 3).

The definition of A077020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077020.P16019740083131537311

`abs(∑[ogf((1-x)/(1+x+2x^2))])`
-/

namespace A077020.P16019740083131537311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, 1, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A077020.P16019740083131537311

namespace A077020

/-- `abs(∑[ogf((1-x)/(1+x+2x^2))])` -/
def P16019740083131537311.Spec : Prop :=
  ∀ n, P16019740083131537311.a n = A077020 (n + 3)

end A077020

/-! ## A077020.P10730000832541303364

`abs(∑[a(n-1)-2*a(n-2)])` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A077020

/-- `abs(∑[a(n-1)-2*a(n-2)])` -/
def P10730000832541303364.Spec : Prop :=
  ∀ n, P10730000832541303364.a n = A077020 (n + 3)

theorem P10730000832541303364.correct : P10730000832541303364.Spec := by
  intro n
  simp only [A077020, Nat.add_sub_cancel]

end A077020

/-! ## A077020.P5614494595888142255

`abs(∑[A078020(n)])`
-/

namespace A077020.P5614494595888142255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A077020.P5614494595888142255

namespace A077020

/-- `abs(∑[A078020(n)])` -/
def P5614494595888142255.Spec : Prop :=
  ∀ n, P5614494595888142255.a n = A077020 (n + 3)

end A077020

/-! ## A077020.P11070955631344327685

`abs(A107920(n+1))`
-/

namespace A077020.P11070955631344327685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A107920 (n + 1)|

end

end A077020.P11070955631344327685

namespace A077020

/-- `abs(A107920(n+1))` -/
def P11070955631344327685.Spec : Prop :=
  ∀ n, P11070955631344327685.a n = A077020 (n + 3)

end A077020

/-! ## A077020.P5282223793360686271

`abs(Δ[A105578(n+1)])`
-/

namespace A077020.P5282223793360686271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A077020.P5282223793360686271

namespace A077020

/-- `abs(Δ[A105578(n+1)])` -/
def P5282223793360686271.Spec : Prop :=
  ∀ n, P5282223793360686271.a n = A077020 (n + 3)

end A077020

/-! ## A077020.P9053762844193992238

`abs(1-2*A105578(n))`
-/

namespace A077020.P9053762844193992238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * A105578 n|

end

end A077020.P9053762844193992238

namespace A077020

/-- `abs(1-2*A105578(n))` -/
def P9053762844193992238.Spec : Prop :=
  ∀ n, P9053762844193992238.a n = A077020 (n + 3)

end A077020

/-! ## A077020.P14754782724010850753

`2*A076632(n+1)-1`
-/

namespace A077020.P14754782724010850753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A076632 (n + 1) - 1

end

end A077020.P14754782724010850753

namespace A077020

/-- `2*A076632(n+1)-1` -/
def P14754782724010850753.Spec : Prop :=
  ∀ n, P14754782724010850753.a n = A077020 (n + 3)

end A077020

/-! ## A077020.P16086246761912216201

`lcm(A033999(n), A107920(n+1))`
-/

namespace A077020.P16086246761912216201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A107920 (n + 1))

end

end A077020.P16086246761912216201

namespace A077020

/-- `lcm(A033999(n), A107920(n+1))` -/
def P16086246761912216201.Spec : Prop :=
  ∀ n, (P16086246761912216201.a n : ℤ) = A077020 (n + 3)

end A077020

/-! ## A077020.P5795273913846279881

`abs(A001607(n)-A110512(n))`
-/

namespace A077020.P5795273913846279881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001607 n - A110512 n|

end

end A077020.P5795273913846279881

namespace A077020

/-- `abs(A001607(n)-A110512(n))` -/
def P5795273913846279881.Spec : Prop :=
  ∀ n, P5795273913846279881.a n = A077020 (n + 3)

end A077020

/-! ## A077020.P664629189728233478

`abs(A001607(n+1))`
-/

namespace A077020.P664629189728233478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001607 (n + 1)|

end

end A077020.P664629189728233478

namespace A077020

/-- `abs(A001607(n+1))` -/
def P664629189728233478.Spec : Prop :=
  ∀ n, P664629189728233478.a n = A077020 (n + 3)

end A077020

/-! ## A077020.P4715676339618368266

`lcm(A001607(n+1), A020985(n))`
-/

namespace A077020.P4715676339618368266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001607 (n + 1)) (A020985 n)

end

end A077020.P4715676339618368266

namespace A077020

/-- `lcm(A001607(n+1), A020985(n))` -/
def P4715676339618368266.Spec : Prop :=
  ∀ n, (P4715676339618368266.a n : ℤ) = A077020 (n + 3)

end A077020

/-! ## A077020.P16426015233100619127

`gcd(A001607(n+1), A107920(n+1))`
-/

namespace A077020.P16426015233100619127
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001607 (n + 1)) (A107920 (n + 1))

end

end A077020.P16426015233100619127

namespace A077020

/-- `gcd(A001607(n+1), A107920(n+1))` -/
def P16426015233100619127.Spec : Prop :=
  ∀ n, (P16426015233100619127.a n : ℤ) = A077020 (n + 3)

end A077020

/-! ## A077020.P6670126555595781346

`abs(A169998(abs(1-n)))`
-/

namespace A077020.P6670126555595781346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A169998 |1 - (n : ℤ)|.toNat)|

end

end A077020.P6670126555595781346

namespace A077020

/-- `abs(A169998(abs(1-n)))` -/
def P6670126555595781346.Spec : Prop :=
  ∀ n, P6670126555595781346.a n = A077020 (n + 3)

end A077020

/-! ## A077020.P4403240659039332371

`abs(∑[A078050(n)])`
-/

namespace A077020.P4403240659039332371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A077020.P4403240659039332371

namespace A077020

/-- `abs(∑[A078050(n)])` -/
def P4403240659039332371.Spec : Prop :=
  ∀ n, P4403240659039332371.a n = A077020 (n + 3)

end A077020

/-! ## A077020.P13187576895256223949

`gcd(A049072(n), A200562(n))`
-/

namespace A077020.P13187576895256223949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049072 n) (A200562 n)

end

end A077020.P13187576895256223949

namespace A077020

/-- `gcd(A049072(n), A200562(n))` -/
def P13187576895256223949.Spec : Prop :=
  ∀ n, (P13187576895256223949.a n : ℤ) = A077020 (n + 3)

end A077020

/-! ## A077020.P8705721848650427778

`gcd(A049072(n), A090591(n))`
-/

namespace A077020.P8705721848650427778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049072 n) (A090591 n)

end

end A077020.P8705721848650427778

namespace A077020

/-- `gcd(A049072(n), A090591(n))` -/
def P8705721848650427778.Spec : Prop :=
  ∀ n, (P8705721848650427778.a n : ℤ) = A077020 (n + 3)

end A077020

/-!
# A077021: a(n) is the unique odd positive solution y of 2^n = 7x^2 + y^2.

The programs for A077021, the canonical program `A077021.P12117446235816046914` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077021 has offset 3).

The definition of A077021 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077021.P12117446235816046914

`2*A076631(n+1)-1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A077021

/-- `2*A076631(n+1)-1` -/
def P12117446235816046914.Spec : Prop :=
  ∀ n, P12117446235816046914.a n = A077021 (n + 3)

theorem P12117446235816046914.correct : P12117446235816046914.Spec := by
  intro n
  simp only [A077021, Nat.add_sub_cancel]

end A077021

/-! ## A077021.P16474894337786106153

`abs(1-2*A105225(n))`
-/

namespace A077021.P16474894337786106153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * A105225 n|

end

end A077021.P16474894337786106153

namespace A077021

/-- `abs(1-2*A105225(n))` -/
def P16474894337786106153.Spec : Prop :=
  ∀ n, P16474894337786106153.a n = A077021 (n + 3)

end A077021

/-! ## A077021.P12057528161302734009

`abs(Δ[A105225(n+1)])`
-/

namespace A077021.P12057528161302734009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A077021.P12057528161302734009

namespace A077021

/-- `abs(Δ[A105225(n+1)])` -/
def P12057528161302734009.Spec : Prop :=
  ∀ n, P12057528161302734009.a n = A077021 (n + 3)

end A077021

/-! ## A077021.P2836813964842463061

`abs(Δ[A105579(n+1)])`
-/

namespace A077021.P2836813964842463061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A077021.P2836813964842463061

namespace A077021

/-- `abs(Δ[A105579(n+1)])` -/
def P2836813964842463061.Spec : Prop :=
  ∀ n, P2836813964842463061.a n = A077021 (n + 3)

end A077021

/-! ## A077021.P16963799605714186652

`abs(A002249(n+1))`
-/

namespace A077021.P16963799605714186652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002249 (n + 1)|

end

end A077021.P16963799605714186652

namespace A077021

/-- `abs(A002249(n+1))` -/
def P16963799605714186652.Spec : Prop :=
  ∀ n, P16963799605714186652.a n = A077021 (n + 3)

end A077021

/-! ## A077021.P3074092936730460905

`lcm(A001222(A331634(n+2)), A002249(n+1))`
-/

namespace A077021.P3074092936730460905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001222 (A331634 (n + 2)).toNat) (A002249 (n + 1))

end

end A077021.P3074092936730460905

namespace A077021

/-- `lcm(A001222(A331634(n+2)), A002249(n+1))` -/
def P3074092936730460905.Spec : Prop :=
  ∀ n, (P3074092936730460905.a n : ℤ) = A077021 (n + 3)

end A077021

/-! ## A077021.P11926865510448623560

`gcd(Δ[A002249(n+2)], A002249(n+1))`
-/

namespace A077021.P11926865510448623560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002249 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A002249 (n + 1))

end

end A077021.P11926865510448623560

namespace A077021

/-- `gcd(Δ[A002249(n+2)], A002249(n+1))` -/
def P11926865510448623560.Spec : Prop :=
  ∀ n, (P11926865510448623560.a n : ℤ) = A077021 (n + 3)

end A077021

/-! ## A077021.P10594941366679029939

`lcm(gcd(3, A014551(n)), A002249(n+1))`
-/

namespace A077021.P10594941366679029939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.gcd 3 (A014551 n) : ℤ) (A002249 (n + 1))

end

end A077021.P10594941366679029939

namespace A077021

/-- `lcm(gcd(3, A014551(n)), A002249(n+1))` -/
def P10594941366679029939.Spec : Prop :=
  ∀ n, (P10594941366679029939.a n : ℤ) = A077021 (n + 3)

end A077021

/-! ## A077021.P13112185994018148672

`A077020(2*(n+2))/A077020(n+3)`
-/

namespace A077021.P13112185994018148672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077020 (2 * (n + 2)) : ℚ) / (A077020 (n + 3) : ℚ)

end

end A077021.P13112185994018148672

namespace A077021

/-- `A077020(2*(n+2))/A077020(n+3)` -/
def P13112185994018148672.Spec : Prop :=
  ∀ n, P13112185994018148672.a n = (A077021 (n + 3) : ℚ)

end A077021

/-! ## A077021.P15911051054426243236

`gcd(A049072(n), A090590(n+1))`
-/

namespace A077021.P15911051054426243236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049072 n) (A090590 (n + 1))

end

end A077021.P15911051054426243236

namespace A077021

/-- `gcd(A049072(n), A090590(n+1))` -/
def P15911051054426243236.Spec : Prop :=
  ∀ n, (P15911051054426243236.a n : ℤ) = A077021 (n + 3)

end A077021

/-!
# A077024: a(n) = Sum_{k=1..n} floor(n/k + 1/2).

The programs for A077024, the canonical program `A077024.P14272165679952309842` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077024 has offset 1).

The definition of A077024 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, floor((n+1)/(#+1)+1/2)]` (program `A077024.P14272165679952309842`, by `A077024.P14272165679952309842.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077024.P3708527119542632781

`A006591(n+1)+A069283(n+1)`
-/

namespace A077024.P3708527119542632781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006591 (n + 1) + A069283 (n + 1)

end

end A077024.P3708527119542632781

namespace A077024

/-- `A006591(n+1)+A069283(n+1)` -/
def P3708527119542632781.Spec : Prop :=
  ∀ n, P3708527119542632781.a n = A077024 (n + 1)

end A077024

/-! ## A077024.P7779846172269089765

`A006218(n+1)+A075989(n+1)`
-/

namespace A077024.P7779846172269089765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) + A075989 (n + 1)

end

end A077024.P7779846172269089765

namespace A077024

/-- `A006218(n+1)+A075989(n+1)` -/
def P7779846172269089765.Spec : Prop :=
  ∀ n, P7779846172269089765.a n = A077024 (n + 1)

end A077024

/-! ## A077024.P11147827108200048956

`A062550(n+1)-A156745(n+1)`
-/

namespace A077024.P11147827108200048956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062550 (n + 1) - A156745 (n + 1)

end

end A077024.P11147827108200048956

namespace A077024

/-- `A062550(n+1)-A156745(n+1)` -/
def P11147827108200048956.Spec : Prop :=
  ∀ n, P11147827108200048956.a n = A077024 (n + 1)

end A077024

/-! ## A077024.P13993634056178580164

`A000290(n+1)-A351355(n+1)`
-/

namespace A077024.P13993634056178580164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) - A351355 (n + 1)

end

end A077024.P13993634056178580164

namespace A077024

/-- `A000290(n+1)-A351355(n+1)` -/
def P13993634056178580164.Spec : Prop :=
  ∀ n, P13993634056178580164.a n = A077024 (n + 1)

end A077024

/-! ## A077024.P13535348940785416171

`A056549(n+1)-A000027(n+1)`
-/

namespace A077024.P13535348940785416171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056549 (n + 1) - A000027 (n + 1)

end

end A077024.P13535348940785416171

namespace A077024

/-- `A056549(n+1)-A000027(n+1)` -/
def P13535348940785416171.Spec : Prop :=
  ∀ n, P13535348940785416171.a n = A077024 (n + 1)

end A077024

/-! ## A077024.P14735793363298763956

`A056548(n+1)-A347286(n+1)`
-/

namespace A077024.P14735793363298763956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056548 (n + 1) - A347286 (n + 1)

end

end A077024.P14735793363298763956

namespace A077024

/-- `A056548(n+1)-A347286(n+1)` -/
def P14735793363298763956.Spec : Prop :=
  ∀ n, P14735793363298763956.a n = A077024 (n + 1)

end A077024

/-! ## A077024.P14272165679952309842

`∑{#}[n, floor((n+1)/(#+1)+1/2)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A077024

/-- `∑{#}[n, floor((n+1)/(#+1)+1/2)]` -/
def P14272165679952309842.Spec : Prop :=
  ∀ n, P14272165679952309842.a n = A077024 (n + 1)

theorem P14272165679952309842.correct : P14272165679952309842.Spec := by
  intro n
  simp only [A077024, Nat.add_sub_cancel]

end A077024

/-! ## A077024.P11200321864552220438

`A077025(n+1)+1+n`
-/

namespace A077024.P11200321864552220438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077025 (n + 1) + 1 + (n : ℤ)

end

end A077024.P11200321864552220438

namespace A077024

/-- `A077025(n+1)+1+n` -/
def P11200321864552220438.Spec : Prop :=
  ∀ n, P11200321864552220438.a n = A077024 (n + 1)

end A077024

/-! ## A077024.P8128638635005574496

`(n+1)²-A351355(n+1)`
-/

namespace A077024.P8128638635005574496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A351355 (n + 1)

end

end A077024.P8128638635005574496

namespace A077024

/-- `(n+1)²-A351355(n+1)` -/
def P8128638635005574496.Spec : Prop :=
  ∀ n, P8128638635005574496.a n = A077024 (n + 1)

end A077024

/-! ## A077024.P3186293737488724466

`A263085(n+1)+A248517(n+1)`
-/

namespace A077024.P3186293737488724466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263085 (n + 1) + A248517 (n + 1)

end

end A077024.P3186293737488724466

namespace A077024

/-- `A263085(n+1)+A248517(n+1)` -/
def P3186293737488724466.Spec : Prop :=
  ∀ n, P3186293737488724466.a n = A077024 (n + 1)

end A077024

/-! ## A077024.P11641991824589752746

`A156745(n+1)-A077026(n+1)`
-/

namespace A077024.P11641991824589752746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156745 (n + 1) - A077026 (n + 1)

end

end A077024.P11641991824589752746

namespace A077024

/-- `A156745(n+1)-A077026(n+1)` -/
def P11641991824589752746.Spec : Prop :=
  ∀ n, P11641991824589752746.a n = A077024 (n + 1)

end A077024

/-! ## A077024.P14890763580872851808

`A075989(n+1)+∑[A000005(n+1)]`
-/

namespace A077024.P14890763580872851808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075989 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077024.P14890763580872851808

namespace A077024

/-- `A075989(n+1)+∑[A000005(n+1)]` -/
def P14890763580872851808.Spec : Prop :=
  ∀ n, P14890763580872851808.a n = A077024 (n + 1)

end A077024

/-! ## A077024.P10183325051963205906

`A006218(2*(n+1))-A156745(n+1)`
-/

namespace A077024.P10183325051963205906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (2 * (n + 1)) - A156745 (n + 1)

end

end A077024.P10183325051963205906

namespace A077024

/-- `A006218(2*(n+1))-A156745(n+1)` -/
def P10183325051963205906.Spec : Prop :=
  ∀ n, P10183325051963205906.a n = A077024 (n + 1)

end A077024

/-! ## A077024.P6564169969540007061

`∑[A000005(n+1)+1]-A077026(n+1)`
-/

namespace A077024.P6564169969540007061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A077026 (n + 1)

end

end A077024.P6564169969540007061

namespace A077024

/-- `∑[A000005(n+1)+1]-A077026(n+1)` -/
def P6564169969540007061.Spec : Prop :=
  ∀ n, P6564169969540007061.a n = A077024 (n + 1)

end A077024

/-! ## A077024.P18303151187272855814

`A248517(n+1)+∑[A000005(2*n+1)]`
-/

namespace A077024.P18303151187272855814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077024.P18303151187272855814

namespace A077024

/-- `A248517(n+1)+∑[A000005(2*n+1)]` -/
def P18303151187272855814.Spec : Prop :=
  ∀ n, P18303151187272855814.a n = A077024 (n + 1)

end A077024

/-! ## A077024.P13456655236424089137

`A006218(2*(n+1))-∑[A334954(n+1)]`
-/

namespace A077024.P13456655236424089137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (2 * (n + 1)) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077024.P13456655236424089137

namespace A077024

/-- `A006218(2*(n+1))-∑[A334954(n+1)]` -/
def P13456655236424089137.Spec : Prop :=
  ∀ n, P13456655236424089137.a n = A077024 (n + 1)

end A077024

/-! ## A077024.P11538966000844957819

`A062550(n+1)-(A005843(n+1)+A002541(n+1))`
-/

namespace A077024.P11538966000844957819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062550 (n + 1) - (A005843 (n + 1) + A002541 (n + 1))

end

end A077024.P11538966000844957819

namespace A077024

/-- `A062550(n+1)-(A005843(n+1)+A002541(n+1))` -/
def P11538966000844957819.Spec : Prop :=
  ∀ n, P11538966000844957819.a n = A077024 (n + 1)

end A077024

/-! ## A077024.P3397907587216295227

`∑[Δ[A056549(n)]-1]`
-/

namespace A077024.P3397907587216295227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056549 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077024.P3397907587216295227

namespace A077024

/-- `∑[Δ[A056549(n)]-1]` -/
def P3397907587216295227.Spec : Prop :=
  ∀ n, P3397907587216295227.a n = A077024 (n + 1)

end A077024

/-! ## A077024.P1024974218551086855

`A056549(n+1)-(n+1)`
-/

namespace A077024.P1024974218551086855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056549 (n + 1) - (n + 1 : ℤ)

end

end A077024.P1024974218551086855

namespace A077024

/-- `A056549(n+1)-(n+1)` -/
def P1024974218551086855.Spec : Prop :=
  ∀ n, P1024974218551086855.a n = A077024 (n + 1)

end A077024

/-! ## A077024.P2054184863432708661

`∑[A056561(Δ[A056549(n)])]`
-/

namespace A077024.P2054184863432708661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056549 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056561 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077024.P2054184863432708661

namespace A077024

/-- `∑[A056561(Δ[A056549(n)])]` -/
def P2054184863432708661.Spec : Prop :=
  ∀ n, P2054184863432708661.a n = A077024 (n + 1)

end A077024

/-!
# A077025: a(n) = Sum_{k=1..n} floor(n/(k + 1/2)).

The programs for A077025, the canonical program `A077025.P8156838142617537469` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077025 has offset 1).

The definition of A077025 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, floor((n+1)/(#+1+1/2))]` (program `A077025.P8156838142617537469`, by `A077025.P8156838142617537469.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077025.P8156838142617537469

`∑{#}[n, floor((n+1)/(#+1+1/2))]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A077025

/-- `∑{#}[n, floor((n+1)/(#+1+1/2))]` -/
def P8156838142617537469.Spec : Prop :=
  ∀ n, P8156838142617537469.a n = A077025 (n + 1)

theorem P8156838142617537469.correct : P8156838142617537469.Spec := by
  intro n
  simp only [A077025, Nat.add_sub_cancel]

end A077025

/-! ## A077025.P7516905094900168968

`A077024(n+1)-(n+1)`
-/

namespace A077025.P7516905094900168968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077024 (n + 1) - (n + 1 : ℤ)

end

end A077025.P7516905094900168968

namespace A077025

/-- `A077024(n+1)-(n+1)` -/
def P7516905094900168968.Spec : Prop :=
  ∀ n, P7516905094900168968.a n = A077025 (n + 1)

end A077025

/-! ## A077025.P6396261043045837996

`n²+n-A351355(n+1)`
-/

namespace A077025.P6396261043045837996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n : ℤ) - A351355 (n + 1)

end

end A077025.P6396261043045837996

namespace A077025

/-- `n²+n-A351355(n+1)` -/
def P6396261043045837996.Spec : Prop :=
  ∀ n, P6396261043045837996.a n = A077025 (n + 1)

end A077025

/-! ## A077025.P15524826737817133261

`A006218(n)-A075988(n+1)`
-/

namespace A077025.P15524826737817133261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n - A075988 (n + 1)

end

end A077025.P15524826737817133261

namespace A077025

/-- `A006218(n)-A075988(n+1)` -/
def P15524826737817133261.Spec : Prop :=
  ∀ n, P15524826737817133261.a n = A077025 (n + 1)

end A077025

/-! ## A077025.P6914363216206887100

`A075989(n+1)+A002541(n+1)`
-/

namespace A077025.P6914363216206887100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075989 (n + 1) + A002541 (n + 1)

end

end A077025.P6914363216206887100

namespace A077025

/-- `A075989(n+1)+A002541(n+1)` -/
def P6914363216206887100.Spec : Prop :=
  ∀ n, P6914363216206887100.a n = A077025 (n + 1)

end A077025

/-! ## A077025.P11626745971278496508

`A006218(n+1)-A077026(n+1)`
-/

namespace A077025.P11626745971278496508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) - A077026 (n + 1)

end

end A077025.P11626745971278496508

namespace A077025

/-- `A006218(n+1)-A077026(n+1)` -/
def P11626745971278496508.Spec : Prop :=
  ∀ n, P11626745971278496508.a n = A077025 (n + 1)

end A077025

/-! ## A077025.P14403060798313340085

`A006586(n+2)-A095374(n+1)`
-/

namespace A077025.P14403060798313340085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006586 (n + 2) - A095374 (n + 1)

end

end A077025.P14403060798313340085

namespace A077025

/-- `A006586(n+2)-A095374(n+1)` -/
def P14403060798313340085.Spec : Prop :=
  ∀ n, P14403060798313340085.a n = A077025 (n + 1)

end A077025

/-! ## A077025.P12859019536053504103

`∑[A000005(n+1)]-A077026(n+1)`
-/

namespace A077025.P12859019536053504103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A077026 (n + 1)

end

end A077025.P12859019536053504103

namespace A077025

/-- `∑[A000005(n+1)]-A077026(n+1)` -/
def P12859019536053504103.Spec : Prop :=
  ∀ n, P12859019536053504103.a n = A077025 (n + 1)

end A077025

/-! ## A077025.P5167918282844079903

`A075989(n+1)+∑[A000005(n+1)-1]`
-/

namespace A077025.P5167918282844079903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075989 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077025.P5167918282844079903

namespace A077025

/-- `A075989(n+1)+∑[A000005(n+1)-1]` -/
def P5167918282844079903.Spec : Prop :=
  ∀ n, P5167918282844079903.a n = A077025 (n + 1)

end A077025

/-! ## A077025.P1139147023755120755

`∑[Δ[A056549(n)]-2]`
-/

namespace A077025.P1139147023755120755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056549 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077025.P1139147023755120755

namespace A077025

/-- `∑[Δ[A056549(n)]-2]` -/
def P1139147023755120755.Spec : Prop :=
  ∀ n, P1139147023755120755.a n = A077025 (n + 1)

end A077025

/-! ## A077025.P4189548553750160132

`A056549(n+1)-2*(n+1)`
-/

namespace A077025.P4189548553750160132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056549 (n + 1) - (2 * (n + 1) : ℤ)

end

end A077025.P4189548553750160132

namespace A077025

/-- `A056549(n+1)-2*(n+1)` -/
def P4189548553750160132.Spec : Prop :=
  ∀ n, P4189548553750160132.a n = A077025 (n + 1)

end A077025

/-! ## A077025.P11125927830556110859

`A339217(n+1)-A006218(n+1)`
-/

namespace A077025.P11125927830556110859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339217 (n + 1) - A006218 (n + 1)

end

end A077025.P11125927830556110859

namespace A077025

/-- `A339217(n+1)-A006218(n+1)` -/
def P11125927830556110859.Spec : Prop :=
  ∀ n, P11125927830556110859.a n = A077025 (n + 1)

end A077025

/-! ## A077025.P10461628332203602230

`A248517(2*(n+1))`
-/

namespace A077025.P10461628332203602230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 (2 * (n + 1))

end

end A077025.P10461628332203602230

namespace A077025

/-- `A248517(2*(n+1))` -/
def P10461628332203602230.Spec : Prop :=
  ∀ n, P10461628332203602230.a n = A077025 (n + 1)

end A077025

/-! ## A077025.P13411426489665883203

`record[A248517(and(n, n+1))]`
-/

namespace A077025.P13411426489665883203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077025.P13411426489665883203

namespace A077025

/-- `record[A248517(and(n, n+1))]` -/
def P13411426489665883203.Spec : Prop :=
  ∀ n, P13411426489665883203.a n = A077025 (n + 1)

end A077025

/-! ## A077025.P427871335918385498

`∑[abs(Δ[A248517(2*n)])]`
-/

namespace A077025.P427871335918385498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077025.P427871335918385498

namespace A077025

/-- `∑[abs(Δ[A248517(2*n)])]` -/
def P427871335918385498.Spec : Prop :=
  ∀ n, P427871335918385498.a n = A077025 (n + 1)

end A077025

/-! ## A077025.P2289796120602776680

`∑[A129574(2*(n+1))-2]`
-/

namespace A077025.P2289796120602776680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129574 (2 * (n + 1)) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077025.P2289796120602776680

namespace A077025

/-- `∑[A129574(2*(n+1))-2]` -/
def P2289796120602776680.Spec : Prop :=
  ∀ n, P2289796120602776680.a n = A077025 (n + 1)

end A077025

/-! ## A077025.P9543746759589348366

`record[A248517(A215495(n)+1)]`
-/

namespace A077025.P9543746759589348366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 (A215495 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077025.P9543746759589348366

namespace A077025

/-- `record[A248517(A215495(n)+1)]` -/
def P9543746759589348366.Spec : Prop :=
  ∀ n, P9543746759589348366.a n = A077025 (n + 1)

end A077025

/-! ## A077025.P14265650068449092644

`record[A248517(A088705(n)+n)]`
-/

namespace A077025.P14265650068449092644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 (A088705 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077025.P14265650068449092644

namespace A077025

/-- `record[A248517(A088705(n)+n)]` -/
def P14265650068449092644.Spec : Prop :=
  ∀ n, P14265650068449092644.a n = A077025 (n + 1)

end A077025

/-! ## A077025.P16060640704283777182

`record[A248517(A000265(n+1)+1)]`
-/

namespace A077025.P16060640704283777182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 (A000265 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077025.P16060640704283777182

namespace A077025

/-- `record[A248517(A000265(n+1)+1)]` -/
def P16060640704283777182.Spec : Prop :=
  ∀ n, P16060640704283777182.a n = A077025 (n + 1)

end A077025

/-! ## A077025.P3047596324937069710

`A002541(2*(n+1))-A006218(n+1)`
-/

namespace A077025.P3047596324937069710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002541 (2 * (n + 1)) - A006218 (n + 1)

end

end A077025.P3047596324937069710

namespace A077025

/-- `A002541(2*(n+1))-A006218(n+1)` -/
def P3047596324937069710.Spec : Prop :=
  ∀ n, P3047596324937069710.a n = A077025 (n + 1)

end A077025

/-!
# A077026: a(n) = Sum_{k=1..n} floor(n/k + 1)-floor(n/k + 1/2).

The programs for A077026, the canonical program `A077026.P14314325958420204365` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077026 has offset 1).

The definition of A077026 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, floor((n+1)/(#+1)+1)-floor((n+1)/(#+1)+1/2)]` (program `A077026.P14314325958420204365`, by `A077026.P14314325958420204365.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077026.P14314325958420204365

`∑{#}[n, floor((n+1)/(#+1)+1)-floor((n+1)/(#+1)+1/2)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A077026

/-- `∑{#}[n, floor((n+1)/(#+1)+1)-floor((n+1)/(#+1)+1/2)]` -/
def P14314325958420204365.Spec : Prop :=
  ∀ n, P14314325958420204365.a n = A077026 (n + 1)

theorem P14314325958420204365.correct : P14314325958420204365.Spec := by
  intro n
  simp only [A077026, Nat.add_sub_cancel]

end A077026

/-! ## A077026.P1798448941674800563

`1-A075989(n+1)+n`
-/

namespace A077026.P1798448941674800563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A075989 (n + 1) + (n : ℤ)

end

end A077026.P1798448941674800563

namespace A077026

/-- `1-A075989(n+1)+n` -/
def P1798448941674800563.Spec : Prop :=
  ∀ n, P1798448941674800563.a n = A077026 (n + 1)

end A077026

/-! ## A077026.P9728576407257064609

`Δ[n²]-n-A075989(Δ[n²]-n)`
-/

namespace A077026.P9728576407257064609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ) - A075989 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

end

end A077026.P9728576407257064609

namespace A077026

/-- `Δ[n²]-n-A075989(Δ[n²]-n)` -/
def P9728576407257064609.Spec : Prop :=
  ∀ n, P9728576407257064609.a n = A077026 (n + 1)

end A077026

/-! ## A077026.P15998237217478688084

`n-A023443(A075989(n+1))`
-/

namespace A077026.P15998237217478688084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A075989 (n + 1)).toNat

end

end A077026.P15998237217478688084

namespace A077026

/-- `n-A023443(A075989(n+1))` -/
def P15998237217478688084.Spec : Prop :=
  ∀ n, P15998237217478688084.a n = A077026 (n + 1)

end A077026

/-! ## A077026.P12181336849998521778

`A075988(n+1)+A000005(n+1)`
-/

namespace A077026.P12181336849998521778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075988 (n + 1) + A000005 (n + 1)

end

end A077026.P12181336849998521778

namespace A077026

/-- `A075988(n+1)+A000005(n+1)` -/
def P12181336849998521778.Spec : Prop :=
  ∀ n, P12181336849998521778.a n = A077026 (n + 1)

end A077026

/-! ## A077026.P1310048215617548356

`A006218(n+1)-A077025(n+1)`
-/

namespace A077026.P1310048215617548356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) - A077025 (n + 1)

end

end A077026.P1310048215617548356

namespace A077026

/-- `A006218(n+1)-A077025(n+1)` -/
def P1310048215617548356.Spec : Prop :=
  ∀ n, P1310048215617548356.a n = A077026 (n + 1)

end A077026

/-! ## A077026.P7594994552175508143

`A156745(n+1)-A077024(n+1)`
-/

namespace A077026.P7594994552175508143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156745 (n + 1) - A077024 (n + 1)

end

end A077026.P7594994552175508143

namespace A077026

/-- `A156745(n+1)-A077024(n+1)` -/
def P7594994552175508143.Spec : Prop :=
  ∀ n, P7594994552175508143.a n = A077026 (n + 1)

end A077026

/-! ## A077026.P14115335025380356988

`∑[A325939(2*n+1)+A325939(2*(n+1))]`
-/

namespace A077026.P14115335025380356988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325939 (2 * n + 1) + A325939 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077026.P14115335025380356988

namespace A077026

/-- `∑[A325939(2*n+1)+A325939(2*(n+1))]` -/
def P14115335025380356988.Spec : Prop :=
  ∀ n, P14115335025380356988.a n = A077026 (n + 1)

end A077026

/-! ## A077026.P4171649754349930033

`A062550(n+1)-(A077024(n+1)+A077024(n+1))`
-/

namespace A077026.P4171649754349930033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062550 (n + 1) - (A077024 (n + 1) + A077024 (n + 1))

end

end A077026.P4171649754349930033

namespace A077026

/-- `A062550(n+1)-(A077024(n+1)+A077024(n+1))` -/
def P4171649754349930033.Spec : Prop :=
  ∀ n, P4171649754349930033.a n = A077026 (n + 1)

end A077026

/-! ## A077026.P10835133666297813031

`A156745(n+1)+A156745(n+1)-A062550(n+1)`
-/

namespace A077026.P10835133666297813031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156745 (n + 1) + (A156745 (n + 1) - A062550 (n + 1))

end

end A077026.P10835133666297813031

namespace A077026

/-- `A156745(n+1)+A156745(n+1)-A062550(n+1)` -/
def P10835133666297813031.Spec : Prop :=
  ∀ n, P10835133666297813031.a n = A077026 (n + 1)

end A077026

/-! ## A077026.P1238576861121932460

`A006218(n+1)+A006218(n+1)-A339217(n+1)`
-/

namespace A077026.P1238576861121932460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) + (A006218 (n + 1) - A339217 (n + 1))

end

end A077026.P1238576861121932460

namespace A077026

/-- `A006218(n+1)+A006218(n+1)-A339217(n+1)` -/
def P1238576861121932460.Spec : Prop :=
  ∀ n, P1238576861121932460.a n = A077026 (n + 1)

end A077026

/-! ## A077026.P445686959376749843

`∑[2-Δ[A059851(2*n)]]`
-/

namespace A077026.P445686959376749843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077026.P445686959376749843

namespace A077026

/-- `∑[2-Δ[A059851(2*n)]]` -/
def P445686959376749843.Spec : Prop :=
  ∀ n, P445686959376749843.a n = A077026 (n + 1)

end A077026

/-! ## A077026.P12882474278999646619

`2*(n+1)-A059851(2*(n+1))`
-/

namespace A077026.P12882474278999646619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A059851 (2 * (n + 1))

end

end A077026.P12882474278999646619

namespace A077026

/-- `2*(n+1)-A059851(2*(n+1))` -/
def P12882474278999646619.Spec : Prop :=
  ∀ n, P12882474278999646619.a n = A077026 (n + 1)

end A077026

/-! ## A077026.P6234817138070322642

`2*(n+1)-A275495(2*(n+1))`
-/

namespace A077026.P6234817138070322642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A275495 (2 * (n + 1))

end

end A077026.P6234817138070322642

namespace A077026

/-- `2*(n+1)-A275495(2*(n+1))` -/
def P6234817138070322642.Spec : Prop :=
  ∀ n, P6234817138070322642.a n = A077026 (n + 1)

end A077026

/-! ## A077026.P8645971268514557302

`1-A271860(2*(n+1))/2+n`
-/

namespace A077026.P8645971268514557302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (A271860 (2 * (n + 1)) : ℚ) / 2 + (n : ℚ)

end

end A077026.P8645971268514557302

namespace A077026

/-- `1-A271860(2*(n+1))/2+n` -/
def P8645971268514557302.Spec : Prop :=
  ∀ n, P8645971268514557302.a n = (A077026 (n + 1) : ℚ)

end A077026

/-! ## A077026.P271927973468884230

`A177236(2*(n+1))+A000005(n+1)`
-/

namespace A077026.P271927973468884230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177236 (2 * (n + 1)) + A000005 (n + 1)

end

end A077026.P271927973468884230

namespace A077026

/-- `A177236(2*(n+1))+A000005(n+1)` -/
def P271927973468884230.Spec : Prop :=
  ∀ n, P271927973468884230.a n = A077026 (n + 1)

end A077026

/-! ## A077026.P7895723086075858026

`A006218(n+1)-A248517(2*(n+1))`
-/

namespace A077026.P7895723086075858026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) - A248517 (2 * (n + 1))

end

end A077026.P7895723086075858026

namespace A077026

/-- `A006218(n+1)-A248517(2*(n+1))` -/
def P7895723086075858026.Spec : Prop :=
  ∀ n, P7895723086075858026.a n = A077026 (n + 1)

end A077026

/-! ## A077026.P16962672949628923625

`A325939(2*(n+1))+A075997(2*n+1)`
-/

namespace A077026.P16962672949628923625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325939 (2 * (n + 1)) + A075997 (2 * n + 1)

end

end A077026.P16962672949628923625

namespace A077026

/-- `A325939(2*(n+1))+A075997(2*n+1)` -/
def P16962672949628923625.Spec : Prop :=
  ∀ n, P16962672949628923625.a n = A077026 (n + 1)

end A077026

/-! ## A077026.P9562599129827452788

`2*A006218(n+1)-A002541(2*(n+1))`
-/

namespace A077026.P9562599129827452788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006218 (n + 1) - A002541 (2 * (n + 1))

end

end A077026.P9562599129827452788

namespace A077026

/-- `2*A006218(n+1)-A002541(2*(n+1))` -/
def P9562599129827452788.Spec : Prop :=
  ∀ n, P9562599129827452788.a n = A077026 (n + 1)

end A077026

/-! ## A077026.P13173901020379813009

`A156745(2*(n+1))-2*A056549(n+1)`
-/

namespace A077026.P13173901020379813009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156745 (2 * (n + 1)) - 2 * A056549 (n + 1)

end

end A077026.P13173901020379813009

namespace A077026

/-- `A156745(2*(n+1))-2*A056549(n+1)` -/
def P13173901020379813009.Spec : Prop :=
  ∀ n, P13173901020379813009.a n = A077026 (n + 1)

end A077026

/-!
# A077027: Number of simple integral graphs on n nodes.

The programs for A077027, there is no canonical definition to state claims against.
-/

/-! ## A077027.P6622535770220991588

`A287154(n+1)+A064731(n+1)`
-/

namespace A077027.P6622535770220991588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287154 (n + 1) + A064731 (n + 1)

end

end A077027.P6622535770220991588

/-! ## A077027.P7827835312949273017

`A287154(n+1)+A001349(n+1)-A241842(n+1)`
-/

namespace A077027.P7827835312949273017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287154 (n + 1) + (A001349 (n + 1) - A241842 (n + 1))

end

end A077027.P7827835312949273017

/-! ## A077027.P9171050221914039457

`A287154(n+1)+A201922(A000124(n))-A241842(n+1)`
-/

namespace A077027.P9171050221914039457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287154 (n + 1) + (A201922 (A000124 n).toNat - A241842 (n + 1))

end

end A077027.P9171050221914039457

/-! ## A077027.P16515717099532050137

`A287154(n+1)+A304311(A000096(n+1))-A241842(n+1)`
-/

namespace A077027.P16515717099532050137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287154 (n + 1) + (A304311 (A000096 (n + 1)).toNat - A241842 (n + 1))

end

end A077027.P16515717099532050137

/-! ## A077027.P15647092727491648967

`A287154(n+1)+A000088(n+1)-(A241842(n+1)+A000719(n+1))`
-/

namespace A077027.P15647092727491648967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287154 (n + 1) + (A000088 (n + 1) - (A241842 (n + 1) + A000719 (n + 1)))

end

end A077027.P15647092727491648967

/-!
# A077028: The rascal triangle, read by rows: T(n,k) (n >= 0, 0 <= k <= n) = k(n-k) + 1.

The programs for A077028, the canonical program `A077028.P18404356772921913843` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077028 has offset 0).

The definition of A077028 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077028.P18404356772921913843

`1+col(n)*(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A077028

/-- `1+col(n)*(row(n)-col(n))` -/
def P18404356772921913843.Spec : Prop :=
  ∀ n, P18404356772921913843.a n = A077028 n

theorem P18404356772921913843.correct : P18404356772921913843.Spec := by
  intro n
  simp only [A077028]

end A077028

/-! ## A077028.P11682596430163569480

`A004247(n)+1`
-/

namespace A077028.P11682596430163569480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + 1

end

end A077028.P11682596430163569480

namespace A077028

/-- `A004247(n)+1` -/
def P11682596430163569480.Spec : Prop :=
  ∀ n, P11682596430163569480.a n = A077028 n

theorem P11682596430163569480.correct : P11682596430163569480.Spec := by
  intro n
  simp only [A077028, Nat.add_sub_cancel, A077028.P11682596430163569480.a, A077028.P18404356772921913843.a, A004247, A004247.P2751605162508615148.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077028

/-! ## A077028.P9715754152289079981

`1-(col(n)-row(n))*col(n)`
-/

namespace A077028.P9715754152289079981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n : ℤ)) * (SequenceMachineLib.triCol n : ℤ)

end

end A077028.P9715754152289079981

namespace A077028

/-- `1-(col(n)-row(n))*col(n)` -/
def P9715754152289079981.Spec : Prop :=
  ∀ n, P9715754152289079981.a n = A077028 n

theorem P9715754152289079981.correct : P9715754152289079981.Spec := by
  intro n
  simp only [A077028, Nat.add_sub_cancel, A077028.P9715754152289079981.a, A077028.P18404356772921913843.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A077028

/-! ## A077028.P10741327934005541876

`T(n-1,k-1)+T(n-1,k)+(T(n-1,k)-T(n-2,k-1))*(T(n-1,k-1)-T(n,k-1))` with `a(0)=1`
-/

namespace A077028.P10741327934005541876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n + (SequenceMachineLib.triUp a n - SequenceMachineLib.triUp2Left a n) * (SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triLeft a n)

end

end A077028.P10741327934005541876

namespace A077028

/-- `T(n-1,k-1)+T(n-1,k)+(T(n-1,k)-T(n-2,k-1))*(T(n-1,k-1)-T(n,k-1))` -/
def P10741327934005541876.Spec : Prop :=
  ∀ n, P10741327934005541876.a n = A077028 n

end A077028

/-! ## A077028.P11390136686328706467

`T(n-1,k-1)+T(n-1,k)+(T(n-1,k)-T(n-2,k-1))*(T(n-2,k-1)-T(n-1,k-1))` with `a(0)=1`
-/

namespace A077028.P11390136686328706467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n + (SequenceMachineLib.triUp a n - SequenceMachineLib.triUp2Left a n) * (SequenceMachineLib.triUp2Left a n - SequenceMachineLib.triUpLeft a n)

end

end A077028.P11390136686328706467

namespace A077028

/-- `T(n-1,k-1)+T(n-1,k)+(T(n-1,k)-T(n-2,k-1))*(T(n-2,k-1)-T(n-1,k-1))` -/
def P11390136686328706467.Spec : Prop :=
  ∀ n, P11390136686328706467.a n = A077028 n

end A077028

/-! ## A077028.P3233392877371444706

`(T(n-1,k)-(T(n-2,k)+row(n)))*(T(n-2,k)-T(n-1,k))+1` with `a(0)=1`
-/

namespace A077028.P3233392877371444706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triUp a n - (SequenceMachineLib.triUp2 a n + (SequenceMachineLib.triRow n : ℤ))) * (SequenceMachineLib.triUp2 a n - SequenceMachineLib.triUp a n) + 1

end

end A077028.P3233392877371444706

namespace A077028

/-- `(T(n-1,k)-(T(n-2,k)+row(n)))*(T(n-2,k)-T(n-1,k))+1` -/
def P3233392877371444706.Spec : Prop :=
  ∀ n, P3233392877371444706.a n = A077028 n

end A077028

/-! ## A077028.P11830982517106514712

`sqrt(A082043(n))`
-/

namespace A077028.P11830982517106514712
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A082043 n : ℝ)

end

end A077028.P11830982517106514712

namespace A077028

/-- `sqrt(A082043(n))` -/
def P11830982517106514712.Spec : Prop :=
  ∀ n, P11830982517106514712.a n = (A077028 n : ℝ)

end A077028

/-! ## A077028.P13318193626191403648

`2-A176270(n)`
-/

namespace A077028.P13318193626191403648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A176270 n

end

end A077028.P13318193626191403648

namespace A077028

/-- `2-A176270(n)` -/
def P13318193626191403648.Spec : Prop :=
  ∀ n, P13318193626191403648.a n = A077028 n

theorem P13318193626191403648.correct : P13318193626191403648.Spec := by
  intro n
  simp only [A077028, Nat.add_sub_cancel, A077028.P13318193626191403648.a, A077028.P18404356772921913843.a, A176270, A176270.P15264438552937889960.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077028

/-! ## A077028.P10396018756066778857

`A309555(n)-2`
-/

namespace A077028.P10396018756066778857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309555 n - 2

end

end A077028.P10396018756066778857

namespace A077028

/-- `A309555(n)-2` -/
def P10396018756066778857.Spec : Prop :=
  ∀ n, P10396018756066778857.a n = A077028 n

theorem P10396018756066778857.correct : P10396018756066778857.Spec := by
  intro n
  simp only [A077028, Nat.add_sub_cancel, A077028.P10396018756066778857.a, A077028.P18404356772921913843.a, A309555, A309555.P13111641592475178072.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077028

/-! ## A077028.P6669638417487092350

`floor(sqrt(A082046(n)))`
-/

namespace A077028.P6669638417487092350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A082046 n)

end

end A077028.P6669638417487092350

namespace A077028

/-- `floor(sqrt(A082046(n)))` -/
def P6669638417487092350.Spec : Prop :=
  ∀ n, P6669638417487092350.a n = A077028 n

end A077028

/-! ## A077028.P10464254115167852359

`floor(sqrt(A082105(n)))`
-/

namespace A077028.P10464254115167852359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A082105 n)

end

end A077028.P10464254115167852359

namespace A077028

/-- `floor(sqrt(A082105(n)))` -/
def P10464254115167852359.Spec : Prop :=
  ∀ n, P10464254115167852359.a n = A077028 n

end A077028

/-! ## A077028.P10880403552313444110

`ceil(sqrt(A082039(n)))`
-/

namespace A077028.P10880403552313444110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A082039 n : ℝ)⌉

end

end A077028.P10880403552313444110

namespace A077028

/-- `ceil(sqrt(A082039(n)))` -/
def P10880403552313444110.Spec : Prop :=
  ∀ n, P10880403552313444110.a n = A077028 n

end A077028

/-! ## A077028.P14576475455388729523

`(A296180(n)+2)/3`
-/

namespace A077028.P14576475455388729523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296180 n + 2 : ℚ) / 3

end

end A077028.P14576475455388729523

namespace A077028

/-- `(A296180(n)+2)/3` -/
def P14576475455388729523.Spec : Prop :=
  ∀ n, P14576475455388729523.a n = (A077028 n : ℚ)

theorem P14576475455388729523.correct : P14576475455388729523.Spec := by
  intro n
  simp only [A077028, Nat.add_sub_cancel, A077028.P14576475455388729523.a, A077028.P18404356772921913843.a, A296180, A296180.P14152267377895258393.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077028

/-! ## A077028.P13977069662577181351

`(4-A176625(n))/3`
-/

namespace A077028.P13977069662577181351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 - A176625 n : ℚ) / 3

end

end A077028.P13977069662577181351

namespace A077028

/-- `(4-A176625(n))/3` -/
def P13977069662577181351.Spec : Prop :=
  ∀ n, P13977069662577181351.a n = (A077028 n : ℚ)

theorem P13977069662577181351.correct : P13977069662577181351.Spec := by
  intro n
  simp only [A077028, Nat.add_sub_cancel, A077028.P13977069662577181351.a, A077028.P18404356772921913843.a, A176625, A176625.P17207149786843791027.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077028

/-! ## A077028.P3295707130192794082

`ceil(A130154(n+1)/2)`
-/

namespace A077028.P3295707130192794082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A130154 (n + 1) : ℚ) / 2⌉

end

end A077028.P3295707130192794082

namespace A077028

/-- `ceil(A130154(n+1)/2)` -/
def P3295707130192794082.Spec : Prop :=
  ∀ n, P3295707130192794082.a n = A077028 n

end A077028

/-! ## A077028.P17509442624626382963

`A008619(A157528(n))`
-/

namespace A077028.P17509442624626382963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A157528 n).toNat

end

end A077028.P17509442624626382963

namespace A077028

/-- `A008619(A157528(n))` -/
def P17509442624626382963.Spec : Prop :=
  ∀ n, P17509442624626382963.a n = A077028 n

end A077028

/-! ## A077028.P3381412735614426114

`A128139(A056943(n))`
-/

namespace A077028.P3381412735614426114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128139 (A056943 n).toNat

end

end A077028.P3381412735614426114

namespace A077028

/-- `A128139(A056943(n))` -/
def P3381412735614426114.Spec : Prop :=
  ∀ n, P3381412735614426114.a n = A077028 n

end A077028

/-! ## A077028.P3467923197063980215

`A128139(A083920(n))`
-/

namespace A077028.P3467923197063980215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128139 (A083920 n).toNat

end

end A077028.P3467923197063980215

namespace A077028

/-- `A128139(A083920(n))` -/
def P3467923197063980215.Spec : Prop :=
  ∀ n, P3467923197063980215.a n = A077028 n

end A077028

/-! ## A077028.P1641940678331048561

`A023444(A309555(n))`
-/

namespace A077028.P1641940678331048561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A309555 n).toNat

end

end A077028.P1641940678331048561

namespace A077028

/-- `A023444(A309555(n))` -/
def P1641940678331048561.Spec : Prop :=
  ∀ n, P1641940678331048561.a n = A077028 n

end A077028

/-! ## A077028.P18257588119227818901

`A128139(A271439(n))`
-/

namespace A077028.P18257588119227818901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128139 (A271439 n).toNat

end

end A077028.P18257588119227818901

namespace A077028

/-- `A128139(A271439(n))` -/
def P18257588119227818901.Spec : Prop :=
  ∀ n, P18257588119227818901.a n = A077028 n

end A077028

/-!
# A077029: Rectangle R(i,j) read by ascending antidiagonals: column j has j-1 zeros followed by numbers congruent to 1 mod j-1.

The programs for A077029, there is no canonical definition to state claims against.
-/

/-! ## A077029.P10037243547598215027

`A287146(A089633(n)+(A084468(n+1)-1)/2)`
-/

namespace A077029.P10037243547598215027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287146 (SequenceMachineLib.roundAway ((A089633 n : ℚ) + (A084468 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A077029.P10037243547598215027

/-! ## A077029.P5857565493955030464

`A287146(A089633(n)+A173786(n)+A137688(n))`
-/

namespace A077029.P5857565493955030464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287146 (A089633 n + (A173786 n + A137688 n)).toNat

end

end A077029.P5857565493955030464

/-! ## A077029.P13461332293407728321

`A287146(A089633(n)+A099627(n)+A137688(n)+1)`
-/

namespace A077029.P13461332293407728321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287146 (A089633 n + (A099627 n + (A137688 n + 1))).toNat

end

end A077029.P13461332293407728321

/-! ## A077029.P12800802059743357810

`A287146(A089633(n)+A173786(n)+A140513(n)/2)`
-/

namespace A077029.P12800802059743357810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287146 (SequenceMachineLib.roundAway ((A089633 n : ℚ) + ((A173786 n : ℚ) + (A140513 n : ℚ) / 2))).toNat

end

end A077029.P12800802059743357810

/-! ## A077029.P16666590084038335538

`A290054(n)-A010815(A335219(3*n+1))`
-/

namespace A077029.P16666590084038335538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 n - A010815 (A335219 (3 * n + 1)).toNat

end

end A077029.P16666590084038335538

/-!
# A077034: a(1)=3; a(2n), a(2n+1) are smallest integers > a(2n-1) such that a(2n-1)^2+a(2n)^2=a(2n+1)^2.

The programs for A077034, there is no canonical definition to state claims against.
-/

/-! ## A077034.P15684909374497559361

`∪[A018928(A292125(n+1)), A307077(n+1)]`
-/

namespace A077034.P15684909374497559361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018928 (A292125 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A077034.P15684909374497559361

/-! ## A077034.P4227769651044305613

`∪[A127689(A292125(n+1)), A239381(n)]`
-/

namespace A077034.P4227769651044305613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127689 (A292125 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239381 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A077034.P4227769651044305613

/-! ## A077034.P14847127361388559173

`∪[A018928(n+1), A127689(A292125(n+1))]`
-/

namespace A077034.P14847127361388559173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127689 (A292125 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A077034.P14847127361388559173

/-! ## A077034.P557981828122325084

`∪[A127689(n+2), A028310(A239381(n))]`
-/

namespace A077034.P557981828122325084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127689 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A239381 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A077034.P557981828122325084

/-! ## A077034.P4887742151961501952

`∪[A307077(n+2), A028310(A239381(n))]`
-/

namespace A077034.P4887742151961501952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307077 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A239381 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A077034.P4887742151961501952

/-!
# A077037: Largest prime < n^3.

The programs for A077037, there is no canonical definition to state claims against.
-/

/-! ## A077037.P12067095828410762554

`A007917((n+2)^3)`
-/

namespace A077037.P12067095828410762554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 ((n + 2) ^ 3)

end

end A077037.P12067095828410762554

/-! ## A077037.P17284871881014029834

`A014220(n+2)-A077038(n+2)`
-/

namespace A077037.P17284871881014029834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014220 (n + 2) - A077038 (n + 2)

end

end A077037.P17284871881014029834

/-! ## A077037.P11469659617034824045

`A000578(n+2)-(A077038(n+2)-A121842(n+2))`
-/

namespace A077037.P11469659617034824045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 2) - (A077038 (n + 2) - A121842 (n + 2))

end

end A077037.P11469659617034824045

/-! ## A077037.P7486515595488622196

`(n+2)^3-A121844(n+2)`
-/

namespace A077037.P7486515595488622196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 3 : ℤ) - A121844 (n + 2)

end

end A077037.P7486515595488622196

/-! ## A077037.P10406925208589373660

`A014220(n+2)-A001223(A038098(n+2))`
-/

namespace A077037.P10406925208589373660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014220 (n + 2) - A001223 (A038098 (n + 2)).toNat

end

end A077037.P10406925208589373660

/-! ## A077037.P15486487335449303309

`A014220(n+2)-A001223(∑[A060199(n+1)])`
-/

namespace A077037.P15486487335449303309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014220 (n + 2) - A001223 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A077037.P15486487335449303309

/-!
# A077038: Least difference of primes p, q such that p < n^3 < q.

The programs for A077038, there is no canonical definition to state claims against.
-/

/-! ## A077038.P15380940981660157089

`A014220(n+2)-A077037(n+2)`
-/

namespace A077038.P15380940981660157089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014220 (n + 2) - A077037 (n + 2)

end

end A077038.P15380940981660157089

/-! ## A077038.P5903518767520722732

`A014220(-xor(n+1, -1))%A077037(n+2)`
-/

namespace A077038.P5903518767520722732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014220 (-Int.xor (n + 1 : ℤ) (-1)).toNat) (A077037 (n + 2))

end

end A077038.P5903518767520722732

/-! ## A077038.P3461858515229568060

`A014220(A020725(n+1))%A077037(n+2)`
-/

namespace A077038.P3461858515229568060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014220 (A020725 (n + 1)).toNat) (A077037 (n + 2))

end

end A077038.P3461858515229568060

/-! ## A077038.P2347698441831616935

`A014220(A000027(n+2))%A077037(n+2)`
-/

namespace A077038.P2347698441831616935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014220 (A000027 (n + 2)).toNat) (A077037 (n + 2))

end

end A077038.P2347698441831616935

/-! ## A077038.P13116050649960031301

`A121842(n+2)+A000578(n+2)%A077037(n+2)`
-/

namespace A077038.P13116050649960031301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121842 (n + 2) + Int.tmod (A000578 (n + 2)) (A077037 (n + 2))

end

end A077038.P13116050649960031301

/-! ## A077038.P11995842995728937392

`A121844(n+2)+A121842(n+2)`
-/

namespace A077038.P11995842995728937392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121844 (n + 2) + A121842 (n + 2)

end

end A077038.P11995842995728937392

/-! ## A077038.P3187136852131766764

`A001223(A038098(n+2))`
-/

namespace A077038.P3187136852131766764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A038098 (n + 2)).toNat

end

end A077038.P3187136852131766764

/-! ## A077038.P9170528641627868666

`A001223(∑[A060199(n+1)])`
-/

namespace A077038.P9170528641627868666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A077038.P9170528641627868666

/-!
# A077039: Partial sums of A073579.

The programs for A077039, the canonical program `A077039.P5798426574250483865` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077039 has offset 1).

The definition of A077039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077039.P5798426574250483865

`∑[A073579(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A077039

/-- `∑[A073579(n+1)]` -/
def P5798426574250483865.Spec : Prop :=
  ∀ n, P5798426574250483865.a n = A077039 (n + 1)

theorem P5798426574250483865.correct : P5798426574250483865.Spec := by
  intro n
  simp only [A077039, Nat.add_sub_cancel]

end A077039

/-! ## A077039.P8839298871792034720

`∑[A000040(n+1)*A070750(n+1)]`
-/

namespace A077039.P8839298871792034720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A070750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077039.P8839298871792034720

namespace A077039

/-- `∑[A000040(n+1)*A070750(n+1)]` -/
def P8839298871792034720.Spec : Prop :=
  ∀ n, P8839298871792034720.a n = A077039 (n + 1)

end A077039

/-! ## A077039.P15737225842911134421

`∑[(A006093(n+1)+1)*A070750(n+1)]`
-/

namespace A077039.P15737225842911134421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) * A070750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077039.P15737225842911134421

namespace A077039

/-- `∑[(A006093(n+1)+1)*A070750(n+1)]` -/
def P15737225842911134421.Spec : Prop :=
  ∀ n, P15737225842911134421.a n = A077039 (n + 1)

theorem P15737225842911134421.correct : P15737225842911134421.Spec := by
  intro n
  simp only [A077039, Nat.add_sub_cancel, A077039.P15737225842911134421.f1, A077039.P15737225842911134421.a, A077039.P5798426574250483865.f1, A077039.P5798426574250483865.a, A006093, A006093.P2906174024863549003.a, A070750, A070750.P13196581040963341553.a, A073579, A073579.P1739749270450137857.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A039702, A039702.P9525350324369181383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077039

/-! ## A077039.P2535657591846233796

`∑[A070750(n+1)*A076342(n+1)]+n`
-/

namespace A077039.P2535657591846233796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070750 (n + 1) * A076342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A077039.P2535657591846233796

namespace A077039

/-- `∑[A070750(n+1)*A076342(n+1)]+n` -/
def P2535657591846233796.Spec : Prop :=
  ∀ n, P2535657591846233796.a n = A077039 (n + 1)

end A077039

/-! ## A077039.P1923981107331885781

`∑[record[A006530(n+2)]*A070750(n+1)]`
-/

namespace A077039.P1923981107331885781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A070750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077039.P1923981107331885781

namespace A077039

/-- `∑[record[A006530(n+2)]*A070750(n+1)]` -/
def P1923981107331885781.Spec : Prop :=
  ∀ n, P1923981107331885781.a n = A077039 (n + 1)

end A077039

/-! ## A077039.P998676808156185056

`∑[record[A020639(n+2)]*A070750(n+1)]`
-/

namespace A077039.P998676808156185056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A070750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077039.P998676808156185056

namespace A077039

/-- `∑[record[A020639(n+2)]*A070750(n+1)]` -/
def P998676808156185056.Spec : Prop :=
  ∀ n, P998676808156185056.a n = A077039 (n + 1)

end A077039

/-! ## A077039.P11801398399433875369

`∑[(lt[A000005(n+2), 3]+2)*A070750(n+1)]`
-/

namespace A077039.P11801398399433875369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 2 : ℤ) * A070750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077039.P11801398399433875369

namespace A077039

/-- `∑[(lt[A000005(n+2), 3]+2)*A070750(n+1)]` -/
def P11801398399433875369.Spec : Prop :=
  ∀ n, P11801398399433875369.a n = A077039 (n + 1)

end A077039

/-! ## A077039.P15899537103015779241

`∑[(lt[A000005(n+2), 3]+2)*(1-A006093(n+1)%4)]`
-/

namespace A077039.P15899537103015779241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 2 : ℤ) * (1 - Int.tmod (A006093 (n + 1)) 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077039.P15899537103015779241

namespace A077039

/-- `∑[(lt[A000005(n+2), 3]+2)*(1-A006093(n+1)%4)]` -/
def P15899537103015779241.Spec : Prop :=
  ∀ n, P15899537103015779241.a n = A077039 (n + 1)

end A077039

/-! ## A077039.P18442659554113583063

`∑[A009001(A000040(n+1))]+1`
-/

namespace A077039.P18442659554113583063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A077039.P18442659554113583063

namespace A077039

/-- `∑[A009001(A000040(n+1))]+1` -/
def P18442659554113583063.Spec : Prop :=
  ∀ n, P18442659554113583063.a n = A077039 (n + 1)

end A077039

/-! ## A077039.P1932081996453093152

`∑[A009001(A073846(2*(n+1)))]+1`
-/

namespace A077039.P1932081996453093152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A073846 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A077039.P1932081996453093152

namespace A077039

/-- `∑[A009001(A073846(2*(n+1)))]+1` -/
def P1932081996453093152.Spec : Prop :=
  ∀ n, P1932081996453093152.a n = A077039 (n + 1)

end A077039

/-! ## A077039.P17472995040972990753

`∑[(2-record[A014963(n+2)]%4)*A000040(n+1)]`
-/

namespace A077039.P17472995040972990753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 4) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077039.P17472995040972990753

namespace A077039

/-- `∑[(2-record[A014963(n+2)]%4)*A000040(n+1)]` -/
def P17472995040972990753.Spec : Prop :=
  ∀ n, P17472995040972990753.a n = A077039 (n + 1)

end A077039

/-!
# A077040: Primes p such that abs(A077039(A049084(p))) <= p.

The programs for A077040, there is no canonical definition to state claims against.
-/

/-! ## A077040.P2809689471755644636

`p?[A346447(∑[A000188(n+1)])]`
-/

namespace A077040.P2809689471755644636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346447 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077040.P2809689471755644636

/-! ## A077040.P9116445994057527834

`p?[lt[A322936(n+1), A322966(n+4)]]`
-/

namespace A077040.P9116445994057527834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322936 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322966 (n + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A077040.P9116445994057527834

/-! ## A077040.P14332186903134298556

`A000040(lt[∏{p}[n+1, -#], A337983(3*n+2)])`
-/

namespace A077040.P14332186903134298556
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337983 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)

end

end A077040.P14332186903134298556

/-! ## A077040.P8408604391545258259

`A000040(∑[((∑[A271269(2*(n+2))]²-(n+1))%3)!])`
-/

namespace A077040.P8408604391545258259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271269 (2 * (n + 2))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 - (n + 1 : ℤ)) 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077040.P8408604391545258259

/-! ## A077040.P2622715767736623079

`A000040(lt[A117212(n+1), A301337(n+1)])`
-/

namespace A077040.P2622715767736623079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A077040.P2622715767736623079

/-!
# A077042: Square array read by falling antidiagonals of central polynomial coefficients: largest coefficient in expansion of (1 + x + x^2 + ... + x^(n-1))^k = ((1-x^n)/(1-x))^k, i.e., the coefficient of x^floor(k*(n-1)/2) and of x^ceiling(k*(n-1)/2); also number of compositions of floor(k*(n+1)/2) into exactly k positive integers each no more than n.

The programs for A077042, there is no canonical definition to state claims against.
-/

/-! ## A077042.P18337328456503592954

`A255270(A198321(n)^A025581(n))`
-/

namespace A077042.P18337328456503592954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (SequenceMachineLib.roundAway ((A198321 n : ℚ) ^ (A025581 n : ℤ))).toNat

end

end A077042.P18337328456503592954

/-! ## A077042.P16820008494455632811

`A255270(A198321(n)^A208245(n+1))`
-/

namespace A077042.P16820008494455632811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (SequenceMachineLib.roundAway ((A198321 n : ℚ) ^ (A208245 (n + 1) : ℤ))).toNat

end

end A077042.P16820008494455632811

/-! ## A077042.P7155368255673017672

`A007895(A238010(n)^A000120(n))`
-/

namespace A077042.P7155368255673017672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (SequenceMachineLib.roundAway ((A238010 n : ℚ) ^ (A000120 n : ℤ))).toNat

end

end A077042.P7155368255673017672

/-! ## A077042.P12790613351683923832

`A160385(A238010(n)^A000120(n))`
-/

namespace A077042.P12790613351683923832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (SequenceMachineLib.roundAway ((A238010 n : ℚ) ^ (A000120 n : ℤ))).toNat

end

end A077042.P12790613351683923832

/-! ## A077042.P17515792883612418805

`A104484(A344612(n)^A000194(n))`
-/

namespace A077042.P17515792883612418805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104484 (SequenceMachineLib.roundAway ((A344612 n : ℚ) ^ (A000194 n : ℤ))).toNat

end

end A077042.P17515792883612418805

/-!
# A077043: "Three-quarter squares": a(n) = n^2 - A002620(n).

The programs for A077043, the canonical program `A077043.P527302642051147366` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077043 has offset 0).

The definition of A077043 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²-A002620(n)` (program `A077043.P527302642051147366`, by `A077043.P527302642051147366.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077043.P12625629354308971072

`ceil(3*n²/4)`
-/

namespace A077043.P12625629354308971072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 * n ^ 2 : ℚ) / 4⌉

end

end A077043.P12625629354308971072

namespace A077043

/-- `ceil(3*n²/4)` -/
def P12625629354308971072.Spec : Prop :=
  ∀ n, P12625629354308971072.a n = A077043 n

end A077043

/-! ## A077043.P13474758093416826319

`ogf((x+x^2+x^3)/(1-2x+2x^3-x^4))`
-/

namespace A077043.P13474758093416826319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 1] [1, -2, 0, 2, -1] n

end

end A077043.P13474758093416826319

namespace A077043

/-- `ogf((x+x^2+x^3)/(1-2x+2x^3-x^4))` -/
def P13474758093416826319.Spec : Prop :=
  ∀ n, P13474758093416826319.a n = A077043 n

end A077043

/-! ## A077043.P17004425099965578017

`3*(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A077043.P17004425099965578017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * ((n : ℤ) - 1) + a (n - 2)

end

end A077043.P17004425099965578017

namespace A077043

/-- `3*(n-1)+a(n-2)` -/
def P17004425099965578017.Spec : Prop :=
  ∀ n, P17004425099965578017.a n = A077043 n

end A077043

/-! ## A077043.P527302642051147366

`n²-A002620(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A077043

/-- `n²-A002620(n)` -/
def P527302642051147366.Spec : Prop :=
  ∀ n, P527302642051147366.a n = A077043 n

theorem P527302642051147366.correct : P527302642051147366.Spec := by
  intro n
  simp only [A077043]

end A077043

/-! ## A077043.P1183278482098621512

`∑{#}[n-1, floor((n+#+1)/2)]`
-/

namespace A077043.P1183278482098621512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ⌊(n + (k + 1) : ℚ) / 2⌋

end

end A077043.P1183278482098621512

namespace A077043

/-- `∑{#}[n-1, floor((n+#+1)/2)]` -/
def P1183278482098621512.Spec : Prop :=
  ∀ n, P1183278482098621512.a n = A077043 n

end A077043

/-! ## A077043.P18228781960490117196

`∑[comp[lcm(3, n+1)]]`
-/

namespace A077043.P18228781960490117196
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077043.P18228781960490117196

namespace A077043

/-- `∑[comp[lcm(3, n+1)]]` -/
def P18228781960490117196.Spec : Prop :=
  ∀ n, (P18228781960490117196.a n : ℤ) = A077043 n

end A077043

/-! ## A077043.P1605161764351420884

`∑[record[lcm(9, n)/9]]`
-/

namespace A077043.P1605161764351420884
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 9 n : ℚ) / 9

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077043.P1605161764351420884

namespace A077043

/-- `∑[record[lcm(9, n)/9]]` -/
def P1605161764351420884.Spec : Prop :=
  ∀ n, P1605161764351420884.a n = (A077043 n : ℚ)

end A077043

/-! ## A077043.P4122922998710756161

`∑[record[n/gcd(3, n)]]`
-/

namespace A077043.P4122922998710756161
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 3 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077043.P4122922998710756161

namespace A077043

/-- `∑[record[n/gcd(3, n)]]` -/
def P4122922998710756161.Spec : Prop :=
  ∀ n, P4122922998710756161.a n = (A077043 n : ℚ)

end A077043

/-! ## A077043.P8298615874792816894

`floor(3/(2*acot(n))²)`
-/

namespace A077043.P8298615874792816894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / (2 * SequenceMachineLib.acot (n : ℝ)) ^ 2⌋

end

end A077043.P8298615874792816894

namespace A077043

/-- `floor(3/(2*acot(n))²)` -/
def P8298615874792816894.Spec : Prop :=
  ∀ n, P8298615874792816894.a n = A077043 n

end A077043

/-! ## A077043.P17482740024406714280

`round(3/(2*acot(n))²)`
-/

namespace A077043.P17482740024406714280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 / (2 * SequenceMachineLib.acot (n : ℝ)) ^ 2)

end

end A077043.P17482740024406714280

namespace A077043

/-- `round(3/(2*acot(n))²)` -/
def P17482740024406714280.Spec : Prop :=
  ∀ n, P17482740024406714280.a n = A077043 n

end A077043

/-! ## A077043.P10106085084578722586

`∑[record[n*n²%3]]`
-/

namespace A077043.P10106085084578722586
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n ^ 2 % 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077043.P10106085084578722586

namespace A077043

/-- `∑[record[n*n²%3]]` -/
def P10106085084578722586.Spec : Prop :=
  ∀ n, (P10106085084578722586.a n : ℤ) = A077043 n

end A077043

/-! ## A077043.P8494990962235787973

`∑[comp[a(n-1)+3]]` with `a(0)=3`
-/

namespace A077043.P8494990962235787973
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f2 =>
  f2 (n - 1) + 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077043.P8494990962235787973

namespace A077043

/-- `∑[comp[a(n-1)+3]]` -/
def P8494990962235787973.Spec : Prop :=
  ∀ n, (P8494990962235787973.a n : ℤ) = A077043 n

end A077043

/-! ## A077043.P15546671572921780848

`∑[comp[3*C(n+1, n)]]`
-/

namespace A077043.P15546671572921780848
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (n + 1) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077043.P15546671572921780848

namespace A077043

/-- `∑[comp[3*C(n+1, n)]]` -/
def P15546671572921780848.Spec : Prop :=
  ∀ n, (P15546671572921780848.a n : ℤ) = A077043 n

end A077043

/-! ## A077043.P15937908846393376486

`∑[comp[∑[and(3, n²-1)]]]`
-/

namespace A077043.P15937908846393376486
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 ((n ^ 2 : ℤ) - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077043.P15937908846393376486

namespace A077043

/-- `∑[comp[∑[and(3, n²-1)]]]` -/
def P15937908846393376486.Spec : Prop :=
  ∀ n, (P15937908846393376486.a n : ℤ) = A077043 n

end A077043

/-! ## A077043.P11535335047309201426

`∑[∑[and(1, n)]+n]-n`
-/

namespace A077043.P11535335047309201426
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A077043.P11535335047309201426

namespace A077043

/-- `∑[∑[and(1, n)]+n]-n` -/
def P11535335047309201426.Spec : Prop :=
  ∀ n, P11535335047309201426.a n = A077043 n

end A077043

/-! ## A077043.P12168587770079907360

`∑[a(n-2)+3]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A077043.P12168587770079907360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  f1 (n - 2) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077043.P12168587770079907360

namespace A077043

/-- `∑[a(n-2)+3]` -/
def P12168587770079907360.Spec : Prop :=
  ∀ n, (P12168587770079907360.a n : ℤ) = A077043 n

end A077043

/-! ## A077043.P873331563582479396

`(n%2+3*n²)/4`
-/

namespace A077043.P873331563582479396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 3 * n ^ 2 : ℕ) : ℚ) / 4

end

end A077043.P873331563582479396

namespace A077043

/-- `(n%2+3*n²)/4` -/
def P873331563582479396.Spec : Prop :=
  ∀ n, P873331563582479396.a n = (A077043 n : ℚ)

end A077043

/-! ## A077043.P10688688745983559492

`∑[comp[∑[3*(n+1)%2]]]`
-/

namespace A077043.P10688688745983559492
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1) % 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077043.P10688688745983559492

namespace A077043

/-- `∑[comp[∑[3*(n+1)%2]]]` -/
def P10688688745983559492.Spec : Prop :=
  ∀ n, (P10688688745983559492.a n : ℤ) = A077043 n

end A077043

/-! ## A077043.P11776456085696712074

`∑[comp[∑[3*and(1, n+1)]]]`
-/

namespace A077043.P11776456085696712074
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.land 1 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077043.P11776456085696712074

namespace A077043

/-- `∑[comp[∑[3*and(1, n+1)]]]` -/
def P11776456085696712074.Spec : Prop :=
  ∀ n, (P11776456085696712074.a n : ℤ) = A077043 n

end A077043

/-! ## A077043.P5192230575163880200

`∑[comp[∑[3-a(n-1)]]]` with `a(0)=3`
-/

namespace A077043.P5192230575163880200
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f3 =>
  3 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077043.P5192230575163880200

namespace A077043

/-- `∑[comp[∑[3-a(n-1)]]]` -/
def P5192230575163880200.Spec : Prop :=
  ∀ n, (P5192230575163880200.a n : ℤ) = A077043 n

end A077043

/-!
# A077044: Largest coefficient in expansion of (1 + x + x^2 + ... + x^(n-1))^5 = ((1-x^n)/(1-x))^5, i.e., the coefficient of x^floor(5*(n-1)/2) and of x^ceiling(5*(n-1)/2); also number of compositions of floor(5*(n+1)/2) into exactly 5 positive integers each no more than n.

The programs for A077044, the canonical program `A077044.P571659725924471288` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077044 has offset 0).

The definition of A077044 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077044.P8113013268737437370

`ogf((x+8x^2+29x^3+39x^4+29x^5+8x^6+x^7)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))`
-/

namespace A077044.P8113013268737437370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 8, 29, 39, 29, 8, 1] [1, -2, -2, 6, 0, -6, 2, 2, -1] n

end

end A077044.P8113013268737437370

namespace A077044

/-- `ogf((x+8x^2+29x^3+39x^4+29x^5+8x^6+x^7)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))` -/
def P8113013268737437370.Spec : Prop :=
  ∀ n, P8113013268737437370.a n = A077044 n

end A077044

/-! ## A077044.P571659725924471288

`(230*n^4+70*n²+27-(30*n²+27)*(-1)^n)/384`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A077044

/-- `(230*n^4+70*n²+27-(30*n²+27)*(-1)^n)/384` -/
def P571659725924471288.Spec : Prop :=
  ∀ n, P571659725924471288.a n = (A077044 n : ℚ)

end A077044

/-! ## A077044.P3354424038444512077

`A077042(A000217(n+6)-6)`
-/

namespace A077044.P3354424038444512077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (A000217 (n + 6) - 6).toNat

end

end A077044.P3354424038444512077

namespace A077044

/-- `A077042(A000217(n+6)-6)` -/
def P3354424038444512077.Spec : Prop :=
  ∀ n, P3354424038444512077.a n = A077044 n

end A077044

/-! ## A077044.P2486533191908776145

`A077042(A000124(n+6)-7)`
-/

namespace A077044.P2486533191908776145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (A000124 (n + 6) - 7).toNat

end

end A077044.P2486533191908776145

namespace A077044

/-- `A077042(A000124(n+6)-7)` -/
def P2486533191908776145.Spec : Prop :=
  ∀ n, P2486533191908776145.a n = A077044 n

end A077044

/-! ## A077044.P9295095012142512666

`A077042(eq[6, A004736(n+1)])`
-/

namespace A077044.P9295095012142512666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A077044.P9295095012142512666

namespace A077044

/-- `A077042(eq[6, A004736(n+1)])` -/
def P9295095012142512666.Spec : Prop :=
  ∀ n, P9295095012142512666.a n = A077044 n

end A077044

/-! ## A077044.P9112301210814181523

`A077042(A000096(n+4)+n+1)`
-/

namespace A077044.P9112301210814181523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (A000096 (n + 4) + (n + 1 : ℤ)).toNat

end

end A077044.P9112301210814181523

namespace A077044

/-- `A077042(A000096(n+4)+n+1)` -/
def P9112301210814181523.Spec : Prop :=
  ∀ n, P9112301210814181523.a n = A077044 n

end A077044

/-!
# A077045: Doubly restricted composition numbers: number of compositions of 1+2+3+...+n = n(n+1)/2 into exactly n positive integers each no more than n.

The programs for A077045, there is no canonical definition to state claims against.
-/

/-! ## A077045.P14909146791908413440

`A077042(∑[4*n])`
-/

namespace A077045.P14909146791908413440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077045.P14909146791908413440

/-! ## A077045.P14473536541755164546

`lcm(A077042(A046092(n)), A242179(n))`
-/

namespace A077045.P14473536541755164546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A077042 (A046092 n).toNat) (A242179 n)

end

end A077045.P14473536541755164546

/-! ## A077045.P7384427054003120206

`or(A000007(n), A077042(A046092(n)))`
-/

namespace A077045.P7384427054003120206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A077042 (A046092 n).toNat)

end

end A077045.P7384427054003120206

/-! ## A077045.P9068976713799369999

`or(A000007(n), A077042(A106232(n+1)))`
-/

namespace A077045.P9068976713799369999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A077042 (A106232 (n + 1)).toNat)

end

end A077045.P9068976713799369999

/-! ## A077045.P11496643519384854791

`A077042(A106232(n+1))+A002262(A000217(n))`
-/

namespace A077045.P11496643519384854791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (A106232 (n + 1)).toNat + A002262 (A000217 n).toNat

end

end A077045.P11496643519384854791

/-!
# A077046: Doubly restricted composition numbers: number of compositions of [n^2/2] into exactly n positive integers each strictly less than n.

The programs for A077046, there is no canonical definition to state claims against.
-/

/-! ## A077046.P12628900831887901070

`A077042(A056220(n+1))`
-/

namespace A077046.P12628900831887901070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (A056220 (n + 1)).toNat

end

end A077046.P12628900831887901070

/-! ## A077046.P7524368182683623543

`A077042(A004273((n+1)²))`
-/

namespace A077046.P7524368182683623543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (A004273 ((n + 1) ^ 2)).toNat

end

end A077046.P7524368182683623543

/-! ## A077046.P15531481284656482317

`A077042(eq[2, A219158(n+1)])`
-/

namespace A077046.P15531481284656482317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A077046.P15531481284656482317

/-! ## A077046.P2082375698377694510

`A077042(A001844(n)+2*n)`
-/

namespace A077046.P2082375698377694510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (A001844 n + (2 * n : ℤ)).toNat

end

end A077046.P2082375698377694510

/-! ## A077046.P18406744418352008118

`A077042(A001844(n)+n+n)`
-/

namespace A077046.P18406744418352008118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (A001844 n + (n : ℤ) + (n : ℤ)).toNat

end

end A077046.P18406744418352008118

/-!
# A077047: Doubly restricted composition numbers: number of compositions of floor(n(n+2)/2) into exactly n positive integers each no more than n+1.

The programs for A077047, there is no canonical definition to state claims against.
-/

/-! ## A077047.P4287668792444922652

`A077042(2*(n+1)²)`
-/

namespace A077047.P4287668792444922652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (2 * (n + 1) ^ 2)

end

end A077047.P4287668792444922652

/-! ## A077047.P3220094241214215876

`A077042(A001105(n+1))+A000007(n+4)`
-/

namespace A077047.P3220094241214215876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (A001105 (n + 1)).toNat + A000007 (n + 4)

end

end A077047.P3220094241214215876

/-! ## A077047.P10150029904980933525

`A181567(A006527(n)+A004525(n))`
-/

namespace A077047.P10150029904980933525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181567 (A006527 n + A004525 n).toNat

end

end A077047.P10150029904980933525

/-! ## A077047.P14376316314241515294

`A181567(A006527(n)+A004526(n))`
-/

namespace A077047.P14376316314241515294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181567 (A006527 n + A004526 n).toNat

end

end A077047.P14376316314241515294

/-! ## A077047.P9148410079763641108

`A181567(n-(A004526(n)-A006527(n)))`
-/

namespace A077047.P9148410079763641108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181567 ((n : ℤ) - (A004526 n - A006527 n)).toNat

end

end A077047.P9148410079763641108

/-!
# A077048: Doubly restricted composition numbers: number of compositions of [n^2/2] into up to n positive integers each no more than n.

The programs for A077048, there is no canonical definition to state claims against.
-/

/-! ## A077048.P3182121639792962913

`A059802(a(n-2))+1` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6`
-/

namespace A077048.P3182121639792962913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 6] fun n a =>
  A059802 (a (n - 2)).toNat + 1

end

end A077048.P3182121639792962913

/-! ## A077048.P14148619880929381148

`A325680(n²-n)-2*∑[char[or(n, n+1)+2+n]]`
-/

namespace A077048.P14148619880929381148
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 1) + 2 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325680 (n ^ 2 - n) - ((2 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A077048.P14148619880929381148

/-!
# A077049: Left summatory matrix, T, by antidiagonals upwards.

The programs for A077049, the canonical program `A077049.P4113379091505047421` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077049 has offset 1).

The definition of A077049 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077049.P12474599281016934342

`floor((row(n)-col(n)+1)/(col(n)+1))-floor((row(n)-col(n))/(col(n)+1))`
-/

namespace A077049.P12474599281016934342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 : ℚ) / (SequenceMachineLib.triCol n + 1 : ℚ)⌋ - ⌊((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℚ) / (SequenceMachineLib.triCol n + 1 : ℚ)⌋

end

end A077049.P12474599281016934342

namespace A077049

/-- `floor((row(n)-col(n)+1)/(col(n)+1))-floor((row(n)-col(n))/(col(n)+1))` -/
def P12474599281016934342.Spec : Prop :=
  ∀ n, P12474599281016934342.a n = A077049 (n + 1)

end A077049

/-! ## A077049.P4113379091505047421

`floor(A004736(n+1)/A002260(n+1))-floor((A004736(n+1)-1)/A002260(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A077049

/-- `floor(A004736(n+1)/A002260(n+1))-floor((A004736(n+1)-1)/A002260(n+1))` -/
def P4113379091505047421.Spec : Prop :=
  ∀ n, P4113379091505047421.a n = A077049 (n + 1)

theorem P4113379091505047421.correct : P4113379091505047421.Spec := by
  intro n
  simp only [A077049, Nat.add_sub_cancel]

end A077049

/-! ## A077049.P4465094069164790684

`floor(1/A050205(n+2))`
-/

namespace A077049.P4465094069164790684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A050205 (n + 2) : ℚ)⌋

end

end A077049.P4465094069164790684

namespace A077049

/-- `floor(1/A050205(n+2))` -/
def P4465094069164790684.Spec : Prop :=
  ∀ n, P4465094069164790684.a n = A077049 (n + 1)

end A077049

/-! ## A077049.P4309049159975568974

`(A171233(n+1)+1)²%2`
-/

namespace A077049.P4309049159975568974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A171233 (n + 1) + 1) ^ 2) 2

end

end A077049.P4309049159975568974

namespace A077049

/-- `(A171233(n+1)+1)²%2` -/
def P4309049159975568974.Spec : Prop :=
  ∀ n, P4309049159975568974.a n = A077049 (n + 1)

end A077049

/-! ## A077049.P674707613058535915

`A000007(A051127(n+1))`
-/

namespace A077049.P674707613058535915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A051127 (n + 1)).toNat

end

end A077049.P674707613058535915

namespace A077049

/-- `A000007(A051127(n+1))` -/
def P674707613058535915.Spec : Prop :=
  ∀ n, P674707613058535915.a n = A077049 (n + 1)

end A077049

/-! ## A077049.P7924175438428057508

`A043545(A171233(n+1))`
-/

namespace A077049.P7924175438428057508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (A171233 (n + 1)).toNat

end

end A077049.P7924175438428057508

namespace A077049

/-- `A043545(A171233(n+1))` -/
def P7924175438428057508.Spec : Prop :=
  ∀ n, P7924175438428057508.a n = A077049 (n + 1)

end A077049

/-! ## A077049.P17759461857271418111

`A000035(A171233(n+1)+1)`
-/

namespace A077049.P17759461857271418111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A171233 (n + 1) + 1).toNat

end

end A077049.P17759461857271418111

namespace A077049

/-- `A000035(A171233(n+1)+1)` -/
def P17759461857271418111.Spec : Prop :=
  ∀ n, P17759461857271418111.a n = A077049 (n + 1)

end A077049

/-! ## A077049.P243946646699583568

`A059841(A171233(n+1)+2)`
-/

namespace A077049.P243946646699583568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A171233 (n + 1) + 2).toNat

end

end A077049.P243946646699583568

namespace A077049

/-- `A059841(A171233(n+1)+2)` -/
def P243946646699583568.Spec : Prop :=
  ∀ n, P243946646699583568.a n = A077049 (n + 1)

end A077049

/-! ## A077049.P12839859514963132505

`A023531(A286157(n+1)-1)`
-/

namespace A077049.P12839859514963132505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (A286157 (n + 1) - 1).toNat

end

end A077049.P12839859514963132505

namespace A077049

/-- `A023531(A286157(n+1)-1)` -/
def P12839859514963132505.Spec : Prop :=
  ∀ n, P12839859514963132505.a n = A077049 (n + 1)

end A077049

/-! ## A077049.P17468313224800940278

`A010054(n-A048158(n+1))`
-/

namespace A077049.P17468313224800940278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 ((n : ℤ) - A048158 (n + 1)).toNat

end

end A077049.P17468313224800940278

namespace A077049

/-- `A010054(n-A048158(n+1))` -/
def P17468313224800940278.Spec : Prop :=
  ∀ n, P17468313224800940278.a n = A077049 (n + 1)

end A077049

/-! ## A077049.P5070123604220765330

`A049069(n)%A171233(n+1)`
-/

namespace A077049.P5070123604220765330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049069 n) (A171233 (n + 1))

end

end A077049.P5070123604220765330

namespace A077049

/-- `A049069(n)%A171233(n+1)` -/
def P5070123604220765330.Spec : Prop :=
  ∀ n, P5070123604220765330.a n = A077049 (n + 1)

end A077049

/-! ## A077049.P2298173281935825441

`A051340(n)%A171233(n+1)`
-/

namespace A077049.P2298173281935825441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051340 n) (A171233 (n + 1))

end

end A077049.P2298173281935825441

namespace A077049

/-- `A051340(n)%A171233(n+1)` -/
def P2298173281935825441.Spec : Prop :=
  ∀ n, P2298173281935825441.a n = A077049 (n + 1)

end A077049

/-! ## A077049.P12893448320314068583

`C(A050169(n+1), A074909(n))`
-/

namespace A077049.P12893448320314068583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A050169 (n + 1)).toNat (A074909 n).toNat

end

end A077049.P12893448320314068583

namespace A077049

/-- `C(A050169(n+1), A074909(n))` -/
def P12893448320314068583.Spec : Prop :=
  ∀ n, (P12893448320314068583.a n : ℤ) = A077049 (n + 1)

end A077049

/-! ## A077049.P7645419707916119557

`A008683(ceil(exp(A191904(n+1))²))`
-/

namespace A077049.P7645419707916119557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ⌈Real.exp (A191904 (n + 1) : ℝ) ^ 2⌉.toNat

end

end A077049.P7645419707916119557

namespace A077049

/-- `A008683(ceil(exp(A191904(n+1))²))` -/
def P7645419707916119557.Spec : Prop :=
  ∀ n, P7645419707916119557.a n = A077049 (n + 1)

end A077049

/-! ## A077049.P12516841890451312875

`1-A035363(A171233(n+1)+1)`
-/

namespace A077049.P12516841890451312875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A035363 (A171233 (n + 1) + 1).toNat

end

end A077049.P12516841890451312875

namespace A077049

/-- `1-A035363(A171233(n+1)+1)` -/
def P12516841890451312875.Spec : Prop :=
  ∀ n, P12516841890451312875.a n = A077049 (n + 1)

end A077049

/-! ## A077049.P18056360112878812564

`A008683(2*A171233(n+1))+1`
-/

namespace A077049.P18056360112878812564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * A171233 (n + 1)).toNat + 1

end

end A077049.P18056360112878812564

namespace A077049

/-- `A008683(2*A171233(n+1))+1` -/
def P18056360112878812564.Spec : Prop :=
  ∀ n, P18056360112878812564.a n = A077049 (n + 1)

end A077049

/-! ## A077049.P17100601053347406167

`A171233(n+1)-A171232(n+1)`
-/

namespace A077049.P17100601053347406167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171233 (n + 1) - A171232 (n + 1)

end

end A077049.P17100601053347406167

namespace A077049

/-- `A171233(n+1)-A171232(n+1)` -/
def P17100601053347406167.Spec : Prop :=
  ∀ n, P17100601053347406167.a n = A077049 (n + 1)

theorem P17100601053347406167.correct : P17100601053347406167.Spec := by
  intro n
  simp only [A077049, Nat.add_sub_cancel, A077049.P17100601053347406167.a, A077049.P4113379091505047421.a, A002260, A002260.P9170571874073898642.a, A004736, A004736.P10337537277358081527.a, A171232, A171232.P120387607848267038.a, A171233, A171233.P2556039700440970836.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A003988, A003988.P17998764845825661795.a, A004277, A004277.P16884561295845951342.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A077049

/-! ## A077049.P935509351329337731

`A035214(n-A048158(n+1))-1`
-/

namespace A077049.P935509351329337731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 ((n : ℤ) - A048158 (n + 1)).toNat - 1

end

end A077049.P935509351329337731

namespace A077049

/-- `A035214(n-A048158(n+1))-1` -/
def P935509351329337731.Spec : Prop :=
  ∀ n, P935509351329337731.a n = A077049 (n + 1)

end A077049

/-! ## A077049.P8927143503689319365

`A077051(A038722(n+1))`
-/

namespace A077049.P8927143503689319365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077051 (A038722 (n + 1)).toNat

end

end A077049.P8927143503689319365

namespace A077049

/-- `A077051(A038722(n+1))` -/
def P8927143503689319365.Spec : Prop :=
  ∀ n, P8927143503689319365.a n = A077049 (n + 1)

end A077049

/-! ## A077049.P12670513263042958657

`A010054(A286157(n+1))`
-/

namespace A077049.P12670513263042958657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A286157 (n + 1)).toNat

end

end A077049.P12670513263042958657

namespace A077049

/-- `A010054(A286157(n+1))` -/
def P12670513263042958657.Spec : Prop :=
  ∀ n, P12670513263042958657.a n = A077049 (n + 1)

end A077049

/-!
# A077050: Left Moebius transformation matrix, M, by antidiagonals.

The programs for A077050, there is no canonical definition to state claims against.
-/

/-! ## A077050.P16994657693064135453

`A077052(A038722(n+1))`
-/

namespace A077050.P16994657693064135453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077052 (A038722 (n + 1)).toNat

end

end A077050.P16994657693064135453

/-! ## A077050.P6046796171017569035

`A128407(A286157(n+1))`
-/

namespace A077050.P6046796171017569035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128407 (A286157 (n + 1)).toNat

end

end A077050.P6046796171017569035

/-! ## A077050.P12988824046707571578

`A077052(A278818(n))`
-/

namespace A077050.P12988824046707571578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077052 (A278818 n).toNat

end

end A077050.P12988824046707571578

/-! ## A077050.P17164857858741585611

`A143142(n+1)-char[∑[n+2]]`
-/

namespace A077050.P17164857858741585611
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143142 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A077050.P17164857858741585611

/-! ## A077050.P3140417315916266521

`A143142(n+1)*A307039(n)`
-/

namespace A077050.P3140417315916266521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143142 (n + 1) * A307039 n

end

end A077050.P3140417315916266521

/-! ## A077050.P2766148128693677031

`floor(A143142(n+1)/A051340(n))`
-/

namespace A077050.P2766148128693677031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A143142 (n + 1) : ℚ) / (A051340 n : ℚ)⌋

end

end A077050.P2766148128693677031

/-! ## A077050.P8732307253822214718

`char[A245300(n)]*A143142(n+1)`
-/

namespace A077050.P8732307253822214718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245300 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A143142 (n + 1)

end

end A077050.P8732307253822214718

/-! ## A077050.P14793973793866210326

`A054521(n+1)*A143142(n+1)`
-/

namespace A077050.P14793973793866210326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1) * A143142 (n + 1)

end

end A077050.P14793973793866210326

/-! ## A077050.P822970396009600481

`A077049(n+1)*A143142(n+1)`
-/

namespace A077050.P822970396009600481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077049 (n + 1) * A143142 (n + 1)

end

end A077050.P822970396009600481

/-! ## A077050.P1326029833941748077

`A077605(n+1)*A143142(n+1)`
-/

namespace A077050.P1326029833941748077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077605 (n + 1) * A143142 (n + 1)

end

end A077050.P1326029833941748077

/-! ## A077050.P16450567139642545434

`A143142(n+1)*A349221(n+1)`
-/

namespace A077050.P16450567139642545434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143142 (n + 1) * A349221 (n + 1)

end

end A077050.P16450567139642545434

/-!
# A077051: Right summatory matrix, T, by antidiagonals.

The programs for A077051, the canonical program `A077051.P13341639841933775986` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077051 has offset 1).

The definition of A077051 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077051.P1462064563609740463

`floor((col(n)+1)/(row(n)-col(n)+1))-floor(col(n)/(row(n)-col(n)+1))`
-/

namespace A077051.P1462064563609740463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.triCol n + 1 : ℚ) / ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 : ℚ)⌋ - ⌊(SequenceMachineLib.triCol n : ℚ) / ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 : ℚ)⌋

end

end A077051.P1462064563609740463

namespace A077051

/-- `floor((col(n)+1)/(row(n)-col(n)+1))-floor(col(n)/(row(n)-col(n)+1))` -/
def P1462064563609740463.Spec : Prop :=
  ∀ n, P1462064563609740463.a n = A077051 (n + 1)

end A077051

/-! ## A077051.P13341639841933775986

`floor(A002260(n+1)/A004736(n+1))-floor((A002260(n+1)-1)/A004736(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A077051

/-- `floor(A002260(n+1)/A004736(n+1))-floor((A002260(n+1)-1)/A004736(n+1))` -/
def P13341639841933775986.Spec : Prop :=
  ∀ n, P13341639841933775986.a n = A077051 (n + 1)

theorem P13341639841933775986.correct : P13341639841933775986.Spec := by
  intro n
  simp only [A077051, Nat.add_sub_cancel]

end A077051

/-! ## A077051.P4722055473828338321

`floor(acot(A051126(n+1)))`
-/

namespace A077051.P4722055473828338321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A051126 (n + 1) : ℝ)⌋

end

end A077051.P4722055473828338321

namespace A077051

/-- `floor(acot(A051126(n+1)))` -/
def P4722055473828338321.Spec : Prop :=
  ∀ n, P4722055473828338321.a n = A077051 (n + 1)

end A077051

/-! ## A077051.P7129890696304982787

`ceil(A286561(n+1)/7)`
-/

namespace A077051.P7129890696304982787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A286561 (n + 1) : ℚ) / 7⌉

end

end A077051.P7129890696304982787

namespace A077051

/-- `ceil(A286561(n+1)/7)` -/
def P7129890696304982787.Spec : Prop :=
  ∀ n, P7129890696304982787.a n = A077051 (n + 1)

end A077051

/-! ## A077051.P893056557231904814

`abs(floor(acot(A191907(n+1))))`
-/

namespace A077051.P893056557231904814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊SequenceMachineLib.acot (A191907 (n + 1) : ℝ)⌋|

end

end A077051.P893056557231904814

namespace A077051

/-- `abs(floor(acot(A191907(n+1))))` -/
def P893056557231904814.Spec : Prop :=
  ∀ n, P893056557231904814.a n = A077051 (n + 1)

end A077051

/-! ## A077051.P10062913328843655027

`C(n+1, A286102(n+1))`
-/

namespace A077051.P10062913328843655027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A286102 (n + 1)).toNat

end

end A077051.P10062913328843655027

namespace A077051

/-- `C(n+1, A286102(n+1))` -/
def P10062913328843655027.Spec : Prop :=
  ∀ n, (P10062913328843655027.a n : ℤ) = A077051 (n + 1)

end A077051

/-! ## A077051.P16135067951715472879

`A000007(A051126(n+1))`
-/

namespace A077051.P16135067951715472879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A051126 (n + 1)).toNat

end

end A077051.P16135067951715472879

namespace A077051

/-- `A000007(A051126(n+1))` -/
def P16135067951715472879.Spec : Prop :=
  ∀ n, P16135067951715472879.a n = A077051 (n + 1)

end A077051

/-! ## A077051.P13574862606615117503

`A077049(A038722(n+1))`
-/

namespace A077051.P13574862606615117503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077049 (A038722 (n + 1)).toNat

end

end A077051.P13574862606615117503

namespace A077051

/-- `A077049(A038722(n+1))` -/
def P13574862606615117503.Spec : Prop :=
  ∀ n, P13574862606615117503.a n = A077051 (n + 1)

end A077051

/-! ## A077051.P14739304109509522517

`A077049(A061579(n)+1)`
-/

namespace A077051.P14739304109509522517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077049 (A061579 n + 1).toNat

end

end A077051.P14739304109509522517

namespace A077051

/-- `A077049(A061579(n)+1)` -/
def P14739304109509522517.Spec : Prop :=
  ∀ n, P14739304109509522517.a n = A077051 (n + 1)

end A077051

/-! ## A077051.P4358187062230305980

`A010054(A286156(n+1))`
-/

namespace A077051.P4358187062230305980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A286156 (n + 1)).toNat

end

end A077051.P4358187062230305980

namespace A077051

/-- `A010054(A286156(n+1))` -/
def P4358187062230305980.Spec : Prop :=
  ∀ n, P4358187062230305980.a n = A077051 (n + 1)

end A077051

/-! ## A077051.P16895240196775372531

`C(A051777(n+1), A025581(n))`
-/

namespace A077051.P16895240196775372531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051777 (n + 1)).toNat (A025581 n).toNat

end

end A077051.P16895240196775372531

namespace A077051

/-- `C(A051777(n+1), A025581(n))` -/
def P16895240196775372531.Spec : Prop :=
  ∀ n, (P16895240196775372531.a n : ℤ) = A077051 (n + 1)

end A077051

/-! ## A077051.P10001792011765035496

`∏{d}[A051126(n+1), A051126(#)]`
-/

namespace A077051.P10001792011765035496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A051126 d

end

end A077051.P10001792011765035496

namespace A077051

/-- `∏{d}[A051126(n+1), A051126(#)]` -/
def P10001792011765035496.Spec : Prop :=
  ∀ n, P10001792011765035496.a n = A077051 (n + 1)

end A077051

/-! ## A077051.P15567394800498918689

`C(A051777(n+1)+1, A004736(n+1))`
-/

namespace A077051.P15567394800498918689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051777 (n + 1) + 1).toNat (A004736 (n + 1)).toNat

end

end A077051.P15567394800498918689

namespace A077051

/-- `C(A051777(n+1)+1, A004736(n+1))` -/
def P15567394800498918689.Spec : Prop :=
  ∀ n, (P15567394800498918689.a n : ℤ) = A077051 (n + 1)

end A077051

/-! ## A077051.P2955542574613971804

`C(A048158(A038722(n+1)), A025581(n))`
-/

namespace A077051.P2955542574613971804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A048158 (A038722 (n + 1)).toNat).toNat (A025581 n).toNat

end

end A077051.P2955542574613971804

namespace A077051

/-- `C(A048158(A038722(n+1)), A025581(n))` -/
def P2955542574613971804.Spec : Prop :=
  ∀ n, (P2955542574613971804.a n : ℤ) = A077051 (n + 1)

end A077051

/-! ## A077051.P10665778081577146913

`A000007(A002260(n+1)%A004736(n+1))`
-/

namespace A077051.P10665778081577146913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (A002260 (n + 1)) (A004736 (n + 1))).toNat

end

end A077051.P10665778081577146913

namespace A077051

/-- `A000007(A002260(n+1)%A004736(n+1))` -/
def P10665778081577146913.Spec : Prop :=
  ∀ n, P10665778081577146913.a n = A077051 (n + 1)

end A077051

/-! ## A077051.P13827817855939097643

`val(A000040(A051778(n+4)+1), 3)`
-/

namespace A077051.P13827817855939097643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (A051778 (n + 4) + 1).toNat).toNat 3

end

end A077051.P13827817855939097643

namespace A077051

/-- `val(A000040(A051778(n+4)+1), 3)` -/
def P13827817855939097643.Spec : Prop :=
  ∀ n, (P13827817855939097643.a n : ℤ) = A077051 (n + 1)

end A077051

/-! ## A077051.P12859274106971139950

`A000007(A002262(n+1)%A004736(n+1))`
-/

namespace A077051.P12859274106971139950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (A002262 (n + 1)) (A004736 (n + 1))).toNat

end

end A077051.P12859274106971139950

namespace A077051

/-- `A000007(A002262(n+1)%A004736(n+1))` -/
def P12859274106971139950.Spec : Prop :=
  ∀ n, P12859274106971139950.a n = A077051 (n + 1)

end A077051

/-! ## A077051.P12494266802367262469

`char[eq[1, A051778(n+4)]]`
-/

namespace A077051.P12494266802367262469
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051778 (n + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A077051.P12494266802367262469

namespace A077051

/-- `char[eq[1, A051778(n+4)]]` -/
def P12494266802367262469.Spec : Prop :=
  ∀ n, (P12494266802367262469.a n : ℤ) = A077051 (n + 1)

end A077051

/-! ## A077051.P1230329598345131179

`A197870(A003989(n+1)+n)²`
-/

namespace A077051.P1230329598345131179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197870 (A003989 (n + 1) + (n : ℤ)).toNat ^ 2

end

end A077051.P1230329598345131179

namespace A077051

/-- `A197870(A003989(n+1)+n)²` -/
def P1230329598345131179.Spec : Prop :=
  ∀ n, P1230329598345131179.a n = A077051 (n + 1)

end A077051

/-! ## A077051.P6465086335520531382

`A000007(A002262(A003989(n+1)+n))`
-/

namespace A077051.P6465086335520531382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A002262 (A003989 (n + 1) + (n : ℤ)).toNat).toNat

end

end A077051.P6465086335520531382

namespace A077051

/-- `A000007(A002262(A003989(n+1)+n))` -/
def P6465086335520531382.Spec : Prop :=
  ∀ n, P6465086335520531382.a n = A077051 (n + 1)

end A077051

/-!
# A077052: Right Moebius transformation matrix, M, by antidiagonals.

The programs for A077052, there is no canonical definition to state claims against.
-/

/-! ## A077052.P975638791738150199

`A128407(A286156(n+1))`
-/

namespace A077052.P975638791738150199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128407 (A286156 (n + 1)).toNat

end

end A077052.P975638791738150199

/-! ## A077052.P17164837555198353496

`A008683(A072030(n+1))*A077051(n+1)`
-/

namespace A077052.P17164837555198353496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A072030 (n + 1)).toNat * A077051 (n + 1)

end

end A077052.P17164837555198353496

/-! ## A077052.P9605038459843127465

`A077050(A038722(n+1))`
-/

namespace A077052.P9605038459843127465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077050 (A038722 (n + 1)).toNat

end

end A077052.P9605038459843127465

/-! ## A077052.P3418552337368218262

`A008683(A322550(n+1))`
-/

namespace A077052.P3418552337368218262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A322550 (n + 1)).toNat

end

end A077052.P3418552337368218262

/-! ## A077052.P9836987734556389269

`A008683(A089913(n+1)*A112543(n+1))`
-/

namespace A077052.P9836987734556389269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A089913 (n + 1) * A112543 (n + 1)).toNat

end

end A077052.P9836987734556389269

/-! ## A077052.P5877155774241921918

`∑{d}[A322550(n+1), A007427(#)]`
-/

namespace A077052.P5877155774241921918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007427 d

end

end A077052.P5877155774241921918

/-! ## A077052.P2952168998125644845

`-(A077051(n+1)*A152614(n+1))`
-/

namespace A077052.P2952168998125644845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A077051 (n + 1) * A152614 (n + 1))

end

end A077052.P2952168998125644845

/-!
# A077053: Greatest common divisor of indecomposable Wallis pairs.

The programs for A077053, there is no canonical definition to state claims against.
-/

/-! ## A077053.P13919090173600917341

`gcd(A075768(n+1), A075769(n+1))`
-/

namespace A077053.P13919090173600917341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A075768 (n + 1)) (A075769 (n + 1))

end

end A077053.P13919090173600917341

/-! ## A077053.P9573658176928073365

`gcd(A000005(A221470(n)), A075769(n+1))`
-/

namespace A077053.P9573658176928073365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (A221470 n).toNat) (A075769 (n + 1))

end

end A077053.P9573658176928073365

/-! ## A077053.P8804179765479450317

`gcd(4, A249815(A075769(n+1)))`
-/

namespace A077053.P8804179765479450317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A249815 (A075769 (n + 1)).toNat)

end

end A077053.P8804179765479450317

/-! ## A077053.P9734678895573266184

`gcd(A005811(A075769(n+1)), A127973(n))`
-/

namespace A077053.P9734678895573266184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005811 (A075769 (n + 1)).toNat) (A127973 n)

end

end A077053.P9734678895573266184

/-! ## A077053.P12062286618334595696

`gcd(A068822(A075769(n+1)), A312561(n))`
-/

namespace A077053.P12062286618334595696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068822 (A075769 (n + 1)).toNat) (A312561 n)

end

end A077053.P12062286618334595696

/-!
# A077054: Number of ways a river can cross a road 2n times.

The programs for A077054, there is no canonical definition to state claims against.
-/

/-! ## A077054.P2080685284761580202

`A005316(2*n)`
-/

namespace A077054.P2080685284761580202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005316 (2 * n)

end

end A077054.P2080685284761580202

/-! ## A077054.P7721214157162185011

`A077014(2*n)/2`
-/

namespace A077054.P7721214157162185011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077014 (2 * n) : ℚ) / 2

end

end A077054.P7721214157162185011

/-! ## A077054.P7512104470033644887

`lcm((-1)^n, A005316(A004277(n)))`
-/

namespace A077054.P7512104470033644887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A005316 (A004277 n).toNat)

end

end A077054.P7512104470033644887

/-! ## A077054.P5466743646521227813

`or(A000007(n), A005316(A004277(n)))`
-/

namespace A077054.P5466743646521227813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A005316 (A004277 n).toNat)

end

end A077054.P5466743646521227813

/-! ## A077054.P6135017942496261509

`A005316(A004277(n))%A098739(n+1)`
-/

namespace A077054.P6135017942496261509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005316 (A004277 n).toNat) (A098739 (n + 1))

end

end A077054.P6135017942496261509

/-!
# A077055: Call two meanders from A005316 equivalent if they differ by a reflection in the Y axis (if n even) or by reflections in the X or Y axes (if n odd). Sequence gives number of inequivalent meanders with n crossings.

The programs for A077055, there is no canonical definition to state claims against.
-/

/-! ## A077055.P14365143552610005827

`A086441(n+1)-A223093(n+1)/2`
-/

namespace A077055.P14365143552610005827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086441 (n + 1) : ℚ) - (A223093 (n + 1) : ℚ) / 2

end

end A077055.P14365143552610005827

/-! ## A077055.P10954844703148643281

`A004526(2*A086441(n+1)-A223093(n+1))`
-/

namespace A077055.P10954844703148643281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A086441 (n + 1) - A223093 (n + 1)).toNat

end

end A077055.P10954844703148643281

/-! ## A077055.P8788400970722215944

`A004526(A086441(n+1)+A086441(n+1)-A223093(n+1))`
-/

namespace A077055.P8788400970722215944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A086441 (n + 1) + (A086441 (n + 1) - A223093 (n + 1))).toNat

end

end A077055.P8788400970722215944

/-! ## A077055.P3914728507330580077

`A086441(n+1)-A004526(A223093(n+1))`
-/

namespace A077055.P3914728507330580077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086441 (n + 1) - A004526 (A223093 (n + 1)).toNat

end

end A077055.P3914728507330580077

/-! ## A077055.P4361659145736431735

`A137620(A007748(n+1))`
-/

namespace A077055.P4361659145736431735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137620 (A007748 (n + 1)).toNat

end

end A077055.P4361659145736431735

/-!
# A077056: Total number of "humps" in all A005316(2n) open meanders with 2n crossings.

The programs for A077056, there is no canonical definition to state claims against.
-/

/-! ## A077056.P1713268503848515830

`record[A380369(n)]-A077054(n)`
-/

namespace A077056.P1713268503848515830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A077054 n

end

end A077056.P1713268503848515830

/-! ## A077056.P14452863237362297736

`A006660(2*n+3)-A077054(n)`
-/

namespace A077056.P14452863237362297736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006660 (2 * n + 3) - A077054 n

end

end A077056.P14452863237362297736

/-! ## A077056.P16619795069406781690

`A006660(2*n+3)-A005316(2*n)`
-/

namespace A077056.P16619795069406781690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006660 (2 * n + 3) - A005316 (2 * n)

end

end A077056.P16619795069406781690

/-!
# A077057: Minimal positive solution a(n) of Diophantine equation a(n)^2 - a(n)*b(n) - G(n)*b(n)^2 = +1 or -1 with G(n) := A078358(n). The companion sequence is b(n)=A077058(n).

The programs for A077057, there is no canonical definition to state claims against.
-/

/-! ## A077057.P6028797783155100601

`(A078361(n+1)+A077058(n+1))/2`
-/

namespace A077057.P6028797783155100601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078361 (n + 1) + A077058 (n + 1) : ℚ) / 2

end

end A077057.P6028797783155100601

/-! ## A077057.P17246218771338209721

`A014682(A078361(n+1)+A077058(n+1))`
-/

namespace A077057.P17246218771338209721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A078361 (n + 1) + A077058 (n + 1)).toNat

end

end A077057.P17246218771338209721

/-! ## A077057.P10654501483040892887

`A175126(A078361(n+1)+A077058(n+1))`
-/

namespace A077057.P10654501483040892887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A078361 (n + 1) + A077058 (n + 1)).toNat

end

end A077057.P10654501483040892887

/-! ## A077057.P11285974223147942018

`A004526(A078361(n+1)+A077058(n+1))`
-/

namespace A077057.P11285974223147942018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A078361 (n + 1) + A077058 (n + 1)).toNat

end

end A077057.P11285974223147942018

/-! ## A077057.P16355529437032465815

`A026741(A078361(n+1)+A077058(n+1))`
-/

namespace A077057.P16355529437032465815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A078361 (n + 1) + A077058 (n + 1)).toNat

end

end A077057.P16355529437032465815

/-!
# A077058: Minimal positive solution a(n) of Diophantine equation b(n)^2 - b(n)*a(n) - G(n)*a(n)^2 = +1 or -1 with G(n) := A078358(n). The companion sequence is b(n)=A077057(n).

The programs for A077058, there is no canonical definition to state claims against.
-/

/-! ## A077058.P7188113163013530010

`2*A077057(n+1)-A078361(n+1)`
-/

namespace A077058.P7188113163013530010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077057 (n + 1) - A078361 (n + 1)

end

end A077058.P7188113163013530010

/-! ## A077058.P9823497138472282490

`A004277(A077057(n+1))-A078361(n+1)`
-/

namespace A077058.P9823497138472282490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A077057 (n + 1)).toNat - A078361 (n + 1)

end

end A077058.P9823497138472282490

/-! ## A077058.P18281676033604312888

`A053373(A187829(n+1)-A102684(n))`
-/

namespace A077058.P18281676033604312888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053373 (A187829 (n + 1) - A102684 n).toNat

end

end A077058.P18281676033604312888

/-! ## A077058.P9621871141568575954

`A053373(A187829(n+1)-Δ[A053392(n)])`
-/

namespace A077058.P9621871141568575954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053373 (A187829 (n + 1) - (f1 (n + 1) - f1 n)).toNat

end

end A077058.P9621871141568575954

/-! ## A077058.P3543815091512772458

`A053373(A187829(n+1)-A004216(n+1))`
-/

namespace A077058.P3543815091512772458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053373 (A187829 (n + 1) - A004216 (n + 1)).toNat

end

end A077058.P3543815091512772458

/-!
# A077059: Numbers j such that j^2 + k^2 is a cube for some k > j.

The programs for A077059, there is no canonical definition to state claims against.
-/

/-! ## A077059.P9762267322060952709

`lt[0, A077062(n)]`
-/

namespace A077059.P9762267322060952709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A077059.P9762267322060952709

/-! ## A077059.P18330962842240230065

`eq[A000122(3*n+2), A000122(A077062(n))]`
-/

namespace A077059.P18330962842240230065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A077062 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077059.P18330962842240230065

/-!
# A077060: Smallest k>A077059(n) such that A077059(n)^2+k^2 is a cube (=A077061(n)^3).

The programs for A077060, there is no canonical definition to state claims against.
-/

/-! ## A077060.P11656783310067604388

`A077062(A077059(n+1))`
-/

namespace A077060.P11656783310067604388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077062 (A077059 (n + 1)).toNat

end

end A077060.P11656783310067604388

/-! ## A077060.P12405930064372676031

`A077062(lt[0, A077062(n)])`
-/

namespace A077060.P12405930064372676031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077062 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A077060.P12405930064372676031

/-! ## A077060.P10836038521218906006

`A077062(comp[n-A077062(n)])`
-/

namespace A077060.P10836038521218906006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A077062 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077062 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A077060.P10836038521218906006

/-! ## A077060.P692142119587830424

`filter[A077062(n), A023532(#)]`
-/

namespace A077060.P692142119587830424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A023532 (f1 j).toNat = 1) n)

end

end A077060.P692142119587830424

/-! ## A077060.P5147008818779774487

`filter[A077062(n), A043545(#)]`
-/

namespace A077060.P5147008818779774487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A077060.P5147008818779774487

/-!
# A077061: a(n) = ( A077059(n)^2 + A077060(n)^2 )^(1/3).

The programs for A077061, there is no canonical definition to state claims against.
-/

/-! ## A077061.P3352535484569160935

`(A077059(n+1)²+A077060(n+1)²)^(1/3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A077061.P3352535484569160935
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A077059 (n + 1) ^ 2 + A077060 (n + 1) ^ 2 : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A077061.P3352535484569160935

/-!
# A077063: Squarefree kernel of prime(n) - 1.

The programs for A077063, the canonical program `A077063.P14507967671238301962` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077063 has offset 1).

The definition of A077063 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077063.P14507967671238301962

`A007947(A006093(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A077063

/-- `A007947(A006093(n+1))` -/
def P14507967671238301962.Spec : Prop :=
  ∀ n, P14507967671238301962.a n = A077063 (n + 1)

theorem P14507967671238301962.correct : P14507967671238301962.Spec := by
  intro n
  simp only [A077063, Nat.add_sub_cancel]

end A077063

/-! ## A077063.P5679541936603773181

`∏{p}[A006093(n+1), #]`
-/

namespace A077063.P5679541936603773181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A077063.P5679541936603773181

namespace A077063

/-- `∏{p}[A006093(n+1), #]` -/
def P5679541936603773181.Spec : Prop :=
  ∀ n, (P5679541936603773181.a n : ℤ) = A077063 (n + 1)

end A077063

/-! ## A077063.P14046033690927660349

`∏{p}[sqrt(A005722(n+1)), #]`
-/

namespace A077063.P14046033690927660349
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A005722 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A077063.P14046033690927660349

namespace A077063

/-- `∏{p}[sqrt(A005722(n+1)), #]` -/
def P14046033690927660349.Spec : Prop :=
  ∀ n, (P14046033690927660349.a n : ℤ) = A077063 (n + 1)

end A077063

/-! ## A077063.P8614245904507621346

`∏{p}[A040976(n+1)+1, #]`
-/

namespace A077063.P8614245904507621346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A077063.P8614245904507621346

namespace A077063

/-- `∏{p}[A040976(n+1)+1, #]` -/
def P8614245904507621346.Spec : Prop :=
  ∀ n, (P8614245904507621346.a n : ℤ) = A077063 (n + 1)

end A077063

/-! ## A077063.P10845007901174733503

`∏{p}[1-A000040(n+1), #]`
-/

namespace A077063.P10845007901174733503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A077063.P10845007901174733503

namespace A077063

/-- `∏{p}[1-A000040(n+1), #]` -/
def P10845007901174733503.Spec : Prop :=
  ∀ n, (P10845007901174733503.a n : ℤ) = A077063 (n + 1)

end A077063

/-! ## A077063.P16048646934496983171

`∏{p}[1-A006005(n+1), #]`
-/

namespace A077063.P16048646934496983171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A006005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A077063.P16048646934496983171

namespace A077063

/-- `∏{p}[1-A006005(n+1), #]` -/
def P16048646934496983171.Spec : Prop :=
  ∀ n, (P16048646934496983171.a n : ℤ) = A077063 (n + 1)

end A077063

/-! ## A077063.P797192942304803207

`∏{p}[A086801(n+1)+2, #]`
-/

namespace A077063.P797192942304803207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A077063.P797192942304803207

namespace A077063

/-- `∏{p}[A086801(n+1)+2, #]` -/
def P797192942304803207.Spec : Prop :=
  ∀ n, (P797192942304803207.a n : ℤ) = A077063 (n + 1)

end A077063

/-! ## A077063.P4473954276144284827

`∏{p}[2-A008864(n+1), #]`
-/

namespace A077063.P4473954276144284827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A008864 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A077063.P4473954276144284827

namespace A077063

/-- `∏{p}[2-A008864(n+1), #]` -/
def P4473954276144284827.Spec : Prop :=
  ∀ n, (P4473954276144284827.a n : ℤ) = A077063 (n + 1)

end A077063

/-! ## A077063.P18135964475394002298

`∏{p}[A037168(n+1)/2, #]`
-/

namespace A077063.P18135964475394002298
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037168 (n + 1) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A077063.P18135964475394002298

namespace A077063

/-- `∏{p}[A037168(n+1)/2, #]` -/
def P18135964475394002298.Spec : Prop :=
  ∀ n, (P18135964475394002298.a n : ℤ) = A077063 (n + 1)

end A077063

/-! ## A077063.P12007734378636362344

`A006093(n+1)/A356093(n+1)`
-/

namespace A077063.P12007734378636362344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) : ℚ) / (A356093 (n + 1) : ℚ)

end

end A077063.P12007734378636362344

namespace A077063

/-- `A006093(n+1)/A356093(n+1)` -/
def P12007734378636362344.Spec : Prop :=
  ∀ n, P12007734378636362344.a n = (A077063 (n + 1) : ℚ)

end A077063

/-! ## A077063.P9769795294334156812

`gcd(A005722(n+1), A275630(n+1))`
-/

namespace A077063.P9769795294334156812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005722 (n + 1)) (A275630 (n + 1))

end

end A077063.P9769795294334156812

namespace A077063

/-- `gcd(A005722(n+1), A275630(n+1))` -/
def P9769795294334156812.Spec : Prop :=
  ∀ n, (P9769795294334156812.a n : ℤ) = A077063 (n + 1)

end A077063

/-! ## A077063.P8971784882587301378

`∏{p}[record[A000010(n+1)], #]`
-/

namespace A077063.P8971784882587301378
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A077063.P8971784882587301378

namespace A077063

/-- `∏{p}[record[A000010(n+1)], #]` -/
def P8971784882587301378.Spec : Prop :=
  ∀ n, (P8971784882587301378.a n : ℤ) = A077063 (n + 1)

end A077063

/-! ## A077063.P1776841027550906795

`A007947(record[A000010(n+1)])`
-/

namespace A077063.P1776841027550906795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A077063.P1776841027550906795

namespace A077063

/-- `A007947(record[A000010(n+1)])` -/
def P1776841027550906795.Spec : Prop :=
  ∀ n, P1776841027550906795.a n = A077063 (n + 1)

end A077063

/-! ## A077063.P9336990483659313291

`A007947(A000040(n+1)-1)`
-/

namespace A077063.P9336990483659313291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A000040 (n + 1) - 1).toNat

end

end A077063.P9336990483659313291

namespace A077063

/-- `A007947(A000040(n+1)-1)` -/
def P9336990483659313291.Spec : Prop :=
  ∀ n, P9336990483659313291.a n = A077063 (n + 1)

end A077063

/-! ## A077063.P17059460820460569989

`A007947(A008578(n+2)-1)`
-/

namespace A077063.P17059460820460569989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A008578 (n + 2) - 1).toNat

end

end A077063.P17059460820460569989

namespace A077063

/-- `A007947(A008578(n+2)-1)` -/
def P17059460820460569989.Spec : Prop :=
  ∀ n, P17059460820460569989.a n = A077063 (n + 1)

end A077063

/-! ## A077063.P11112251494134415287

`A007947(A008864(n+1)-2)`
-/

namespace A077063.P11112251494134415287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A008864 (n + 1) - 2).toNat

end

end A077063.P11112251494134415287

namespace A077063

/-- `A007947(A008864(n+1)-2)` -/
def P11112251494134415287.Spec : Prop :=
  ∀ n, P11112251494134415287.a n = A077063 (n + 1)

theorem P11112251494134415287.correct : P11112251494134415287.Spec := by
  intro n
  simp only [A077063, Nat.add_sub_cancel, A077063.P11112251494134415287.a, A077063.P14507967671238301962.a, A006093, A006093.P2906174024863549003.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008864, A008864.P9177617808325052279.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077063

/-! ## A077063.P4955709209004470333

`A007947(A028815(n+1)-2)`
-/

namespace A077063.P4955709209004470333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A028815 (n + 1) - 2).toNat

end

end A077063.P4955709209004470333

namespace A077063

/-- `A007947(A028815(n+1)-2)` -/
def P4955709209004470333.Spec : Prop :=
  ∀ n, P4955709209004470333.a n = A077063 (n + 1)

end A077063

/-! ## A077063.P1361642418274606852

`A007947(A014688(n+1)-(n+2))`
-/

namespace A077063.P1361642418274606852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A014688 (n + 1) - (n + 2 : ℤ)).toNat

end

end A077063.P1361642418274606852

namespace A077063

/-- `A007947(A014688(n+1)-(n+2))` -/
def P1361642418274606852.Spec : Prop :=
  ∀ n, P1361642418274606852.a n = A077063 (n + 1)

end A077063

/-! ## A077063.P10531248289091543759

`A007947(A167136(n+2)-(n+2))`
-/

namespace A077063.P10531248289091543759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A167136 (n + 2) - (n + 2 : ℤ)).toNat

end

end A077063.P10531248289091543759

namespace A077063

/-- `A007947(A167136(n+2)-(n+2))` -/
def P10531248289091543759.Spec : Prop :=
  ∀ n, P10531248289091543759.a n = A077063 (n + 1)

end A077063

/-! ## A077063.P1743479864071033962

`∏{p}[record[∏{p}[n, #-1]], #]`
-/

namespace A077063.P1743479864071033962
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A077063.P1743479864071033962

namespace A077063

/-- `∏{p}[record[∏{p}[n, #-1]], #]` -/
def P1743479864071033962.Spec : Prop :=
  ∀ n, (P1743479864071033962.a n : ℤ) = A077063 (n + 1)

end A077063

/-!
# A077064: Squarefree numbers of form prime - 1.

The programs for A077064, the canonical program `A077064.P16565391587089475239` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077064 has offset 1).

The definition of A077064 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077064.P16565391587089475239

`A039787(n+1)-1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A077064

/-- `A039787(n+1)-1` -/
def P16565391587089475239.Spec : Prop :=
  ∀ n, P16565391587089475239.a n = A077064 (n + 1)

theorem P16565391587089475239.correct : P16565391587089475239.Spec := by
  intro n
  simp only [A077064, Nat.add_sub_cancel]

end A077064

/-! ## A077064.P594831513874911826

`A260196(ceil(n/3)+2)+A039787(n+1)`
-/

namespace A077064.P594831513874911826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (⌈(n : ℚ) / 3⌉ + 2).toNat + A039787 (n + 1)

end

end A077064.P594831513874911826

namespace A077064

/-- `A260196(ceil(n/3)+2)+A039787(n+1)` -/
def P594831513874911826.Spec : Prop :=
  ∀ n, P594831513874911826.a n = A077064 (n + 1)

end A077064

/-! ## A077064.P10874061797238101733

`A057428(A006519(n+1))+A039787(n+1)`
-/

namespace A077064.P10874061797238101733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A006519 (n + 1)).toNat + A039787 (n + 1)

end

end A077064.P10874061797238101733

namespace A077064

/-- `A057428(A006519(n+1))+A039787(n+1)` -/
def P10874061797238101733.Spec : Prop :=
  ∀ n, P10874061797238101733.a n = A077064 (n + 1)

end A077064

/-! ## A077064.P3608560213772633878

`A057428(n+1)+A039787(n+1)`
-/

namespace A077064.P3608560213772633878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A039787 (n + 1)

end

end A077064.P3608560213772633878

namespace A077064

/-- `A057428(n+1)+A039787(n+1)` -/
def P3608560213772633878.Spec : Prop :=
  ∀ n, P3608560213772633878.a n = A077064 (n + 1)

end A077064

/-! ## A077064.P17782728556065298523

`∩[A039786(n+1), A045326(n+1)]-1`
-/

namespace A077064.P17782728556065298523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A077064.P17782728556065298523

namespace A077064

/-- `∩[A039786(n+1), A045326(n+1)]-1` -/
def P17782728556065298523.Spec : Prop :=
  ∀ n, P17782728556065298523.a n = A077064 (n + 1)

end A077064

/-! ## A077064.P7068734856372751783

`p?[A049196(n+1)]-1`
-/

namespace A077064.P7068734856372751783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A077064.P7068734856372751783

namespace A077064

/-- `p?[A049196(n+1)]-1` -/
def P7068734856372751783.Spec : Prop :=
  ∀ n, P7068734856372751783.a n = A077064 (n + 1)

end A077064

/-! ## A077064.P1394668876395595413

`p?[A049149(n+1)]-1`
-/

namespace A077064.P1394668876395595413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A077064.P1394668876395595413

namespace A077064

/-- `p?[A049149(n+1)]-1` -/
def P1394668876395595413.Spec : Prop :=
  ∀ n, P1394668876395595413.a n = A077064 (n + 1)

end A077064

/-! ## A077064.P8626180746727012140

`p?[A069579(n+1)]-1`
-/

namespace A077064.P8626180746727012140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A077064.P8626180746727012140

namespace A077064

/-- `p?[A069579(n+1)]-1` -/
def P8626180746727012140.Spec : Prop :=
  ∀ n, P8626180746727012140.a n = A077064 (n + 1)

end A077064

/-! ## A077064.P14405416532033268129

`p?[A226384(n+1)]-1`
-/

namespace A077064.P14405416532033268129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A077064.P14405416532033268129

namespace A077064

/-- `p?[A226384(n+1)]-1` -/
def P14405416532033268129.Spec : Prop :=
  ∀ n, P14405416532033268129.a n = A077064 (n + 1)

end A077064

/-! ## A077064.P11721278963746658000

`record[A069114(n+1)]`
-/

namespace A077064.P11721278963746658000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077064.P11721278963746658000

namespace A077064

/-- `record[A069114(n+1)]` -/
def P11721278963746658000.Spec : Prop :=
  ∀ n, P11721278963746658000.a n = A077064 (n + 1)

end A077064

/-! ## A077064.P5006752958390755649

`record[A077063(n+1)]`
-/

namespace A077064.P5006752958390755649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077064.P5006752958390755649

namespace A077064

/-- `record[A077063(n+1)]` -/
def P5006752958390755649.Spec : Prop :=
  ∀ n, P5006752958390755649.a n = A077064 (n + 1)

end A077064

/-! ## A077064.P13330162818714433004

`∩[A006093(n+1), A112925(n+1)]`
-/

namespace A077064.P13330162818714433004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077064.P13330162818714433004

namespace A077064

/-- `∩[A006093(n+1), A112925(n+1)]` -/
def P13330162818714433004.Spec : Prop :=
  ∀ n, (P13330162818714433004.a n : ℤ) = A077064 (n + 1)

end A077064

/-! ## A077064.P5355965526520401748

`∩[A281664(n+1), A112925(n+1)]`
-/

namespace A077064.P5355965526520401748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077064.P5355965526520401748

namespace A077064

/-- `∩[A281664(n+1), A112925(n+1)]` -/
def P5355965526520401748.Spec : Prop :=
  ∀ n, (P5355965526520401748.a n : ℤ) = A077064 (n + 1)

end A077064

/-! ## A077064.P1101704327522398227

`∩[A112925(n+1), A130099(n+1)]`
-/

namespace A077064.P1101704327522398227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077064.P1101704327522398227

namespace A077064

/-- `∩[A112925(n+1), A130099(n+1)]` -/
def P1101704327522398227.Spec : Prop :=
  ∀ n, (P1101704327522398227.a n : ℤ) = A077064 (n + 1)

end A077064

/-! ## A077064.P5643600610789225966

`record[∏{p}[record[A000010(2*n+1)], #]]`
-/

namespace A077064.P5643600610789225966
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077064.P5643600610789225966

namespace A077064

/-- `record[∏{p}[record[A000010(2*n+1)], #]]` -/
def P5643600610789225966.Spec : Prop :=
  ∀ n, (P5643600610789225966.a n : ℤ) = A077064 (n + 1)

end A077064

/-! ## A077064.P12209816330632119901

`A000010(A039787(n+1))`
-/

namespace A077064.P12209816330632119901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A039787 (n + 1)).toNat

end

end A077064.P12209816330632119901

namespace A077064

/-- `A000010(A039787(n+1))` -/
def P12209816330632119901.Spec : Prop :=
  ∀ n, P12209816330632119901.a n = A077064 (n + 1)

end A077064

/-! ## A077064.P15063010816438435696

`record[A007913(A003958(n+1))]`
-/

namespace A077064.P15063010816438435696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A003958 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077064.P15063010816438435696

namespace A077064

/-- `record[A007913(A003958(n+1))]` -/
def P15063010816438435696.Spec : Prop :=
  ∀ n, P15063010816438435696.a n = A077064 (n + 1)

end A077064

/-! ## A077064.P8954520090346539328

`record[A000010(A049196(n+1))]`
-/

namespace A077064.P8954520090346539328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A049196 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077064.P8954520090346539328

namespace A077064

/-- `record[A000010(A049196(n+1))]` -/
def P8954520090346539328.Spec : Prop :=
  ∀ n, P8954520090346539328.a n = A077064 (n + 1)

end A077064

/-! ## A077064.P14061688753187414155

`record[A000010(A069579(n+1))]`
-/

namespace A077064.P14061688753187414155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A069579 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077064.P14061688753187414155

namespace A077064

/-- `record[A000010(A069579(n+1))]` -/
def P14061688753187414155.Spec : Prop :=
  ∀ n, P14061688753187414155.a n = A077064 (n + 1)

end A077064

/-! ## A077064.P7941516059429409353

`record[A000010(A226384(n+1))]`
-/

namespace A077064.P7941516059429409353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A226384 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077064.P7941516059429409353

namespace A077064

/-- `record[A000010(A226384(n+1))]` -/
def P7941516059429409353.Spec : Prop :=
  ∀ n, P7941516059429409353.a n = A077064 (n + 1)

end A077064

/-!
# A077065: Semiprimes of form prime - 1.

The programs for A077065, the canonical program `A077065.P3431251406781570749` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077065 has offset 1).

The definition of A077065 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005385, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A077065.P3431251406781570749

`A005385(n+1)-1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A077065

/-- `A005385(n+1)-1` -/
def P3431251406781570749.Spec : Prop :=
  ∀ n, P3431251406781570749.a n = A077065 (n + 1)

theorem P3431251406781570749.correct : P3431251406781570749.Spec := by
  intro n
  simp only [A077065, Nat.add_sub_cancel]

end A077065

/-! ## A077065.P15465208554238566874

`2*A005384(n+1)`
-/

namespace A077065.P15465208554238566874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005384 (n + 1)

end

end A077065.P15465208554238566874

namespace A077065

/-- `2*A005384(n+1)` -/
def P15465208554238566874.Spec : Prop :=
  ∀ n, P15465208554238566874.a n = A077065 (n + 1)

theorem P15465208554238566874.correct : P15465208554238566874.Spec := by
  intro n
  simp only [A077065, Nat.add_sub_cancel, A077065.P15465208554238566874.a, A077065.P3431251406781570749.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A005385, A005385.P12850744102754472242.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, A348717, A348717.P703712104273003584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077065

/-! ## A077065.P8697787884027325330

`A077068(n+1)-A232342(n+1)`
-/

namespace A077065.P8697787884027325330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077068 (n + 1) - A232342 (n + 1)

end

end A077065.P8697787884027325330

namespace A077065

/-- `A077068(n+1)-A232342(n+1)` -/
def P8697787884027325330.Spec : Prop :=
  ∀ n, P8697787884027325330.a n = A077065 (n + 1)

theorem P8697787884027325330.correct : P8697787884027325330.Spec := by
  intro n
  simp only [A077065, Nat.add_sub_cancel, A077065.P8697787884027325330.a, A077065.P3431251406781570749.a, A005385, A005385.P12850744102754472242.a, A077068, A077068.P14869786235870196485.a, A232342, A232342.P12753495415627519153.a, A005383, A005383.P14491179252099632441.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A246277, A246277.P3450750564944014413.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077065

/-! ## A077065.P7943506217762397912

`A000010(A194593(n+2))`
-/

namespace A077065.P7943506217762397912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A194593 (n + 2)).toNat

end

end A077065.P7943506217762397912

namespace A077065

/-- `A000010(A194593(n+2))` -/
def P7943506217762397912.Spec : Prop :=
  ∀ n, P7943506217762397912.a n = A077065 (n + 1)

end A077065

/-! ## A077065.P1374348688655000545

`2*(A176045(n+1)-1)`
-/

namespace A077065.P1374348688655000545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A176045 (n + 1) - 1)

end

end A077065.P1374348688655000545

namespace A077065

/-- `2*(A176045(n+1)-1)` -/
def P1374348688655000545.Spec : Prop :=
  ∀ n, P1374348688655000545.a n = A077065 (n + 1)

theorem P1374348688655000545.correct : P1374348688655000545.Spec := by
  intro n
  simp only [A077065, Nat.add_sub_cancel, A077065.P1374348688655000545.a, A077065.P3431251406781570749.a, A005385, A005385.P12850744102754472242.a, A176045, A176045.P10228396740254184789.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077065

/-! ## A077065.P8948770875807896187

`A059322(n)+a(n-1)` with `a(0)=4`
-/

namespace A077065.P8948770875807896187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A059322 n + a (n - 1)

end

end A077065.P8948770875807896187

namespace A077065

/-- `A059322(n)+a(n-1)` -/
def P8948770875807896187.Spec : Prop :=
  ∀ n, P8948770875807896187.a n = A077065 (n + 1)

end A077065

/-! ## A077065.P14013172875009842650

`2*floor(A175666(n+1)/3)`
-/

namespace A077065.P14013172875009842650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(A175666 (n + 1) : ℚ) / 3⌋

end

end A077065.P14013172875009842650

namespace A077065

/-- `2*floor(A175666(n+1)/3)` -/
def P14013172875009842650.Spec : Prop :=
  ∀ n, P14013172875009842650.a n = A077065 (n + 1)

end A077065

/-! ## A077065.P1758016358775996525

`A175666(n+1)-A176045(n+1)`
-/

namespace A077065.P1758016358775996525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175666 (n + 1) - A176045 (n + 1)

end

end A077065.P1758016358775996525

namespace A077065

/-- `A175666(n+1)-A176045(n+1)` -/
def P1758016358775996525.Spec : Prop :=
  ∀ n, P1758016358775996525.a n = A077065 (n + 1)

theorem P1758016358775996525.correct : P1758016358775996525.Spec := by
  intro n
  simp only [A077065, Nat.add_sub_cancel, A077065.P1758016358775996525.a, A077065.P3431251406781570749.a, A005385, A005385.P12850744102754472242.a, A175666, A175666.P11802829545752177848.a, A176045, A176045.P10228396740254184789.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077065

/-! ## A077065.P8274793485290720179

`A194593(n+2)-(A176045(n+1)+A176045(n+1))`
-/

namespace A077065.P8274793485290720179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194593 (n + 2) - (A176045 (n + 1) + A176045 (n + 1))

end

end A077065.P8274793485290720179

namespace A077065

/-- `A194593(n+2)-(A176045(n+1)+A176045(n+1))` -/
def P8274793485290720179.Spec : Prop :=
  ∀ n, P8274793485290720179.a n = A077065 (n + 1)

end A077065

/-! ## A077065.P12020801649289927751

`A079148(n+3)-1`
-/

namespace A077065.P12020801649289927751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079148 (n + 3) - 1

end

end A077065.P12020801649289927751

namespace A077065

/-- `A079148(n+3)-1` -/
def P12020801649289927751.Spec : Prop :=
  ∀ n, P12020801649289927751.a n = A077065 (n + 1)

end A077065

/-! ## A077065.P4602127376331918844

`2*p?[A348511(n+1)]`
-/

namespace A077065.P4602127376331918844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077065.P4602127376331918844

namespace A077065

/-- `2*p?[A348511(n+1)]` -/
def P4602127376331918844.Spec : Prop :=
  ∀ n, P4602127376331918844.a n = A077065 (n + 1)

theorem P4602127376331918844.correct : P4602127376331918844.Spec := by
  intro n
  simp only [A077065, Nat.add_sub_cancel, A077065.P4602127376331918844.f1, A077065.P4602127376331918844.a, A077065.P3431251406781570749.a, A005385, A005385.P12850744102754472242.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A246277, A246277.P3450750564944014413.a, A348717, A348717.P703712104273003584.a, A122111, A122111.P18124015185857335041.a, A243074, A243074.P6910029884229255604.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077065

/-! ## A077065.P18425563818950321096

`2*p?[A364926(n+1)]`
-/

namespace A077065.P18425563818950321096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077065.P18425563818950321096

namespace A077065

/-- `2*p?[A364926(n+1)]` -/
def P18425563818950321096.Spec : Prop :=
  ∀ n, P18425563818950321096.a n = A077065 (n + 1)

end A077065

/-! ## A077065.P3004754745817956036

`∩[A164977(n+1), A276983(n+1)]`
-/

namespace A077065.P3004754745817956036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077065.P3004754745817956036

namespace A077065

/-- `∩[A164977(n+1), A276983(n+1)]` -/
def P3004754745817956036.Spec : Prop :=
  ∀ n, (P3004754745817956036.a n : ℤ) = A077065 (n + 1)

end A077065

/-! ## A077065.P11218813250446534382

`∩[A276983(n+1), A319450(n+1)]`
-/

namespace A077065.P11218813250446534382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077065.P11218813250446534382

namespace A077065

/-- `∩[A276983(n+1), A319450(n+1)]` -/
def P11218813250446534382.Spec : Prop :=
  ∀ n, (P11218813250446534382.a n : ℤ) = A077065 (n + 1)

end A077065

/-! ## A077065.P7080097554113654785

`∩[A380101(n+1), A276983(n+1)]`
-/

namespace A077065.P7080097554113654785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077065.P7080097554113654785

namespace A077065

/-- `∩[A380101(n+1), A276983(n+1)]` -/
def P7080097554113654785.Spec : Prop :=
  ∀ n, (P7080097554113654785.a n : ℤ) = A077065 (n + 1)

end A077065

/-! ## A077065.P1239774746889502479

`∩[A164977(n+1), A333197(n+1)]`
-/

namespace A077065.P1239774746889502479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077065.P1239774746889502479

namespace A077065

/-- `∩[A164977(n+1), A333197(n+1)]` -/
def P1239774746889502479.Spec : Prop :=
  ∀ n, (P1239774746889502479.a n : ℤ) = A077065 (n + 1)

end A077065

/-! ## A077065.P2503063286473763935

`p?[A065966(n+1)]-1`
-/

namespace A077065.P2503063286473763935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A077065.P2503063286473763935

namespace A077065

/-- `p?[A065966(n+1)]-1` -/
def P2503063286473763935.Spec : Prop :=
  ∀ n, P2503063286473763935.a n = A077065 (n + 1)

end A077065

/-! ## A077065.P9404800881603518379

`record[2*A112037(n+2)]`
-/

namespace A077065.P9404800881603518379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112037 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077065.P9404800881603518379

namespace A077065

/-- `record[2*A112037(n+2)]` -/
def P9404800881603518379.Spec : Prop :=
  ∀ n, P9404800881603518379.a n = A077065 (n + 1)

end A077065

/-! ## A077065.P1657278752563936330

`∩[A111206(n+1), A164977(n+1)]`
-/

namespace A077065.P1657278752563936330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077065.P1657278752563936330

namespace A077065

/-- `∩[A111206(n+1), A164977(n+1)]` -/
def P1657278752563936330.Spec : Prop :=
  ∀ n, (P1657278752563936330.a n : ℤ) = A077065 (n + 1)

end A077065

/-! ## A077065.P3885871573898862587

`∩[A111206(n+1), A276983(n+1)]`
-/

namespace A077065.P3885871573898862587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077065.P3885871573898862587

namespace A077065

/-- `∩[A111206(n+1), A276983(n+1)]` -/
def P3885871573898862587.Spec : Prop :=
  ∀ n, (P3885871573898862587.a n : ℤ) = A077065 (n + 1)

end A077065

/-!
# A077066: Squarefree kernel of prime(n) + 1.

The programs for A077066, the canonical program `A077066.P2629297782265208839` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077066 has offset 1).

The definition of A077066 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077066.P2629297782265208839

`A007947(A008864(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A077066

/-- `A007947(A008864(n+1))` -/
def P2629297782265208839.Spec : Prop :=
  ∀ n, P2629297782265208839.a n = A077066 (n + 1)

theorem P2629297782265208839.correct : P2629297782265208839.Spec := by
  intro n
  simp only [A077066, Nat.add_sub_cancel]

end A077066

/-! ## A077066.P8360525958059703494

`∏{p}[A008864(n+1), #]`
-/

namespace A077066.P8360525958059703494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A077066.P8360525958059703494

namespace A077066

/-- `∏{p}[A008864(n+1), #]` -/
def P8360525958059703494.Spec : Prop :=
  ∀ n, (P8360525958059703494.a n : ℤ) = A077066 (n + 1)

end A077066

/-! ## A077066.P154032781297518250

`∏{p}[A028815(n+1), #]`
-/

namespace A077066.P154032781297518250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A077066.P154032781297518250

namespace A077066

/-- `∏{p}[A028815(n+1), #]` -/
def P154032781297518250.Spec : Prop :=
  ∀ n, (P154032781297518250.a n : ℤ) = A077066 (n + 1)

end A077066

/-! ## A077066.P2300561745563271943

`∏{p}[A000040(n+1)+1, #]`
-/

namespace A077066.P2300561745563271943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A077066.P2300561745563271943

namespace A077066

/-- `∏{p}[A000040(n+1)+1, #]` -/
def P2300561745563271943.Spec : Prop :=
  ∀ n, (P2300561745563271943.a n : ℤ) = A077066 (n + 1)

end A077066

/-! ## A077066.P11800406087774358140

`∏{p}[A006093(n+1)+2, #]`
-/

namespace A077066.P11800406087774358140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A077066.P11800406087774358140

namespace A077066

/-- `∏{p}[A006093(n+1)+2, #]` -/
def P11800406087774358140.Spec : Prop :=
  ∀ n, (P11800406087774358140.a n : ℤ) = A077066 (n + 1)

end A077066

/-! ## A077066.P14839390675124965582

`A275630(n+1)/A356489(n+1)`
-/

namespace A077066.P14839390675124965582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275630 (n + 1) : ℚ) / (A356489 (n + 1) : ℚ)

end

end A077066.P14839390675124965582

namespace A077066

/-- `A275630(n+1)/A356489(n+1)` -/
def P14839390675124965582.Spec : Prop :=
  ∀ n, P14839390675124965582.a n = (A077066 (n + 1) : ℚ)

end A077066

/-! ## A077066.P16126423430377872232

`gcd(A008864(n+1), A275630(n+1))`
-/

namespace A077066.P16126423430377872232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008864 (n + 1)) (A275630 (n + 1))

end

end A077066.P16126423430377872232

namespace A077066

/-- `gcd(A008864(n+1), A275630(n+1))` -/
def P16126423430377872232.Spec : Prop :=
  ∀ n, (P16126423430377872232.a n : ℤ) = A077066 (n + 1)

end A077066

/-! ## A077066.P9983787860066026327

`∏{p}[A299763(n+2), #]`
-/

namespace A077066.P9983787860066026327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A077066.P9983787860066026327

namespace A077066

/-- `∏{p}[A299763(n+2), #]` -/
def P9983787860066026327.Spec : Prop :=
  ∀ n, (P9983787860066026327.a n : ℤ) = A077066 (n + 1)

end A077066

/-! ## A077066.P14184389023813010396

`A007947(A028815(n+1))`
-/

namespace A077066.P14184389023813010396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A028815 (n + 1)).toNat

end

end A077066.P14184389023813010396

namespace A077066

/-- `A007947(A028815(n+1))` -/
def P14184389023813010396.Spec : Prop :=
  ∀ n, P14184389023813010396.a n = A077066 (n + 1)

end A077066

/-! ## A077066.P13078105354233627330

`A007947(A299763(n+2))`
-/

namespace A077066.P13078105354233627330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A299763 (n + 2)).toNat

end

end A077066.P13078105354233627330

namespace A077066

/-- `A007947(A299763(n+2))` -/
def P13078105354233627330.Spec : Prop :=
  ∀ n, P13078105354233627330.a n = A077066 (n + 1)

end A077066

/-! ## A077066.P16368046682511726769

`A007947(A000040(n+1)+1)`
-/

namespace A077066.P16368046682511726769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A000040 (n + 1) + 1).toNat

end

end A077066.P16368046682511726769

namespace A077066

/-- `A007947(A000040(n+1)+1)` -/
def P16368046682511726769.Spec : Prop :=
  ∀ n, P16368046682511726769.a n = A077066 (n + 1)

end A077066

/-! ## A077066.P6886828351037698978

`A007947(A006093(n+1)+2)`
-/

namespace A077066.P6886828351037698978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A006093 (n + 1) + 2).toNat

end

end A077066.P6886828351037698978

namespace A077066

/-- `A007947(A006093(n+1)+2)` -/
def P6886828351037698978.Spec : Prop :=
  ∀ n, P6886828351037698978.a n = A077066 (n + 1)

theorem P6886828351037698978.correct : P6886828351037698978.Spec := by
  intro n
  simp only [A077066, Nat.add_sub_cancel, A077066.P6886828351037698978.a, A077066.P2629297782265208839.a, A006093, A006093.P2906174024863549003.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008864, A008864.P9177617808325052279.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077066

/-! ## A077066.P4942101217867258516

`A007947(A008578(n+2)+1)`
-/

namespace A077066.P4942101217867258516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A008578 (n + 2) + 1).toNat

end

end A077066.P4942101217867258516

namespace A077066

/-- `A007947(A008578(n+2)+1)` -/
def P4942101217867258516.Spec : Prop :=
  ∀ n, P4942101217867258516.a n = A077066 (n + 1)

end A077066

/-! ## A077066.P1780086602669302120

`A007947(A052147(n+1)-1)`
-/

namespace A077066.P1780086602669302120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A052147 (n + 1) - 1).toNat

end

end A077066.P1780086602669302120

namespace A077066

/-- `A007947(A052147(n+1)-1)` -/
def P1780086602669302120.Spec : Prop :=
  ∀ n, P1780086602669302120.a n = A077066 (n + 1)

theorem P1780086602669302120.correct : P1780086602669302120.Spec := by
  intro n
  simp only [A077066, Nat.add_sub_cancel, A077066.P1780086602669302120.a, A077066.P2629297782265208839.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008864, A008864.P9177617808325052279.a, A052147, A052147.P15217781913070555828.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077066

/-! ## A077066.P11734762434680002908

`A007947(A113935(n+1)-2)`
-/

namespace A077066.P11734762434680002908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A113935 (n + 1) - 2).toNat

end

end A077066.P11734762434680002908

namespace A077066

/-- `A007947(A113935(n+1)-2)` -/
def P11734762434680002908.Spec : Prop :=
  ∀ n, P11734762434680002908.a n = A077066 (n + 1)

theorem P11734762434680002908.correct : P11734762434680002908.Spec := by
  intro n
  simp only [A077066, Nat.add_sub_cancel, A077066.P11734762434680002908.a, A077066.P2629297782265208839.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008864, A008864.P9177617808325052279.a, A113935, A113935.P8490065931569907193.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077066

/-! ## A077066.P11613300936539402965

`A007947(A014688(n+1)-n)`
-/

namespace A077066.P11613300936539402965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A014688 (n + 1) - (n : ℤ)).toNat

end

end A077066.P11613300936539402965

namespace A077066

/-- `A007947(A014688(n+1)-n)` -/
def P11613300936539402965.Spec : Prop :=
  ∀ n, P11613300936539402965.a n = A077066 (n + 1)

end A077066

/-! ## A077066.P4266522597408307098

`A007947(A167136(n+2)-n)`
-/

namespace A077066.P4266522597408307098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A167136 (n + 2) - (n : ℤ)).toNat

end

end A077066.P4266522597408307098

namespace A077066

/-- `A007947(A167136(n+2)-n)` -/
def P4266522597408307098.Spec : Prop :=
  ∀ n, P4266522597408307098.a n = A077066 (n + 1)

end A077066

/-! ## A077066.P4379259836792060057

`A007947(∑[A054541(n+1)]+1)`
-/

namespace A077066.P4379259836792060057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A077066.P4379259836792060057

namespace A077066

/-- `A007947(∑[A054541(n+1)]+1)` -/
def P4379259836792060057.Spec : Prop :=
  ∀ n, P4379259836792060057.a n = A077066 (n + 1)

end A077066

/-! ## A077066.P16042145449264814671

`A007947(record[A000010(n+1)+2])`
-/

namespace A077066.P16042145449264814671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A077066.P16042145449264814671

namespace A077066

/-- `A007947(record[A000010(n+1)+2])` -/
def P16042145449264814671.Spec : Prop :=
  ∀ n, P16042145449264814671.a n = A077066 (n + 1)

end A077066

/-! ## A077066.P6037553376969562202

`A007947(A000203(A000040(n+1)))`
-/

namespace A077066.P6037553376969562202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A000203 (A000040 (n + 1)).toNat).toNat

end

end A077066.P6037553376969562202

namespace A077066

/-- `A007947(A000203(A000040(n+1)))` -/
def P6037553376969562202.Spec : Prop :=
  ∀ n, P6037553376969562202.a n = A077066 (n + 1)

end A077066

/-!
# A077067: Squarefree numbers of the form prime + 1.

The programs for A077067, the canonical program `A077067.P10029377516240445440` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077067 has offset 1).

The definition of A077067 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049097, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A077067.P10029377516240445440

`A049097(n+1)+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A077067

/-- `A049097(n+1)+1` -/
def P10029377516240445440.Spec : Prop :=
  ∀ n, P10029377516240445440.a n = A077067 (n + 1)

theorem P10029377516240445440.correct : P10029377516240445440.Spec := by
  intro n
  simp only [A077067, Nat.add_sub_cancel]

end A077067

/-! ## A077067.P10003152895918308422

`p?[A065301(n+1)]+1`
-/

namespace A077067.P10003152895918308422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A077067.P10003152895918308422

namespace A077067

/-- `p?[A065301(n+1)]+1` -/
def P10003152895918308422.Spec : Prop :=
  ∀ n, P10003152895918308422.a n = A077067 (n + 1)

end A077067

/-! ## A077067.P16427596536246550984

`∩[A002313(n+1), A065301(n+1)]+1`
-/

namespace A077067.P16427596536246550984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A077067.P16427596536246550984

namespace A077067

/-- `∩[A002313(n+1), A065301(n+1)]+1` -/
def P16427596536246550984.Spec : Prop :=
  ∀ n, (P16427596536246550984.a n : ℤ) = A077067 (n + 1)

end A077067

/-! ## A077067.P6715128333855809839

`∩[A002313(n+1), A075430(n+1)]+1`
-/

namespace A077067.P6715128333855809839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A077067.P6715128333855809839

namespace A077067

/-- `∩[A002313(n+1), A075430(n+1)]+1` -/
def P6715128333855809839.Spec : Prop :=
  ∀ n, (P6715128333855809839.a n : ℤ) = A077067 (n + 1)

end A077067

/-! ## A077067.P14285868216658633902

`∩[A042998(n+1), A065301(n+1)]+1`
-/

namespace A077067.P14285868216658633902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A077067.P14285868216658633902

namespace A077067

/-- `∩[A042998(n+1), A065301(n+1)]+1` -/
def P14285868216658633902.Spec : Prop :=
  ∀ n, (P14285868216658633902.a n : ℤ) = A077067 (n + 1)

end A077067

/-! ## A077067.P9089749685223995747

`p?[A065300(n+1)]+1`
-/

namespace A077067.P9089749685223995747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A077067.P9089749685223995747

namespace A077067

/-- `p?[A065300(n+1)]+1` -/
def P9089749685223995747.Spec : Prop :=
  ∀ n, P9089749685223995747.a n = A077067 (n + 1)

end A077067

/-! ## A077067.P9800673407407754073

`∩[A002313(n+1), A065300(n+1)]+1`
-/

namespace A077067.P9800673407407754073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A077067.P9800673407407754073

namespace A077067

/-- `∩[A002313(n+1), A065300(n+1)]+1` -/
def P9800673407407754073.Spec : Prop :=
  ∀ n, (P9800673407407754073.a n : ℤ) = A077067 (n + 1)

end A077067

/-! ## A077067.P15606697904134437815

`∩[A042998(n+1), A065300(n+1)]+1`
-/

namespace A077067.P15606697904134437815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A077067.P15606697904134437815

namespace A077067

/-- `∩[A042998(n+1), A065300(n+1)]+1` -/
def P15606697904134437815.Spec : Prop :=
  ∀ n, (P15606697904134437815.a n : ℤ) = A077067 (n + 1)

end A077067

/-! ## A077067.P13386089402340408988

`record[A069115(n+1)]`
-/

namespace A077067.P13386089402340408988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077067.P13386089402340408988

namespace A077067

/-- `record[A069115(n+1)]` -/
def P13386089402340408988.Spec : Prop :=
  ∀ n, P13386089402340408988.a n = A077067 (n + 1)

end A077067

/-! ## A077067.P9061739726735666339

`record[A077066(n+1)]`
-/

namespace A077067.P9061739726735666339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077067.P9061739726735666339

namespace A077067

/-- `record[A077066(n+1)]` -/
def P9061739726735666339.Spec : Prop :=
  ∀ n, P9061739726735666339.a n = A077067 (n + 1)

end A077067

/-! ## A077067.P14841933132708741677

`p?[A112926(n+1)-1]+1`
-/

namespace A077067.P14841933132708741677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112926 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A077067.P14841933132708741677

namespace A077067

/-- `p?[A112926(n+1)-1]+1` -/
def P14841933132708741677.Spec : Prop :=
  ∀ n, P14841933132708741677.a n = A077067 (n + 1)

end A077067

/-! ## A077067.P17922459798902402776

`A008864(A120068(n+1))`
-/

namespace A077067.P17922459798902402776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A120068 (n + 1)).toNat

end

end A077067.P17922459798902402776

namespace A077067

/-- `A008864(A120068(n+1))` -/
def P17922459798902402776.Spec : Prop :=
  ∀ n, P17922459798902402776.a n = A077067 (n + 1)

end A077067

/-! ## A077067.P15247181267321315417

`∩[A112926(n+1), A028815(n)]`
-/

namespace A077067.P15247181267321315417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077067.P15247181267321315417

namespace A077067

/-- `∩[A112926(n+1), A028815(n)]` -/
def P15247181267321315417.Spec : Prop :=
  ∀ n, (P15247181267321315417.a n : ℤ) = A077067 (n + 1)

end A077067

/-! ## A077067.P8429616859166716582

`∩[A008864(n+1), A112926(n+1)]`
-/

namespace A077067.P8429616859166716582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077067.P8429616859166716582

namespace A077067

/-- `∩[A008864(n+1), A112926(n+1)]` -/
def P8429616859166716582.Spec : Prop :=
  ∀ n, (P8429616859166716582.a n : ℤ) = A077067 (n + 1)

end A077067

/-! ## A077067.P7977517809896413227

`∩[A112926(n+1), A135731(n+1)]`
-/

namespace A077067.P7977517809896413227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077067.P7977517809896413227

namespace A077067

/-- `∩[A112926(n+1), A135731(n+1)]` -/
def P7977517809896413227.Spec : Prop :=
  ∀ n, (P7977517809896413227.a n : ℤ) = A077067 (n + 1)

end A077067

/-! ## A077067.P13752636517049098274

`record[gcd(A008864(n+1), A275630(n+1))]`
-/

namespace A077067.P13752636517049098274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008864 (n + 1)) (A275630 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077067.P13752636517049098274

namespace A077067

/-- `record[gcd(A008864(n+1), A275630(n+1))]` -/
def P13752636517049098274.Spec : Prop :=
  ∀ n, (P13752636517049098274.a n : ℤ) = A077067 (n + 1)

end A077067

/-! ## A077067.P18388503668324115695

`∩[A000040(n+1), A065300(n+1)]+1`
-/

namespace A077067.P18388503668324115695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A077067.P18388503668324115695

namespace A077067

/-- `∩[A000040(n+1), A065300(n+1)]+1` -/
def P18388503668324115695.Spec : Prop :=
  ∀ n, (P18388503668324115695.a n : ℤ) = A077067 (n + 1)

end A077067

/-! ## A077067.P9747939642197439860

`∩[A000040(n+1), A065301(n+1)]+1`
-/

namespace A077067.P9747939642197439860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A077067.P9747939642197439860

namespace A077067

/-- `∩[A000040(n+1), A065301(n+1)]+1` -/
def P9747939642197439860.Spec : Prop :=
  ∀ n, (P9747939642197439860.a n : ℤ) = A077067 (n + 1)

end A077067

/-! ## A077067.P12200213872756542436

`∩[A000040(n+1)+1, A112926(n+1)]`
-/

namespace A077067.P12200213872756542436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077067.P12200213872756542436

namespace A077067

/-- `∩[A000040(n+1)+1, A112926(n+1)]` -/
def P12200213872756542436.Spec : Prop :=
  ∀ n, (P12200213872756542436.a n : ℤ) = A077067 (n + 1)

end A077067

/-! ## A077067.P11692941482932360059

`p?[A000040(n+1)*A240474(n+1)]+1`
-/

namespace A077067.P11692941482932360059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A240474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A077067.P11692941482932360059

namespace A077067

/-- `p?[A000040(n+1)*A240474(n+1)]+1` -/
def P11692941482932360059.Spec : Prop :=
  ∀ n, P11692941482932360059.a n = A077067 (n + 1)

end A077067

/-!
# A077068: Semiprimes of the form prime + 1.

The programs for A077068, the canonical program `A077068.P14869786235870196485` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077068 has offset 1).

The definition of A077068 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077068.P14869786235870196485

`A005383(n+1)+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A077068

/-- `A005383(n+1)+1` -/
def P14869786235870196485.Spec : Prop :=
  ∀ n, P14869786235870196485.a n = A077068 (n + 1)

theorem P14869786235870196485.correct : P14869786235870196485.Spec := by
  intro n
  simp only [A077068, Nat.add_sub_cancel]

end A077068

/-! ## A077068.P3545053514545037573

`A089965(n+1)+2`
-/

namespace A077068.P3545053514545037573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089965 (n + 1) + 2

end

end A077068.P3545053514545037573

namespace A077068

/-- `A089965(n+1)+2` -/
def P3545053514545037573.Spec : Prop :=
  ∀ n, P3545053514545037573.a n = A077068 (n + 1)

theorem P3545053514545037573.correct : P3545053514545037573.Spec := by
  intro n
  simp only [A077068, Nat.add_sub_cancel, A077068.P3545053514545037573.a, A077068.P14869786235870196485.a, A005383, A005383.P14491179252099632441.a, A089965, A089965.P14211704364200362511.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A027697, A027697.P9273385272130382931.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077068

/-! ## A077068.P16342284488479641838

`2*A005382(n+1)`
-/

namespace A077068.P16342284488479641838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005382 (n + 1)

end

end A077068.P16342284488479641838

namespace A077068

/-- `2*A005382(n+1)` -/
def P16342284488479641838.Spec : Prop :=
  ∀ n, P16342284488479641838.a n = A077068 (n + 1)

theorem P16342284488479641838.correct : P16342284488479641838.Spec := by
  intro n
  simp only [A077068, Nat.add_sub_cancel, A077068.P16342284488479641838.a, A077068.P14869786235870196485.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A005383, A005383.P14491179252099632441.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A027697, A027697.P9273385272130382931.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A027698, A027698.P6769785550994187236.f1, A027698.P6769785550994187236.f2, A027698.P6769785550994187236.a, A093688, A093688.P16553081961736122512.f1, A093688.P16553081961736122512.f2, A093688.P16553081961736122512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077068

/-! ## A077068.P2726920615144174634

`2*(A351875(n+1)+1)`
-/

namespace A077068.P2726920615144174634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A351875 (n + 1) + 1)

end

end A077068.P2726920615144174634

namespace A077068

/-- `2*(A351875(n+1)+1)` -/
def P2726920615144174634.Spec : Prop :=
  ∀ n, P2726920615144174634.a n = A077068 (n + 1)

theorem P2726920615144174634.correct : P2726920615144174634.Spec := by
  intro n
  simp only [A077068, Nat.add_sub_cancel, A077068.P2726920615144174634.a, A077068.P14869786235870196485.a, A005383, A005383.P14491179252099632441.a, A351875, A351875.P8085341493502060080.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A027697, A027697.P9273385272130382931.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077068

/-! ## A077068.P8638715520315947503

`A232342(n+1)+A077065(n+1)`
-/

namespace A077068.P8638715520315947503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232342 (n + 1) + A077065 (n + 1)

end

end A077068.P8638715520315947503

namespace A077068

/-- `A232342(n+1)+A077065(n+1)` -/
def P8638715520315947503.Spec : Prop :=
  ∀ n, P8638715520315947503.a n = A077068 (n + 1)

theorem P8638715520315947503.correct : P8638715520315947503.Spec := by
  intro n
  simp only [A077068, Nat.add_sub_cancel, A077068.P8638715520315947503.a, A077068.P14869786235870196485.a, A005383, A005383.P14491179252099632441.a, A077065, A077065.P3431251406781570749.a, A232342, A232342.P12753495415627519153.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A005385, A005385.P12850744102754472242.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A027697, A027697.P9273385272130382931.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077068

/-! ## A077068.P542473450660809904

`A340509(n+1)-A351875(n+1)`
-/

namespace A077068.P542473450660809904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340509 (n + 1) - A351875 (n + 1)

end

end A077068.P542473450660809904

namespace A077068

/-- `A340509(n+1)-A351875(n+1)` -/
def P542473450660809904.Spec : Prop :=
  ∀ n, P542473450660809904.a n = A077068 (n + 1)

theorem P542473450660809904.correct : P542473450660809904.Spec := by
  intro n
  simp only [A077068, Nat.add_sub_cancel, A077068.P542473450660809904.a, A077068.P14869786235870196485.a, A005383, A005383.P14491179252099632441.a, A340509, A340509.P8307359629526885014.a, A351875, A351875.P8085341493502060080.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A027697, A027697.P9273385272130382931.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077068

/-! ## A077068.P13248193278497932545

`A005382(n+1)+A351875(n+1)+1`
-/

namespace A077068.P13248193278497932545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1) + (A351875 (n + 1) + 1)

end

end A077068.P13248193278497932545

namespace A077068

/-- `A005382(n+1)+A351875(n+1)+1` -/
def P13248193278497932545.Spec : Prop :=
  ∀ n, P13248193278497932545.a n = A077068 (n + 1)

theorem P13248193278497932545.correct : P13248193278497932545.Spec := by
  intro n
  simp only [A077068, Nat.add_sub_cancel, A077068.P13248193278497932545.a, A077068.P14869786235870196485.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A005383, A005383.P14491179252099632441.a, A351875, A351875.P8085341493502060080.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A027697, A027697.P9273385272130382931.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A027698, A027698.P6769785550994187236.f1, A027698.P6769785550994187236.f2, A027698.P6769785550994187236.a, A093688, A093688.P16553081961736122512.f1, A093688.P16553081961736122512.f2, A093688.P16553081961736122512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077068

/-! ## A077068.P11467233120744592134

`A340509(n+1)+1-A005382(n+1)`
-/

namespace A077068.P11467233120744592134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340509 (n + 1) + (1 - A005382 (n + 1))

end

end A077068.P11467233120744592134

namespace A077068

/-- `A340509(n+1)+1-A005382(n+1)` -/
def P11467233120744592134.Spec : Prop :=
  ∀ n, P11467233120744592134.a n = A077068 (n + 1)

theorem P11467233120744592134.correct : P11467233120744592134.Spec := by
  intro n
  simp only [A077068, Nat.add_sub_cancel, A077068.P11467233120744592134.a, A077068.P14869786235870196485.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A005383, A005383.P14491179252099632441.a, A340509, A340509.P8307359629526885014.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A027697, A027697.P9273385272130382931.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A027698, A027698.P6769785550994187236.f1, A027698.P6769785550994187236.f2, A027698.P6769785550994187236.a, A093688, A093688.P16553081961736122512.f1, A093688.P16553081961736122512.f2, A093688.P16553081961736122512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077068

/-! ## A077068.P1590420721636654616

`(A129521(n+1)+A005382(n+1))/A005382(n+1)`
-/

namespace A077068.P1590420721636654616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129521 (n + 1) + A005382 (n + 1) : ℚ) / (A005382 (n + 1) : ℚ)

end

end A077068.P1590420721636654616

namespace A077068

/-- `(A129521(n+1)+A005382(n+1))/A005382(n+1)` -/
def P1590420721636654616.Spec : Prop :=
  ∀ n, P1590420721636654616.a n = (A077068 (n + 1) : ℚ)

end A077068

/-! ## A077068.P9162305567824158271

`A079147(n+2)+1`
-/

namespace A077068.P9162305567824158271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079147 (n + 2) + 1

end

end A077068.P9162305567824158271

namespace A077068

/-- `A079147(n+2)+1` -/
def P9162305567824158271.Spec : Prop :=
  ∀ n, P9162305567824158271.a n = A077068 (n + 1)

end A077068

/-! ## A077068.P626378850242299158

`2*p?[A174568(n+1)]`
-/

namespace A077068.P626378850242299158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077068.P626378850242299158

namespace A077068

/-- `2*p?[A174568(n+1)]` -/
def P626378850242299158.Spec : Prop :=
  ∀ n, P626378850242299158.a n = A077068 (n + 1)

end A077068

/-! ## A077068.P10752115896333261282

`p?[A048968(n+1)]+1`
-/

namespace A077068.P10752115896333261282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A077068.P10752115896333261282

namespace A077068

/-- `p?[A048968(n+1)]+1` -/
def P10752115896333261282.Spec : Prop :=
  ∀ n, P10752115896333261282.a n = A077068 (n + 1)

end A077068

/-! ## A077068.P12204519771749171438

`p?[A057920(n+1)]+1`
-/

namespace A077068.P12204519771749171438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A077068.P12204519771749171438

namespace A077068

/-- `p?[A057920(n+1)]+1` -/
def P12204519771749171438.Spec : Prop :=
  ∀ n, P12204519771749171438.a n = A077068 (n + 1)

end A077068

/-! ## A077068.P6459053546354334845

`p?[A064519(n+1)]+1`
-/

namespace A077068.P6459053546354334845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A077068.P6459053546354334845

namespace A077068

/-- `p?[A064519(n+1)]+1` -/
def P6459053546354334845.Spec : Prop :=
  ∀ n, P6459053546354334845.a n = A077068 (n + 1)

end A077068

/-! ## A077068.P8318505552264275486

`p?[A164977(n+1)]+1`
-/

namespace A077068.P8318505552264275486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A077068.P8318505552264275486

namespace A077068

/-- `p?[A164977(n+1)]+1` -/
def P8318505552264275486.Spec : Prop :=
  ∀ n, P8318505552264275486.a n = A077068 (n + 1)

end A077068

/-! ## A077068.P11994886859492221620

`p?[A192577(n+1)]+1`
-/

namespace A077068.P11994886859492221620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A077068.P11994886859492221620

namespace A077068

/-- `p?[A192577(n+1)]+1` -/
def P11994886859492221620.Spec : Prop :=
  ∀ n, P11994886859492221620.a n = A077068 (n + 1)

end A077068

/-! ## A077068.P10925009973863003543

`p?[A348659(n+1)]+1`
-/

namespace A077068.P10925009973863003543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A077068.P10925009973863003543

namespace A077068

/-- `p?[A348659(n+1)]+1` -/
def P10925009973863003543.Spec : Prop :=
  ∀ n, P10925009973863003543.a n = A077068 (n + 1)

end A077068

/-! ## A077068.P5154444958267987167

`p?[floor(sqrt(2*A068443(n+1)))]+1`
-/

namespace A077068.P5154444958267987167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A068443 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A077068.P5154444958267987167

namespace A077068

/-- `p?[floor(sqrt(2*A068443(n+1)))]+1` -/
def P5154444958267987167.Spec : Prop :=
  ∀ n, P5154444958267987167.a n = A077068 (n + 1)

end A077068

/-! ## A077068.P7918716794174419351

`p?[A352908(n+1)]+1`
-/

namespace A077068.P7918716794174419351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A077068.P7918716794174419351

namespace A077068

/-- `p?[A352908(n+1)]+1` -/
def P7918716794174419351.Spec : Prop :=
  ∀ n, P7918716794174419351.a n = A077068 (n + 1)

end A077068

/-! ## A077068.P15645750716522554226

`2*p?[A068080(n+1)]`
-/

namespace A077068.P15645750716522554226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077068.P15645750716522554226

namespace A077068

/-- `2*p?[A068080(n+1)]` -/
def P15645750716522554226.Spec : Prop :=
  ∀ n, P15645750716522554226.a n = A077068 (n + 1)

end A077068

/-!
# A077070: Triangle read by rows: T(n,k) is the power of 2 in denominator of coefficients of Legendre polynomials, where n >= 0 and 0 <= k <= n.

The programs for A077070, the canonical program `A077070.P6224506992872465520` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077070 has offset 0).

The definition of A077070 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A144816, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A077070.P9535957856071672968

`2*row(n)-A000120(row(n)-col(n))-A000120(col(n))`
-/

namespace A077070.P9535957856071672968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.triRow n : ℤ) - A000120 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) - A000120 (SequenceMachineLib.triCol n)

end

end A077070.P9535957856071672968

namespace A077070

/-- `2*row(n)-A000120(row(n)-col(n))-A000120(col(n))` -/
def P9535957856071672968.Spec : Prop :=
  ∀ n, P9535957856071672968.a n = A077070 n

end A077070

/-! ## A077070.P6224506992872465520

`A007814(A144816(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A077070

/-- `A007814(A144816(n))` -/
def P6224506992872465520.Spec : Prop :=
  ∀ n, P6224506992872465520.a n = A077070 n

theorem P6224506992872465520.correct : P6224506992872465520.Spec := by
  intro n
  simp only [A077070]

end A077070

/-! ## A077070.P14277589713892899206

`log2(A144816(n))`
-/

namespace A077070.P14277589713892899206
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A144816 n : ℝ)

end

end A077070.P14277589713892899206

namespace A077070

/-- `log2(A144816(n))` -/
def P14277589713892899206.Spec : Prop :=
  ∀ n, P14277589713892899206.a n = (A077070 n : ℝ)

end A077070

/-! ## A077070.P16922072896858707907

`val(A144816(A061579(n)), 2)`
-/

namespace A077070.P16922072896858707907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A144816 (A061579 n).toNat).toNat 2

end

end A077070.P16922072896858707907

namespace A077070

/-- `val(A144816(A061579(n)), 2)` -/
def P16922072896858707907.Spec : Prop :=
  ∀ n, (P16922072896858707907.a n : ℤ) = A077070 n

end A077070

/-! ## A077070.P14613991731234668249

`A279891(n)-A365618(n)`
-/

namespace A077070.P14613991731234668249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279891 n - A365618 n

end

end A077070.P14613991731234668249

namespace A077070

/-- `A279891(n)-A365618(n)` -/
def P14613991731234668249.Spec : Prop :=
  ∀ n, P14613991731234668249.a n = A077070 n

end A077070

/-! ## A077070.P4444829764755257463

`A000038(n+1)+val(A144816(n), 2)`
-/

namespace A077070.P4444829764755257463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + (SequenceMachineLib.valuation (A144816 n).toNat 2 : ℤ)

end

end A077070.P4444829764755257463

namespace A077070

/-- `A000038(n+1)+val(A144816(n), 2)` -/
def P4444829764755257463.Spec : Prop :=
  ∀ n, P4444829764755257463.a n = A077070 n

end A077070

/-! ## A077070.P6970405320545583796

`val(A144816(n), A001316(A001316(n)))`
-/

namespace A077070.P6970405320545583796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A144816 n).toNat (A001316 (A001316 n).toNat).toNat

end

end A077070.P6970405320545583796

namespace A077070

/-- `val(A144816(n), A001316(A001316(n)))` -/
def P6970405320545583796.Spec : Prop :=
  ∀ n, (P6970405320545583796.a n : ℤ) = A077070 n

end A077070

/-! ## A077070.P2253302190378881796

`A000007(n+1)+val(A144816(n), 2)`
-/

namespace A077070.P2253302190378881796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (SequenceMachineLib.valuation (A144816 n).toNat 2 : ℤ)

end

end A077070.P2253302190378881796

namespace A077070

/-- `A000007(n+1)+val(A144816(n), 2)` -/
def P2253302190378881796.Spec : Prop :=
  ∀ n, P2253302190378881796.a n = A077070 n

end A077070

/-! ## A077070.P15321892439511634982

`A381624(A374560(n))`
-/

namespace A077070.P15321892439511634982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381624 (A374560 n).toNat

end

end A077070.P15321892439511634982

namespace A077070

/-- `A381624(A374560(n))` -/
def P15321892439511634982.Spec : Prop :=
  ∀ n, P15321892439511634982.a n = A077070 n

end A077070

/-! ## A077070.P3000938487628471464

`A004526(val(A144816(n)², 2))`
-/

namespace A077070.P3000938487628471464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.valuation (A144816 n ^ 2).toNat 2)

end

end A077070.P3000938487628471464

namespace A077070

/-- `A004526(val(A144816(n)², 2))` -/
def P3000938487628471464.Spec : Prop :=
  ∀ n, P3000938487628471464.a n = A077070 n

end A077070

/-! ## A077070.P4378067524426599359

`∑{e}[A036561(n), A005187(#)]`
-/

namespace A077070.P4378067524426599359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A005187 (Nat.factorization (f1 n).natAbs p)

end

end A077070.P4378067524426599359

namespace A077070

/-- `∑{e}[A036561(n), A005187(#)]` -/
def P4378067524426599359.Spec : Prop :=
  ∀ n, P4378067524426599359.a n = A077070 n

end A077070

/-!
# A077071: Row sums of A077070.

The programs for A077071, the canonical program `A077071.P4866337243281160624` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077071 has offset 0).

The definition of A077071 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1988 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077071.P4866337243281160624

`∑[∑[a(∑[n]%n)+2]]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A077071

/-- `∑[∑[a(∑[n]%n)+2]]` -/
def P4866337243281160624.Spec : Prop :=
  ∀ n, (P4866337243281160624.a n : ℤ) = A077071 n

theorem P4866337243281160624.correct : P4866337243281160624.Spec := by
  intro n
  simp only [A077071]

end A077071

/-! ## A077071.P12995738993650454456

`∑[∑[2*∑{e}[xor(n, -n), #]]]`
-/

namespace A077071.P12995738993650454456
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077071.P12995738993650454456

namespace A077071

/-- `∑[∑[2*∑{e}[xor(n, -n), #]]]` -/
def P12995738993650454456.Spec : Prop :=
  ∀ n, (P12995738993650454456.a n : ℤ) = A077071 n

end A077071

/-! ## A077071.P14055200168348432177

`2*∑[a(floor(n/2))+n]` with `a(0)=0`
-/

namespace A077071.P14055200168348432177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077071.P14055200168348432177

namespace A077071

/-- `2*∑[a(floor(n/2))+n]` -/
def P14055200168348432177.Spec : Prop :=
  ∀ n, (P14055200168348432177.a n : ℤ) = A077071 n

end A077071

/-! ## A077071.P13472553197017734491

`∑[a(floor(n/2))+n+n]` with `a(0)=0`
-/

namespace A077071.P13472553197017734491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077071.P13472553197017734491

namespace A077071

/-- `∑[a(floor(n/2))+n+n]` -/
def P13472553197017734491.Spec : Prop :=
  ∀ n, (P13472553197017734491.a n : ℤ) = A077071 n

end A077071

/-! ## A077071.P2403356865068797670

`2*A122247(n)`
-/

namespace A077071.P2403356865068797670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122247 n

end

end A077071.P2403356865068797670

namespace A077071

/-- `2*A122247(n)` -/
def P2403356865068797670.Spec : Prop :=
  ∀ n, P2403356865068797670.a n = A077071 n

end A077071

/-! ## A077071.P3145775281945610386

`A174605(Δ[n²])`
-/

namespace A077071.P3145775281945610386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174605 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A077071.P3145775281945610386

namespace A077071

/-- `A174605(Δ[n²])` -/
def P3145775281945610386.Spec : Prop :=
  ∀ n, P3145775281945610386.a n = A077071 n

end A077071

/-! ## A077071.P11792814003234852091

`∑[A178207(n)-1]`
-/

namespace A077071.P11792814003234852091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178207 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077071.P11792814003234852091

namespace A077071

/-- `∑[A178207(n)-1]` -/
def P11792814003234852091.Spec : Prop :=
  ∀ n, P11792814003234852091.a n = A077071 n

end A077071

/-! ## A077071.P12051680688407980293

`∑[2*A005187(n)]`
-/

namespace A077071.P12051680688407980293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077071.P12051680688407980293

namespace A077071

/-- `∑[2*A005187(n)]` -/
def P12051680688407980293.Spec : Prop :=
  ∀ n, P12051680688407980293.a n = A077071 n

end A077071

/-! ## A077071.P10252617202060738580

`∑[A378992(4*n)]`
-/

namespace A077071.P10252617202060738580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378992 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077071.P10252617202060738580

namespace A077071

/-- `∑[A378992(4*n)]` -/
def P10252617202060738580.Spec : Prop :=
  ∀ n, P10252617202060738580.a n = A077071 n

end A077071

/-! ## A077071.P8200687100461957563

`∑[2*A011371(2*n)]`
-/

namespace A077071.P8200687100461957563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011371 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077071.P8200687100461957563

namespace A077071

/-- `∑[2*A011371(2*n)]` -/
def P8200687100461957563.Spec : Prop :=
  ∀ n, P8200687100461957563.a n = A077071 n

end A077071

/-! ## A077071.P3834350960552769906

`lcm(2, A174605(2*n+1))`
-/

namespace A077071.P3834350960552769906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A174605 (2 * n + 1))

end

end A077071.P3834350960552769906

namespace A077071

/-- `lcm(2, A174605(2*n+1))` -/
def P3834350960552769906.Spec : Prop :=
  ∀ n, (P3834350960552769906.a n : ℤ) = A077071 n

end A077071

/-! ## A077071.P17489892823434959283

`∑[2*A227361(2*n+1)]`
-/

namespace A077071.P17489892823434959283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A227361 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077071.P17489892823434959283

namespace A077071

/-- `∑[2*A227361(2*n+1)]` -/
def P17489892823434959283.Spec : Prop :=
  ∀ n, P17489892823434959283.a n = A077071 n

end A077071

/-! ## A077071.P16326140081615813939

`2*(n²+n)-2*A000788(n)`
-/

namespace A077071.P16326140081615813939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n ^ 2 + n) : ℤ) - 2 * A000788 n

end

end A077071.P16326140081615813939

namespace A077071

/-- `2*(n²+n)-2*A000788(n)` -/
def P16326140081615813939.Spec : Prop :=
  ∀ n, P16326140081615813939.a n = A077071 n

end A077071

/-! ## A077071.P2470038377227915404

`A001105(n)-A076178(n)`
-/

namespace A077071.P2470038377227915404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n - A076178 n

end

end A077071.P2470038377227915404

namespace A077071

/-- `A001105(n)-A076178(n)` -/
def P2470038377227915404.Spec : Prop :=
  ∀ n, P2470038377227915404.a n = A077071 n

theorem P2470038377227915404.correct : P2470038377227915404.Spec := by
  intro n
  simp only [A077071, Nat.add_sub_cancel, A077071.P2470038377227915404.a, A077071.P4866337243281160624.f3, A077071.P4866337243281160624.f2, A077071.P4866337243281160624.f1, A077071.P4866337243281160624.a, A001105, A001105.P6098599260439307493.a, A076178, A076178.P4076835337858509169.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077071

/-! ## A077071.P14722597041984375149

`∑[A004277(A101925(n))-2]`
-/

namespace A077071.P14722597041984375149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A101925 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077071.P14722597041984375149

namespace A077071

/-- `∑[A004277(A101925(n))-2]` -/
def P14722597041984375149.Spec : Prop :=
  ∀ n, P14722597041984375149.a n = A077071 n

end A077071

/-! ## A077071.P6523753711162753738

`A249153(n)-2*A187059(n)`
-/

namespace A077071.P6523753711162753738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249153 n - 2 * A187059 n

end

end A077071.P6523753711162753738

namespace A077071

/-- `A249153(n)-2*A187059(n)` -/
def P6523753711162753738.Spec : Prop :=
  ∀ n, P6523753711162753738.a n = A077071 n

end A077071

/-! ## A077071.P501012474459879814

`A054000(n+1)-A067699(n+1)`
-/

namespace A077071.P501012474459879814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054000 (n + 1) - A067699 (n + 1)

end

end A077071.P501012474459879814

namespace A077071

/-- `A054000(n+1)-A067699(n+1)` -/
def P501012474459879814.Spec : Prop :=
  ∀ n, P501012474459879814.a n = A077071 n

end A077071

/-! ## A077071.P6685316071034750352

`A174605(2*n)+A011371(2*n)`
-/

namespace A077071.P6685316071034750352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174605 (2 * n) + A011371 (2 * n)

end

end A077071.P6685316071034750352

namespace A077071

/-- `A174605(2*n)+A011371(2*n)` -/
def P6685316071034750352.Spec : Prop :=
  ∀ n, P6685316071034750352.a n = A077071 n

end A077071

/-! ## A077071.P1139912290860198410

`A249152(2*n)-A187059(2*n+1)`
-/

namespace A077071.P1139912290860198410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249152 (2 * n) - A187059 (2 * n + 1)

end

end A077071.P1139912290860198410

namespace A077071

/-- `A249152(2*n)-A187059(2*n+1)` -/
def P1139912290860198410.Spec : Prop :=
  ∀ n, P1139912290860198410.a n = A077071 n

end A077071

/-!
# A077074: Least k such that Z(k,3) <= Z(n,4) where Z(m,s) = Sum_{i>=m} 1/i^s.

The programs for A077074, there is no canonical definition to state claims against.
-/

/-! ## A077074.P1115741445368560431

`A202304(A218152(n)+A025881(n))`
-/

namespace A077074.P1115741445368560431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A218152 n + A025881 n).toNat

end

end A077074.P1115741445368560431

/-! ## A077074.P17829217519784423

`A202304(A261139(n)+A218152(n))`
-/

namespace A077074.P17829217519784423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A261139 n + A218152 n).toNat

end

end A077074.P17829217519784423

/-! ## A077074.P15009962707640511401

`A276571(A230989(n+1)+A158842(n))`
-/

namespace A077074.P15009962707640511401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (A230989 (n + 1) + A158842 n).toNat

end

end A077074.P15009962707640511401

/-! ## A077074.P3174582249365812138

`A202304(A305259(n+1)+A218152(n))`
-/

namespace A077074.P3174582249365812138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A305259 (n + 1) + A218152 n).toNat

end

end A077074.P3174582249365812138

/-! ## A077074.P15119158326141756918

`A002024(3*∑[A329482(n)-n])`
-/

namespace A077074.P15119158326141756918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329482 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (3 * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A077074.P15119158326141756918

/-!
# A077075: Least k such that Z(k,4) <= Z(n,5) where Z(m,s) = Sum_{i>=m} 1/i^s.

The programs for A077075, there is no canonical definition to state claims against.
-/

/-! ## A077075.P17965295020540676966

`floor(log(A187006(n+1)))+2`
-/

namespace A077075.P17965295020540676966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A187006 (n + 1) : ℝ)⌋ + 2

end

end A077075.P17965295020540676966

/-! ## A077075.P1582726506076677322

`A276611(A212565(n))+2`
-/

namespace A077075.P1582726506076677322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A212565 n).toNat + 2

end

end A077075.P1582726506076677322

/-! ## A077075.P4109949965109936834

`round(log2(A189860(n+1)+2))`
-/

namespace A077075.P4109949965109936834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A189860 (n + 1) + 2 : ℝ))

end

end A077075.P4109949965109936834

/-! ## A077075.P706556952912899833

`ceil(acot(n))*A280814(A214050(n+1))`
-/

namespace A077075.P706556952912899833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A280814 (A214050 (n + 1)).toNat

end

end A077075.P706556952912899833

/-!
# A077078: Number of different absolute values of vector sums generated by n vectors chosen from 2n (equally spaced) points around the unit circle. Dipole moments of n positive and n negative equally spaced charges on a circle.

The programs for A077078, there is no canonical definition to state claims against.
-/

/-! ## A077078.P14297639966835607649

`record[A077079(n+1)%A259642(n+1)]`
-/

namespace A077078.P14297639966835607649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077079 (n + 1)) (A259642 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077078.P14297639966835607649

/-! ## A077078.P3224476373998085744

`A077079(n+1)-A185238(A305889(n))`
-/

namespace A077078.P3224476373998085744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077079 (n + 1) - A185238 (A305889 n).toNat

end

end A077078.P3224476373998085744

/-! ## A077078.P5250106961382898463

`A077079(n+1)-A185238(A038045(n+1))`
-/

namespace A077078.P5250106961382898463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077079 (n + 1) - A185238 (A038045 (n + 1)).toNat

end

end A077078.P5250106961382898463

/-! ## A077078.P5946038451932144298

`A077079(A154701(n+1))`
-/

namespace A077078.P5946038451932144298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077079 (A154701 (n + 1)).toNat

end

end A077078.P5946038451932144298

/-!
# A077079: Number of inequivalent bracelets from A006840 with the additional equivalence condition that subsets of 1-beads whose position vectors add to zero can be removed. Different values of vector sums of (-1)^(k/n) with k taking n values in 1..2n up to rotation and reflection.

The programs for A077079, there is no canonical definition to state claims against.
-/

/-! ## A077079.P11258260721628842654

`A185238(A305889(n))+A077078(n+1)`
-/

namespace A077079.P11258260721628842654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A305889 n).toNat + A077078 (n + 1)

end

end A077079.P11258260721628842654

/-! ## A077079.P17159522942120055629

`A185238(A038045(n+1))+A077078(n+1)`
-/

namespace A077079.P17159522942120055629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A038045 (n + 1)).toNat + A077078 (n + 1)

end

end A077079.P17159522942120055629

/-!
# A077080: a(n) = phi(sigma(n) + phi(n)) = A000010(A000203(n) + A000010(n)) = A000010(A065387(n)).

The programs for A077080, the canonical program `A077080.P7768184034800697373` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077080 has offset 1).

The definition of A077080 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(A065387(n+1))` (program `A077080.P7768184034800697373`, by `A077080.P7768184034800697373.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077080.P7768184034800697373

`A000010(A065387(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A077080

/-- `A000010(A065387(n+1))` -/
def P7768184034800697373.Spec : Prop :=
  ∀ n, P7768184034800697373.a n = A077080 (n + 1)

theorem P7768184034800697373.correct : P7768184034800697373.Spec := by
  intro n
  simp only [A077080, Nat.add_sub_cancel]

end A077080

/-! ## A077080.P17935405258517097851

`A000010(A000203(n+1)+A000010(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A077080.P17935405258517097851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000203 (n + 1) + A000010 (n + 1)).toNat

end

end A077080.P17935405258517097851

namespace A077080

/-- `A000010(A000203(n+1)+A000010(n+1))` -/
def P17935405258517097851.Spec : Prop :=
  ∀ n, P17935405258517097851.a n = A077080 (n + 1)

end A077080

/-! ## A077080.P15963396915339281307

`A000010(A209187(n+1)+1+n)`
-/

namespace A077080.P15963396915339281307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A209187 (n + 1) + 1 + (n : ℤ)).toNat

end

end A077080.P15963396915339281307

namespace A077080

/-- `A000010(A209187(n+1)+1+n)` -/
def P15963396915339281307.Spec : Prop :=
  ∀ n, P15963396915339281307.a n = A077080 (n + 1)

theorem P15963396915339281307.correct : P15963396915339281307.Spec := by
  intro n
  simp only [A077080, Nat.add_sub_cancel, A077080.P15963396915339281307.a, A077080.P7768184034800697373.a, A000010, A000010.P4673923239450215316.a, A065387, A065387.P11284875715279330998.a, A209187, A209187.P1822992089248699320.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A051953, A051953.P11179276897610979764.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077080

/-! ## A077080.P4288354523696619793

`A000010(∑{d}[n+1, #]+Δ[A002088(n)])`
-/

namespace A077080.P4288354523696619793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) + (f2 (n + 1) - f2 n)).toNat

end

end A077080.P4288354523696619793

namespace A077080

/-- `A000010(∑{d}[n+1, #]+Δ[A002088(n)])` -/
def P4288354523696619793.Spec : Prop :=
  ∀ n, P4288354523696619793.a n = A077080 (n + 1)

end A077080

/-! ## A077080.P8945736586211097549

`A000010(∑{d}[n+1, #]+Δ[A005728(n)])`
-/

namespace A077080.P8945736586211097549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) + (f2 (n + 1) - f2 n)).toNat

end

end A077080.P8945736586211097549

namespace A077080

/-- `A000010(∑{d}[n+1, #]+Δ[A005728(n)])` -/
def P8945736586211097549.Spec : Prop :=
  ∀ n, P8945736586211097549.a n = A077080 (n + 1)

end A077080

/-! ## A077080.P13958408281212775111

`A000010(∑{d}[n+1, #]+A000010(n+1))`
-/

namespace A077080.P13958408281212775111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) + A000010 (n + 1)).toNat

end

end A077080.P13958408281212775111

namespace A077080

/-- `A000010(∑{d}[n+1, #]+A000010(n+1))` -/
def P13958408281212775111.Spec : Prop :=
  ∀ n, P13958408281212775111.a n = A077080 (n + 1)

end A077080

/-! ## A077080.P17445113405669328599

`A000010(A000203(n+1)+Δ[A002088(n)])`
-/

namespace A077080.P17445113405669328599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000203 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A077080.P17445113405669328599

namespace A077080

/-- `A000010(A000203(n+1)+Δ[A002088(n)])` -/
def P17445113405669328599.Spec : Prop :=
  ∀ n, P17445113405669328599.a n = A077080 (n + 1)

end A077080

/-! ## A077080.P14944544045521295577

`A000010(A000203(n+1)+Δ[A005728(n)])`
-/

namespace A077080.P14944544045521295577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000203 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A077080.P14944544045521295577

namespace A077080

/-- `A000010(A000203(n+1)+Δ[A005728(n)])` -/
def P14944544045521295577.Spec : Prop :=
  ∀ n, P14944544045521295577.a n = A077080 (n + 1)

end A077080

/-! ## A077080.P6585808719467184334

`A000010(A000010(n+1)+Δ[A160664(n)])`
-/

namespace A077080.P6585808719467184334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A077080.P6585808719467184334

namespace A077080

/-- `A000010(A000010(n+1)+Δ[A160664(n)])` -/
def P6585808719467184334.Spec : Prop :=
  ∀ n, P6585808719467184334.a n = A077080 (n + 1)

end A077080

/-! ## A077080.P11798295688922533347

`A000010(A000010(n+1)+A000203(n+1))`
-/

namespace A077080.P11798295688922533347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (n + 1) + A000203 (n + 1)).toNat

end

end A077080.P11798295688922533347

namespace A077080

/-- `A000010(A000010(n+1)+A000203(n+1))` -/
def P11798295688922533347.Spec : Prop :=
  ∀ n, P11798295688922533347.a n = A077080 (n + 1)

theorem P11798295688922533347.correct : P11798295688922533347.Spec := by
  intro n
  simp only [A077080, Nat.add_sub_cancel, A077080.P11798295688922533347.a, A077080.P7768184034800697373.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A065387, A065387.P11284875715279330998.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077080

/-! ## A077080.P14100275345109854989

`A000010(A039653(n+1)+A039649(n+1))`
-/

namespace A077080.P14100275345109854989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A039653 (n + 1) + A039649 (n + 1)).toNat

end

end A077080.P14100275345109854989

namespace A077080

/-- `A000010(A039653(n+1)+A039649(n+1))` -/
def P14100275345109854989.Spec : Prop :=
  ∀ n, P14100275345109854989.a n = A077080 (n + 1)

end A077080

/-! ## A077080.P6324482647564263434

`A000010(A255385(n+1)+A000005(n+1))`
-/

namespace A077080.P6324482647564263434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A255385 (n + 1) + A000005 (n + 1)).toNat

end

end A077080.P6324482647564263434

namespace A077080

/-- `A000010(A255385(n+1)+A000005(n+1))` -/
def P6324482647564263434.Spec : Prop :=
  ∀ n, P6324482647564263434.a n = A077080 (n + 1)

theorem P6324482647564263434.correct : P6324482647564263434.Spec := by
  intro n
  simp only [A077080, Nat.add_sub_cancel, A077080.P6324482647564263434.a, A077080.P7768184034800697373.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A065387, A065387.P11284875715279330998.a, A255385, A255385.P15739975789967617263.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077080

/-! ## A077080.P13129858021412059709

`A000010(A279914(n+1)+A008683(n+1))`
-/

namespace A077080.P13129858021412059709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A279914 (n + 1) + A008683 (n + 1)).toNat

end

end A077080.P13129858021412059709

namespace A077080

/-- `A000010(A279914(n+1)+A008683(n+1))` -/
def P13129858021412059709.Spec : Prop :=
  ∀ n, P13129858021412059709.a n = A077080 (n + 1)

theorem P13129858021412059709.correct : P13129858021412059709.Spec := by
  intro n
  simp only [A077080, Nat.add_sub_cancel, A077080.P13129858021412059709.a, A077080.P7768184034800697373.a, A000010, A000010.P4673923239450215316.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A065387, A065387.P11284875715279330998.a, A279914, A279914.P15760312848134120461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077080

/-! ## A077080.P3725178059937117676

`A000010(A038040(n+1)-A094472(n+1))`
-/

namespace A077080.P3725178059937117676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A038040 (n + 1) - A094472 (n + 1)).toNat

end

end A077080.P3725178059937117676

namespace A077080

/-- `A000010(A038040(n+1)-A094472(n+1))` -/
def P3725178059937117676.Spec : Prop :=
  ∀ n, P3725178059937117676.a n = A077080 (n + 1)

theorem P3725178059937117676.correct : P3725178059937117676.Spec := by
  intro n
  simp only [A077080, Nat.add_sub_cancel, A077080.P3725178059937117676.a, A077080.P7768184034800697373.a, A000010, A000010.P4673923239450215316.a, A038040, A038040.P16512896840577774730.a, A065387, A065387.P11284875715279330998.a, A094472, A094472.P13859718929151834946.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077080

/-! ## A077080.P12755595916694522408

`A000010(A155085(n+1)-A051953(n+1))`
-/

namespace A077080.P12755595916694522408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A155085 (n + 1) - A051953 (n + 1)).toNat

end

end A077080.P12755595916694522408

namespace A077080

/-- `A000010(A155085(n+1)-A051953(n+1))` -/
def P12755595916694522408.Spec : Prop :=
  ∀ n, P12755595916694522408.a n = A077080 (n + 1)

theorem P12755595916694522408.correct : P12755595916694522408.Spec := by
  intro n
  simp only [A077080, Nat.add_sub_cancel, A077080.P12755595916694522408.a, A077080.P7768184034800697373.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A065387, A065387.P11284875715279330998.a, A155085, A155085.P2440965829929837208.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077080

/-! ## A077080.P2091604059209522796

`A000010(A233541(n+1)-A000005(n+1))`
-/

namespace A077080.P2091604059209522796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A233541 (n + 1) - A000005 (n + 1)).toNat

end

end A077080.P2091604059209522796

namespace A077080

/-- `A000010(A233541(n+1)-A000005(n+1))` -/
def P2091604059209522796.Spec : Prop :=
  ∀ n, P2091604059209522796.a n = A077080 (n + 1)

theorem P2091604059209522796.correct : P2091604059209522796.Spec := by
  intro n
  simp only [A077080, Nat.add_sub_cancel, A077080.P2091604059209522796.a, A077080.P7768184034800697373.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A065387, A065387.P11284875715279330998.a, A233541, A233541.P8613134617587554925.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077080

/-! ## A077080.P2169570533747083489

`A000010(A000010(n+1)+abs(A143348(n+1)))`
-/

namespace A077080.P2169570533747083489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (n + 1) + |A143348 (n + 1)|).toNat

end

end A077080.P2169570533747083489

namespace A077080

/-- `A000010(A000010(n+1)+abs(A143348(n+1)))` -/
def P2169570533747083489.Spec : Prop :=
  ∀ n, P2169570533747083489.a n = A077080 (n + 1)

end A077080

/-! ## A077080.P7958314409626431252

`A000010(A000010(n+1)+sqrt(A072861(n+1)))`
-/

namespace A077080.P7958314409626431252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A000010 (n + 1) : ℝ) + Real.sqrt (A072861 (n + 1) : ℝ))).toNat

end

end A077080.P7958314409626431252

namespace A077080

/-- `A000010(A000010(n+1)+sqrt(A072861(n+1)))` -/
def P7958314409626431252.Spec : Prop :=
  ∀ n, P7958314409626431252.a n = A077080 (n + 1)

end A077080

/-! ## A077080.P5749743525445211293

`A000010(A000010(n+1)+∑[A340793(n+1)])`
-/

namespace A077080.P5749743525445211293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A077080.P5749743525445211293

namespace A077080

/-- `A000010(A000010(n+1)+∑[A340793(n+1)])` -/
def P5749743525445211293.Spec : Prop :=
  ∀ n, P5749743525445211293.a n = A077080 (n + 1)

end A077080

/-!
# A077081: Fixed point when phi(sigma(n)+phi(n))=A077080 is iterated with initial value of n.

The programs for A077081, there is no canonical definition to state claims against.
-/

/-! ## A077081.P1547102623015645678

`A000010(A065387(A077082(A000010(A065387(n+1)))))`
-/

namespace A077081.P1547102623015645678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A065387 (A077082 (A000010 (A065387 (n + 1)).toNat).toNat).toNat).toNat

end

end A077081.P1547102623015645678

/-! ## A077081.P12127137874219231494

`A331737(A336940(∑[A331739(n+3)]))`
-/

namespace A077081.P12127137874219231494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331739 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (A336940 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A077081.P12127137874219231494

/-! ## A077081.P4213375126419086789

`A116542(C(A116568(n+1), A116560(n+4)))`
-/

namespace A077081.P4213375126419086789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116542 (Nat.choose (A116568 (n + 1)).toNat (A116560 (n + 4)).toNat)

end

end A077081.P4213375126419086789

/-!
# A077086: Remainder when sigma(n+1) is divided by sigma(n).

The programs for A077086, the canonical program `A077086.P10461704167105930803` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077086 has offset 1).

The definition of A077086 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077086.P10461704167105930803

`A000203(n+2)%A000203(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A077086

/-- `A000203(n+2)%A000203(n+1)` -/
def P10461704167105930803.Spec : Prop :=
  ∀ n, P10461704167105930803.a n = A077086 (n + 1)

theorem P10461704167105930803.correct : P10461704167105930803.Spec := by
  intro n
  simp only [A077086, Nat.add_sub_cancel]

end A077086

/-! ## A077086.P10162719636654586263

`∑{d}[n+2, #]%∑{d}[n+1, #]`
-/

namespace A077086.P10162719636654586263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) % (∑ d ∈ Nat.divisors (f2 n), d)

end

end A077086.P10162719636654586263

namespace A077086

/-- `∑{d}[n+2, #]%∑{d}[n+1, #]` -/
def P10162719636654586263.Spec : Prop :=
  ∀ n, (P10162719636654586263.a n : ℤ) = A077086 (n + 1)

end A077086

/-! ## A077086.P16889730448556143907

`A092403(n+1)%Δ[A160664(n)]`
-/

namespace A077086.P16889730448556143907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092403 (n + 1)) (f1 (n + 1) - f1 n)

end

end A077086.P16889730448556143907

namespace A077086

/-- `A092403(n+1)%Δ[A160664(n)]` -/
def P16889730448556143907.Spec : Prop :=
  ∀ n, P16889730448556143907.a n = A077086 (n + 1)

end A077086

/-! ## A077086.P10694922384928407204

`A000203(n+2)%Δ[A160664(n)]`
-/

namespace A077086.P10694922384928407204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 2)) (f1 (n + 1) - f1 n)

end

end A077086.P10694922384928407204

namespace A077086

/-- `A000203(n+2)%Δ[A160664(n)]` -/
def P10694922384928407204.Spec : Prop :=
  ∀ n, P10694922384928407204.a n = A077086 (n + 1)

end A077086

/-! ## A077086.P17997008170829936286

`Δ[A160664(n+1)]%Δ[A160664(n)]`
-/

namespace A077086.P17997008170829936286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (f2 (n + 1) - f2 n)

end

end A077086.P17997008170829936286

namespace A077086

/-- `Δ[A160664(n+1)]%Δ[A160664(n)]` -/
def P17997008170829936286.Spec : Prop :=
  ∀ n, P17997008170829936286.a n = A077086 (n + 1)

end A077086

/-! ## A077086.P15695741368138753198

`Δ[A024916(n+1)]%∑[A340793(n+1)]`
-/

namespace A077086.P15695741368138753198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A077086.P15695741368138753198

namespace A077086

/-- `Δ[A024916(n+1)]%∑[A340793(n+1)]` -/
def P15695741368138753198.Spec : Prop :=
  ∀ n, P15695741368138753198.a n = A077086 (n + 1)

end A077086

/-! ## A077086.P4876460099899266245

`(A088580(n+2)-1)%(A088580(n+1)-1)`
-/

namespace A077086.P4876460099899266245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088580 (n + 2) - 1) (A088580 (n + 1) - 1)

end

end A077086.P4876460099899266245

namespace A077086

/-- `(A088580(n+2)-1)%(A088580(n+1)-1)` -/
def P4876460099899266245.Spec : Prop :=
  ∀ n, P4876460099899266245.a n = A077086 (n + 1)

theorem P4876460099899266245.correct : P4876460099899266245.Spec := by
  intro n
  simp only [A077086, Nat.add_sub_cancel, A077086.P4876460099899266245.a, A077086.P10461704167105930803.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A088580, A088580.P3089093194242277422.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077086

/-! ## A077086.P15416726302735491481

`A245092(2*n+3)%A245092(2*n+1)`
-/

namespace A077086.P15416726302735491481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245092 (2 * n + 3)) (A245092 (2 * n + 1))

end

end A077086.P15416726302735491481

namespace A077086

/-- `A245092(2*n+3)%A245092(2*n+1)` -/
def P15416726302735491481.Spec : Prop :=
  ∀ n, P15416726302735491481.a n = A077086 (n + 1)

end A077086

/-! ## A077086.P10052861324178340163

`A245092(2*n+3)%A262610(Δ[n²])`
-/

namespace A077086.P10052861324178340163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245092 (2 * n + 3)) (A262610 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A077086.P10052861324178340163

namespace A077086

/-- `A245092(2*n+3)%A262610(Δ[n²])` -/
def P10052861324178340163.Spec : Prop :=
  ∀ n, P10052861324178340163.a n = A077086 (n + 1)

end A077086

/-! ## A077086.P4465004666378555581

`A262610(2*n+3)%Δ[A330725(n)]`
-/

namespace A077086.P4465004666378555581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262610 (2 * n + 3)) (f1 (n + 1) - f1 n)

end

end A077086.P4465004666378555581

namespace A077086

/-- `A262610(2*n+3)%Δ[A330725(n)]` -/
def P4465004666378555581.Spec : Prop :=
  ∀ n, P4465004666378555581.a n = A077086 (n + 1)

end A077086

/-! ## A077086.P1077210442693148057

`(A088580(n+2)-1)%A245093(∑[n+1])`
-/

namespace A077086.P1077210442693148057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088580 (n + 2) - 1) (A245093 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A077086.P1077210442693148057

namespace A077086

/-- `(A088580(n+2)-1)%A245093(∑[n+1])` -/
def P1077210442693148057.Spec : Prop :=
  ∀ n, P1077210442693148057.a n = A077086 (n + 1)

end A077086

/-! ## A077086.P16436234799179650243

`A216626(∑[n+1]+1)%A216626(∑[n+1])`
-/

namespace A077086.P16436234799179650243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216626 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) (A216626 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A077086.P16436234799179650243

namespace A077086

/-- `A216626(∑[n+1]+1)%A216626(∑[n+1])` -/
def P16436234799179650243.Spec : Prop :=
  ∀ n, P16436234799179650243.a n = A077086 (n + 1)

end A077086

/-!
# A077088: a(n) = phi(sigma(n) - phi(n)), where phi is Euler's totient function and sigma is the sum of divisors function, with a(1) = 0.

The programs for A077088, the canonical program `A077088.P11718412499203878740` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077088 has offset 1).

The definition of A077088 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6299 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077088.P8463479197209565361

`A000010(A000203(n+1)-A000010(n+1)%(n+1))%A000203(n+1)`
-/

namespace A077088.P8463479197209565361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A000203 (n + 1) - Int.tmod (A000010 (n + 1)) (n + 1 : ℤ)).toNat) (A000203 (n + 1))

end

end A077088.P8463479197209565361

namespace A077088

/-- `A000010(A000203(n+1)-A000010(n+1)%(n+1))%A000203(n+1)` -/
def P8463479197209565361.Spec : Prop :=
  ∀ n, P8463479197209565361.a n = A077088 (n + 1)

end A077088

/-! ## A077088.P2573270223994048258

`∑{d}[A051612(n+1), A007431(#)]`
-/

namespace A077088.P2573270223994048258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007431 d

end

end A077088.P2573270223994048258

namespace A077088

/-- `∑{d}[A051612(n+1), A007431(#)]` -/
def P2573270223994048258.Spec : Prop :=
  ∀ n, P2573270223994048258.a n = A077088 (n + 1)

theorem P2573270223994048258.correct : P2573270223994048258.Spec := by
  intro n
  simp only [A077088, Nat.add_sub_cancel, A077088.P2573270223994048258.f1, A077088.P2573270223994048258.a, A077088.P11718412499203878740.f1, A077088.P11718412499203878740.a, A001065, A001065.P4097147489331274860.a, A007431, A007431.P16508403139497409065.f1, A007431.P16508403139497409065.a, A051612, A051612.P4135239823752248514.a, A051709, A051709.P8066883811744733228.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077088

/-! ## A077088.P17803269411546718675

`∑{d}[A046520(n+1)+A000005(n+1), A007431(#)]`
-/

namespace A077088.P17803269411546718675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046520 (n + 1) + A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007431 d

end

end A077088.P17803269411546718675

namespace A077088

/-- `∑{d}[A046520(n+1)+A000005(n+1), A007431(#)]` -/
def P17803269411546718675.Spec : Prop :=
  ∀ n, P17803269411546718675.a n = A077088 (n + 1)

theorem P17803269411546718675.correct : P17803269411546718675.Spec := by
  intro n
  simp only [A077088, Nat.add_sub_cancel, A077088.P17803269411546718675.f1, A077088.P17803269411546718675.a, A077088.P11718412499203878740.f1, A077088.P11718412499203878740.a, A000005, A000005.P16091521709108585461.a, A001065, A001065.P4097147489331274860.a, A007431, A007431.P16508403139497409065.f1, A007431.P16508403139497409065.a, A046520, A046520.P408125302691526791.a, A051709, A051709.P8066883811744733228.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077088

/-! ## A077088.P5235929986226275128

`∑{d}[A051953(n+1)+A001065(n+1), A007431(#)]`
-/

namespace A077088.P5235929986226275128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007431 d

end

end A077088.P5235929986226275128

namespace A077088

/-- `∑{d}[A051953(n+1)+A001065(n+1), A007431(#)]` -/
def P5235929986226275128.Spec : Prop :=
  ∀ n, P5235929986226275128.a n = A077088 (n + 1)

theorem P5235929986226275128.correct : P5235929986226275128.Spec := by
  intro n
  simp only [A077088, Nat.add_sub_cancel, A077088.P5235929986226275128.f1, A077088.P5235929986226275128.a, A077088.P11718412499203878740.f1, A077088.P11718412499203878740.a, A001065, A001065.P4097147489331274860.a, A007431, A007431.P16508403139497409065.f1, A007431.P16508403139497409065.a, A051709, A051709.P8066883811744733228.a, A051953, A051953.P11179276897610979764.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077088

/-! ## A077088.P2813573942853154364

`∑{d}[A000203(n+1)+1-A039649(n+1), A007431(#)]`
-/

namespace A077088.P2813573942853154364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (1 - A039649 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007431 d

end

end A077088.P2813573942853154364

namespace A077088

/-- `∑{d}[A000203(n+1)+1-A039649(n+1), A007431(#)]` -/
def P2813573942853154364.Spec : Prop :=
  ∀ n, P2813573942853154364.a n = A077088 (n + 1)

theorem P2813573942853154364.correct : P2813573942853154364.Spec := by
  intro n
  simp only [A077088, Nat.add_sub_cancel, A077088.P2813573942853154364.f1, A077088.P2813573942853154364.a, A077088.P11718412499203878740.f1, A077088.P11718412499203878740.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A007431, A007431.P16508403139497409065.f1, A007431.P16508403139497409065.a, A039649, A039649.P16717312505280968063.a, A051709, A051709.P8066883811744733228.a, A000010, A000010.P4673923239450215316.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077088

/-! ## A077088.P11718412499203878740

`∑{d}[2*A001065(n+1)-A051709(n+1), A007431(#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A077088

/-- `∑{d}[2*A001065(n+1)-A051709(n+1), A007431(#)]` -/
def P11718412499203878740.Spec : Prop :=
  ∀ n, P11718412499203878740.a n = A077088 (n + 1)

theorem P11718412499203878740.correct : P11718412499203878740.Spec := by
  intro n
  simp only [A077088, Nat.add_sub_cancel]

end A077088

/-! ## A077088.P4456838368853918577

`∑{d}[A074400(n+1)/2-A000010(n+1), A007431(#)]`
-/

namespace A077088.P4456838368853918577
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 - (A000010 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A007431 d

end

end A077088.P4456838368853918577

namespace A077088

/-- `∑{d}[A074400(n+1)/2-A000010(n+1), A007431(#)]` -/
def P4456838368853918577.Spec : Prop :=
  ∀ n, P4456838368853918577.a n = A077088 (n + 1)

end A077088

/-! ## A077088.P15389253740955916894

`A384710(A051612(n+1))`
-/

namespace A077088.P15389253740955916894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384710 (A051612 (n + 1)).toNat

end

end A077088.P15389253740955916894

namespace A077088

/-- `A384710(A051612(n+1))` -/
def P15389253740955916894.Spec : Prop :=
  ∀ n, P15389253740955916894.a n = A077088 (n + 1)

end A077088

/-! ## A077088.P3797434953109086243

`A225530(A051612(n+1))-A000007(n)`
-/

namespace A077088.P3797434953109086243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 (A051612 (n + 1)).toNat - A000007 n

end

end A077088.P3797434953109086243

namespace A077088

/-- `A225530(A051612(n+1))-A000007(n)` -/
def P3797434953109086243.Spec : Prop :=
  ∀ n, P3797434953109086243.a n = A077088 (n + 1)

end A077088

/-! ## A077088.P1575127438202510807

`A057427(n)*A225530(A051612(n+1))`
-/

namespace A077088.P1575127438202510807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A225530 (A051612 (n + 1)).toNat

end

end A077088.P1575127438202510807

namespace A077088

/-- `A057427(n)*A225530(A051612(n+1))` -/
def P1575127438202510807.Spec : Prop :=
  ∀ n, P1575127438202510807.a n = A077088 (n + 1)

end A077088

/-! ## A077088.P12898472174809283330

`A225530(A051612(n+1))%A000070(n)`
-/

namespace A077088.P12898472174809283330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225530 (A051612 (n + 1)).toNat) (A000070 n)

end

end A077088.P12898472174809283330

namespace A077088

/-- `A225530(A051612(n+1))%A000070(n)` -/
def P12898472174809283330.Spec : Prop :=
  ∀ n, P12898472174809283330.a n = A077088 (n + 1)

end A077088

/-! ## A077088.P4095460758174859045

`A000040(n+1)%2*A225530(A051612(n+1))`
-/

namespace A077088.P4095460758174859045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A225530 (A051612 (n + 1)).toNat

end

end A077088.P4095460758174859045

namespace A077088

/-- `A000040(n+1)%2*A225530(A051612(n+1))` -/
def P4095460758174859045.Spec : Prop :=
  ∀ n, P4095460758174859045.a n = A077088 (n + 1)

end A077088

/-! ## A077088.P14792708557783890742

`A225530(A051612(n+1))+A008683(2*(n+1)²)`
-/

namespace A077088.P14792708557783890742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 (A051612 (n + 1)).toNat + A008683 (2 * (n + 1) ^ 2)

end

end A077088.P14792708557783890742

namespace A077088

/-- `A225530(A051612(n+1))+A008683(2*(n+1)²)` -/
def P14792708557783890742.Spec : Prop :=
  ∀ n, P14792708557783890742.a n = A077088 (n + 1)

end A077088

/-! ## A077088.P7015536644392097824

`record[A020639(n+2)]%2*A225530(A051612(n+1))`
-/

namespace A077088.P7015536644392097824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2 * A225530 (A051612 (n + 1)).toNat

end

end A077088.P7015536644392097824

namespace A077088

/-- `record[A020639(n+2)]%2*A225530(A051612(n+1))` -/
def P7015536644392097824.Spec : Prop :=
  ∀ n, P7015536644392097824.a n = A077088 (n + 1)

end A077088

/-!
# A077089: Quotients when sigma(k+1)/sigma(k) is an integer.

The programs for A077089, there is no canonical definition to state claims against.
-/

/-! ## A077089.P7388776695619630050

`A000203(A058072(n+1)+1)/A000203(A058072(n+1))`
-/

namespace A077089.P7388776695619630050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A058072 (n + 1) + 1).toNat : ℚ) / (A000203 (A058072 (n + 1)).toNat : ℚ)

end

end A077089.P7388776695619630050

/-! ## A077089.P5062412156960146646

`A083538(A058072(n+1))`
-/

namespace A077089.P5062412156960146646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083538 (A058072 (n + 1)).toNat

end

end A077089.P5062412156960146646

/-! ## A077089.P791033777927468394

`A010684(A222747(n+1))+char[∑[n+1]]`
-/

namespace A077089.P791033777927468394
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (A222747 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A077089.P791033777927468394

/-! ## A077089.P4702270074487437251

`A073423(n)+A034374(A081577(n))`
-/

namespace A077089.P4702270074487437251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n + A034374 (A081577 n).toNat

end

end A077089.P4702270074487437251

/-! ## A077089.P5883709680002439672

`A176791(A157219(n))+A073423(n)`
-/

namespace A077089.P5883709680002439672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176791 (A157219 n).toNat + A073423 n

end

end A077089.P5883709680002439672

/-!
# A077090: When iteration of f(x) = phi(sigma(x) - phi(x)) is started at initial values listed here it ends up in a cycle of length greater than 1.

The programs for A077090, there is no canonical definition to state claims against.
-/

/-! ## A077090.P17690484862266447187

`A176100(lt[A265135(n+1), A186358(2*(n+2))])`
-/

namespace A077090.P17690484862266447187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186358 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176100 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A077090.P17690484862266447187

/-! ## A077090.P3367284708760860576

`A176100(lt[A284067(n+1), A186358(2*(n+2))])`
-/

namespace A077090.P3367284708760860576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186358 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176100 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A077090.P3367284708760860576

/-! ## A077090.P17300688042803267841

`A176100(lt[A051349(2*(n+2)), A186358(2*(n+2))])`
-/

namespace A077090.P17300688042803267841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186358 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176100 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A077090.P17300688042803267841

/-! ## A077090.P16346952012453115150

`A176100(lt[A141559(2*n+5), A186358(2*(n+2))])`
-/

namespace A077090.P16346952012453115150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141559 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186358 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176100 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A077090.P16346952012453115150

/-!
# A077091: Composites c, such that when iteration of f(k) = phi(sigma(k)-phi(k)) is started at c it ends at a fixed point > 1.

The programs for A077091, there is no canonical definition to state claims against.
-/

/-! ## A077091.P8873520718945080208

`lt[A131235(A284289(n)), A284289(n)]`
-/

namespace A077091.P8873520718945080208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131235 (A284289 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A077091.P8873520718945080208

/-! ## A077091.P15177671700112821003

`A249433(n+1)+A003415(A029972(n+1))`
-/

namespace A077091.P15177671700112821003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249433 (n + 1) + A003415 (A029972 (n + 1)).toNat

end

end A077091.P15177671700112821003

/-! ## A077091.P9561758072304016873

`A342671(A290854(n+3))+A249433(n+1)`
-/

namespace A077091.P9561758072304016873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342671 (A290854 (n + 3)).toNat + A249433 (n + 1)

end

end A077091.P9561758072304016873

/-! ## A077091.P7439765293084167008

`A249433(n+1)+A001221(A062353(2*n+1))`
-/

namespace A077091.P7439765293084167008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249433 (n + 1) + A001221 (A062353 (2 * n + 1)).toNat

end

end A077091.P7439765293084167008

/-! ## A077091.P8622262009909497306

`A249433(n+1)+A067029(A056105(2*n+1))`
-/

namespace A077091.P8622262009909497306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249433 (n + 1) + A067029 (A056105 (2 * n + 1)).toNat

end

end A077091.P8622262009909497306

/-!
# A077094: Numbers k such that iterating phi(sigma(k)-phi(k)) starting from k leads to the fixed point 4.

The programs for A077094, there is no canonical definition to state claims against.
-/

/-! ## A077094.P6759486705067008159

`lt[A334187(A211110(n)), A003415(n)]`
-/

namespace A077094.P6759486705067008159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334187 (A211110 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A077094.P6759486705067008159

/-! ## A077094.P15522760800474972683

`A002808(∑[A318357(A083064(n))])`
-/

namespace A077094.P15522760800474972683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318357 (A083064 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A077094.P15522760800474972683

/-! ## A077094.P7152733023264673914

`eq[A007599(A226378(n)), A153675(n+1)]`
-/

namespace A077094.P7152733023264673914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007599 (A226378 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153675 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077094.P7152733023264673914

/-! ## A077094.P2374031118437794862

`eq[A076303(n+1), A309398(A226378(n))]`
-/

namespace A077094.P2374031118437794862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309398 (A226378 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077094.P2374031118437794862

/-! ## A077094.P3051769780240051989

`lt[A008288(A344651(2*(n+1))), A003415(n)]`
-/

namespace A077094.P3051769780240051989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (A344651 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A077094.P3051769780240051989

/-!
# A077099: a(n) = gcd(A051612(n), A065387(n)), where A051612(n) = sigma(n) - phi(n) and A065387(n) = sigma(n) + phi(n).

The programs for A077099, the canonical program `A077099.P3430747628200771116` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077099 has offset 1).

The definition of A077099 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A051612(n+1), A065387(n+1))` (program `A077099.P3430747628200771116`, by `A077099.P3430747628200771116.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077099.P3430747628200771116

`gcd(A051612(n+1), A065387(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A077099

/-- `gcd(A051612(n+1), A065387(n+1))` -/
def P3430747628200771116.Spec : Prop :=
  ∀ n, (P3430747628200771116.a n : ℤ) = A077099 (n + 1)

theorem P3430747628200771116.correct : P3430747628200771116.Spec := by
  intro n
  simp only [A077099, Nat.add_sub_cancel]

end A077099

/-! ## A077099.P4199002840237305305

`gcd(A074400(n+1), A077100(n+1))`
-/

namespace A077099.P4199002840237305305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A074400 (n + 1)) (A077100 (n + 1))

end

end A077099.P4199002840237305305

namespace A077099

/-- `gcd(A074400(n+1), A077100(n+1))` -/
def P4199002840237305305.Spec : Prop :=
  ∀ n, (P4199002840237305305.a n : ℤ) = A077099 (n + 1)

end A077099

/-! ## A077099.P9374728562223000701

`gcd(A065387(n+1)², A077101(n+1))/A065387(n+1)`
-/

namespace A077099.P9374728562223000701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A065387 (n + 1) ^ 2) (A077101 (n + 1)) : ℚ) / (A065387 (n + 1) : ℚ)

end

end A077099.P9374728562223000701

namespace A077099

/-- `gcd(A065387(n+1)², A077101(n+1))/A065387(n+1)` -/
def P9374728562223000701.Spec : Prop :=
  ∀ n, P9374728562223000701.a n = (A077099 (n + 1) : ℚ)

end A077099

/-! ## A077099.P9308043765552285865

`gcd(A000203(n+1)+A000010(n+1), 2*A000010(n+1))`
-/

namespace A077099.P9308043765552285865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1) + A000010 (n + 1)) (2 * A000010 (n + 1))

end

end A077099.P9308043765552285865

namespace A077099

/-- `gcd(A000203(n+1)+A000010(n+1), 2*A000010(n+1))` -/
def P9308043765552285865.Spec : Prop :=
  ∀ n, (P9308043765552285865.a n : ℤ) = A077099 (n + 1)

end A077099

/-! ## A077099.P13440734506692144482

`gcd(Δ[A049696(n)], A051612(n+1))`
-/

namespace A077099.P13440734506692144482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049696 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A051612 (n + 1))

end

end A077099.P13440734506692144482

namespace A077099

/-- `gcd(Δ[A049696(n)], A051612(n+1))` -/
def P13440734506692144482.Spec : Prop :=
  ∀ n, (P13440734506692144482.a n : ℤ) = A077099 (n + 1)

end A077099

/-! ## A077099.P9000044001467266144

`gcd(A065387(n+1), A146076(A103517(n)))`
-/

namespace A077099.P9000044001467266144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065387 (n + 1)) (A146076 (A103517 n).toNat)

end

end A077099.P9000044001467266144

namespace A077099

/-- `gcd(A065387(n+1), A146076(A103517(n)))` -/
def P9000044001467266144.Spec : Prop :=
  ∀ n, (P9000044001467266144.a n : ℤ) = A077099 (n + 1)

end A077099

