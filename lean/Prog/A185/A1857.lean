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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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

/-!
# A185700: The number of periods in a reshuffling operation for compositions of n.

The programs for A185700, there is no canonical definition to state claims against.
-/

/-! ## A185700.P1439486128790120823

`A051168(comp[∑[n]])`
-/

namespace A185700.P1439486128790120823
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A185700.P1439486128790120823

/-! ## A185700.P15849611282854107873

`A185158(abs(2-n)+5)`
-/

namespace A185700.P15849611282854107873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185158 (|2 - (n : ℤ)| + 5).toNat

end

end A185700.P15849611282854107873

/-! ## A185700.P9288819213834739434

`floor(A185158(n+3)+acot(n))`
-/

namespace A185700.P9288819213834739434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A185158 (n + 3) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A185700.P9288819213834739434

/-! ## A185700.P6106919206186441388

`A053727(n+1)/∑[char[∑[n]]]`
-/

namespace A185700.P6106919206186441388
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053727 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A185700.P6106919206186441388

/-! ## A185700.P15216407257103667699

`A050186(comp[∑[n]])/∑[char[∑[n]]]`
-/

namespace A185700.P15216407257103667699
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050186 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℚ)

end

end A185700.P15216407257103667699

/-! ## A185700.P13719691006517374934

`A179968(n+1)/A128227(n)`
-/

namespace A185700.P13719691006517374934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179968 (n + 1) : ℚ) / (A128227 n : ℚ)

end

end A185700.P13719691006517374934

/-! ## A185700.P10640839306897766239

`A179968(n+1)/A193738(n)`
-/

namespace A185700.P10640839306897766239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179968 (n + 1) : ℚ) / (A193738 n : ℚ)

end

end A185700.P10640839306897766239

/-! ## A185700.P6497082486569145870

`or(char[1], A051168(A014132(n+1)))`
-/

namespace A185700.P6497082486569145870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A051168 (A014132 (n + 1)).toNat)

end

end A185700.P6497082486569145870

/-! ## A185700.P8068225879381454283

`A179968(n+1)/A002260(n+1)`
-/

namespace A185700.P8068225879381454283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179968 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A185700.P8068225879381454283

/-! ## A185700.P3444276247275900179

`A179968(n+1)/A080508(n+1)`
-/

namespace A185700.P3444276247275900179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179968 (n + 1) : ℚ) / (A080508 (n + 1) : ℚ)

end

end A185700.P3444276247275900179

/-! ## A185700.P9988814308311623524

`A179968(n+1)/A080511(n+1)`
-/

namespace A185700.P9988814308311623524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179968 (n + 1) : ℚ) / (A080511 (n + 1) : ℚ)

end

end A185700.P9988814308311623524

/-! ## A185700.P9712810008649207498

`A179968(n+1)/A080818(n+1)`
-/

namespace A185700.P9712810008649207498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179968 (n + 1) : ℚ) / (A080818 (n + 1) : ℚ)

end

end A185700.P9712810008649207498

/-! ## A185700.P17967859476852124371

`A179968(n+1)/A081517(n+1)`
-/

namespace A185700.P17967859476852124371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179968 (n + 1) : ℚ) / (A081517 (n + 1) : ℚ)

end

end A185700.P17967859476852124371

/-! ## A185700.P12712005585177421154

`A179968(n+1)/A128077(n+1)`
-/

namespace A185700.P12712005585177421154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179968 (n + 1) : ℚ) / (A128077 (n + 1) : ℚ)

end

end A185700.P12712005585177421154

/-! ## A185700.P2587181707036628642

`floor(A053727(n+1)/A002024(n+1))`
-/

namespace A185700.P2587181707036628642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053727 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)⌋

end

end A185700.P2587181707036628642

/-! ## A185700.P10316719103268191966

`A051168(∑[A035214(n)])%(4*(n+1))`
-/

namespace A185700.P10316719103268191966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051168 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (4 * (n + 1) : ℤ)

end

end A185700.P10316719103268191966

/-! ## A185700.P3626665500488654520

`1/A183110(n+1)*A053727(n+1)`
-/

namespace A185700.P3626665500488654520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A183110 (n + 1) : ℚ) * (A053727 (n + 1) : ℚ)

end

end A185700.P3626665500488654520

/-! ## A185700.P7728511456848543030

`∑{d}[A051168(A014132(n+1)), A000010(#)]`
-/

namespace A185700.P7728511456848543030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A185700.P7728511456848543030

/-! ## A185700.P2768669296621626191

`A051168(A014132(n+1))%A000040(n+1)`
-/

namespace A185700.P2768669296621626191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051168 (A014132 (n + 1)).toNat) (A000040 (n + 1))

end

end A185700.P2768669296621626191

/-! ## A185700.P2117024546211362074

`lcm((-1)^A018252(n+1), A051168(A014132(n+1)))`
-/

namespace A185700.P2117024546211362074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((-1 : ℚ) ^ (A018252 (n + 1) : ℤ))) (A051168 (A014132 (n + 1)).toNat)

end

end A185700.P2117024546211362074

/-!
# A185705: Characteristic function of positive numbers that are primes ending in 1.

The programs for A185705, the canonical program `A185705.P1369373421699612504` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185705 has offset 1).

The definition of A185705 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185705.P11170870804521409470

`char[p?[5*n+1]-1]`
-/

namespace A185705.P11170870804521409470
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A185705.P11170870804521409470

namespace A185705

/-- `char[p?[5*n+1]-1]` -/
def P11170870804521409470.Spec : Prop :=
  ∀ n, (P11170870804521409470.a n : ℤ) = A185705 (n + 1)

end A185705

/-! ## A185705.P7667459782341489841

`char[A030430(n+1)-1]`
-/

namespace A185705.P7667459782341489841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A185705.P7667459782341489841

namespace A185705

/-- `char[A030430(n+1)-1]` -/
def P7667459782341489841.Spec : Prop :=
  ∀ n, (P7667459782341489841.a n : ℤ) = A185705 (n + 1)

end A185705

/-! ## A185705.P289261965644174814

`char[A045453(n+2)-1]`
-/

namespace A185705.P289261965644174814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A185705.P289261965644174814

namespace A185705

/-- `char[A045453(n+2)-1]` -/
def P289261965644174814.Spec : Prop :=
  ∀ n, (P289261965644174814.a n : ℤ) = A185705 (n + 1)

end A185705

/-! ## A185705.P6210548125883776443

`char[10*A024912(n+1)]`
-/

namespace A185705.P6210548125883776443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A024912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A185705.P6210548125883776443

namespace A185705

/-- `char[10*A024912(n+1)]` -/
def P6210548125883776443.Spec : Prop :=
  ∀ n, (P6210548125883776443.a n : ℤ) = A185705 (n + 1)

end A185705

/-! ## A185705.P7726703891189754678

`char[5*n]*A010051(n+1)`
-/

namespace A185705.P7726703891189754678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A010051 (n + 1)

end

end A185705.P7726703891189754678

namespace A185705

/-- `char[5*n]*A010051(n+1)` -/
def P7726703891189754678.Spec : Prop :=
  ∀ n, P7726703891189754678.a n = A185705 (n + 1)

end A185705

/-! ## A185705.P3005765149984090405

`char[eq[lcm(10, n), A000010(n+1)]]`
-/

namespace A185705.P3005765149984090405
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 10 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A185705.P3005765149984090405

namespace A185705

/-- `char[eq[lcm(10, n), A000010(n+1)]]` -/
def P3005765149984090405.Spec : Prop :=
  ∀ n, (P3005765149984090405.a n : ℤ) = A185705 (n + 1)

end A185705

/-! ## A185705.P14531893153434965524

`val(gcd(5, n), A000005(n+1)+3)`
-/

namespace A185705.P14531893153434965524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.gcd 5 n) (A000005 (n + 1) + 3).toNat

end

end A185705.P14531893153434965524

namespace A185705

/-- `val(gcd(5, n), A000005(n+1)+3)` -/
def P14531893153434965524.Spec : Prop :=
  ∀ n, (P14531893153434965524.a n : ℤ) = A185705 (n + 1)

end A185705

/-! ## A185705.P11778413599232674595

`char[record[A006530(10*n+11)]-1]`
-/

namespace A185705.P11778413599232674595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (10 * n + 11)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A185705.P11778413599232674595

namespace A185705

/-- `char[record[A006530(10*n+11)]-1]` -/
def P11778413599232674595.Spec : Prop :=
  ∀ n, (P11778413599232674595.a n : ℤ) = A185705 (n + 1)

end A185705

/-! ## A185705.P14516433380693583340

`C(n, lcm(5, n^A001222(n+1)))`
-/

namespace A185705.P14516433380693583340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Int.lcm 5 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A001222 (n + 1) : ℤ))))

end

end A185705.P14516433380693583340

namespace A185705

/-- `C(n, lcm(5, n^A001222(n+1)))` -/
def P14516433380693583340.Spec : Prop :=
  ∀ n, (P14516433380693583340.a n : ℤ) = A185705 (n + 1)

end A185705

/-! ## A185705.P11491290429758503972

`char[A000010(A030430(n+1))]`
-/

namespace A185705.P11491290429758503972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A030430 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A185705.P11491290429758503972

namespace A185705

/-- `char[A000010(A030430(n+1))]` -/
def P11491290429758503972.Spec : Prop :=
  ∀ n, (P11491290429758503972.a n : ℤ) = A185705 (n + 1)

end A185705

/-! ## A185705.P3535628091834983670

`char[A008592(A024912(n+1))]`
-/

namespace A185705.P3535628091834983670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (A024912 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A185705.P3535628091834983670

namespace A185705

/-- `char[A008592(A024912(n+1))]` -/
def P3535628091834983670.Spec : Prop :=
  ∀ n, (P3535628091834983670.a n : ℤ) = A185705 (n + 1)

end A185705

/-! ## A185705.P13739113865205112706

`char[A000010(A045453(n+2))]`
-/

namespace A185705.P13739113865205112706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A045453 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A185705.P13739113865205112706

namespace A185705

/-- `char[A000010(A045453(n+2))]` -/
def P13739113865205112706.Spec : Prop :=
  ∀ n, (P13739113865205112706.a n : ℤ) = A185705 (n + 1)

end A185705

/-! ## A185705.P1369373421699612504

`A010051(n+1)*A079998(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A185705

/-- `A010051(n+1)*A079998(n)` -/
def P1369373421699612504.Spec : Prop :=
  ∀ n, P1369373421699612504.a n = A185705 (n + 1)

theorem P1369373421699612504.correct : P1369373421699612504.Spec := by
  intro n
  simp only [A185705, Nat.add_sub_cancel]

end A185705

/-! ## A185705.P14703355722500892654

`A061007(n+1)%A010122(n)`
-/

namespace A185705.P14703355722500892654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061007 (n + 1)) (A010122 n)

end

end A185705.P14703355722500892654

namespace A185705

/-- `A061007(n+1)%A010122(n)` -/
def P14703355722500892654.Spec : Prop :=
  ∀ n, P14703355722500892654.a n = A185705 (n + 1)

end A185705

/-! ## A185705.P12096967334940497934

`char[A008592(A126785(n+1)+1)]`
-/

namespace A185705.P12096967334940497934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (A126785 (n + 1) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A185705.P12096967334940497934

namespace A185705

/-- `char[A008592(A126785(n+1)+1)]` -/
def P12096967334940497934.Spec : Prop :=
  ∀ n, (P12096967334940497934.a n : ℤ) = A185705 (n + 1)

end A185705

/-! ## A185705.P13055227604193694394

`C(A000010(n+1), A109046(n))%(n+1)`
-/

namespace A185705.P13055227604193694394
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000010 (n + 1)).toNat (A109046 n).toNat % (n + 1)

end

end A185705.P13055227604193694394

namespace A185705

/-- `C(A000010(n+1), A109046(n))%(n+1)` -/
def P13055227604193694394.Spec : Prop :=
  ∀ n, (P13055227604193694394.a n : ℤ) = A185705 (n + 1)

end A185705

/-! ## A185705.P9832764573742954747

`A010051((n+1)*A010879(2*n+1))`
-/

namespace A185705.P9832764573742954747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 ((n + 1 : ℤ) * A010879 (2 * n + 1)).toNat

end

end A185705.P9832764573742954747

namespace A185705

/-- `A010051((n+1)*A010879(2*n+1))` -/
def P9832764573742954747.Spec : Prop :=
  ∀ n, P9832764573742954747.a n = A185705 (n + 1)

end A185705

/-! ## A185705.P6718991501321008524

`val(gcd(3, A310492(n)), A001222(n+1)+2)`
-/

namespace A185705.P6718991501321008524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.gcd 3 (A310492 n)) (A001222 (n + 1) + 2).toNat

end

end A185705.P6718991501321008524

namespace A185705

/-- `val(gcd(3, A310492(n)), A001222(n+1)+2)` -/
def P6718991501321008524.Spec : Prop :=
  ∀ n, (P6718991501321008524.a n : ℤ) = A185705 (n + 1)

end A185705

/-! ## A185705.P8079005888758957828

`val(A040442(n), A244043(A336158(n+1)))`
-/

namespace A185705.P8079005888758957828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A040442 n).toNat (A244043 (A336158 (n + 1)).toNat).toNat

end

end A185705.P8079005888758957828

namespace A185705

/-- `val(A040442(n), A244043(A336158(n+1)))` -/
def P8079005888758957828.Spec : Prop :=
  ∀ n, (P8079005888758957828.a n : ℤ) = A185705 (n + 1)

end A185705

/-! ## A185705.P15559562829985166980

`A008683(A007444(A367466(n+1))²)`
-/

namespace A185705.P15559562829985166980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007444 (A367466 (n + 1)).toNat ^ 2).toNat

end

end A185705.P15559562829985166980

namespace A185705

/-- `A008683(A007444(A367466(n+1))²)` -/
def P15559562829985166980.Spec : Prop :=
  ∀ n, P15559562829985166980.a n = A185705 (n + 1)

end A185705

/-!
# A185706: Characteristic function of positive numbers that are primes ending in 3.

The programs for A185706, the canonical program `A185706.P14095744241948126582` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185706 has offset 1).

The definition of A185706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185706.P7611093521225627350

`char[p?[5*n-2]-1]`
-/

namespace A185706.P7611093521225627350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A185706.P7611093521225627350

namespace A185706

/-- `char[p?[5*n-2]-1]` -/
def P7611093521225627350.Spec : Prop :=
  ∀ n, (P7611093521225627350.a n : ℤ) = A185706 (n + 1)

end A185706

/-! ## A185706.P7279108135694234720

`char[A030431(n+1)-1]`
-/

namespace A185706.P7279108135694234720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A185706.P7279108135694234720

namespace A185706

/-- `char[A030431(n+1)-1]` -/
def P7279108135694234720.Spec : Prop :=
  ∀ n, (P7279108135694234720.a n : ℤ) = A185706 (n + 1)

end A185706

/-! ## A185706.P8253678454520900386

`C((2*n)%5, A000005(n+1)²)`
-/

namespace A185706.P8253678454520900386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n % 5) (A000005 (n + 1) ^ 2).toNat

end

end A185706.P8253678454520900386

namespace A185706

/-- `C((2*n)%5, A000005(n+1)²)` -/
def P8253678454520900386.Spec : Prop :=
  ∀ n, (P8253678454520900386.a n : ℤ) = A185706 (n + 1)

end A185706

/-! ## A185706.P13265279172326776621

`val(∑[n]*A010051(n+1)+2, 5)`
-/

namespace A185706.P13265279172326776621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A010051 (n + 1) + 2).toNat 5

end

end A185706.P13265279172326776621

namespace A185706

/-- `val(∑[n]*A010051(n+1)+2, 5)` -/
def P13265279172326776621.Spec : Prop :=
  ∀ n, (P13265279172326776621.a n : ℤ) = A185706 (n + 1)

end A185706

/-! ## A185706.P10417178231006303653

`C((n%5)%3, A046645(n+1)+1)`
-/

namespace A185706.P10417178231006303653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n % 5 % 3) (A046645 (n + 1) + 1).toNat

end

end A185706.P10417178231006303653

namespace A185706

/-- `C((n%5)%3, A046645(n+1)+1)` -/
def P10417178231006303653.Spec : Prop :=
  ∀ n, (P10417178231006303653.a n : ℤ) = A185706 (n + 1)

end A185706

/-! ## A185706.P2372918721756752617

`val((n+3)*A020639(n+1), 5*(n+1))`
-/

namespace A185706.P2372918721756752617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 3 : ℤ) * A020639 (n + 1)).toNat (5 * (n + 1))

end

end A185706.P2372918721756752617

namespace A185706

/-- `val((n+3)*A020639(n+1), 5*(n+1))` -/
def P2372918721756752617.Spec : Prop :=
  ∀ n, (P2372918721756752617.a n : ℤ) = A185706 (n + 1)

end A185706

/-! ## A185706.P17544076382631767199

`val((n+3)*A000203(n+1), 5*(n+2))`
-/

namespace A185706.P17544076382631767199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 3 : ℤ) * A000203 (n + 1)).toNat (5 * (n + 2))

end

end A185706.P17544076382631767199

namespace A185706

/-- `val((n+3)*A000203(n+1), 5*(n+2))` -/
def P17544076382631767199.Spec : Prop :=
  ∀ n, (P17544076382631767199.a n : ℤ) = A185706 (n + 1)

end A185706

/-! ## A185706.P13455956844745250954

`val((2*n+1)*A006530(n+1), 5*(n+1))`
-/

namespace A185706.P13455956844745250954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((2 * n + 1 : ℤ) * A006530 (n + 1)).toNat (5 * (n + 1))

end

end A185706.P13455956844745250954

namespace A185706

/-- `val((2*n+1)*A006530(n+1), 5*(n+1))` -/
def P13455956844745250954.Spec : Prop :=
  ∀ n, (P13455956844745250954.a n : ℤ) = A185706 (n + 1)

end A185706

/-! ## A185706.P10363104010024085186

`val((2*n+1)*A014963(n+1), 5*(n+1))`
-/

namespace A185706.P10363104010024085186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((2 * n + 1 : ℤ) * A014963 (n + 1)).toNat (5 * (n + 1))

end

end A185706.P10363104010024085186

namespace A185706

/-- `val((2*n+1)*A014963(n+1), 5*(n+1))` -/
def P10363104010024085186.Spec : Prop :=
  ∀ n, (P10363104010024085186.a n : ℤ) = A185706 (n + 1)

end A185706

/-! ## A185706.P14598106876166870537

`char[record[A006530(xor(1, 3*n)+2*(n+1))]-1]`
-/

namespace A185706.P14598106876166870537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.xor 1 (3 * n) + 2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A185706.P14598106876166870537

namespace A185706

/-- `char[record[A006530(xor(1, 3*n)+2*(n+1))]-1]` -/
def P14598106876166870537.Spec : Prop :=
  ∀ n, (P14598106876166870537.a n : ℤ) = A185706 (n + 1)

end A185706

/-! ## A185706.P14095744241948126582

`A001878(A118136(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A185706

/-- `A001878(A118136(n))` -/
def P14095744241948126582.Spec : Prop :=
  ∀ n, P14095744241948126582.a n = A185706 (n + 1)

theorem P14095744241948126582.correct : P14095744241948126582.Spec := by
  intro n
  simp only [A185706, Nat.add_sub_cancel]

end A185706

/-! ## A185706.P11764484964913666506

`A001878(A014973(n+1))`
-/

namespace A185706.P11764484964913666506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (A014973 (n + 1)).toNat

end

end A185706.P11764484964913666506

namespace A185706

/-- `A001878(A014973(n+1))` -/
def P11764484964913666506.Spec : Prop :=
  ∀ n, P11764484964913666506.a n = A185706 (n + 1)

end A185706

/-! ## A185706.P16703672913248235002

`A001878(A061397(n+1))`
-/

namespace A185706.P16703672913248235002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (A061397 (n + 1)).toNat

end

end A185706.P16703672913248235002

namespace A185706

/-- `A001878(A061397(n+1))` -/
def P16703672913248235002.Spec : Prop :=
  ∀ n, P16703672913248235002.a n = A185706 (n + 1)

end A185706

/-! ## A185706.P7515899011150633171

`A001878(A089026(n+1))`
-/

namespace A185706.P7515899011150633171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (A089026 (n + 1)).toNat

end

end A185706.P7515899011150633171

namespace A185706

/-- `A001878(A089026(n+1))` -/
def P7515899011150633171.Spec : Prop :=
  ∀ n, P7515899011150633171.a n = A185706 (n + 1)

end A185706

/-! ## A185706.P8553077821694528095

`A118136(n)%A130782(n)`
-/

namespace A185706.P8553077821694528095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118136 n) (A130782 n)

end

end A185706.P8553077821694528095

namespace A185706

/-- `A118136(n)%A130782(n)` -/
def P8553077821694528095.Spec : Prop :=
  ∀ n, P8553077821694528095.a n = A185706 (n + 1)

end A185706

/-! ## A185706.P2008508908693841335

`char[A000010(A030431(n+1))]`
-/

namespace A185706.P2008508908693841335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A030431 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A185706.P2008508908693841335

namespace A185706

/-- `char[A000010(A030431(n+1))]` -/
def P2008508908693841335.Spec : Prop :=
  ∀ n, (P2008508908693841335.a n : ℤ) = A185706 (n + 1)

end A185706

/-! ## A185706.P11504924833891878065

`char[A061397(A016885(n))-1]`
-/

namespace A185706.P11504924833891878065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A016885 n).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A185706.P11504924833891878065

namespace A185706

/-- `char[A061397(A016885(n))-1]` -/
def P11504924833891878065.Spec : Prop :=
  ∀ n, (P11504924833891878065.a n : ℤ) = A185706 (n + 1)

end A185706

/-! ## A185706.P2521599757003769441

`A002372(n+1)%A130782(n)`
-/

namespace A185706.P2521599757003769441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002372 (n + 1)) (A130782 n)

end

end A185706.P2521599757003769441

namespace A185706

/-- `A002372(n+1)%A130782(n)` -/
def P2521599757003769441.Spec : Prop :=
  ∀ n, P2521599757003769441.a n = A185706 (n + 1)

end A185706

/-! ## A185706.P12841901232571959728

`and(A010051(n+1), A035043(n))`
-/

namespace A185706.P12841901232571959728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010051 (n + 1)) (A035043 n)

end

end A185706.P12841901232571959728

namespace A185706

/-- `and(A010051(n+1), A035043(n))` -/
def P12841901232571959728.Spec : Prop :=
  ∀ n, P12841901232571959728.a n = A185706 (n + 1)

end A185706

/-! ## A185706.P8673504657544734148

`and(A010051(n+1), A053796(n))`
-/

namespace A185706.P8673504657544734148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010051 (n + 1)) (A053796 n)

end

end A185706.P8673504657544734148

namespace A185706

/-- `and(A010051(n+1), A053796(n))` -/
def P8673504657544734148.Spec : Prop :=
  ∀ n, P8673504657544734148.a n = A185706 (n + 1)

end A185706

/-!
# A185708: Characteristic function of positive numbers that are primes ending in 7.

The programs for A185708, the canonical program `A185708.P3037980791462570158` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185708 has offset 1).

The definition of A185708 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185708.P8212679720863408918

`char[p?[5*n+7]-1]`
-/

namespace A185708.P8212679720863408918
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A185708.P8212679720863408918

namespace A185708

/-- `char[p?[5*n+7]-1]` -/
def P8212679720863408918.Spec : Prop :=
  ∀ n, (P8212679720863408918.a n : ℤ) = A185708 (n + 1)

end A185708

/-! ## A185708.P10884733785973854029

`char[A030432(n+1)-1]`
-/

namespace A185708.P10884733785973854029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A185708.P10884733785973854029

namespace A185708

/-- `char[A030432(n+1)-1]` -/
def P10884733785973854029.Spec : Prop :=
  ∀ n, (P10884733785973854029.a n : ℤ) = A185708 (n + 1)

end A185708

/-! ## A185708.P6777533720999617487

`char[A045380(n+2)-1]`
-/

namespace A185708.P6777533720999617487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A185708.P6777533720999617487

namespace A185708

/-- `char[A045380(n+2)-1]` -/
def P6777533720999617487.Spec : Prop :=
  ∀ n, (P6777533720999617487.a n : ℤ) = A185708 (n + 1)

end A185708

/-! ## A185708.P2076224259517493689

`char[record[A014963(5*(n+1)+2)]-1]`
-/

namespace A185708.P2076224259517493689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (5 * (n + 1) + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A185708.P2076224259517493689

namespace A185708

/-- `char[record[A014963(5*(n+1)+2)]-1]` -/
def P2076224259517493689.Spec : Prop :=
  ∀ n, (P2076224259517493689.a n : ℤ) = A185708 (n + 1)

end A185708

/-! ## A185708.P943076005264295352

`and(comp[or(n, n+3)], A010051((n+1)*3^(n%2)))`
-/

namespace A185708.P943076005264295352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A010051 ((n + 1) * 3 ^ (n % 2)))

end

end A185708.P943076005264295352

namespace A185708

/-- `and(comp[or(n, n+3)], A010051((n+1)*3^(n%2)))` -/
def P943076005264295352.Spec : Prop :=
  ∀ n, P943076005264295352.a n = A185708 (n + 1)

end A185708

/-! ## A185708.P12297285854001881399

`char[A002322(p?[A017353(n)])]`
-/

namespace A185708.P12297285854001881399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A185708.P12297285854001881399

namespace A185708

/-- `char[A002322(p?[A017353(n)])]` -/
def P12297285854001881399.Spec : Prop :=
  ∀ n, (P12297285854001881399.a n : ℤ) = A185708 (n + 1)

end A185708

/-! ## A185708.P8687987178631177316

`char[A029578(p?[A017353(n)])]`
-/

namespace A185708.P8687987178631177316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A185708.P8687987178631177316

namespace A185708

/-- `char[A029578(p?[A017353(n)])]` -/
def P8687987178631177316.Spec : Prop :=
  ∀ n, (P8687987178631177316.a n : ℤ) = A185708 (n + 1)

end A185708

/-! ## A185708.P7880029195201695706

`char[A000010(A030432(n+1))]`
-/

namespace A185708.P7880029195201695706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A030432 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A185708.P7880029195201695706

namespace A185708

/-- `char[A000010(A030432(n+1))]` -/
def P7880029195201695706.Spec : Prop :=
  ∀ n, (P7880029195201695706.a n : ℤ) = A185708 (n + 1)

end A185708

/-! ## A185708.P7747384396357467391

`char[A000010(A045380(n+2))]`
-/

namespace A185708.P7747384396357467391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A045380 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A185708.P7747384396357467391

namespace A185708

/-- `char[A000010(A045380(n+2))]` -/
def P7747384396357467391.Spec : Prop :=
  ∀ n, (P7747384396357467391.a n : ℤ) = A185708 (n + 1)

end A185708

/-! ## A185708.P10878387552636956592

`char[A000010(A045357(n+3))]`
-/

namespace A185708.P10878387552636956592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A045357 (n + 3)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A185708.P10878387552636956592

namespace A185708

/-- `char[A000010(A045357(n+3))]` -/
def P10878387552636956592.Spec : Prop :=
  ∀ n, (P10878387552636956592.a n : ℤ) = A185708 (n + 1)

end A185708

/-! ## A185708.P3037980791462570158

`and(A008496(n), A010051(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A185708

/-- `and(A008496(n), A010051(n+1))` -/
def P3037980791462570158.Spec : Prop :=
  ∀ n, P3037980791462570158.a n = A185708 (n + 1)

theorem P3037980791462570158.correct : P3037980791462570158.Spec := by
  intro n
  simp only [A185708, Nat.add_sub_cancel]

end A185708

/-! ## A185708.P7603255276226335272

`Δ[A102679(n)]*A010051(n+1)`
-/

namespace A185708.P7603255276226335272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A010051 (n + 1)

end

end A185708.P7603255276226335272

namespace A185708

/-- `Δ[A102679(n)]*A010051(n+1)` -/
def P7603255276226335272.Spec : Prop :=
  ∀ n, P7603255276226335272.a n = A185708 (n + 1)

end A185708

/-! ## A185708.P18185027375406808920

`and(Δ[A102679(n)], A061397(n+1))`
-/

namespace A185708.P18185027375406808920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A061397 (n + 1))

end

end A185708.P18185027375406808920

namespace A185708

/-- `and(Δ[A102679(n)], A061397(n+1))` -/
def P18185027375406808920.Spec : Prop :=
  ∀ n, P18185027375406808920.a n = A185708 (n + 1)

end A185708

/-! ## A185708.P13959522812712623978

`char[record[A006530(A016873(n+1))]-1]`
-/

namespace A185708.P13959522812712623978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A016873 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A185708.P13959522812712623978

namespace A185708

/-- `char[record[A006530(A016873(n+1))]-1]` -/
def P13959522812712623978.Spec : Prop :=
  ∀ n, (P13959522812712623978.a n : ℤ) = A185708 (n + 1)

end A185708

/-! ## A185708.P5372586059357057377

`char[eq[A169814(n+1), A261872(n+1)]]`
-/

namespace A185708.P5372586059357057377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169814 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261872 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A185708.P5372586059357057377

namespace A185708

/-- `char[eq[A169814(n+1), A261872(n+1)]]` -/
def P5372586059357057377.Spec : Prop :=
  ∀ n, (P5372586059357057377.a n : ℤ) = A185708 (n + 1)

end A185708

/-! ## A185708.P16167171204989546510

`char[record[A020639(A016777(n+2)+2*n)]-1]`
-/

namespace A185708.P16167171204989546510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A016777 (n + 2) + (2 * n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A185708.P16167171204989546510

namespace A185708

/-- `char[record[A020639(A016777(n+2)+2*n)]-1]` -/
def P16167171204989546510.Spec : Prop :=
  ∀ n, (P16167171204989546510.a n : ℤ) = A185708 (n + 1)

end A185708

/-! ## A185708.P14111886621573616934

`A331097(A055671(n+1))/2`
-/

namespace A185708.P14111886621573616934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331097 (A055671 (n + 1)).toNat : ℚ) / 2

end

end A185708.P14111886621573616934

namespace A185708

/-- `A331097(A055671(n+1))/2` -/
def P14111886621573616934.Spec : Prop :=
  ∀ n, P14111886621573616934.a n = (A185708 (n + 1) : ℚ)

end A185708

/-! ## A185708.P3149313529883175482

`val(A000045(2*n+1)+2*n, 5*(n+1))`
-/

namespace A185708.P3149313529883175482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000045 (2 * n + 1) + (2 * n : ℤ)).toNat (5 * (n + 1))

end

end A185708.P3149313529883175482

namespace A185708

/-- `val(A000045(2*n+1)+2*n, 5*(n+1))` -/
def P3149313529883175482.Spec : Prop :=
  ∀ n, (P3149313529883175482.a n : ℤ) = A185708 (n + 1)

end A185708

/-! ## A185708.P15281039440168420056

`Δ[A102679(n)]*A143536(A000124(n))`
-/

namespace A185708.P15281039440168420056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A143536 (A000124 n).toNat

end

end A185708.P15281039440168420056

namespace A185708

/-- `Δ[A102679(n)]*A143536(A000124(n))` -/
def P15281039440168420056.Spec : Prop :=
  ∀ n, P15281039440168420056.a n = A185708 (n + 1)

end A185708

/-!
# A185709: Characteristic function of positive numbers that are primes ending in 9.

The programs for A185709, the canonical program `A185709.P14054357558459930458` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185709 has offset 1).

The definition of A185709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185709.P9446908713110075312

`char[p?[5*n-1]-1]`
-/

namespace A185709.P9446908713110075312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A185709.P9446908713110075312

namespace A185709

/-- `char[p?[5*n-1]-1]` -/
def P9446908713110075312.Spec : Prop :=
  ∀ n, (P9446908713110075312.a n : ℤ) = A185709 (n + 1)

end A185709

/-! ## A185709.P14054357558459930458

`C(∑[∑[2*n]%5], ∑{d}[n+1, #])`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A185709

/-- `C(∑[∑[2*n]%5], ∑{d}[n+1, #])` -/
def P14054357558459930458.Spec : Prop :=
  ∀ n, (P14054357558459930458.a n : ℤ) = A185709 (n + 1)

theorem P14054357558459930458.correct : P14054357558459930458.Spec := by
  intro n
  simp only [A185709, Nat.add_sub_cancel]

end A185709

/-! ## A185709.P6171900340396264688

`char[A030433(n+1)-1]`
-/

namespace A185709.P6171900340396264688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A185709.P6171900340396264688

namespace A185709

/-- `char[A030433(n+1)-1]` -/
def P6171900340396264688.Spec : Prop :=
  ∀ n, (P6171900340396264688.a n : ℤ) = A185709 (n + 1)

end A185709

/-! ## A185709.P778111240534175157

`C(n%10, A236295(∑{e}[n+1, #]))`
-/

namespace A185709.P778111240534175157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n % 10) (A236295 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)).toNat

end

end A185709.P778111240534175157

namespace A185709

/-- `C(n%10, A236295(∑{e}[n+1, #]))` -/
def P778111240534175157.Spec : Prop :=
  ∀ n, (P778111240534175157.a n : ℤ) = A185709 (n + 1)

end A185709

/-! ## A185709.P11511984193884562240

`and(∑[floor(2*n/5)], A010051(n+1))`
-/

namespace A185709.P11511984193884562240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((n : ℚ) / 5)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A010051 (n + 1))

end

end A185709.P11511984193884562240

namespace A185709

/-- `and(∑[floor(2*n/5)], A010051(n+1))` -/
def P11511984193884562240.Spec : Prop :=
  ∀ n, P11511984193884562240.a n = A185709 (n + 1)

end A185709

/-! ## A185709.P15084167896499761345

`A001899(A118136(n))`
-/

namespace A185709.P15084167896499761345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001899 (A118136 n).toNat

end

end A185709.P15084167896499761345

namespace A185709

/-- `A001899(A118136(n))` -/
def P15084167896499761345.Spec : Prop :=
  ∀ n, P15084167896499761345.a n = A185709 (n + 1)

end A185709

/-! ## A185709.P8113788767274195960

`A001899(A014973(n+1))`
-/

namespace A185709.P8113788767274195960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001899 (A014973 (n + 1)).toNat

end

end A185709.P8113788767274195960

namespace A185709

/-- `A001899(A014973(n+1))` -/
def P8113788767274195960.Spec : Prop :=
  ∀ n, P8113788767274195960.a n = A185709 (n + 1)

end A185709

/-! ## A185709.P10134815085648885971

`A001899(A061397(n+1))`
-/

namespace A185709.P10134815085648885971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001899 (A061397 (n + 1)).toNat

end

end A185709.P10134815085648885971

namespace A185709

/-- `A001899(A061397(n+1))` -/
def P10134815085648885971.Spec : Prop :=
  ∀ n, P10134815085648885971.a n = A185709 (n + 1)

end A185709

/-! ## A185709.P16829733270797830075

`char[A000010(A030433(n+1))]`
-/

namespace A185709.P16829733270797830075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A030433 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A185709.P16829733270797830075

namespace A185709

/-- `char[A000010(A030433(n+1))]` -/
def P16829733270797830075.Spec : Prop :=
  ∀ n, (P16829733270797830075.a n : ℤ) = A185709 (n + 1)

end A185709

/-! ## A185709.P3188383745239267354

`and(A010051(n+1), A011858(n))`
-/

namespace A185709.P3188383745239267354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010051 (n + 1)) (A011858 n)

end

end A185709.P3188383745239267354

namespace A185709

/-- `and(A010051(n+1), A011858(n))` -/
def P3188383745239267354.Spec : Prop :=
  ∀ n, P3188383745239267354.a n = A185709 (n + 1)

end A185709

/-! ## A185709.P17824536789427464447

`and(A010051(n+1), A011887(n))`
-/

namespace A185709.P17824536789427464447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010051 (n + 1)) (A011887 n)

end

end A185709.P17824536789427464447

namespace A185709

/-- `and(A010051(n+1), A011887(n))` -/
def P17824536789427464447.Spec : Prop :=
  ∀ n, P17824536789427464447.a n = A185709 (n + 1)

end A185709

/-! ## A185709.P10776175616534960012

`and(A010051(n+1), A011892(n))`
-/

namespace A185709.P10776175616534960012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010051 (n + 1)) (A011892 n)

end

end A185709.P10776175616534960012

namespace A185709

/-- `and(A010051(n+1), A011892(n))` -/
def P10776175616534960012.Spec : Prop :=
  ∀ n, P10776175616534960012.a n = A185709 (n + 1)

end A185709

/-! ## A185709.P16669167167843974983

`and(A010051(n+1), A011912(n))`
-/

namespace A185709.P16669167167843974983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010051 (n + 1)) (A011912 n)

end

end A185709.P16669167167843974983

namespace A185709

/-- `and(A010051(n+1), A011912(n))` -/
def P16669167167843974983.Spec : Prop :=
  ∀ n, P16669167167843974983.a n = A185709 (n + 1)

end A185709

/-! ## A185709.P9801410316717187502

`and(char[A016885(n)], A061397(n+1))`
-/

namespace A185709.P9801410316717187502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A061397 (n + 1))

end

end A185709.P9801410316717187502

namespace A185709

/-- `and(char[A016885(n)], A061397(n+1))` -/
def P9801410316717187502.Spec : Prop :=
  ∀ n, P9801410316717187502.a n = A185709 (n + 1)

end A185709

/-! ## A185709.P1482745129365719726

`A010051(n+1)*A083919(n+1)`
-/

namespace A185709.P1482745129365719726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A083919 (n + 1)

end

end A185709.P1482745129365719726

namespace A185709

/-- `A010051(n+1)*A083919(n+1)` -/
def P1482745129365719726.Spec : Prop :=
  ∀ n, P1482745129365719726.a n = A185709 (n + 1)

end A185709

/-! ## A185709.P9313796287768260948

`A061007(n+1)*A083919(n+1)`
-/

namespace A185709.P9313796287768260948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061007 (n + 1) * A083919 (n + 1)

end

end A185709.P9313796287768260948

namespace A185709

/-- `A061007(n+1)*A083919(n+1)` -/
def P9313796287768260948.Spec : Prop :=
  ∀ n, P9313796287768260948.a n = A185709 (n + 1)

end A185709

/-! ## A185709.P8011468696305796446

`A010051(n+1)*A079998(n+2)`
-/

namespace A185709.P8011468696305796446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A079998 (n + 2)

end

end A185709.P8011468696305796446

namespace A185709

/-- `A010051(n+1)*A079998(n+2)` -/
def P8011468696305796446.Spec : Prop :=
  ∀ n, P8011468696305796446.a n = A185709 (n + 1)

end A185709

/-! ## A185709.P13323441273392444003

`and(A010051(n+1), A026042(n+1))`
-/

namespace A185709.P13323441273392444003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010051 (n + 1)) (A026042 (n + 1))

end

end A185709.P13323441273392444003

namespace A185709

/-- `and(A010051(n+1), A026042(n+1))` -/
def P13323441273392444003.Spec : Prop :=
  ∀ n, P13323441273392444003.a n = A185709 (n + 1)

end A185709

/-! ## A185709.P7028153450913028652

`val(A319356(n+2), A319356(2*(n+1))+1)`
-/

namespace A185709.P7028153450913028652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A319356 (n + 2)).toNat (A319356 (2 * (n + 1)) + 1).toNat

end

end A185709.P7028153450913028652

namespace A185709

/-- `val(A319356(n+2), A319356(2*(n+1))+1)` -/
def P7028153450913028652.Spec : Prop :=
  ∀ n, (P7028153450913028652.a n : ℤ) = A185709 (n + 1)

end A185709

/-! ## A185709.P12195563318422749933

`val(A000045(2*n+1)+n, 5*(n+1))`
-/

namespace A185709.P12195563318422749933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000045 (2 * n + 1) + (n : ℤ)).toNat (5 * (n + 1))

end

end A185709.P12195563318422749933

namespace A185709

/-- `val(A000045(2*n+1)+n, 5*(n+1))` -/
def P12195563318422749933.Spec : Prop :=
  ∀ n, (P12195563318422749933.a n : ℤ) = A185709 (n + 1)

end A185709

/-!
# A185711: a(n) = number of primes <= n that end in 1.

The programs for A185711, the canonical program `A185711.P8088876807942369668` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185711 has offset 1).

The definition of A185711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185711.P1350515828072810510

`∑[char[p?[5*n+1]-1]]`
-/

namespace A185711.P1350515828072810510
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185711.P1350515828072810510

namespace A185711

/-- `∑[char[p?[5*n+1]-1]]` -/
def P1350515828072810510.Spec : Prop :=
  ∀ n, (P1350515828072810510.a n : ℤ) = A185711 (n + 1)

end A185711

/-! ## A185711.P8088876807942369668

`∑[A185705(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A185711

/-- `∑[A185705(n+1)]` -/
def P8088876807942369668.Spec : Prop :=
  ∀ n, P8088876807942369668.a n = A185711 (n + 1)

theorem P8088876807942369668.correct : P8088876807942369668.Spec := by
  intro n
  simp only [A185711, Nat.add_sub_cancel]

end A185711

/-! ## A185711.P687505182623565413

`∑[char[A030430(n+1)-1]]`
-/

namespace A185711.P687505182623565413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185711.P687505182623565413

namespace A185711

/-- `∑[char[A030430(n+1)-1]]` -/
def P687505182623565413.Spec : Prop :=
  ∀ n, (P687505182623565413.a n : ℤ) = A185711 (n + 1)

end A185711

/-! ## A185711.P1886484429955278858

`∑[char[A045453(n+2)-1]]`
-/

namespace A185711.P1886484429955278858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185711.P1886484429955278858

namespace A185711

/-- `∑[char[A045453(n+2)-1]]` -/
def P1886484429955278858.Spec : Prop :=
  ∀ n, (P1886484429955278858.a n : ℤ) = A185711 (n + 1)

end A185711

/-! ## A185711.P2315701839236751154

`∑[char[5*n]*A010051(n+1)]`
-/

namespace A185711.P2315701839236751154
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) * A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185711.P2315701839236751154

namespace A185711

/-- `∑[char[5*n]*A010051(n+1)]` -/
def P2315701839236751154.Spec : Prop :=
  ∀ n, P2315701839236751154.a n = A185711 (n + 1)

end A185711

/-! ## A185711.P14609472638371962472

`∑[char[record[A014963(10*n+11)]-1]]`
-/

namespace A185711.P14609472638371962472
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * n + 11)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185711.P14609472638371962472

namespace A185711

/-- `∑[char[record[A014963(10*n+11)]-1]]` -/
def P14609472638371962472.Spec : Prop :=
  ∀ n, (P14609472638371962472.a n : ℤ) = A185711 (n + 1)

end A185711

/-! ## A185711.P672499015336723009

`∑[char[A000010(A030430(n+1))]]`
-/

namespace A185711.P672499015336723009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A030430 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185711.P672499015336723009

namespace A185711

/-- `∑[char[A000010(A030430(n+1))]]` -/
def P672499015336723009.Spec : Prop :=
  ∀ n, (P672499015336723009.a n : ℤ) = A185711 (n + 1)

end A185711

/-! ## A185711.P3952395680200700768

`∑[char[A008592(A024912(n+1))]]`
-/

namespace A185711.P3952395680200700768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (A024912 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185711.P3952395680200700768

namespace A185711

/-- `∑[char[A008592(A024912(n+1))]]` -/
def P3952395680200700768.Spec : Prop :=
  ∀ n, (P3952395680200700768.a n : ℤ) = A185711 (n + 1)

end A185711

/-! ## A185711.P12081067526650141663

`∑[char[A008592(A126785(n+1)+1)]]`
-/

namespace A185711.P12081067526650141663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (A126785 (n + 1) + 1).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185711.P12081067526650141663

namespace A185711

/-- `∑[char[A008592(A126785(n+1)+1)]]` -/
def P12081067526650141663.Spec : Prop :=
  ∀ n, (P12081067526650141663.a n : ℤ) = A185711 (n + 1)

end A185711

/-! ## A185711.P11316014403258742813

`∑[char[A008592(A024894(n+1)/2)]]`
-/

namespace A185711.P11316014403258742813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (SequenceMachineLib.roundAway ((A024894 (n + 1) : ℚ) / 2)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185711.P11316014403258742813

namespace A185711

/-- `∑[char[A008592(A024894(n+1)/2)]]` -/
def P11316014403258742813.Spec : Prop :=
  ∀ n, (P11316014403258742813.a n : ℤ) = A185711 (n + 1)

end A185711

/-! ## A185711.P1810249466833584211

`∑[round(A257303(A020639(n+1))/(n+1))]`
-/

namespace A185711.P1810249466833584211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A257303 (A020639 (n + 1)).toNat : ℚ) / (n + 1 : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185711.P1810249466833584211

namespace A185711

/-- `∑[round(A257303(A020639(n+1))/(n+1))]` -/
def P1810249466833584211.Spec : Prop :=
  ∀ n, P1810249466833584211.a n = A185711 (n + 1)

end A185711

/-! ## A185711.P4092677544887574036

`A185705(n+1)+a(n-1)%A000720(n+1)` with `a(0)=0`
-/

namespace A185711.P4092677544887574036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A185705 (n + 1) + Int.tmod (a (n - 1)) (A000720 (n + 1))

end

end A185711.P4092677544887574036

namespace A185711

/-- `A185705(n+1)+a(n-1)%A000720(n+1)` -/
def P4092677544887574036.Spec : Prop :=
  ∀ n, P4092677544887574036.a n = A185711 (n + 1)

end A185711

/-!
# A185712: a(n) = number of primes <= n that end in 3.

The programs for A185712, the canonical program `A185712.P714070859971941151` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185712 has offset 1).

The definition of A185712 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185712.P1091569313587143705

`∑[char[p?[5*n-2]-1]]`
-/

namespace A185712.P1091569313587143705
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185712.P1091569313587143705

namespace A185712

/-- `∑[char[p?[5*n-2]-1]]` -/
def P1091569313587143705.Spec : Prop :=
  ∀ n, (P1091569313587143705.a n : ℤ) = A185712 (n + 1)

end A185712

/-! ## A185712.P714070859971941151

`∑[A185706(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A185712

/-- `∑[A185706(n+1)]` -/
def P714070859971941151.Spec : Prop :=
  ∀ n, P714070859971941151.a n = A185712 (n + 1)

theorem P714070859971941151.correct : P714070859971941151.Spec := by
  intro n
  simp only [A185712, Nat.add_sub_cancel]

end A185712

/-! ## A185712.P763317826102751369

`∑[char[A030431(n+1)-1]]`
-/

namespace A185712.P763317826102751369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185712.P763317826102751369

namespace A185712

/-- `∑[char[A030431(n+1)-1]]` -/
def P763317826102751369.Spec : Prop :=
  ∀ n, (P763317826102751369.a n : ℤ) = A185712 (n + 1)

end A185712

/-! ## A185712.P619898077681904168

`∑[char[record[A014963(10*n+3)]-1]]`
-/

namespace A185712.P619898077681904168
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185712.P619898077681904168

namespace A185712

/-- `∑[char[record[A014963(10*n+3)]-1]]` -/
def P619898077681904168.Spec : Prop :=
  ∀ n, (P619898077681904168.a n : ℤ) = A185712 (n + 1)

end A185712

/-! ## A185712.P6967620368596236947

`∑[char[record[A006530(3*n+2*n+3)]-1]]`
-/

namespace A185712.P6967620368596236947
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 * n + (2 * n + 3))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185712.P6967620368596236947

namespace A185712

/-- `∑[char[record[A006530(3*n+2*n+3)]-1]]` -/
def P6967620368596236947.Spec : Prop :=
  ∀ n, (P6967620368596236947.a n : ℤ) = A185712 (n + 1)

end A185712

/-! ## A185712.P17721484145490900978

`∑[A001878(A014973(n+1))]`
-/

namespace A185712.P17721484145490900978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (A014973 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185712.P17721484145490900978

namespace A185712

/-- `∑[A001878(A014973(n+1))]` -/
def P17721484145490900978.Spec : Prop :=
  ∀ n, P17721484145490900978.a n = A185712 (n + 1)

end A185712

/-! ## A185712.P17593612725803670598

`∑[A001878(A061397(n+1))]`
-/

namespace A185712.P17593612725803670598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (A061397 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185712.P17593612725803670598

namespace A185712

/-- `∑[A001878(A061397(n+1))]` -/
def P17593612725803670598.Spec : Prop :=
  ∀ n, P17593612725803670598.a n = A185712 (n + 1)

end A185712

/-! ## A185712.P10007697591785131165

`∑[A001878(A089026(n+1))]`
-/

namespace A185712.P10007697591785131165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (A089026 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185712.P10007697591785131165

namespace A185712

/-- `∑[A001878(A089026(n+1))]` -/
def P10007697591785131165.Spec : Prop :=
  ∀ n, P10007697591785131165.a n = A185712 (n + 1)

end A185712

/-! ## A185712.P6882311342182494548

`∑[and(A010051(n+1), A035043(n))]`
-/

namespace A185712.P6882311342182494548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010051 (n + 1)) (A035043 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185712.P6882311342182494548

namespace A185712

/-- `∑[and(A010051(n+1), A035043(n))]` -/
def P6882311342182494548.Spec : Prop :=
  ∀ n, P6882311342182494548.a n = A185712 (n + 1)

end A185712

/-! ## A185712.P12918721043338911596

`∑[((n+1)%A065186(A151800(n)+1))%(n+1)]`
-/

namespace A185712.P12918721043338911596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (n + 1 : ℤ) (A065186 (A151800 n + 1).toNat)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185712.P12918721043338911596

namespace A185712

/-- `∑[((n+1)%A065186(A151800(n)+1))%(n+1)]` -/
def P12918721043338911596.Spec : Prop :=
  ∀ n, P12918721043338911596.a n = A185712 (n + 1)

end A185712

/-! ## A185712.P11125920873571217827

`∑[and(A010051(n+1), A018922(n))]`
-/

namespace A185712.P11125920873571217827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010051 (n + 1)) (A018922 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185712.P11125920873571217827

namespace A185712

/-- `∑[and(A010051(n+1), A018922(n))]` -/
def P11125920873571217827.Spec : Prop :=
  ∀ n, P11125920873571217827.a n = A185712 (n + 1)

end A185712

/-!
# A185714: a(n) = number of primes <= n that end in 7.

The programs for A185714, the canonical program `A185714.P14230647716207036197` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185714 has offset 1).

The definition of A185714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185714.P7287555870313634730

`∑[char[p?[5*n+7]-1]]`
-/

namespace A185714.P7287555870313634730
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185714.P7287555870313634730

namespace A185714

/-- `∑[char[p?[5*n+7]-1]]` -/
def P7287555870313634730.Spec : Prop :=
  ∀ n, (P7287555870313634730.a n : ℤ) = A185714 (n + 1)

end A185714

/-! ## A185714.P14098964678574389547

`∑[A185708(n+1)]`
-/

namespace A185714.P14098964678574389547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185714.P14098964678574389547

namespace A185714

/-- `∑[A185708(n+1)]` -/
def P14098964678574389547.Spec : Prop :=
  ∀ n, P14098964678574389547.a n = A185714 (n + 1)

end A185714

/-! ## A185714.P4941944349004597190

`∑[char[A030432(n+1)-1]]`
-/

namespace A185714.P4941944349004597190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185714.P4941944349004597190

namespace A185714

/-- `∑[char[A030432(n+1)-1]]` -/
def P4941944349004597190.Spec : Prop :=
  ∀ n, (P4941944349004597190.a n : ℤ) = A185714 (n + 1)

end A185714

/-! ## A185714.P4260572125077881881

`∑[char[A338715(or(3, n))-1]]`
-/

namespace A185714.P4260572125077881881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338715 (Nat.lor 3 n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185714.P4260572125077881881

namespace A185714

/-- `∑[char[A338715(or(3, n))-1]]` -/
def P4260572125077881881.Spec : Prop :=
  ∀ n, (P4260572125077881881.a n : ℤ) = A185714 (n + 1)

end A185714

/-! ## A185714.P8050253327109251752

`∑[char[A000010(A030432(n+1))]]`
-/

namespace A185714.P8050253327109251752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A030432 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185714.P8050253327109251752

namespace A185714

/-- `∑[char[A000010(A030432(n+1))]]` -/
def P8050253327109251752.Spec : Prop :=
  ∀ n, (P8050253327109251752.a n : ℤ) = A185714 (n + 1)

end A185714

/-! ## A185714.P2288886454259389106

`∑[and(A008496(n), A010051(n+1))]`
-/

namespace A185714.P2288886454259389106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008496 n) (A010051 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185714.P2288886454259389106

namespace A185714

/-- `∑[and(A008496(n), A010051(n+1))]` -/
def P2288886454259389106.Spec : Prop :=
  ∀ n, P2288886454259389106.a n = A185714 (n + 1)

end A185714

/-! ## A185714.P14230647716207036197

`∑[A001877((n+1)*A151763(n+1)²)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A185714

/-- `∑[A001877((n+1)*A151763(n+1)²)]` -/
def P14230647716207036197.Spec : Prop :=
  ∀ n, P14230647716207036197.a n = A185714 (n + 1)

theorem P14230647716207036197.correct : P14230647716207036197.Spec := by
  intro n
  simp only [A185714, Nat.add_sub_cancel]

end A185714

/-! ## A185714.P1645258899235997955

`∑[A001877(C(n+1, A151763(n+1)²))]`
-/

namespace A185714.P1645258899235997955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (Nat.choose (n + 1) (A151763 (n + 1) ^ 2).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185714.P1645258899235997955

namespace A185714

/-- `∑[A001877(C(n+1, A151763(n+1)²))]` -/
def P1645258899235997955.Spec : Prop :=
  ∀ n, P1645258899235997955.a n = A185714 (n + 1)

end A185714

/-! ## A185714.P9992832888472470949

`A071841(A352241(n+1))`
-/

namespace A185714.P9992832888472470949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071841 (A352241 (n + 1)).toNat

end

end A185714.P9992832888472470949

namespace A185714

/-- `A071841(A352241(n+1))` -/
def P9992832888472470949.Spec : Prop :=
  ∀ n, P9992832888472470949.a n = A185714 (n + 1)

end A185714

/-!
# A185715: a(n) = number of primes <= n that end in 9.

The programs for A185715, the canonical program `A185715.P10679573485318822552` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185715 has offset 1).

The definition of A185715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185715.P12484725993052401246

`∑[char[p?[5*n-1]-1]]`
-/

namespace A185715.P12484725993052401246
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185715.P12484725993052401246

namespace A185715

/-- `∑[char[p?[5*n-1]-1]]` -/
def P12484725993052401246.Spec : Prop :=
  ∀ n, (P12484725993052401246.a n : ℤ) = A185715 (n + 1)

end A185715

/-! ## A185715.P6842640192348328697

`∑[char[xor(1, p?[5*n+4])]]`
-/

namespace A185715.P6842640192348328697
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185715.P6842640192348328697

namespace A185715

/-- `∑[char[xor(1, p?[5*n+4])]]` -/
def P6842640192348328697.Spec : Prop :=
  ∀ n, (P6842640192348328697.a n : ℤ) = A185715 (n + 1)

end A185715

/-! ## A185715.P10679573485318822552

`∑[A185709(n+1)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A185715

/-- `∑[A185709(n+1)]` -/
def P10679573485318822552.Spec : Prop :=
  ∀ n, P10679573485318822552.a n = A185715 (n + 1)

theorem P10679573485318822552.correct : P10679573485318822552.Spec := by
  intro n
  simp only [A185715, Nat.add_sub_cancel]

end A185715

/-! ## A185715.P8966628279930174402

`∑[char[A030433(n+1)-1]]`
-/

namespace A185715.P8966628279930174402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185715.P8966628279930174402

namespace A185715

/-- `∑[char[A030433(n+1)-1]]` -/
def P8966628279930174402.Spec : Prop :=
  ∀ n, (P8966628279930174402.a n : ℤ) = A185715 (n + 1)

end A185715

/-! ## A185715.P775688209231061350

`∑[char[A338715(or(3, n)+1)-1]]`
-/

namespace A185715.P775688209231061350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338715 (Nat.lor 3 n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185715.P775688209231061350

namespace A185715

/-- `∑[char[A338715(or(3, n)+1)-1]]` -/
def P775688209231061350.Spec : Prop :=
  ∀ n, (P775688209231061350.a n : ℤ) = A185715 (n + 1)

end A185715

/-! ## A185715.P5487639432680283323

`∑[char[A000010(A030433(n+1))]]`
-/

namespace A185715.P5487639432680283323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A030433 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185715.P5487639432680283323

namespace A185715

/-- `∑[char[A000010(A030433(n+1))]]` -/
def P5487639432680283323.Spec : Prop :=
  ∀ n, (P5487639432680283323.a n : ℤ) = A185715 (n + 1)

end A185715

/-! ## A185715.P12420114478635037011

`∑[and(A008080(n), A010051(n+1))]`
-/

namespace A185715.P12420114478635037011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008080 n) (A010051 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185715.P12420114478635037011

namespace A185715

/-- `∑[and(A008080(n), A010051(n+1))]` -/
def P12420114478635037011.Spec : Prop :=
  ∀ n, P12420114478635037011.a n = A185715 (n + 1)

end A185715

/-! ## A185715.P6199245069197804376

`∑[and(A010051(n+1), A011887(n))]`
-/

namespace A185715.P6199245069197804376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010051 (n + 1)) (A011887 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185715.P6199245069197804376

namespace A185715

/-- `∑[and(A010051(n+1), A011887(n))]` -/
def P6199245069197804376.Spec : Prop :=
  ∀ n, P6199245069197804376.a n = A185715 (n + 1)

end A185715

/-! ## A185715.P5323513502478350649

`∑[C(A061007(n+1), A251984(n+1))]`
-/

namespace A185715.P5323513502478350649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A061007 (n + 1)).toNat (A251984 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185715.P5323513502478350649

namespace A185715

/-- `∑[C(A061007(n+1), A251984(n+1))]` -/
def P5323513502478350649.Spec : Prop :=
  ∀ n, (P5323513502478350649.a n : ℤ) = A185715 (n + 1)

end A185715

/-! ## A185715.P4759248972727549761

`∑[C(n%10, A312623(A000005(n+1)))]`
-/

namespace A185715.P4759248972727549761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n % 10) (A312623 (A000005 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185715.P4759248972727549761

namespace A185715

/-- `∑[C(n%10, A312623(A000005(n+1)))]` -/
def P4759248972727549761.Spec : Prop :=
  ∀ n, (P4759248972727549761.a n : ℤ) = A185715 (n + 1)

end A185715

/-! ## A185715.P4753970282248414464

`∑[A122840(lcm(A064722(n+2)²%3+n, n+1)+1)]`
-/

namespace A185715.P4753970282248414464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122840 (Int.lcm (Int.tmod (A064722 (n + 2) ^ 2) 3 + (n : ℤ)) (n + 1 : ℤ) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185715.P4753970282248414464

namespace A185715

/-- `∑[A122840(lcm(A064722(n+2)²%3+n, n+1)+1)]` -/
def P4753970282248414464.Spec : Prop :=
  ∀ n, P4753970282248414464.a n = A185715 (n + 1)

end A185715

/-!
# A185717: Expansion of q^(-1) * c(q^2) * (c(q) - c(q^4)) / 9 in powers of q^2 where c() is a cubic AGM theta function.

The programs for A185717, the canonical program `A185717.P5465608127689346911` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185717 has offset 0).

The definition of A185717 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121443, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A185717.P6162985227785712426

`A078708(2*n+1)`
-/

namespace A185717.P6162985227785712426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078708 (2 * n + 1)

end

end A185717.P6162985227785712426

namespace A185717

/-- `A078708(2*n+1)` -/
def P6162985227785712426.Spec : Prop :=
  ∀ n, P6162985227785712426.a n = A185717 n

end A185717

/-! ## A185717.P5465608127689346911

`A121443(2*n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A185717

/-- `A121443(2*n+1)` -/
def P5465608127689346911.Spec : Prop :=
  ∀ n, P5465608127689346911.a n = A185717 n

theorem P5465608127689346911.correct : P5465608127689346911.Spec := by
  intro n
  simp only [A185717]

end A185717

/-! ## A185717.P16647190637357847856

`A124449(2*n+1)`
-/

namespace A185717.P16647190637357847856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124449 (2 * n + 1)

end

end A185717.P16647190637357847856

namespace A185717

/-- `A124449(2*n+1)` -/
def P16647190637357847856.Spec : Prop :=
  ∀ n, P16647190637357847856.a n = A185717 n

end A185717

/-! ## A185717.P314513438047689523

`A008438(n)-A321527(2*n+1)`
-/

namespace A185717.P314513438047689523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 n - A321527 (2 * n + 1)

end

end A185717.P314513438047689523

namespace A185717

/-- `A008438(n)-A321527(2*n+1)` -/
def P314513438047689523.Spec : Prop :=
  ∀ n, P314513438047689523.a n = A185717 n

end A185717

/-! ## A185717.P13194274890799331733

`A008438(n)-A328788(2*n+1)`
-/

namespace A185717.P13194274890799331733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 n - A328788 (2 * n + 1)

end

end A185717.P13194274890799331733

namespace A185717

/-- `A008438(n)-A328788(2*n+1)` -/
def P13194274890799331733.Spec : Prop :=
  ∀ n, P13194274890799331733.a n = A185717 n

end A185717

/-! ## A185717.P2297638551021093607

`A000203(2*n+1)-A321527(2*n+1)`
-/

namespace A185717.P2297638551021093607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1) - A321527 (2 * n + 1)

end

end A185717.P2297638551021093607

namespace A185717

/-- `A000203(2*n+1)-A321527(2*n+1)` -/
def P2297638551021093607.Spec : Prop :=
  ∀ n, P2297638551021093607.a n = A185717 n

end A185717

/-! ## A185717.P6795769185430049084

`A000203(2*n+1)-A328788(2*n+1)`
-/

namespace A185717.P6795769185430049084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1) - A328788 (2 * n + 1)

end

end A185717.P6795769185430049084

namespace A185717

/-- `A000203(2*n+1)-A328788(2*n+1)` -/
def P6795769185430049084.Spec : Prop :=
  ∀ n, P6795769185430049084.a n = A185717 n

end A185717

/-! ## A185717.P12605693589220020070

`A115607(2*n+1)-A321527(2*n+1)`
-/

namespace A185717.P12605693589220020070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115607 (2 * n + 1) - A321527 (2 * n + 1)

end

end A185717.P12605693589220020070

namespace A185717

/-- `A115607(2*n+1)-A321527(2*n+1)` -/
def P12605693589220020070.Spec : Prop :=
  ∀ n, P12605693589220020070.a n = A185717 n

end A185717

/-! ## A185717.P3583087746655614399

`A214361(Δ[n²])`
-/

namespace A185717.P3583087746655614399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214361 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A185717.P3583087746655614399

namespace A185717

/-- `A214361(Δ[n²])` -/
def P3583087746655614399.Spec : Prop :=
  ∀ n, P3583087746655614399.a n = A185717 n

end A185717

/-! ## A185717.P10065703851305066561

`A226132(Δ[n²])`
-/

namespace A185717.P10065703851305066561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226132 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A185717.P10065703851305066561

namespace A185717

/-- `A226132(Δ[n²])` -/
def P10065703851305066561.Spec : Prop :=
  ∀ n, P10065703851305066561.a n = A185717 n

end A185717

/-! ## A185717.P11774070347185794543

`A385138(Δ[n²])`
-/

namespace A185717.P11774070347185794543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385138 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A185717.P11774070347185794543

namespace A185717

/-- `A385138(Δ[n²])` -/
def P11774070347185794543.Spec : Prop :=
  ∀ n, P11774070347185794543.a n = A185717 n

end A185717

/-! ## A185717.P12696198659683763836

`abs(A226132(2*n+1))`
-/

namespace A185717.P12696198659683763836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A226132 (2 * n + 1)|

end

end A185717.P12696198659683763836

namespace A185717

/-- `abs(A226132(2*n+1))` -/
def P12696198659683763836.Spec : Prop :=
  ∀ n, P12696198659683763836.a n = A185717 n

end A185717

/-! ## A185717.P5188361937347779899

`∑{d}[2*n+1, A186101(#)]`
-/

namespace A185717.P5188361937347779899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A186101 d

end

end A185717.P5188361937347779899

namespace A185717

/-- `∑{d}[2*n+1, A186101(#)]` -/
def P5188361937347779899.Spec : Prop :=
  ∀ n, P5188361937347779899.a n = A185717 n

end A185717

/-! ## A185717.P12356525476321919023

`∑{d}[2*n+1, A255368(#)]`
-/

namespace A185717.P12356525476321919023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A255368 d

end

end A185717.P12356525476321919023

namespace A185717

/-- `∑{d}[2*n+1, A255368(#)]` -/
def P12356525476321919023.Spec : Prop :=
  ∀ n, P12356525476321919023.a n = A185717 n

end A185717

/-! ## A185717.P9135567514150984644

`∑{d}[2*n+1, A384042(#)]`
-/

namespace A185717.P9135567514150984644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A384042 d

end

end A185717.P9135567514150984644

namespace A185717

/-- `∑{d}[2*n+1, A384042(#)]` -/
def P9135567514150984644.Spec : Prop :=
  ∀ n, P9135567514150984644.a n = A185717 n

end A185717

/-! ## A185717.P10879672168386867046

`A008438(n)-A224226(2*n+1)`
-/

namespace A185717.P10879672168386867046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 n - A224226 (2 * n + 1)

end

end A185717.P10879672168386867046

namespace A185717

/-- `A008438(n)-A224226(2*n+1)` -/
def P10879672168386867046.Spec : Prop :=
  ∀ n, P10879672168386867046.a n = A185717 n

end A185717

/-! ## A185717.P10461072651220423377

`A005880(n)-A232356(2*n+1)`
-/

namespace A185717.P10461072651220423377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005880 n - A232356 (2 * n + 1)

end

end A185717.P10461072651220423377

namespace A185717

/-- `A005880(n)-A232356(2*n+1)` -/
def P10461072651220423377.Spec : Prop :=
  ∀ n, P10461072651220423377.a n = A185717 n

end A185717

/-! ## A185717.P6330974132090148179

`A214361(2*n+1)+A007814(2*n+1)`
-/

namespace A185717.P6330974132090148179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214361 (2 * n + 1) + A007814 (2 * n + 1)

end

end A185717.P6330974132090148179

namespace A185717

/-- `A214361(2*n+1)+A007814(2*n+1)` -/
def P6330974132090148179.Spec : Prop :=
  ∀ n, P6330974132090148179.a n = A185717 n

end A185717

/-! ## A185717.P7654887787886449810

`A326400(2*n+1)+A326399(2*n+1)`
-/

namespace A185717.P7654887787886449810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326400 (2 * n + 1) + A326399 (2 * n + 1)

end

end A185717.P7654887787886449810

namespace A185717

/-- `A326400(2*n+1)+A326399(2*n+1)` -/
def P7654887787886449810.Spec : Prop :=
  ∀ n, P7654887787886449810.a n = A185717 n

end A185717

/-! ## A185717.P13668148644070711261

`A364012(2*n+1)+A326400(2*n+1)`
-/

namespace A185717.P13668148644070711261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364012 (2 * n + 1) + A326400 (2 * n + 1)

end

end A185717.P13668148644070711261

namespace A185717

/-- `A364012(2*n+1)+A326400(2*n+1)` -/
def P13668148644070711261.Spec : Prop :=
  ∀ n, P13668148644070711261.a n = A185717 n

end A185717

/-!
# A185718: For positive n with prime decomposition n = Product_{j=1..m} (p_j^k_j) define A_n = Sum_{j=1..m} (p_j*k_j) and B_n = Sum_{j=1..m} (p_j^k_j). This sequence gives those n for which A_n and B_n are both prime and B_n = A_n + 2 (i.e., form a twin prime pair).

The programs for A185718, there is no canonical definition to state claims against.
-/

/-! ## A185718.P7394637884935452983

`filter[A179435(n+1), A290098(#)]`
-/

namespace A185718.P7394637884935452983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A185718.P7394637884935452983

/-! ## A185718.P1293070897275269804

`∩[A179435(n+1), A051062(n)]`
-/

namespace A185718.P1293070897275269804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051062 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185718.P1293070897275269804

/-! ## A185718.P12123699603690924500

`record[A302138(A179435(n+1))]`
-/

namespace A185718.P12123699603690924500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302138 (A179435 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185718.P12123699603690924500

/-! ## A185718.P10236723378063360896

`∩[A179435(n+1), A191483(n+1)]`
-/

namespace A185718.P10236723378063360896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185718.P10236723378063360896

/-! ## A185718.P17385114323199967728

`∩[A133466(n+1), A179435(n+1)]`
-/

namespace A185718.P17385114323199967728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185718.P17385114323199967728

/-!
# A185720: Square roots of discriminants of norm-Euclidean Galois cubic fields.

The programs for A185720, there is no canonical definition to state claims against.
-/

/-! ## A185720.P8732911683902089080

`A297063(comp[10*(1-n)²])`
-/

namespace A185720.P8732911683902089080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (1 - (n : ℤ)) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297063 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A185720.P8732911683902089080

/-! ## A185720.P4905619250902704368

`or(1, A297063(A219361(n+1)))`
-/

namespace A185720.P4905619250902704368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A297063 (A219361 (n + 1)).toNat)

end

end A185720.P4905619250902704368

/-! ## A185720.P12626009168046205207

`A297063(A219361(n+1))%A032592(n)`
-/

namespace A185720.P12626009168046205207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297063 (A219361 (n + 1)).toNat) (A032592 n)

end

end A185720.P12626009168046205207

/-! ## A185720.P9453657635985253782

`A189023(n+1)*A297063(A335235(n+1))`
-/

namespace A185720.P9453657635985253782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189023 (n + 1) * A297063 (A335235 (n + 1)).toNat

end

end A185720.P9453657635985253782

/-! ## A185720.P3350939725063053906

`∪[A032595(n+1), A297063(A219361(n+1))]`
-/

namespace A185720.P3350939725063053906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297063 (A219361 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A185720.P3350939725063053906

/-!
# A185721: Arises in the maximum number of C5's in a triangle-free graph.

The programs for A185721, the canonical program `A185721.P10812198493115536392` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185721 has offset 0).

The definition of A185721 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A185721.P10812198493115536392

`floor((n/5)^5)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A185721

/-- `floor((n/5)^5)` -/
def P10812198493115536392.Spec : Prop :=
  ∀ n, P10812198493115536392.a n = A185721 n

theorem P10812198493115536392.correct : P10812198493115536392.Spec := by
  intro n
  simp only [A185721]

end A185721

/-! ## A185721.P13362130989692753006

`A331912(A136417(n))-A136417(n)`
-/

namespace A185721.P13362130989692753006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331912 (A136417 n).toNat - A136417 n

end

end A185721.P13362130989692753006

namespace A185721

/-- `A331912(A136417(n))-A136417(n)` -/
def P13362130989692753006.Spec : Prop :=
  ∀ n, P13362130989692753006.a n = A185721 n

end A185721

/-! ## A185721.P6277739244475539693

`A135663(floor(A212265(n)/A003059(2*n+5))+1)`
-/

namespace A185721.P6277739244475539693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135663 (⌊(A212265 n : ℚ) / (A003059 (2 * n + 5) : ℚ)⌋ + 1).toNat

end

end A185721.P6277739244475539693

namespace A185721

/-- `A135663(floor(A212265(n)/A003059(2*n+5))+1)` -/
def P6277739244475539693.Spec : Prop :=
  ∀ n, P6277739244475539693.a n = A185721 n

end A185721

/-! ## A185721.P8216771084577192080

`∑[A108611(A005169(n))]`
-/

namespace A185721.P8216771084577192080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (A005169 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185721.P8216771084577192080

namespace A185721

/-- `∑[A108611(A005169(n))]` -/
def P8216771084577192080.Spec : Prop :=
  ∀ n, P8216771084577192080.a n = A185721 n

end A185721

/-! ## A185721.P9067669982593243062

`A111660(A112805(n+1))`
-/

namespace A185721.P9067669982593243062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A112805 (n + 1)).toNat

end

end A185721.P9067669982593243062

namespace A185721

/-- `A111660(A112805(n+1))` -/
def P9067669982593243062.Spec : Prop :=
  ∀ n, P9067669982593243062.a n = A185721 n

end A185721

/-!
# A185722: Triangle read by rows: The number of m-path covers of the n-cycle C_n.

The programs for A185722, there is no canonical definition to state claims against.
-/

/-! ## A185722.P6054670546506646111

`A125127(A245300(n)+A193592(n))`
-/

namespace A185722.P6054670546506646111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125127 (A245300 n + A193592 n).toNat

end

end A185722.P6054670546506646111

/-! ## A185722.P10656130954504892297

`A125127(A245300(n)+A004736(n+1))`
-/

namespace A185722.P10656130954504892297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125127 (A245300 n + A004736 (n + 1)).toNat

end

end A185722.P10656130954504892297

/-!
# A185723: Numbers that are the sum of distinct primes with prime subscripts.

The programs for A185723, there is no canonical definition to state claims against.
-/

/-! ## A185723.P13548006705573972085

`lt[0, A271368(n+1)]+1`
-/

namespace A185723.P13548006705573972085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271368 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A185723.P13548006705573972085

/-! ## A185723.P13794973175290875636

`comp[A213356(n+1)-1]+1`
-/

namespace A185723.P13794973175290875636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213356 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A185723.P13794973175290875636

/-! ## A185723.P10063896756269173384

`lt[0, A271368(A028310(n))]`
-/

namespace A185723.P10063896756269173384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271368 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A185723.P10063896756269173384

/-! ## A185723.P16552906623545517831

`A065475(lt[0, A271368(n+1)])`
-/

namespace A185723.P16552906623545517831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A185723.P16552906623545517831

/-! ## A185723.P11978581396249276959

`lt[0, A271368(A004277(n)-n)]`
-/

namespace A185723.P11978581396249276959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271368 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A185723.P11978581396249276959

/-! ## A185723.P6497171845183846778

`comp[∪[A213356(n+1), A014417(n)]]`
-/

namespace A185723.P6497171845183846778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213356 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014417 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A185723.P6497171845183846778

/-! ## A185723.P1326465015587161229

`eq[char[A213356(n+1)], A151933(n)]`
-/

namespace A185723.P1326465015587161229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213356 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A185723.P1326465015587161229

/-! ## A185723.P10631044688493874997

`eq[char[eq[0, A271368(n+1)]+1], A151933(n)]`
-/

namespace A185723.P10631044688493874997
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271368 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f5 j) n

end

end A185723.P10631044688493874997

/-!
# A185725: Array associated with squares, by antidiagonals.

The programs for A185725, the canonical program `A185725.P4132825737576595347` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185725 has offset 1).

The definition of A185725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185725.P13305320554673553121

`A375510(n)+A068344(n)`
-/

namespace A185725.P13305320554673553121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375510 n + A068344 n

end

end A185725.P13305320554673553121

namespace A185725

/-- `A375510(n)+A068344(n)` -/
def P13305320554673553121.Spec : Prop :=
  ∀ n, P13305320554673553121.a n = A185725 (n + 1)

end A185725

/-! ## A185725.P4132825737576595347

`A194959(n+1)+A003984(n)²`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A185725

/-- `A194959(n+1)+A003984(n)²` -/
def P4132825737576595347.Spec : Prop :=
  ∀ n, P4132825737576595347.a n = A185725 (n + 1)

theorem P4132825737576595347.correct : P4132825737576595347.Spec := by
  intro n
  simp only [A185725, Nat.add_sub_cancel]

end A185725

/-! ## A185725.P11872821372324176057

`A003983(n+1)+A053616(n)+A003984(n)²`
-/

namespace A185725.P11872821372324176057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1) + (A053616 n + A003984 n ^ 2)

end

end A185725.P11872821372324176057

namespace A185725

/-- `A003983(n+1)+A053616(n)+A003984(n)²` -/
def P11872821372324176057.Spec : Prop :=
  ∀ n, P11872821372324176057.a n = A185725 (n + 1)

end A185725

/-! ## A185725.P11841627920724113406

`A375510(A061579(n))`
-/

namespace A185725.P11841627920724113406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375510 (A061579 n).toNat

end

end A185725.P11841627920724113406

namespace A185725

/-- `A375510(A061579(n))` -/
def P11841627920724113406.Spec : Prop :=
  ∀ n, P11841627920724113406.a n = A185725 (n + 1)

end A185725

/-! ## A185725.P12250618107723258724

`A003984(n)²+A210535(comp[∑[n]])-1`
-/

namespace A185725.P12250618107723258724
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 n ^ 2 + (A210535 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1)

end

end A185725.P12250618107723258724

namespace A185725

/-- `A003984(n)²+A210535(comp[∑[n]])-1` -/
def P12250618107723258724.Spec : Prop :=
  ∀ n, P12250618107723258724.a n = A185725 (n + 1)

end A185725

/-! ## A185725.P11540708435128908127

`A068344(n)+A020703(A213922(n+1))`
-/

namespace A185725.P11540708435128908127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068344 n + A020703 (A213922 (n + 1)).toNat

end

end A185725.P11540708435128908127

namespace A185725

/-- `A068344(n)+A020703(A213922(n+1))` -/
def P11540708435128908127.Spec : Prop :=
  ∀ n, P11540708435128908127.a n = A185725 (n + 1)

end A185725

/-! ## A185725.P3466584547383962532

`A068344(n)+A020703(A253146(n+1)+A003984(n)²)`
-/

namespace A185725.P3466584547383962532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068344 n + A020703 (A253146 (n + 1) + A003984 n ^ 2).toNat

end

end A185725.P3466584547383962532

namespace A185725

/-- `A068344(n)+A020703(A253146(n+1)+A003984(n)²)` -/
def P3466584547383962532.Spec : Prop :=
  ∀ n, P3466584547383962532.a n = A185725 (n + 1)

end A185725

/-! ## A185725.P9916470047457849023

`A068344(n)+A020703(A051125(n+1)²+1-A210535(n+1))`
-/

namespace A185725.P9916470047457849023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068344 n + A020703 (A051125 (n + 1) ^ 2 + (1 - A210535 (n + 1))).toNat

end

end A185725.P9916470047457849023

namespace A185725

/-- `A068344(n)+A020703(A051125(n+1)²+1-A210535(n+1))` -/
def P9916470047457849023.Spec : Prop :=
  ∀ n, P9916470047457849023.a n = A185725 (n + 1)

end A185725

/-! ## A185725.P16358918113398362188

`A143051(A214871(n+1))`
-/

namespace A185725.P16358918113398362188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 (A214871 (n + 1)).toNat

end

end A185725.P16358918113398362188

namespace A185725

/-- `A143051(A214871(n+1))` -/
def P16358918113398362188.Spec : Prop :=
  ∀ n, P16358918113398362188.a n = A185725 (n + 1)

end A185725

/-! ## A185725.P14078967870693340017

`ceil(A004741(2*n+1)/2)+A003984(n)²`
-/

namespace A185725.P14078967870693340017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004741 (2 * n + 1) : ℚ) / 2⌉ + A003984 n ^ 2

end

end A185725.P14078967870693340017

namespace A185725

/-- `ceil(A004741(2*n+1)/2)+A003984(n)²` -/
def P14078967870693340017.Spec : Prop :=
  ∀ n, P14078967870693340017.a n = A185725 (n + 1)

end A185725

/-! ## A185725.P16596925167441715067

`A060736(A064790(A213922(A064790(A060736(n+1)))))`
-/

namespace A185725.P16596925167441715067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060736 (A064790 (A213922 (A064790 (A060736 (n + 1)).toNat).toNat).toNat).toNat

end

end A185725.P16596925167441715067

namespace A185725

/-- `A060736(A064790(A213922(A064790(A060736(n+1)))))` -/
def P16596925167441715067.Spec : Prop :=
  ∀ n, P16596925167441715067.a n = A185725 (n + 1)

end A185725

/-! ## A185725.P8269194741545436550

`A004739(2*n+1)+A003984(n)²`
-/

namespace A185725.P8269194741545436550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (2 * n + 1) + A003984 n ^ 2

end

end A185725.P8269194741545436550

namespace A185725

/-- `A004739(2*n+1)+A003984(n)²` -/
def P8269194741545436550.Spec : Prop :=
  ∀ n, P8269194741545436550.a n = A185725 (n + 1)

end A185725

/-! ## A185725.P9724915334272583518

`A053188(comp[∑[n]]+n)+A003984(n)²`
-/

namespace A185725.P9724915334272583518
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) + A003984 n ^ 2

end

end A185725.P9724915334272583518

namespace A185725

/-- `A053188(comp[∑[n]]+n)+A003984(n)²` -/
def P9724915334272583518.Spec : Prop :=
  ∀ n, P9724915334272583518.a n = A185725 (n + 1)

end A185725

/-! ## A185725.P11593660196717084774

`A003983(A185869(n+1))+A003984(n)²`
-/

namespace A185725.P11593660196717084774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (A185869 (n + 1)).toNat + A003984 n ^ 2

end

end A185725.P11593660196717084774

namespace A185725

/-- `A003983(A185869(n+1))+A003984(n)²` -/
def P11593660196717084774.Spec : Prop :=
  ∀ n, P11593660196717084774.a n = A185725 (n + 1)

end A185725

/-!
# A185727: Integers of the form A145911(k)/(k+1) sorted along increasing k.

The programs for A185727, the canonical program `A185727.P3313924342085274439` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185727 has offset 0).

The definition of A185727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185727.P3313924342085274439

`A106610(A007494(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A185727

/-- `A106610(A007494(n))` -/
def P3313924342085274439.Spec : Prop :=
  ∀ n, P3313924342085274439.a n = A185727 n

theorem P3313924342085274439.correct : P3313924342085274439.Spec := by
  intro n
  simp only [A185727]

end A185727

/-! ## A185727.P11716500159915403589

`gcd(A011195(n), A014682(n))`
-/

namespace A185727.P11716500159915403589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A011195 n) (A014682 n)

end

end A185727.P11716500159915403589

namespace A185727

/-- `gcd(A011195(n), A014682(n))` -/
def P11716500159915403589.Spec : Prop :=
  ∀ n, (P11716500159915403589.a n : ℤ) = A185727 n

end A185727

/-! ## A185727.P13804543357879461602

`A106610(A080513(n)-1+n)`
-/

namespace A185727.P13804543357879461602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A080513 n - 1 + (n : ℤ)).toNat

end

end A185727.P13804543357879461602

namespace A185727

/-- `A106610(A080513(n)-1+n)` -/
def P13804543357879461602.Spec : Prop :=
  ∀ n, P13804543357879461602.a n = A185727 n

end A185727

/-! ## A185727.P14018514545709430904

`A106610(n-(1-A080513(n)))`
-/

namespace A185727.P14018514545709430904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 ((n : ℤ) - (1 - A080513 n)).toNat

end

end A185727.P14018514545709430904

namespace A185727

/-- `A106610(n-(1-A080513(n)))` -/
def P14018514545709430904.Spec : Prop :=
  ∀ n, P14018514545709430904.a n = A185727 n

end A185727

/-! ## A185727.P4918861183335395072

`A106610(lt[n, A106610(n+2)])`
-/

namespace A185727.P4918861183335395072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A185727.P4918861183335395072

namespace A185727

/-- `A106610(lt[n, A106610(n+2)])` -/
def P4918861183335395072.Spec : Prop :=
  ∀ n, P4918861183335395072.a n = A185727 n

end A185727

/-! ## A185727.P3277551141760176155

`A106610(record[A106610(n+2)-2])`
-/

namespace A185727.P3277551141760176155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A185727.P3277551141760176155

namespace A185727

/-- `A106610(record[A106610(n+2)-2])` -/
def P3277551141760176155.Spec : Prop :=
  ∀ n, P3277551141760176155.a n = A185727 n

end A185727

/-! ## A185727.P12632438437467128374

`A014682(n/gcd(3, A014682(n)²))`
-/

namespace A185727.P12632438437467128374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.roundAway ((n : ℚ) / (Int.gcd 3 (A014682 n ^ 2) : ℚ))).toNat

end

end A185727.P12632438437467128374

namespace A185727

/-- `A014682(n/gcd(3, A014682(n)²))` -/
def P12632438437467128374.Spec : Prop :=
  ∀ n, P12632438437467128374.a n = A185727 n

end A185727

/-! ## A185727.P14146388017580205869

`A106610(A123108(n+1)+n)`
-/

namespace A185727.P14146388017580205869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A123108 (n + 1) + (n : ℤ)).toNat

end

end A185727.P14146388017580205869

namespace A185727

/-- `A106610(A123108(n+1)+n)` -/
def P14146388017580205869.Spec : Prop :=
  ∀ n, P14146388017580205869.a n = A185727 n

end A185727

/-! ## A185727.P15737004470343915330

`A051176(A014682(n))`
-/

namespace A185727.P15737004470343915330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A014682 n).toNat

end

end A185727.P15737004470343915330

namespace A185727

/-- `A051176(A014682(n))` -/
def P15737004470343915330.Spec : Prop :=
  ∀ n, P15737004470343915330.a n = A185727 n

end A185727

/-! ## A185727.P433253404611555306

`A051176(A051176(A057353(2*n+1)))`
-/

namespace A185727.P433253404611555306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A051176 (A057353 (2 * n + 1)).toNat).toNat

end

end A185727.P433253404611555306

namespace A185727

/-- `A051176(A051176(A057353(2*n+1)))` -/
def P433253404611555306.Spec : Prop :=
  ∀ n, P433253404611555306.a n = A185727 n

end A185727

/-! ## A185727.P14539870744412955043

`A051176(A145979(2*n)-A008619(n+1))`
-/

namespace A185727.P14539870744412955043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A145979 (2 * n) - A008619 (n + 1)).toNat

end

end A185727.P14539870744412955043

namespace A185727

/-- `A051176(A145979(2*n)-A008619(n+1))` -/
def P14539870744412955043.Spec : Prop :=
  ∀ n, P14539870744412955043.a n = A185727 n

end A185727

/-! ## A185727.P4742496785518099436

`A106619(A047233(n+1))`
-/

namespace A185727.P4742496785518099436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (A047233 (n + 1)).toNat

end

end A185727.P4742496785518099436

namespace A185727

/-- `A106619(A047233(n+1))` -/
def P4742496785518099436.Spec : Prop :=
  ∀ n, P4742496785518099436.a n = A185727 n

end A185727

/-! ## A185727.P11499663336693488939

`A350034(2*(A001057(n)+n))`
-/

namespace A185727.P11499663336693488939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350034 (2 * (A001057 n + (n : ℤ))).toNat

end

end A185727.P11499663336693488939

namespace A185727

/-- `A350034(2*(A001057(n)+n))` -/
def P11499663336693488939.Spec : Prop :=
  ∀ n, P11499663336693488939.a n = A185727 n

end A185727

/-! ## A185727.P4974294160716151549

`A106619(lt[n, A060789(n+1)])`
-/

namespace A185727.P4974294160716151549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A185727.P4974294160716151549

namespace A185727

/-- `A106619(lt[n, A060789(n+1)])` -/
def P4974294160716151549.Spec : Prop :=
  ∀ n, P4974294160716151549.a n = A185727 n

end A185727

/-! ## A185727.P15788138258191783531

`A106619(lt[n, A106619(n+1)])`
-/

namespace A185727.P15788138258191783531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A185727.P15788138258191783531

namespace A185727

/-- `A106619(lt[n, A106619(n+1)])` -/
def P15788138258191783531.Spec : Prop :=
  ∀ n, P15788138258191783531.a n = A185727 n

end A185727

/-! ## A185727.P5447564190701236942

`A106619(record[A106619(2*n+1)-1])`
-/

namespace A185727.P5447564190701236942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (2 * n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A185727.P5447564190701236942

namespace A185727

/-- `A106619(record[A106619(2*n+1)-1])` -/
def P5447564190701236942.Spec : Prop :=
  ∀ n, P5447564190701236942.a n = A185727 n

end A185727

/-! ## A185727.P15672300177889071151

`A051176(A051176(A004526(A016777(n))))`
-/

namespace A185727.P15672300177889071151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A051176 (A004526 (A016777 n).toNat).toNat).toNat

end

end A185727.P15672300177889071151

namespace A185727

/-- `A051176(A051176(A004526(A016777(n))))` -/
def P15672300177889071151.Spec : Prop :=
  ∀ n, P15672300177889071151.a n = A185727 n

end A185727

/-! ## A185727.P18154891924286696949

`A002264(lcm(3, ∑[2*n]%(2*n+1)))`
-/

namespace A185727.P18154891924286696949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Nat.lcm 3 ((∑ j ∈ Finset.range (n + 1), f1 j) % (2 * n + 1)))

end

end A185727.P18154891924286696949

namespace A185727

/-- `A002264(lcm(3, ∑[2*n]%(2*n+1)))` -/
def P18154891924286696949.Spec : Prop :=
  ∀ n, P18154891924286696949.a n = A185727 n

end A185727

/-! ## A185727.P14645885319511939496

`A051724(4*Δ[n*floor(n/2)])`
-/

namespace A185727.P14645885319511939496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (4 * (f1 (n + 1) - f1 n)).toNat

end

end A185727.P14645885319511939496

namespace A185727

/-- `A051724(4*Δ[n*floor(n/2)])` -/
def P14645885319511939496.Spec : Prop :=
  ∀ n, P14645885319511939496.a n = A185727 n

end A185727

/-! ## A185727.P7110758478804364923

`A350034(A006370(n)*A089145(n+1))`
-/

namespace A185727.P7110758478804364923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350034 (A006370 n * A089145 (n + 1)).toNat

end

end A185727.P7110758478804364923

namespace A185727

/-- `A350034(A006370(n)*A089145(n+1))` -/
def P7110758478804364923.Spec : Prop :=
  ∀ n, P7110758478804364923.a n = A185727 n

end A185727

/-!
# A185728: Array associated with squares, by antidiagonals.

The programs for A185728, there is no canonical definition to state claims against.
-/

/-! ## A185728.P9240578338936018561

`A060734(A064788(A214870(A064788(A214871(n+1)))))`
-/

namespace A185728.P9240578338936018561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060734 (A064788 (A214870 (A064788 (A214871 (n + 1)).toNat).toNat).toNat).toNat

end

end A185728.P9240578338936018561

/-!
# A185738: Rectangular array T(n,k) = 2^n + k - 2, by antidiagonals.

The programs for A185738, the canonical program `A185738.P5339397896700539405` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185738 has offset 1).

The definition of A185738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185738.P5339397896700539405

`A004736(n+1)+2*(A059268(n)-1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A185738

/-- `A004736(n+1)+2*(A059268(n)-1)` -/
def P5339397896700539405.Spec : Prop :=
  ∀ n, P5339397896700539405.a n = A185738 (n + 1)

theorem P5339397896700539405.correct : P5339397896700539405.Spec := by
  intro n
  simp only [A185738, Nat.add_sub_cancel]

end A185738

/-! ## A185738.P7117715559796832709

`A003056(n)+A000325(A002262(n)+1)`
-/

namespace A185738.P7117715559796832709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + A000325 (A002262 n + 1).toNat

end

end A185738.P7117715559796832709

namespace A185738

/-- `A003056(n)+A000325(A002262(n)+1)` -/
def P7117715559796832709.Spec : Prop :=
  ∀ n, P7117715559796832709.a n = A185738 (n + 1)

end A185738

/-! ## A185738.P1988820426674367262

`A025581(n)+A000225(A002260(n+1))`
-/

namespace A185738.P1988820426674367262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + A000225 (A002260 (n + 1)).toNat

end

end A185738.P1988820426674367262

namespace A185738

/-- `A025581(n)+A000225(A002260(n+1))` -/
def P1988820426674367262.Spec : Prop :=
  ∀ n, P1988820426674367262.a n = A185738 (n + 1)

end A185738

/-! ## A185738.P15074844204551547782

`A025581(n)+A000225(A002262(n)+1)`
-/

namespace A185738.P15074844204551547782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + A000225 (A002262 n + 1).toNat

end

end A185738.P15074844204551547782

namespace A185738

/-- `A025581(n)+A000225(A002262(n)+1)` -/
def P15074844204551547782.Spec : Prop :=
  ∀ n, P15074844204551547782.a n = A185738 (n + 1)

end A185738

/-! ## A185738.P13251538679238526603

`A052955(2*A002262(n))+A025581(n)`
-/

namespace A185738.P13251538679238526603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (2 * A002262 n).toNat + A025581 n

end

end A185738.P13251538679238526603

namespace A185738

/-- `A052955(2*A002262(n))+A025581(n)` -/
def P13251538679238526603.Spec : Prop :=
  ∀ n, P13251538679238526603.a n = A185738 (n + 1)

end A185738

/-! ## A185738.P17833257274851982574

`A004736(n+1)+A000918(A002260(n+1))`
-/

namespace A185738.P17833257274851982574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + A000918 (A002260 (n + 1)).toNat

end

end A185738.P17833257274851982574

namespace A185738

/-- `A004736(n+1)+A000918(A002260(n+1))` -/
def P17833257274851982574.Spec : Prop :=
  ∀ n, P17833257274851982574.a n = A185738 (n + 1)

end A185738

/-! ## A185738.P8901386337394844238

`A004736(n+1)+A059268(A014132(n+1))-2`
-/

namespace A185738.P8901386337394844238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + (A059268 (A014132 (n + 1)).toNat - 2)

end

end A185738.P8901386337394844238

namespace A185738

/-- `A004736(n+1)+A059268(A014132(n+1))-2` -/
def P8901386337394844238.Spec : Prop :=
  ∀ n, P8901386337394844238.a n = A185738 (n + 1)

end A185738

/-! ## A185738.P10134425278847876685

`A002260(A038722(n+1))+A000918(A002260(n+1))`
-/

namespace A185738.P10134425278847876685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A038722 (n + 1)).toNat + A000918 (A002260 (n + 1)).toNat

end

end A185738.P10134425278847876685

namespace A185738

/-- `A002260(A038722(n+1))+A000918(A002260(n+1))` -/
def P10134425278847876685.Spec : Prop :=
  ∀ n, P10134425278847876685.a n = A185738 (n + 1)

end A185738

/-! ## A185738.P12546667229318899352

`A000079(A002260(n+1))+A003056(n)-A002260(n+1)`
-/

namespace A185738.P12546667229318899352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002260 (n + 1)).toNat + (A003056 n - A002260 (n + 1))

end

end A185738.P12546667229318899352

namespace A185738

/-- `A000079(A002260(n+1))+A003056(n)-A002260(n+1)` -/
def P12546667229318899352.Spec : Prop :=
  ∀ n, P12546667229318899352.a n = A185738 (n + 1)

end A185738

/-! ## A185738.P4500089983840749526

`A002024(n+1)+A000225(A002260(n+1))-A002260(n+1)`
-/

namespace A185738.P4500089983840749526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A000225 (A002260 (n + 1)).toNat - A002260 (n + 1))

end

end A185738.P4500089983840749526

namespace A185738

/-- `A002024(n+1)+A000225(A002260(n+1))-A002260(n+1)` -/
def P4500089983840749526.Spec : Prop :=
  ∀ n, P4500089983840749526.a n = A185738 (n + 1)

end A185738

/-! ## A185738.P8788820569991530923

`A025581(n)+∑{d}[A059268(n), #]`
-/

namespace A185738.P8788820569991530923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)

end

end A185738.P8788820569991530923

namespace A185738

/-- `A025581(n)+∑{d}[A059268(n), #]` -/
def P8788820569991530923.Spec : Prop :=
  ∀ n, P8788820569991530923.a n = A185738 (n + 1)

end A185738

/-! ## A185738.P18103664722618840963

`A025581(n)+∑{d}[A123519(n)/A085478(n), #]`
-/

namespace A185738.P18103664722618840963
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123519 n : ℚ) / (A085478 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + ((∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d : ℕ) : ℤ)

end

end A185738.P18103664722618840963

namespace A185738

/-- `A025581(n)+∑{d}[A123519(n)/A085478(n), #]` -/
def P18103664722618840963.Spec : Prop :=
  ∀ n, P18103664722618840963.a n = A185738 (n + 1)

end A185738

/-! ## A185738.P2674005794149500118

`A004736(n+1)+A000203(A059268(n))-1`
-/

namespace A185738.P2674005794149500118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + (A000203 (A059268 n).toNat - 1)

end

end A185738.P2674005794149500118

namespace A185738

/-- `A004736(n+1)+A000203(A059268(n))-1` -/
def P2674005794149500118.Spec : Prop :=
  ∀ n, P2674005794149500118.a n = A185738 (n + 1)

end A185738

/-! ## A185738.P7460290236861607728

`A025581(n)+A005187(A059268(n))`
-/

namespace A185738.P7460290236861607728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + A005187 (A059268 n).toNat

end

end A185738.P7460290236861607728

namespace A185738

/-- `A025581(n)+A005187(A059268(n))` -/
def P7460290236861607728.Spec : Prop :=
  ∀ n, P7460290236861607728.a n = A185738 (n + 1)

end A185738

/-! ## A185738.P1269465851170229971

`A005187(A059268(n)-1)+A002024(n+1)`
-/

namespace A185738.P1269465851170229971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A059268 n - 1).toNat + A002024 (n + 1)

end

end A185738.P1269465851170229971

namespace A185738

/-- `A005187(A059268(n)-1)+A002024(n+1)` -/
def P1269465851170229971.Spec : Prop :=
  ∀ n, P1269465851170229971.a n = A185738 (n + 1)

end A185738

/-! ## A185738.P11565032893486935435

`A000203(A059268(n))+A000120(A173787(n))`
-/

namespace A185738.P11565032893486935435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A059268 n).toNat + A000120 (A173787 n).toNat

end

end A185738.P11565032893486935435

namespace A185738

/-- `A000203(A059268(n))+A000120(A173787(n))` -/
def P11565032893486935435.Spec : Prop :=
  ∀ n, P11565032893486935435.a n = A185738 (n + 1)

end A185738

/-!
# A185740: Weight array of A185738, by antidiagonals.

The programs for A185740, the canonical program `A185740.P16449816303873469913` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185740 has offset 1).

The definition of A185740 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185740.P37620557426497148

`A131572(A185911(n+1))`
-/

namespace A185740.P37620557426497148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131572 (A185911 (n + 1)).toNat

end

end A185740.P37620557426497148

namespace A185740

/-- `A131572(A185911(n+1))` -/
def P37620557426497148.Spec : Prop :=
  ∀ n, P37620557426497148.a n = A185740 (n + 1)

end A185740

/-! ## A185740.P16449816303873469913

`A130123(n)+A073424(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A185740

/-- `A130123(n)+A073424(n)` -/
def P16449816303873469913.Spec : Prop :=
  ∀ n, P16449816303873469913.a n = A185740 (n + 1)

theorem P16449816303873469913.correct : P16449816303873469913.Spec := by
  intro n
  simp only [A185740, Nat.add_sub_cancel]

end A185740

/-! ## A185740.P10203839943443459186

`A008949(n)*A103451(n)`
-/

namespace A185740.P10203839943443459186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 n * A103451 n

end

end A185740.P10203839943443459186

namespace A185740

/-- `A008949(n)*A103451(n)` -/
def P10203839943443459186.Spec : Prop :=
  ∀ n, P10203839943443459186.a n = A185740 (n + 1)

end A185740

/-! ## A185740.P13474915669122419582

`A013609(n)*A103451(n)`
-/

namespace A185740.P13474915669122419582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n * A103451 n

end

end A185740.P13474915669122419582

namespace A185740

/-- `A013609(n)*A103451(n)` -/
def P13474915669122419582.Spec : Prop :=
  ∀ n, P13474915669122419582.a n = A185740 (n + 1)

end A185740

/-! ## A185740.P639184520359918442

`A059268(n)*A103451(n)`
-/

namespace A185740.P639184520359918442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A103451 n

end

end A185740.P639184520359918442

namespace A185740

/-- `A059268(n)*A103451(n)` -/
def P639184520359918442.Spec : Prop :=
  ∀ n, P639184520359918442.a n = A185740 (n + 1)

end A185740

/-! ## A185740.P10033619928156191821

`A097750(n)*A103451(n)`
-/

namespace A185740.P10033619928156191821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097750 n * A103451 n

end

end A185740.P10033619928156191821

namespace A185740

/-- `A097750(n)*A103451(n)` -/
def P10033619928156191821.Spec : Prop :=
  ∀ n, P10033619928156191821.a n = A185740 (n + 1)

end A185740

/-! ## A185740.P5636875152457312980

`A103451(n)*A123519(n)`
-/

namespace A185740.P5636875152457312980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A123519 n

end

end A185740.P5636875152457312980

namespace A185740

/-- `A103451(n)*A123519(n)` -/
def P5636875152457312980.Spec : Prop :=
  ∀ n, P5636875152457312980.a n = A185740 (n + 1)

end A185740

/-! ## A185740.P2369447945802516779

`A103451(n)*A132110(n)`
-/

namespace A185740.P2369447945802516779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A132110 n

end

end A185740.P2369447945802516779

namespace A185740

/-- `A103451(n)*A132110(n)` -/
def P2369447945802516779.Spec : Prop :=
  ∀ n, P2369447945802516779.a n = A185740 (n + 1)

end A185740

/-! ## A185740.P9280518767293293080

`A103451(n)*A141539(n)`
-/

namespace A185740.P9280518767293293080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A141539 n

end

end A185740.P9280518767293293080

namespace A185740

/-- `A103451(n)*A141539(n)` -/
def P9280518767293293080.Spec : Prop :=
  ∀ n, P9280518767293293080.a n = A185740 (n + 1)

end A185740

/-! ## A185740.P15082379217084896020

`A103451(n)*A166555(n)`
-/

namespace A185740.P15082379217084896020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A166555 n

end

end A185740.P15082379217084896020

namespace A185740

/-- `A103451(n)*A166555(n)` -/
def P15082379217084896020.Spec : Prop :=
  ∀ n, P15082379217084896020.a n = A185740 (n + 1)

end A185740

/-! ## A185740.P4767493378683402185

`gcd(A073423(n), A130123(n))`
-/

namespace A185740.P4767493378683402185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073423 n) (A130123 n)

end

end A185740.P4767493378683402185

namespace A185740

/-- `gcd(A073423(n), A130123(n))` -/
def P4767493378683402185.Spec : Prop :=
  ∀ n, (P4767493378683402185.a n : ℤ) = A185740 (n + 1)

end A185740

/-! ## A185740.P13556333255900734940

`lcm(A008949(n), A103452(n))`
-/

namespace A185740.P13556333255900734940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008949 n) (A103452 n)

end

end A185740.P13556333255900734940

namespace A185740

/-- `lcm(A008949(n), A103452(n))` -/
def P13556333255900734940.Spec : Prop :=
  ∀ n, (P13556333255900734940.a n : ℤ) = A185740 (n + 1)

end A185740

/-! ## A185740.P17962464741562701877

`A103452(n)²*A059268(n)`
-/

namespace A185740.P17962464741562701877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n ^ 2 * A059268 n

end

end A185740.P17962464741562701877

namespace A185740

/-- `A103452(n)²*A059268(n)` -/
def P17962464741562701877.Spec : Prop :=
  ∀ n, P17962464741562701877.a n = A185740 (n + 1)

end A185740

/-! ## A185740.P14384798068207377872

`A055888(n+1)*A103451(n)`
-/

namespace A185740.P14384798068207377872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055888 (n + 1) * A103451 n

end

end A185740.P14384798068207377872

namespace A185740

/-- `A055888(n+1)*A103451(n)` -/
def P14384798068207377872.Spec : Prop :=
  ∀ n, P14384798068207377872.a n = A185740 (n + 1)

end A185740

/-! ## A185740.P14311931518503042845

`A056242(n+1)*A103451(n)`
-/

namespace A185740.P14311931518503042845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056242 (n + 1) * A103451 n

end

end A185740.P14311931518503042845

namespace A185740

/-- `A056242(n+1)*A103451(n)` -/
def P14311931518503042845.Spec : Prop :=
  ∀ n, P14311931518503042845.a n = A185740 (n + 1)

end A185740

/-! ## A185740.P14926165365776561918

`A103451(n)*A126198(n+1)`
-/

namespace A185740.P14926165365776561918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A126198 (n + 1)

end

end A185740.P14926165365776561918

namespace A185740

/-- `A103451(n)*A126198(n+1)` -/
def P14926165365776561918.Spec : Prop :=
  ∀ n, P14926165365776561918.a n = A185740 (n + 1)

end A185740

/-! ## A185740.P11202843124378787487

`A166555(n)*A185917(n+1)`
-/

namespace A185740.P11202843124378787487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166555 n * A185917 (n + 1)

end

end A185740.P11202843124378787487

namespace A185740

/-- `A166555(n)*A185917(n+1)` -/
def P11202843124378787487.Spec : Prop :=
  ∀ n, P11202843124378787487.a n = A185740 (n + 1)

end A185740

/-! ## A185740.P14244137730993046201

`A130123(n*(1-A073423(n)))`
-/

namespace A185740.P14244137730993046201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130123 ((n : ℤ) * (1 - A073423 n)).toNat

end

end A185740.P14244137730993046201

namespace A185740

/-- `A130123(n*(1-A073423(n)))` -/
def P14244137730993046201.Spec : Prop :=
  ∀ n, P14244137730993046201.a n = A185740 (n + 1)

end A185740

/-! ## A185740.P7612429385438114161

`A130123(n*(1-A073424(n)))`
-/

namespace A185740.P7612429385438114161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130123 ((n : ℤ) * (1 - A073424 n)).toNat

end

end A185740.P7612429385438114161

namespace A185740

/-- `A130123(n*(1-A073424(n)))` -/
def P7612429385438114161.Spec : Prop :=
  ∀ n, P7612429385438114161.a n = A185740 (n + 1)

end A185740

/-! ## A185740.P16451463603113473874

`lcm(A098599(n), A143425(n+1))`
-/

namespace A185740.P16451463603113473874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A098599 n) (A143425 (n + 1))

end

end A185740.P16451463603113473874

namespace A185740

/-- `lcm(A098599(n), A143425(n+1))` -/
def P16451463603113473874.Spec : Prop :=
  ∀ n, (P16451463603113473874.a n : ℤ) = A185740 (n + 1)

end A185740

/-!
# A185741: Number of (n+1)X(n+1) binary arrays with every 2X2 subblock trace equal to some horizontal or vertical neighbor 2X2 subblock trace.

The programs for A185741, there is no canonical definition to state claims against.
-/

/-! ## A185741.P8052196234954956016

`A185750(∑[4*n]+1)`
-/

namespace A185741.P8052196234954956016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185750 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185741.P8052196234954956016

/-! ## A185741.P7691069118096882507

`lcm(2, A185750(A001844(n)))`
-/

namespace A185741.P7691069118096882507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A185750 (A001844 n).toNat)

end

end A185741.P7691069118096882507

/-! ## A185741.P13942420993886440424

`record[A077606(n+1)*A185750(n+1)]`
-/

namespace A185741.P13942420993886440424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A185750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185741.P13942420993886440424

/-! ## A185741.P11324188831653407368

`char[A007318(n)]*A185750(A001844(n))`
-/

namespace A185741.P11324188831653407368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A185750 (A001844 n).toNat

end

end A185741.P11324188831653407368

/-! ## A185741.P1814735914980208242

`(A000005(2^n)-n)*A185750(A001844(n))`
-/

namespace A185741.P1814735914980208242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000005 (2 ^ n) - (n : ℤ)) * A185750 (A001844 n).toNat

end

end A185741.P1814735914980208242

/-!
# A185742: Number of (n+1) X 2 binary arrays with every 2 X 2 subblock trace equal to some horizontal or vertical neighbor 2 X 2 subblock trace.

The programs for A185742, the canonical program `A185742.P5537263854461325821` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185742 has offset 1).

The definition of A185742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 226 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185742.P5537263854461325821

`3*a(n-1)-a(n-2)-2*a(n-3)+8*a(n-4)` with `a(0)=0, a(1)=24, a(2)=40, a(3)=144`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A185742

/-- `3*a(n-1)-a(n-2)-2*a(n-3)+8*a(n-4)` -/
def P5537263854461325821.Spec : Prop :=
  ∀ n, P5537263854461325821.a n = A185742 (n + 1)

theorem P5537263854461325821.correct : P5537263854461325821.Spec := by
  intro n
  simp only [A185742, Nat.add_sub_cancel]

end A185742

/-! ## A185742.P14166379602775040644

`A185750(∑[n]+1)`
-/

namespace A185742.P14166379602775040644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185750 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185742.P14166379602775040644

namespace A185742

/-- `A185750(∑[n]+1)` -/
def P14166379602775040644.Spec : Prop :=
  ∀ n, P14166379602775040644.a n = A185742 (n + 1)

end A185742

/-! ## A185742.P17629213444544233904

`record[gcd(A185750(n+1), A291556(n))]`
-/

namespace A185742.P17629213444544233904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185750 (n + 1)) (A291556 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185742.P17629213444544233904

namespace A185742

/-- `record[gcd(A185750(n+1), A291556(n))]` -/
def P17629213444544233904.Spec : Prop :=
  ∀ n, (P17629213444544233904.a n : ℤ) = A185742 (n + 1)

end A185742

/-! ## A185742.P9799484162498033342

`record[(2-A185722(n+1))*A185750(n+1)]`
-/

namespace A185742.P9799484162498033342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A185722 (n + 1)) * A185750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185742.P9799484162498033342

namespace A185742

/-- `record[(2-A185722(n+1))*A185750(n+1)]` -/
def P9799484162498033342.Spec : Prop :=
  ∀ n, P9799484162498033342.a n = A185742 (n + 1)

end A185742

/-! ## A185742.P7991794537942063285

`A186939(∑[n]+1)`
-/

namespace A185742.P7991794537942063285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186939 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185742.P7991794537942063285

namespace A185742

/-- `A186939(∑[n]+1)` -/
def P7991794537942063285.Spec : Prop :=
  ∀ n, P7991794537942063285.a n = A185742 (n + 1)

end A185742

/-!
# A185743: Number of (n+1)X3 binary arrays with every 2X2 subblock trace equal to some horizontal or vertical neighbor 2X2 subblock trace.

The programs for A185743, there is no canonical definition to state claims against.
-/

/-! ## A185743.P13622682096280312487

`A185750(∑[n+1]+2)`
-/

namespace A185743.P13622682096280312487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185750 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A185743.P13622682096280312487

/-! ## A185743.P12280755141203922823

`record[gcd(A185750(n+2), A291556(n))]`
-/

namespace A185743.P12280755141203922823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185750 (n + 2)) (A291556 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185743.P12280755141203922823

/-! ## A185743.P11298383880275430587

`record[root(A185750(n+2), A185722(n+1))]`
-/

namespace A185743.P11298383880275430587
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A185750 (n + 2) : ℝ) ^ (1 / (A185722 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185743.P11298383880275430587

/-! ## A185743.P873868961500477742

`record[A185750(abs(A201163(n)))]`
-/

namespace A185743.P873868961500477742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185750 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185743.P873868961500477742

/-! ## A185743.P3234508645234324931

`record[A129186(n+1)*A185750(n+2)]`
-/

namespace A185743.P3234508645234324931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129186 (n + 1) * A185750 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185743.P3234508645234324931

/-!
# A185744: Number of (n+1)X4 binary arrays with every 2X2 subblock trace equal to some horizontal or vertical neighbor 2X2 subblock trace.

The programs for A185744, there is no canonical definition to state claims against.
-/

/-! ## A185744.P16957343132893708364

`A185750(∑[n+2]+4)`
-/

namespace A185744.P16957343132893708364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185750 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A185744.P16957343132893708364

/-! ## A185744.P12036408936236227661

`lcm(2, A185750(A167614(n+1)))`
-/

namespace A185744.P12036408936236227661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A185750 (A167614 (n + 1)).toNat)

end

end A185744.P12036408936236227661

/-! ## A185744.P15739320815921036516

`A185750(A167614(n+1))+A185255(n)`
-/

namespace A185744.P15739320815921036516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185750 (A167614 (n + 1)).toNat + A185255 n

end

end A185744.P15739320815921036516

/-! ## A185744.P11201103878045510129

`A185750(A167614(n+1))*A304042(n)`
-/

namespace A185744.P11201103878045510129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185750 (A167614 (n + 1)).toNat * A304042 n

end

end A185744.P11201103878045510129

/-! ## A185744.P17904616823422256859

`A185750(A167614(n+1))%A184227(n+1)`
-/

namespace A185744.P17904616823422256859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185750 (A167614 (n + 1)).toNat) (A184227 (n + 1))

end

end A185744.P17904616823422256859

/-!
# A185745: Number of (n+1) X 5 binary arrays with every 2 X 2 subblock trace equal to some horizontal or vertical neighbor 2 X 2 subblock trace.

The programs for A185745, there is no canonical definition to state claims against.
-/

/-! ## A185745.P11016480979581730547

`A185750(A374004(n+1))`
-/

namespace A185745.P11016480979581730547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185750 (A374004 (n + 1)).toNat

end

end A185745.P11016480979581730547

/-! ## A185745.P3638372010583709386

`A185750(A052905(n)+9)`
-/

namespace A185745.P3638372010583709386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185750 (A052905 n + 9).toNat

end

end A185745.P3638372010583709386

/-! ## A185745.P6330113665530639692

`A185750(A167614(n+2)+1)`
-/

namespace A185745.P6330113665530639692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185750 (A167614 (n + 2) + 1).toNat

end

end A185745.P6330113665530639692

/-! ## A185745.P10157866376536318573

`A185750(eq[5, A131818(n+1)])`
-/

namespace A185745.P10157866376536318573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185750 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185745.P10157866376536318573

/-! ## A185745.P7406301267351876520

`A185750(Δ[A023545(n+1)-n²])`
-/

namespace A185745.P7406301267351876520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185750 (f1 (n + 1) - f1 n).toNat

end

end A185745.P7406301267351876520

/-!
# A185746: Number of (n+1)X6 binary arrays with every 2X2 subblock trace equal to some horizontal or vertical neighbor 2X2 subblock trace.

The programs for A185746, there is no canonical definition to state claims against.
-/

/-! ## A185746.P1878057621594373944

`A185750(A374005(n+1))`
-/

namespace A185746.P1878057621594373944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185750 (A374005 (n + 1)).toNat

end

end A185746.P1878057621594373944

/-! ## A185746.P10922258840359336697

`A185750(A167499(n+3))`
-/

namespace A185746.P10922258840359336697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185750 (A167499 (n + 3)).toNat

end

end A185746.P10922258840359336697

/-! ## A185746.P6279160453469303808

`A185750(A155212(n)+13)`
-/

namespace A185746.P6279160453469303808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185750 (A155212 n + 13).toNat

end

end A185746.P6279160453469303808

/-! ## A185746.P3069388525786336196

`A185750(eq[7, A066657(n)])`
-/

namespace A185746.P3069388525786336196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185750 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185746.P3069388525786336196

/-! ## A185746.P2585625235787220315

`A185750(eq[6, A131818(n+1)])`
-/

namespace A185746.P2585625235787220315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185750 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185746.P2585625235787220315

/-!
# A185747: Number of (n+1)X7 binary arrays with every 2X2 subblock trace equal to some horizontal or vertical neighbor 2X2 subblock trace.

The programs for A185747, there is no canonical definition to state claims against.
-/

/-! ## A185747.P11997227934724918739

`A185750(A374007(n+1))`
-/

namespace A185747.P11997227934724918739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185750 (A374007 (n + 1)).toNat

end

end A185747.P11997227934724918739

/-! ## A185747.P10874009548471852485

`A185750(eq[7, A131818(n+1)])`
-/

namespace A185747.P10874009548471852485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185750 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185747.P10874009548471852485

/-! ## A185747.P11763577799249417853

`A185750(Δ[A023545(n+1)]+10)`
-/

namespace A185747.P11763577799249417853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185750 (f1 (n + 1) - f1 n + 10).toNat

end

end A185747.P11763577799249417853

/-! ## A185747.P6628925863713724741

`A185750(A052905(n+3))`
-/

namespace A185747.P6628925863713724741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185750 (A052905 (n + 3)).toNat

end

end A185747.P6628925863713724741

/-! ## A185747.P9370165603747743422

`A185750(eq[3, A219347(n)])`
-/

namespace A185747.P9370165603747743422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185750 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185747.P9370165603747743422

/-!
# A185748: Number of (n+1) X 8 binary arrays with every 2 X 2 subblock trace equal to some horizontal or vertical neighbor 2 X 2 subblock trace.

The programs for A185748, there is no canonical definition to state claims against.
-/

/-! ## A185748.P8485213147977759102

`A185750(A374008(n+1))`
-/

namespace A185748.P8485213147977759102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185750 (A374008 (n + 1)).toNat

end

end A185748.P8485213147977759102

/-! ## A185748.P8588991832069300643

`A185750(eq[8, A131818(n+1)])`
-/

namespace A185748.P8588991832069300643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185750 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185748.P8588991832069300643

/-! ## A185748.P2328685820009065180

`A185750(A055999(n+4))`
-/

namespace A185748.P2328685820009065180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185750 (A055999 (n + 4)).toNat

end

end A185748.P2328685820009065180

/-! ## A185748.P9216866309110933886

`A185750(eq[4, A219347(n)])`
-/

namespace A185748.P9216866309110933886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185750 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185748.P9216866309110933886

/-! ## A185748.P9567762172082952494

`A185750(eq[6, A193592(n)])`
-/

namespace A185748.P9567762172082952494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185750 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185748.P9567762172082952494

/-!
# A185749: Number of (n+1)X9 binary arrays with every 2X2 subblock trace equal to some horizontal or vertical neighbor 2X2 subblock trace.

The programs for A185749, there is no canonical definition to state claims against.
-/

/-! ## A185749.P8139840319254075124

`A185750(A374009(n+1))`
-/

namespace A185749.P8139840319254075124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185750 (A374009 (n + 1)).toNat

end

end A185749.P8139840319254075124

/-! ## A185749.P2362469396472307817

`A185750(eq[9, A131818(n+1)])`
-/

namespace A185749.P2362469396472307817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185750 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185749.P2362469396472307817

/-! ## A185749.P4071653821689175146

`A185750(eq[64, A057728(n+1)])`
-/

namespace A185749.P4071653821689175146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185750 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185749.P4071653821689175146

/-!
# A185750: T(n,k)=Number of (n+1)X(k+1) binary arrays with every 2X2 subblock trace equal to some horizontal or vertical neighbor 2X2 subblock trace.

The programs for A185750, there is no canonical definition to state claims against.
-/

/-! ## A185750.P9811251106329296627

`A186939(n+1)^C(n, 6)!`
-/

namespace A185750.P9811251106329296627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186939 (n + 1) ^ Nat.factorial (Nat.choose n 6)

end

end A185750.P9811251106329296627

/-! ## A185750.P4379298579420320279

`A186939((n+1)*gcd(7, n)^n)`
-/

namespace A185750.P4379298579420320279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186939 ((n + 1) * Nat.gcd 7 n ^ n)

end

end A185750.P4379298579420320279

/-! ## A185750.P1709148351129898754

`A186939(((n+1)/∏{p}[n+1, #^val(n+1, #²)])^((n+1)/∏{p}[n+1, #]))`
-/

namespace A185750.P1709148351129898754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186939 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ) : ℝ) ^ ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) : ℝ))).toNat

end

end A185750.P1709148351129898754

/-!
# A185751: a(n) equals the coefficient of x^(2n-1) in the n-th iteration of x/(1-x^2) for n>=1.

The programs for A185751, there is no canonical definition to state claims against.
-/

/-! ## A185751.P11331702877097102233

`A007094(A354240(n))`
-/

namespace A185751.P11331702877097102233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A354240 n).toNat

end

end A185751.P11331702877097102233

/-!
# A185753: G.f. satisfies: A(x/A(x)) = 1 + sqrt(x - x/A(x)).

The programs for A185753, there is no canonical definition to state claims against.
-/

/-! ## A185753.P3075252352870826729

`∏{p}[A174493(A375133(n)), #]`
-/

namespace A185753.P3075252352870826729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174493 (A375133 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A185753.P3075252352870826729

/-! ## A185753.P11547427684316818991

`round(A352189(A000166(n)+1)/4)`
-/

namespace A185753.P11547427684316818991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A352189 (A000166 n + 1).toNat : ℚ) / 4)

end

end A185753.P11547427684316818991

/-! ## A185753.P6865722637147565011

`A174480(A285769(∑[∏{p}[n+1, #]]))`
-/

namespace A185753.P6865722637147565011
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174480 (A285769 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A185753.P6865722637147565011

/-!
# A185754: G.f. satisfies: A(x) = x + x*sqrt(A(A(x)) - A(x)).

The programs for A185754, there is no canonical definition to state claims against.
-/

/-! ## A185754.P15633354483237155760

`A122797(A073279(n)+∑[n])`
-/

namespace A185754.P15633354483237155760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122797 (A073279 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A185754.P15633354483237155760

/-! ## A185754.P4556656881461188969

`A110655(A318683(2*n+1)*A328440(n))`
-/

namespace A185754.P4556656881461188969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A318683 (2 * n + 1) * A328440 n).toNat

end

end A185754.P4556656881461188969

/-!
# A185755: Triangle: T(n,k) equals the coefficient of x^n*y^k in the n-th iteration of x*(1+xy)/(1-x), for n>=1, 0<=k

The programs for A185755, there is no canonical definition to state claims against.
-/

/-! ## A185755.P1294453935545968434

`A093412(n+1)*A117535(A001353(n))`
-/

namespace A185755.P1294453935545968434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093412 (n + 1) * A117535 (A001353 n).toNat

end

end A185755.P1294453935545968434

/-!
# A185756: Column 1 of triangle A185755.

The programs for A185756, there is no canonical definition to state claims against.
-/

/-! ## A185756.P4433100255528892289

`A185755(∑[n+1]+2)`
-/

namespace A185756.P4433100255528892289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185755 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A185756.P4433100255528892289

/-! ## A185756.P10936908468038434434

`record[A185755(A061579(n)+3)]`
-/

namespace A185756.P10936908468038434434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185755 (A061579 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185756.P10936908468038434434

/-! ## A185756.P15161146773846431724

`record[A185755(A114091(n+1)+1)]`
-/

namespace A185756.P15161146773846431724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185755 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185756.P15161146773846431724

/-!
# A185757: Column 2 of triangle A185755.

The programs for A185757, there is no canonical definition to state claims against.
-/

/-! ## A185757.P4051998745675177437

`A185755(∑[n+2]+4)`
-/

namespace A185757.P4051998745675177437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185755 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A185757.P4051998745675177437

/-! ## A185757.P3606361764453212077

`A185755(A167614(n+1))+A102681(n)`
-/

namespace A185757.P3606361764453212077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185755 (A167614 (n + 1)).toNat + A102681 n

end

end A185757.P3606361764453212077

/-!
# A185758: A diagonal of triangle A185755.

The programs for A185758, there is no canonical definition to state claims against.
-/

/-! ## A185758.P7654253343033805279

`A185755(∑[n+2])`
-/

namespace A185758.P7654253343033805279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185755 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A185758.P7654253343033805279

/-! ## A185758.P131830888503522545

`record[A185755(lt[A296548(n), n])]`
-/

namespace A185758.P131830888503522545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296548 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185755 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185758.P131830888503522545

/-! ## A185758.P13255686535861011689

`record[A185755(A000096(∏{e}[n+1, #]))]`
-/

namespace A185758.P13255686535861011689
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185755 (A000096 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185758.P13255686535861011689

/-!
# A185759: A diagonal of triangle A185755.

The programs for A185759, there is no canonical definition to state claims against.
-/

/-! ## A185759.P14941978852736507282

`A185755(∑[n+3]+1)`
-/

namespace A185759.P14941978852736507282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185755 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185759.P14941978852736507282

/-!
# A185760: Number of (n+1) X (n+1) binary arrays with no 2 X 2 subblock trace equal to any horizontal or vertical neighbor 2 X 2 subblock trace.

The programs for A185760, there is no canonical definition to state claims against.
-/

/-! ## A185760.P1770892329003847387

`A185769(∑[4*n]+1)`
-/

namespace A185760.P1770892329003847387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185769 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185760.P1770892329003847387

/-! ## A185760.P3774109131962323556

`lcm(2, A185769(A001844(n)))`
-/

namespace A185760.P3774109131962323556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A185769 (A001844 n).toNat)

end

end A185760.P3774109131962323556

/-! ## A185760.P13124439799059519708

`record[A003982(n)*A185769(n+1)]`
-/

namespace A185760.P13124439799059519708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A185769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185760.P13124439799059519708

/-! ## A185760.P1144384856555678615

`record[gcd(A003987(n), A185769(n+1))]`
-/

namespace A185760.P1144384856555678615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A185769 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185760.P1144384856555678615

/-! ## A185760.P9458906110819210865

`A185769(A001844(n))*A239700(n+1)`
-/

namespace A185760.P9458906110819210865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185769 (A001844 n).toNat * A239700 (n + 1)

end

end A185760.P9458906110819210865

/-!
# A185761: Number of (n+1) X 2 binary arrays with no 2 X 2 subblock trace equal to any horizontal or vertical neighbor 2 X 2 subblock trace.

The programs for A185761, the canonical program `A185761.P10854738246735365749` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185761 has offset 1).

The definition of A185761 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185761.P10854738246735365749

`a(n-1)+4*a(n-2)` with `a(0)=16, a(1)=40`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A185761

/-- `a(n-1)+4*a(n-2)` -/
def P10854738246735365749.Spec : Prop :=
  ∀ n, (P10854738246735365749.a n : ℤ) = A185761 (n + 1)

theorem P10854738246735365749.correct : P10854738246735365749.Spec := by
  intro n
  simp only [A185761, Nat.add_sub_cancel]

end A185761

/-! ## A185761.P567214430609936021

`8*A183774(n)`
-/

namespace A185761.P567214430609936021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A183774 n

end

end A185761.P567214430609936021

namespace A185761

/-- `8*A183774(n)` -/
def P567214430609936021.Spec : Prop :=
  ∀ n, P567214430609936021.a n = A185761 (n + 1)

end A185761

/-! ## A185761.P5151874916740855673

`Δ[A259290(n+1)]`
-/

namespace A185761.P5151874916740855673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185761.P5151874916740855673

namespace A185761

/-- `Δ[A259290(n+1)]` -/
def P5151874916740855673.Spec : Prop :=
  ∀ n, P5151874916740855673.a n = A185761 (n + 1)

end A185761

/-! ## A185761.P566971856890036606

`Δ[A277236(n+2)]`
-/

namespace A185761.P566971856890036606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277236 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185761.P566971856890036606

namespace A185761

/-- `Δ[A277236(n+2)]` -/
def P566971856890036606.Spec : Prop :=
  ∀ n, P566971856890036606.a n = A185761 (n + 1)

end A185761

/-! ## A185761.P4310527758686593668

`2*A205219(n+1)`
-/

namespace A185761.P4310527758686593668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A205219 (n + 1)

end

end A185761.P4310527758686593668

namespace A185761

/-- `2*A205219(n+1)` -/
def P4310527758686593668.Spec : Prop :=
  ∀ n, P4310527758686593668.a n = A185761 (n + 1)

end A185761

/-! ## A185761.P5902525043182811955

`A183682(n+2)/2`
-/

namespace A185761.P5902525043182811955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183682 (n + 2) : ℚ) / 2

end

end A185761.P5902525043182811955

namespace A185761

/-- `A183682(n+2)/2` -/
def P5902525043182811955.Spec : Prop :=
  ∀ n, P5902525043182811955.a n = (A185761 (n + 1) : ℚ)

end A185761

/-! ## A185761.P7446635177582995704

`4*A277236(n+1)`
-/

namespace A185761.P7446635177582995704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A277236 (n + 1)

end

end A185761.P7446635177582995704

namespace A185761

/-- `4*A277236(n+1)` -/
def P7446635177582995704.Spec : Prop :=
  ∀ n, P7446635177582995704.a n = A185761 (n + 1)

end A185761

/-! ## A185761.P12602881780184697829

`floor(A204707(n+2)/2)`
-/

namespace A185761.P12602881780184697829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A204707 (n + 2) : ℚ) / 2⌋

end

end A185761.P12602881780184697829

namespace A185761

/-- `floor(A204707(n+2)/2)` -/
def P12602881780184697829.Spec : Prop :=
  ∀ n, P12602881780184697829.a n = A185761 (n + 1)

end A185761

/-! ## A185761.P5618611814197434606

`abs(Δ[2*A122112(n+1)])`
-/

namespace A185761.P5618611814197434606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A185761.P5618611814197434606

namespace A185761

/-- `abs(Δ[2*A122112(n+1)])` -/
def P5618611814197434606.Spec : Prop :=
  ∀ n, P5618611814197434606.a n = A185761 (n + 1)

end A185761

/-! ## A185761.P9480563307348573107

`A277237(n+2)+A006131(n)`
-/

namespace A185761.P9480563307348573107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277237 (n + 2) + A006131 n

end

end A185761.P9480563307348573107

namespace A185761

/-- `A277237(n+2)+A006131(n)` -/
def P9480563307348573107.Spec : Prop :=
  ∀ n, P9480563307348573107.a n = A185761 (n + 1)

end A185761

/-! ## A185761.P12888401441986410928

`A259290(n+2)-A259290(n+1)`
-/

namespace A185761.P12888401441986410928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259290 (n + 2) - A259290 (n + 1)

end

end A185761.P12888401441986410928

namespace A185761

/-- `A259290(n+2)-A259290(n+1)` -/
def P12888401441986410928.Spec : Prop :=
  ∀ n, P12888401441986410928.a n = A185761 (n + 1)

end A185761

/-! ## A185761.P14169872810606166401

`A026581(n+3)-A026581(n+1)`
-/

namespace A185761.P14169872810606166401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026581 (n + 3) - A026581 (n + 1)

end

end A185761.P14169872810606166401

namespace A185761

/-- `A026581(n+3)-A026581(n+1)` -/
def P14169872810606166401.Spec : Prop :=
  ∀ n, P14169872810606166401.a n = A185761 (n + 1)

end A185761

/-! ## A185761.P15230679251107518000

`A277236(n+3)-A277236(n+2)`
-/

namespace A185761.P15230679251107518000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277236 (n + 3) - A277236 (n + 2)

end

end A185761.P15230679251107518000

namespace A185761

/-- `A277236(n+3)-A277236(n+2)` -/
def P15230679251107518000.Spec : Prop :=
  ∀ n, P15230679251107518000.a n = A185761 (n + 1)

end A185761

/-! ## A185761.P17100778215128959364

`2*(A205220(n+1)-A183682(n+1))`
-/

namespace A185761.P17100778215128959364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A205220 (n + 1) - A183682 (n + 1))

end

end A185761.P17100778215128959364

namespace A185761

/-- `2*(A205220(n+1)-A183682(n+1))` -/
def P17100778215128959364.Spec : Prop :=
  ∀ n, P17100778215128959364.a n = A185761 (n + 1)

end A185761

/-! ## A185761.P10481212074505900158

`A277236(n+1)+A277237(n+1)+A277237(n+1)`
-/

namespace A185761.P10481212074505900158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277236 (n + 1) + (A277237 (n + 1) + A277237 (n + 1))

end

end A185761.P10481212074505900158

namespace A185761

/-- `A277236(n+1)+A277237(n+1)+A277237(n+1)` -/
def P10481212074505900158.Spec : Prop :=
  ∀ n, P10481212074505900158.a n = A185761 (n + 1)

end A185761

/-! ## A185761.P10849168688643885881

`Δ[A205220(n+1)/2]`
-/

namespace A185761.P10849168688643885881
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205220 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185761.P10849168688643885881

namespace A185761

/-- `Δ[A205220(n+1)/2]` -/
def P10849168688643885881.Spec : Prop :=
  ∀ n, P10849168688643885881.a n = (A185761 (n + 1) : ℚ)

end A185761

/-! ## A185761.P4259184108906241915

`Δ[A205219(n+2)/2]`
-/

namespace A185761.P4259184108906241915
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205219 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185761.P4259184108906241915

namespace A185761

/-- `Δ[A205219(n+2)/2]` -/
def P4259184108906241915.Spec : Prop :=
  ∀ n, P4259184108906241915.a n = (A185761 (n + 1) : ℚ)

end A185761

/-! ## A185761.P6641726679978132533

`Δ[Δ[A183774(n+2)/2]]`
-/

namespace A185761.P6641726679978132533
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183774 (n + 2) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185761.P6641726679978132533

namespace A185761

/-- `Δ[Δ[A183774(n+2)/2]]` -/
def P6641726679978132533.Spec : Prop :=
  ∀ n, P6641726679978132533.a n = (A185761 (n + 1) : ℚ)

end A185761

/-! ## A185761.P15383898331635585765

`(A205220(n+2)-A205219(n+2))/2`
-/

namespace A185761.P15383898331635585765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205220 (n + 2) - A205219 (n + 2) : ℚ) / 2

end

end A185761.P15383898331635585765

namespace A185761

/-- `(A205220(n+2)-A205219(n+2))/2` -/
def P15383898331635585765.Spec : Prop :=
  ∀ n, P15383898331635585765.a n = (A185761 (n + 1) : ℚ)

end A185761

/-!
# A185762: Number of (n+1) X 3 binary arrays with no 2 X 2 subblock trace equal to any horizontal or vertical neighbor 2 X 2 subblock trace.

The programs for A185762, the canonical program `A185762.P16992338785112918292` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185762 has offset 1).

The definition of A185762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185762.P16992338785112918292

`a(n-1)+6*a(n-2)+a(n-3)` with `a(0)=40, a(1)=120, a(2)=368`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A185762

/-- `a(n-1)+6*a(n-2)+a(n-3)` -/
def P16992338785112918292.Spec : Prop :=
  ∀ n, (P16992338785112918292.a n : ℤ) = A185762 (n + 1)

theorem P16992338785112918292.correct : P16992338785112918292.Spec := by
  intro n
  simp only [A185762, Nat.add_sub_cancel]

end A185762

/-! ## A185762.P5162913943736156211

`A185769(∑[n+1]+2)`
-/

namespace A185762.P5162913943736156211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185769 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A185762.P5162913943736156211

namespace A185762

/-- `A185769(∑[n+1]+2)` -/
def P5162913943736156211.Spec : Prop :=
  ∀ n, P5162913943736156211.a n = A185762 (n + 1)

end A185762

/-! ## A185762.P1396638658677251788

`record[gcd(A141169(n), A185769(n+2))]`
-/

namespace A185762.P1396638658677251788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141169 n) (A185769 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185762.P1396638658677251788

namespace A185762

/-- `record[gcd(A141169(n), A185769(n+2))]` -/
def P1396638658677251788.Spec : Prop :=
  ∀ n, (P1396638658677251788.a n : ℤ) = A185762 (n + 1)

end A185762

/-! ## A185762.P5701460420317866594

`A185769(C(n+2, 2)+2)%A185766(n+1)`
-/

namespace A185762.P5701460420317866594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185769 (Nat.choose (n + 2) 2 + 2)) (A185766 (n + 1))

end

end A185762.P5701460420317866594

namespace A185762

/-- `A185769(C(n+2, 2)+2)%A185766(n+1)` -/
def P5701460420317866594.Spec : Prop :=
  ∀ n, P5701460420317866594.a n = A185762 (n + 1)

end A185762

/-! ## A185762.P4725773127210538481

`A185769(C(n+2, 2)+2)+A083918(A347405(n+1))`
-/

namespace A185762.P4725773127210538481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185769 (Nat.choose (n + 2) 2 + 2) + A083918 (A347405 (n + 1)).toNat

end

end A185762.P4725773127210538481

namespace A185762

/-- `A185769(C(n+2, 2)+2)+A083918(A347405(n+1))` -/
def P4725773127210538481.Spec : Prop :=
  ∀ n, P4725773127210538481.a n = A185762 (n + 1)

end A185762

/-!
# A185763: Number of (n+1) X 4 binary arrays with no 2 X 2 subblock trace equal to any horizontal or vertical neighbor 2 X 2 subblock trace.

The programs for A185763, there is no canonical definition to state claims against.
-/

/-! ## A185763.P6389993387475065175

`A185769(∑[n+2]+4)`
-/

namespace A185763.P6389993387475065175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185769 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A185763.P6389993387475065175

/-! ## A185763.P14675869217085749393

`lcm(2, A185769(A167614(n+1)))`
-/

namespace A185763.P14675869217085749393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A185769 (A167614 (n + 1)).toNat)

end

end A185763.P14675869217085749393

/-! ## A185763.P5828978688393271161

`A185769(A167614(n+1))+A008683(9*(n+1))`
-/

namespace A185763.P5828978688393271161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185769 (A167614 (n + 1)).toNat + A008683 (9 * (n + 1))

end

end A185763.P5828978688393271161

/-! ## A185763.P17299382367796452545

`A000041(C(2, n+2))*A185769(A167614(n+1))`
-/

namespace A185763.P17299382367796452545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A185769 (A167614 (n + 1)).toNat

end

end A185763.P17299382367796452545

/-! ## A185763.P16028778301505811985

`A000041(and(4, -n)/4)*A185769(A167614(n+1))`
-/

namespace A185763.P16028778301505811985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((Int.land 4 (-(n : ℤ)) : ℚ) / 4)).toNat * A185769 (A167614 (n + 1)).toNat

end

end A185763.P16028778301505811985

/-!
# A185764: Number of (n+1) X 5 binary arrays with no 2 X 2 subblock trace equal to any horizontal or vertical neighbor 2 X 2 subblock trace.

The programs for A185764, there is no canonical definition to state claims against.
-/

/-! ## A185764.P16341917307838916787

`A185769(A374004(n+1))`
-/

namespace A185764.P16341917307838916787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185769 (A374004 (n + 1)).toNat

end

end A185764.P16341917307838916787

/-! ## A185764.P12113647553176934499

`A185769(A052905(n)+9)`
-/

namespace A185764.P12113647553176934499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185769 (A052905 n + 9).toNat

end

end A185764.P12113647553176934499

/-! ## A185764.P14094574333939351551

`A185769(A055999(n)+10)`
-/

namespace A185764.P14094574333939351551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185769 (A055999 n + 10).toNat

end

end A185764.P14094574333939351551

/-! ## A185764.P16621318406381162641

`A185769(A167614(n+2)+1)`
-/

namespace A185764.P16621318406381162641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185769 (A167614 (n + 2) + 1).toNat

end

end A185764.P16621318406381162641

/-! ## A185764.P11973763335940938755

`A185769(A166136(n+2)-2)`
-/

namespace A185764.P11973763335940938755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185769 (A166136 (n + 2) - 2).toNat

end

end A185764.P11973763335940938755

/-!
# A185765: Number of (n+1)X6 binary arrays with no 2X2 subblock trace equal to any horizontal or vertical neighbor 2X2 subblock trace.

The programs for A185765, there is no canonical definition to state claims against.
-/

/-! ## A185765.P5258042066819343390

`A185769(A374005(n+1))`
-/

namespace A185765.P5258042066819343390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185769 (A374005 (n + 1)).toNat

end

end A185765.P5258042066819343390

/-! ## A185765.P675539688014954372

`A185769(A167499(n+3))`
-/

namespace A185765.P675539688014954372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185769 (A167499 (n + 3)).toNat

end

end A185765.P675539688014954372

/-! ## A185765.P16763723595193025675

`A185769(A056000(n)+15)`
-/

namespace A185765.P16763723595193025675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185769 (A056000 n + 15).toNat

end

end A185765.P16763723595193025675

/-! ## A185765.P16359291031966978551

`A185769(A000124(n+4)+4)`
-/

namespace A185765.P16359291031966978551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185769 (A000124 (n + 4) + 4).toNat

end

end A185765.P16359291031966978551

/-! ## A185765.P17232844163359931562

`A185769(A000217(n+4)+5)`
-/

namespace A185765.P17232844163359931562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185769 (A000217 (n + 4) + 5).toNat

end

end A185765.P17232844163359931562

/-!
# A185766: Number of (n+1)X7 binary arrays with no 2X2 subblock trace equal to any horizontal or vertical neighbor 2X2 subblock trace.

The programs for A185766, there is no canonical definition to state claims against.
-/

/-! ## A185766.P11990507774462317634

`A185769(A374007(n+1))`
-/

namespace A185766.P11990507774462317634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185769 (A374007 (n + 1)).toNat

end

end A185766.P11990507774462317634

/-! ## A185766.P10789225198386865550

`A185769(eq[7, A131818(n+1)])`
-/

namespace A185766.P10789225198386865550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185766.P10789225198386865550

/-! ## A185766.P3775280939722672090

`A185769(A052905(n+3))`
-/

namespace A185766.P3775280939722672090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185769 (A052905 (n + 3)).toNat

end

end A185766.P3775280939722672090

/-! ## A185766.P16399137936561338566

`A185769(eq[3, A219347(n)])`
-/

namespace A185766.P16399137936561338566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185766.P16399137936561338566

/-! ## A185766.P17834851315614437822

`A185769(eq[5, A193592(n)])`
-/

namespace A185766.P17834851315614437822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185766.P17834851315614437822

/-!
# A185767: Number of (n+1)X8 binary arrays with no 2X2 subblock trace equal to any horizontal or vertical neighbor 2X2 subblock trace.

The programs for A185767, there is no canonical definition to state claims against.
-/

/-! ## A185767.P9800570927331424196

`A185769(A374008(n+1))`
-/

namespace A185767.P9800570927331424196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185769 (A374008 (n + 1)).toNat

end

end A185767.P9800570927331424196

/-! ## A185767.P3206235808899202788

`A185769(eq[11, A066657(n)])`
-/

namespace A185767.P3206235808899202788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185767.P3206235808899202788

/-! ## A185767.P3634089229271111167

`A185769(eq[8, A131818(n+1)])`
-/

namespace A185767.P3634089229271111167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185767.P3634089229271111167

/-! ## A185767.P17818960252673667508

`A185769(A055999(n+4))`
-/

namespace A185767.P17818960252673667508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185769 (A055999 (n + 4)).toNat

end

end A185767.P17818960252673667508

/-! ## A185767.P13791009840440017435

`A185769(eq[4, A219347(n)])`
-/

namespace A185767.P13791009840440017435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185767.P13791009840440017435

/-!
# A185768: Number of (n+1)X9 binary arrays with no 2X2 subblock trace equal to any horizontal or vertical neighbor 2X2 subblock trace.

The programs for A185768, there is no canonical definition to state claims against.
-/

/-! ## A185768.P4615491356895859588

`A185769(A374009(n+1))`
-/

namespace A185768.P4615491356895859588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185769 (A374009 (n + 1)).toNat

end

end A185768.P4615491356895859588

/-! ## A185768.P8886930057543752086

`A185769(eq[13, A066657(n)])`
-/

namespace A185768.P8886930057543752086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185768.P8886930057543752086

/-! ## A185768.P3296672142201365906

`A185769(eq[9, A131818(n+1)])`
-/

namespace A185768.P3296672142201365906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185768.P3296672142201365906

/-! ## A185768.P2346785892986964459

`A185769(eq[5, A219347(n)])`
-/

namespace A185768.P2346785892986964459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185768.P2346785892986964459

/-! ## A185768.P5203596984048146681

`A185769(eq[7, A193592(n)])`
-/

namespace A185768.P5203596984048146681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185768.P5203596984048146681

/-!
# A185769: T(n,k)=Number of (n+1)X(k+1) binary arrays with no 2X2 subblock trace equal to any horizontal or vertical neighbor 2X2 subblock trace.

The programs for A185769, there is no canonical definition to state claims against.
-/

/-! ## A185769.P5611663138309916401

`A253698(n+1)+A129551(A144436(n+1))`
-/

namespace A185769.P5611663138309916401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (n + 1) + A129551 (A144436 (n + 1)).toNat

end

end A185769.P5611663138309916401

/-! ## A185769.P6167163043731190848

`A253698(n+1)+A129551(A286899(n+1))`
-/

namespace A185769.P6167163043731190848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (n + 1) + A129551 (A286899 (n + 1)).toNat

end

end A185769.P6167163043731190848

/-! ## A185769.P9795773753176135755

`A277256(A166979(n+1))+A253698(n+1)`
-/

namespace A185769.P9795773753176135755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277256 (A166979 (n + 1)).toNat + A253698 (n + 1)

end

end A185769.P9795773753176135755

/-!
# A185770: Number of (n+1)X(n+1) 0..2 arrays with no 2X2 subblock sum equal to any horizontal or vertical neighbor 2X2 subblock sum.

The programs for A185770, there is no canonical definition to state claims against.
-/

/-! ## A185770.P3048109263221653704

`A185777(∑[4*n]+1)`
-/

namespace A185770.P3048109263221653704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185777 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185770.P3048109263221653704

/-!
# A185771: Number of (n+1) X 2 0..2 arrays with no 2 X 2 subblock sum equal to any horizontal or vertical neighbor 2 X 2 subblock sum.

The programs for A185771, there is no canonical definition to state claims against.
-/

/-! ## A185771.P12101419521614094370

`A253294(∑[n]+1)`
-/

namespace A185771.P12101419521614094370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253294 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185771.P12101419521614094370

/-! ## A185771.P10821937564510000126

`record[A253294(A106247(n))]`
-/

namespace A185771.P10821937564510000126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253294 (A106247 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185771.P10821937564510000126

/-! ## A185771.P16173737989457861549

`record[A253294(A329854(n))]`
-/

namespace A185771.P16173737989457861549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253294 (A329854 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185771.P16173737989457861549

/-! ## A185771.P901931031382499063

`record[A253294(A056534(n+1))]`
-/

namespace A185771.P901931031382499063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253294 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185771.P901931031382499063

/-! ## A185771.P3755143363726056506

`record[A253294(A056536(n+1))]`
-/

namespace A185771.P3755143363726056506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253294 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185771.P3755143363726056506

/-!
# A185772: Number of (n+1)X3 0..2 arrays with no 2X2 subblock sum equal to any horizontal or vertical neighbor 2X2 subblock sum.

The programs for A185772, there is no canonical definition to state claims against.
-/

/-! ## A185772.P5712808758373736898

`A185777(∑[n+1]+2)`
-/

namespace A185772.P5712808758373736898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185777 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A185772.P5712808758373736898

/-! ## A185772.P5572961984257920341

`record[A185777(A347629(n+1)+1)]`
-/

namespace A185772.P5572961984257920341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185777 (A347629 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185772.P5572961984257920341

/-! ## A185772.P8794030932920163811

`record[gcd(A185777(n+3), A185813(n))]`
-/

namespace A185772.P8794030932920163811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185777 (n + 3)) (A185813 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185772.P8794030932920163811

/-! ## A185772.P10269024442795123868

`record[root(A185777(n+2), A208337(n+1))]`
-/

namespace A185772.P10269024442795123868
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A185777 (n + 2) : ℝ) ^ (1 / (A208337 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185772.P10269024442795123868

/-! ## A185772.P11054672724492938955

`record[A185777(abs(A201163(n)))]`
-/

namespace A185772.P11054672724492938955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185777 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185772.P11054672724492938955

/-!
# A185773: Number of (n+1)X4 0..2 arrays with no 2X2 subblock sum equal to any horizontal or vertical neighbor 2X2 subblock sum.

The programs for A185773, there is no canonical definition to state claims against.
-/

/-! ## A185773.P12605398042676457770

`A185777(∑[n+2]+4)`
-/

namespace A185773.P12605398042676457770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185777 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A185773.P12605398042676457770

/-! ## A185773.P9938871863465388486

`lcm(2, A185777(A167614(n+1)))`
-/

namespace A185773.P9938871863465388486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A185777 (A167614 (n + 1)).toNat)

end

end A185773.P9938871863465388486

/-! ## A185773.P6755351318629782360

`record[A185777(A347629(n+1)+2)]`
-/

namespace A185773.P6755351318629782360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185777 (A347629 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185773.P6755351318629782360

/-! ## A185773.P11740758208200609646

`record[root(A185777(n+4), A185780(n+1))]`
-/

namespace A185773.P11740758208200609646
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A185777 (n + 4) : ℝ) ^ (1 / (A185780 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185773.P11740758208200609646

/-! ## A185773.P18011733661372159525

`A185777(A167614(n+1))+A025466(n)`
-/

namespace A185773.P18011733661372159525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185777 (A167614 (n + 1)).toNat + A025466 n

end

end A185773.P18011733661372159525

/-!
# A185774: Number of (n+1)X5 0..2 arrays with no 2X2 subblock sum equal to any horizontal or vertical neighbor 2X2 subblock sum.

The programs for A185774, there is no canonical definition to state claims against.
-/

/-! ## A185774.P15021459892200968052

`A185777(A374004(n+1))`
-/

namespace A185774.P15021459892200968052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185777 (A374004 (n + 1)).toNat

end

end A185774.P15021459892200968052

/-! ## A185774.P8898281687129138813

`A185777(A141214(n)+7)`
-/

namespace A185774.P8898281687129138813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185777 (A141214 n + 7).toNat

end

end A185774.P8898281687129138813

/-! ## A185774.P8812157787094388488

`A185777(A052905(n)+9)`
-/

namespace A185774.P8812157787094388488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185777 (A052905 n + 9).toNat

end

end A185774.P8812157787094388488

/-! ## A185774.P9377350396171687603

`A185777(A055999(n)+10)`
-/

namespace A185774.P9377350396171687603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185777 (A055999 n + 10).toNat

end

end A185774.P9377350396171687603

/-!
# A185775: Number of (n+1)X6 0..2 arrays with no 2X2 subblock sum equal to any horizontal or vertical neighbor 2X2 subblock sum.

The programs for A185775, there is no canonical definition to state claims against.
-/

/-! ## A185775.P6487652559887197602

`A185777(∑[n+5]+6)`
-/

namespace A185775.P6487652559887197602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185777 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A185775.P6487652559887197602

/-!
# A185776: Number of (n+1)X7 0..2 arrays with no 2X2 subblock sum equal to any horizontal or vertical neighbor 2X2 subblock sum.

The programs for A185776, there is no canonical definition to state claims against.
-/

/-! ## A185776.P11273002232947168186

`A185777(n*(n+13)/2+16)`
-/

namespace A185776.P11273002232947168186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185777 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 13 : ℚ) / 2) + 16)).toNat

end

end A185776.P11273002232947168186

/-!
# A185780: Array T(n,k) = k*(n*k-n+1), by antidiagonals.

The programs for A185780, the canonical program `A185780.P13066242038255754829` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185780 has offset 1).

The definition of A185780 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185780.P13066242038255754829

`A055461(n+1)+2*A062707(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A185780

/-- `A055461(n+1)+2*A062707(n)` -/
def P13066242038255754829.Spec : Prop :=
  ∀ n, P13066242038255754829.a n = A185780 (n + 1)

theorem P13066242038255754829.correct : P13066242038255754829.Spec := by
  intro n
  simp only [A185780, Nat.add_sub_cancel]

end A185780

/-! ## A185780.P2550786543854942238

`A004736(n+1)²+2*A062707(n)`
-/

namespace A185780.P2550786543854942238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) ^ 2 + 2 * A062707 n

end

end A185780.P2550786543854942238

namespace A185780

/-- `A004736(n+1)²+2*A062707(n)` -/
def P2550786543854942238.Spec : Prop :=
  ∀ n, P2550786543854942238.a n = A185780 (n + 1)

end A185780

/-! ## A185780.P1034950601838180190

`(∑[A114327(n)]+1)*A004736(n+1)`
-/

namespace A185780.P1034950601838180190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A004736 (n + 1)

end

end A185780.P1034950601838180190

namespace A185780

/-- `(∑[A114327(n)]+1)*A004736(n+1)` -/
def P1034950601838180190.Spec : Prop :=
  ∀ n, P1034950601838180190.a n = A185780 (n + 1)

end A185780

/-! ## A185780.P7567951503517327657

`(A094053(n+1)+1)*A004736(n+1)`
-/

namespace A185780.P7567951503517327657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094053 (n + 1) + 1) * A004736 (n + 1)

end

end A185780.P7567951503517327657

namespace A185780

/-- `(A094053(n+1)+1)*A004736(n+1)` -/
def P7567951503517327657.Spec : Prop :=
  ∀ n, P7567951503517327657.a n = A185780 (n + 1)

end A185780

/-! ## A185780.P6884402506278338398

`A004736(n+1)*A077028(A014132(n+1))`
-/

namespace A185780.P6884402506278338398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A077028 (A014132 (n + 1)).toNat

end

end A185780.P6884402506278338398

namespace A185780

/-- `A004736(n+1)*A077028(A014132(n+1))` -/
def P6884402506278338398.Spec : Prop :=
  ∀ n, P6884402506278338398.a n = A185780 (n + 1)

end A185780

/-! ## A185780.P2957380982906930037

`(A004736(n+1)+A004247(n))*A004736(n+1)`
-/

namespace A185780.P2957380982906930037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) + A004247 n) * A004736 (n + 1)

end

end A185780.P2957380982906930037

namespace A185780

/-- `(A004736(n+1)+A004247(n))*A004736(n+1)` -/
def P2957380982906930037.Spec : Prop :=
  ∀ n, P2957380982906930037.a n = A185780 (n + 1)

end A185780

/-! ## A185780.P4922208488055237991

`A004736(n+1)+A003991(n+1)*A025581(n)`
-/

namespace A185780.P4922208488055237991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + A003991 (n + 1) * A025581 n

end

end A185780.P4922208488055237991

namespace A185780

/-- `A004736(n+1)+A003991(n+1)*A025581(n)` -/
def P4922208488055237991.Spec : Prop :=
  ∀ n, P4922208488055237991.a n = A185780 (n + 1)

end A185780

/-! ## A185780.P14345692469007368252

`A004736(n+1)*A128139(n+1)`
-/

namespace A185780.P14345692469007368252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A128139 (n + 1)

end

end A185780.P14345692469007368252

namespace A185780

/-- `A004736(n+1)*A128139(n+1)` -/
def P14345692469007368252.Spec : Prop :=
  ∀ n, P14345692469007368252.a n = A185780 (n + 1)

end A185780

/-! ## A185780.P190556501750655708

`A055461(n+1)+A005843(A062707(n))`
-/

namespace A185780.P190556501750655708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055461 (n + 1) + A005843 (A062707 n).toNat

end

end A185780.P190556501750655708

namespace A185780

/-- `A055461(n+1)+A005843(A062707(n))` -/
def P190556501750655708.Spec : Prop :=
  ∀ n, P190556501750655708.a n = A185780 (n + 1)

end A185780

/-! ## A185780.P992124015809394758

`A002260(∑[A061579(n)]+1)*A004736(n+1)`
-/

namespace A185780.P992124015809394758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat * A004736 (n + 1)

end

end A185780.P992124015809394758

namespace A185780

/-- `A002260(∑[A061579(n)]+1)*A004736(n+1)` -/
def P992124015809394758.Spec : Prop :=
  ∀ n, P992124015809394758.a n = A185780 (n + 1)

end A185780

/-! ## A185780.P11071944132744010327

`A002260(∑[A038722(n+1)]+1)*A004736(n+1)`
-/

namespace A185780.P11071944132744010327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat * A004736 (n + 1)

end

end A185780.P11071944132744010327

namespace A185780

/-- `A002260(∑[A038722(n+1)]+1)*A004736(n+1)` -/
def P11071944132744010327.Spec : Prop :=
  ∀ n, P11071944132744010327.a n = A185780 (n + 1)

end A185780

/-!
# A185782: Weight array of A185780, by antidiagonals.

The programs for A185782, the canonical program `A185782.P9206641103907000175` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185782 has offset 1).

The definition of A185782 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185782.P13367356852141215012

`char[∑[n]]+log2(A262616(n))`
-/

namespace A185782.P13367356852141215012
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ) + Real.logb 2 (A262616 n : ℝ)

end

end A185782.P13367356852141215012

namespace A185782

/-- `char[∑[n]]+log2(A262616(n))` -/
def P13367356852141215012.Spec : Prop :=
  ∀ n, P13367356852141215012.a n = (A185782 (n + 1) : ℝ)

end A185782

/-! ## A185782.P8357803702587872541

`char[∑[n]]+A099375(n)-1`
-/

namespace A185782.P8357803702587872541
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A099375 n - 1)

end

end A185782.P8357803702587872541

namespace A185782

/-- `char[∑[n]]+A099375(n)-1` -/
def P8357803702587872541.Spec : Prop :=
  ∀ n, P8357803702587872541.a n = A185782 (n + 1)

end A185782

/-! ## A185782.P12408272691083941208

`char[∑[n]]+2*A025581(n)`
-/

namespace A185782.P12408272691083941208
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 2 * A025581 n

end

end A185782.P12408272691083941208

namespace A185782

/-- `char[∑[n]]+2*A025581(n)` -/
def P12408272691083941208.Spec : Prop :=
  ∀ n, P12408272691083941208.a n = A185782 (n + 1)

end A185782

/-! ## A185782.P7173392976696297820

`2*A004736(n+1)+char[∑[n]]-2`
-/

namespace A185782.P7173392976696297820
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004736 (n + 1) + (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - 2)

end

end A185782.P7173392976696297820

namespace A185782

/-- `2*A004736(n+1)+char[∑[n]]-2` -/
def P7173392976696297820.Spec : Prop :=
  ∀ n, P7173392976696297820.a n = A185782 (n + 1)

end A185782

/-! ## A185782.P14495697883864343097

`A144257(n+1)+C(comp[∑[n]]-n, 2)-(n+1)`
-/

namespace A185782.P14495697883864343097
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1) + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A185782.P14495697883864343097

namespace A185782

/-- `A144257(n+1)+C(comp[∑[n]]-n, 2)-(n+1)` -/
def P14495697883864343097.Spec : Prop :=
  ∀ n, P14495697883864343097.a n = A185782 (n + 1)

end A185782

/-! ## A185782.P1987837296415268475

`log2(A035214(n)*A262616(n))`
-/

namespace A185782.P1987837296415268475
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A035214 n * A262616 n : ℝ)

end

end A185782.P1987837296415268475

namespace A185782

/-- `log2(A035214(n)*A262616(n))` -/
def P1987837296415268475.Spec : Prop :=
  ∀ n, P1987837296415268475.a n = (A185782 (n + 1) : ℝ)

end A185782

/-! ## A185782.P9206641103907000175

`A144257(n+1)+A025581(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A185782

/-- `A144257(n+1)+A025581(n)` -/
def P9206641103907000175.Spec : Prop :=
  ∀ n, P9206641103907000175.a n = A185782 (n + 1)

theorem P9206641103907000175.correct : P9206641103907000175.Spec := by
  intro n
  simp only [A185782, Nat.add_sub_cancel]

end A185782

/-! ## A185782.P2417783778964136281

`A131914(n+1)-A123578(n)`
-/

namespace A185782.P2417783778964136281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131914 (n + 1) - A123578 n

end

end A185782.P2417783778964136281

namespace A185782

/-- `A131914(n+1)-A123578(n)` -/
def P2417783778964136281.Spec : Prop :=
  ∀ n, P2417783778964136281.a n = A185782 (n + 1)

end A185782

/-! ## A185782.P5484906284969340230

`A212012(n+1)-A238303(n)`
-/

namespace A185782.P5484906284969340230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212012 (n + 1) - A238303 n

end

end A185782.P5484906284969340230

namespace A185782

/-- `A212012(n+1)-A238303(n)` -/
def P5484906284969340230.Spec : Prop :=
  ∀ n, P5484906284969340230.a n = A185782 (n + 1)

end A185782

/-! ## A185782.P11856878060108163424

`or(2*A025581(n), A198954(n))`
-/

namespace A185782.P11856878060108163424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A025581 n) (A198954 n)

end

end A185782.P11856878060108163424

namespace A185782

/-- `or(2*A025581(n), A198954(n))` -/
def P11856878060108163424.Spec : Prop :=
  ∀ n, P11856878060108163424.a n = A185782 (n + 1)

end A185782

/-! ## A185782.P857029779951364539

`A010054(n)+log2(A130321(n)²)`
-/

namespace A185782.P857029779951364539
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A010054 n : ℝ) + Real.logb 2 (A130321 n ^ 2 : ℝ)

end

end A185782.P857029779951364539

namespace A185782

/-- `A010054(n)+log2(A130321(n)²)` -/
def P857029779951364539.Spec : Prop :=
  ∀ n, P857029779951364539.a n = (A185782 (n + 1) : ℝ)

end A185782

/-! ## A185782.P4619777609183763425

`log2((A010054(n)+1)*A262616(n))`
-/

namespace A185782.P4619777609183763425
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A010054 n + 1) * A262616 n : ℝ)

end

end A185782.P4619777609183763425

namespace A185782

/-- `log2((A010054(n)+1)*A262616(n))` -/
def P4619777609183763425.Spec : Prop :=
  ∀ n, P4619777609183763425.a n = (A185782 (n + 1) : ℝ)

end A185782

/-! ## A185782.P9897395754343662959

`A212012(n+1)+A010054(n)-2`
-/

namespace A185782.P9897395754343662959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212012 (n + 1) + (A010054 n - 2)

end

end A185782.P9897395754343662959

namespace A185782

/-- `A212012(n+1)+A010054(n)-2` -/
def P9897395754343662959.Spec : Prop :=
  ∀ n, P9897395754343662959.a n = A185782 (n + 1)

end A185782

/-! ## A185782.P4294459255330746672

`A212012(n+1)-(3-A035214(n))`
-/

namespace A185782.P4294459255330746672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212012 (n + 1) - (3 - A035214 n)

end

end A185782.P4294459255330746672

namespace A185782

/-- `A212012(n+1)-(3-A035214(n))` -/
def P4294459255330746672.Spec : Prop :=
  ∀ n, P4294459255330746672.a n = A185782 (n + 1)

end A185782

/-! ## A185782.P3302931396191544477

`A010054(n)+2*(A004736(n+1)-1)`
-/

namespace A185782.P3302931396191544477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + 2 * (A004736 (n + 1) - 1)

end

end A185782.P3302931396191544477

namespace A185782

/-- `A010054(n)+2*(A004736(n+1)-1)` -/
def P3302931396191544477.Spec : Prop :=
  ∀ n, P3302931396191544477.a n = A185782 (n + 1)

end A185782

/-! ## A185782.P17671534488474573826

`A005843(A004736(n+1)-1)+char[∑[n]]`
-/

namespace A185782.P17671534488474573826
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A004736 (n + 1) - 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A185782.P17671534488474573826

namespace A185782

/-- `A005843(A004736(n+1)-1)+char[∑[n]]` -/
def P17671534488474573826.Spec : Prop :=
  ∀ n, P17671534488474573826.a n = A185782 (n + 1)

end A185782

/-! ## A185782.P8456224667128228909

`A010054(n)+A005843(A025581(n))`
-/

namespace A185782.P8456224667128228909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + A005843 (A025581 n).toNat

end

end A185782.P8456224667128228909

namespace A185782

/-- `A010054(n)+A005843(A025581(n))` -/
def P8456224667128228909.Spec : Prop :=
  ∀ n, P8456224667128228909.a n = A185782 (n + 1)

end A185782

/-! ## A185782.P12425931977481591657

`val(A055236(A061579(n)), 2)`
-/

namespace A185782.P12425931977481591657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A055236 (A061579 n).toNat).toNat 2

end

end A185782.P12425931977481591657

namespace A185782

/-- `val(A055236(A061579(n)), 2)` -/
def P12425931977481591657.Spec : Prop :=
  ∀ n, (P12425931977481591657.a n : ℤ) = A185782 (n + 1)

end A185782

/-! ## A185782.P15330913865181897000

`A007401(A061579(n)+2)-(n+2)`
-/

namespace A185782.P15330913865181897000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007401 (A061579 n + 2).toNat - (n + 2 : ℤ)

end

end A185782.P15330913865181897000

namespace A185782

/-- `A007401(A061579(n)+2)-(n+2)` -/
def P15330913865181897000.Spec : Prop :=
  ∀ n, P15330913865181897000.a n = A185782 (n + 1)

end A185782

/-! ## A185782.P16037291681826482554

`A025581(A066182(n+1))+A025581(n)`
-/

namespace A185782.P16037291681826482554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A066182 (n + 1)).toNat + A025581 n

end

end A185782.P16037291681826482554

namespace A185782

/-- `A025581(A066182(n+1))+A025581(n)` -/
def P16037291681826482554.Spec : Prop :=
  ∀ n, P16037291681826482554.a n = A185782 (n + 1)

end A185782

/-!
# A185784: Accumulation array of A107985, by antidiagonals.

The programs for A185784, the canonical program `A185784.P9635845519308953103` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185784 has offset 1).

The definition of A185784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185784.P9635845519308953103

`A098358(n)*A133196(n+1)/3`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A185784

/-- `A098358(n)*A133196(n+1)/3` -/
def P9635845519308953103.Spec : Prop :=
  ∀ n, P9635845519308953103.a n = (A185784 (n + 1) : ℚ)

end A185784

/-! ## A185784.P8035712820687118846

`A002264(A098358(n)*A133196(n+1))`
-/

namespace A185784.P8035712820687118846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A098358 n * A133196 (n + 1)).toNat

end

end A185784.P8035712820687118846

namespace A185784

/-- `A002264(A098358(n)*A133196(n+1))` -/
def P8035712820687118846.Spec : Prop :=
  ∀ n, P8035712820687118846.a n = A185784 (n + 1)

end A185784

/-! ## A185784.P7697130526684400213

`abs(A166711(A098358(n)*A133196(n+1)))`
-/

namespace A185784.P7697130526684400213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A166711 (A098358 n * A133196 (n + 1)).toNat|

end

end A185784.P7697130526684400213

namespace A185784

/-- `abs(A166711(A098358(n)*A133196(n+1)))` -/
def P7697130526684400213.Spec : Prop :=
  ∀ n, P7697130526684400213.a n = A185784 (n + 1)

end A185784

/-! ## A185784.P3816340570310530230

`A008611(A098358(n)*A133196(n+1)+1)`
-/

namespace A185784.P3816340570310530230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A098358 n * A133196 (n + 1) + 1).toNat

end

end A185784.P3816340570310530230

namespace A185784

/-- `A008611(A098358(n)*A133196(n+1)+1)` -/
def P3816340570310530230.Spec : Prop :=
  ∀ n, P3816340570310530230.a n = A185784 (n + 1)

end A185784

/-! ## A185784.P7707927131313093586

`A063942(A098358(n)*A133196(n+1)+1)`
-/

namespace A185784.P7707927131313093586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063942 (A098358 n * A133196 (n + 1) + 1).toNat

end

end A185784.P7707927131313093586

namespace A185784

/-- `A063942(A098358(n)*A133196(n+1)+1)` -/
def P7707927131313093586.Spec : Prop :=
  ∀ n, P7707927131313093586.a n = A185784 (n + 1)

end A185784

/-!
# A185785: Second accumulation array of A107985, by antidiagonals.

The programs for A185785, there is no canonical definition to state claims against.
-/

/-! ## A185785.P4027833936690934331

`A198409(A337975(n+1)%A080558(2*n+3))`
-/

namespace A185785.P4027833936690934331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198409 (Int.tmod (A337975 (n + 1)) (A080558 (2 * n + 3))).toNat

end

end A185785.P4027833936690934331

/-!
# A185787: Sum of first k numbers in column k of the natural number array A000027; by antidiagonals.

The programs for A185787, the canonical program `A185787.P13412316179158756890` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185787 has offset 1).

The definition of A185787 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A185787.P13412316179158756890

`(n+1)*(7*(n+1)²-6*(n+1)+5)/6`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A185787

/-- `(n+1)*(7*(n+1)²-6*(n+1)+5)/6` -/
def P13412316179158756890.Spec : Prop :=
  ∀ n, P13412316179158756890.a n = (A185787 (n + 1) : ℚ)

end A185787

/-! ## A185787.P8982784012655338364

`floor(∑[3-∑[a(n-1)-7]])` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A185787.P8982784012655338364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) - 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185787.P8982784012655338364

namespace A185787

/-- `floor(∑[3-∑[a(n-1)-7]])` -/
def P8982784012655338364.Spec : Prop :=
  ∀ n, P8982784012655338364.a n = A185787 (n + 1)

end A185787

/-! ## A185787.P1429098178271312511

`C(n+3, 3)+(2*n+1)*∑[n]`
-/

namespace A185787.P1429098178271312511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 3 + (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A185787.P1429098178271312511

namespace A185787

/-- `C(n+3, 3)+(2*n+1)*∑[n]` -/
def P1429098178271312511.Spec : Prop :=
  ∀ n, (P1429098178271312511.a n : ℤ) = A185787 (n + 1)

end A185787

/-! ## A185787.P4944619510605142911

`∑[∑[n+1]]+lcm(2*n+1, ∑[n])`
-/

namespace A185787.P4944619510605142911
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lcm (2 * n + 1) (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A185787.P4944619510605142911

namespace A185787

/-- `∑[∑[n+1]]+lcm(2*n+1, ∑[n])` -/
def P4944619510605142911.Spec : Prop :=
  ∀ n, (P4944619510605142911.a n : ℤ) = A185787 (n + 1)

end A185787

/-! ## A185787.P95716090874825523

`A245301(n)+1+n`
-/

namespace A185787.P95716090874825523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245301 n + 1 + (n : ℤ)

end

end A185787.P95716090874825523

namespace A185787

/-- `A245301(n)+1+n` -/
def P95716090874825523.Spec : Prop :=
  ∀ n, P95716090874825523.a n = A185787 (n + 1)

end A185787

/-! ## A185787.P14089626650323226411

`A069778(n)+∑[∑[n]]`
-/

namespace A185787.P14089626650323226411
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069778 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A185787.P14089626650323226411

namespace A185787

/-- `A069778(n)+∑[∑[n]]` -/
def P14089626650323226411.Spec : Prop :=
  ∀ n, P14089626650323226411.a n = A185787 (n + 1)

end A185787

/-! ## A185787.P12615554107821092352

`A255211(n)+(n+1)²`
-/

namespace A185787.P12615554107821092352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255211 n + ((n + 1) ^ 2 : ℤ)

end

end A185787.P12615554107821092352

namespace A185787

/-- `A255211(n)+(n+1)²` -/
def P12615554107821092352.Spec : Prop :=
  ∀ n, P12615554107821092352.a n = A185787 (n + 1)

end A185787

/-! ## A185787.P17848856389225054162

`A304993(n)+∑[n+1]`
-/

namespace A185787.P17848856389225054162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304993 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A185787.P17848856389225054162

namespace A185787

/-- `A304993(n)+∑[n+1]` -/
def P17848856389225054162.Spec : Prop :=
  ∀ n, P17848856389225054162.a n = A185787 (n + 1)

end A185787

/-! ## A185787.P17165491271376893721

`A100182(n+1)-∑[n]`
-/

namespace A185787.P17165491271376893721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100182 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A185787.P17165491271376893721

namespace A185787

/-- `A100182(n+1)-∑[n]` -/
def P17165491271376893721.Spec : Prop :=
  ∀ n, P17165491271376893721.a n = A185787 (n + 1)

end A185787

/-! ## A185787.P5026850766596467451

`A255687(n)+∑[1-n]`
-/

namespace A185787.P5026850766596467451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255687 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185787.P5026850766596467451

namespace A185787

/-- `A255687(n)+∑[1-n]` -/
def P5026850766596467451.Spec : Prop :=
  ∀ n, P5026850766596467451.a n = A185787 (n + 1)

end A185787

/-! ## A185787.P2877935782826214257

`∑[A022264(n)]+(n+1)²`
-/

namespace A185787.P2877935782826214257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A185787.P2877935782826214257

namespace A185787

/-- `∑[A022264(n)]+(n+1)²` -/
def P2877935782826214257.Spec : Prop :=
  ∀ n, P2877935782826214257.a n = A185787 (n + 1)

end A185787

/-! ## A185787.P14872955808498483564

`A203552(n+1)+∑[n²]`
-/

namespace A185787.P14872955808498483564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203552 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A185787.P14872955808498483564

namespace A185787

/-- `A203552(n+1)+∑[n²]` -/
def P14872955808498483564.Spec : Prop :=
  ∀ n, P14872955808498483564.a n = A185787 (n + 1)

end A185787

/-! ## A185787.P1427657537794816178

`A100175(n+1)-∑[n²]`
-/

namespace A185787.P1427657537794816178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100175 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A185787.P1427657537794816178

namespace A185787

/-- `A100175(n+1)-∑[n²]` -/
def P1427657537794816178.Spec : Prop :=
  ∀ n, P1427657537794816178.a n = A185787 (n + 1)

end A185787

/-! ## A185787.P959144596512326618

`A100178(n+1)-∑[∑[n]]`
-/

namespace A185787.P959144596512326618
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100178 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A185787.P959144596512326618

namespace A185787

/-- `A100178(n+1)-∑[∑[n]]` -/
def P959144596512326618.Spec : Prop :=
  ∀ n, P959144596512326618.a n = A185787 (n + 1)

end A185787

/-! ## A185787.P12968721793439854927

`∑[A209294(n+1)]-(n+1)²`
-/

namespace A185787.P12968721793439854927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A185787.P12968721793439854927

namespace A185787

/-- `∑[A209294(n+1)]-(n+1)²` -/
def P12968721793439854927.Spec : Prop :=
  ∀ n, P12968721793439854927.a n = A185787 (n + 1)

end A185787

/-! ## A185787.P16875295027043617573

`∑[∑[n+1]]+(2*n+1)*A000217(n)`
-/

namespace A185787.P16875295027043617573
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (2 * n + 1 : ℤ) * A000217 n

end

end A185787.P16875295027043617573

namespace A185787

/-- `∑[∑[n+1]]+(2*n+1)*A000217(n)` -/
def P16875295027043617573.Spec : Prop :=
  ∀ n, P16875295027043617573.a n = A185787 (n + 1)

end A185787

/-! ## A185787.P4338432271157488073

`A005891(n)+A004126(n)`
-/

namespace A185787.P4338432271157488073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n + A004126 n

end

end A185787.P4338432271157488073

namespace A185787

/-- `A005891(n)+A004126(n)` -/
def P4338432271157488073.Spec : Prop :=
  ∀ n, P4338432271157488073.a n = A185787 (n + 1)

end A185787

/-! ## A185787.P4486872091504592386

`A011379(n)+A008778(n)`
-/

namespace A185787.P4486872091504592386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 n + A008778 n

end

end A185787.P4486872091504592386

namespace A185787

/-- `A011379(n)+A008778(n)` -/
def P4486872091504592386.Spec : Prop :=
  ∀ n, P4486872091504592386.a n = A185787 (n + 1)

end A185787

/-! ## A185787.P17156236965677005313

`A016061(n)+A006000(n)`
-/

namespace A185787.P17156236965677005313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016061 n + A006000 n

end

end A185787.P17156236965677005313

namespace A185787

/-- `A016061(n)+A006000(n)` -/
def P17156236965677005313.Spec : Prop :=
  ∀ n, P17156236965677005313.a n = A185787 (n + 1)

end A185787

/-!
# A185788: Sum of the first k-1 numbers in the k-th column of the natural number array A000027, by antidiagonals.

The programs for A185788, the canonical program `A185788.P14364866925544580249` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185788 has offset 1).

The definition of A185788 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A185788.P14364866925544580249

`n*(7*(n+1)²-11*(n+1)+6)/6`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A185788

/-- `n*(7*(n+1)²-11*(n+1)+6)/6` -/
def P14364866925544580249.Spec : Prop :=
  ∀ n, P14364866925544580249.a n = (A185788 (n + 1) : ℚ)

end A185788

/-! ## A185788.P7403727336341416394

`∑[∑[a(n-1)+7]]` with `a(0)=0, a(1)=2, a(2)=8`
-/

namespace A185788.P7403727336341416394
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 8] fun n f2 =>
  f2 (n - 1) + 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185788.P7403727336341416394

namespace A185788

/-- `∑[∑[a(n-1)+7]]` -/
def P7403727336341416394.Spec : Prop :=
  ∀ n, (P7403727336341416394.a n : ℤ) = A185788 (n + 1)

end A185788

/-! ## A185788.P16412038912830183691

`floor(n^3-∑[a(n-1)-n])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A185788.P16412038912830183691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185788.P16412038912830183691

namespace A185788

/-- `floor(n^3-∑[a(n-1)-n])` -/
def P16412038912830183691.Spec : Prop :=
  ∀ n, P16412038912830183691.a n = A185788 (n + 1)

end A185788

/-! ## A185788.P10911815948203475006

`floor(n^3+Δ[C(C(n+1, 2), 2)]/3)`
-/

namespace A185788.P10911815948203475006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (n + 1) 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 3 : ℚ) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 3⌋

end

end A185788.P10911815948203475006

namespace A185788

/-- `floor(n^3+Δ[C(C(n+1, 2), 2)]/3)` -/
def P10911815948203475006.Spec : Prop :=
  ∀ n, P10911815948203475006.a n = A185788 (n + 1)

end A185788

/-! ## A185788.P9453003813172406969

`ceil(n^3+Δ[C(C(n+1, 2), 2)]/3)`
-/

namespace A185788.P9453003813172406969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (n + 1) 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 3 : ℚ) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 3⌉

end

end A185788.P9453003813172406969

namespace A185788

/-- `ceil(n^3+Δ[C(C(n+1, 2), 2)]/3)` -/
def P9453003813172406969.Spec : Prop :=
  ∀ n, P9453003813172406969.a n = A185788 (n + 1)

end A185788

/-! ## A185788.P5591280137769754739

`round(n^3+Δ[C(C(n+1, 2), 2)]/3)`
-/

namespace A185788.P5591280137769754739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (n + 1) 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 3 : ℚ) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 3)

end

end A185788.P5591280137769754739

namespace A185788

/-- `round(n^3+Δ[C(C(n+1, 2), 2)]/3)` -/
def P5591280137769754739.Spec : Prop :=
  ∀ n, P5591280137769754739.a n = A185788 (n + 1)

end A185788

/-! ## A185788.P4851939686095438480

`floor(n^3+(n/2+1)*lcm(n, n+1)/3)`
-/

namespace A185788.P4851939686095438480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 3 : ℚ) + ((n : ℚ) / 2 + 1) * (Nat.lcm n (n + 1) : ℚ) / 3⌋

end

end A185788.P4851939686095438480

namespace A185788

/-- `floor(n^3+(n/2+1)*lcm(n, n+1)/3)` -/
def P4851939686095438480.Spec : Prop :=
  ∀ n, P4851939686095438480.a n = A185788 (n + 1)

end A185788

/-! ## A185788.P962585165507323424

`n^3+A000292(n)`
-/

namespace A185788.P962585165507323424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) + A000292 n

end

end A185788.P962585165507323424

namespace A185788

/-- `n^3+A000292(n)` -/
def P962585165507323424.Spec : Prop :=
  ∀ n, P962585165507323424.a n = A185788 (n + 1)

end A185788

/-! ## A185788.P17103297150717097005

`∑[A004273(n)²-C(n, 2)+n]`
-/

namespace A185788.P17103297150717097005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n ^ 2 - (Nat.choose n 2 : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185788.P17103297150717097005

namespace A185788

/-- `∑[A004273(n)²-C(n, 2)+n]` -/
def P17103297150717097005.Spec : Prop :=
  ∀ n, P17103297150717097005.a n = A185788 (n + 1)

end A185788

/-! ## A185788.P2423745975835094814

`A057813(n)%A005920(n)`
-/

namespace A185788.P2423745975835094814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057813 n) (A005920 n)

end

end A185788.P2423745975835094814

namespace A185788

/-- `A057813(n)%A005920(n)` -/
def P2423745975835094814.Spec : Prop :=
  ∀ n, P2423745975835094814.a n = A185788 (n + 1)

end A185788

/-! ## A185788.P6789943057031389368

`A063495(n+1)%A005906(n)`
-/

namespace A185788.P6789943057031389368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063495 (n + 1)) (A005906 n)

end

end A185788.P6789943057031389368

namespace A185788

/-- `A063495(n+1)%A005906(n)` -/
def P6789943057031389368.Spec : Prop :=
  ∀ n, P6789943057031389368.a n = A185788 (n + 1)

end A185788

/-! ## A185788.P15091338790570221216

`∑[A019430(2*n)+A001106(n)]`
-/

namespace A185788.P15091338790570221216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 (2 * n) + A001106 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185788.P15091338790570221216

namespace A185788

/-- `∑[A019430(2*n)+A001106(n)]` -/
def P15091338790570221216.Spec : Prop :=
  ∀ n, P15091338790570221216.a n = A185788 (n + 1)

end A185788

/-! ## A185788.P8636117472201654792

`A063492(n+1)%A006564(n+1)`
-/

namespace A185788.P8636117472201654792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063492 (n + 1)) (A006564 (n + 1))

end

end A185788.P8636117472201654792

namespace A185788

/-- `A063492(n+1)%A006564(n+1)` -/
def P8636117472201654792.Spec : Prop :=
  ∀ n, P8636117472201654792.a n = A185788 (n + 1)

end A185788

/-! ## A185788.P750528395641199921

`A063490(n+1)%A100182(n+1)`
-/

namespace A185788.P750528395641199921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063490 (n + 1)) (A100182 (n + 1))

end

end A185788.P750528395641199921

namespace A185788

/-- `A063490(n+1)%A100182(n+1)` -/
def P750528395641199921.Spec : Prop :=
  ∀ n, P750528395641199921.a n = A185788 (n + 1)

end A185788

/-! ## A185788.P194216240461850004

`A066804(n+1)%A307621(n+1)`
-/

namespace A185788.P194216240461850004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066804 (n + 1)) (A307621 (n + 1))

end

end A185788.P194216240461850004

namespace A185788

/-- `A066804(n+1)%A307621(n+1)` -/
def P194216240461850004.Spec : Prop :=
  ∀ n, P194216240461850004.a n = A185788 (n + 1)

end A185788

/-! ## A185788.P8702862489862795183

`-(∑[n-(A000217(n+1)+Δ[A007531(n)])]+1)`
-/

namespace A185788.P8702862489862795183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A000217 (n + 1) + (f2 (n + 1) - f2 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185788.P8702862489862795183

namespace A185788

/-- `-(∑[n-(A000217(n+1)+Δ[A007531(n)])]+1)` -/
def P8702862489862795183.Spec : Prop :=
  ∀ n, P8702862489862795183.a n = A185788 (n + 1)

end A185788

/-! ## A185788.P9348598492523990124

`∑[∑[A296515(2*n)+n]]`
-/

namespace A185788.P9348598492523990124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296515 (2 * n) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185788.P9348598492523990124

namespace A185788

/-- `∑[∑[A296515(2*n)+n]]` -/
def P9348598492523990124.Spec : Prop :=
  ∀ n, P9348598492523990124.a n = A185788 (n + 1)

end A185788

/-! ## A185788.P7555953644559750529

`∑[A069099(n+1)-A004277(3*n)]`
-/

namespace A185788.P7555953644559750529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069099 (n + 1) - A004277 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185788.P7555953644559750529

namespace A185788

/-- `∑[A069099(n+1)-A004277(3*n)]` -/
def P7555953644559750529.Spec : Prop :=
  ∀ n, P7555953644559750529.a n = A185788 (n + 1)

end A185788

/-!
# A185789: Number of (n+1)X(n+1) binary arrays with no 2X2 subblock sum equal to any horizontal or vertical neighbor 2X2 subblock sum.

The programs for A185789, there is no canonical definition to state claims against.
-/

/-! ## A185789.P11631373972999022608

`A185798(∑[4*n]+1)`
-/

namespace A185789.P11631373972999022608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185798 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185789.P11631373972999022608

/-! ## A185789.P1366307766927062311

`lcm(2, A185798(A001844(n)))`
-/

namespace A185789.P1366307766927062311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A185798 (A001844 n).toNat)

end

end A185789.P1366307766927062311

/-! ## A185789.P1877562582257373765

`record[A185798(A330613(n+1))]`
-/

namespace A185789.P1877562582257373765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185798 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185789.P1877562582257373765

/-! ## A185789.P15229373705664802905

`record[gcd(A003285(2*n+1), A185798(n+1))]`
-/

namespace A185789.P15229373705664802905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003285 (2 * n + 1)) (A185798 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185789.P15229373705664802905

/-! ## A185789.P8025756604598675232

`A185798(n²+(n+1)²)%A003409(2*n+3)`
-/

namespace A185789.P8025756604598675232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185798 (n ^ 2 + (n + 1) ^ 2)) (A003409 (2 * n + 3))

end

end A185789.P8025756604598675232

/-!
# A185790: Number of (n+1) X 2 binary arrays with no 2 X 2 subblock sum equal to any horizontal or vertical neighbor 2 X 2 subblock sum.

The programs for A185790, there is no canonical definition to state claims against.
-/

/-! ## A185790.P9006171812335272208

`A185798(∑[n]+1)`
-/

namespace A185790.P9006171812335272208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185798 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185790.P9006171812335272208

/-! ## A185790.P1072845124010892394

`lcm(2, A185798(-xor(-1, ∑[n])))`
-/

namespace A185790.P1072845124010892394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A185798 (-Int.xor (-1) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat)

end

end A185790.P1072845124010892394

/-! ## A185790.P12627473327857137513

`record[A185798(A106247(n))]`
-/

namespace A185790.P12627473327857137513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185798 (A106247 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185790.P12627473327857137513

/-! ## A185790.P4179188725709322524

`lcm(2, A185798(A000124(n)))`
-/

namespace A185790.P4179188725709322524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A185798 (A000124 n).toNat)

end

end A185790.P4179188725709322524

/-! ## A185790.P14521374954153426883

`record[A185798(A246276(n+1))]`
-/

namespace A185790.P14521374954153426883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185798 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185790.P14521374954153426883

/-!
# A185791: Number of (n+1) X 3 binary arrays with no 2 X 2 subblock sum equal to any horizontal or vertical neighbor 2 X 2 subblock sum.

The programs for A185791, there is no canonical definition to state claims against.
-/

/-! ## A185791.P12236465338435817341

`A185798(∑[n+1]+2)`
-/

namespace A185791.P12236465338435817341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185798 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A185791.P12236465338435817341

/-! ## A185791.P18164478149914100257

`lcm(2, A185798(A133263(n+1)))`
-/

namespace A185791.P18164478149914100257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A185798 (A133263 (n + 1)).toNat)

end

end A185791.P18164478149914100257

/-! ## A185791.P6345628789017189382

`record[A185798(A106247(n+2)-n)]`
-/

namespace A185791.P6345628789017189382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185798 (A106247 (n + 2) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185791.P6345628789017189382

/-! ## A185791.P7226331480209310631

`record[A010054(n)*A185798(n+2)]`
-/

namespace A185791.P7226331480209310631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A185798 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185791.P7226331480209310631

/-! ## A185791.P497564881338700252

`record[root(A185798(n+2), A059268(n))]`
-/

namespace A185791.P497564881338700252
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A185798 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185791.P497564881338700252

/-!
# A185792: Number of (n+1)X4 binary arrays with no 2X2 subblock sum equal to any horizontal or vertical neighbor 2X2 subblock sum.

The programs for A185792, there is no canonical definition to state claims against.
-/

/-! ## A185792.P6772784589358414769

`A185798(∑[n+2]+4)`
-/

namespace A185792.P6772784589358414769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185798 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A185792.P6772784589358414769

/-! ## A185792.P16568739519636126950

`lcm(2, A185798(A167614(n+1)))`
-/

namespace A185792.P16568739519636126950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A185798 (A167614 (n + 1)).toNat)

end

end A185792.P16568739519636126950

/-! ## A185792.P14703719840038109544

`A185798(A046691(n)+7)+char[25]`
-/

namespace A185792.P14703719840038109544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185798 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A185792.P14703719840038109544

/-! ## A185792.P1859318549341105821

`record[A103452(n)*A185798(n+4)]`
-/

namespace A185792.P1859318549341105821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A185798 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185792.P1859318549341105821

/-! ## A185792.P610998463152786718

`record[A185798(n+4)/A193722(n+1)]`
-/

namespace A185792.P610998463152786718
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185798 (n + 4) : ℚ) / (A193722 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185792.P610998463152786718

/-!
# A185793: Number of (n+1)X5 binary arrays with no 2X2 subblock sum equal to any horizontal or vertical neighbor 2X2 subblock sum.

The programs for A185793, there is no canonical definition to state claims against.
-/

/-! ## A185793.P4338985689177084898

`A185798(∑[n+3]+7)`
-/

namespace A185793.P4338985689177084898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185798 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A185793.P4338985689177084898

/-! ## A185793.P10144235756214530888

`lcm(2, A185798(A167614(n+2)+1))`
-/

namespace A185793.P10144235756214530888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A185798 (A167614 (n + 2) + 1).toNat)

end

end A185793.P10144235756214530888

/-! ## A185793.P777599051892181186

`A185798(A052905(n)+9)+A007814(2*n+3)`
-/

namespace A185793.P777599051892181186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185798 (A052905 n + 9).toNat + A007814 (2 * n + 3)

end

end A185793.P777599051892181186

/-! ## A185793.P133561422486955212

`A007318(C(2, n))*A185798(A167614(n+2)+1)`
-/

namespace A185793.P133561422486955212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A185798 (A167614 (n + 2) + 1).toNat

end

end A185793.P133561422486955212

/-! ## A185793.P8854462820442312908

`A185798(A167614(n+2)+1)%A000045(n+12)²`
-/

namespace A185793.P8854462820442312908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185798 (A167614 (n + 2) + 1).toNat) (A000045 (n + 12) ^ 2)

end

end A185793.P8854462820442312908

/-!
# A185794: Number of (n+1)X6 binary arrays with no 2X2 subblock sum equal to any horizontal or vertical neighbor 2X2 subblock sum.

The programs for A185794, there is no canonical definition to state claims against.
-/

/-! ## A185794.P5503096425451164535

`A185798(∑[n+4]+11)`
-/

namespace A185794.P5503096425451164535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185798 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A185794.P5503096425451164535

/-! ## A185794.P12871524877406227870

`lcm(2, A185798(A167499(n+3)))`
-/

namespace A185794.P12871524877406227870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A185798 (A167499 (n + 3)).toNat)

end

end A185794.P12871524877406227870

/-! ## A185794.P8584149310778442774

`lcm(4, A185798(A000124(n+4)+4))`
-/

namespace A185794.P8584149310778442774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A185798 (A000124 (n + 4) + 4).toNat)

end

end A185794.P8584149310778442774

/-! ## A185794.P17548285348633287000

`A007318(C(2, n))*A185798(A167499(n+3))`
-/

namespace A185794.P17548285348633287000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A185798 (A167499 (n + 3)).toNat

end

end A185794.P17548285348633287000

/-! ## A185794.P8035506275196966548

`A185798(A167499(n+3))+char[A053743(n)+2]`
-/

namespace A185794.P8035506275196966548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185798 (A167499 (n + 3)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A185794.P8035506275196966548

/-!
# A185795: Number of (n+1)X7 binary arrays with no 2X2 subblock sum equal to any horizontal or vertical neighbor 2X2 subblock sum.

The programs for A185795, there is no canonical definition to state claims against.
-/

/-! ## A185795.P6102833014818027933

`A185798(A374007(n+1))`
-/

namespace A185795.P6102833014818027933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185798 (A374007 (n + 1)).toNat

end

end A185795.P6102833014818027933

/-! ## A185795.P4343001907530344639

`A185798(A166136(n+4))`
-/

namespace A185795.P4343001907530344639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185798 (A166136 (n + 4)).toNat

end

end A185795.P4343001907530344639

/-! ## A185795.P4009514664301977963

`A185798(A167499(n+4)+1)`
-/

namespace A185795.P4009514664301977963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185798 (A167499 (n + 4) + 1).toNat

end

end A185795.P4009514664301977963

/-! ## A185795.P9696571738059248390

`A185798(A000124(n+5)+5)`
-/

namespace A185795.P9696571738059248390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185798 (A000124 (n + 5) + 5).toNat

end

end A185795.P9696571738059248390

/-! ## A185795.P1411137974307644111

`A185798(A000096(n+4)+7)`
-/

namespace A185795.P1411137974307644111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185798 (A000096 (n + 4) + 7).toNat

end

end A185795.P1411137974307644111

/-!
# A185796: Number of (n+1)X8 binary arrays with no 2X2 subblock sum equal to any horizontal or vertical neighbor 2X2 subblock sum.

The programs for A185796, there is no canonical definition to state claims against.
-/

/-! ## A185796.P16402521769974822849

`A185798(A374008(n+1))`
-/

namespace A185796.P16402521769974822849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185798 (A374008 (n + 1)).toNat

end

end A185796.P16402521769974822849

/-! ## A185796.P6273445308819243622

`A185798(A167487(n+5))`
-/

namespace A185796.P6273445308819243622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185798 (A167487 (n + 5)).toNat

end

end A185796.P6273445308819243622

/-! ## A185796.P6927065618775521333

`A185798(A056119(n)+28)`
-/

namespace A185796.P6927065618775521333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185798 (A056119 n + 28).toNat

end

end A185796.P6927065618775521333

/-! ## A185796.P12855317937177991184

`A185798(A167499(n+5)+2)`
-/

namespace A185796.P12855317937177991184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185798 (A167499 (n + 5) + 2).toNat

end

end A185796.P12855317937177991184

/-! ## A185796.P7492926398176534254

`A185798(A167614(n+5)+4)`
-/

namespace A185796.P7492926398176534254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185798 (A167614 (n + 5) + 4).toNat

end

end A185796.P7492926398176534254

/-!
# A185797: Number of (n+1) X 9 binary arrays with no 2 X 2 subblock sum equal to any horizontal or vertical neighbor 2 X 2 subblock sum.

The programs for A185797, there is no canonical definition to state claims against.
-/

/-! ## A185797.P9326511424444674678

`A185798(A374009(n+1))`
-/

namespace A185797.P9326511424444674678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185798 (A374009 (n + 1)).toNat

end

end A185797.P9326511424444674678

/-! ## A185797.P1849837091900357881

`A185798(eq[13, A066657(n)])`
-/

namespace A185797.P1849837091900357881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185798 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185797.P1849837091900357881

/-! ## A185797.P1046436311335557200

`A185798(A167499(n+6)+3)`
-/

namespace A185797.P1046436311335557200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185798 (A167499 (n + 6) + 3).toNat

end

end A185797.P1046436311335557200

/-! ## A185797.P16048898476617096968

`A185798(A000124(n+7)+7)`
-/

namespace A185797.P16048898476617096968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185798 (A000124 (n + 7) + 7).toNat

end

end A185797.P16048898476617096968

/-! ## A185797.P189565386747199009

`A185798(A000096(n+6)+9)`
-/

namespace A185797.P189565386747199009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185798 (A000096 (n + 6) + 9).toNat

end

end A185797.P189565386747199009

/-!
# A185799: Number of (n+1) X 2 0..3 arrays with every 2 X 2 subblock trace equal to some horizontal or vertical neighbor 2 X 2 subblock trace.

The programs for A185799, there is no canonical definition to state claims against.
-/

/-! ## A185799.P15444199152478424162

`A185807(∑[n]+1)`
-/

namespace A185799.P15444199152478424162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185807 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185799.P15444199152478424162

/-! ## A185799.P17676734722440351231

`A186923(∑[n]+1)`
-/

namespace A185799.P17676734722440351231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186923 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185799.P17676734722440351231

/-! ## A185799.P5753841457326569184

`lcm(2, A185807(A000124(n)))`
-/

namespace A185799.P5753841457326569184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A185807 (A000124 n).toNat)

end

end A185799.P5753841457326569184

/-! ## A185799.P14006907887627230567

`record[gcd(A002262(n), A185807(n+1))]`
-/

namespace A185799.P14006907887627230567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A185807 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185799.P14006907887627230567

/-! ## A185799.P11432599877580461938

`record[(1-A004247(n))*A185807(n+1)]`
-/

namespace A185799.P11432599877580461938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A004247 n) * A185807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185799.P11432599877580461938

