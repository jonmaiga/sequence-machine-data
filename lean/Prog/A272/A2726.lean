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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A272600: Composites k such that p-1 divides k-1 for each prime divisor of k-1.

The programs for A272600, the canonical program `A272600.P10387007176654584121` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272600 has offset 1).

The definition of A272600 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272600.P9470394220781897980

`∩[A002808(n+1), A124240(n+1)+1]`
-/

namespace A272600.P9470394220781897980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124240 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272600.P9470394220781897980

namespace A272600

/-- `∩[A002808(n+1), A124240(n+1)+1]` -/
def P9470394220781897980.Spec : Prop :=
  ∀ n, (P9470394220781897980.a n : ℤ) = A272600 (n + 1)

end A272600

/-! ## A272600.P12327592613933997047

`∩[A018252(n+1), A124240(n+1)+1]`
-/

namespace A272600.P12327592613933997047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124240 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272600.P12327592613933997047

namespace A272600

/-- `∩[A018252(n+1), A124240(n+1)+1]` -/
def P12327592613933997047.Spec : Prop :=
  ∀ n, (P12327592613933997047.a n : ℤ) = A272600 (n + 1)

end A272600

/-! ## A272600.P10387007176654584121

`∩[lt[2, A176095(n+1)]+1, A124240(n+1)+1]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A272600

/-- `∩[lt[2, A176095(n+1)]+1, A124240(n+1)+1]` -/
def P10387007176654584121.Spec : Prop :=
  ∀ n, (P10387007176654584121.a n : ℤ) = A272600 (n + 1)

theorem P10387007176654584121.correct : P10387007176654584121.Spec := by
  intro n
  simp only [A272600, Nat.add_sub_cancel]

end A272600

/-! ## A272600.P14201693554968255665

`∩[A002808(n+1), A065475(A124240(n+1))]`
-/

namespace A272600.P14201693554968255665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A124240 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272600.P14201693554968255665

namespace A272600

/-- `∩[A002808(n+1), A065475(A124240(n+1))]` -/
def P14201693554968255665.Spec : Prop :=
  ∀ n, (P14201693554968255665.a n : ℤ) = A272600 (n + 1)

end A272600

/-! ## A272600.P4709853707600083327

`eq[A107393(n), A300330(A065168(n+1))]`
-/

namespace A272600.P4709853707600083327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300330 (A065168 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272600.P4709853707600083327

namespace A272600

/-- `eq[A107393(n), A300330(A065168(n+1))]` -/
def P4709853707600083327.Spec : Prop :=
  ∀ n, (P4709853707600083327.a n : ℤ) = A272600 (n + 1)

end A272600

/-!
# A272601: Composites n such that p-1 does not divide n-1 for at least one prime divisor of n-1.

The programs for A272601, there is no canonical definition to state claims against.
-/

/-! ## A272601.P3503783675060334982

`record[A191558(n+4)%A174824(n+3)]`
-/

namespace A272601.P3503783675060334982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191558 (n + 4)) (A174824 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272601.P3503783675060334982

/-! ## A272601.P14946449839540770670

`lt[char[A272600(n+1)], A107393(n)]`
-/

namespace A272601.P14946449839540770670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272600 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A272601.P14946449839540770670

/-! ## A272601.P11163109589032828109

`eq[char[A272600(n+1)], A339579(n+1)]`
-/

namespace A272601.P11163109589032828109
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272600 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A272601.P11163109589032828109

/-! ## A272601.P8065789489167398887

`lt[A212129(A323436(n)), A294886(n+1)]+1`
-/

namespace A272601.P8065789489167398887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212129 (A323436 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294886 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A272601.P8065789489167398887

/-! ## A272601.P11671478408739863019

`lt[A322436(n+1), A032742(n+2)]+2`
-/

namespace A272601.P11671478408739863019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A272601.P11671478408739863019

/-!
# A272602: E.g.f.: exp( sum(n>=1, x^(n!) / n ) ).

The programs for A272602, there is no canonical definition to state claims against.
-/

/-! ## A272602.P2970396991376769736

`A241318(A008000(n)-A055998(n))`
-/

namespace A272602.P2970396991376769736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241318 (A008000 n - A055998 n).toNat

end

end A272602.P2970396991376769736

/-! ## A272602.P4589572674542607191

`A272603(n)-A229660(A362702(n))`
-/

namespace A272602.P4589572674542607191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272603 n - A229660 (A362702 n).toNat

end

end A272602.P4589572674542607191

/-! ## A272602.P15826586489720168535

`A325707(A029518(n+1)+A001221(3*n+1))`
-/

namespace A272602.P15826586489720168535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325707 (A029518 (n + 1) + A001221 (3 * n + 1)).toNat

end

end A272602.P15826586489720168535

/-!
# A272603: Number of permutations of [n] whose cycle lengths are factorials.

The programs for A272603, there is no canonical definition to state claims against.
-/

/-! ## A272603.P17038339160054417327

`A028310(A272602(n)-A029573(n))`
-/

namespace A272603.P17038339160054417327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A272602 n - A029573 n).toNat

end

end A272603.P17038339160054417327

/-! ## A272603.P11252802816173945246

`A028310(A272602(n)-(n!-A060726(n)))`
-/

namespace A272603.P11252802816173945246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A272602 n - ((Nat.factorial n : ℤ) - A060726 n)).toNat

end

end A272603.P11252802816173945246

/-! ## A272603.P7640151638918908979

`A028310(A272602(n)-(A000142(n)-A060726(n)))`
-/

namespace A272603.P7640151638918908979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A272602 n - (A000142 n - A060726 n)).toNat

end

end A272603.P7640151638918908979

/-!
# A272604: Maximum subrange sum over n written out in binary with -1 for each zero (cf. A276691).

The programs for A272604, there is no canonical definition to state claims against.
-/

/-! ## A272604.P2553385438825027277

`a(A318921(n))+1` with `a(0)=0`
-/

namespace A272604.P2553385438825027277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A318921 n).toNat + 1

end

end A272604.P2553385438825027277

/-! ## A272604.P10189787118586891078

`A005496(a(A318921(n)))` with `a(0)=0`
-/

namespace A272604.P10189787118586891078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A005496 (a (A318921 n).toNat).toNat

end

end A272604.P10189787118586891078

/-! ## A272604.P7335336912395378381

`A005555(a(A318921(n)))` with `a(0)=0`
-/

namespace A272604.P7335336912395378381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A005555 (a (A318921 n).toNat).toNat

end

end A272604.P7335336912395378381

/-! ## A272604.P13486337650367106483

`A077168(a(A318921(n)))` with `a(0)=0`
-/

namespace A272604.P13486337650367106483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A077168 (a (A318921 n).toNat).toNat

end

end A272604.P13486337650367106483

/-! ## A272604.P13699362910371534324

`A291769(a(A318921(n)))` with `a(0)=0`
-/

namespace A272604.P13699362910371534324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A291769 (a (A318921 n).toNat).toNat

end

end A272604.P13699362910371534324

/-! ## A272604.P5206369926587866578

`A348553(a(A318921(n)))` with `a(0)=0`
-/

namespace A272604.P5206369926587866578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A348553 (a (A318921 n).toNat).toNat

end

end A272604.P5206369926587866578

/-! ## A272604.P14742229597579404254

`A028242(A005843(a(A318921(n))))` with `a(0)=0`
-/

namespace A272604.P14742229597579404254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A028242 (A005843 (a (A318921 n).toNat).toNat).toNat

end

end A272604.P14742229597579404254

/-!
# A272605: a(1) = 1, for n>=1 a(n) is the largest prime factor of A002182(n).

The programs for A272605, there is no canonical definition to state claims against.
-/

/-! ## A272605.P9146249226057910523

`A136548(A332271(n+1))`
-/

namespace A272605.P9146249226057910523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A332271 (n + 1)).toNat

end

end A272605.P9146249226057910523

/-! ## A272605.P3700460942181234328

`A008578(A108602(n+1)+1)`
-/

namespace A272605.P3700460942181234328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A108602 (n + 1) + 1).toNat

end

end A272605.P3700460942181234328

/-! ## A272605.P955021338784338998

`A158611(A108602(n+1)+2)`
-/

namespace A272605.P955021338784338998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A108602 (n + 1) + 2).toNat

end

end A272605.P955021338784338998

/-! ## A272605.P13839207615675518391

`A329902(n+1)/gcd(A301413(n+1), A329902(n+1))`
-/

namespace A272605.P13839207615675518391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329902 (n + 1) : ℚ) / (Int.gcd (A301413 (n + 1)) (A329902 (n + 1)) : ℚ)

end

end A272605.P13839207615675518391

/-! ## A272605.P16253678953078340021

`A006530(∏{p}[A329902(n+1), #])`
-/

namespace A272605.P16253678953078340021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A272605.P16253678953078340021

/-! ## A272605.P11474298146296309173

`A034699(∏{p}[A329902(n+1), #])`
-/

namespace A272605.P11474298146296309173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A272605.P11474298146296309173

/-! ## A272605.P930779179167913435

`A329607(2^A108602(n+1))`
-/

namespace A272605.P930779179167913435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329607 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A108602 (n + 1) : ℤ))).toNat

end

end A272605.P930779179167913435

/-! ## A272605.P15715224704532711738

`A006530(A329902(n+1))`
-/

namespace A272605.P15715224704532711738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A329902 (n + 1)).toNat

end

end A272605.P15715224704532711738

/-! ## A272605.P11665608514078095743

`A337377(2^A108602(n+1))`
-/

namespace A272605.P11665608514078095743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337377 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A108602 (n + 1) : ℤ))).toNat

end

end A272605.P11665608514078095743

/-! ## A272605.P2221960501803938641

`A006530(A181815(A306802(n+1)))`
-/

namespace A272605.P2221960501803938641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A181815 (A306802 (n + 1)).toNat).toNat

end

end A272605.P2221960501803938641

/-!
# A272607: Possible single line scores, not counting multiples, in duplicate bridge.

The programs for A272607, there is no canonical definition to state claims against.
-/

/-! ## A272607.P3535062435231547600

`10*lt[A117175(n+1), A117166(n+3)]`
-/

namespace A272607.P3535062435231547600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117166 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272607.P3535062435231547600

/-!
# A272608: Number of positive integers k such that both n/(k + 2^x) and n/(n/k - 2^y) are integers for some nonnegative x, y.

The programs for A272608, there is no canonical definition to state claims against.
-/

/-! ## A272608.P4525200821190356477

`A340716(A198982(n+1))%A325339(n+1)`
-/

namespace A272608.P4525200821190356477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340716 (A198982 (n + 1)).toNat) (A325339 (n + 1))

end

end A272608.P4525200821190356477

/-! ## A272608.P3219602526883325328

`A001222(A136252(n)^A082451(n+1))`
-/

namespace A272608.P3219602526883325328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A136252 n : ℚ) ^ (A082451 (n + 1) : ℤ))).toNat

end

end A272608.P3219602526883325328

/-! ## A272608.P9841219748950591079

`A001222(C(A136252(n), A082451(n+1)))`
-/

namespace A272608.P9841219748950591079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.choose (A136252 n).toNat (A082451 (n + 1)).toNat)

end

end A272608.P9841219748950591079

/-! ## A272608.P16339295645320951681

`A001221(C(A193339(n+1), A035175(n+1)))`
-/

namespace A272608.P16339295645320951681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.choose (A193339 (n + 1)).toNat (A035175 (n + 1)).toNat)

end

end A272608.P16339295645320951681

/-! ## A272608.P829671526384957568

`and(A333940(n), A333951(A333955(3*n+4)))`
-/

namespace A272608.P829671526384957568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A333940 n) (A333951 (A333955 (3 * n + 4)).toNat)

end

end A272608.P829671526384957568

/-!
# A272609: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 126", based on the 5-celled von Neumann neighborhood.

The programs for A272609, there is no canonical definition to state claims against.
-/

/-! ## A272609.P3492093080778395840

`A007088(A274059(n))`
-/

namespace A272609.P3492093080778395840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A274059 n).toNat

end

end A272609.P3492093080778395840

/-! ## A272609.P15145504291267334303

`A185544(2*A274059(n))`
-/

namespace A272609.P15145504291267334303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A274059 n).toNat

end

end A272609.P15145504291267334303

/-! ## A272609.P3464671404924881264

`A007088(∑[A097014(10*a(n-2)*n/5)])` with `a(0)=1, a(1)=2`
-/

namespace A272609.P3464671404924881264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A097014 (SequenceMachineLib.roundAway ((10 * f1 (n - 2) : ℚ) * ((n : ℚ) / 5))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A272609.P3464671404924881264

/-!
# A272611: a(1)=1; thereafter a(n) = a(n-a(n-1)) + A272612(n-1).

The programs for A272611, there is no canonical definition to state claims against.
-/

/-! ## A272611.P14504732793245282472

`a(n-a(n-1))+A272612(n)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A272611.P14504732793245282472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - a (n - 1)).toNat + A272612 n

end

end A272611.P14504732793245282472

/-! ## A272611.P14488652233630220185

`A272610(4*n+5+n)/5`
-/

namespace A272611.P14488652233630220185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272610 (4 * n + 5 + n) : ℚ) / 5

end

end A272611.P14488652233630220185

/-!
# A272612: a(0)=1, a(1)=1; thereafter a(n) = a(n-A272611(n)) + a(n-A272611(n-1)).

The programs for A272612, there is no canonical definition to state claims against.
-/

/-! ## A272612.P1357676422287681777

`a(n-A272611(n))+a(n-A272611(n-1))` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A272612.P1357676422287681777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a ((n : ℤ) - A272611 n).toNat + a ((n : ℤ) - A272611 (n - 1)).toNat

end

end A272612.P1357676422287681777

/-! ## A272612.P9303418357385553422

`A272610(5*n+1)/5`
-/

namespace A272612.P9303418357385553422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272610 (5 * n + 1) : ℚ) / 5

end

end A272612.P9303418357385553422

/-! ## A272612.P2314204052209551663

`A245573(2*A272610(5*n+1))`
-/

namespace A272612.P2314204052209551663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245573 (2 * A272610 (5 * n + 1)).toNat

end

end A272612.P2314204052209551663

/-! ## A272612.P14922668541419849305

`A285189(or(A124323(n), A151764(n+1)))`
-/

namespace A272612.P14922668541419849305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (Int.lor (A124323 n) (A151764 (n + 1))).toNat

end

end A272612.P14922668541419849305

/-! ## A272612.P4926207778916191293

`A064876(eq[1, A326474(n+3)])`
-/

namespace A272612.P4926207778916191293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326474 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272612.P4926207778916191293

/-!
# A272613: a(0)=1; thereafter a(n) = a(n-A272611(n)) + a(n-A272612(n)).

The programs for A272613, there is no canonical definition to state claims against.
-/

/-! ## A272613.P7832247121740298768

`a(n-A272611(n))+a(n-A272612(n))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A272613.P7832247121740298768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - A272611 n).toNat + a ((n : ℤ) - A272612 n).toNat

end

end A272613.P7832247121740298768

/-! ## A272613.P2204189216905648960

`A272610(xor(1, 4*n)+n+1)/9`
-/

namespace A272613.P2204189216905648960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272610 (Nat.xor 1 (4 * n) + (n + 1)) : ℚ) / 9

end

end A272613.P2204189216905648960

/-! ## A272613.P5019945745582234740

`A272610(3*n+1+Δ[n²])/9`
-/

namespace A272613.P5019945745582234740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272610 ((3 * n + 1 : ℤ) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat : ℚ) / 9

end

end A272613.P5019945745582234740

/-! ## A272613.P9031000087050745527

`A220658(n)+A193453(A006904(n+4))`
-/

namespace A272613.P9031000087050745527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 n + A193453 (A006904 (n + 4)).toNat

end

end A272613.P9031000087050745527

/-! ## A272613.P3903882360594125201

`A000120(A093971(n+1)+A072028(n+1))`
-/

namespace A272613.P3903882360594125201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A093971 (n + 1) + A072028 (n + 1)).toNat

end

end A272613.P3903882360594125201

/-!
# A272614: Numbers whose binary digits, except for the first "1", are given by floor(((k-n)/n) mod 2) with 1<=k<=n.

The programs for A272614, there is no canonical definition to state claims against.
-/

/-! ## A272614.P11427723720873071361

`record[gcd(A244370(n+1), A368538(n+1))]`
-/

namespace A272614.P11427723720873071361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A244370 (n + 1)) (A368538 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272614.P11427723720873071361

/-! ## A272614.P6677120882689242164

`A006519(A007052(n))*A261616(n)`
-/

namespace A272614.P6677120882689242164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A007052 n).toNat * A261616 n

end

end A272614.P6677120882689242164

/-! ## A272614.P638906075511895841

`A287662(A232394(n+1))`
-/

namespace A272614.P638906075511895841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287662 (A232394 (n + 1)).toNat

end

end A272614.P638906075511895841

/-!
# A272615: Numbers with digits in descending numerical order in base 2, 3 and 4 expansions.

The programs for A272615, there is no canonical definition to state claims against.
-/

/-! ## A272615.P18415751573390615367

`A011793(A001612(n))*A245092(n)`
-/

namespace A272615.P18415751573390615367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011793 (A001612 n).toNat * A245092 n

end

end A272615.P18415751573390615367

/-! ## A272615.P4578038661040342713

`lcm(A082313(n), A349238(A221547(n)))`
-/

namespace A272615.P4578038661040342713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A082313 n) (A349238 (A221547 n).toNat)

end

end A272615.P4578038661040342713

/-! ## A272615.P5797571860224678653

`eq[A264977(n), A319720(A319651(n))]`
-/

namespace A272615.P5797571860224678653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319720 (A319651 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272615.P5797571860224678653

/-! ## A272615.P9384631520454978517

`A101402(A008619(n)*A101128(n+1))`
-/

namespace A272615.P9384631520454978517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101402 (A008619 n * A101128 (n + 1)).toNat

end

end A272615.P9384631520454978517

/-! ## A272615.P12740241548380773347

`A123716(n)*A383382(A257848(n+3))`
-/

namespace A272615.P12740241548380773347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123716 n * A383382 (A257848 (n + 3)).toNat

end

end A272615.P12740241548380773347

/-!
# A272616: Rectangular array, r(n,k), by antidiagonals: the interspersion associated with the fractal sequence A249727.

The programs for A272616, there is no canonical definition to state claims against.
-/

/-! ## A272616.P16813692556805262845

`A357704(A257462(2*n+3))+A194061(n+1)`
-/

namespace A272616.P16813692556805262845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357704 (A257462 (2 * n + 3)).toNat + A194061 (n + 1)

end

end A272616.P16813692556805262845

/-!
# A272617: Concatenation of the numbers from n down to 1 with numbers from 1 to n.

The programs for A272617, there is no canonical definition to state claims against.
-/

/-! ## A272617.P6255100096868696118

`A259937(n+1)+A083827(n+1)`
-/

namespace A272617.P6255100096868696118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259937 (n + 1) + A083827 (n + 1)

end

end A272617.P6255100096868696118

/-! ## A272617.P11077069430217825922

`A083827(n+1)+A007907(2*(n+1))`
-/

namespace A272617.P11077069430217825922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083827 (n + 1) + A007907 (2 * (n + 1))

end

end A272617.P11077069430217825922

/-! ## A272617.P8210493990602267798

`A259937(n+1)+A002283(A033061(n+1))*A019566(n+1)`
-/

namespace A272617.P8210493990602267798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259937 (n + 1) + A002283 (A033061 (n + 1)).toNat * A019566 (n + 1)

end

end A272617.P8210493990602267798

/-! ## A272617.P13293403552212604576

`A259937(n+1)+A002283(A058183(n+1))*A019566(n+1)`
-/

namespace A272617.P13293403552212604576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259937 (n + 1) + A002283 (A058183 (n + 1)).toNat * A019566 (n + 1)

end

end A272617.P13293403552212604576

/-! ## A272617.P15540770599852951417

`A259937(n+1)+A002283(A077727(n+1))*A019566(n+1)`
-/

namespace A272617.P15540770599852951417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259937 (n + 1) + A002283 (A077727 (n + 1)).toNat * A019566 (n + 1)

end

end A272617.P15540770599852951417

/-!
# A272620: Number of ordered ways to write n as w^2 + x^2 + y^2 + z^2 with w + x + y - z a square, where w is an integer and x,y,z are nonnegative integers with |w| <= x >= y <= z < x + y.

The programs for A272620, there is no canonical definition to state claims against.
-/

/-! ## A272620.P7911013351532189578

`gcd(A000201(A017915(n)), A092533(n))`
-/

namespace A272620.P7911013351532189578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000201 (A017915 n).toNat) (A092533 n)

end

end A272620.P7911013351532189578

/-! ## A272620.P5083866749922085756

`A164306(A318830(n+1)+A307687(n+1))`
-/

namespace A272620.P5083866749922085756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (A318830 (n + 1) + A307687 (n + 1)).toNat

end

end A272620.P5083866749922085756

/-! ## A272620.P12387372347351431002

`A225538((2^n)%A102477(n))`
-/

namespace A272620.P12387372347351431002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225538 (Int.tmod (2 ^ n : ℤ) (A102477 n)).toNat

end

end A272620.P12387372347351431002

/-! ## A272620.P9128856276768864923

`A103921(A103921(n+1)^A154435(n))`
-/

namespace A272620.P9128856276768864923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103921 (SequenceMachineLib.roundAway ((A103921 (n + 1) : ℚ) ^ (A154435 n : ℤ))).toNat

end

end A272620.P9128856276768864923

/-!
# A272621: Numbers n such that 10^n-9^(n-1) is prime.

The programs for A272621, there is no canonical definition to state claims against.
-/

/-! ## A272621.P11284950170112912535

`A004273(A103517(n)+A085915(n+1))`
-/

namespace A272621.P11284950170112912535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A103517 n + A085915 (n + 1)).toNat

end

end A272621.P11284950170112912535

/-!
# A272622: Numbers k such that 9*10^k + 19 is prime.

The programs for A272622, there is no canonical definition to state claims against.
-/

/-! ## A272622.P8014905470254918671

`A326774(A000045(n+2))-A263364(3*n+2)`
-/

namespace A272622.P8014905470254918671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326774 (A000045 (n + 2)).toNat - A263364 (3 * n + 2)

end

end A272622.P8014905470254918671

/-!
# A272623: Fibonacci numbers whose first digit is equal to its last digit.

The programs for A272623, there is no canonical definition to state claims against.
-/

/-! ## A272623.P13656303414749114419

`record[gcd(A000045(n), A130457(3*n+2))]`
-/

namespace A272623.P13656303414749114419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000045 n) (A130457 (3 * n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272623.P13656303414749114419

/-! ## A272623.P14932136804919769937

`record[A000045(A345228(n%2+4*n))]`
-/

namespace A272623.P14932136804919769937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A345228 (n % 2 + 4 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272623.P14932136804919769937

/-! ## A272623.P2296406554455154376

`A000045(eq[A016335(n), A029434(n)])`
-/

namespace A272623.P2296406554455154376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016335 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A272623.P2296406554455154376

/-!
# A272624: Array read by antidiagonals: T(n,k) = number of ways to choose 3 distinct points from an n X k rectangular grid so that they form an obtuse isosceles triangle of nonzero area.

The programs for A272624, there is no canonical definition to state claims against.
-/

/-! ## A272624.P9851935998548814031

`A271910(n+1)-(A272626(n+1)+A272625(n+1))`
-/

namespace A272624.P9851935998548814031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271910 (n + 1) - (A272626 (n + 1) + A272625 (n + 1))

end

end A272624.P9851935998548814031

/-! ## A272624.P7809427914549891103

`44%A275120(A144438(n+1))`
-/

namespace A272624.P7809427914549891103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 44 (A275120 (A144438 (n + 1)).toNat)

end

end A272624.P7809427914549891103

/-! ## A272624.P7013486809001218728

`A280830(A317043(n+1))%A094528(3*n+4)`
-/

namespace A272624.P7013486809001218728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280830 (A317043 (n + 1)).toNat) (A094528 (3 * n + 4))

end

end A272624.P7013486809001218728

/-!
# A272625: Array read by antidiagonals: T(n,k) = number of ways to choose 3 distinct points from an n X k rectangular grid so that they form an acute isosceles triangle of nonzero area.

The programs for A272625, there is no canonical definition to state claims against.
-/

/-! ## A272625.P14558779219261247530

`A271910(n+1)-(A272626(n+1)+A272624(n+1))`
-/

namespace A272625.P14558779219261247530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271910 (n + 1) - (A272626 (n + 1) + A272624 (n + 1))

end

end A272625.P14558779219261247530

/-!
# A272626: Array read by antidiagonals: T(n,k) = number of ways to choose 3 distinct points from an n X k rectangular grid so that they form a right isosceles triangle of nonzero area.

The programs for A272626, there is no canonical definition to state claims against.
-/

/-! ## A272626.P7577813489352399647

`A271910(n+1)-(A272625(n+1)+A272624(n+1))`
-/

namespace A272626.P7577813489352399647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271910 (n + 1) - (A272625 (n + 1) + A272624 (n + 1))

end

end A272626.P7577813489352399647

/-! ## A272626.P5912232049146305867

`A276883(A131063(n))-A131063(n)`
-/

namespace A272626.P5912232049146305867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276883 (A131063 n).toNat - A131063 n

end

end A272626.P5912232049146305867

/-! ## A272626.P14709281232255116539

`A127751(A108558(n))`
-/

namespace A272626.P14709281232255116539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127751 (A108558 n).toNat

end

end A272626.P14709281232255116539

/-! ## A272626.P16056400622458950117

`A256258(A173043(n))-1`
-/

namespace A272626.P16056400622458950117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256258 (A173043 n).toNat - 1

end

end A272626.P16056400622458950117

/-!
# A272627: Numbers n = pq where p, q are primes congruent to 3 and 7 mod 8, respectively.

The programs for A272627, the canonical program `A272627.P16581224947195065346` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272627 has offset 1).

The definition of A272627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272627.P2795563020417120264

`filter[A004770(n+1), A353483(#)]`
-/

namespace A272627.P2795563020417120264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353483 (f1 j).toNat = 1) n)

end

end A272627.P2795563020417120264

namespace A272627

/-- `filter[A004770(n+1), A353483(#)]` -/
def P2795563020417120264.Spec : Prop :=
  ∀ n, P2795563020417120264.a n = A272627 (n + 1)

end A272627

/-! ## A272627.P16581224947195065346

`filter[A016105(n+1), A374051(#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A272627

/-- `filter[A016105(n+1), A374051(#)]` -/
def P16581224947195065346.Spec : Prop :=
  ∀ n, P16581224947195065346.a n = A272627 (n + 1)

theorem P16581224947195065346.correct : P16581224947195065346.Spec := by
  intro n
  simp only [A272627, Nat.add_sub_cancel]

end A272627

/-! ## A272627.P11546885844754674720

`filter[A055045(n+1), A353483(#)]`
-/

namespace A272627.P11546885844754674720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353483 (f1 j).toNat = 1) n)

end

end A272627.P11546885844754674720

namespace A272627

/-- `filter[A055045(n+1), A353483(#)]` -/
def P11546885844754674720.Spec : Prop :=
  ∀ n, P11546885844754674720.a n = A272627 (n + 1)

end A272627

/-! ## A272627.P39814185646602354

`filter[A057948(n+1), A374051(#)]`
-/

namespace A272627.P39814185646602354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374051 (f1 j).toNat = 1) n)

end

end A272627.P39814185646602354

namespace A272627

/-- `filter[A057948(n+1), A374051(#)]` -/
def P39814185646602354.Spec : Prop :=
  ∀ n, P39814185646602354.a n = A272627 (n + 1)

end A272627

/-! ## A272627.P16971843586944113540

`filter[A004766(2*n+1), A353483(#)]`
-/

namespace A272627.P16971843586944113540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353483 (f1 j).toNat = 1) n)

end

end A272627.P16971843586944113540

namespace A272627

/-- `filter[A004766(2*n+1), A353483(#)]` -/
def P16971843586944113540.Spec : Prop :=
  ∀ n, P16971843586944113540.a n = A272627 (n + 1)

end A272627

/-! ## A272627.P12235819247420222988

`filter[A016813(2*n+1), A353483(#)]`
-/

namespace A272627.P12235819247420222988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353483 (f1 j).toNat = 1) n)

end

end A272627.P12235819247420222988

namespace A272627

/-- `filter[A016813(2*n+1), A353483(#)]` -/
def P12235819247420222988.Spec : Prop :=
  ∀ n, P12235819247420222988.a n = A272627 (n + 1)

end A272627

/-! ## A272627.P5955795665668006833

`filter[A047436(2*n+1), A353483(#)]`
-/

namespace A272627.P5955795665668006833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047436 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353483 (f1 j).toNat = 1) n)

end

end A272627.P5955795665668006833

namespace A272627

/-- `filter[A047436(2*n+1), A353483(#)]` -/
def P5955795665668006833.Spec : Prop :=
  ∀ n, P5955795665668006833.a n = A272627 (n + 1)

end A272627

/-! ## A272627.P7929326651010292524

`filter[A047550(2*n+1), A353483(#)]`
-/

namespace A272627.P7929326651010292524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047550 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353483 (f1 j).toNat = 1) n)

end

end A272627.P7929326651010292524

namespace A272627

/-- `filter[A047550(2*n+1), A353483(#)]` -/
def P7929326651010292524.Spec : Prop :=
  ∀ n, P7929326651010292524.a n = A272627 (n + 1)

end A272627

/-! ## A272627.P11354379253533869008

`filter[A047608(2*(n+1)), A353483(#)]`
-/

namespace A272627.P11354379253533869008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047608 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353483 (f1 j).toNat = 1) n)

end

end A272627.P11354379253533869008

namespace A272627

/-- `filter[A047608(2*(n+1)), A353483(#)]` -/
def P11354379253533869008.Spec : Prop :=
  ∀ n, P11354379253533869008.a n = A272627 (n + 1)

end A272627

/-! ## A272627.P9881455211794508419

`filter[A047615(2*(n+1)), A353483(#)]`
-/

namespace A272627.P9881455211794508419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047615 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353483 (f1 j).toNat = 1) n)

end

end A272627.P9881455211794508419

namespace A272627

/-- `filter[A047615(2*(n+1)), A353483(#)]` -/
def P9881455211794508419.Spec : Prop :=
  ∀ n, P9881455211794508419.a n = A272627 (n + 1)

end A272627

/-! ## A272627.P16658746695167228854

`filter[A047617(2*(n+1)), A353483(#)]`
-/

namespace A272627.P16658746695167228854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047617 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353483 (f1 j).toNat = 1) n)

end

end A272627.P16658746695167228854

namespace A272627

/-- `filter[A047617(2*(n+1)), A353483(#)]` -/
def P16658746695167228854.Spec : Prop :=
  ∀ n, P16658746695167228854.a n = A272627 (n + 1)

end A272627

/-! ## A272627.P16814181494380038267

`filter[A047621(2*(n+1)), A353483(#)]`
-/

namespace A272627.P16814181494380038267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047621 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353483 (f1 j).toNat = 1) n)

end

end A272627.P16814181494380038267

namespace A272627

/-- `filter[A047621(2*(n+1)), A353483(#)]` -/
def P16814181494380038267.Spec : Prop :=
  ∀ n, P16814181494380038267.a n = A272627 (n + 1)

end A272627

/-! ## A272627.P3340566241963668711

`filter[A168392(2*n+1), A353483(#)]`
-/

namespace A272627.P3340566241963668711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168392 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353483 (f1 j).toNat = 1) n)

end

end A272627.P3340566241963668711

namespace A272627

/-- `filter[A168392(2*n+1), A353483(#)]` -/
def P3340566241963668711.Spec : Prop :=
  ∀ n, P3340566241963668711.a n = A272627 (n + 1)

end A272627

/-! ## A272627.P16285674478189555529

`filter[A222945(2*n+1), A353483(#)]`
-/

namespace A272627.P16285674478189555529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222945 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353483 (f1 j).toNat = 1) n)

end

end A272627.P16285674478189555529

namespace A272627

/-- `filter[A222945(2*n+1), A353483(#)]` -/
def P16285674478189555529.Spec : Prop :=
  ∀ n, P16285674478189555529.a n = A272627 (n + 1)

end A272627

/-! ## A272627.P16859284618340085590

`∩[A004770(n+1), A016105(n+1)]`
-/

namespace A272627.P16859284618340085590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272627.P16859284618340085590

namespace A272627

/-- `∩[A004770(n+1), A016105(n+1)]` -/
def P16859284618340085590.Spec : Prop :=
  ∀ n, (P16859284618340085590.a n : ℤ) = A272627 (n + 1)

end A272627

/-! ## A272627.P15763275434621373705

`∩[A016105(n+1), A047436(n+1)]`
-/

namespace A272627.P15763275434621373705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272627.P15763275434621373705

namespace A272627

/-- `∩[A016105(n+1), A047436(n+1)]` -/
def P15763275434621373705.Spec : Prop :=
  ∀ n, (P15763275434621373705.a n : ℤ) = A272627 (n + 1)

end A272627

/-! ## A272627.P16454410525671678611

`∩[A016105(n+1), A047550(n+1)]`
-/

namespace A272627.P16454410525671678611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272627.P16454410525671678611

namespace A272627

/-- `∩[A016105(n+1), A047550(n+1)]` -/
def P16454410525671678611.Spec : Prop :=
  ∀ n, (P16454410525671678611.a n : ℤ) = A272627 (n + 1)

end A272627

/-! ## A272627.P14239921463438835443

`∩[A016105(n+1), A047608(n+1)]`
-/

namespace A272627.P14239921463438835443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272627.P14239921463438835443

namespace A272627

/-- `∩[A016105(n+1), A047608(n+1)]` -/
def P14239921463438835443.Spec : Prop :=
  ∀ n, (P14239921463438835443.a n : ℤ) = A272627 (n + 1)

end A272627

/-! ## A272627.P1336701194940572331

`∩[A016105(n+1), A047615(n+1)]`
-/

namespace A272627.P1336701194940572331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272627.P1336701194940572331

namespace A272627

/-- `∩[A016105(n+1), A047615(n+1)]` -/
def P1336701194940572331.Spec : Prop :=
  ∀ n, (P1336701194940572331.a n : ℤ) = A272627 (n + 1)

end A272627

/-! ## A272627.P5315075446508283830

`∩[A016105(n+1), A047617(n+1)]`
-/

namespace A272627.P5315075446508283830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272627.P5315075446508283830

namespace A272627

/-- `∩[A016105(n+1), A047617(n+1)]` -/
def P5315075446508283830.Spec : Prop :=
  ∀ n, (P5315075446508283830.a n : ℤ) = A272627 (n + 1)

end A272627

/-!
# A272628: Primes p such that (p^2 + p + 1)/7 is prime.

The programs for A272628, there is no canonical definition to state claims against.
-/

/-! ## A272628.P16259183325913313760

`∩[A045387(n+1), A115558(n+1)]`
-/

namespace A272628.P16259183325913313760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272628.P16259183325913313760

/-! ## A272628.P9662267654565076458

`p?[A002641(n+1)]`
-/

namespace A272628.P9662267654565076458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A272628.P9662267654565076458

/-! ## A272628.P6793636954313690129

`∩[A002641(n+1), A045374(n+1)]`
-/

namespace A272628.P6793636954313690129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272628.P6793636954313690129

/-! ## A272628.P8855842857891915426

`∩[A002641(n+1), A045387(n+1)]`
-/

namespace A272628.P8855842857891915426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272628.P8855842857891915426

/-! ## A272628.P13277289869401714944

`∩[A002641(n+1), A106927(n+1)]`
-/

namespace A272628.P13277289869401714944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272628.P13277289869401714944

/-! ## A272628.P13360978083447668813

`∩[A002641(n+1), A033207(n+1)]`
-/

namespace A272628.P13360978083447668813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272628.P13360978083447668813

/-! ## A272628.P11137415830215024204

`∩[A002641(n+1), A045325(n+1)]`
-/

namespace A272628.P11137415830215024204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272628.P11137415830215024204

/-! ## A272628.P4287839618309635348

`∩[A002641(n+1), A045338(n+1)]`
-/

namespace A272628.P4287839618309635348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272628.P4287839618309635348

/-! ## A272628.P3577544703481773855

`∩[A002641(n+1), A045370(n+1)]`
-/

namespace A272628.P3577544703481773855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272628.P3577544703481773855

/-! ## A272628.P69308040329785134

`∩[A002641(n+1), A045373(n+1)]`
-/

namespace A272628.P69308040329785134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272628.P69308040329785134

/-! ## A272628.P17359852578345746092

`∩[A002641(n+1), A045385(n+1)]`
-/

namespace A272628.P17359852578345746092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272628.P17359852578345746092

/-! ## A272628.P14963077654421303973

`∩[A002641(n+1), A045386(n+1)]`
-/

namespace A272628.P14963077654421303973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272628.P14963077654421303973

/-! ## A272628.P17316694522136025349

`∩[A002641(n+1), A161504(n+1)]`
-/

namespace A272628.P17316694522136025349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272628.P17316694522136025349

/-! ## A272628.P873032756758827593

`∩[A002641(n+1), A038894(n+1)]`
-/

namespace A272628.P873032756758827593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272628.P873032756758827593

/-! ## A272628.P15860346823374243376

`∩[A002641(n+1), A003627(n+1)]`
-/

namespace A272628.P15860346823374243376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272628.P15860346823374243376

/-! ## A272628.P14624920932858547037

`∩[A002641(n+1), A007528(n+1)]`
-/

namespace A272628.P14624920932858547037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272628.P14624920932858547037

/-! ## A272628.P18119417952492403475

`∩[A002641(n+1), A045309(n+1)]`
-/

namespace A272628.P18119417952492403475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272628.P18119417952492403475

/-! ## A272628.P12016052515433470758

`∩[A002641(n+1), A045351(n+1)]`
-/

namespace A272628.P12016052515433470758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272628.P12016052515433470758

/-! ## A272628.P11332646583686015217

`∩[A002641(n+1), A045363(n+1)]`
-/

namespace A272628.P11332646583686015217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272628.P11332646583686015217

/-!
# A272629: Primes p such that (p^2 + p + 1)/13 is prime.

The programs for A272629, there is no canonical definition to state claims against.
-/

/-! ## A272629.P9179075570936086589

`p?[A002642(n+1)]`
-/

namespace A272629.P9179075570936086589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A272629.P9179075570936086589

/-! ## A272629.P6864141905647467429

`p?[record[A002642(A324347(n))]]`
-/

namespace A272629.P6864141905647467429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002642 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A272629.P6864141905647467429

/-! ## A272629.P17172672842524011039

`∩[A002642(n+1), A296937(n+1)]`
-/

namespace A272629.P17172672842524011039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272629.P17172672842524011039

/-! ## A272629.P11835381365522610996

`∩[A002642(n+1), A038883(n+1)]`
-/

namespace A272629.P11835381365522610996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272629.P11835381365522610996

/-! ## A272629.P14484029107288970562

`∩[A002642(n+1), A003627(n+1)]`
-/

namespace A272629.P14484029107288970562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272629.P14484029107288970562

/-! ## A272629.P13320428843116509765

`∩[A002642(n+1), A007528(n+1)]`
-/

namespace A272629.P13320428843116509765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272629.P13320428843116509765

/-! ## A272629.P780659305979008123

`∩[A002642(n+1), A045309(n+1)]`
-/

namespace A272629.P780659305979008123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272629.P780659305979008123

/-! ## A272629.P3950932898385329324

`∩[A002642(n+1), A045410(n+1)]`
-/

namespace A272629.P3950932898385329324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272629.P3950932898385329324

/-! ## A272629.P5854919325881281037

`∩[A002642(n+1), A056955(n+1)]`
-/

namespace A272629.P5854919325881281037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272629.P5854919325881281037

/-! ## A272629.P14134382066758940966

`∩[A002642(n+1), A191070(n+1)]`
-/

namespace A272629.P14134382066758940966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272629.P14134382066758940966

/-! ## A272629.P4490735578453458654

`∩[A002642(n+1), A270997(n+1)]`
-/

namespace A272629.P4490735578453458654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272629.P4490735578453458654

/-! ## A272629.P816801998384684242

`∩[A002642(n+1), A049596(n+1)]`
-/

namespace A272629.P816801998384684242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272629.P816801998384684242

/-! ## A272629.P827747151384280320

`p?[record[A002642(A154958(n))]]`
-/

namespace A272629.P827747151384280320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002642 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A272629.P827747151384280320

/-! ## A272629.P26293560355948369

`∩[A002642(n+1), A040028(n+1)]`
-/

namespace A272629.P26293560355948369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272629.P26293560355948369

/-! ## A272629.P16225511590592227485

`∩[A002642(n+1), A040036(n+1)]`
-/

namespace A272629.P16225511590592227485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272629.P16225511590592227485

/-! ## A272629.P13414196372938512072

`∩[A002642(n+1), A040044(n+1)]`
-/

namespace A272629.P13414196372938512072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272629.P13414196372938512072

/-! ## A272629.P10631095495747939468

`∩[A002642(n+1), A040046(n+1)]`
-/

namespace A272629.P10631095495747939468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272629.P10631095495747939468

/-! ## A272629.P6856182395249213176

`∩[A002642(n+1), A040049(n+1)]`
-/

namespace A272629.P6856182395249213176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272629.P6856182395249213176

/-! ## A272629.P14904857293955370116

`∩[A002642(n+1), A040054(n+1)]`
-/

namespace A272629.P14904857293955370116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272629.P14904857293955370116

/-! ## A272629.P5077080959928192392

`∩[A002642(n+1), A040060(n+1)]`
-/

namespace A272629.P5077080959928192392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272629.P5077080959928192392

/-!
# A272630: a(n) = binomial(3*prime(n), prime(n)) - 3*binomial(2*prime(n), prime(n)) + 3.

The programs for A272630, the canonical program `A272630.P16813920239790550158` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272630 has offset 1).

The definition of A272630 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(3*A000040(n+1), A000040(n+1))-3*C(2*A000040(n+1), A000040(n+1))+3` (program `A272630.P16813920239790550158`, by `A272630.P16813920239790550158.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A272630.P16813920239790550158

`C(3*A000040(n+1), A000040(n+1))-3*C(2*A000040(n+1), A000040(n+1))+3`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A272630

/-- `C(3*A000040(n+1), A000040(n+1))-3*C(2*A000040(n+1), A000040(n+1))+3` -/
def P16813920239790550158.Spec : Prop :=
  ∀ n, P16813920239790550158.a n = A272630 (n + 1)

theorem P16813920239790550158.correct : P16813920239790550158.Spec := by
  intro n
  simp only [A272630, Nat.add_sub_cancel]

end A272630

/-! ## A272630.P16234727469461146047

`A115246(p?[comp[n²]])`
-/

namespace A272630.P16234727469461146047
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115246 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A272630.P16234727469461146047

namespace A272630

/-- `A115246(p?[comp[n²]])` -/
def P16234727469461146047.Spec : Prop :=
  ∀ n, P16234727469461146047.a n = A272630 (n + 1)

end A272630

/-! ## A272630.P3224162817955159820

`A115246(A000040(n+1))`
-/

namespace A272630.P3224162817955159820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115246 (A000040 (n + 1)).toNat

end

end A272630.P3224162817955159820

namespace A272630

/-- `A115246(A000040(n+1))` -/
def P3224162817955159820.Spec : Prop :=
  ∀ n, P3224162817955159820.a n = A272630 (n + 1)

end A272630

/-! ## A272630.P9102181653929802902

`record[A115246(A006530(n+1))]`
-/

namespace A272630.P9102181653929802902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115246 (A006530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272630.P9102181653929802902

namespace A272630

/-- `record[A115246(A006530(n+1))]` -/
def P9102181653929802902.Spec : Prop :=
  ∀ n, P9102181653929802902.a n = A272630 (n + 1)

end A272630

/-! ## A272630.P17172987346024750348

`record[A115246(A014963(n+1))]`
-/

namespace A272630.P17172987346024750348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115246 (A014963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272630.P17172987346024750348

namespace A272630

/-- `record[A115246(A014963(n+1))]` -/
def P17172987346024750348.Spec : Prop :=
  ∀ n, P17172987346024750348.a n = A272630 (n + 1)

end A272630

/-!
# A272631: Sum of three or more consecutive Fibonacci numbers.

The programs for A272631, there is no canonical definition to state claims against.
-/

/-! ## A272631.P9290740406480063315

`A007298(comp[∑[n+1]]+3)`
-/

namespace A272631.P9290740406480063315
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007298 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 3)

end

end A272631.P9290740406480063315

/-! ## A272631.P4125179039040033176

`record[A094585(n+3)]-char[∑[n]]`
-/

namespace A272631.P4125179039040033176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094585 (n + 3)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A272631.P4125179039040033176

/-! ## A272631.P14604092796313608570

`eq[n, n*A200650(n+2)]+2`
-/

namespace A272631.P14604092796313608570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A200650 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A272631.P14604092796313608570

/-! ## A272631.P10386743050499496522

`record[(n+1)/a(A200650(n+1))]` with `a(0)=2`
-/

namespace A272631.P10386743050499496522
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  (n + 1 : ℚ) / f1 (A200650 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272631.P10386743050499496522

/-! ## A272631.P3555106157793124494

`A022290(A030130(n+1))+2`
-/

namespace A272631.P3555106157793124494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A030130 (n + 1)).toNat + 2

end

end A272631.P3555106157793124494

/-! ## A272631.P9167814762602099631

`record[A143061(A014132(n+1)+2)]`
-/

namespace A272631.P9167814762602099631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143061 (A014132 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272631.P9167814762602099631

/-! ## A272631.P4444895274107350519

`record[A035214(n)*A143061(n+1)]`
-/

namespace A272631.P4444895274107350519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n * A143061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272631.P4444895274107350519

/-! ## A272631.P16094518952978737097

`record[A001611(val(A052499(n), 2))+n+1]`
-/

namespace A272631.P16094518952978737097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (SequenceMachineLib.valuation (A052499 n).toNat 2) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272631.P16094518952978737097

/-!
# A272632: Non-Fibonacci numbers that are both a sum and a difference of two Fibonacci numbers.

The programs for A272632, the canonical program `A272632.P12922662635417012980` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272632 has offset 1).

The definition of A272632 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272632.P12922662635417012980

`a(n-2)+a(n-4)` with `a(0)=4, a(1)=6, a(2)=7, a(3)=10`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A272632

/-- `a(n-2)+a(n-4)` -/
def P12922662635417012980.Spec : Prop :=
  ∀ n, (P12922662635417012980.a n : ℤ) = A272632 (n + 1)

theorem P12922662635417012980.correct : P12922662635417012980.Spec := by
  intro n
  simp only [A272632, Nat.add_sub_cancel]

end A272632

/-! ## A272632.P9801008472392494848

`round(ϕ*a(n-2))` with `a(0)=4, a(1)=6, a(2)=7`
-/

namespace A272632.P9801008472392494848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 6, 7] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 2) : ℝ))

end

end A272632.P9801008472392494848

namespace A272632

/-- `round(ϕ*a(n-2))` -/
def P9801008472392494848.Spec : Prop :=
  ∀ n, P9801008472392494848.a n = A272632 (n + 1)

end A272632

/-! ## A272632.P14400677221057597485

`A122194(n+1)+1`
-/

namespace A272632.P14400677221057597485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122194 (n + 1) + 1

end

end A272632.P14400677221057597485

namespace A272632

/-- `A122194(n+1)+1` -/
def P14400677221057597485.Spec : Prop :=
  ∀ n, P14400677221057597485.a n = A272632 (n + 1)

end A272632

/-! ## A272632.P558256597463441748

`∑[A000045(A267182(n)+1)]+3`
-/

namespace A272632.P558256597463441748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A267182 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A272632.P558256597463441748

namespace A272632

/-- `∑[A000045(A267182(n)+1)]+3` -/
def P558256597463441748.Spec : Prop :=
  ∀ n, P558256597463441748.a n = A272632 (n + 1)

end A272632

/-! ## A272632.P11060314043198917801

`record[A035506(n+2)]`
-/

namespace A272632.P11060314043198917801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035506 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272632.P11060314043198917801

namespace A272632

/-- `record[A035506(n+2)]` -/
def P11060314043198917801.Spec : Prop :=
  ∀ n, P11060314043198917801.a n = A272632 (n + 1)

end A272632

/-! ## A272632.P12425106031331544322

`A179242(∑[A152271(n)])`
-/

namespace A272632.P12425106031331544322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179242 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A272632.P12425106031331544322

namespace A272632

/-- `A179242(∑[A152271(n)])` -/
def P12425106031331544322.Spec : Prop :=
  ∀ n, P12425106031331544322.a n = A272632 (n + 1)

end A272632

/-! ## A272632.P10319974201443637363

`A179242(A117142(n+1))`
-/

namespace A272632.P10319974201443637363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179242 (A117142 (n + 1)).toNat

end

end A272632.P10319974201443637363

namespace A272632

/-- `A179242(A117142(n+1))` -/
def P10319974201443637363.Spec : Prop :=
  ∀ n, P10319974201443637363.a n = A272632 (n + 1)

end A272632

/-! ## A272632.P14325368761669655106

`∩[A007298(n+1), A179242(n+1)]`
-/

namespace A272632.P14325368761669655106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007298 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272632.P14325368761669655106

namespace A272632

/-- `∩[A007298(n+1), A179242(n+1)]` -/
def P14325368761669655106.Spec : Prop :=
  ∀ n, (P14325368761669655106.a n : ℤ) = A272632 (n + 1)

end A272632

/-! ## A272632.P6760382327448656575

`A083412(A165157(n+1))`
-/

namespace A272632.P6760382327448656575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083412 (A165157 (n + 1)).toNat

end

end A272632.P6760382327448656575

namespace A272632

/-- `A083412(A165157(n+1))` -/
def P6760382327448656575.Spec : Prop :=
  ∀ n, P6760382327448656575.a n = A272632 (n + 1)

end A272632

/-! ## A272632.P3806414317656602833

`A059389(A101881(n+1)+1)`
-/

namespace A272632.P3806414317656602833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059389 (A101881 (n + 1) + 1).toNat

end

end A272632.P3806414317656602833

namespace A272632

/-- `A059389(A101881(n+1)+1)` -/
def P3806414317656602833.Spec : Prop :=
  ∀ n, P3806414317656602833.a n = A272632 (n + 1)

end A272632

/-!
# A272634: Discriminators of the primes (A272633), without duplicates.

The programs for A272634, there is no canonical definition to state claims against.
-/

/-! ## A272634.P2339016650188246889

`record[A272633(n)%A272633(n+1)]`
-/

namespace A272634.P2339016650188246889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272633 n) (A272633 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272634.P2339016650188246889

/-! ## A272634.P8325801138983825582

`record[A272633(A061395(n+1))]`
-/

namespace A272634.P8325801138983825582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272633 (A061395 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272634.P8325801138983825582

/-! ## A272634.P12446584935763195227

`record[A272633(A092942(n))]`
-/

namespace A272634.P12446584935763195227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272633 (A092942 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272634.P12446584935763195227

/-! ## A272634.P14573185712954686059

`record[A272633(A257687(n))]`
-/

namespace A272634.P14573185712954686059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272633 (A257687 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272634.P14573185712954686059

/-! ## A272634.P2805034703845421294

`record[A272633(abs(A285779(n)))]`
-/

namespace A272634.P2805034703845421294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272633 |A285779 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272634.P2805034703845421294

/-! ## A272634.P6982716296340457601

`record[A272633(n-A026741(n))]`
-/

namespace A272634.P6982716296340457601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272633 ((n : ℤ) - A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272634.P6982716296340457601

/-! ## A272634.P7039366125862740996

`record[A272633(A053645(n+1))]`
-/

namespace A272634.P7039366125862740996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272633 (A053645 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272634.P7039366125862740996

/-! ## A272634.P2394921593761692999

`record[A272633(A285870(n))]`
-/

namespace A272634.P2394921593761692999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272633 (A285870 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272634.P2394921593761692999

/-! ## A272634.P1162258466385087365

`record[A272633(A164089(n+1))]`
-/

namespace A272634.P1162258466385087365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272633 (A164089 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272634.P1162258466385087365

/-!
# A272635: Numbers that are not a sum or a difference of two Fibonacci numbers.

The programs for A272635, the canonical program `A272635.P7311207179197304679` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272635 has offset 1).

The definition of A272635 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272635.P7311207179197304679

`comp[A094570(n)%A094570(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A272635

/-- `comp[A094570(n)%A094570(n+1)]` -/
def P7311207179197304679.Spec : Prop :=
  ∀ n, (P7311207179197304679.a n : ℤ) = A272635 (n + 1)

theorem P7311207179197304679.correct : P7311207179197304679.Spec := by
  intro n
  simp only [A272635, Nat.add_sub_cancel]

end A272635

/-! ## A272635.P9106455226721022676

`comp[∪[A007298(n+1), A059389(n+1)]]`
-/

namespace A272635.P9106455226721022676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007298 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059389 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A272635.P9106455226721022676

namespace A272635

/-- `comp[∪[A007298(n+1), A059389(n+1)]]` -/
def P9106455226721022676.Spec : Prop :=
  ∀ n, (P9106455226721022676.a n : ℤ) = A272635 (n + 1)

end A272635

/-! ## A272635.P14932895245418595061

`comp[∪[A007298(n+1), A084176(n+1)]]`
-/

namespace A272635.P14932895245418595061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007298 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084176 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A272635.P14932895245418595061

namespace A272635

/-- `comp[∪[A007298(n+1), A084176(n+1)]]` -/
def P14932895245418595061.Spec : Prop :=
  ∀ n, (P14932895245418595061.a n : ℤ) = A272635 (n + 1)

end A272635

/-! ## A272635.P15886104769341107303

`∩[A050939(n+1), A059390(n+1)]`
-/

namespace A272635.P15886104769341107303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272635.P15886104769341107303

namespace A272635

/-- `∩[A050939(n+1), A059390(n+1)]` -/
def P15886104769341107303.Spec : Prop :=
  ∀ n, (P15886104769341107303.a n : ℤ) = A272635 (n + 1)

end A272635

/-! ## A272635.P13183816841487107913

`∩[A050939(n+1), comp[A084176(n+1)]]`
-/

namespace A272635.P13183816841487107913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050939 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084176 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A272635.P13183816841487107913

namespace A272635

/-- `∩[A050939(n+1), comp[A084176(n+1)]]` -/
def P13183816841487107913.Spec : Prop :=
  ∀ n, (P13183816841487107913.a n : ℤ) = A272635 (n + 1)

end A272635

/-! ## A272635.P12061552882073270288

`∩[A059390(n+1), A290749(n+1)]`
-/

namespace A272635.P12061552882073270288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272635.P12061552882073270288

namespace A272635

/-- `∩[A059390(n+1), A290749(n+1)]` -/
def P12061552882073270288.Spec : Prop :=
  ∀ n, (P12061552882073270288.a n : ℤ) = A272635 (n + 1)

end A272635

/-!
# A272636: a(0)=0, a(1)=1; thereafter a(n) = squarefree part of a(n-1)+a(n-2).

The programs for A272636, the canonical program `A272636.P16059161604285401161` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272636 has offset 0).

The definition of A272636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272636.P16059161604285401161

`and(7, 5*a(n-3))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=3`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A272636

/-- `and(7, 5*a(n-3))` -/
def P16059161604285401161.Spec : Prop :=
  ∀ n, (P16059161604285401161.a n : ℤ) = A272636 n

theorem P16059161604285401161.correct : P16059161604285401161.Spec := by
  intro n
  simp only [A272636]

end A272636

/-!
# A272638: a(1)=1, a(2)=4; thereafter a(n) = squarefree part of a(n-1)+a(n-2).

The programs for A272638, there is no canonical definition to state claims against.
-/

/-! ## A272638.P12547823822305225570

`A007913(a(n-1)+a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A272638.P12547823822305225570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A007913 (a (n - 1) + a (n - 2)).toNat

end

end A272638.P12547823822305225570

/-!
# A272640: Number of permutations of [1..n] which achieve the worse case bound for a graph domination problem.

The programs for A272640, there is no canonical definition to state claims against.
-/

/-! ## A272640.P5763525784498134381

`and(n!, A335317(ceil(2^(n-1))))`
-/

namespace A272640.P5763525784498134381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial n : ℤ) (A335317 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat)

end

end A272640.P5763525784498134381

/-! ## A272640.P8042008210292701188

`and(n!, A051647((n+2)*n!))`
-/

namespace A272640.P8042008210292701188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial n : ℤ) (A051647 ((n + 2) * Nat.factorial n))

end

end A272640.P8042008210292701188

/-! ## A272640.P11756073031621717956

`and(A099145(n+1)!, A001764(2*n))`
-/

namespace A272640.P11756073031621717956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial (A099145 (n + 1)).toNat : ℤ) (A001764 (2 * n))

end

end A272640.P11756073031621717956

/-!
# A272642: Expansion of (x^4+x^3+x^2-x-1)/(x^4+2*x^3+2*x^2+x-1).

The programs for A272642, the canonical program `A272642.P4678434402008106068` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272642 has offset 0).

The definition of A272642 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-x^2-x^3-x^4)/(1-x-2x^2-2x^3-x^4))` (program `A272642.P4678434402008106068`, by `A272642.P4678434402008106068.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A272642.P4678434402008106068

`ogf((1+x-x^2-x^3-x^4)/(1-x-2x^2-2x^3-x^4))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A272642

/-- `ogf((1+x-x^2-x^3-x^4)/(1-x-2x^2-2x^3-x^4))` -/
def P4678434402008106068.Spec : Prop :=
  ∀ n, P4678434402008106068.a n = A272642 n

theorem P4678434402008106068.correct : P4678434402008106068.Spec := by
  intro n
  simp only [A272642]

end A272642

/-! ## A272642.P14894489960669924346

`2*a(n-1)+a(n-2)-a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=8, a(4)=18, a(5)=42`
-/

namespace A272642.P14894489960669924346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 8, 18, 42] fun n a =>
  2 * a (n - 1) + a (n - 2) - a (n - 4) - a (n - 5)

end

end A272642.P14894489960669924346

namespace A272642

/-- `2*a(n-1)+a(n-2)-a(n-4)-a(n-5)` -/
def P14894489960669924346.Spec : Prop :=
  ∀ n, P14894489960669924346.a n = A272642 n

end A272642

/-! ## A272642.P13962826573062435522

`round(ϕ*(a(n-1)+a(n-2)))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A272642.P13962826573062435522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) + a (n - 2) : ℝ))

end

end A272642.P13962826573062435522

namespace A272642

/-- `round(ϕ*(a(n-1)+a(n-2)))` -/
def P13962826573062435522.Spec : Prop :=
  ∀ n, P13962826573062435522.a n = A272642 n

end A272642

/-! ## A272642.P14760025237834352369

`A210460(n+1)-Δ[A005908(A028310(n))]`
-/

namespace A272642.P14760025237834352369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005908 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210460 (n + 1) - (f1 (n + 1) - f1 n)

end

end A272642.P14760025237834352369

namespace A272642

/-- `A210460(n+1)-Δ[A005908(A028310(n))]` -/
def P14760025237834352369.Spec : Prop :=
  ∀ n, P14760025237834352369.a n = A272642 n

end A272642

/-! ## A272642.P1657651986122353953

`A005913(n)-A005908(n+1)%A005913(n)`
-/

namespace A272642.P1657651986122353953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005913 n - Int.tmod (A005908 (n + 1)) (A005913 n)

end

end A272642.P1657651986122353953

namespace A272642

/-- `A005913(n)-A005908(n+1)%A005913(n)` -/
def P1657651986122353953.Spec : Prop :=
  ∀ n, P1657651986122353953.a n = A272642 n

end A272642

/-! ## A272642.P5693652131545951311

`record[Δ[A005913(n+1)%A005908(n+2)]]`
-/

namespace A272642.P5693652131545951311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005913 (n + 1)) (A005908 (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272642.P5693652131545951311

namespace A272642

/-- `record[Δ[A005913(n+1)%A005908(n+2)]]` -/
def P5693652131545951311.Spec : Prop :=
  ∀ n, P5693652131545951311.a n = A272642 n

end A272642

/-! ## A272642.P14576161897909942598

`A005913(n)-record[A005908(A025581(n))]`
-/

namespace A272642.P14576161897909942598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005908 (A025581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005913 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272642.P14576161897909942598

namespace A272642

/-- `A005913(n)-record[A005908(A025581(n))]` -/
def P14576161897909942598.Spec : Prop :=
  ∀ n, P14576161897909942598.a n = A272642 n

end A272642

/-! ## A272642.P11016939171715268328

`A005913(n)-record[A005908(A002262(n))]`
-/

namespace A272642.P11016939171715268328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005908 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005913 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272642.P11016939171715268328

namespace A272642

/-- `A005913(n)-record[A005908(A002262(n))]` -/
def P11016939171715268328.Spec : Prop :=
  ∀ n, P11016939171715268328.a n = A272642 n

end A272642

/-!
# A272644: Triangle read by rows: T(n,m) = Sum_{i=0..m} Stirling2(m+1,i+1)*(-1)^(m-i)*i^(n-m)*i!, for n >= 2, m = 1..n-1.

The programs for A272644, there is no canonical definition to state claims against.
-/

/-! ## A272644.P4297838852093031373

`A371761(lt[1, A007318(n)])`
-/

namespace A272644.P4297838852093031373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371761 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A272644.P4297838852093031373

/-! ## A272644.P4960808955569390869

`A371761(lt[1, A085478(n)])`
-/

namespace A272644.P4960808955569390869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371761 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A272644.P4960808955569390869

/-! ## A272644.P8376815490025148218

`A371761(lt[1, A101321(n)])`
-/

namespace A272644.P8376815490025148218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371761 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A272644.P8376815490025148218

/-! ## A272644.P18210161852496446477

`A371761(lt[1, A001263(n+1)])`
-/

namespace A272644.P18210161852496446477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371761 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A272644.P18210161852496446477

/-! ## A272644.P1811426329568783955

`A371761(lt[A121373(3*n), A371761(n)])`
-/

namespace A272644.P1811426329568783955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371761 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A272644.P1811426329568783955

/-! ## A272644.P5268266723422366624

`A371761(lt[A002024(n+1), A327086(n+1)])`
-/

namespace A272644.P5268266723422366624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371761 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A272644.P5268266723422366624

/-! ## A272644.P4872908622559391118

`A371761(lt[1, A333157(n)])`
-/

namespace A272644.P4872908622559391118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371761 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A272644.P4872908622559391118

/-! ## A272644.P11935979516321990450

`A382673(n)+A382673(n)-A136126(n+1)`
-/

namespace A272644.P11935979516321990450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382673 n + (A382673 n - A136126 (n + 1))

end

end A272644.P11935979516321990450

/-!
# A272645: a(n) = largest term in row n of array in A272644.

The programs for A272645, there is no canonical definition to state claims against.
-/

/-! ## A272645.P306989693831990099

`A272644(A061925(n+1))`
-/

namespace A272645.P306989693831990099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272644 (A061925 (n + 1)).toNat

end

end A272645.P306989693831990099

/-! ## A272645.P2216761812122584208

`A371761(A074148(n+2))`
-/

namespace A272645.P2216761812122584208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371761 (A074148 (n + 2)).toNat

end

end A272645.P2216761812122584208

/-! ## A272645.P6914908427313074256

`A272644(A194274(n)+2)`
-/

namespace A272645.P6914908427313074256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272644 (A194274 n + 2).toNat

end

end A272645.P6914908427313074256

/-! ## A272645.P14061708849411112733

`A272644(A333574(n+2))`
-/

namespace A272645.P14061708849411112733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272644 (A333574 (n + 2)).toNat

end

end A272645.P14061708849411112733

/-! ## A272645.P13265567414110436936

`A272644(or(2, A194274(n)))`
-/

namespace A272645.P13265567414110436936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272644 (Int.lor 2 (A194274 n)).toNat

end

end A272645.P13265567414110436936

/-! ## A272645.P3289884300872538995

`A272644(xor(2, A194274(n)))`
-/

namespace A272645.P3289884300872538995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272644 (Int.xor 2 (A194274 n)).toNat

end

end A272645.P3289884300872538995

/-! ## A272645.P759521254849388720

`A272644(A007590(n+1)+2)`
-/

namespace A272645.P759521254849388720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272644 (A007590 (n + 1) + 2).toNat

end

end A272645.P759521254849388720

/-! ## A272645.P12907970179170108970

`A272644(A080476(n+1)+2)`
-/

namespace A272645.P12907970179170108970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272644 (A080476 (n + 1) + 2).toNat

end

end A272645.P12907970179170108970

/-!
# A272646: a(0)=a(1)=1; thereafter a(n) = (4*n-3)*a(n-1) + 2*a(n-2).

The programs for A272646, the canonical program `A272646.P15929656547476508917` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272646 has offset 0).

The definition of A272646 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n-3)*a(n-1)+2*a(n-2)` (program `A272646.P15929656547476508917`, by `A272646.P15929656547476508917.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A272646.P15929656547476508917

`(4*n-3)*a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A272646

/-- `(4*n-3)*a(n-1)+2*a(n-2)` -/
def P15929656547476508917.Spec : Prop :=
  ∀ n, P15929656547476508917.a n = A272646 n

theorem P15929656547476508917.correct : P15929656547476508917.Spec := by
  intro n
  simp only [A272646]

end A272646

/-!
# A272647: a(n) = A001517(n) mod 7.

The programs for A272647, the canonical program `A272647.P14059987713643726087` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272647 has offset 0).

The definition of A272647 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272647.P14059987713643726087

`(a(n-2)+(4*n-2)*a(n-1))%7` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A272647

/-- `(a(n-2)+(4*n-2)*a(n-1))%7` -/
def P14059987713643726087.Spec : Prop :=
  ∀ n, P14059987713643726087.a n = A272647 n

theorem P14059987713643726087.correct : P14059987713643726087.Spec := by
  intro n
  simp only [A272647]

end A272647

/-!
# A272648: a(n) = A002119(n) mod 7.

The programs for A272648, the canonical program `A272648.P11003998865257113730` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272648 has offset 0).

The definition of A272648 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272648.P11003998865257113730

`A032766(Δ[A032766(A242062(n))]²)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A272648

/-- `A032766(Δ[A032766(A242062(n))]²)` -/
def P11003998865257113730.Spec : Prop :=
  ∀ n, P11003998865257113730.a n = A272648 n

theorem P11003998865257113730.correct : P11003998865257113730.Spec := by
  intro n
  simp only [A272648]

end A272648

/-!
# A272649: Compressed discriminator of the factorial numbers.

The programs for A272649, there is no canonical definition to state claims against.
-/

/-! ## A272649.P2298046998327203832

`record[A208494(n+1)-A010052(2*(n+2))]`
-/

namespace A272649.P2298046998327203832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208494 (n + 1) - A010052 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272649.P2298046998327203832

/-! ## A272649.P5002852449914384374

`record[gcd(A151878(n), A208494(n+1))]`
-/

namespace A272649.P5002852449914384374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151878 n) (A208494 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272649.P5002852449914384374

/-! ## A272649.P9256589585578466817

`record[A208494(n+1)^(A001248(n+1)%2)-A151878(n+2)]`
-/

namespace A272649.P9256589585578466817
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208494 (n + 1) : ℚ) ^ (Int.tmod (A001248 (n + 1)) 2 : ℤ) - (A151878 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272649.P9256589585578466817

/-! ## A272649.P4612967671327793030

`record[A273064(A286626(n))]`
-/

namespace A272649.P4612967671327793030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273064 (A286626 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272649.P4612967671327793030

/-! ## A272649.P16686892000684592310

`record[A273064(A027750(n+1))]`
-/

namespace A272649.P16686892000684592310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273064 (A027750 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272649.P16686892000684592310

/-!
# A272650: Sum_{ i in 1..p-1, j in 1..p-1, i*j mod p = 1} i*j, where p = n-th prime.

The programs for A272650, there is no canonical definition to state claims against.
-/

/-! ## A272650.P14866008411518009294

`A233780(A047966(∑[n+1]))`
-/

namespace A272650.P14866008411518009294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233780 (A047966 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A272650.P14866008411518009294

/-!
# A272653: Numbers whose binary expansion is an abelian square.

The programs for A272653, there is no canonical definition to state claims against.
-/

/-! ## A272653.P13450597919585899516

`∩[A059012(n+1), A165249(n+1)]`
-/

namespace A272653.P13450597919585899516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272653.P13450597919585899516

/-! ## A272653.P9349120231130048037

`∩[A053754(n+1), A165249(n+1)]`
-/

namespace A272653.P9349120231130048037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272653.P9349120231130048037

/-! ## A272653.P5976560842194826062

`eq[1, A361944(n+1)]+1`
-/

namespace A272653.P5976560842194826062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361944 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A272653.P5976560842194826062

/-! ## A272653.P16937855403923566252

`record[(n+3)/A361944(n+3)]`
-/

namespace A272653.P16937855403923566252
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (A361944 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272653.P16937855403923566252

/-! ## A272653.P11370391886250128541

`eq[1, A361944(A028310(n))]`
-/

namespace A272653.P11370391886250128541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361944 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272653.P11370391886250128541

/-!
# A272654: Binary words beginning with 1 which are abelian squares.

The programs for A272654, there is no canonical definition to state claims against.
-/

/-! ## A272654.P13944978980051359995

`A007088(A272653(n+1))`
-/

namespace A272654.P13944978980051359995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A272653 (n + 1)).toNat

end

end A272654.P13944978980051359995

/-! ## A272654.P17791994769019187659

`A007088(∩[A059012(n+1), A165249(n+1)])`
-/

namespace A272654.P17791994769019187659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165249 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A272654.P17791994769019187659

/-! ## A272654.P2314432928814251394

`A007088(∩[A053754(n+1), A165249(n+1)])`
-/

namespace A272654.P2314432928814251394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165249 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A272654.P2314432928814251394

/-! ## A272654.P12489926660666348640

`A185544(2*A272653(n+1))`
-/

namespace A272654.P12489926660666348640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A272653 (n + 1)).toNat

end

end A272654.P12489926660666348640

/-! ## A272654.P14617544197795716493

`A185544(2*∩[A053754(n+1), A165249(n+1)])`
-/

namespace A272654.P14617544197795716493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165249 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A272654.P14617544197795716493

/-! ## A272654.P1959773586122431313

`A185544(2*∩[A059012(n+1), A165249(n+1)])`
-/

namespace A272654.P1959773586122431313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165249 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A272654.P1959773586122431313

/-!
# A272655: Numbers whose decimal expansion is an abelian square.

The programs for A272655, there is no canonical definition to state claims against.
-/

/-! ## A272655.P11244030090690653663

`record[A321797(A240927(n+1))]`
-/

namespace A272655.P11244030090690653663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 (A240927 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272655.P11244030090690653663

/-! ## A272655.P6444667713761149899

`∩[A115853(n+1), A240927(n+1)]`
-/

namespace A272655.P6444667713761149899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272655.P6444667713761149899

/-! ## A272655.P5968952763610399809

`∩[A240927(n+1), A283870(n+1)]`
-/

namespace A272655.P5968952763610399809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272655.P5968952763610399809

/-! ## A272655.P7368036506439267814

`∩[A240927(n+1), A283871(n+1)]`
-/

namespace A272655.P7368036506439267814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272655.P7368036506439267814

/-! ## A272655.P5868927287048640229

`∩[A240927(n+1), A299792(n+1)]`
-/

namespace A272655.P5868927287048640229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272655.P5868927287048640229

/-! ## A272655.P14384521202098895872

`∩[A240927(n+1), A387866(n+1)]`
-/

namespace A272655.P14384521202098895872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272655.P14384521202098895872

/-! ## A272655.P5836206609346025810

`∪[A020338(n+1), A004086(A056524(n+1))]`
-/

namespace A272655.P5836206609346025810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A056524 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A272655.P5836206609346025810

/-! ## A272655.P5063591211727572959

`A028310(∪[A020338(n+1), A056524(n+1)])`
-/

namespace A272655.P5063591211727572959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056524 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A272655.P5063591211727572959

/-! ## A272655.P3714127596851923018

`∪[A321797(A020338(n+1)), A056524(n+2)]`
-/

namespace A272655.P3714127596851923018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 (A020338 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056524 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A272655.P3714127596851923018

/-!
# A272656: Bisection of A003319: a(n) = A003319(2n).

The programs for A272656, there is no canonical definition to state claims against.
-/

/-! ## A272656.P12730239834857218914

`A003319(2*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A272656.P12730239834857218914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003319 (2 * n)

end

end A272656.P12730239834857218914

/-! ## A272656.P7173915149610695233

`abs(A158882(2*n))`
-/

namespace A272656.P7173915149610695233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158882 (2 * n)|

end

end A272656.P7173915149610695233

/-! ## A272656.P2295917338387816510

`abs(A167894(2*n))`
-/

namespace A272656.P2295917338387816510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A167894 (2 * n)|

end

end A272656.P2295917338387816510

/-! ## A272656.P8523082218774888482

`abs(record[-A158882(n)])`
-/

namespace A272656.P8523082218774888482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A158882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A272656.P8523082218774888482

/-! ## A272656.P1025889701488298025

`A200659(C(2*n, 2))`
-/

namespace A272656.P1025889701488298025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200659 (Nat.choose (2 * n) 2)

end

end A272656.P1025889701488298025

/-!
# A272657: Bisection of A003319: a(n) = A003319(2n+1).

The programs for A272657, there is no canonical definition to state claims against.
-/

/-! ## A272657.P2658231444573217909

`A003319(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A272657.P2658231444573217909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003319 (2 * n + 1)

end

end A272657.P2658231444573217909

/-! ## A272657.P2057578030713235885

`record[A158882(n)]`
-/

namespace A272657.P2057578030713235885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272657.P2057578030713235885

/-! ## A272657.P4055998694634445361

`A158882(Δ[n²])`
-/

namespace A272657.P4055998694634445361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158882 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A272657.P4055998694634445361

/-! ## A272657.P8698866096651777433

`or(1, A233824(2*n))`
-/

namespace A272657.P8698866096651777433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A233824 (2 * n))

end

end A272657.P8698866096651777433

/-! ## A272657.P3213986083221002862

`A200659(n*Δ[n²])`
-/

namespace A272657.P3213986083221002862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200659 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A272657.P3213986083221002862

/-!
# A272661: Number of distinct characteristic polynomials of n X n matrices with elements {0, 1}.

The programs for A272661, there is no canonical definition to state claims against.
-/

/-! ## A272661.P17663068195008410357

`A219652(∏[ceil(9^(n/3))])`
-/

namespace A272661.P17663068195008410357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(9 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219652 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A272661.P17663068195008410357

/-!
# A272662: Number of distinct characteristic polynomials of n X n matrices with elements {-1, +1}.

The programs for A272662, there is no canonical definition to state claims against.
-/

/-! ## A272662.P3515768415123205267

`A174631(3*(n+1)²)`
-/

namespace A272662.P3515768415123205267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174631 (3 * (n + 1) ^ 2)

end

end A272662.P3515768415123205267

/-!
# A272663: Number of distinct characteristic polynomials of n X n matrices with elements {t, 1}, where t is an indeterminate.

The programs for A272663, there is no canonical definition to state claims against.
-/

/-! ## A272663.P6440169940171010907

`A054060(A327025(n))+n`
-/

namespace A272663.P6440169940171010907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054060 (A327025 n).toNat + (n : ℤ)

end

end A272663.P6440169940171010907

/-!
# A272664: (001)(001)(001)(10)*.

The programs for A272664, the canonical program `A272664.P15498615885730451484` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272664 has offset 0).

The definition of A272664 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272664.P15498615885730451484

`char[or(1, a(n-2)+3)]` with `a(0)=8, a(1)=2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A272664

/-- `char[or(1, a(n-2)+3)]` -/
def P15498615885730451484.Spec : Prop :=
  ∀ n, (P15498615885730451484.a n : ℤ) = A272664 n

theorem P15498615885730451484.correct : P15498615885730451484.Spec := by
  intro n
  simp only [A272664]

end A272664

/-!
# A272665: Imaginary parts of b(n) sequence used to define A143056.

The programs for A272665, the canonical program `A272665.P9145813031596374519` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272665 has offset 1).

The definition of A272665 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272665.P9145813031596374519

`2*a(n-1)-2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A272665

/-- `2*a(n-1)-2*a(n-3)-a(n-4)` -/
def P9145813031596374519.Spec : Prop :=
  ∀ n, P9145813031596374519.a n = A272665 (n + 1)

theorem P9145813031596374519.correct : P9145813031596374519.Spec := by
  intro n
  simp only [A272665, Nat.add_sub_cancel]

end A272665

/-! ## A272665.P15832426359281296743

`ogf(x^2/(1-2x+2x^3+x^4))`
-/

namespace A272665.P15832426359281296743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -2, 0, 2, 1] n

end

end A272665.P15832426359281296743

namespace A272665

/-- `ogf(x^2/(1-2x+2x^3+x^4))` -/
def P15832426359281296743.Spec : Prop :=
  ∀ n, P15832426359281296743.a n = A272665 (n + 1)

end A272665

/-! ## A272665.P852700553666589944

`2*(a(n-1)-a(n-3))-a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A272665.P852700553666589944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 2] fun n a =>
  2 * (a (n - 1) - a (n - 3)) - a (n - 4)

end

end A272665.P852700553666589944

namespace A272665

/-- `2*(a(n-1)-a(n-3))-a(n-4)` -/
def P852700553666589944.Spec : Prop :=
  ∀ n, P852700553666589944.a n = A272665 (n + 1)

theorem P852700553666589944.correct : P852700553666589944.Spec := by
  intro n
  simp only [A272665, Nat.add_sub_cancel, A272665.P852700553666589944.a, A272665.P9145813031596374519.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A272665

/-! ## A272665.P7198579750630350623

`Δ[Δ[A101497(n)]]/(A000007(n)-2)`
-/

namespace A272665.P7198579750630350623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101497 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000007 n - 2 : ℚ)

end

end A272665.P7198579750630350623

namespace A272665

/-- `Δ[Δ[A101497(n)]]/(A000007(n)-2)` -/
def P7198579750630350623.Spec : Prop :=
  ∀ n, P7198579750630350623.a n = (A272665 (n + 1) : ℚ)

end A272665

/-! ## A272665.P15587394724587173745

`A057428(n)/2*Δ[Δ[A101497(n)]]`
-/

namespace A272665.P15587394724587173745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101497 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057428 n : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A272665.P15587394724587173745

namespace A272665

/-- `A057428(n)/2*Δ[Δ[A101497(n)]]` -/
def P15587394724587173745.Spec : Prop :=
  ∀ n, P15587394724587173745.a n = (A272665 (n + 1) : ℚ)

end A272665

/-! ## A272665.P12118096685873278462

`(A188802(n)-A101497(n))/2`
-/

namespace A272665.P12118096685873278462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188802 n - A101497 n : ℚ) / 2

end

end A272665.P12118096685873278462

namespace A272665

/-- `(A188802(n)-A101497(n))/2` -/
def P12118096685873278462.Spec : Prop :=
  ∀ n, P12118096685873278462.a n = (A272665 (n + 1) : ℚ)

end A272665

/-!
# A272666: a(n) = A011371(n) + 5*n.

The programs for A272666, the canonical program `A272666.P12795134577239707157` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272666 has offset 0).

The definition of A272666 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A011371(n)+5*n` (program `A272666.P12795134577239707157`, by `A272666.P12795134577239707157.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A272666.P12795134577239707157

`A011371(n)+5*n`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A272666

/-- `A011371(n)+5*n` -/
def P12795134577239707157.Spec : Prop :=
  ∀ n, P12795134577239707157.a n = A272666 n

theorem P12795134577239707157.correct : P12795134577239707157.Spec := by
  intro n
  simp only [A272666]

end A272666

/-! ## A272666.P14057740712641832565

`6*n-A000120(n)`
-/

namespace A272666.P14057740712641832565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - A000120 n

end

end A272666.P14057740712641832565

namespace A272666

/-- `6*n-A000120(n)` -/
def P14057740712641832565.Spec : Prop :=
  ∀ n, P14057740712641832565.a n = A272666 n

theorem P14057740712641832565.correct : P14057740712641832565.Spec := by
  intro n
  simp only [A272666, Nat.add_sub_cancel, A272666.P14057740712641832565.a, A272666.P12795134577239707157.a, A000120, A000120.P2816527436160941581.a, A011371, A011371.P12398255777927387864.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A272666

/-! ## A272666.P9079632972850789313

`a(n-1)+val(n, 2)+5` with `a(0)=0`
-/

namespace A272666.P9079632972850789313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (SequenceMachineLib.valuation n 2 + 5)

end

end A272666.P9079632972850789313

namespace A272666

/-- `a(n-1)+val(n, 2)+5` -/
def P9079632972850789313.Spec : Prop :=
  ∀ n, (P9079632972850789313.a n : ℤ) = A272666 n

end A272666

/-! ## A272666.P5241757546504324131

`∑[∑{e}[and(n, -n), #]]+5*n`
-/

namespace A272666.P5241757546504324131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5 * n

end

end A272666.P5241757546504324131

namespace A272666

/-- `∑[∑{e}[and(n, -n), #]]+5*n` -/
def P5241757546504324131.Spec : Prop :=
  ∀ n, (P5241757546504324131.a n : ℤ) = A272666 n

end A272666

/-! ## A272666.P9408298153147814483

`∑[∑{e}[or(n, -n), #]]+5*n`
-/

namespace A272666.P9408298153147814483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5 * n

end

end A272666.P9408298153147814483

namespace A272666

/-- `∑[∑{e}[or(n, -n), #]]+5*n` -/
def P9408298153147814483.Spec : Prop :=
  ∀ n, (P9408298153147814483.a n : ℤ) = A272666 n

end A272666

/-! ## A272666.P12269830562690541834

`A120738(n)+2*n`
-/

namespace A272666.P12269830562690541834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120738 n + (2 * n : ℤ)

end

end A272666.P12269830562690541834

namespace A272666

/-- `A120738(n)+2*n` -/
def P12269830562690541834.Spec : Prop :=
  ∀ n, P12269830562690541834.a n = A272666 n

theorem P12269830562690541834.correct : P12269830562690541834.Spec := by
  intro n
  simp only [A272666, Nat.add_sub_cancel, A272666.P12269830562690541834.a, A272666.P12795134577239707157.a, A011371, A011371.P12398255777927387864.a, A120738, A120738.P9838444930846786751.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A272666

/-! ## A272666.P8520266508849446446

`A005187(n)+4*n`
-/

namespace A272666.P8520266508849446446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n + (4 * n : ℤ)

end

end A272666.P8520266508849446446

namespace A272666

/-- `A005187(n)+4*n` -/
def P8520266508849446446.Spec : Prop :=
  ∀ n, P8520266508849446446.a n = A272666 n

theorem P8520266508849446446.correct : P8520266508849446446.Spec := by
  intro n
  simp only [A272666, Nat.add_sub_cancel, A272666.P8520266508849446446.a, A272666.P12795134577239707157.a, A005187, A005187.P3874015513960485494.a, A011371, A011371.P12398255777927387864.a, A000120, A000120.P2816527436160941581.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A272666

/-! ## A272666.P17143290344874815475

`∑[val(A255177(n), 2)]+4*n`
-/

namespace A272666.P17143290344874815475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A255177 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4 * n

end

end A272666.P17143290344874815475

namespace A272666

/-- `∑[val(A255177(n), 2)]+4*n` -/
def P17143290344874815475.Spec : Prop :=
  ∀ n, (P17143290344874815475.a n : ℤ) = A272666 n

end A272666

/-! ## A272666.P225315668607270422

`A086343(n+1)+2*(n-1)`
-/

namespace A272666.P225315668607270422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086343 (n + 1) + 2 * ((n : ℤ) - 1)

end

end A272666.P225315668607270422

namespace A272666

/-- `A086343(n+1)+2*(n-1)` -/
def P225315668607270422.Spec : Prop :=
  ∀ n, P225315668607270422.a n = A272666 n

theorem P225315668607270422.correct : P225315668607270422.Spec := by
  intro n
  simp only [A272666, Nat.add_sub_cancel, A272666.P225315668607270422.a, A272666.P12795134577239707157.a, A011371, A011371.P12398255777927387864.a, A086343, A086343.P8284013822573750690.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A272666

/-! ## A272666.P5639737172115519025

`A008585(n)+A004134(n)`
-/

namespace A272666.P5639737172115519025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + A004134 n

end

end A272666.P5639737172115519025

namespace A272666

/-- `A008585(n)+A004134(n)` -/
def P5639737172115519025.Spec : Prop :=
  ∀ n, P5639737172115519025.a n = A272666 n

theorem P5639737172115519025.correct : P5639737172115519025.Spec := by
  intro n
  simp only [A272666, Nat.add_sub_cancel, A272666.P5639737172115519025.a, A272666.P12795134577239707157.a, A004134, A004134.P15858984416175637375.a, A008585, A008585.P13732812384316341435.a, A011371, A011371.P12398255777927387864.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A272666

/-! ## A272666.P4971130789645480489

`A008586(n)+A005187(n)`
-/

namespace A272666.P4971130789645480489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n + A005187 n

end

end A272666.P4971130789645480489

namespace A272666

/-- `A008586(n)+A005187(n)` -/
def P4971130789645480489.Spec : Prop :=
  ∀ n, P4971130789645480489.a n = A272666 n

theorem P4971130789645480489.correct : P4971130789645480489.Spec := by
  intro n
  simp only [A272666, Nat.add_sub_cancel, A272666.P4971130789645480489.a, A272666.P12795134577239707157.a, A005187, A005187.P3874015513960485494.a, A008586, A008586.P15642444062404201100.a, A011371, A011371.P12398255777927387864.a, A000120, A000120.P2816527436160941581.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A272666

/-! ## A272666.P4373547997165117597

`A008589(n)-A092391(n)`
-/

namespace A272666.P4373547997165117597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n - A092391 n

end

end A272666.P4373547997165117597

namespace A272666

/-- `A008589(n)-A092391(n)` -/
def P4373547997165117597.Spec : Prop :=
  ∀ n, P4373547997165117597.a n = A272666 n

theorem P4373547997165117597.correct : P4373547997165117597.Spec := by
  intro n
  simp only [A272666, Nat.add_sub_cancel, A272666.P4373547997165117597.a, A272666.P12795134577239707157.a, A008589, A008589.P8963889148823201939.a, A011371, A011371.P12398255777927387864.a, A092391, A092391.P1831081500129819331.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A272666

/-! ## A272666.P386865866800442046

`A056000(n)-A127944(n)`
-/

namespace A272666.P386865866800442046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056000 n - A127944 n

end

end A272666.P386865866800442046

namespace A272666

/-- `A056000(n)-A127944(n)` -/
def P386865866800442046.Spec : Prop :=
  ∀ n, P386865866800442046.a n = A272666 n

end A272666

/-! ## A272666.P9045316241534545291

`A327492(n)+A047470(n+1)`
-/

namespace A272666.P9045316241534545291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327492 n + A047470 (n + 1)

end

end A272666.P9045316241534545291

namespace A272666

/-- `A327492(n)+A047470(n+1)` -/
def P9045316241534545291.Spec : Prop :=
  ∀ n, P9045316241534545291.a n = A272666 n

end A272666

/-! ## A272666.P1213349861735086057

`A016921(n)-A063787(n+1)`
-/

namespace A272666.P1213349861735086057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n - A063787 (n + 1)

end

end A272666.P1213349861735086057

namespace A272666

/-- `A016921(n)-A063787(n+1)` -/
def P1213349861735086057.Spec : Prop :=
  ∀ n, P1213349861735086057.a n = A272666 n

theorem P1213349861735086057.correct : P1213349861735086057.Spec := by
  intro n
  simp only [A272666, Nat.add_sub_cancel, A272666.P1213349861735086057.a, A272666.P12795134577239707157.a, A011371, A011371.P12398255777927387864.a, A016921, A016921.P18318603358862595186.a, A063787, A063787.P13236937262237871159.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A272666

/-! ## A272666.P3145211066083905704

`A016993(n)-A230300(n+1)`
-/

namespace A272666.P3145211066083905704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n - A230300 (n + 1)

end

end A272666.P3145211066083905704

namespace A272666

/-- `A016993(n)-A230300(n+1)` -/
def P3145211066083905704.Spec : Prop :=
  ∀ n, P3145211066083905704.a n = A272666 n

theorem P3145211066083905704.correct : P3145211066083905704.Spec := by
  intro n
  simp only [A272666, Nat.add_sub_cancel, A272666.P3145211066083905704.a, A272666.P12795134577239707157.a, A011371, A011371.P12398255777927387864.a, A016993, A016993.P16783903167149097063.a, A230300, A230300.P756127149429480426.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A272666

/-! ## A272666.P7956135980798507482

`A087445(n+1)-A274009(n)`
-/

namespace A272666.P7956135980798507482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087445 (n + 1) - A274009 n

end

end A272666.P7956135980798507482

namespace A272666

/-- `A087445(n+1)-A274009(n)` -/
def P7956135980798507482.Spec : Prop :=
  ∀ n, P7956135980798507482.a n = A272666 n

theorem P7956135980798507482.correct : P7956135980798507482.Spec := by
  intro n
  simp only [A272666, Nat.add_sub_cancel, A272666.P7956135980798507482.a, A272666.P12795134577239707157.a, A011371, A011371.P12398255777927387864.a, A087445, A087445.P15689331082767495636.a, A274009, A274009.P14334026613148662434.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A272666

/-! ## A272666.P1864630294400135662

`A000120(n)+2*A004134(n)`
-/

namespace A272666.P1864630294400135662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 2 * A004134 n

end

end A272666.P1864630294400135662

namespace A272666

/-- `A000120(n)+2*A004134(n)` -/
def P1864630294400135662.Spec : Prop :=
  ∀ n, P1864630294400135662.a n = A272666 n

theorem P1864630294400135662.correct : P1864630294400135662.Spec := by
  intro n
  simp only [A272666, Nat.add_sub_cancel, A272666.P1864630294400135662.a, A272666.P12795134577239707157.a, A000120, A000120.P2816527436160941581.a, A004134, A004134.P15858984416175637375.a, A011371, A011371.P12398255777927387864.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A272666

/-!
# A272670: Numbers whose binary expansion is not palindromic but which when reversed and leading zeros omitted, does form a palindrome.

The programs for A272670, there is no canonical definition to state claims against.
-/

/-! ## A272670.P8882871833830041873

`2*A161604(n+1)`
-/

namespace A272670.P8882871833830041873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161604 (n + 1)

end

end A272670.P8882871833830041873

/-! ## A272670.P6886387730828454419

`2*A057890(n+2)`
-/

namespace A272670.P6886387730828454419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057890 (n + 2)

end

end A272670.P6886387730828454419

/-! ## A272670.P4134975045944287793

`∑[A005843(Δ[A057890(n+1)])]`
-/

namespace A272670.P4134975045944287793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057890 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272670.P4134975045944287793

/-! ## A272670.P4803865684806381345

`A161604(n+1)+A057890(n+2)`
-/

namespace A272670.P4803865684806381345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161604 (n + 1) + A057890 (n + 2)

end

end A272670.P4803865684806381345

/-! ## A272670.P3214659600989671456

`filter[A057890(n+1), A178226(#)]`
-/

namespace A272670.P3214659600989671456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A272670.P3214659600989671456

/-! ## A272670.P6038170578965845739

`filter[A161604(n+1), A178226(#)]`
-/

namespace A272670.P6038170578965845739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161604 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A272670.P6038170578965845739

/-! ## A272670.P15615095465425275542

`2*record[gcd(n+1, A057889(n+1))]`
-/

namespace A272670.P15615095465425275542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A057889 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272670.P15615095465425275542

/-! ## A272670.P225818350385620057

`2*lt[A280508(n)², n]`
-/

namespace A272670.P225818350385620057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280508 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A272670.P225818350385620057

/-! ## A272670.P17267468989559967338

`A004277(A161604(n+1))`
-/

namespace A272670.P17267468989559967338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A161604 (n + 1)).toNat

end

end A272670.P17267468989559967338

/-! ## A272670.P4317795519746347136

`A004277(A057890(n+2))`
-/

namespace A272670.P4317795519746347136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A057890 (n + 2)).toNat

end

end A272670.P4317795519746347136

/-! ## A272670.P332114763720866866

`2*eq[n, A057889(A028310(n))]`
-/

namespace A272670.P332114763720866866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272670.P332114763720866866

/-! ## A272670.P11025598982044877936

`2*eq[A000007(n), A280508(n)]`
-/

namespace A272670.P11025598982044877936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280508 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272670.P11025598982044877936

/-! ## A272670.P12627370409744257353

`2*eq[A000038(n), A280508(n)]`
-/

namespace A272670.P12627370409744257353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280508 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272670.P12627370409744257353

/-! ## A272670.P7991666316666823024

`2*eq[A028310(n), A326302(n)]`
-/

namespace A272670.P7991666316666823024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326302 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272670.P7991666316666823024

/-! ## A272670.P17736660717742995373

`2*eq[A028310(n), A366389(n)]`
-/

namespace A272670.P17736660717742995373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366389 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272670.P17736660717742995373

/-! ## A272670.P5769540581889561584

`2*lt[A326302(n), A055944(n)]`
-/

namespace A272670.P5769540581889561584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326302 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272670.P5769540581889561584

/-! ## A272670.P12435485214543074136

`∩[A161604(n+1), A005843(n)]`
-/

namespace A272670.P12435485214543074136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272670.P12435485214543074136

/-! ## A272670.P6689478069695234910

`record[2*A280505(n+1)]`
-/

namespace A272670.P6689478069695234910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A280505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272670.P6689478069695234910

/-! ## A272670.P4588961615302873887

`∩[A057890(n+1), A161602(n+1)]`
-/

namespace A272670.P4588961615302873887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272670.P4588961615302873887

/-! ## A272670.P5026078594924251989

`∩[A161602(n+1), A161604(n+1)]`
-/

namespace A272670.P5026078594924251989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161604 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272670.P5026078594924251989

/-!
# A272671: Numbers k such that the decimal number 1k is a square.

The programs for A272671, there is no canonical definition to state claims against.
-/

/-! ## A272671.P14333901820978891499

`record[A272673(n+2)]`
-/

namespace A272671.P14333901820978891499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272673 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272671.P14333901820978891499

/-! ## A272671.P13710561896580468630

`A272684(n+1)%p?[ceil(2/acot(3*n)²)+n²]`
-/

namespace A272671.P13710561896580468630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (3 * n : ℝ) ^ 2⌉ + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272684 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A272671.P13710561896580468630

/-! ## A272671.P10831784005376980501

`A272684(A104029(∑[n]))`
-/

namespace A272671.P10831784005376980501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272684 (A104029 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A272671.P10831784005376980501

/-! ## A272671.P14975242994270815944

`A272684(A043316(n+1))`
-/

namespace A272671.P14975242994270815944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272684 (A043316 (n + 1)).toNat

end

end A272671.P14975242994270815944

/-! ## A272671.P5942871306686371835

`A272684(A044913(n+1))`
-/

namespace A272671.P5942871306686371835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272684 (A044913 (n + 1)).toNat

end

end A272671.P5942871306686371835

/-!
# A272673: Take list of squares that start with 1 (A045784) and omit the leading 1 and any leading zeros from what is left; if the number was a power of 10, replace it with 0.

The programs for A272673, there is no canonical definition to state claims against.
-/

/-! ## A272673.P16253101395281275592

`A217657(A045784(n+1))`
-/

namespace A272673.P16253101395281275592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 (A045784 (n + 1)).toNat

end

end A272673.P16253101395281275592

/-! ## A272673.P13235156891127290714

`A217657(A045855(n+1)²)`
-/

namespace A272673.P13235156891127290714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 (A045855 (n + 1) ^ 2).toNat

end

end A272673.P13235156891127290714

/-! ## A272673.P8347178314821093965

`A217657(eq[1, A002993(n)]²)`
-/

namespace A272673.P8347178314821093965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2)

end

end A272673.P8347178314821093965

/-! ## A272673.P10072299002659802349

`A217657(eq[1, A000030(n²)]²)`
-/

namespace A272673.P10072299002659802349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2)

end

end A272673.P10072299002659802349

/-! ## A272673.P2410840095998136302

`A217657(eq[1, A004086(n²)%10]²)`
-/

namespace A272673.P2410840095998136302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (n ^ 2)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2)

end

end A272673.P2410840095998136302

/-!
# A272674: 

The programs for A272674, there is no canonical definition to state claims against.
-/

/-! ## A272674.P11544040853236724737

`record[A265432(n)]`
-/

namespace A272674.P11544040853236724737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265432 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272674.P11544040853236724737

/-! ## A272674.P18205717739704044006

`A265432(A272675(n+1))`
-/

namespace A272674.P18205717739704044006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265432 (A272675 (n + 1)).toNat

end

end A272674.P18205717739704044006

/-!
# A272676: Smallest number greater than previous term such that a(n)^2 begins with n.

The programs for A272676, there is no canonical definition to state claims against.
-/

/-! ## A272676.P12809617775292930414

`sqrt(A077502(n))`
-/

namespace A272676.P12809617775292930414
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A077502 n : ℝ)

end

end A272676.P12809617775292930414

/-! ## A272676.P15198781346572289379

`A077502(n)^(2/A040002(n))`
-/

namespace A272676.P15198781346572289379
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A077502 n : ℝ) ^ (2 / (A040002 n : ℚ) : ℝ)

end

end A272676.P15198781346572289379

/-! ## A272676.P13516052249253187897

`A077502(n)^(A060576(n)/2)`
-/

namespace A272676.P13516052249253187897
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A077502 n : ℝ) ^ ((A060576 n : ℚ) / 2 : ℝ)

end

end A272676.P13516052249253187897

/-! ## A272676.P834123224421681749

`A077502(n)^(A005408(n)/A016825(n))`
-/

namespace A272676.P834123224421681749
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A077502 n : ℝ) ^ ((A005408 n : ℚ) / (A016825 n : ℚ) : ℝ)

end

end A272676.P834123224421681749

/-! ## A272676.P7141537750444980754

`A077502(n)^(A001358(n+1)/A075818(n+1))`
-/

namespace A272676.P7141537750444980754
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A077502 n : ℝ) ^ ((A001358 (n + 1) : ℚ) / (A075818 (n + 1) : ℚ) : ℝ)

end

end A272676.P7141537750444980754

/-! ## A272676.P13813078351575242283

`A056926(A077502(n)+char[1])`
-/

namespace A272676.P13813078351575242283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A077502 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A272676.P13813078351575242283

/-! ## A272676.P18361865762219642009

`A056926(A056926(A077502(n))²)`
-/

namespace A272676.P18361865762219642009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A056926 (A077502 n).toNat ^ 2).toNat

end

end A272676.P18361865762219642009

/-! ## A272676.P6965342208267123697

`A056926(A077502(n))%A000954(n)`
-/

namespace A272676.P6965342208267123697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056926 (A077502 n).toNat) (A000954 n)

end

end A272676.P6965342208267123697

/-! ## A272676.P12579876529346665260

`A056926(A077502(n)%A017355(n))`
-/

namespace A272676.P12579876529346665260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (Int.tmod (A077502 n) (A017355 n)).toNat

end

end A272676.P12579876529346665260

/-!
# A272677: Number of digits in A018796 - number of digits in n.

The programs for A272677, there is no canonical definition to state claims against.
-/

/-! ## A272677.P12532590986130167487

`A185679(A018851(n))-A055642(n)`
-/

namespace A272677.P12532590986130167487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185679 (A018851 n).toNat - A055642 n

end

end A272677.P12532590986130167487

/-! ## A272677.P8818402707274426538

`A185679(sqrt(A018796(n)))-A055642(n)`
-/

namespace A272677.P8818402707274426538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185679 (SequenceMachineLib.roundAway (Real.sqrt (A018796 n : ℝ))).toNat - A055642 n

end

end A272677.P8818402707274426538

/-! ## A272677.P12584949776580397225

`A185679(A018796(n)^(1/2))-A055642(n)`
-/

namespace A272677.P12584949776580397225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185679 (SequenceMachineLib.roundAway ((A018796 n : ℝ) ^ ((1 : ℚ) / 2 : ℝ))).toNat - A055642 n

end

end A272677.P12584949776580397225

/-! ## A272677.P17523778686307387640

`A185679(A018851(n))+A055642(n)*A134824(n+2)`
-/

namespace A272677.P17523778686307387640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185679 (A018851 n).toNat + A055642 n * A134824 (n + 2)

end

end A272677.P17523778686307387640

/-! ## A272677.P16860089921448682225

`A055642(A018796(n))-A055642(n)`
-/

namespace A272677.P16860089921448682225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A018796 n).toNat - A055642 n

end

end A272677.P16860089921448682225

/-!
# A272678: Smallest number m such that A272677(m) = n.

The programs for A272678, there is no canonical definition to state claims against.
-/

/-! ## A272678.P14936246623400142852

`A094729(n)*A316848(A101090(n+1))`
-/

namespace A272678.P14936246623400142852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094729 n * A316848 (A101090 (n + 1)).toNat

end

end A272678.P14936246623400142852

/-!
# A272679: a(n)^2 is the smallest square whose binary expansion begins with the binary expansion of n.

The programs for A272679, there is no canonical definition to state claims against.
-/

/-! ## A272679.P6935908288500371295

`sqrt(A272680(n))`
-/

namespace A272679.P6935908288500371295
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A272680 n : ℝ)

end

end A272679.P6935908288500371295

/-! ## A272679.P3323092710784536318

`A272680(n)^(2/A040002(n))`
-/

namespace A272679.P3323092710784536318
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A272680 n : ℝ) ^ (2 / (A040002 n : ℚ) : ℝ)

end

end A272679.P3323092710784536318

/-! ## A272679.P15570106386236131382

`(A057427(n)*A272680(n))^(1/2)`
-/

namespace A272679.P15570106386236131382
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A057427 n * A272680 n : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A272679.P15570106386236131382

/-! ## A272679.P11695494698046402261

`lcm(A056926(n), A272680(n))^(1/2)`
-/

namespace A272679.P11695494698046402261
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A056926 n) (A272680 n) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A272679.P11695494698046402261

/-! ## A272679.P6463089261830986962

`A272680(n)^(A000034(2*n)+1/2-1)`
-/

namespace A272679.P6463089261830986962
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A272680 n : ℝ) ^ ((A000034 (2 * n) : ℚ) + ((1 : ℚ) / 2 - 1) : ℝ)

end

end A272679.P6463089261830986962

/-! ## A272679.P5988489978762734070

`A056926(and(-3, A272680(n)))`
-/

namespace A272679.P5988489978762734070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (Int.land (-3) (A272680 n)).toNat

end

end A272679.P5988489978762734070

/-! ## A272679.P13092592785672734616

`A056926(A272680(n)+char[1])`
-/

namespace A272679.P13092592785672734616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A272680 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A272679.P13092592785672734616

/-! ## A272679.P10903216234628956212

`A056926(or(char[1], A272680(n)))`
-/

namespace A272679.P10903216234628956212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A272680 n)).toNat

end

end A272679.P10903216234628956212

/-! ## A272679.P12341121113411932408

`A056926(or(2, A272680(n))-2)`
-/

namespace A272679.P12341121113411932408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (Int.lor 2 (A272680 n) - 2).toNat

end

end A272679.P12341121113411932408

/-! ## A272679.P16501451308583572172

`A056926(A057427(n)*A272680(n))`
-/

namespace A272679.P16501451308583572172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A057427 n * A272680 n).toNat

end

end A272679.P16501451308583572172

/-! ## A272679.P13692335517652290208

`A056926(A272680(n))%A000124(n)`
-/

namespace A272679.P13692335517652290208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056926 (A272680 n).toNat) (A000124 n)

end

end A272679.P13692335517652290208

/-! ## A272679.P11864159427733926650

`A056926(A272680(n)%A017355(n))`
-/

namespace A272679.P11864159427733926650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (Int.tmod (A272680 n) (A017355 n)).toNat

end

end A272679.P11864159427733926650

/-! ## A272679.P8818428274273133832

`A056926(lcm(A056926(n), A272680(n)))`
-/

namespace A272679.P8818428274273133832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (Int.lcm (A056926 n) (A272680 n))

end

end A272679.P8818428274273133832

/-! ## A272679.P3608057845854100953

`A056926(2*A272680(n)-A272680(n))`
-/

namespace A272679.P3608057845854100953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (2 * A272680 n - A272680 n).toNat

end

end A272679.P3608057845854100953

/-! ## A272679.P4698903752685026124

`A056926(A272680(n)/(2-A057427(n)))`
-/

namespace A272679.P4698903752685026124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (SequenceMachineLib.roundAway ((A272680 n : ℚ) / (2 - A057427 n : ℚ))).toNat

end

end A272679.P4698903752685026124

/-!
# A272680: Smallest square that begins with n (in binary).

The programs for A272680, there is no canonical definition to state claims against.
-/

/-! ## A272680.P1588748757873932339

`A272679(n)²`
-/

namespace A272680.P1588748757873932339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272679 n ^ 2

end

end A272680.P1588748757873932339

/-! ## A272680.P18275948191582106489

`A272679((n+n)/2)^2`
-/

namespace A272680.P18275948191582106489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272679 (SequenceMachineLib.roundAway ((n + n : ℚ) / 2)).toNat ^ 2

end

end A272680.P18275948191582106489

/-! ## A272680.P9722753324385439517

`A272679(A000007(n)+n)*A272679(n)`
-/

namespace A272680.P9722753324385439517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272679 (A000007 n + (n : ℤ)).toNat * A272679 n

end

end A272680.P9722753324385439517

/-! ## A272680.P16525311306080487744

`A272679(A001281(2*n))*A272679(n)`
-/

namespace A272680.P16525311306080487744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272679 (A001281 (2 * n)).toNat * A272679 n

end

end A272680.P16525311306080487744

/-! ## A272680.P8020238260113410733

`A000290(A272679(2*n-n))`
-/

namespace A272680.P8020238260113410733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A272679 (2 * n - n)).toNat

end

end A272680.P8020238260113410733

/-! ## A272680.P3842693050183289536

`A000290(A272679(n)+A000007(n+4))`
-/

namespace A272680.P3842693050183289536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A272679 n + A000007 (n + 4)).toNat

end

end A272680.P3842693050183289536

/-! ## A272680.P17310641519615678411

`A000290(A272679(n))%A007088(n+2)`
-/

namespace A272680.P17310641519615678411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (A272679 n).toNat) (A007088 (n + 2))

end

end A272680.P17310641519615678411

/-! ## A272680.P3450095275574229792

`(A276794(A278040(n))+A272679(n))*A272679(n)`
-/

namespace A272680.P3450095275574229792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A276794 (A278040 n).toNat + A272679 n) * A272679 n

end

end A272680.P3450095275574229792

/-! ## A272680.P10142651232821603087

`A123596(2*A272679(n))`
-/

namespace A272680.P10142651232821603087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123596 (2 * A272679 n).toNat

end

end A272680.P10142651232821603087

/-! ## A272680.P5069397670213423765

`A000290(A272679(n)%A232237(n+1))`
-/

namespace A272680.P5069397670213423765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (A272679 n) (A232237 (n + 1))).toNat

end

end A272680.P5069397670213423765

/-! ## A272680.P15432810994470114544

`A018796(A272679(n)*A272679(n))`
-/

namespace A272680.P15432810994470114544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018796 (A272679 n * A272679 n).toNat

end

end A272680.P15432810994470114544

/-!
# A272681: Smallest binary square that begins with the binary expansion of n.

The programs for A272681, there is no canonical definition to state claims against.
-/

/-! ## A272681.P16492122698064687490

`A001737(A272679(n))`
-/

namespace A272681.P16492122698064687490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001737 (A272679 n).toNat

end

end A272681.P16492122698064687490

/-! ## A272681.P17426533028614553722

`A001737(sqrt(A272680(n)))`
-/

namespace A272681.P17426533028614553722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001737 (SequenceMachineLib.roundAway (Real.sqrt (A272680 n : ℝ))).toNat

end

end A272681.P17426533028614553722

/-! ## A272681.P7943463792891051992

`A001737(A272680(n)^(1/2))`
-/

namespace A272681.P7943463792891051992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001737 (SequenceMachineLib.roundAway ((A272680 n : ℝ) ^ ((1 : ℚ) / 2 : ℝ))).toNat

end

end A272681.P7943463792891051992

/-! ## A272681.P17609837734275023597

`A007088(A272680(n))`
-/

namespace A272681.P17609837734275023597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A272680 n).toNat

end

end A272681.P17609837734275023597

/-! ## A272681.P1998527944242517747

`A007088(A272679(n)²)`
-/

namespace A272681.P1998527944242517747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A272679 n ^ 2).toNat

end

end A272681.P1998527944242517747

/-! ## A272681.P4086178226302957839

`A007088(A272679(n)^2)`
-/

namespace A272681.P4086178226302957839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A272679 n ^ 2).toNat

end

end A272681.P4086178226302957839

/-! ## A272681.P6070246931311634870

`A007088(A272679(n)*A272679(n))`
-/

namespace A272681.P6070246931311634870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A272679 n * A272679 n).toNat

end

end A272681.P6070246931311634870

/-!
# A272684: Terms of A272671 which are not a power of 100 times an earlier term of A272671.

The programs for A272684, there is no canonical definition to state claims against.
-/

/-! ## A272684.P7932859432491021316

`record[A004151(A272671(n+1))]`
-/

namespace A272684.P7932859432491021316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A272671 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272684.P7932859432491021316

/-! ## A272684.P10101829496432163343

`filter[A272671(n+1), A168184(#)]`
-/

namespace A272684.P10101829496432163343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A272684.P10101829496432163343

/-! ## A272684.P4549571504349412751

`record[A004151(record[A272673(n+2)])]`
-/

namespace A272684.P4549571504349412751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272673 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272684.P4549571504349412751

/-! ## A272684.P17547316996305636115

`A265432(A272685(n+1))`
-/

namespace A272684.P17547316996305636115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265432 (A272685 (n + 1)).toNat

end

end A272684.P17547316996305636115

/-! ## A272684.P16228088760235894370

`record[A265432(abs(A273369(n+1)))]`
-/

namespace A272684.P16228088760235894370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265432 |A273369 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272684.P16228088760235894370

/-!
# A272685: a(n) = smallest m such that A265432(m) = A272684(n), or -1 if no such m exists.

The programs for A272685, there is no canonical definition to state claims against.
-/

/-! ## A272685.P3802012245021473049

`A273369(A000267(∑[A005206(n)]))`
-/

namespace A272685.P3802012245021473049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273369 (A000267 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A272685.P3802012245021473049

/-! ## A272685.P4535463298944519380

`A273369(A249157(n+1)+1)`
-/

namespace A272685.P4535463298944519380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273369 (A249157 (n + 1) + 1).toNat

end

end A272685.P4535463298944519380

/-! ## A272685.P11075958304846230861

`A273369(A215870(n+1)+A049872(n))`
-/

namespace A272685.P11075958304846230861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273369 (A215870 (n + 1) + A049872 n).toNat

end

end A272685.P11075958304846230861

/-! ## A272685.P15296033398663788463

`A273369(A043316(n+1))`
-/

namespace A272685.P15296033398663788463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273369 (A043316 (n + 1)).toNat

end

end A272685.P15296033398663788463

/-! ## A272685.P7910027120072456020

`A273369(A044913(n+1))`
-/

namespace A272685.P7910027120072456020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273369 (A044913 (n + 1)).toNat

end

end A272685.P7910027120072456020

/-!
# A272686: Second differences of A078482.

The programs for A272686, there is no canonical definition to state claims against.
-/

/-! ## A272686.P11934870501633679600

`Δ[A272687(n)]`
-/

namespace A272686.P11934870501633679600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272686.P11934870501633679600

/-! ## A272686.P15286288501923123685

`Δ[Δ[A078482(n)]]`
-/

namespace A272686.P15286288501923123685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078482 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272686.P15286288501923123685

/-! ## A272686.P7914572623660937125

`A272687(n+1)-A272687(n)`
-/

namespace A272686.P7914572623660937125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272687 (n + 1) - A272687 n

end

end A272686.P7914572623660937125

/-! ## A272686.P11828791801354452982

`record[A272687(A008611(n))]-A272687(n)`
-/

namespace A272686.P11828791801354452982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272687 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A272687 n

end

end A272686.P11828791801354452982

/-! ## A272686.P6866277005289698104

`record[A272687(A002262(n))]-A272687(n)`
-/

namespace A272686.P6866277005289698104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272687 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A272687 n

end

end A272686.P6866277005289698104

/-!
# A272687: First differences of A078482.

The programs for A272687, there is no canonical definition to state claims against.
-/

/-! ## A272687.P17936833190495642521

`Δ[A078482(n)]`
-/

namespace A272687.P17936833190495642521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272687.P17936833190495642521

/-! ## A272687.P4451048991846591260

`A272686(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272687.P4451048991846591260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272686 (n - 1) + a (n - 1)

end

end A272687.P4451048991846591260

/-! ## A272687.P8759691345328333311

`A078482(n+1)-A078482(n)`
-/

namespace A272687.P8759691345328333311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078482 (n + 1) - A078482 n

end

end A272687.P8759691345328333311

/-! ## A272687.P11796640054092151426

`record[A078482(∑[(-1)^(n%3)])]-A078482(n)`
-/

namespace A272687.P11796640054092151426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078482 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A078482 n

end

end A272687.P11796640054092151426

/-! ## A272687.P12161595637449840381

`record[A078482(A008611(n))]-A078482(n)`
-/

namespace A272687.P12161595637449840381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078482 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A078482 n

end

end A272687.P12161595637449840381

/-! ## A272687.P18303169650714260168

`∑[A272686(n)]+1-A272686(n)`
-/

namespace A272687.P18303169650714260168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272686 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A272686 n)

end

end A272687.P18303169650714260168

/-!
# A272688: The antibracket constants {x_n}^n.

The programs for A272688, there is no canonical definition to state claims against.
-/

/-! ## A272688.P16592048699652664907

`round(((n+1)!*A071724(n)+1)/3)`
-/

namespace A272688.P16592048699652664907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.factorial (n + 1) : ℤ) * A071724 n + 1 : ℚ) / 3)

end

end A272688.P16592048699652664907

/-! ## A272688.P3929998055221010003

`A000203(A072034(n))-A055861(n)`
-/

namespace A272688.P3929998055221010003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A072034 n).toNat - A055861 n

end

end A272688.P3929998055221010003

/-!
# A272690: a(n) = 22*Sum_{i=0..n-2} 46^i*2^(n-2-i) + 2^(n-1).

The programs for A272690, the canonical program `A272690.P16883631233574797546` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272690 has offset 1).

The definition of A272690 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272690.P9433694387070507658

`(46^n+2^n)/2`
-/

namespace A272690.P9433694387070507658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (46 ^ n + 2 ^ n : ℚ) / 2

end

end A272690.P9433694387070507658

namespace A272690

/-- `(46^n+2^n)/2` -/
def P9433694387070507658.Spec : Prop :=
  ∀ n, P9433694387070507658.a n = (A272690 (n + 1) : ℚ)

theorem P9433694387070507658.correct : P9433694387070507658.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A272690, Nat.add_sub_cancel, A272690.P9433694387070507658.a, A272690.P16883631233574797546.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A272690, Nat.add_sub_cancel, A272690.P9433694387070507658.a, A272690.P16883631233574797546.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A272690

/-! ## A272690.P16883631233574797546

`48*a(n-1)-92*a(n-2)` with `a(0)=1, a(1)=24`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A272690

/-- `48*a(n-1)-92*a(n-2)` -/
def P16883631233574797546.Spec : Prop :=
  ∀ n, P16883631233574797546.a n = A272690 (n + 1)

theorem P16883631233574797546.correct : P16883631233574797546.Spec := by
  intro n
  simp only [A272690, Nat.add_sub_cancel]

end A272690

/-!
# A272691: Number of factorizations of the highly factorable numbers A033833.

The programs for A272691, there is no canonical definition to state claims against.
-/

/-! ## A272691.P4515835075579809002

`A033834(n+1)+1`
-/

namespace A272691.P4515835075579809002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033834 (n + 1) + 1

end

end A272691.P4515835075579809002

/-! ## A272691.P3162568744911781968

`A001055(A033833(n+1))`
-/

namespace A272691.P3162568744911781968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A033833 (n + 1)).toNat

end

end A272691.P3162568744911781968

/-! ## A272691.P11614069128648704982

`record[A050322(n+1)]`
-/

namespace A272691.P11614069128648704982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272691.P11614069128648704982

/-! ## A272691.P14281899417288961463

`record[A331049(n+1)]`
-/

namespace A272691.P14281899417288961463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272691.P14281899417288961463

/-! ## A272691.P10394204010633698614

`record[A318284(A181820(n+1))]`
-/

namespace A272691.P10394204010633698614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (A181820 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272691.P10394204010633698614

/-!
# A272692: First differences of A057699.

The programs for A272692, there is no canonical definition to state claims against.
-/

/-! ## A272692.P15361528212586230666

`Δ[A057699(n+1)]`
-/

namespace A272692.P15361528212586230666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272692.P15361528212586230666

/-! ## A272692.P3896893488343150953

`A057699(n+2)-A057699(n+1)`
-/

namespace A272692.P3896893488343150953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057699 (n + 2) - A057699 (n + 1)

end

end A272692.P3896893488343150953

/-! ## A272692.P10276986986242514043

`Δ[record[A057699(A143182(n))]]`
-/

namespace A272692.P10276986986242514043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057699 (A143182 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272692.P10276986986242514043

/-! ## A272692.P1479155481866147465

`Δ[record[A057699(A193592(n))]]`
-/

namespace A272692.P1479155481866147465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057699 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272692.P1479155481866147465

/-! ## A272692.P2031027119000355355

`Δ[record[A057699(A137735(n))]]`
-/

namespace A272692.P2031027119000355355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057699 (A137735 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272692.P2031027119000355355

/-!
# A272694: a(n) = (c(n)+f(c(n)))/2, where c() = A272693() and f(k) = sign(k)*(k mod 2).

The programs for A272694, there is no canonical definition to state claims against.
-/

/-! ## A272694.P16433408555514190812

`round(A272693(n)/2)`
-/

namespace A272694.P16433408555514190812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A272693 n : ℚ) / 2)

end

end A272694.P16433408555514190812

/-!
# A272695: Nearest integer to n*sin(n).

The programs for A272695, the canonical program `A272695.P9371004489439056731` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272695 has offset 0).

The definition of A272695 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272695.P9371004489439056731

`round(n*sin(n))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A272695

/-- `round(n*sin(n))` -/
def P9371004489439056731.Spec : Prop :=
  ∀ n, P9371004489439056731.a n = A272695 n

theorem P9371004489439056731.correct : P9371004489439056731.Spec := by
  intro n
  simp only [A272695]

end A272695

/-! ## A272695.P10925105809251390930

`round(n*cos(acos(0)-n))`
-/

namespace A272695.P10925105809251390930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.cos (Real.arccos (0 : ℝ) - (n : ℝ)))

end

end A272695.P10925105809251390930

namespace A272695

/-- `round(n*cos(acos(0)-n))` -/
def P10925105809251390930.Spec : Prop :=
  ∀ n, P10925105809251390930.a n = A272695 n

end A272695

/-! ## A272695.P17325868840150887154

`round(n*cos(asin(1)-n))`
-/

namespace A272695.P17325868840150887154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.cos (Real.arcsin (1 : ℝ) - (n : ℝ)))

end

end A272695.P17325868840150887154

namespace A272695

/-- `round(n*cos(asin(1)-n))` -/
def P17325868840150887154.Spec : Prop :=
  ∀ n, P17325868840150887154.a n = A272695 n

end A272695

/-! ## A272695.P3645647852365829119

`round(n*cos(n)*tan(n))`
-/

namespace A272695.P3645647852365829119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * (Real.cos (n : ℝ) * Real.tan (n : ℝ)))

end

end A272695.P3645647852365829119

namespace A272695

/-- `round(n*cos(n)*tan(n))` -/
def P3645647852365829119.Spec : Prop :=
  ∀ n, P3645647852365829119.a n = A272695 n

end A272695

/-! ## A272695.P18140359286101961148

`floor(1/2+n*sin(n))`
-/

namespace A272695.P18140359286101961148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((1 : ℚ) / 2 : ℝ) + (n : ℝ) * Real.sin (n : ℝ)⌋

end

end A272695.P18140359286101961148

namespace A272695

/-- `floor(1/2+n*sin(n))` -/
def P18140359286101961148.Spec : Prop :=
  ∀ n, P18140359286101961148.a n = A272695 n

end A272695

/-!
# A272697: Powers of 2 with exactly one odd decimal digit.

The programs for A272697, there is no canonical definition to state claims against.
-/

/-! ## A272697.P4455085138163277511

`2^eq[1, ∑{digits}[2^n, #%2]]`
-/

namespace A272697.P4455085138163277511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x % 2).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272697.P4455085138163277511

/-! ## A272697.P13273585997442721925

`2^eq[1, A055254(n)]`
-/

namespace A272697.P13273585997442721925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272697.P13273585997442721925

/-! ## A272697.P65908895031507922

`A000079(eq[1, ∑{digits}[2^n, #%2]])`
-/

namespace A272697.P65908895031507922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x % 2).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A272697.P65908895031507922

/-! ## A272697.P15218869679119055477

`A000079(eq[1, ∑{digits}[2^n, and(1, #)]])`
-/

namespace A272697.P15218869679119055477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => Nat.land 1 x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A272697.P15218869679119055477

/-! ## A272697.P13757015884555482358

`A000079(eq[1, A055254(n)])`
-/

namespace A272697.P13757015884555482358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272697.P13757015884555482358

/-!
# A272698: Powers of 2 with exactly one even decimal digit.

The programs for A272698, there is no canonical definition to state claims against.
-/

/-! ## A272698.P5396718236134716094

`2^∑[4^C(n, 5)]`
-/

namespace A272698.P5396718236134716094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ Nat.choose n 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A272698.P5396718236134716094

/-!
# A272699: Day of the week of Rosh Hashanah in Hebrew year n.

The programs for A272699, there is no canonical definition to state claims against.
-/

/-! ## A272699.P16824885503897924510

`A350458(n+1)%7+2`
-/

namespace A272699.P16824885503897924510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350458 (n + 1)) 7 + 2

end

end A272699.P16824885503897924510

/-! ## A272699.P17860981616719849873

`p?[A323908(A360646(3*(n+1)))]`
-/

namespace A272699.P17860981616719849873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323908 (A360646 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A272699.P17860981616719849873

