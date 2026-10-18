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
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
# A094904: Least hypotenuse of primitive Pythagorean triangles exceeding a leg by A096033(n).

The programs for A094904, there is no canonical definition to state claims against.
-/

/-! ## A094904.P1564510081001356865

`A271509(A271519(n+2)*A285676(n+1))`
-/

namespace A094904.P1564510081001356865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271509 (A271519 (n + 2) * A285676 (n + 1)).toNat

end

end A094904.P1564510081001356865

/-!
# A094906: Numbers m such that m^3-k^3 is a square for some k

The programs for A094906, there is no canonical definition to state claims against.
-/

/-! ## A094906.P8830642409616500448

`∪[(n+1)², A228946(n+1)]`
-/

namespace A094906.P8830642409616500448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A094906.P8830642409616500448

/-! ## A094906.P3191964977350476592

`A243176(lt[A243146(n+5), A112852(3*(n+1))])`
-/

namespace A094906.P3191964977350476592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243146 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112852 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243176 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A094906.P3191964977350476592

/-!
# A094907: Number of different nontrivial two-digit cancellations of the form (xy)/(zx) = y/z in base n.

The programs for A094907, there is no canonical definition to state claims against.
-/

/-! ## A094907.P16636927417901700031

`and(A025773(n), A039696(A022103(n)))`
-/

namespace A094907.P16636927417901700031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025773 n) (A039696 (A022103 n).toNat)

end

end A094907.P16636927417901700031

/-! ## A094907.P8021783700253517774

`and(A039696(A022103(n)), A046667(n+2))`
-/

namespace A094907.P8021783700253517774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A039696 (A022103 n).toNat) (A046667 (n + 2))

end

end A094907.P8021783700253517774

/-! ## A094907.P7360197334056627185

`and(A007425(A136657(n)), A046667(n+2))`
-/

namespace A094907.P7360197334056627185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007425 (A136657 n).toNat) (A046667 (n + 2))

end

end A094907.P7360197334056627185

/-! ## A094907.P9937718580793859924

`and(A004526(n), A004526(A246119(n)))`
-/

namespace A094907.P9937718580793859924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004526 n) (A004526 (A246119 n).toNat)

end

end A094907.P9937718580793859924

/-! ## A094907.P4977056682422404202

`and(A004526(n), A120982(A044917(n+1)))`
-/

namespace A094907.P4977056682422404202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004526 n) (A120982 (A044917 (n + 1)).toNat)

end

end A094907.P4977056682422404202

/-!
# A094909: Let p_k(n) = number of partitions of n into exactly k parts; sequence gives p_3(n-3) + p_2(n-2) + 1.

The programs for A094909, the canonical program `A094909.P6951824857078023041` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094909 has offset 0).

The definition of A094909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094909.P6951824857078023041

`floor(a(n-2)+n/3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094909

/-- `floor(a(n-2)+n/3)` -/
def P6951824857078023041.Spec : Prop :=
  ∀ n, P6951824857078023041.a n = A094909 n

theorem P6951824857078023041.correct : P6951824857078023041.Spec := by
  intro n
  simp only [A094909]

end A094909

/-! ## A094909.P13914425193945384420

`∑[floor(n/3-a(n-1))]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A094909.P13914425193945384420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0] fun n f1 =>
  ⌊(n : ℚ) / 3 - (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094909.P13914425193945384420

namespace A094909

/-- `∑[floor(n/3-a(n-1))]` -/
def P13914425193945384420.Spec : Prop :=
  ∀ n, P13914425193945384420.a n = A094909 n

end A094909

/-! ## A094909.P6942233299530487166

`a(n-2)+ceil((n-2)/3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A094909.P6942233299530487166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  a (n - 2) + ⌈((n : ℤ) - 2 : ℚ) / 3⌉

end

end A094909.P6942233299530487166

namespace A094909

/-- `a(n-2)+ceil((n-2)/3)` -/
def P6942233299530487166.Spec : Prop :=
  ∀ n, P6942233299530487166.a n = A094909 n

end A094909

/-! ## A094909.P14510606875301505664

`A069905(n)+char[comp[2*n+3]]`
-/

namespace A094909.P14510606875301505664
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A094909.P14510606875301505664

namespace A094909

/-- `A069905(n)+char[comp[2*n+3]]` -/
def P14510606875301505664.Spec : Prop :=
  ∀ n, P14510606875301505664.a n = A094909 n

end A094909

/-! ## A094909.P13245137063547049165

`A266591(n)+A069905(n)`
-/

namespace A094909.P13245137063547049165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266591 n + A069905 n

end

end A094909.P13245137063547049165

namespace A094909

/-- `A266591(n)+A069905(n)` -/
def P13245137063547049165.Spec : Prop :=
  ∀ n, P13245137063547049165.a n = A094909 n

end A094909

/-! ## A094909.P14167289499207982967

`A211540(n+2)+char[A004275(n)]`
-/

namespace A094909.P14167289499207982967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 (n + 2) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A094909.P14167289499207982967

namespace A094909

/-- `A211540(n+2)+char[A004275(n)]` -/
def P14167289499207982967.Spec : Prop :=
  ∀ n, P14167289499207982967.a n = A094909 n

end A094909

/-! ## A094909.P4287761610216898475

`A065033(A008749(n)-1)`
-/

namespace A094909.P4287761610216898475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A008749 n - 1).toNat

end

end A094909.P4287761610216898475

namespace A094909

/-- `A065033(A008749(n)-1)` -/
def P4287761610216898475.Spec : Prop :=
  ∀ n, P4287761610216898475.a n = A094909 n

end A094909

/-! ## A094909.P1133996623897890534

`A065033(2*(A001399(n)-A065033(n)))`
-/

namespace A094909.P1133996623897890534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * (A001399 n - A065033 n)).toNat

end

end A094909.P1133996623897890534

namespace A094909

/-- `A065033(2*(A001399(n)-A065033(n)))` -/
def P1133996623897890534.Spec : Prop :=
  ∀ n, P1133996623897890534.a n = A094909 n

end A094909

/-! ## A094909.P7175573080924350577

`A008620(A329451(n+1))`
-/

namespace A094909.P7175573080924350577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A329451 (n + 1)).toNat

end

end A094909.P7175573080924350577

namespace A094909

/-- `A008620(A329451(n+1))` -/
def P7175573080924350577.Spec : Prop :=
  ∀ n, P7175573080924350577.a n = A094909 n

end A094909

/-! ## A094909.P8213907972641788376

`A065033(A103221(n²))`
-/

namespace A094909.P8213907972641788376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A103221 (n ^ 2)).toNat

end

end A094909.P8213907972641788376

namespace A094909

/-- `A065033(A103221(n²))` -/
def P8213907972641788376.Spec : Prop :=
  ∀ n, P8213907972641788376.a n = A094909 n

end A094909

/-! ## A094909.P6485084763274803451

`A065033(A065033(A008611(n²)))`
-/

namespace A094909.P6485084763274803451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A065033 (A008611 (n ^ 2)).toNat).toNat

end

end A094909.P6485084763274803451

namespace A094909

/-- `A065033(A065033(A008611(n²)))` -/
def P6485084763274803451.Spec : Prop :=
  ∀ n, P6485084763274803451.a n = A094909 n

end A094909

/-! ## A094909.P1429147042525158286

`A008647((char[1]+n)²)`
-/

namespace A094909.P1429147042525158286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (((if ∃ j, f1 j = n then 1 else 0) + n) ^ 2)

end

end A094909.P1429147042525158286

namespace A094909

/-- `A008647((char[1]+n)²)` -/
def P1429147042525158286.Spec : Prop :=
  ∀ n, P1429147042525158286.a n = A094909 n

end A094909

/-! ## A094909.P2712574810479936140

`A008679((char[1]+n)²)`
-/

namespace A094909.P2712574810479936140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (((if ∃ j, f1 j = n then 1 else 0) + n) ^ 2)

end

end A094909.P2712574810479936140

namespace A094909

/-- `A008679((char[1]+n)²)` -/
def P2712574810479936140.Spec : Prop :=
  ∀ n, P2712574810479936140.a n = A094909 n

end A094909

/-! ## A094909.P4941519314869451237

`A081753(A098748(n))`
-/

namespace A094909.P4941519314869451237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A098748 n).toNat

end

end A094909.P4941519314869451237

namespace A094909

/-- `A081753(A098748(n))` -/
def P4941519314869451237.Spec : Prop :=
  ∀ n, P4941519314869451237.a n = A094909 n

end A094909

/-! ## A094909.P1064082313092276156

`A065033(A008612(n²))`
-/

namespace A094909.P1064082313092276156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A008612 (n ^ 2)).toNat

end

end A094909.P1064082313092276156

namespace A094909

/-- `A065033(A008612(n²))` -/
def P1064082313092276156.Spec : Prop :=
  ∀ n, P1064082313092276156.a n = A094909 n

end A094909

/-! ## A094909.P9309996425711869377

`A103221(A227542(n²))`
-/

namespace A094909.P9309996425711869377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A227542 (n ^ 2)).toNat

end

end A094909.P9309996425711869377

namespace A094909

/-- `A103221(A227542(n²))` -/
def P9309996425711869377.Spec : Prop :=
  ∀ n, P9309996425711869377.a n = A094909 n

end A094909

/-! ## A094909.P4442621711033893539

`A081753(A098749(n+1))`
-/

namespace A094909.P4442621711033893539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A098749 (n + 1)).toNat

end

end A094909.P4442621711033893539

namespace A094909

/-- `A081753(A098749(n+1))` -/
def P4442621711033893539.Spec : Prop :=
  ∀ n, P4442621711033893539.a n = A094909 n

end A094909

/-! ## A094909.P199020234394200325

`A008615(A018837(n²)+2)`
-/

namespace A094909.P199020234394200325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A018837 (n ^ 2) + 2).toNat

end

end A094909.P199020234394200325

namespace A094909

/-- `A008615(A018837(n²)+2)` -/
def P199020234394200325.Spec : Prop :=
  ∀ n, P199020234394200325.a n = A094909 n

end A094909

/-! ## A094909.P11030533139970033659

`A065033(A008615(n²+2))`
-/

namespace A094909.P11030533139970033659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A008615 (n ^ 2 + 2)).toNat

end

end A094909.P11030533139970033659

namespace A094909

/-- `A065033(A008615(n²+2))` -/
def P11030533139970033659.Spec : Prop :=
  ∀ n, P11030533139970033659.a n = A094909 n

end A094909

/-!
# A094912: Output from a certain finite automaton when fed binary representation of n read from right to left.

The programs for A094912, there is no canonical definition to state claims against.
-/

/-! ## A094912.P5951565675133691107

`A124568(A229763(n))%A337375(n)`
-/

namespace A094912.P5951565675133691107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124568 (A229763 n).toNat) (A337375 n)

end

end A094912.P5951565675133691107

/-! ## A094912.P14371319759258771392

`val(A308558(A247649(n)), 3)`
-/

namespace A094912.P14371319759258771392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A308558 (A247649 n).toNat).toNat 3

end

end A094912.P14371319759258771392

/-! ## A094912.P16239519649475920141

`val(A100280(A247650(n)), 5)`
-/

namespace A094912.P16239519649475920141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A100280 (A247650 n).toNat).toNat 5

end

end A094912.P16239519649475920141

/-! ## A094912.P16866746436776043947

`A039966(A001172(3*A247649(n)))`
-/

namespace A094912.P16866746436776043947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 (A001172 (3 * A247649 n).toNat).toNat

end

end A094912.P16866746436776043947

/-! ## A094912.P3817602887891337494

`A379475(A154577(n+1)-A030101(n))`
-/

namespace A094912.P3817602887891337494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379475 (A154577 (n + 1) - A030101 n).toNat

end

end A094912.P3817602887891337494

/-!
# A094913: Maximal number of distinct nonempty substrings of any binary string of length n.

The programs for A094913, there is no canonical definition to state claims against.
-/

/-! ## A094913.P7352524225778219120

`∑[ceil(∑[n/or(2, n+1)])]`
-/

namespace A094913.P7352524225778219120
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.lor 2 (n + 1) : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094913.P7352524225778219120

/-! ## A094913.P3903222158505851699

`∑[n-floor(log2(a(n-1)))]` with `a(0)=0, a(1)=1`
-/

namespace A094913.P3903222158505851699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (n : ℤ) - (Nat.log 2 (f1 (n - 1)).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094913.P3903222158505851699

/-! ## A094913.P14337224207438946965

`∑[ceil(n-log2(a(n-1)))]` with `a(0)=0, a(1)=1`
-/

namespace A094913.P14337224207438946965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ⌈(n : ℝ) - Real.logb 2 (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094913.P14337224207438946965

/-! ## A094913.P4202404805564212408

`∑[∑[char[comp[2^n+n]]]]-1`
-/

namespace A094913.P4202404805564212408
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A094913.P4202404805564212408

/-! ## A094913.P3749030723646325399

`∑[∑[char[comp[2^n+n]]]%(n+1)]`
-/

namespace A094913.P3749030723646325399
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094913.P3749030723646325399

/-!
# A094915: Omit the 1's from A090822.

The programs for A094915, there is no canonical definition to state claims against.
-/

/-! ## A094915.P14757039068762156741

`p?[Δ[A091413(n)]]`
-/

namespace A094915.P14757039068762156741
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091413 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094915.P14757039068762156741

/-! ## A094915.P15950133981026223393

`p?[A090822(n+1)]`
-/

namespace A094915.P15950133981026223393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094915.P15950133981026223393

/-! ## A094915.P12075453016246531356

`p?[dr(A090822(n-log2(1/2)))]`
-/

namespace A094915.P12075453016246531356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A090822 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A094915.P12075453016246531356

/-! ## A094915.P14166968253859622934

`p?[A090822(abs(xor(n, -1)))%4]`
-/

namespace A094915.P14166968253859622934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090822 |Int.xor (n : ℤ) (-1)|.toNat) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094915.P14166968253859622934

/-! ## A094915.P4433532067893850149

`dr(p?[A090822(A028310(n))])`
-/

namespace A094915.P4433532067893850149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A094915.P4433532067893850149

/-! ## A094915.P16476025284037495280

`dr(p?[A090822(A110514(2*n))])`
-/

namespace A094915.P16476025284037495280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (A110514 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A094915.P16476025284037495280

/-! ## A094915.P18383851014250217225

`p?[A090822(A123108(2*n))%4]`
-/

namespace A094915.P18383851014250217225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090822 (A123108 (2 * n)).toNat) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094915.P18383851014250217225

/-! ## A094915.P15769253530326786556

`A090822(lt[1, A090822(n+1)]+1)`
-/

namespace A094915.P15769253530326786556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A094915.P15769253530326786556

/-! ## A094915.P301844634749511195

`p?[A000005(a(A090822(n)))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=6`
-/

namespace A094915.P301844634749511195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4, 6] fun n f1 =>
  A000005 (f1 (A090822 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094915.P301844634749511195

/-! ## A094915.P5070437714608708993

`p?[and(3, A090822(A008486(n)-2*n))]`
-/

namespace A094915.P5070437714608708993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A090822 (A008486 n - (2 * n : ℤ)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094915.P5070437714608708993

/-!
# A094917: Contract every run of consecutive identical terms in A090822 to a single term.

The programs for A094917, there is no canonical definition to state claims against.
-/

/-! ## A094917.P10055059017820691231

`A090822(∑[A091412(n+1)])`
-/

namespace A094917.P10055059017820691231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A094917.P10055059017820691231

/-! ## A094917.P760117039918972272

`A090822(∑[A161223(n+87)])`
-/

namespace A094917.P760117039918972272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161223 (n + 87)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A094917.P760117039918972272

/-! ## A094917.P16616990392432253961

`gcd(6, A093955(∑[A091412(n+1)])+1)`
-/

namespace A094917.P16616990392432253961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091412 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A093955 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1)

end

end A094917.P16616990392432253961

/-! ## A094917.P14866673346736927587

`A093955(∑[A091412(abs(1-n)+1)])+1`
-/

namespace A094917.P14866673346736927587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091412 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093955 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A094917.P14866673346736927587

/-!
# A094918: a(n) = (3^n-1)/2 mod n.

The programs for A094918, there is no canonical definition to state claims against.
-/

/-! ## A094918.P2321872124509700978

`floor(A082511(n+1)/2)`
-/

namespace A094918.P2321872124509700978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A082511 (n + 1) : ℚ) / 2⌋

end

end A094918.P2321872124509700978

/-! ## A094918.P5587308827455346715

`A004524(A082511(n+1))`
-/

namespace A094918.P5587308827455346715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A082511 (n + 1)).toNat

end

end A094918.P5587308827455346715

/-! ## A094918.P1193969062346572106

`A008624(2*A082511(n+1)-1)`
-/

namespace A094918.P1193969062346572106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (2 * A082511 (n + 1) - 1).toNat

end

end A094918.P1193969062346572106

/-! ## A094918.P12698322361660810279

`A008624(A082511(n+1)+A082511(n+1)-1)`
-/

namespace A094918.P12698322361660810279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A082511 (n + 1) + (A082511 (n + 1) - 1)).toNat

end

end A094918.P12698322361660810279

/-! ## A094918.P3774204452506572986

`A082511(n+1)%A008624(2*A082511(n+1))`
-/

namespace A094918.P3774204452506572986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082511 (n + 1)) (A008624 (2 * A082511 (n + 1)).toNat)

end

end A094918.P3774204452506572986

/-! ## A094918.P6454969651552174151

`∑[3^n]%(n+1)`
-/

namespace A094918.P6454969651552174151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)

end

end A094918.P6454969651552174151

/-! ## A094918.P8899293808261799454

`((3^(n+1))%(2*(n+1))-1)/2`
-/

namespace A094918.P8899293808261799454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((3 ^ (n + 1) % (2 * (n + 1)) : ℕ) : ℤ) - 1 : ℚ) / 2

end

end A094918.P8899293808261799454

/-! ## A094918.P1817071618867112789

`A024023(n+1)%(2*(n+1))/2`
-/

namespace A094918.P1817071618867112789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A024023 (n + 1)) (2 * (n + 1) : ℤ) : ℚ) / 2

end

end A094918.P1817071618867112789

/-!
# A094919: a(n) = (4^n-1)/3 mod n.

The programs for A094919, the canonical program `A094919.P9594001368194154322` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094919 has offset 1).

The definition of A094919 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094919.P9594001368194154322

`((4^(n+1)-1)/3)%(n+1)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094919

/-- `((4^(n+1)-1)/3)%(n+1)` -/
def P9594001368194154322.Spec : Prop :=
  ∀ n, P9594001368194154322.a n = A094919 (n + 1)

theorem P9594001368194154322.correct : P9594001368194154322.Spec := by
  intro n
  simp only [A094919, Nat.add_sub_cancel]

end A094919

/-! ## A094919.P7105180491950128700

`abs(abs(∑[A000079(n)²]%(n+1)-n)-n)`
-/

namespace A094919.P7105180491950128700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ) - (n : ℤ)| - (n : ℤ))|

end

end A094919.P7105180491950128700

namespace A094919

/-- `abs(abs(∑[A000079(n)²]%(n+1)-n)-n)` -/
def P7105180491950128700.Spec : Prop :=
  ∀ n, P7105180491950128700.a n = A094919 (n + 1)

end A094919

/-! ## A094919.P2564888098722452936

`abs(abs(∑[A000079(2*n)]%(n+1)-n)-n)`
-/

namespace A094919.P2564888098722452936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ) - (n : ℤ)| - (n : ℤ))|

end

end A094919.P2564888098722452936

namespace A094919

/-- `abs(abs(∑[A000079(2*n)]%(n+1)-n)-n)` -/
def P2564888098722452936.Spec : Prop :=
  ∀ n, P2564888098722452936.a n = A094919 (n + 1)

end A094919

/-! ## A094919.P8905137379283762456

`abs(A078904(n)%A001478(n+1))`
-/

namespace A094919.P8905137379283762456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A078904 n) (A001478 (n + 1))|

end

end A094919.P8905137379283762456

namespace A094919

/-- `abs(A078904(n)%A001478(n+1))` -/
def P8905137379283762456.Spec : Prop :=
  ∀ n, P8905137379283762456.a n = A094919 (n + 1)

end A094919

/-! ## A094919.P688594465460056972

`A106620(∑[A000225(2*n)]%(n+1))`
-/

namespace A094919.P688594465460056972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106620 (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)).toNat

end

end A094919.P688594465460056972

namespace A094919

/-- `A106620(∑[A000225(2*n)]%(n+1))` -/
def P688594465460056972.Spec : Prop :=
  ∀ n, P688594465460056972.a n = A094919 (n + 1)

end A094919

/-! ## A094919.P17985778391226432358

`A000975(2*n+1)%(n+1)*and(1, A108898(n))`
-/

namespace A094919.P17985778391226432358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000975 (2 * n + 1)) (n + 1 : ℤ) * Int.land 1 (A108898 n)

end

end A094919.P17985778391226432358

namespace A094919

/-- `A000975(2*n+1)%(n+1)*and(1, A108898(n))` -/
def P17985778391226432358.Spec : Prop :=
  ∀ n, P17985778391226432358.a n = A094919 (n + 1)

end A094919

/-!
# A094920: a(n) = (5^n-1)/4 mod n.

The programs for A094920, the canonical program `A094920.P9828505789807196038` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094920 has offset 1).

The definition of A094920 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094920.P9828505789807196038

`∑[5^n]%(n+1)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094920

/-- `∑[5^n]%(n+1)` -/
def P9828505789807196038.Spec : Prop :=
  ∀ n, (P9828505789807196038.a n : ℤ) = A094920 (n + 1)

theorem P9828505789807196038.correct : P9828505789807196038.Spec := by
  intro n
  simp only [A094920, Nat.add_sub_cancel]

end A094920

/-! ## A094920.P15600797451017194071

`abs(∑[5*a(n-1)]%(n+1))` with `a(0)=1`
-/

namespace A094920.P15600797451017194071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)

end

end A094920.P15600797451017194071

namespace A094920

/-- `abs(∑[5*a(n-1)]%(n+1))` -/
def P15600797451017194071.Spec : Prop :=
  ∀ n, (P15600797451017194071.a n : ℤ) = A094920 (n + 1)

end A094920

/-! ## A094920.P6908407626439315803

`abs(-A003463(n+1)%(n+1))`
-/

namespace A094920.P6908407626439315803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (-A003463 (n + 1)) (n + 1 : ℤ)|

end

end A094920.P6908407626439315803

namespace A094920

/-- `abs(-A003463(n+1)%(n+1))` -/
def P6908407626439315803.Spec : Prop :=
  ∀ n, P6908407626439315803.a n = A094920 (n + 1)

end A094920

/-! ## A094920.P13444203074616692153

`abs(A003463(n+1)%A001478(n+1))`
-/

namespace A094920.P13444203074616692153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A003463 (n + 1)) (A001478 (n + 1))|

end

end A094920.P13444203074616692153

namespace A094920

/-- `abs(A003463(n+1)%A001478(n+1))` -/
def P13444203074616692153.Spec : Prop :=
  ∀ n, P13444203074616692153.a n = A094920 (n + 1)

end A094920

/-! ## A094920.P6784631967971456738

`A001281(∑[A020729(n)]%(2*(n+1)))`
-/

namespace A094920.P6784631967971456738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (2 * (n + 1) : ℤ)).toNat

end

end A094920.P6784631967971456738

namespace A094920

/-- `A001281(∑[A020729(n)]%(2*(n+1)))` -/
def P6784631967971456738.Spec : Prop :=
  ∀ n, P6784631967971456738.a n = A094920 (n + 1)

end A094920

/-! ## A094920.P15182846130028563735

`A004526(A034478(n+1)%(2*(n+1)))`
-/

namespace A094920.P15182846130028563735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.tmod (A034478 (n + 1)) (2 * (n + 1) : ℤ)).toNat

end

end A094920.P15182846130028563735

namespace A094920

/-- `A004526(A034478(n+1)%(2*(n+1)))` -/
def P15182846130028563735.Spec : Prop :=
  ∀ n, P15182846130028563735.a n = A094920 (n + 1)

end A094920

/-! ## A094920.P17584278285211740868

`A004526(A294566(2*n+3)%A004277(n+1))`
-/

namespace A094920.P17584278285211740868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.tmod (A294566 (2 * n + 3)) (A004277 (n + 1))).toNat

end

end A094920.P17584278285211740868

namespace A094920

/-- `A004526(A294566(2*n+3)%A004277(n+1))` -/
def P17584278285211740868.Spec : Prop :=
  ∀ n, P17584278285211740868.a n = A094920 (n + 1)

end A094920

/-! ## A094920.P12811586233320991029

`A118759(A003463(n+1)%(n+1))`
-/

namespace A094920.P12811586233320991029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.tmod (A003463 (n + 1)) (n + 1 : ℤ)).toNat

end

end A094920.P12811586233320991029

namespace A094920

/-- `A118759(A003463(n+1)%(n+1))` -/
def P12811586233320991029.Spec : Prop :=
  ∀ n, P12811586233320991029.a n = A094920 (n + 1)

end A094920

/-!
# A094921: a(n) = (6^n-1)/5 mod n.

The programs for A094921, the canonical program `A094921.P1161014482621633733` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094921 has offset 1).

The definition of A094921 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094921.P1161014482621633733

`((6^(n+1)-1)/5)%(n+1)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094921

/-- `((6^(n+1)-1)/5)%(n+1)` -/
def P1161014482621633733.Spec : Prop :=
  ∀ n, P1161014482621633733.a n = A094921 (n + 1)

theorem P1161014482621633733.correct : P1161014482621633733.Spec := by
  intro n
  simp only [A094921, Nat.add_sub_cancel]

end A094921

/-! ## A094921.P12944204110540103939

`abs(∑[6*a(n-1)]%(n+1))` with `a(0)=1`
-/

namespace A094921.P12944204110540103939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)

end

end A094921.P12944204110540103939

namespace A094921

/-- `abs(∑[6*a(n-1)]%(n+1))` -/
def P12944204110540103939.Spec : Prop :=
  ∀ n, (P12944204110540103939.a n : ℤ) = A094921 (n + 1)

end A094921

/-! ## A094921.P15353283368991382389

`--∑[6^n]%A029579(2*n)`
-/

namespace A094921.P15353283368991382389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) (A029579 (2 * n))

end

end A094921.P15353283368991382389

namespace A094921

/-- `--∑[6^n]%A029579(2*n)` -/
def P15353283368991382389.Spec : Prop :=
  ∀ n, P15353283368991382389.a n = A094921 (n + 1)

end A094921

/-! ## A094921.P18420102606808415848

`A026741(A005610(n+1)%(2*(n+1)))`
-/

namespace A094921.P18420102606808415848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.tmod (A005610 (n + 1)) (2 * (n + 1) : ℤ)).toNat

end

end A094921.P18420102606808415848

namespace A094921

/-- `A026741(A005610(n+1)%(2*(n+1)))` -/
def P18420102606808415848.Spec : Prop :=
  ∀ n, P18420102606808415848.a n = A094921 (n + 1)

end A094921

/-! ## A094921.P5054868626762760740

`A025480(∑[2*6^n]%Δ[A027689(n)])`
-/

namespace A094921.P5054868626762760740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 6 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (f2 (n + 1) - f2 n)).toNat

end

end A094921.P5054868626762760740

namespace A094921

/-- `A025480(∑[2*6^n]%Δ[A027689(n)])` -/
def P5054868626762760740.Spec : Prop :=
  ∀ n, P5054868626762760740.a n = A094921 (n + 1)

end A094921

/-!
# A094922: a(n) = (7^n-1)/6 mod n.

The programs for A094922, the canonical program `A094922.P11325884610491361463` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094922 has offset 1).

The definition of A094922 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094922.P11325884610491361463

`((7^(n+1)-1)/6)%(n+1)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094922

/-- `((7^(n+1)-1)/6)%(n+1)` -/
def P11325884610491361463.Spec : Prop :=
  ∀ n, P11325884610491361463.a n = A094922 (n + 1)

theorem P11325884610491361463.correct : P11325884610491361463.Spec := by
  intro n
  simp only [A094922, Nat.add_sub_cancel]

end A094922

/-! ## A094922.P11534191937580309217

`--A023000(n+1)%(n+1)`
-/

namespace A094922.P11534191937580309217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-A023000 (n + 1)) (n + 1 : ℤ)

end

end A094922.P11534191937580309217

namespace A094922

/-- `--A023000(n+1)%(n+1)` -/
def P11534191937580309217.Spec : Prop :=
  ∀ n, P11534191937580309217.a n = A094922 (n + 1)

end A094922

/-! ## A094922.P8263954472314416202

`abs((A104896(n)+1)%(Δ[n²]-n))`
-/

namespace A094922.P8263954472314416202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A104896 n + 1) ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ))|

end

end A094922.P8263954472314416202

namespace A094922

/-- `abs((A104896(n)+1)%(Δ[n²]-n))` -/
def P8263954472314416202.Spec : Prop :=
  ∀ n, P8263954472314416202.a n = A094922 (n + 1)

end A094922

/-! ## A094922.P4055319388543847499

`A118759(∑[A000420(n)]%(n+1))`
-/

namespace A094922.P4055319388543847499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)).toNat

end

end A094922.P4055319388543847499

namespace A094922

/-- `A118759(∑[A000420(n)]%(n+1))` -/
def P4055319388543847499.Spec : Prop :=
  ∀ n, P4055319388543847499.a n = A094922 (n + 1)

end A094922

/-! ## A094922.P4460620218792895443

`A118759(∑[A024075(n)]%(n+1))`
-/

namespace A094922.P4460620218792895443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)).toNat

end

end A094922.P4460620218792895443

namespace A094922

/-- `A118759(∑[A024075(n)]%(n+1))` -/
def P4460620218792895443.Spec : Prop :=
  ∀ n, P4460620218792895443.a n = A094922 (n + 1)

end A094922

/-!
# A094923: (8^n-1)/7 mod n.

The programs for A094923, the canonical program `A094923.P7080836148691660966` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094923 has offset 1).

The definition of A094923 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094923.P7080836148691660966

`∑[8^n]%(n+1)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094923

/-- `∑[8^n]%(n+1)` -/
def P7080836148691660966.Spec : Prop :=
  ∀ n, (P7080836148691660966.a n : ℤ) = A094923 (n + 1)

theorem P7080836148691660966.correct : P7080836148691660966.Spec := by
  intro n
  simp only [A094923, Nat.add_sub_cancel]

end A094923

/-! ## A094923.P1662074462108559459

`-∑[-A001018(n)]%(n+1)`
-/

namespace A094923.P1662074462108559459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A094923.P1662074462108559459

namespace A094923

/-- `-∑[-A001018(n)]%(n+1)` -/
def P1662074462108559459.Spec : Prop :=
  ∀ n, P1662074462108559459.a n = A094923 (n + 1)

end A094923

/-! ## A094923.P5030548947166211044

`abs(A023001(n+1)%(n-log2(1/2)))`
-/

namespace A094923.P5030548947166211044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A023001 (n + 1)) (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ)))|

end

end A094923.P5030548947166211044

namespace A094923

/-- `abs(A023001(n+1)%(n-log2(1/2)))` -/
def P5030548947166211044.Spec : Prop :=
  ∀ n, P5030548947166211044.a n = A094923 (n + 1)

end A094923

/-! ## A094923.P15523147149319379748

`abs(abs(∑[A000079(3*n)]%(n+1)-n)-n)`
-/

namespace A094923.P15523147149319379748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ) - (n : ℤ)| - (n : ℤ))|

end

end A094923.P15523147149319379748

namespace A094923

/-- `abs(abs(∑[A000079(3*n)]%(n+1)-n)-n)` -/
def P15523147149319379748.Spec : Prop :=
  ∀ n, P15523147149319379748.a n = A094923 (n + 1)

end A094923

/-! ## A094923.P13474659294327903109

`∑[A153972(3*n+1)]%A103517(n)/2`
-/

namespace A094923.P13474659294327903109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153972 (3 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A103517 n) : ℚ) / 2

end

end A094923.P13474659294327903109

namespace A094923

/-- `∑[A153972(3*n+1)]%A103517(n)/2` -/
def P13474659294327903109.Spec : Prop :=
  ∀ n, P13474659294327903109.a n = (A094923 (n + 1) : ℚ)

end A094923

/-! ## A094923.P17776216006733178767

`A057163(A057163(A077947(3*n+1)%(n+1)))`
-/

namespace A094923.P17776216006733178767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057163 (Int.tmod (A077947 (3 * n + 1)) (n + 1 : ℤ)).toNat).toNat

end

end A094923.P17776216006733178767

namespace A094923

/-- `A057163(A057163(A077947(3*n+1)%(n+1)))` -/
def P17776216006733178767.Spec : Prop :=
  ∀ n, P17776216006733178767.a n = A094923 (n + 1)

end A094923

/-!
# A094924: a(n) = (9^n-1)/8 mod n.

The programs for A094924, the canonical program `A094924.P11268531345292795071` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094924 has offset 1).

The definition of A094924 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094924.P11268531345292795071

`∑[9^n]%(n+1)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094924

/-- `∑[9^n]%(n+1)` -/
def P11268531345292795071.Spec : Prop :=
  ∀ n, (P11268531345292795071.a n : ℤ) = A094924 (n + 1)

theorem P11268531345292795071.correct : P11268531345292795071.Spec := by
  intro n
  simp only [A094924, Nat.add_sub_cancel]

end A094924

/-! ## A094924.P17132341465703172578

`abs(∑[9*a(n-1)]%(n+1))` with `a(0)=1`
-/

namespace A094924.P17132341465703172578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  9 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)

end

end A094924.P17132341465703172578

namespace A094924

/-- `abs(∑[9*a(n-1)]%(n+1))` -/
def P17132341465703172578.Spec : Prop :=
  ∀ n, (P17132341465703172578.a n : ℤ) = A094924 (n + 1)

end A094924

/-! ## A094924.P16325636868960290599

`abs(A033113(2*n+1)%(Δ[n²]-n))`
-/

namespace A094924.P16325636868960290599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A033113 (2 * n + 1)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ))|

end

end A094924.P16325636868960290599

namespace A094924

/-- `abs(A033113(2*n+1)%(Δ[n²]-n))` -/
def P16325636868960290599.Spec : Prop :=
  ∀ n, P16325636868960290599.a n = A094924 (n + 1)

end A094924

/-! ## A094924.P7854705439403829612

`A118759(A006342(2*n+1)%(n+1))`
-/

namespace A094924.P7854705439403829612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.tmod (A006342 (2 * n + 1)) (n + 1 : ℤ)).toNat

end

end A094924.P7854705439403829612

namespace A094924

/-- `A118759(A006342(2*n+1)%(n+1))` -/
def P7854705439403829612.Spec : Prop :=
  ∀ n, P7854705439403829612.a n = A094924 (n + 1)

end A094924

/-! ## A094924.P17657018118025413462

`A002265(A003462(2*(n+1))%(4*(n+1)))`
-/

namespace A094924.P17657018118025413462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.tmod (A003462 (2 * (n + 1))) (4 * (n + 1) : ℤ)).toNat

end

end A094924.P17657018118025413462

namespace A094924

/-- `A002265(A003462(2*(n+1))%(4*(n+1)))` -/
def P17657018118025413462.Spec : Prop :=
  ∀ n, P17657018118025413462.a n = A094924 (n + 1)

end A094924

/-!
# A094925: A hexagonal spiral Fibonacci sequence.

The programs for A094925, there is no canonical definition to state claims against.
-/

/-! ## A094925.P4357482474304443952

`A293137((n+1)*A000598(n))`
-/

namespace A094925.P4357482474304443952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 ((n + 1 : ℤ) * A000598 n).toNat

end

end A094925.P4357482474304443952

/-! ## A094925.P2008169595537515072

`A276581(A108479(n))+A059995(n)`
-/

namespace A094925.P2008169595537515072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (A108479 n).toNat + A059995 n

end

end A094925.P2008169595537515072

/-! ## A094925.P14241846672642459028

`A276581(A109961(n))+A059995(n)`
-/

namespace A094925.P14241846672642459028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (A109961 n).toNat + A059995 n

end

end A094925.P14241846672642459028

/-! ## A094925.P4900048272377654774

`A327776(a(n-1))-2` with `a(0)=1, a(1)=1`
-/

namespace A094925.P4900048272377654774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A327776 (a (n - 1)).toNat - 2

end

end A094925.P4900048272377654774

/-! ## A094925.P18341790442245664694

`A194311(A098182(n))`
-/

namespace A094925.P18341790442245664694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194311 (A098182 n).toNat

end

end A094925.P18341790442245664694

/-!
# A094926: A hexagonal spiral Fibonacci sequence.

The programs for A094926, there is no canonical definition to state claims against.
-/

/-! ## A094926.P7762182377268013328

`A249728(A006356(n))-A059923(n+1)`
-/

namespace A094926.P7762182377268013328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (A006356 n).toNat - A059923 (n + 1)

end

end A094926.P7762182377268013328

/-! ## A094926.P1078017156438969928

`A003056(A265278(n)-A210109(n+1))`
-/

namespace A094926.P1078017156438969928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A265278 n - A210109 (n + 1)).toNat

end

end A094926.P1078017156438969928

/-! ## A094926.P14681185067884408550

`A351846(floor(exp(n-1)))`
-/

namespace A094926.P14681185067884408550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351846 ⌊Real.exp ((n : ℤ) - 1 : ℝ)⌋.toNat

end

end A094926.P14681185067884408550

/-! ## A094926.P7099861312264098869

`ceil(A003056(floor(exp(n-1)))/2)`
-/

namespace A094926.P7099861312264098869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003056 ⌊Real.exp ((n : ℤ) - 1 : ℝ)⌋.toNat : ℚ) / 2⌉

end

end A094926.P7099861312264098869

/-! ## A094926.P11374878244102056107

`A135660(A000650(n))`
-/

namespace A094926.P11374878244102056107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A000650 n).toNat

end

end A094926.P11374878244102056107

/-!
# A094927: Number of nonisomorphic (possibly decomposable) self-dual quantum codes on n qubits.

The programs for A094927, there is no canonical definition to state claims against.
-/

/-! ## A094927.P8791429186985907445

`∑[A146326(A197615(n+1))+1]`
-/

namespace A094927.P8791429186985907445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A197615 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094927.P8791429186985907445

/-!
# A094928: Let p = n-th prime == 1 mod 8 (A007519); a(n) = smallest prime q such that p is not a square mod q.

The programs for A094928, there is no canonical definition to state claims against.
-/

/-! ## A094928.P17982047058205685940

`A094929(A269704(n+1))`
-/

namespace A094928.P17982047058205685940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094929 (A269704 (n + 1)).toNat

end

end A094928.P17982047058205685940

/-! ## A094928.P12710938791986246168

`A112046(A186293(n+1))`
-/

namespace A094928.P12710938791986246168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112046 (A186293 (n + 1)).toNat

end

end A094928.P12710938791986246168

/-! ## A094928.P9401210946267418962

`A227196(p?[8*n+1])`
-/

namespace A094928.P9401210946267418962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A094928.P9401210946267418962

/-! ## A094928.P10917749214357261861

`A053761(A186294(n+1))`
-/

namespace A094928.P10917749214357261861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053761 (A186294 (n + 1)).toNat

end

end A094928.P10917749214357261861

/-! ## A094928.P3009187695458591679

`A020649(p?[8*n+1])`
-/

namespace A094928.P3009187695458591679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020649 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A094928.P3009187695458591679

/-! ## A094928.P14265468786551680430

`A139401(p?[8*n+1])`
-/

namespace A094928.P14265468786551680430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139401 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A094928.P14265468786551680430

/-! ## A094928.P14264380166358067661

`A020649(A007519(n+1))`
-/

namespace A094928.P14264380166358067661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020649 (A007519 (n + 1)).toNat

end

end A094928.P14264380166358067661

/-! ## A094928.P13732787484975588462

`A020649(A045390(n+2))`
-/

namespace A094928.P13732787484975588462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020649 (A045390 (n + 2)).toNat

end

end A094928.P13732787484975588462

/-! ## A094928.P9702540132656422535

`A020649(A209544(n+2))`
-/

namespace A094928.P9702540132656422535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020649 (A209544 (n + 2)).toNat

end

end A094928.P9702540132656422535

/-!
# A094929: Let p = n-th prime; a(n) = smallest odd prime q such that p is not a square mod q.

The programs for A094929, there is no canonical definition to state claims against.
-/

/-! ## A094929.P17280887164302976543

`A139401(A001749(n+3))`
-/

namespace A094929.P17280887164302976543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139401 (A001749 (n + 3)).toNat

end

end A094929.P17280887164302976543

/-! ## A094929.P17930564536510139246

`A139401(4*A000040(n+3))`
-/

namespace A094929.P17930564536510139246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139401 (4 * A000040 (n + 3)).toNat

end

end A094929.P17930564536510139246

/-! ## A094929.P1117282751471966436

`A139401(4*A008578(n+4))`
-/

namespace A094929.P1117282751471966436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139401 (4 * A008578 (n + 4)).toNat

end

end A094929.P1117282751471966436

/-! ## A094929.P9153741099930643623

`A139401(lcm(4, A008578(n+4)))`
-/

namespace A094929.P9153741099930643623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139401 (Int.lcm 4 (A008578 (n + 4)))

end

end A094929.P9153741099930643623

/-! ## A094929.P14755169575715586781

`A139401(A008586(p?[A275718(n+1)]))`
-/

namespace A094929.P14755169575715586781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139401 (A008586 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A094929.P14755169575715586781

/-! ## A094929.P4131586692981203058

`A139401(A008598(p?[A275718(n+1)]))`
-/

namespace A094929.P4131586692981203058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139401 (A008598 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A094929.P4131586692981203058

/-!
# A094930: Triangle T(n,m) read by rows, defined by squaring a matrix with row entries 2+3*(m-1).

The programs for A094930, the canonical program `A094930.P3291015638818169319` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094930 has offset 1).

The definition of A094930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094930.P3291015638818169319

`A016789(A002262(n))*A096037(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A094930

/-- `A016789(A002262(n))*A096037(n+1)` -/
def P3291015638818169319.Spec : Prop :=
  ∀ n, P3291015638818169319.a n = A094930 (n + 1)

theorem P3291015638818169319.correct : P3291015638818169319.Spec := by
  intro n
  simp only [A094930, Nat.add_sub_cancel]

end A094930

/-! ## A094930.P8381864179247747205

`A007494(A158405(n+1))*A096037(n+1)`
-/

namespace A094930.P8381864179247747205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A158405 (n + 1)).toNat * A096037 (n + 1)

end

end A094930.P8381864179247747205

namespace A094930

/-- `A007494(A158405(n+1))*A096037(n+1)` -/
def P8381864179247747205.Spec : Prop :=
  ∀ n, P8381864179247747205.a n = A094930 (n + 1)

end A094930

/-! ## A094930.P12310600182623178476

`A096037(A000217(A002260(n+1)))*A096037(n+1)`
-/

namespace A094930.P12310600182623178476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096037 (A000217 (A002260 (n + 1)).toNat).toNat * A096037 (n + 1)

end

end A094930.P12310600182623178476

namespace A094930

/-- `A096037(A000217(A002260(n+1)))*A096037(n+1)` -/
def P12310600182623178476.Spec : Prop :=
  ∀ n, P12310600182623178476.a n = A094930 (n + 1)

end A094930

/-! ## A094930.P7553184737306483381

`(A128116(n+1)+A101447(n))*A016789(A002262(n))`
-/

namespace A094930.P7553184737306483381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A128116 (n + 1) + A101447 n) * A016789 (A002262 n).toNat

end

end A094930.P7553184737306483381

namespace A094930

/-- `(A128116(n+1)+A101447(n))*A016789(A002262(n))` -/
def P7553184737306483381.Spec : Prop :=
  ∀ n, P7553184737306483381.a n = A094930 (n + 1)

end A094930

/-! ## A094930.P498122764094407841

`(A213822(n+1)-A213828(n+1))*A016789(A002262(n))`
-/

namespace A094930.P498122764094407841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A213822 (n + 1) - A213828 (n + 1)) * A016789 (A002262 n).toNat

end

end A094930.P498122764094407841

namespace A094930

/-- `(A213822(n+1)-A213828(n+1))*A016789(A002262(n))` -/
def P498122764094407841.Spec : Prop :=
  ∀ n, P498122764094407841.a n = A094930 (n + 1)

end A094930

/-! ## A094930.P4735107978675200380

`A096037(n+1)%A096037(n+2)*A096037(n+1)`
-/

namespace A094930.P4735107978675200380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096037 (n + 1)) (A096037 (n + 2)) * A096037 (n + 1)

end

end A094930.P4735107978675200380

namespace A094930

/-- `A096037(n+1)%A096037(n+2)*A096037(n+1)` -/
def P4735107978675200380.Spec : Prop :=
  ∀ n, P4735107978675200380.a n = A094930 (n + 1)

end A094930

/-!
# A094931: A measure of the excess of the mean of the set of 4 consecutive primes over the 2nd of the set.

The programs for A094931, there is no canonical definition to state claims against.
-/

/-! ## A094931.P8505765324475154605

`A034963(n+1)%A030229(lt[n², A192599(n+1)]+2)`
-/

namespace A094931.P8505765324475154605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034963 (n + 1)) (A030229 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2))

end

end A094931.P8505765324475154605

/-! ## A094931.P4514354926482049908

`A034963(n+1)%A243057(A006094(n+1))`
-/

namespace A094931.P4514354926482049908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034963 (n + 1)) (A243057 (A006094 (n + 1)).toNat)

end

end A094931.P4514354926482049908

/-! ## A094931.P3148733643838004737

`(A007504(n+4)-A007504(n))%A243057(A006094(n+1))`
-/

namespace A094931.P3148733643838004737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 (n + 4) - A007504 n) (A243057 (A006094 (n + 1)).toNat)

end

end A094931.P3148733643838004737

/-! ## A094931.P883081094261647910

`(A034961(n+2)+A000040(n+1))%A243057(A006094(n+1))`
-/

namespace A094931.P883081094261647910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034961 (n + 2) + A000040 (n + 1)) (A243057 (A006094 (n + 1)).toNat)

end

end A094931.P883081094261647910

/-!
# A094932: Primes that represent some mean of 4 consecutive (2 smaller, itself, 1 larger) primes.

The programs for A094932, there is no canonical definition to state claims against.
-/

/-! ## A094932.P10091434376516632590

`A135144(∑[A135131(n+2)])`
-/

namespace A094932.P10091434376516632590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135131 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135144 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A094932.P10091434376516632590

/-!
# A094933: Primes prime(k) such that (prime(k-1) + prime(k+1) + prime(k+2))/prime(k) = 3.

The programs for A094933, the canonical program `A094933.P14071064895928363372` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094933 has offset 1).

The definition of A094933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094933.P13567735380821564366

`∩[A051634(n+1), A102655(n+1)]`
-/

namespace A094933.P13567735380821564366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094933.P13567735380821564366

namespace A094933

/-- `∩[A051634(n+1), A102655(n+1)]` -/
def P13567735380821564366.Spec : Prop :=
  ∀ n, (P13567735380821564366.a n : ℤ) = A094933 (n + 1)

end A094933

/-! ## A094933.P442792212413686321

`∩[A046869(n+1), A102655(n+1)]`
-/

namespace A094933.P442792212413686321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094933.P442792212413686321

namespace A094933

/-- `∩[A046869(n+1), A102655(n+1)]` -/
def P442792212413686321.Spec : Prop :=
  ∀ n, (P442792212413686321.a n : ℤ) = A094933 (n + 1)

end A094933

/-! ## A094933.P12956762855132363765

`∩[A102655(n+1), A139812(n+1)]`
-/

namespace A094933.P12956762855132363765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094933.P12956762855132363765

namespace A094933

/-- `∩[A102655(n+1), A139812(n+1)]` -/
def P12956762855132363765.Spec : Prop :=
  ∀ n, (P12956762855132363765.a n : ℤ) = A094933 (n + 1)

end A094933

/-! ## A094933.P14071064895928363372

`p?[gcd(A006094(n+1), A034963(n+1))]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A094933

/-- `p?[gcd(A006094(n+1), A034963(n+1))]` -/
def P14071064895928363372.Spec : Prop :=
  ∀ n, (P14071064895928363372.a n : ℤ) = A094933 (n + 1)

theorem P14071064895928363372.correct : P14071064895928363372.Spec := by
  intro n
  simp only [A094933, Nat.add_sub_cancel]

end A094933

/-! ## A094933.P17668659556635133304

`∩[A051634(n+1), A126096(n+1)]`
-/

namespace A094933.P17668659556635133304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094933.P17668659556635133304

namespace A094933

/-- `∩[A051634(n+1), A126096(n+1)]` -/
def P17668659556635133304.Spec : Prop :=
  ∀ n, (P17668659556635133304.a n : ℤ) = A094933 (n + 1)

end A094933

/-! ## A094933.P8944565236372038049

`∩[A126096(n+1), A139812(n+1)]`
-/

namespace A094933.P8944565236372038049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094933.P8944565236372038049

namespace A094933

/-- `∩[A126096(n+1), A139812(n+1)]` -/
def P8944565236372038049.Spec : Prop :=
  ∀ n, (P8944565236372038049.a n : ℤ) = A094933 (n + 1)

end A094933

/-! ## A094933.P14990277622443899317

`∩[A046869(n+1), A126096(n+1)]`
-/

namespace A094933.P14990277622443899317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094933.P14990277622443899317

namespace A094933

/-- `∩[A046869(n+1), A126096(n+1)]` -/
def P14990277622443899317.Spec : Prop :=
  ∀ n, (P14990277622443899317.a n : ℤ) = A094933 (n + 1)

end A094933

/-! ## A094933.P968820320657216789

`∩[A126096(n+1), A225493(n+1)]`
-/

namespace A094933.P968820320657216789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094933.P968820320657216789

namespace A094933

/-- `∩[A126096(n+1), A225493(n+1)]` -/
def P968820320657216789.Spec : Prop :=
  ∀ n, (P968820320657216789.a n : ℤ) = A094933 (n + 1)

end A094933

/-!
# A094934: Write binary digits of numbers 1, 2, 3, ... in a string; sequence gives the prime indexed digits.

The programs for A094934, there is no canonical definition to state claims against.
-/

/-! ## A094934.P16888496427745962077

`A244527(A111333(n+1))`
-/

namespace A094934.P16888496427745962077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244527 (A111333 (n + 1)).toNat

end

end A094934.P16888496427745962077

/-! ## A094934.P8797952083029345413

`A030190(p?[xor(1, n)+1])`
-/

namespace A094934.P8797952083029345413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A094934.P8797952083029345413

/-! ## A094934.P4721934860863052738

`A030302(p?[xor(1, n)+1])`
-/

namespace A094934.P4721934860863052738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A094934.P4721934860863052738

/-! ## A094934.P18263511011561410373

`A030190(p?[a(n-1)+2])` with `a(0)=2, a(1)=1`
-/

namespace A094934.P18263511011561410373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A094934.P18263511011561410373

/-! ## A094934.P8361391261556287578

`A030190(p?[(-1)^n+n+1])`
-/

namespace A094934.P8361391261556287578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A094934.P8361391261556287578

/-! ## A094934.P10291685917557711967

`A030190(root(p?[round(8*n/7)]², 2))`
-/

namespace A094934.P10291685917557711967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A094934.P10291685917557711967

/-! ## A094934.P8106913377335850231

`∑{p}[3*p?[round(8*n/7)], A030190(#)]`
-/

namespace A094934.P8106913377335850231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A030190 p

end

end A094934.P8106913377335850231

/-! ## A094934.P7463395263309221884

`∑{p}[3*p?[round(8*n/7)], A030302(#)]`
-/

namespace A094934.P7463395263309221884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A030302 p

end

end A094934.P7463395263309221884

/-! ## A094934.P3547796842316302123

`A030190(Δ[A007504(n)])`
-/

namespace A094934.P3547796842316302123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (f1 (n + 1) - f1 n).toNat

end

end A094934.P3547796842316302123

/-! ## A094934.P6091453370699567079

`A030302(Δ[A007504(n)])`
-/

namespace A094934.P6091453370699567079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (f1 (n + 1) - f1 n).toNat

end

end A094934.P6091453370699567079

/-! ## A094934.P9261316593396257265

`A030190(record[A051698(n)])`
-/

namespace A094934.P9261316593396257265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A094934.P9261316593396257265

/-! ## A094934.P12126425000491467356

`A030190(A000040(n+1))`
-/

namespace A094934.P12126425000491467356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (A000040 (n + 1)).toNat

end

end A094934.P12126425000491467356

/-! ## A094934.P17240552426129161601

`A030190(A006005(n+1))`
-/

namespace A094934.P17240552426129161601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (A006005 (n + 1)).toNat

end

end A094934.P17240552426129161601

/-! ## A094934.P15682647696496426965

`A030190(A063884(n+1))`
-/

namespace A094934.P15682647696496426965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (A063884 (n + 1)).toNat

end

end A094934.P15682647696496426965

/-! ## A094934.P8138907786027590072

`A030190(A161847(n+1))`
-/

namespace A094934.P8138907786027590072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (A161847 (n + 1)).toNat

end

end A094934.P8138907786027590072

/-! ## A094934.P7995930113783308515

`A030190(A008578(n+2))`
-/

namespace A094934.P7995930113783308515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (A008578 (n + 2)).toNat

end

end A094934.P7995930113783308515

/-! ## A094934.P17978852976838052016

`A030190(A075643(n+2))`
-/

namespace A094934.P17978852976838052016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (A075643 (n + 2)).toNat

end

end A094934.P17978852976838052016

/-! ## A094934.P5075654767514903703

`A030190(∑{p}[p?[round(8*n/7)]², #])`
-/

namespace A094934.P5075654767514903703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A094934.P5075654767514903703

/-! ## A094934.P8421911334264428954

`A030302(∑{p}[p?[round(8*n/7)]², #])`
-/

namespace A094934.P8421911334264428954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A094934.P8421911334264428954

/-! ## A094934.P2573554349352121281

`A030190(∏{p}[p?[round(8*n/7)]², #])`
-/

namespace A094934.P2573554349352121281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A094934.P2573554349352121281

/-!
# A094937: Number of real roots of the n-th Bernoulli polynomial B(n,x).

The programs for A094937, there is no canonical definition to state claims against.
-/

/-! ## A094937.P812375212690107067

`A028901(A182220(2*(n+1)))-A182220(n+1)`
-/

namespace A094937.P812375212690107067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (A182220 (2 * (n + 1))).toNat - A182220 (n + 1)

end

end A094937.P812375212690107067

/-!
# A094938: a(n)=(-36^n/18)*B(2n,1/6)/B(2n,1/3) where B(n,x) is the n-th Bernoulli polynomial.

The programs for A094938, there is no canonical definition to state claims against.
-/

/-! ## A094938.P11386210374819686802

`(2*4^n-1)*9^n`
-/

namespace A094938.P11386210374819686802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * 4 ^ n : ℤ) - 1) * (9 ^ n : ℤ)

end

end A094938.P11386210374819686802

/-! ## A094938.P3910289367087778649

`A016137(2*n)`
-/

namespace A094938.P3910289367087778649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016137 (2 * n)

end

end A094938.P3910289367087778649

/-! ## A094938.P4998147922185895513

`lcm(A004171(n)-1, 9^n)`
-/

namespace A094938.P4998147922185895513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004171 n - 1) (9 ^ n : ℤ)

end

end A094938.P4998147922185895513

/-! ## A094938.P7817124105237157259

`record[A016137(n)/(-1)^n]`
-/

namespace A094938.P7817124105237157259
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016137 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094938.P7817124105237157259

/-! ## A094938.P8414068524775750317

`record[A016137(n+1)^(n%2)]`
-/

namespace A094938.P8414068524775750317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016137 (n + 1) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094938.P8414068524775750317

/-! ## A094938.P18341601814849434810

`lcm(2*4^n-1, A001019(n))`
-/

namespace A094938.P18341601814849434810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((2 * 4 ^ n : ℤ) - 1) (A001019 n)

end

end A094938.P18341601814849434810

/-! ## A094938.P11310890852546519012

`record[A016137(log2(A262616(n)))]`
-/

namespace A094938.P11310890852546519012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016137 (SequenceMachineLib.roundAway (Real.logb 2 (A262616 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094938.P11310890852546519012

/-! ## A094938.P3609628768731621120

`A155611(2*n)+A024062(2*n)`
-/

namespace A094938.P3609628768731621120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155611 (2 * n) + A024062 (2 * n)

end

end A094938.P3609628768731621120

/-! ## A094938.P5334043292524222209

`A081656(2*n)-A001047(2*n)`
-/

namespace A094938.P5334043292524222209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081656 (2 * n) - A001047 (2 * n)

end

end A094938.P5334043292524222209

/-! ## A094938.P6701442004475767017

`A167747(2*n+1)-A000244(n)²`
-/

namespace A094938.P6701442004475767017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167747 (2 * n + 1) - A000244 n ^ 2

end

end A094938.P6701442004475767017

/-!
# A094939: a(n) = floor(2^n*log(n)).

The programs for A094939, the canonical program `A094939.P10296082309113259397` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094939 has offset 1).

The definition of A094939 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(2^(n+1)*log(n+1))` (program `A094939.P10296082309113259397`, by `A094939.P10296082309113259397.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094939.P10296082309113259397

`floor(2^(n+1)*log(n+1))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094939

/-- `floor(2^(n+1)*log(n+1))` -/
def P10296082309113259397.Spec : Prop :=
  ∀ n, P10296082309113259397.a n = A094939 (n + 1)

theorem P10296082309113259397.correct : P10296082309113259397.Spec := by
  intro n
  simp only [A094939, Nat.add_sub_cancel]

end A094939

/-!
# A094940: a(n) = floor(n^n*log(n)).

The programs for A094940, the canonical program `A094940.P11642579952211743349` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094940 has offset 1).

The definition of A094940 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)^(n+1)*log(n+1))` (program `A094940.P11642579952211743349`, by `A094940.P11642579952211743349.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094940.P11642579952211743349

`floor((n+1)^(n+1)*log(n+1))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094940

/-- `floor((n+1)^(n+1)*log(n+1))` -/
def P11642579952211743349.Spec : Prop :=
  ∀ n, P11642579952211743349.a n = A094940 (n + 1)

theorem P11642579952211743349.correct : P11642579952211743349.Spec := by
  intro n
  simp only [A094940, Nat.add_sub_cancel]

end A094940

/-!
# A094941: a(n) is n! times the coefficient of Pi^floor(n/2) in the volume of an n-dimensional unit ball.

The programs for A094941, the canonical program `A094941.P1163668474856607568` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094941 has offset 0).

The definition of A094941 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094941.P1163668474856607568

`(2*n-2)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094941

/-- `(2*n-2)*a(n-2)` -/
def P1163668474856607568.Spec : Prop :=
  ∀ n, P1163668474856607568.a n = A094941 n

theorem P1163668474856607568.correct : P1163668474856607568.Spec := by
  intro n
  simp only [A094941]

end A094941

/-! ## A094941.P3909883200199551763

`∏[(n-2+n)/a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A094941.P3909883200199551763
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  ((n : ℤ) - 2 + (n : ℤ) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A094941.P3909883200199551763

namespace A094941

/-- `∏[(n-2+n)/a(n-1)]` -/
def P3909883200199551763.Spec : Prop :=
  ∀ n, P3909883200199551763.a n = (A094941 n : ℚ)

end A094941

/-! ## A094941.P3968443292350841639

`a(n-2)/(n-2+n)^-1` with `a(0)=1, a(1)=2`
-/

namespace A094941.P3968443292350841639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) / ((n : ℤ) - 2 + (n : ℤ) : ℚ) ^ (-1 : ℤ)

end

end A094941.P3968443292350841639

namespace A094941

/-- `a(n-2)/(n-2+n)^-1` -/
def P3968443292350841639.Spec : Prop :=
  ∀ n, P3968443292350841639.a n = (A094941 n : ℚ)

end A094941

/-! ## A094941.P15762149545751997692

`a(n-2)*A004275(n)` with `a(0)=1, a(1)=2`
-/

namespace A094941.P15762149545751997692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) * A004275 n

end

end A094941.P15762149545751997692

namespace A094941

/-- `a(n-2)*A004275(n)` -/
def P15762149545751997692.Spec : Prop :=
  ∀ n, P15762149545751997692.a n = A094941 n

end A094941

/-! ## A094941.P12962567899739989063

`a(n-2)*record[A029578(n)]` with `a(0)=1, a(1)=2`
-/

namespace A094941.P12962567899739989063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094941.P12962567899739989063

namespace A094941

/-- `a(n-2)*record[A029578(n)]` -/
def P12962567899739989063.Spec : Prop :=
  ∀ n, P12962567899739989063.a n = A094941 n

end A094941

/-! ## A094941.P11280964092837974466

`a(n-2)*record[A110090(n)]` with `a(0)=1, a(1)=2`
-/

namespace A094941.P11280964092837974466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110090 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094941.P11280964092837974466

namespace A094941

/-- `a(n-2)*record[A110090(n)]` -/
def P11280964092837974466.Spec : Prop :=
  ∀ n, P11280964092837974466.a n = A094941 n

end A094941

/-! ## A094941.P13194084899802934085

`A087299(n+1)/(n+1)`
-/

namespace A094941.P13194084899802934085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087299 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A094941.P13194084899802934085

namespace A094941

/-- `A087299(n+1)/(n+1)` -/
def P13194084899802934085.Spec : Prop :=
  ∀ n, P13194084899802934085.a n = (A094941 n : ℚ)

end A094941

/-! ## A094941.P8658641583352215821

`A372995(2*(n+1))/(n+1)`
-/

namespace A094941.P8658641583352215821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372995 (2 * (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A094941.P8658641583352215821

namespace A094941

/-- `A372995(2*(n+1))/(n+1)` -/
def P8658641583352215821.Spec : Prop :=
  ∀ n, P8658641583352215821.a n = (A094941 n : ℚ)

end A094941

/-! ## A094941.P5975875232145839858

`A249074(∑[n])/(n+1)`
-/

namespace A094941.P5975875232145839858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249074 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A094941.P5975875232145839858

namespace A094941

/-- `A249074(∑[n])/(n+1)` -/
def P5975875232145839858.Spec : Prop :=
  ∀ n, P5975875232145839858.a n = (A094941 n : ℚ)

end A094941

/-!
# A094942: Numbers having a unique partition into three squares.

The programs for A094942, there is no canonical definition to state claims against.
-/

/-! ## A094942.P7241834705242324884

`eq[1, A000164(n)]`
-/

namespace A094942.P7241834705242324884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A094942.P7241834705242324884

/-! ## A094942.P17510977251078194349

`lt[A023416(A000164(n)²), 1]`
-/

namespace A094942.P17510977251078194349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A000164 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A094942.P17510977251078194349

/-! ## A094942.P12202534651774214689

`eq[1, A025427(n)+A000161(n)]`
-/

namespace A094942.P12202534651774214689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n + A000161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A094942.P12202534651774214689

/-! ## A094942.P16381604270572766185

`eq[A025428(n)+1, A002635(n)]`
-/

namespace A094942.P16381604270572766185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094942.P16381604270572766185

/-! ## A094942.P5441513514530817394

`record[gcd(n, A000700(A000164(n)+1))]`
-/

namespace A094942.P5441513514530817394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000700 (A000164 n + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094942.P5441513514530817394

/-! ## A094942.P18445003393819997206

`eq[1, A085202(A000925(n))+A025427(n)]`
-/

namespace A094942.P18445003393819997206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085202 (A000925 n).toNat + A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A094942.P18445003393819997206

/-! ## A094942.P11292897536789423490

`record[A000378(n+1)/A000164(A000378(n+1))]`
-/

namespace A094942.P11292897536789423490
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000378 (n + 1) : ℚ) / (A000164 (A000378 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094942.P11292897536789423490

/-! ## A094942.P3652910653681679180

`eq[1-A000161(A005843(n)), A025427(n)]`
-/

namespace A094942.P3652910653681679180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000161 (A005843 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094942.P3652910653681679180

/-! ## A094942.P3676659439361834285

`lt[A000032(A000164(n)²), 2]`
-/

namespace A094942.P3676659439361834285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A000164 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A094942.P3676659439361834285

/-!
# A094945: Initial n terms of A023532(n) taken as digits.

The programs for A094945, the canonical program `A094945.P9034424689578853627` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094945 has offset 0).

The definition of A094945 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094945.P7010895277781303812

`char[comp[∑[n-1]]]+10*a(n-1)` with `a(0)=0`
-/

namespace A094945.P7010895277781303812
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + 10 * a (n - 1)

end

end A094945.P7010895277781303812

namespace A094945

/-- `char[comp[∑[n-1]]]+10*a(n-1)` -/
def P7010895277781303812.Spec : Prop :=
  ∀ n, (P7010895277781303812.a n : ℤ) = A094945 n

end A094945

/-! ## A094945.P8163487652727958973

`10*a(n-1)+1-char[∑[n-1]]` with `a(0)=0`
-/

namespace A094945.P8163487652727958973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  10 * a (n - 1) + 1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A094945.P8163487652727958973

namespace A094945

/-- `10*a(n-1)+1-char[∑[n-1]]` -/
def P8163487652727958973.Spec : Prop :=
  ∀ n, P8163487652727958973.a n = A094945 n

end A094945

/-! ## A094945.P9034424689578853627

`or(10*a(n-1), Δ[A083920(n)])` with `a(0)=0`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A094945

/-- `or(10*a(n-1), Δ[A083920(n)])` -/
def P9034424689578853627.Spec : Prop :=
  ∀ n, P9034424689578853627.a n = A094945 n

theorem P9034424689578853627.correct : P9034424689578853627.Spec := by
  intro n
  simp only [A094945]

end A094945

/-! ## A094945.P15751983664459075404

`or(1, 10*a(n-1))-A023531(n)` with `a(0)=0`
-/

namespace A094945.P15751983664459075404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor 1 (10 * a (n - 1)) - A023531 n

end

end A094945.P15751983664459075404

namespace A094945

/-- `or(1, 10*a(n-1))-A023531(n)` -/
def P15751983664459075404.Spec : Prop :=
  ∀ n, P15751983664459075404.a n = A094945 n

end A094945

/-! ## A094945.P567290331106710314

`or(10*a(n-1), Δ[A122797(n+1)])` with `a(0)=0`
-/

namespace A094945.P567290331106710314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (10 * a (n - 1)) (f1 (n + 1) - f1 n)

end

end A094945.P567290331106710314

namespace A094945

/-- `or(10*a(n-1), Δ[A122797(n+1)])` -/
def P567290331106710314.Spec : Prop :=
  ∀ n, P567290331106710314.a n = A094945 n

end A094945

/-!
# A094947: G.f.: A(x) = Product_{n>=1} 1/(1 - A007947(n)*x^n)^(1/n), where A007947(n) is the product of the distinct prime factors of n.

The programs for A094947, there is no canonical definition to state claims against.
-/

/-! ## A094947.P2053199907627598087

`A167520(A179822(n))`
-/

namespace A094947.P2053199907627598087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167520 (A179822 n).toNat

end

end A094947.P2053199907627598087

/-! ## A094947.P17064510169675422899

`or(A060287(n), A319769(n))`
-/

namespace A094947.P17064510169675422899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060287 n) (A319769 n)

end

end A094947.P17064510169675422899

/-! ## A094947.P17553605569887703022

`or(A102675(n), A319769(n))`
-/

namespace A094947.P17553605569887703022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102675 n) (A319769 n)

end

end A094947.P17553605569887703022

/-! ## A094947.P14371058996709246431

`or(A319769(n), A320278(n))`
-/

namespace A094947.P14371058996709246431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A319769 n) (A320278 n)

end

end A094947.P14371058996709246431

/-! ## A094947.P17397707138261019882

`or(char[A213886(n+1)], A319769(n))`
-/

namespace A094947.P17397707138261019882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213886 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A319769 n)

end

end A094947.P17397707138261019882

/-!
# A094949: Phi(m)*sigma(m), where m is the product of exactly two primes that differ by 2, where phi=A000010, sigma=A000203.

The programs for A094949, the canonical program `A094949.P3232022945145782577` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094949 has offset 1).

The definition of A094949 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120875, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A094949.P3232022945145782577

`A120875(n+1)²-4`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A094949

/-- `A120875(n+1)²-4` -/
def P3232022945145782577.Spec : Prop :=
  ∀ n, P3232022945145782577.a n = A094949 (n + 1)

theorem P3232022945145782577.correct : P3232022945145782577.Spec := by
  intro n
  simp only [A094949, Nat.add_sub_cancel]

end A094949

/-! ## A094949.P16426691413925241118

`4*(A120876(n+1)²-1)`
-/

namespace A094949.P16426691413925241118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A120876 (n + 1) ^ 2 - 1)

end

end A094949.P16426691413925241118

namespace A094949

/-- `4*(A120876(n+1)²-1)` -/
def P16426691413925241118.Spec : Prop :=
  ∀ n, P16426691413925241118.a n = A094949 (n + 1)

end A094949

/-! ## A094949.P1598647558753700459

`(1-A037074(n+1))²-4`
-/

namespace A094949.P1598647558753700459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A037074 (n + 1)) ^ 2 - 4

end

end A094949.P1598647558753700459

namespace A094949

/-- `(1-A037074(n+1))²-4` -/
def P1598647558753700459.Spec : Prop :=
  ∀ n, P1598647558753700459.a n = A094949 (n + 1)

end A094949

/-! ## A094949.P6473491410541882685

`(2-A075369(n+1))²-4`
-/

namespace A094949.P6473491410541882685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A075369 (n + 1)) ^ 2 - 4

end

end A094949.P6473491410541882685

namespace A094949

/-- `(2-A075369(n+1))²-4` -/
def P6473491410541882685.Spec : Prop :=
  ∀ n, P6473491410541882685.a n = A094949 (n + 1)

end A094949

/-! ## A094949.P797944840013333077

`(A014574(n+1)²-2)²-4`
-/

namespace A094949.P797944840013333077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014574 (n + 1) ^ 2 - 2) ^ 2 - 4

end

end A094949.P797944840013333077

namespace A094949

/-- `(A014574(n+1)²-2)²-4` -/
def P797944840013333077.Spec : Prop :=
  ∀ n, P797944840013333077.a n = A094949 (n + 1)

end A094949

/-! ## A094949.P9724719918312717870

`(A120875(n+1)-2)*A075369(n+1)`
-/

namespace A094949.P9724719918312717870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A120875 (n + 1) - 2) * A075369 (n + 1)

end

end A094949.P9724719918312717870

namespace A094949

/-- `(A120875(n+1)-2)*A075369(n+1)` -/
def P9724719918312717870.Spec : Prop :=
  ∀ n, P9724719918312717870.a n = A094949 (n + 1)

end A094949

/-! ## A094949.P8978710207081097484

`(A362941(n+1)-A111046(n+1))*A362941(n+1)`
-/

namespace A094949.P8978710207081097484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A362941 (n + 1) - A111046 (n + 1)) * A362941 (n + 1)

end

end A094949.P8978710207081097484

namespace A094949

/-- `(A362941(n+1)-A111046(n+1))*A362941(n+1)` -/
def P8978710207081097484.Spec : Prop :=
  ∀ n, P8978710207081097484.a n = A094949 (n + 1)

end A094949

/-! ## A094949.P11420896134223501745

`A023515(A107770(n+1))²-4`
-/

namespace A094949.P11420896134223501745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (A107770 (n + 1)).toNat ^ 2 - 4

end

end A094949.P11420896134223501745

namespace A094949

/-- `A023515(A107770(n+1))²-4` -/
def P11420896134223501745.Spec : Prop :=
  ∀ n, P11420896134223501745.a n = A094949 (n + 1)

end A094949

/-! ## A094949.P8300612535541986326

`(A023515(A107770(n+1))-2)*A075369(n+1)`
-/

namespace A094949.P8300612535541986326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A023515 (A107770 (n + 1)).toNat - 2) * A075369 (n + 1)

end

end A094949.P8300612535541986326

namespace A094949

/-- `(A023515(A107770(n+1))-2)*A075369(n+1)` -/
def P8300612535541986326.Spec : Prop :=
  ∀ n, P8300612535541986326.a n = A094949 (n + 1)

end A094949

/-! ## A094949.P12025307256765324463

`(A000203(A001359(n+1))²-2)²-4`
-/

namespace A094949.P12025307256765324463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000203 (A001359 (n + 1)).toNat ^ 2 - 2) ^ 2 - 4

end

end A094949.P12025307256765324463

namespace A094949

/-- `(A000203(A001359(n+1))²-2)²-4` -/
def P12025307256765324463.Spec : Prop :=
  ∀ n, P12025307256765324463.a n = A094949 (n + 1)

end A094949

/-! ## A094949.P12523990714554784169

`(A124659(n+1)+1)²-4`
-/

namespace A094949.P12523990714554784169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A124659 (n + 1) + 1) ^ 2 - 4

end

end A094949.P12523990714554784169

namespace A094949

/-- `(A124659(n+1)+1)²-4` -/
def P12523990714554784169.Spec : Prop :=
  ∀ n, P12523990714554784169.a n = A094949 (n + 1)

end A094949

/-! ## A094949.P14039230295750103187

`(A108570(n+1)-1)*A362941(n+1)`
-/

namespace A094949.P14039230295750103187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108570 (n + 1) - 1) * A362941 (n + 1)

end

end A094949.P14039230295750103187

namespace A094949

/-- `(A108570(n+1)-1)*A362941(n+1)` -/
def P14039230295750103187.Spec : Prop :=
  ∀ n, P14039230295750103187.a n = A094949 (n + 1)

end A094949

/-! ## A094949.P13829563204447701413

`A000463(A054735(n+1))²-A054735(n+1)²`
-/

namespace A094949.P13829563204447701413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A054735 (n + 1)).toNat ^ 2 - A054735 (n + 1) ^ 2

end

end A094949.P13829563204447701413

namespace A094949

/-- `A000463(A054735(n+1))²-A054735(n+1)²` -/
def P13829563204447701413.Spec : Prop :=
  ∀ n, P13829563204447701413.a n = A094949 (n + 1)

end A094949

/-!
# A094951: a(n) = A081038(n) + A077616(n).

The programs for A094951, the canonical program `A094951.P16625448213920857252` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094951 has offset 1).

The definition of A094951 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094951.P3641106288290888827

`3^(n-1)*(9+7*(n+1)+2*(n+1)²)`
-/

namespace A094951.P3641106288290888827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (9 + 7 * (n + 1) + 2 * (n + 1) ^ 2 : ℚ)

end

end A094951.P3641106288290888827

namespace A094951

/-- `3^(n-1)*(9+7*(n+1)+2*(n+1)²)` -/
def P3641106288290888827.Spec : Prop :=
  ∀ n, P3641106288290888827.a n = (A094951 (n + 1) : ℚ)

end A094951

/-! ## A094951.P16625448213920857252

`A081038(n+1)+A077616(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A094951

/-- `A081038(n+1)+A077616(n+1)` -/
def P16625448213920857252.Spec : Prop :=
  ∀ n, P16625448213920857252.a n = A094951 (n + 1)

theorem P16625448213920857252.correct : P16625448213920857252.Spec := by
  intro n
  simp only [A094951, Nat.add_sub_cancel]

end A094951

/-! ## A094951.P14663044864677186147

`9*a(n-1)-27*a(n-2)+27*a(n-3)` with `a(0)=6, a(1)=31, a(2)=144`
-/

namespace A094951.P14663044864677186147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 31, 144] fun n a =>
  9 * a (n - 1) - 27 * a (n - 2) + 27 * a (n - 3)

end

end A094951.P14663044864677186147

namespace A094951

/-- `9*a(n-1)-27*a(n-2)+27*a(n-3)` -/
def P14663044864677186147.Spec : Prop :=
  ∀ n, P14663044864677186147.a n = A094951 (n + 1)

end A094951

/-! ## A094951.P17831546117715407363

`A081038(n+1)+(n+1)*A081038(n)`
-/

namespace A094951.P17831546117715407363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081038 (n + 1) + (n + 1 : ℤ) * A081038 n

end

end A094951.P17831546117715407363

namespace A094951

/-- `A081038(n+1)+(n+1)*A081038(n)` -/
def P17831546117715407363.Spec : Prop :=
  ∀ n, P17831546117715407363.a n = A094951 (n + 1)

end A094951

/-! ## A094951.P11406004417320928272

`A000244(n+1)+(n+1)*Δ[A006234(n+3)]`
-/

namespace A094951.P11406004417320928272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006234 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (n + 1) + (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A094951.P11406004417320928272

namespace A094951

/-- `A000244(n+1)+(n+1)*Δ[A006234(n+3)]` -/
def P11406004417320928272.Spec : Prop :=
  ∀ n, P11406004417320928272.a n = A094951 (n + 1)

end A094951

/-! ## A094951.P17856962808861526990

`A006234(n+4)+Δ[(n+1)*A027471(n+1)]`
-/

namespace A094951.P17856962808861526990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A027471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006234 (n + 4) + (f1 (n + 1) - f1 n)

end

end A094951.P17856962808861526990

namespace A094951

/-- `A006234(n+4)+Δ[(n+1)*A027471(n+1)]` -/
def P17856962808861526990.Spec : Prop :=
  ∀ n, P17856962808861526990.a n = A094951 (n + 1)

end A094951

/-!
# A094952: A sequence derived from pentagonal numbers, or a Stirling number of the first kind matrix.

The programs for A094952, the canonical program `A094952.P11050237948696347908` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094952 has offset 1).

The definition of A094952 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094952.P11050237948696347908

`(n+1)*(2*(n+1)+1)*(3*(n+1)+1)/2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094952

/-- `(n+1)*(2*(n+1)+1)*(3*(n+1)+1)/2` -/
def P11050237948696347908.Spec : Prop :=
  ∀ n, P11050237948696347908.a n = (A094952 (n + 1) : ℚ)

end A094952

/-! ## A094952.P7295180784564243634

`abs(∑[∑[a(n-1)+18]+1])` with `a(0)=5`
-/

namespace A094952.P7295180784564243634
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f2 =>
  f2 (n - 1) + 18

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094952.P7295180784564243634

namespace A094952

/-- `abs(∑[∑[a(n-1)+18]+1])` -/
def P7295180784564243634.Spec : Prop :=
  ∀ n, (P7295180784564243634.a n : ℤ) = A094952 (n + 1)

end A094952

/-! ## A094952.P8513679251359530287

`∑[∑[a(n-1)+18]]-∑[n]` with `a(0)=6`
-/

namespace A094952.P8513679251359530287
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f2 =>
  f2 (n - 1) + 18

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A094952.P8513679251359530287

namespace A094952

/-- `∑[∑[a(n-1)+18]]-∑[n]` -/
def P8513679251359530287.Spec : Prop :=
  ∀ n, P8513679251359530287.a n = A094952 (n + 1)

end A094952

/-! ## A094952.P12270783204639401731

`C((n+2)², 2)-C(n²+n, 2)`
-/

namespace A094952.P12270783204639401731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((n + 2) ^ 2) 2 : ℤ) - (Nat.choose (n ^ 2 + n) 2 : ℤ)

end

end A094952.P12270783204639401731

namespace A094952

/-- `C((n+2)², 2)-C(n²+n, 2)` -/
def P12270783204639401731.Spec : Prop :=
  ∀ n, P12270783204639401731.a n = A094952 (n + 1)

end A094952

/-! ## A094952.P15643324982329813359

`lcm(∑[n+1]+(n+1)², n+3+n)`
-/

namespace A094952.P15643324982329813359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) ^ 2) (n + 3 + n)

end

end A094952.P15643324982329813359

namespace A094952

/-- `lcm(∑[n+1]+(n+1)², n+3+n)` -/
def P15643324982329813359.Spec : Prop :=
  ∀ n, (P15643324982329813359.a n : ℤ) = A094952 (n + 1)

end A094952

/-! ## A094952.P16084431492472575966

`∑[A185939(n+1)]+(n+1)²`
-/

namespace A094952.P16084431492472575966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A094952.P16084431492472575966

namespace A094952

/-- `∑[A185939(n+1)]+(n+1)²` -/
def P16084431492472575966.Spec : Prop :=
  ∀ n, P16084431492472575966.a n = A094952 (n + 1)

end A094952

/-! ## A094952.P13042499715858885228

`A059986(n)+A026817(n+1)`
-/

namespace A094952.P13042499715858885228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059986 n + A026817 (n + 1)

end

end A094952.P13042499715858885228

namespace A094952

/-- `A059986(n)+A026817(n+1)` -/
def P13042499715858885228.Spec : Prop :=
  ∀ n, P13042499715858885228.a n = A094952 (n + 1)

end A094952

/-! ## A094952.P18061894691198272157

`A167469(n+1)+A027903(n)`
-/

namespace A094952.P18061894691198272157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167469 (n + 1) + A027903 n

end

end A094952.P18061894691198272157

namespace A094952

/-- `A167469(n+1)+A027903(n)` -/
def P18061894691198272157.Spec : Prop :=
  ∀ n, P18061894691198272157.a n = A094952 (n + 1)

end A094952

/-! ## A094952.P10232039941460715832

`A162257(n+1)+A153976(n)`
-/

namespace A094952.P10232039941460715832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162257 (n + 1) + A153976 n

end

end A094952.P10232039941460715832

namespace A094952

/-- `A162257(n+1)+A153976(n)` -/
def P10232039941460715832.Spec : Prop :=
  ∀ n, P10232039941460715832.a n = A094952 (n + 1)

end A094952

/-! ## A094952.P7443400548908145302

`A024215(n+1)+A007742(n+1)`
-/

namespace A094952.P7443400548908145302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024215 (n + 1) + A007742 (n + 1)

end

end A094952.P7443400548908145302

namespace A094952

/-- `A024215(n+1)+A007742(n+1)` -/
def P7443400548908145302.Spec : Prop :=
  ∀ n, P7443400548908145302.a n = A094952 (n + 1)

end A094952

/-! ## A094952.P8735516060822464933

`A125200(n+1)+A114364(n+1)`
-/

namespace A094952.P8735516060822464933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125200 (n + 1) + A114364 (n + 1)

end

end A094952.P8735516060822464933

namespace A094952

/-- `A125200(n+1)+A114364(n+1)` -/
def P8735516060822464933.Spec : Prop :=
  ∀ n, P8735516060822464933.a n = A094952 (n + 1)

end A094952

/-! ## A094952.P17019526991093517166

`2*A085789(n+1)-A000217(n)`
-/

namespace A094952.P17019526991093517166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085789 (n + 1) - A000217 n

end

end A094952.P17019526991093517166

namespace A094952

/-- `2*A085789(n+1)-A000217(n)` -/
def P17019526991093517166.Spec : Prop :=
  ∀ n, P17019526991093517166.a n = A094952 (n + 1)

end A094952

/-! ## A094952.P7190567492277616098

`A067389(n+1)+∑[n]`
-/

namespace A094952.P7190567492277616098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067389 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A094952.P7190567492277616098

namespace A094952

/-- `A067389(n+1)+∑[n]` -/
def P7190567492277616098.Spec : Prop :=
  ∀ n, P7190567492277616098.a n = A094952 (n + 1)

end A094952

/-! ## A094952.P3488540034607740918

`A115519(n+1)+(n+1)²`
-/

namespace A094952.P3488540034607740918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115519 (n + 1) + ((n + 1) ^ 2 : ℤ)

end

end A094952.P3488540034607740918

namespace A094952

/-- `A115519(n+1)+(n+1)²` -/
def P3488540034607740918.Spec : Prop :=
  ∀ n, P3488540034607740918.a n = A094952 (n + 1)

end A094952

/-! ## A094952.P338793106840572777

`A249354(n+1)-∑[n+1]`
-/

namespace A094952.P338793106840572777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249354 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A094952.P338793106840572777

namespace A094952

/-- `A249354(n+1)-∑[n+1]` -/
def P338793106840572777.Spec : Prop :=
  ∀ n, P338793106840572777.a n = A094952 (n + 1)

end A094952

/-! ## A094952.P767248909526486912

`A135713(n+1)+(n+1)^3`
-/

namespace A094952.P767248909526486912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135713 (n + 1) + ((n + 1) ^ 3 : ℤ)

end

end A094952.P767248909526486912

namespace A094952

/-- `A135713(n+1)+(n+1)^3` -/
def P767248909526486912.Spec : Prop :=
  ∀ n, P767248909526486912.a n = A094952 (n + 1)

end A094952

/-! ## A094952.P8800381523240231838

`A258582(n+1)+∑[(n+1)²]`
-/

namespace A094952.P8800381523240231838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258582 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A094952.P8800381523240231838

namespace A094952

/-- `A258582(n+1)+∑[(n+1)²]` -/
def P8800381523240231838.Spec : Prop :=
  ∀ n, P8800381523240231838.a n = A094952 (n + 1)

end A094952

/-!
# A094953: Triangle T(n,m) read by rows: number of rises (drops) in the compositions of n with m parts, m>=2.

The programs for A094953, there is no canonical definition to state claims against.
-/

/-! ## A094953.P5820116570408259216

`abs(A248345(n))`
-/

namespace A094953.P5820116570408259216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A248345 n|

end

end A094953.P5820116570408259216

/-! ## A094953.P7116837564834617008

`(1-C(∑[char[∑[n]]], 2)+n)*A128176(n+1)`
-/

namespace A094953.P7116837564834617008
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A128176 (n + 1)

end

end A094953.P7116837564834617008

/-! ## A094953.P9844666701811425086

`A097807(n)*A248345(n)`
-/

namespace A094953.P9844666701811425086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A248345 n

end

end A094953.P9844666701811425086

/-! ## A094953.P4286852729712749555

`gcd(A000038(n), A248345(n))`
-/

namespace A094953.P4286852729712749555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A248345 n)

end

end A094953.P4286852729712749555

/-! ## A094953.P920910432058640295

`lcm(A020985(n), A248345(n))`
-/

namespace A094953.P920910432058640295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A248345 n)

end

end A094953.P920910432058640295

/-! ## A094953.P3842475377167440732

`A002260(n+1)*A128176(n+1)`
-/

namespace A094953.P3842475377167440732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A128176 (n + 1)

end

end A094953.P3842475377167440732

/-! ## A094953.P3129173270136200298

`(A002262(n)+1)*A128176(n+1)`
-/

namespace A094953.P3129173270136200298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A128176 (n + 1)

end

end A094953.P3129173270136200298

/-! ## A094953.P10560364004224887072

`A002260(n+1)*A059260(comp[∑[n]])`
-/

namespace A094953.P10560364004224887072
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A059260 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A094953.P10560364004224887072

/-! ## A094953.P10470029618211370718

`A002260(n+1)*A135228(comp[∑[n]])`
-/

namespace A094953.P10470029618211370718
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A135228 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A094953.P10470029618211370718

/-! ## A094953.P18399822692567519094

`A002260(n+1)*A135230(comp[∑[n]])`
-/

namespace A094953.P18399822692567519094
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A135230 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A094953.P18399822692567519094

/-!
# A094954: Array T(k,n) read by antidiagonals. G.f.: x(1-x)/(1-kx+x^2), k>1.

The programs for A094954, there is no canonical definition to state claims against.
-/

/-! ## A094954.P9229305109196505883

`abs(A299045(comp[∑[n]]))`
-/

namespace A094954.P9229305109196505883
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A299045 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)|

end

end A094954.P9229305109196505883

/-! ## A094954.P5489112155954000276

`A218220(lt[1, A165253(n)])`
-/

namespace A094954.P5489112155954000276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165253 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218220 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A094954.P5489112155954000276

/-! ## A094954.P10134520741950823607

`A179943(n)-A316269(n+2)`
-/

namespace A094954.P10134520741950823607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179943 n - A316269 (n + 2)

end

end A094954.P10134520741950823607

/-! ## A094954.P8719788832329895385

`A299741(n)-a(A083920(n)-1)` with `a(0)=1, a(1)=1`
-/

namespace A094954.P8719788832329895385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A299741 n - a (A083920 n - 1).toNat

end

end A094954.P8719788832329895385

/-! ## A094954.P10741480276066089093

`A316269(comp[∑[n]]+2)-A316269(n+2)`
-/

namespace A094954.P10741480276066089093
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316269 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2) - A316269 (n + 2)

end

end A094954.P10741480276066089093

/-! ## A094954.P16163920635945905771

`A218220(lt[A158405(n+1), A085478(n)])`
-/

namespace A094954.P16163920635945905771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218220 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A094954.P16163920635945905771

/-! ## A094954.P16116720363292780035

`A218220(lt[A061017(n+2), A085478(n)])`
-/

namespace A094954.P16116720363292780035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218220 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A094954.P16116720363292780035

/-! ## A094954.P7683150289959066872

`A218220(lt[A014132(n+1), A143858(n+1)])`
-/

namespace A094954.P7683150289959066872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218220 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A094954.P7683150289959066872

/-! ## A094954.P11812400687463595826

`A218220(lt[A144217(n+2)+A144217(n+1), 1])`
-/

namespace A094954.P11812400687463595826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144217 (n + 2) + A144217 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218220 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A094954.P11812400687463595826

/-! ## A094954.P660072566549824582

`A218220(lt[A324867(n+1)+2, A008292(n+2)])`
-/

namespace A094954.P660072566549824582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324867 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218220 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A094954.P660072566549824582

/-!
# A094955: Main diagonal of array A094954.

The programs for A094955, there is no canonical definition to state claims against.
-/

/-! ## A094955.P3347726358284343810

`A097691(n+2)-(n+1)*A342167(n)`
-/

namespace A094955.P3347726358284343810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097691 (n + 2) - (n + 1 : ℤ) * A342167 n

end

end A094955.P3347726358284343810

/-! ## A094955.P2189821289740221808

`A343261(n)-A094956(A028310(n))`
-/

namespace A094955.P2189821289740221808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343261 n - A094956 (A028310 n).toNat

end

end A094955.P2189821289740221808

/-! ## A094955.P964770705471084034

`A060964((n+1)²+(n+2)²)-A094956(A028310(n))`
-/

namespace A094955.P964770705471084034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060964 ((n + 1) ^ 2 + (n + 2) ^ 2) - A094956 (A028310 n).toNat

end

end A094955.P964770705471084034

/-!
# A094956: Diagonal T(n+2,n) of array A094954.

The programs for A094956, there is no canonical definition to state claims against.
-/

/-! ## A094956.P8906816218523054284

`record[A111967(n)*A179943(n)-A316269(n+2)]`
-/

namespace A094956.P8906816218523054284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111967 n * A179943 n - A316269 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094956.P8906816218523054284

/-!
# A094957: Antidiagonal sums of array A094954.

The programs for A094957, there is no canonical definition to state claims against.
-/

/-! ## A094957.P8065321860533855197

`A101162(n)-a(n-1)` with `a(0)=1`
-/

namespace A094957.P8065321860533855197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A101162 n - a (n - 1)

end

end A094957.P8065321860533855197

/-! ## A094957.P78739035754593206

`floor(A046092(∏[n+1])^(1/3))`
-/

namespace A094957.P78739035754593206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046092 (∏ j ∈ Finset.range (n + 1), f1 j) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋

end

end A094957.P78739035754593206

/-! ## A094957.P3646023951806661784

`A056155(A150777(n))`
-/

namespace A094957.P3646023951806661784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056155 (A150777 n).toNat

end

end A094957.P3646023951806661784

/-!
# A094958: Numbers of the form 2^k or 5*2^k.

The programs for A094958, the canonical program `A094958.P10548225227132967451` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094958 has offset 1).

The definition of A094958 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094958.P10548225227132967451

`2*a(n-2)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=5`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094958

/-- `2*a(n-2)` -/
def P10548225227132967451.Spec : Prop :=
  ∀ n, (P10548225227132967451.a n : ℤ) = A094958 (n + 1)

theorem P10548225227132967451.correct : P10548225227132967451.Spec := by
  intro n
  simp only [A094958, Nat.add_sub_cancel]

end A094958

/-! ## A094958.P10780226473952077878

`a(n-2)+a(n-2)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=5`
-/

namespace A094958.P10780226473952077878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 5] fun n a =>
  a (n - 2) + a (n - 2)

end

end A094958.P10780226473952077878

namespace A094958

/-- `a(n-2)+a(n-2)` -/
def P10780226473952077878.Spec : Prop :=
  ∀ n, (P10780226473952077878.a n : ℤ) = A094958 (n + 1)

theorem P10780226473952077878.correct : P10780226473952077878.Spec := by
  intro n
  simp only [A094958, Nat.add_sub_cancel, A094958.P10780226473952077878.a, A094958.P10548225227132967451.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A094958

/-! ## A094958.P7965560121350372185

`a(n-2)/(1-1/2)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=5`
-/

namespace A094958.P7965560121350372185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 4, 5] fun n a =>
  a (n - 2) / (1 - (1 : ℚ) / 2)

end

end A094958.P7965560121350372185

namespace A094958

/-- `a(n-2)/(1-1/2)` -/
def P7965560121350372185.Spec : Prop :=
  ∀ n, P7965560121350372185.a n = (A094958 (n + 1) : ℚ)

end A094958

/-! ## A094958.P542139778554792852

`a(n-2)-xor(3-3%n, -a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A094958.P542139778554792852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) - Int.xor (3 - ((3 % n : ℕ) : ℤ)) (-a (n - 2))

end

end A094958.P542139778554792852

namespace A094958

/-- `a(n-2)-xor(3-3%n, -a(n-2))` -/
def P542139778554792852.Spec : Prop :=
  ∀ n, P542139778554792852.a n = A094958 (n + 1)

end A094958

/-! ## A094958.P13806590585518671800

`A029749(comp[3*n+4])`
-/

namespace A094958.P13806590585518671800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029749 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A094958.P13806590585518671800

namespace A094958

/-- `A029749(comp[3*n+4])` -/
def P13806590585518671800.Spec : Prop :=
  ∀ n, P13806590585518671800.a n = A094958 (n + 1)

end A094958

/-! ## A094958.P5279354826695198016

`abs(Δ[Δ[A076736(n+2)]])`
-/

namespace A094958.P5279354826695198016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076736 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A094958.P5279354826695198016

namespace A094958

/-- `abs(Δ[Δ[A076736(n+2)]])` -/
def P5279354826695198016.Spec : Prop :=
  ∀ n, P5279354826695198016.a n = A094958 (n + 1)

end A094958

/-! ## A094958.P10999425088882227208

`A029747(comp[Δ[(1-n)²]+n+3]+1)`
-/

namespace A094958.P10999425088882227208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n + 3 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A094958.P10999425088882227208

namespace A094958

/-- `A029747(comp[Δ[(1-n)²]+n+3]+1)` -/
def P10999425088882227208.Spec : Prop :=
  ∀ n, P10999425088882227208.a n = A094958 (n + 1)

end A094958

/-! ## A094958.P17561923531098836551

`∪[A151821(n+1), A084215(n)]`
-/

namespace A094958.P17561923531098836551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A094958.P17561923531098836551

namespace A094958

/-- `∪[A151821(n+1), A084215(n)]` -/
def P17561923531098836551.Spec : Prop :=
  ∀ n, (P17561923531098836551.a n : ℤ) = A094958 (n + 1)

end A094958

/-! ## A094958.P18122257312013903960

`∪[A258935(n+1), A084215(n)]`
-/

namespace A094958.P18122257312013903960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A094958.P18122257312013903960

namespace A094958

/-- `∪[A258935(n+1), A084215(n)]` -/
def P18122257312013903960.Spec : Prop :=
  ∀ n, (P18122257312013903960.a n : ℤ) = A094958 (n + 1)

end A094958

/-! ## A094958.P8458080015709718304

`∪[A029746(2*n), A084215(n)]`
-/

namespace A094958.P8458080015709718304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029746 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A094958.P8458080015709718304

namespace A094958

/-- `∪[A029746(2*n), A084215(n)]` -/
def P8458080015709718304.Spec : Prop :=
  ∀ n, (P8458080015709718304.a n : ℤ) = A094958 (n + 1)

end A094958

/-! ## A094958.P18033127021353628613

`∪[A063759(2*n), A084215(n)]`
-/

namespace A094958.P18033127021353628613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063759 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A094958.P18033127021353628613

namespace A094958

/-- `∪[A063759(2*n), A084215(n)]` -/
def P18033127021353628613.Spec : Prop :=
  ∀ n, (P18033127021353628613.a n : ℤ) = A094958 (n + 1)

end A094958

/-! ## A094958.P18407531388482600303

`∪[2*A104721(n), A104721(n)]`
-/

namespace A094958.P18407531388482600303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104721 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104721 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A094958.P18407531388482600303

namespace A094958

/-- `∪[2*A104721(n), A104721(n)]` -/
def P18407531388482600303.Spec : Prop :=
  ∀ n, (P18407531388482600303.a n : ℤ) = A094958 (n + 1)

end A094958

/-! ## A094958.P8302785657976343872

`∪[A029744(2*(n+1)), A084215(n)]`
-/

namespace A094958.P8302785657976343872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A094958.P8302785657976343872

namespace A094958

/-- `∪[A029744(2*(n+1)), A084215(n)]` -/
def P8302785657976343872.Spec : Prop :=
  ∀ n, (P8302785657976343872.a n : ℤ) = A094958 (n + 1)

end A094958

/-! ## A094958.P8245710625783751356

`∪[A164090(2*n+1), A084215(n)]`
-/

namespace A094958.P8245710625783751356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164090 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A094958.P8245710625783751356

namespace A094958

/-- `∪[A164090(2*n+1), A084215(n)]` -/
def P8245710625783751356.Spec : Prop :=
  ∀ n, (P8245710625783751356.a n : ℤ) = A094958 (n + 1)

end A094958

/-! ## A094958.P18395645288407758141

`∪[A000079(n), A084215(n)]`
-/

namespace A094958.P18395645288407758141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A094958.P18395645288407758141

namespace A094958

/-- `∪[A000079(n), A084215(n)]` -/
def P18395645288407758141.Spec : Prop :=
  ∀ n, (P18395645288407758141.a n : ℤ) = A094958 (n + 1)

end A094958

/-! ## A094958.P7860141826748397177

`A029745(n+1)/A040001(n)`
-/

namespace A094958.P7860141826748397177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029745 (n + 1) : ℚ) / (A040001 n : ℚ)

end

end A094958.P7860141826748397177

namespace A094958

/-- `A029745(n+1)/A040001(n)` -/
def P7860141826748397177.Spec : Prop :=
  ∀ n, P7860141826748397177.a n = (A094958 (n + 1) : ℚ)

end A094958

/-! ## A094958.P17836154364217645474

`and(A029746(n), A083416(n+1))`
-/

namespace A094958.P17836154364217645474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029746 n) (A083416 (n + 1))

end

end A094958.P17836154364217645474

namespace A094958

/-- `and(A029746(n), A083416(n+1))` -/
def P17836154364217645474.Spec : Prop :=
  ∀ n, P17836154364217645474.a n = A094958 (n + 1)

end A094958

/-! ## A094958.P198713553641623686

`∩[A029747(n+1), A029749(n)]`
-/

namespace A094958.P198713553641623686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029749 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094958.P198713553641623686

namespace A094958

/-- `∩[A029747(n+1), A029749(n)]` -/
def P198713553641623686.Spec : Prop :=
  ∀ n, (P198713553641623686.a n : ℤ) = A094958 (n + 1)

end A094958

/-! ## A094958.P6586086201451146421

`∪[A029744(2*(n+1)), A146523(n)]`
-/

namespace A094958.P6586086201451146421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146523 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A094958.P6586086201451146421

namespace A094958

/-- `∪[A029744(2*(n+1)), A146523(n)]` -/
def P6586086201451146421.Spec : Prop :=
  ∀ n, (P6586086201451146421.a n : ℤ) = A094958 (n + 1)

end A094958

/-!
# A094959: Number of positive integer coefficients in n-th Bernoulli polynomial.

The programs for A094959, there is no canonical definition to state claims against.
-/

/-! ## A094959.P1546753128966413787

`A094950(n+1)-floor(n/2)`
-/

namespace A094959.P1546753128966413787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094950 (n + 1) - ⌊(n : ℚ) / 2⌋

end

end A094959.P1546753128966413787

/-! ## A094959.P12147848862610990280

`abs(A094950(n+1)-A004526(n))`
-/

namespace A094959.P12147848862610990280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A094950 (n + 1) - A004526 n|

end

end A094959.P12147848862610990280

/-! ## A094959.P4543251900175770807

`A094950(n+1)+1-A008619(n)`
-/

namespace A094959.P4543251900175770807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094950 (n + 1) + 1 - A008619 n

end

end A094959.P4543251900175770807

/-! ## A094959.P7995536427418490633

`A000027(A094950(n+1)-A004526(n))`
-/

namespace A094959.P7995536427418490633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A094950 (n + 1) - A004526 n).toNat

end

end A094959.P7995536427418490633

/-! ## A094959.P8542478602255810201

`A025480(2*(A094950(n+1)-A004526(n)))`
-/

namespace A094959.P8542478602255810201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (2 * (A094950 (n + 1) - A004526 n)).toNat

end

end A094959.P8542478602255810201

/-! ## A094959.P1531742323715480422

`∑{d}[A094950(n+1)-A004526(n), A000010(#)]`
-/

namespace A094959.P1531742323715480422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094950 (n + 1) - A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A094959.P1531742323715480422

/-! ## A094959.P9419938702294099650

`∏{d}[A094950(n+1)-A004526(n), A014963(#)]`
-/

namespace A094959.P9419938702294099650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094950 (n + 1) - A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A094959.P9419938702294099650

/-! ## A094959.P7054346838855479730

`(A094950(n+1)-A004526(n))%(4*A000041(n))`
-/

namespace A094959.P7054346838855479730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094950 (n + 1) - A004526 n) (4 * A000041 n)

end

end A094959.P7054346838855479730

/-! ## A094959.P9752343531976158712

`(A094950(n+1)-A004526(n))*A007318(C(2, n))`
-/

namespace A094959.P9752343531976158712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094950 (n + 1) - A004526 n) * A007318 (Nat.choose 2 n)

end

end A094959.P9752343531976158712

/-! ## A094959.P13736544179208617600

`(A094950(n+1)-A004526(n))/A000010(C(2, n)!)`
-/

namespace A094959.P13736544179208617600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094950 (n + 1) - A004526 n : ℚ) / (A000010 (Nat.factorial (Nat.choose 2 n)) : ℚ)

end

end A094959.P13736544179208617600

/-!
# A094960: Positive integers k such that the derivative of the k-th Bernoulli polynomial B(k,x) contains only integer coefficients.

The programs for A094960, there is no canonical definition to state claims against.
-/

/-! ## A094960.P9017576746868089023

`p?[A005555(n)]-1`
-/

namespace A094960.P9017576746868089023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A094960.P9017576746868089023

/-! ## A094960.P5635963835621672546

`A319084(n+1)+1`
-/

namespace A094960.P5635963835621672546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319084 (n + 1) + 1

end

end A094960.P5635963835621672546

/-! ## A094960.P10194749678932199628

`eq[1, A318256(n)]+1`
-/

namespace A094960.P10194749678932199628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318256 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A094960.P10194749678932199628

/-! ## A094960.P2533171194106929746

`eq[1, A366189(n+1)]+1`
-/

namespace A094960.P2533171194106929746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366189 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A094960.P2533171194106929746

/-! ## A094960.P7401911623687656590

`record[A000010(A052509(n))]`
-/

namespace A094960.P7401911623687656590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A052509 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094960.P7401911623687656590

/-!
# A094963: Numbers k such that 2^k - 3*k is prime.

The programs for A094963, there is no canonical definition to state claims against.
-/

/-! ## A094963.P3361765405392092554

`A333854(A137782(n)+A002618(n+1))`
-/

namespace A094963.P3361765405392092554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333854 (A137782 n + A002618 (n + 1)).toNat

end

end A094963.P3361765405392092554

/-! ## A094963.P14700089961918320620

`A351626(A064794(n+1))+A257311(n+1)`
-/

namespace A094963.P14700089961918320620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351626 (A064794 (n + 1)).toNat + A257311 (n + 1)

end

end A094963.P14700089961918320620

/-!
# A094966: Left-hand neighbors of Fibonacci numbers in Stern's diatomic series.

The programs for A094966, the canonical program `A094966.P9582723506633354306` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094966 has offset 0).

The definition of A094966 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094966.P8123539310128885988

`ogf((x+x^2)/(1-3x^2+x^4))`
-/

namespace A094966.P8123539310128885988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, 0, -3, 0, 1] n

end

end A094966.P8123539310128885988

namespace A094966

/-- `ogf((x+x^2)/(1-3x^2+x^4))` -/
def P8123539310128885988.Spec : Prop :=
  ∀ n, P8123539310128885988.a n = A094966 n

end A094966

/-! ## A094966.P1045493684268361450

`ceil(ϕ²*a(n-2))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A094966.P1045493684268361450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  ⌈Real.goldenRatio ^ 2 * (a (n - 2) : ℝ)⌉

end

end A094966.P1045493684268361450

namespace A094966

/-- `ceil(ϕ²*a(n-2))` -/
def P1045493684268361450.Spec : Prop :=
  ∀ n, P1045493684268361450.a n = A094966 n

end A094966

/-! ## A094966.P9565482291059471571

`round(ϕ²*a(n-2))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A094966.P9565482291059471571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 * (a (n - 2) : ℝ))

end

end A094966.P9565482291059471571

namespace A094966

/-- `round(ϕ²*a(n-2))` -/
def P9565482291059471571.Spec : Prop :=
  ∀ n, P9565482291059471571.a n = A094966 n

end A094966

/-! ## A094966.P705378684531718036

`∑[floor(ϕ²*a(n-2))]` with `a(0)=0, a(1)=1`
-/

namespace A094966.P705378684531718036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ⌊Real.goldenRatio ^ 2 * (f1 (n - 2) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094966.P705378684531718036

namespace A094966

/-- `∑[floor(ϕ²*a(n-2))]` -/
def P705378684531718036.Spec : Prop :=
  ∀ n, P705378684531718036.a n = A094966 n

end A094966

/-! ## A094966.P756425943237247344

`∑[floor(ϕ*ϕ*a(n-2))]` with `a(0)=0, a(1)=1`
-/

namespace A094966.P756425943237247344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ⌊Real.goldenRatio * (Real.goldenRatio * (f1 (n - 2) : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094966.P756425943237247344

namespace A094966

/-- `∑[floor(ϕ*ϕ*a(n-2))]` -/
def P756425943237247344.Spec : Prop :=
  ∀ n, P756425943237247344.a n = A094966 n

end A094966

/-! ## A094966.P9582723506633354306

`A001906(ceil(n/2))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A094966

/-- `A001906(ceil(n/2))` -/
def P9582723506633354306.Spec : Prop :=
  ∀ n, P9582723506633354306.a n = A094966 n

theorem P9582723506633354306.correct : P9582723506633354306.Spec := by
  intro n
  simp only [A094966]

end A094966

/-! ## A094966.P1461648090063952758

`A212804(or(1, n+1))`
-/

namespace A094966.P1461648090063952758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (Nat.lor 1 (n + 1))

end

end A094966.P1461648090063952758

namespace A094966

/-- `A212804(or(1, n+1))` -/
def P1461648090063952758.Spec : Prop :=
  ∀ n, P1461648090063952758.a n = A094966 n

end A094966

/-! ## A094966.P8531162263635451624

`A295725(or(1, n+1))`
-/

namespace A094966.P8531162263635451624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295725 (Nat.lor 1 (n + 1))

end

end A094966.P8531162263635451624

namespace A094966

/-- `A295725(or(1, n+1))` -/
def P8531162263635451624.Spec : Prop :=
  ∀ n, P8531162263635451624.a n = A094966 n

end A094966

/-! ## A094966.P2533696080148189438

`A298919(or(1, n+1))`
-/

namespace A094966.P2533696080148189438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298919 (Nat.lor 1 (n + 1))

end

end A094966.P2533696080148189438

namespace A094966

/-- `A298919(or(1, n+1))` -/
def P2533696080148189438.Spec : Prop :=
  ∀ n, P2533696080148189438.a n = A094966 n

end A094966

/-! ## A094966.P10171311522710751834

`A000045(n%2+n)`
-/

namespace A094966.P10171311522710751834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n % 2 + n)

end

end A094966.P10171311522710751834

namespace A094966

/-- `A000045(n%2+n)` -/
def P10171311522710751834.Spec : Prop :=
  ∀ n, P10171311522710751834.a n = A094966 n

end A094966

/-! ## A094966.P5236263950200518191

`A000045(and(1, n)+n)`
-/

namespace A094966.P5236263950200518191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.land 1 n + n)

end

end A094966.P5236263950200518191

namespace A094966

/-- `A000045(and(1, n)+n)` -/
def P5236263950200518191.Spec : Prop :=
  ∀ n, P5236263950200518191.a n = A094966 n

end A094966

/-! ## A094966.P417598829029424153

`A103609(Δ[or(1, n²)])`
-/

namespace A094966.P417598829029424153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A094966.P417598829029424153

namespace A094966

/-- `A103609(Δ[or(1, n²)])` -/
def P417598829029424153.Spec : Prop :=
  ∀ n, P417598829029424153.a n = A094966 n

end A094966

/-! ## A094966.P12177333643905442014

`A000045(1-or(1, -n))`
-/

namespace A094966.P12177333643905442014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (1 - Int.lor 1 (-(n : ℤ))).toNat

end

end A094966.P12177333643905442014

namespace A094966

/-- `A000045(1-or(1, -n))` -/
def P12177333643905442014.Spec : Prop :=
  ∀ n, P12177333643905442014.a n = A094966 n

end A094966

/-! ## A094966.P354112848820513773

`A000045(2*ceil(n/2))`
-/

namespace A094966.P354112848820513773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * ⌈(n : ℚ) / 2⌉).toNat

end

end A094966.P354112848820513773

namespace A094966

/-- `A000045(2*ceil(n/2))` -/
def P354112848820513773.Spec : Prop :=
  ∀ n, P354112848820513773.a n = A094966 n

end A094966

/-! ## A094966.P12297978510374613027

`∑[A000045(lcm(2, n)-n)]`
-/

namespace A094966.P12297978510374613027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.lcm 2 n - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094966.P12297978510374613027

namespace A094966

/-- `∑[A000045(lcm(2, n)-n)]` -/
def P12297978510374613027.Spec : Prop :=
  ∀ n, P12297978510374613027.a n = A094966 n

end A094966

/-! ## A094966.P6249083060664718827

`∑[and(1, n)*A000045(n)]`
-/

namespace A094966.P6249083060664718827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094966.P6249083060664718827

namespace A094966

/-- `∑[and(1, n)*A000045(n)]` -/
def P6249083060664718827.Spec : Prop :=
  ∀ n, P6249083060664718827.a n = A094966 n

end A094966

/-! ## A094966.P322452033934433976

`∑[A000045(n*n²%2)]`
-/

namespace A094966.P322452033934433976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n * (n ^ 2 % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094966.P322452033934433976

namespace A094966

/-- `∑[A000045(n*n²%2)]` -/
def P322452033934433976.Spec : Prop :=
  ∀ n, P322452033934433976.a n = A094966 n

end A094966

/-! ## A094966.P4782853899662011109

`∑[A000045(n*(2-gcd(2, n)))]`
-/

namespace A094966.P4782853899662011109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((n : ℤ) * (2 - (Nat.gcd 2 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094966.P4782853899662011109

namespace A094966

/-- `∑[A000045(n*(2-gcd(2, n)))]` -/
def P4782853899662011109.Spec : Prop :=
  ∀ n, P4782853899662011109.a n = A094966 n

end A094966

/-! ## A094966.P3820206706753676498

`∑[A000045(n*char[2*n+1])]`
-/

namespace A094966.P3820206706753676498
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n * (if ∃ j, f2 j = n then 1 else 0))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094966.P3820206706753676498

namespace A094966

/-- `∑[A000045(n*char[2*n+1])]` -/
def P3820206706753676498.Spec : Prop :=
  ∀ n, P3820206706753676498.a n = A094966 n

end A094966

/-! ## A094966.P2322299736591017905

`A103609(A014601(n)+1)`
-/

namespace A094966.P2322299736591017905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A014601 n + 1).toNat

end

end A094966.P2322299736591017905

namespace A094966

/-- `A103609(A014601(n)+1)` -/
def P2322299736591017905.Spec : Prop :=
  ∀ n, P2322299736591017905.a n = A094966 n

end A094966

/-!
# A094967: Right-hand neighbors of Fibonacci numbers in Stern's diatomic series.

The programs for A094967, the canonical program `A094967.P3814088623983688805` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094967 has offset 0).

The definition of A094967 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094967.P8396639429745655255

`floor(ϕ²*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A094967.P8396639429745655255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊Real.goldenRatio ^ 2 * (a (n - 2) : ℝ)⌋

end

end A094967.P8396639429745655255

namespace A094967

/-- `floor(ϕ²*a(n-2))` -/
def P8396639429745655255.Spec : Prop :=
  ∀ n, P8396639429745655255.a n = A094967 n

end A094967

/-! ## A094967.P14040884724923237869

`floor(ϕ*ϕ*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A094967.P14040884724923237869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊Real.goldenRatio * (Real.goldenRatio * (a (n - 2) : ℝ))⌋

end

end A094967.P14040884724923237869

namespace A094967

/-- `floor(ϕ*ϕ*a(n-2))` -/
def P14040884724923237869.Spec : Prop :=
  ∀ n, P14040884724923237869.a n = A094967 n

end A094967

/-! ## A094967.P2319598533744467991

`ogf((1+x-x^2-x^3)/(1-3x^2+x^4))`
-/

namespace A094967.P2319598533744467991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1, -1] [1, 0, -3, 0, 1] n

end

end A094967.P2319598533744467991

namespace A094967

/-- `ogf((1+x-x^2-x^3)/(1-3x^2+x^4))` -/
def P2319598533744467991.Spec : Prop :=
  ∀ n, P2319598533744467991.a n = A094967 n

end A094967

/-! ## A094967.P3814088623983688805

`3*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094967

/-- `3*a(n-2)-a(n-4)` -/
def P3814088623983688805.Spec : Prop :=
  ∀ n, P3814088623983688805.a n = A094967 n

theorem P3814088623983688805.correct : P3814088623983688805.Spec := by
  intro n
  simp only [A094967]

end A094967

/-! ## A094967.P9399036633999994967

`A000045(or(1, n))`
-/

namespace A094967.P9399036633999994967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.lor 1 n)

end

end A094967.P9399036633999994967

namespace A094967

/-- `A000045(or(1, n))` -/
def P9399036633999994967.Spec : Prop :=
  ∀ n, P9399036633999994967.a n = A094967 n

end A094967

/-! ## A094967.P15205592299595551520

`A005247(or(1, n))`
-/

namespace A094967.P15205592299595551520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005247 (Nat.lor 1 n)

end

end A094967.P15205592299595551520

namespace A094967

/-- `A005247(or(1, n))` -/
def P15205592299595551520.Spec : Prop :=
  ∀ n, P15205592299595551520.a n = A094967 n

end A094967

/-! ## A094967.P7313360157061013487

`A097896(or(1, n))`
-/

namespace A094967.P7313360157061013487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097896 (Nat.lor 1 n)

end

end A094967.P7313360157061013487

namespace A094967

/-- `A097896(or(1, n))` -/
def P7313360157061013487.Spec : Prop :=
  ∀ n, P7313360157061013487.a n = A094967 n

end A094967

/-! ## A094967.P10152930960200042949

`A116697(or(1, n))`
-/

namespace A094967.P10152930960200042949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116697 (Nat.lor 1 n)

end

end A094967.P10152930960200042949

namespace A094967

/-- `A116697(or(1, n))` -/
def P10152930960200042949.Spec : Prop :=
  ∀ n, P10152930960200042949.a n = A094967 n

end A094967

/-! ## A094967.P5240299613852207363

`A152192(or(1, n))`
-/

namespace A094967.P5240299613852207363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152192 (Nat.lor 1 n)

end

end A094967.P5240299613852207363

namespace A094967

/-- `A152192(or(1, n))` -/
def P5240299613852207363.Spec : Prop :=
  ∀ n, P5240299613852207363.a n = A094967 n

end A094967

/-! ## A094967.P17505574068953657124

`A167816(or(1, n))`
-/

namespace A094967.P17505574068953657124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167816 (Nat.lor 1 n)

end

end A094967.P17505574068953657124

namespace A094967

/-- `A167816(or(1, n))` -/
def P17505574068953657124.Spec : Prop :=
  ∀ n, P17505574068953657124.a n = A094967 n

end A094967

/-! ## A094967.P2437315889196289914

`A264800(or(1, n))`
-/

namespace A094967.P2437315889196289914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264800 (Nat.lor 1 n)

end

end A094967.P2437315889196289914

namespace A094967

/-- `A264800(or(1, n))` -/
def P2437315889196289914.Spec : Prop :=
  ∀ n, P2437315889196289914.a n = A094967 n

end A094967

/-! ## A094967.P3177573512577430335

`A292412(or(1, n))`
-/

namespace A094967.P3177573512577430335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292412 (Nat.lor 1 n)

end

end A094967.P3177573512577430335

namespace A094967

/-- `A292412(or(1, n))` -/
def P3177573512577430335.Spec : Prop :=
  ∀ n, P3177573512577430335.a n = A094967 n

end A094967

/-! ## A094967.P6778535819410113270

`A122367(floor(n/2))`
-/

namespace A094967.P6778535819410113270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 ⌊(n : ℚ) / 2⌋.toNat

end

end A094967.P6778535819410113270

namespace A094967

/-- `A122367(floor(n/2))` -/
def P6778535819410113270.Spec : Prop :=
  ∀ n, P6778535819410113270.a n = A094967 n

end A094967

/-! ## A094967.P17443383653743752290

`A000071(or(1, n))+1`
-/

namespace A094967.P17443383653743752290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (Nat.lor 1 n) + 1

end

end A094967.P17443383653743752290

namespace A094967

/-- `A000071(or(1, n))+1` -/
def P17443383653743752290.Spec : Prop :=
  ∀ n, P17443383653743752290.a n = A094967 n

end A094967

/-! ## A094967.P18122210366050225719

`A053602(2*or(1, n))`
-/

namespace A094967.P18122210366050225719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * Nat.lor 1 n)

end

end A094967.P18122210366050225719

namespace A094967

/-- `A053602(2*or(1, n))` -/
def P18122210366050225719.Spec : Prop :=
  ∀ n, P18122210366050225719.a n = A094967 n

end A094967

/-! ## A094967.P14436396582026373505

`A103609(2*or(1, n))`
-/

namespace A094967.P14436396582026373505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * Nat.lor 1 n)

end

end A094967.P14436396582026373505

namespace A094967

/-- `A103609(2*or(1, n))` -/
def P14436396582026373505.Spec : Prop :=
  ∀ n, P14436396582026373505.a n = A094967 n

end A094967

/-! ## A094967.P16064060650271211227

`A105800(2*or(1, n))`
-/

namespace A094967.P16064060650271211227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105800 (2 * Nat.lor 1 n)

end

end A094967.P16064060650271211227

namespace A094967

/-- `A105800(2*or(1, n))` -/
def P16064060650271211227.Spec : Prop :=
  ∀ n, P16064060650271211227.a n = A094967 n

end A094967

/-! ## A094967.P2041591287932444112

`A302126(2*or(1, n))`
-/

namespace A094967.P2041591287932444112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (2 * Nat.lor 1 n)

end

end A094967.P2041591287932444112

namespace A094967

/-- `A302126(2*or(1, n))` -/
def P2041591287932444112.Spec : Prop :=
  ∀ n, P2041591287932444112.a n = A094967 n

end A094967

/-! ## A094967.P5693197618320667427

`A063726(or(3, 2*n))`
-/

namespace A094967.P5693197618320667427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063726 (Nat.lor 3 (2 * n))

end

end A094967.P5693197618320667427

namespace A094967

/-- `A063726(or(3, 2*n))` -/
def P5693197618320667427.Spec : Prop :=
  ∀ n, P5693197618320667427.a n = A094967 n

end A094967

/-!
# A094968: Indices of Fibonacci numbers in Stern's diatomic series A049456 regarded as a single linear sequence.

The programs for A094968, the canonical program `A094968.P453656561233284180` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094968 has offset 0).

The definition of A094968 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094968.P453656561233284180

`3*a(n-1)-a(n-2)-3*a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=4, a(2)=7, a(3)=14`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094968

/-- `3*a(n-1)-a(n-2)-3*a(n-3)+2*a(n-4)` -/
def P453656561233284180.Spec : Prop :=
  ∀ n, P453656561233284180.a n = A094968 n

theorem P453656561233284180.correct : P453656561233284180.Spec := by
  intro n
  simp only [A094968]

end A094968

/-! ## A094968.P13037172817432292429

`A006127(n)+A001045(n)`
-/

namespace A094968.P13037172817432292429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006127 n + A001045 n

end

end A094968.P13037172817432292429

namespace A094968

/-- `A006127(n)+A001045(n)` -/
def P13037172817432292429.Spec : Prop :=
  ∀ n, P13037172817432292429.a n = A094968 n

end A094968

/-! ## A094968.P5170234015140297584

`((-1)^(1+n)+2^(2+n)+3*n)/3`
-/

namespace A094968.P5170234015140297584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ (1 + n) + (2 ^ (2 + n) : ℤ) + (3 * n : ℤ) : ℚ) / 3

end

end A094968.P5170234015140297584

namespace A094968

/-- `((-1)^(1+n)+2^(2+n)+3*n)/3` -/
def P5170234015140297584.Spec : Prop :=
  ∀ n, P5170234015140297584.a n = (A094968 n : ℚ)

theorem P5170234015140297584.correct : P5170234015140297584.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A094968, Nat.add_sub_cancel, A094968.P5170234015140297584.a, A094968.P453656561233284180.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A094968, Nat.add_sub_cancel, A094968.P5170234015140297584.a, A094968.P453656561233284180.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A094968

/-! ## A094968.P11035431122609637789

`ogf((1+x-4x^2)/(1-3x+x^2+3x^3-2x^4))`
-/

namespace A094968.P11035431122609637789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -4] [1, -3, 1, 3, -2] n

end

end A094968.P11035431122609637789

namespace A094968

/-- `ogf((1+x-4x^2)/(1-3x+x^2+3x^3-2x^4))` -/
def P11035431122609637789.Spec : Prop :=
  ∀ n, P11035431122609637789.a n = A094968 n

end A094968

/-! ## A094968.P17348294554725158332

`∑[or(1, ceil(2^(n+1)/3))]`
-/

namespace A094968.P17348294554725158332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌈(2 ^ (n + 1) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094968.P17348294554725158332

namespace A094968

/-- `∑[or(1, ceil(2^(n+1)/3))]` -/
def P17348294554725158332.Spec : Prop :=
  ∀ n, P17348294554725158332.a n = A094968 n

end A094968

/-! ## A094968.P9166382132037142385

`2^n+a(n-2)+2` with `a(0)=1, a(1)=4`
-/

namespace A094968.P9166382132037142385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 ^ n + (a (n - 2) + 2)

end

end A094968.P9166382132037142385

namespace A094968

/-- `2^n+a(n-2)+2` -/
def P9166382132037142385.Spec : Prop :=
  ∀ n, (P9166382132037142385.a n : ℤ) = A094968 n

end A094968

/-! ## A094968.P1716688052295405590

`∑[2-(a(n-1)-2^n)]` with `a(0)=1`
-/

namespace A094968.P1716688052295405590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 - (f1 (n - 1) - (2 ^ n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094968.P1716688052295405590

namespace A094968

/-- `∑[2-(a(n-1)-2^n)]` -/
def P1716688052295405590.Spec : Prop :=
  ∀ n, P1716688052295405590.a n = A094968 n

end A094968

/-! ## A094968.P17967409628088174007

`2*a(n-1)-xor(1, n-2)` with `a(0)=1`
-/

namespace A094968.P17967409628088174007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - Int.xor 1 ((n : ℤ) - 2)

end

end A094968.P17967409628088174007

namespace A094968

/-- `2*a(n-1)-xor(1, n-2)` -/
def P17967409628088174007.Spec : Prop :=
  ∀ n, P17967409628088174007.a n = A094968 n

end A094968

/-! ## A094968.P7566061874605106651

`a(n-1)+or(3, a(n-1)-n)` with `a(0)=1`
-/

namespace A094968.P7566061874605106651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.lor 3 (a (n - 1) - (n : ℤ))

end

end A094968.P7566061874605106651

namespace A094968

/-- `a(n-1)+or(3, a(n-1)-n)` -/
def P7566061874605106651.Spec : Prop :=
  ∀ n, P7566061874605106651.a n = A094968 n

end A094968

/-! ## A094968.P8162408529665699622

`2*(a(n-1)+n%2)+1-n` with `a(0)=1`
-/

namespace A094968.P8162408529665699622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + ((n % 2 : ℕ) : ℤ)) + (1 - (n : ℤ))

end

end A094968.P8162408529665699622

namespace A094968

/-- `2*(a(n-1)+n%2)+1-n` -/
def P8162408529665699622.Spec : Prop :=
  ∀ n, P8162408529665699622.a n = A094968 n

end A094968

/-! ## A094968.P7023124933831232042

`∑[a(n-1)+2*(a(n-2)-1)]` with `a(0)=1, a(1)=3`
-/

namespace A094968.P7023124933831232042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + 2 * (f1 (n - 2) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094968.P7023124933831232042

namespace A094968

/-- `∑[a(n-1)+2*(a(n-2)-1)]` -/
def P7023124933831232042.Spec : Prop :=
  ∀ n, P7023124933831232042.a n = A094968 n

end A094968

/-! ## A094968.P2670569172548548291

`∑[a(n-1)-2*(1-a(n-2))]` with `a(0)=1, a(1)=3`
-/

namespace A094968.P2670569172548548291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) - 2 * (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094968.P2670569172548548291

namespace A094968

/-- `∑[a(n-1)-2*(1-a(n-2))]` -/
def P2670569172548548291.Spec : Prop :=
  ∀ n, P2670569172548548291.a n = A094968 n

end A094968

/-! ## A094968.P4634882637532268871

`2*(a(n-1)+gcd(2, n+1))-(n+1)` with `a(0)=1`
-/

namespace A094968.P4634882637532268871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + (Nat.gcd 2 (n + 1) : ℤ)) - (n + 1 : ℤ)

end

end A094968.P4634882637532268871

namespace A094968

/-- `2*(a(n-1)+gcd(2, n+1))-(n+1)` -/
def P4634882637532268871.Spec : Prop :=
  ∀ n, P4634882637532268871.a n = A094968 n

end A094968

/-! ## A094968.P3122517964445095883

`∑[a(n-2)+a(n-1)+a(n-2)-2]` with `a(0)=1, a(1)=3`
-/

namespace A094968.P3122517964445095883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 2) + (f1 (n - 1) + f1 (n - 2) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094968.P3122517964445095883

namespace A094968

/-- `∑[a(n-2)+a(n-1)+a(n-2)-2]` -/
def P3122517964445095883.Spec : Prop :=
  ∀ n, P3122517964445095883.a n = A094968 n

end A094968

/-! ## A094968.P8677432671011273316

`∑[a(n-1)-(2-a(n-1))]-a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A094968.P8677432671011273316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) - (2 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A094968.P8677432671011273316

namespace A094968

/-- `∑[a(n-1)-(2-a(n-1))]-a(n-1)` -/
def P8677432671011273316.Spec : Prop :=
  ∀ n, P8677432671011273316.a n = A094968 n

end A094968

/-! ## A094968.P2738840888930044994

`∑[A277955(n)]`
-/

namespace A094968.P2738840888930044994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094968.P2738840888930044994

namespace A094968

/-- `∑[A277955(n)]` -/
def P2738840888930044994.Spec : Prop :=
  ∀ n, P2738840888930044994.a n = A094968 n

end A094968

/-! ## A094968.P5142628030340222982

`A283642(n)+n`
-/

namespace A094968.P5142628030340222982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283642 n + (n : ℤ)

end

end A094968.P5142628030340222982

namespace A094968

/-- `A283642(n)+n` -/
def P5142628030340222982.Spec : Prop :=
  ∀ n, P5142628030340222982.a n = A094968 n

end A094968

/-! ## A094968.P2791703321094477209

`∑[A014113(n)+1]`
-/

namespace A094968.P2791703321094477209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014113 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094968.P2791703321094477209

namespace A094968

/-- `∑[A014113(n)+1]` -/
def P2791703321094477209.Spec : Prop :=
  ∀ n, P2791703321094477209.a n = A094968 n

end A094968

/-! ## A094968.P7150815915643855579

`record[A077980(n)]+n`
-/

namespace A094968.P7150815915643855579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A094968.P7150815915643855579

namespace A094968

/-- `record[A077980(n)]+n` -/
def P7150815915643855579.Spec : Prop :=
  ∀ n, P7150815915643855579.a n = A094968 n

end A094968

/-! ## A094968.P10391027437892277815

`record[A112447(n)]+n`
-/

namespace A094968.P10391027437892277815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A094968.P10391027437892277815

namespace A094968

/-- `record[A112447(n)]+n` -/
def P10391027437892277815.Spec : Prop :=
  ∀ n, P10391027437892277815.a n = A094968 n

end A094968

/-!
# A094969: a(n) = floor(5^n/2^n).

The programs for A094969, the canonical program `A094969.P16277543561004414759` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094969 has offset 0).

The definition of A094969 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(5^n/2^n)` (program `A094969.P16277543561004414759`, by `A094969.P16277543561004414759.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094969.P16277543561004414759

`floor(5^n/2^n)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094969

/-- `floor(5^n/2^n)` -/
def P16277543561004414759.Spec : Prop :=
  ∀ n, P16277543561004414759.a n = A094969 n

theorem P16277543561004414759.correct : P16277543561004414759.Spec := by
  intro n
  simp only [A094969]

end A094969

/-! ## A094969.P14683257636563788947

`ceil(A155596(n)/2^n)`
-/

namespace A094969.P14683257636563788947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155596 n : ℚ) / (2 ^ n : ℚ)⌉

end

end A094969.P14683257636563788947

namespace A094969

/-- `ceil(A155596(n)/2^n)` -/
def P14683257636563788947.Spec : Prop :=
  ∀ n, P14683257636563788947.a n = A094969 n

end A094969

/-! ## A094969.P8821698347150585495

`ceil(A074501(n)/2^n)-2`
-/

namespace A094969.P8821698347150585495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A074501 n : ℚ) / (2 ^ n : ℚ)⌉ - 2

end

end A094969.P8821698347150585495

namespace A094969

/-- `ceil(A074501(n)/2^n)-2` -/
def P8821698347150585495.Spec : Prop :=
  ∀ n, P8821698347150585495.a n = A094969 n

end A094969

/-! ## A094969.P8865565747266982210

`round(A144465(n)/A000079(n))`
-/

namespace A094969.P8865565747266982210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A144465 n : ℚ) / (A000079 n : ℚ))

end

end A094969.P8865565747266982210

namespace A094969

/-- `round(A144465(n)/A000079(n))` -/
def P8865565747266982210.Spec : Prop :=
  ∀ n, P8865565747266982210.a n = A094969 n

end A094969

/-! ## A094969.P16071729895066251382

`record[floor(A056451(n)/A029744(n+1))]`
-/

namespace A094969.P16071729895066251382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A056451 n : ℚ) / (A029744 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094969.P16071729895066251382

namespace A094969

/-- `record[floor(A056451(n)/A029744(n+1))]` -/
def P16071729895066251382.Spec : Prop :=
  ∀ n, P16071729895066251382.a n = A094969 n

end A094969

/-! ## A094969.P7856648152877005667

`record[floor(A227076(n)/A137688(n))]`
-/

namespace A094969.P7856648152877005667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A227076 n : ℚ) / (A137688 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094969.P7856648152877005667

namespace A094969

/-- `record[floor(A227076(n)/A137688(n))]` -/
def P7856648152877005667.Spec : Prop :=
  ∀ n, P7856648152877005667.a n = A094969 n

end A094969

/-! ## A094969.P6753195715747812648

`record[floor(A038243(n)/A038207(n))]`
-/

namespace A094969.P6753195715747812648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038243 n : ℚ) / (A038207 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094969.P6753195715747812648

namespace A094969

/-- `record[floor(A038243(n)/A038207(n))]` -/
def P6753195715747812648.Spec : Prop :=
  ∀ n, P6753195715747812648.a n = A094969 n

end A094969

/-! ## A094969.P9342664605975696293

`record[floor(A038303(n)/A038231(n))]`
-/

namespace A094969.P9342664605975696293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038303 n : ℚ) / (A038231 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094969.P9342664605975696293

namespace A094969

/-- `record[floor(A038303(n)/A038231(n))]` -/
def P9342664605975696293.Spec : Prop :=
  ∀ n, P9342664605975696293.a n = A094969 n

end A094969

/-! ## A094969.P10091340082085217073

`record[floor(A193685(n)/A038719(n))]`
-/

namespace A094969.P10091340082085217073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A193685 n : ℚ) / (A038719 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094969.P10091340082085217073

namespace A094969

/-- `record[floor(A193685(n)/A038719(n))]` -/
def P10091340082085217073.Spec : Prop :=
  ∀ n, P10091340082085217073.a n = A094969 n

end A094969

/-!
# A094970: a(n) = floor(7^n/2^n).

The programs for A094970, the canonical program `A094970.P17154843575112122507` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094970 has offset 0).

The definition of A094970 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(7^n/2^n)` (program `A094970.P17154843575112122507`, by `A094970.P17154843575112122507.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094970.P17154843575112122507

`floor(7^n/2^n)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094970

/-- `floor(7^n/2^n)` -/
def P17154843575112122507.Spec : Prop :=
  ∀ n, P17154843575112122507.a n = A094970 n

theorem P17154843575112122507.correct : P17154843575112122507.Spec := by
  intro n
  simp only [A094970]

end A094970

/-! ## A094970.P11086154667644611264

`ceil(A155598(n)/2^n)`
-/

namespace A094970.P11086154667644611264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155598 n : ℚ) / (2 ^ n : ℚ)⌉

end

end A094970.P11086154667644611264

namespace A094970

/-- `ceil(A155598(n)/2^n)` -/
def P11086154667644611264.Spec : Prop :=
  ∀ n, P11086154667644611264.a n = A094970 n

end A094970

/-! ## A094970.P7873224270741108402

`record[floor(A027466(n)/A038207(n))]`
-/

namespace A094970.P7873224270741108402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A027466 n : ℚ) / (A038207 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094970.P7873224270741108402

namespace A094970

/-- `record[floor(A027466(n)/A038207(n))]` -/
def P7873224270741108402.Spec : Prop :=
  ∀ n, P7873224270741108402.a n = A094970 n

end A094970

/-! ## A094970.P10762573311993391582

`record[floor(A027466(n)/A090802(n))]`
-/

namespace A094970.P10762573311993391582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A027466 n : ℚ) / (A090802 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094970.P10762573311993391582

namespace A094970

/-- `record[floor(A027466(n)/A090802(n))]` -/
def P10762573311993391582.Spec : Prop :=
  ∀ n, P10762573311993391582.a n = A094970 n

end A094970

/-! ## A094970.P9799611165848145983

`record[floor(A218017(n)/A090802(n))]`
-/

namespace A094970.P9799611165848145983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A218017 n : ℚ) / (A090802 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094970.P9799611165848145983

namespace A094970

/-- `record[floor(A218017(n)/A090802(n))]` -/
def P9799611165848145983.Spec : Prop :=
  ∀ n, P9799611165848145983.a n = A094970 n

end A094970

/-! ## A094970.P1763824049924472253

`record[floor(A075502(n+1)/A075497(n+1))]`
-/

namespace A094970.P1763824049924472253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075502 (n + 1) : ℚ) / (A075497 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094970.P1763824049924472253

namespace A094970

/-- `record[floor(A075502(n+1)/A075497(n+1))]` -/
def P1763824049924472253.Spec : Prop :=
  ∀ n, P1763824049924472253.a n = A094970 n

end A094970

/-!
# A094971: a(n) = floor(9^n/2^n).

The programs for A094971, the canonical program `A094971.P10335384349693614892` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094971 has offset 0).

The definition of A094971 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(9^n/2^n)` (program `A094971.P10335384349693614892`, by `A094971.P10335384349693614892.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094971.P10335384349693614892

`floor(9^n/2^n)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094971

/-- `floor(9^n/2^n)` -/
def P10335384349693614892.Spec : Prop :=
  ∀ n, P10335384349693614892.a n = A094971 n

theorem P10335384349693614892.correct : P10335384349693614892.Spec := by
  intro n
  simp only [A094971]

end A094971

/-! ## A094971.P18151990652945230040

`ceil(A155600(n)/2^n)`
-/

namespace A094971.P18151990652945230040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155600 n : ℚ) / (2 ^ n : ℚ)⌉

end

end A094971.P18151990652945230040

namespace A094971

/-- `ceil(A155600(n)/2^n)` -/
def P18151990652945230040.Spec : Prop :=
  ∀ n, P18151990652945230040.a n = A094971 n

end A094971

/-! ## A094971.P16951533177871072717

`ceil((A001019(n)+1)/2^n)-1`
-/

namespace A094971.P16951533177871072717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001019 n + 1 : ℚ) / (2 ^ n : ℚ)⌉ - 1

end

end A094971.P16951533177871072717

namespace A094971

/-- `ceil((A001019(n)+1)/2^n)-1` -/
def P16951533177871072717.Spec : Prop :=
  ∀ n, P16951533177871072717.a n = A094971 n

end A094971

/-! ## A094971.P12011320591544967673

`record[floor(A000244(n)/A143095(n))]`
-/

namespace A094971.P12011320591544967673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000244 n : ℚ) / (A143095 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094971.P12011320591544967673

namespace A094971

/-- `record[floor(A000244(n)/A143095(n))]` -/
def P12011320591544967673.Spec : Prop :=
  ∀ n, P12011320591544967673.a n = A094971 n

end A094971

/-! ## A094971.P3297469501643613414

`(A001019(n)-A138998(n))/A000079(n)`
-/

namespace A094971.P3297469501643613414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001019 n - A138998 n : ℚ) / (A000079 n : ℚ)

end

end A094971.P3297469501643613414

namespace A094971

/-- `(A001019(n)-A138998(n))/A000079(n)` -/
def P3297469501643613414.Spec : Prop :=
  ∀ n, P3297469501643613414.a n = (A094971 n : ℚ)

end A094971

/-! ## A094971.P12978073303168277867

`record[floor(A038291(n)/A013620(n))]`
-/

namespace A094971.P12978073303168277867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038291 n : ℚ) / (A013620 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094971.P12978073303168277867

namespace A094971

/-- `record[floor(A038291(n)/A013620(n))]` -/
def P12978073303168277867.Spec : Prop :=
  ∀ n, P12978073303168277867.a n = A094971 n

end A094971

/-! ## A094971.P4379575363721814970

`record[floor(A038291(n)/A038207(n))]`
-/

namespace A094971.P4379575363721814970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038291 n : ℚ) / (A038207 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094971.P4379575363721814970

namespace A094971

/-- `record[floor(A038291(n)/A038207(n))]` -/
def P4379575363721814970.Spec : Prop :=
  ∀ n, P4379575363721814970.a n = A094971 n

end A094971

/-!
# A094972: a(n) = floor(11^n/2^n).

The programs for A094972, the canonical program `A094972.P9714831991875585480` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094972 has offset 0).

The definition of A094972 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(11^n/2^n)` (program `A094972.P9714831991875585480`, by `A094972.P9714831991875585480.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094972.P13986586796338522508

`floor((11/2)^n)`
-/

namespace A094972.P13986586796338522508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((11 : ℚ) / 2) ^ n⌋

end

end A094972.P13986586796338522508

namespace A094972

/-- `floor((11/2)^n)` -/
def P13986586796338522508.Spec : Prop :=
  ∀ n, P13986586796338522508.a n = A094972 n

end A094972

/-! ## A094972.P9714831991875585480

`floor(11^n/2^n)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094972

/-- `floor(11^n/2^n)` -/
def P9714831991875585480.Spec : Prop :=
  ∀ n, P9714831991875585480.a n = A094972 n

theorem P9714831991875585480.correct : P9714831991875585480.Spec := by
  intro n
  simp only [A094972]

end A094972

/-! ## A094972.P16035848443660266337

`ceil(A155622(n)/2^n)`
-/

namespace A094972.P16035848443660266337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155622 n : ℚ) / (2 ^ n : ℚ)⌉

end

end A094972.P16035848443660266337

namespace A094972

/-- `ceil(A155622(n)/2^n)` -/
def P16035848443660266337.Spec : Prop :=
  ∀ n, P16035848443660266337.a n = A094972 n

end A094972

/-! ## A094972.P10345898114604405024

`record[floor(A038315(n)/A038207(n))]`
-/

namespace A094972.P10345898114604405024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038315 n : ℚ) / (A038207 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094972.P10345898114604405024

namespace A094972

/-- `record[floor(A038315(n)/A038207(n))]` -/
def P10345898114604405024.Spec : Prop :=
  ∀ n, P10345898114604405024.a n = A094972 n

end A094972

/-! ## A094972.P17245867690181181777

`record[floor(A218018(n)/A090802(n))]`
-/

namespace A094972.P17245867690181181777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A218018 n : ℚ) / (A090802 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094972.P17245867690181181777

namespace A094972

/-- `record[floor(A218018(n)/A090802(n))]` -/
def P17245867690181181777.Spec : Prop :=
  ∀ n, P17245867690181181777.a n = A094972 n

end A094972

/-!
# A094973: Square numbers which equal a triangular number times an odd number between 1 and 15.

The programs for A094973, there is no canonical definition to state claims against.
-/

/-! ## A094973.P14752827817741645601

`A123503(A000041(comp[∑[n-1]]))²`
-/

namespace A094973.P14752827817741645601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123503 (A000041 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat ^ 2

end

end A094973.P14752827817741645601

/-! ## A094973.P2837043368721548826

`record[A053143(A069088(n+1))%A172001(n+1)]`
-/

namespace A094973.P2837043368721548826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053143 (A069088 (n + 1)).toNat) (A172001 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094973.P2837043368721548826

/-!
# A094974: a(n) = floor(5^n/3^n).

The programs for A094974, the canonical program `A094974.P4722071451771150561` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094974 has offset 0).

The definition of A094974 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(5^n/3^n)` (program `A094974.P4722071451771150561`, by `A094974.P4722071451771150561.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094974.P4722071451771150561

`floor(5^n/3^n)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094974

/-- `floor(5^n/3^n)` -/
def P4722071451771150561.Spec : Prop :=
  ∀ n, P4722071451771150561.a n = A094974 n

theorem P4722071451771150561.correct : P4722071451771150561.Spec := by
  intro n
  simp only [A094974]

end A094974

/-! ## A094974.P5689808454688229648

`ceil(A057428(n)+sqrt((25/9)^n))`
-/

namespace A094974.P5689808454688229648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057428 n : ℝ) + Real.sqrt (((25 : ℚ) / 9) ^ n : ℝ)⌉

end

end A094974.P5689808454688229648

namespace A094974

/-- `ceil(A057428(n)+sqrt((25/9)^n))` -/
def P5689808454688229648.Spec : Prop :=
  ∀ n, P5689808454688229648.a n = A094974 n

end A094974

/-! ## A094974.P958814944472961548

`ceil(A155610(n)/3^n)`
-/

namespace A094974.P958814944472961548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155610 n : ℚ) / (3 ^ n : ℚ)⌉

end

end A094974.P958814944472961548

namespace A094974

/-- `ceil(A155610(n)/3^n)` -/
def P958814944472961548.Spec : Prop :=
  ∀ n, P958814944472961548.a n = A094974 n

end A094974

/-! ## A094974.P9845281867740886862

`round(∑[A005054(n)/A008776(n)])`
-/

namespace A094974.P9845281867740886862
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005054 n : ℚ) / (A008776 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A094974.P9845281867740886862

namespace A094974

/-- `round(∑[A005054(n)/A008776(n)])` -/
def P9845281867740886862.Spec : Prop :=
  ∀ n, P9845281867740886862.a n = A094974 n

end A094974

/-! ## A094974.P3394143391731124055

`floor(A034474(n)/A034472(n))%A133326(n+1)`
-/

namespace A094974.P3394143391731124055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A034474 n : ℚ) / (A034472 n : ℚ)⌋ (A133326 (n + 1))

end

end A094974.P3394143391731124055

namespace A094974

/-- `floor(A034474(n)/A034472(n))%A133326(n+1)` -/
def P3394143391731124055.Spec : Prop :=
  ∀ n, P3394143391731124055.a n = A094974 n

end A094974

/-! ## A094974.P4282096355160707816

`round(A081625(n)/A048473(n))`
-/

namespace A094974.P4282096355160707816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A081625 n : ℚ) / (A048473 n : ℚ))

end

end A094974.P4282096355160707816

namespace A094974

/-- `round(A081625(n)/A048473(n))` -/
def P4282096355160707816.Spec : Prop :=
  ∀ n, P4282096355160707816.a n = A094974 n

end A094974

/-! ## A094974.P15663581402973905961

`round(A081625(n)/A081632(n))`
-/

namespace A094974.P15663581402973905961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A081625 n : ℚ) / (A081632 n : ℚ))

end

end A094974.P15663581402973905961

namespace A094974

/-- `round(A081625(n)/A081632(n))` -/
def P15663581402973905961.Spec : Prop :=
  ∀ n, P15663581402973905961.a n = A094974 n

end A094974

/-!
# A094975: a(n) = floor(7^n/3^n).

The programs for A094975, the canonical program `A094975.P1375662063728065972` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094975 has offset 0).

The definition of A094975 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(7^n/3^n)` (program `A094975.P1375662063728065972`, by `A094975.P1375662063728065972.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094975.P1375662063728065972

`floor(7^n/3^n)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094975

/-- `floor(7^n/3^n)` -/
def P1375662063728065972.Spec : Prop :=
  ∀ n, P1375662063728065972.a n = A094975 n

theorem P1375662063728065972.correct : P1375662063728065972.Spec := by
  intro n
  simp only [A094975]

end A094975

/-! ## A094975.P3588069685189260343

`ceil(A155612(n)/3^n)`
-/

namespace A094975.P3588069685189260343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155612 n : ℚ) / (3 ^ n : ℚ)⌉

end

end A094975.P3588069685189260343

namespace A094975

/-- `ceil(A155612(n)/3^n)` -/
def P3588069685189260343.Spec : Prop :=
  ∀ n, P3588069685189260343.a n = A094975 n

end A094975

/-! ## A094975.P7220092664738840587

`ceil((7^n+1-3^n)/A000244(n))`
-/

namespace A094975.P7220092664738840587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((7 ^ n : ℤ) + (1 - (3 ^ n : ℤ)) : ℚ) / (A000244 n : ℚ)⌉

end

end A094975.P7220092664738840587

namespace A094975

/-- `ceil((7^n+1-3^n)/A000244(n))` -/
def P7220092664738840587.Spec : Prop :=
  ∀ n, P7220092664738840587.a n = A094975 n

end A094975

/-! ## A094975.P13861664845561010753

`floor(A190541(n)/A000244(n))+1`
-/

namespace A094975.P13861664845561010753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A190541 n : ℚ) / (A000244 n : ℚ)⌋ + 1

end

end A094975.P13861664845561010753

namespace A094975

/-- `floor(A190541(n)/A000244(n))+1` -/
def P13861664845561010753.Spec : Prop :=
  ∀ n, P13861664845561010753.a n = A094975 n

end A094975

/-! ## A094975.P6638623482326058378

`(A000420(n)-A138617(n))/A000244(n)`
-/

namespace A094975.P6638623482326058378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000420 n - A138617 n : ℚ) / (A000244 n : ℚ)

end

end A094975.P6638623482326058378

namespace A094975

/-- `(A000420(n)-A138617(n))/A000244(n)` -/
def P6638623482326058378.Spec : Prop :=
  ∀ n, P6638623482326058378.a n = (A094975 n : ℚ)

end A094975

/-! ## A094975.P4287355833947247920

`round(A081657(n)/A081632(n))`
-/

namespace A094975.P4287355833947247920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A081657 n : ℚ) / (A081632 n : ℚ))

end

end A094975.P4287355833947247920

namespace A094975

/-- `round(A081657(n)/A081632(n))` -/
def P4287355833947247920.Spec : Prop :=
  ∀ n, P4287355833947247920.a n = A094975 n

end A094975

/-! ## A094975.P9540539806285009749

`round(A261120(n+1)/A000244(n+1))`
-/

namespace A094975.P9540539806285009749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A261120 (n + 1) : ℚ) / (A000244 (n + 1) : ℚ))

end

end A094975.P9540539806285009749

namespace A094975

/-- `round(A261120(n+1)/A000244(n+1))` -/
def P9540539806285009749.Spec : Prop :=
  ∀ n, P9540539806285009749.a n = A094975 n

end A094975

/-! ## A094975.P14880102445172892022

`round(A081657(n)/A117855(2*(n+1)))`
-/

namespace A094975.P14880102445172892022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A081657 n : ℚ) / (A117855 (2 * (n + 1)) : ℚ))

end

end A094975.P14880102445172892022

namespace A094975

/-- `round(A081657(n)/A117855(2*(n+1)))` -/
def P14880102445172892022.Spec : Prop :=
  ∀ n, P14880102445172892022.a n = A094975 n

end A094975

/-!
# A094976: a(n) = floor(8^n/3^n).

The programs for A094976, the canonical program `A094976.P16757330445099242383` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094976 has offset 0).

The definition of A094976 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(8^n/3^n)` (program `A094976.P16757330445099242383`, by `A094976.P16757330445099242383.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094976.P16757330445099242383

`floor(8^n/3^n)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094976

/-- `floor(8^n/3^n)` -/
def P16757330445099242383.Spec : Prop :=
  ∀ n, P16757330445099242383.a n = A094976 n

theorem P16757330445099242383.correct : P16757330445099242383.Spec := by
  intro n
  simp only [A094976]

end A094976

/-! ## A094976.P7573924054673314400

`ceil(A155613(n)/3^n)`
-/

namespace A094976.P7573924054673314400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155613 n : ℚ) / (3 ^ n : ℚ)⌉

end

end A094976.P7573924054673314400

namespace A094976

/-- `ceil(A155613(n)/3^n)` -/
def P7573924054673314400.Spec : Prop :=
  ∀ n, P7573924054673314400.a n = A094976 n

end A094976

/-! ## A094976.P1801296587578536964

`(A001018(n)-A138955(n))/A000244(n)`
-/

namespace A094976.P1801296587578536964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001018 n - A138955 n : ℚ) / (A000244 n : ℚ)

end

end A094976.P1801296587578536964

namespace A094976

/-- `(A001018(n)-A138955(n))/A000244(n)` -/
def P1801296587578536964.Spec : Prop :=
  ∀ n, P1801296587578536964.a n = (A094976 n : ℚ)

end A094976

/-! ## A094976.P11198162579271585521

`record[floor(A038279(n)/A027465(n))]`
-/

namespace A094976.P11198162579271585521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038279 n : ℚ) / (A027465 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094976.P11198162579271585521

namespace A094976

/-- `record[floor(A038279(n)/A027465(n))]` -/
def P11198162579271585521.Spec : Prop :=
  ∀ n, P11198162579271585521.a n = A094976 n

end A094976

/-! ## A094976.P16412901590609980823

`record[floor(A038279(n)/A038220(n))]`
-/

namespace A094976.P16412901590609980823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038279 n : ℚ) / (A038220 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094976.P16412901590609980823

namespace A094976

/-- `record[floor(A038279(n)/A038220(n))]` -/
def P16412901590609980823.Spec : Prop :=
  ∀ n, P16412901590609980823.a n = A094976 n

end A094976

/-! ## A094976.P7414759997390203382

`record[floor(A038281(n)/A038220(n))]`
-/

namespace A094976.P7414759997390203382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038281 n : ℚ) / (A038220 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094976.P7414759997390203382

namespace A094976

/-- `record[floor(A038281(n)/A038220(n))]` -/
def P7414759997390203382.Spec : Prop :=
  ∀ n, P7414759997390203382.a n = A094976 n

end A094976

/-! ## A094976.P14227181366133128546

`ceil(A155543(2*n)/A026549(2*n))-1`
-/

namespace A094976.P14227181366133128546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155543 (2 * n) : ℚ) / (A026549 (2 * n) : ℚ)⌉ - 1

end

end A094976.P14227181366133128546

namespace A094976

/-- `ceil(A155543(2*n)/A026549(2*n))-1` -/
def P14227181366133128546.Spec : Prop :=
  ∀ n, P14227181366133128546.a n = A094976 n

end A094976

/-!
# A094977: a(n) = floor(10^n/3^n).

The programs for A094977, the canonical program `A094977.P9496402668753072202` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094977 has offset 0).

The definition of A094977 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(10^n/3^n)` (program `A094977.P9496402668753072202`, by `A094977.P9496402668753072202.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094977.P9496402668753072202

`floor(10^n/3^n)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094977

/-- `floor(10^n/3^n)` -/
def P9496402668753072202.Spec : Prop :=
  ∀ n, P9496402668753072202.a n = A094977 n

theorem P9496402668753072202.correct : P9496402668753072202.Spec := by
  intro n
  simp only [A094977]

end A094977

/-! ## A094977.P16168063536847305913

`ceil(A155615(n)/3^n)`
-/

namespace A094977.P16168063536847305913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155615 n : ℚ) / (3 ^ n : ℚ)⌉

end

end A094977.P16168063536847305913

namespace A094977

/-- `ceil(A155615(n)/3^n)` -/
def P16168063536847305913.Spec : Prop :=
  ∀ n, P16168063536847305913.a n = A094977 n

end A094977

/-! ## A094977.P1057890813061516184

`ceil(A050621(n+1)/3^n)-1`
-/

namespace A094977.P1057890813061516184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A050621 (n + 1) : ℚ) / (3 ^ n : ℚ)⌉ - 1

end

end A094977.P1057890813061516184

namespace A094977

/-- `ceil(A050621(n+1)/3^n)-1` -/
def P1057890813061516184.Spec : Prop :=
  ∀ n, P1057890813061516184.a n = A094977 n

end A094977

/-! ## A094977.P13773129016120613184

`record[floor(A038303(n)/A027465(n))]`
-/

namespace A094977.P13773129016120613184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038303 n : ℚ) / (A027465 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094977.P13773129016120613184

namespace A094977

/-- `record[floor(A038303(n)/A027465(n))]` -/
def P13773129016120613184.Spec : Prop :=
  ∀ n, P13773129016120613184.a n = A094977 n

end A094977

/-! ## A094977.P9667892160823281656

`record[floor(A038336(n)/A038329(n))]`
-/

namespace A094977.P9667892160823281656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038336 n : ℚ) / (A038329 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094977.P9667892160823281656

namespace A094977

/-- `record[floor(A038336(n)/A038329(n))]` -/
def P9667892160823281656.Spec : Prop :=
  ∀ n, P9667892160823281656.a n = A094977 n

end A094977

/-!
# A094978: a(n) = floor(11^n/3^n).

The programs for A094978, the canonical program `A094978.P13500023531592463708` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094978 has offset 0).

The definition of A094978 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(11^n/3^n)` (program `A094978.P13500023531592463708`, by `A094978.P13500023531592463708.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094978.P13500023531592463708

`floor(11^n/3^n)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094978

/-- `floor(11^n/3^n)` -/
def P13500023531592463708.Spec : Prop :=
  ∀ n, P13500023531592463708.a n = A094978 n

theorem P13500023531592463708.correct : P13500023531592463708.Spec := by
  intro n
  simp only [A094978]

end A094978

/-! ## A094978.P6647852724350151796

`ceil(A155624(n)/3^n)`
-/

namespace A094978.P6647852724350151796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155624 n : ℚ) / (3 ^ n : ℚ)⌉

end

end A094978.P6647852724350151796

namespace A094978

/-- `ceil(A155624(n)/3^n)` -/
def P6647852724350151796.Spec : Prop :=
  ∀ n, P6647852724350151796.a n = A094978 n

end A094978

/-! ## A094978.P5809963963234893754

`ceil((A001020(n)-A024023(n))/3^n)`
-/

namespace A094978.P5809963963234893754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001020 n - A024023 n : ℚ) / (3 ^ n : ℚ)⌉

end

end A094978.P5809963963234893754

namespace A094978

/-- `ceil((A001020(n)-A024023(n))/3^n)` -/
def P5809963963234893754.Spec : Prop :=
  ∀ n, P5809963963234893754.a n = A094978 n

end A094978

/-! ## A094978.P5899983631776159715

`round(cosh(log(2*11^n/A000244(n)-1)))`
-/

namespace A094978.P5899983631776159715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log ((2 * 11 ^ n : ℚ) / (A000244 n : ℚ) - 1 : ℝ)))

end

end A094978.P5899983631776159715

namespace A094978

/-- `round(cosh(log(2*11^n/A000244(n)-1)))` -/
def P5899983631776159715.Spec : Prop :=
  ∀ n, P5899983631776159715.a n = A094978 n

end A094978

/-! ## A094978.P5610487681473346889

`record[floor(A038315(n)/A027465(n))]`
-/

namespace A094978.P5610487681473346889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038315 n : ℚ) / (A027465 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094978.P5610487681473346889

namespace A094978

/-- `record[floor(A038315(n)/A027465(n))]` -/
def P5610487681473346889.Spec : Prop :=
  ∀ n, P5610487681473346889.a n = A094978 n

end A094978

/-! ## A094978.P13098378285894843906

`record[floor(A218018(n)/A217629(n))]`
-/

namespace A094978.P13098378285894843906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A218018 n : ℚ) / (A217629 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094978.P13098378285894843906

namespace A094978

/-- `record[floor(A218018(n)/A217629(n))]` -/
def P13098378285894843906.Spec : Prop :=
  ∀ n, P13098378285894843906.a n = A094978 n

end A094978

/-!
# A094980: a(n) = floor(7^n/4^n).

The programs for A094980, the canonical program `A094980.P448631960235044621` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094980 has offset 0).

The definition of A094980 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(7^n/4^n)` (program `A094980.P448631960235044621`, by `A094980.P448631960235044621.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094980.P448631960235044621

`floor(7^n/4^n)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094980

/-- `floor(7^n/4^n)` -/
def P448631960235044621.Spec : Prop :=
  ∀ n, P448631960235044621.a n = A094980 n

theorem P448631960235044621.correct : P448631960235044621.Spec := by
  intro n
  simp only [A094980]

end A094980

/-! ## A094980.P4196908857381445607

`(A094970(n)-A211995(n))/A000079(n)`
-/

namespace A094980.P4196908857381445607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094970 n - A211995 n : ℚ) / (A000079 n : ℚ)

end

end A094980.P4196908857381445607

namespace A094980

/-- `(A094970(n)-A211995(n))/A000079(n)` -/
def P4196908857381445607.Spec : Prop :=
  ∀ n, P4196908857381445607.a n = (A094980 n : ℚ)

end A094980

/-! ## A094980.P7599792354995151464

`(A094970(n)-A211995(n))/Δ[A000051(n)]`
-/

namespace A094980.P7599792354995151464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094970 n - A211995 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A094980.P7599792354995151464

namespace A094980

/-- `(A094970(n)-A211995(n))/Δ[A000051(n)]` -/
def P7599792354995151464.Spec : Prop :=
  ∀ n, P7599792354995151464.a n = (A094980 n : ℚ)

end A094980

/-! ## A094980.P18013273244762897851

`(A094970(n)-A211995(n))/Δ[A000225(n)]`
-/

namespace A094980.P18013273244762897851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094970 n - A211995 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A094980.P18013273244762897851

namespace A094980

/-- `(A094970(n)-A211995(n))/Δ[A000225(n)]` -/
def P18013273244762897851.Spec : Prop :=
  ∀ n, P18013273244762897851.a n = (A094980 n : ℚ)

end A094980

/-! ## A094980.P2167511636057022448

`ceil(A155628(n)/4^n)`
-/

namespace A094980.P2167511636057022448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155628 n : ℚ) / (4 ^ n : ℚ)⌉

end

end A094980.P2167511636057022448

namespace A094980

/-- `ceil(A155628(n)/4^n)` -/
def P2167511636057022448.Spec : Prop :=
  ∀ n, P2167511636057022448.a n = A094980 n

end A094980

/-!
# A094981: a(n) = floor(9^n/4^n).

The programs for A094981, the canonical program `A094981.P14200821001891904381` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094981 has offset 0).

The definition of A094981 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(9^n/4^n)` (program `A094981.P14200821001891904381`, by `A094981.P14200821001891904381.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094981.P7183662920291199062

`floor((9/4)^n)`
-/

namespace A094981.P7183662920291199062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((9 : ℚ) / 4) ^ n⌋

end

end A094981.P7183662920291199062

namespace A094981

/-- `floor((9/4)^n)` -/
def P7183662920291199062.Spec : Prop :=
  ∀ n, P7183662920291199062.a n = A094981 n

end A094981

/-! ## A094981.P14200821001891904381

`floor(9^n/4^n)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094981

/-- `floor(9^n/4^n)` -/
def P14200821001891904381.Spec : Prop :=
  ∀ n, P14200821001891904381.a n = A094981 n

theorem P14200821001891904381.correct : P14200821001891904381.Spec := by
  intro n
  simp only [A094981]

end A094981

/-! ## A094981.P10004674523464135640

`A002379(2*n)`
-/

namespace A094981.P10004674523464135640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002379 (2 * n)

end

end A094981.P10004674523464135640

namespace A094981

/-- `A002379(2*n)` -/
def P10004674523464135640.Spec : Prop :=
  ∀ n, P10004674523464135640.a n = A094981 n

end A094981

/-! ## A094981.P49800566857239376

`A014215(4*n)`
-/

namespace A094981.P49800566857239376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014215 (4 * n)

end

end A094981.P49800566857239376

namespace A094981

/-- `A014215(4*n)` -/
def P49800566857239376.Spec : Prop :=
  ∀ n, P49800566857239376.a n = A094981 n

end A094981

/-! ## A094981.P5300972138171785615

`xor(n, xor(n, A002379(n+n)))`
-/

namespace A094981.P5300972138171785615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (n : ℤ) (A002379 (n + n)))

end

end A094981.P5300972138171785615

namespace A094981

/-- `xor(n, xor(n, A002379(n+n)))` -/
def P5300972138171785615.Spec : Prop :=
  ∀ n, P5300972138171785615.a n = A094981 n

end A094981

/-! ## A094981.P3350141622527809301

`record[A002379((∑[n]+n)%(n+1))]`
-/

namespace A094981.P3350141622527809301
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002379 ((∑ j ∈ Finset.range (n + 1), f2 j + n) % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094981.P3350141622527809301

namespace A094981

/-- `record[A002379((∑[n]+n)%(n+1))]` -/
def P3350141622527809301.Spec : Prop :=
  ∀ n, P3350141622527809301.a n = A094981 n

end A094981

/-! ## A094981.P5601954287045362017

`record[A002379(A049711(n+3)+n)]`
-/

namespace A094981.P5601954287045362017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002379 (A049711 (n + 3) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094981.P5601954287045362017

namespace A094981

/-- `record[A002379(A049711(n+3)+n)]` -/
def P5601954287045362017.Spec : Prop :=
  ∀ n, P5601954287045362017.a n = A094981 n

end A094981

/-! ## A094981.P16793058653911278361

`A002379(n+n)/A001221(A001316(n+1))`
-/

namespace A094981.P16793058653911278361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002379 (n + n) : ℚ) / (A001221 (A001316 (n + 1)).toNat : ℚ)

end

end A094981.P16793058653911278361

namespace A094981

/-- `A002379(n+n)/A001221(A001316(n+1))` -/
def P16793058653911278361.Spec : Prop :=
  ∀ n, P16793058653911278361.a n = (A094981 n : ℚ)

end A094981

/-! ## A094981.P7212008562414428605

`ceil(A155630(n)/4^n)`
-/

namespace A094981.P7212008562414428605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155630 n : ℚ) / (4 ^ n : ℚ)⌉

end

end A094981.P7212008562414428605

namespace A094981

/-- `ceil(A155630(n)/4^n)` -/
def P7212008562414428605.Spec : Prop :=
  ∀ n, P7212008562414428605.a n = A094981 n

end A094981

/-! ## A094981.P14135033698679611932

`record[floor(A000244(n)/A143095(n)²)]`
-/

namespace A094981.P14135033698679611932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000244 n : ℚ) / (A143095 n ^ 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094981.P14135033698679611932

namespace A094981

/-- `record[floor(A000244(n)/A143095(n)²)]` -/
def P14135033698679611932.Spec : Prop :=
  ∀ n, P14135033698679611932.a n = A094981 n

end A094981

/-! ## A094981.P470549630383364908

`ceil(A083323(2*n)/A000079(n)²)`
-/

namespace A094981.P470549630383364908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A083323 (2 * n) : ℚ) / (A000079 n ^ 2 : ℚ)⌉

end

end A094981.P470549630383364908

namespace A094981

/-- `ceil(A083323(2*n)/A000079(n)²)` -/
def P470549630383364908.Spec : Prop :=
  ∀ n, P470549630383364908.a n = A094981 n

end A094981

/-! ## A094981.P681359487446495275

`ceil(A083323(2*n)/A000079(2*n))`
-/

namespace A094981.P681359487446495275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A083323 (2 * n) : ℚ) / (A000079 (2 * n) : ℚ)⌉

end

end A094981.P681359487446495275

namespace A094981

/-- `ceil(A083323(2*n)/A000079(2*n))` -/
def P681359487446495275.Spec : Prop :=
  ∀ n, P681359487446495275.a n = A094981 n

end A094981

/-! ## A094981.P13517391124503681518

`ceil(A002783(2*n)/A126646(2*n))`
-/

namespace A094981.P13517391124503681518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002783 (2 * n) : ℚ) / (A126646 (2 * n) : ℚ)⌉

end

end A094981.P13517391124503681518

namespace A094981

/-- `ceil(A002783(2*n)/A126646(2*n))` -/
def P13517391124503681518.Spec : Prop :=
  ∀ n, P13517391124503681518.a n = A094981 n

end A094981

/-! ## A094981.P416425305098242703

`round(A027649(2*n)/A126646(2*n))`
-/

namespace A094981.P416425305098242703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A027649 (2 * n) : ℚ) / (A126646 (2 * n) : ℚ))

end

end A094981.P416425305098242703

namespace A094981

/-- `round(A027649(2*n)/A126646(2*n))` -/
def P416425305098242703.Spec : Prop :=
  ∀ n, P416425305098242703.a n = A094981 n

end A094981

/-! ## A094981.P3294617756119283092

`ceil(A002783(2*n)/(2*A000079(n)²))`
-/

namespace A094981.P3294617756119283092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002783 (2 * n) : ℚ) / (2 * A000079 n ^ 2 : ℚ)⌉

end

end A094981.P3294617756119283092

namespace A094981

/-- `ceil(A002783(2*n)/(2*A000079(n)²))` -/
def P3294617756119283092.Spec : Prop :=
  ∀ n, P3294617756119283092.a n = A094981 n

end A094981

/-! ## A094981.P14659833162210233648

`round(A027649(2*n)/(2*A000079(n)²))`
-/

namespace A094981.P14659833162210233648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A027649 (2 * n) : ℚ) / (2 * A000079 n ^ 2 : ℚ))

end

end A094981.P14659833162210233648

namespace A094981

/-- `round(A027649(2*n)/(2*A000079(n)²))` -/
def P14659833162210233648.Spec : Prop :=
  ∀ n, P14659833162210233648.a n = A094981 n

end A094981

/-! ## A094981.P15707425044399919789

`ceil(A002783(2*n)/A000079(2*n+1))`
-/

namespace A094981.P15707425044399919789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002783 (2 * n) : ℚ) / (A000079 (2 * n + 1) : ℚ)⌉

end

end A094981.P15707425044399919789

namespace A094981

/-- `ceil(A002783(2*n)/A000079(2*n+1))` -/
def P15707425044399919789.Spec : Prop :=
  ∀ n, P15707425044399919789.a n = A094981 n

end A094981

/-! ## A094981.P5923812190776885288

`ceil(A169650(2*n+1)/A020737(2*n))`
-/

namespace A094981.P5923812190776885288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A169650 (2 * n + 1) : ℚ) / (A020737 (2 * n) : ℚ)⌉

end

end A094981.P5923812190776885288

namespace A094981

/-- `ceil(A169650(2*n+1)/A020737(2*n))` -/
def P5923812190776885288.Spec : Prop :=
  ∀ n, P5923812190776885288.a n = A094981 n

end A094981

/-! ## A094981.P9060822484077821909

`round(A027649(2*n)/A000079(2*n+1))`
-/

namespace A094981.P9060822484077821909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A027649 (2 * n) : ℚ) / (A000079 (2 * n + 1) : ℚ))

end

end A094981.P9060822484077821909

namespace A094981

/-- `round(A027649(2*n)/A000079(2*n+1))` -/
def P9060822484077821909.Spec : Prop :=
  ∀ n, P9060822484077821909.a n = A094981 n

end A094981

/-! ## A094981.P12463500850195419873

`(A000244(n)²-A002380(2*n))/A000079(n)²`
-/

namespace A094981.P12463500850195419873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n ^ 2 - A002380 (2 * n) : ℚ) / (A000079 n ^ 2 : ℚ)

end

end A094981.P12463500850195419873

namespace A094981

/-- `(A000244(n)²-A002380(2*n))/A000079(n)²` -/
def P12463500850195419873.Spec : Prop :=
  ∀ n, P12463500850195419873.a n = (A094981 n : ℚ)

end A094981

/-!
# A094982: a(n) = floor(11^n/4^n).

The programs for A094982, the canonical program `A094982.P1413701871441195293` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094982 has offset 0).

The definition of A094982 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(11^n/4^n)` (program `A094982.P1413701871441195293`, by `A094982.P1413701871441195293.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094982.P7866194515940062223

`floor((11/4)^n)`
-/

namespace A094982.P7866194515940062223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((11 : ℚ) / 4) ^ n⌋

end

end A094982.P7866194515940062223

namespace A094982

/-- `floor((11/4)^n)` -/
def P7866194515940062223.Spec : Prop :=
  ∀ n, P7866194515940062223.a n = A094982 n

end A094982

/-! ## A094982.P1413701871441195293

`floor(11^n/4^n)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094982

/-- `floor(11^n/4^n)` -/
def P1413701871441195293.Spec : Prop :=
  ∀ n, P1413701871441195293.a n = A094982 n

theorem P1413701871441195293.correct : P1413701871441195293.Spec := by
  intro n
  simp only [A094982]

end A094982

/-! ## A094982.P12702212014280901348

`ceil(A155632(n)/4^n)`
-/

namespace A094982.P12702212014280901348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155632 n : ℚ) / (4 ^ n : ℚ)⌉

end

end A094982.P12702212014280901348

namespace A094982

/-- `ceil(A155632(n)/4^n)` -/
def P12702212014280901348.Spec : Prop :=
  ∀ n, P12702212014280901348.a n = A094982 n

end A094982

/-! ## A094982.P1614410457207350420

`record[floor(A038315(n)/A038231(n))]`
-/

namespace A094982.P1614410457207350420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038315 n : ℚ) / (A038231 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094982.P1614410457207350420

namespace A094982

/-- `record[floor(A038315(n)/A038231(n))]` -/
def P1614410457207350420.Spec : Prop :=
  ∀ n, P1614410457207350420.a n = A094982 n

end A094982

/-! ## A094982.P13337395785544706676

`record[floor(A038315(n)/A038207(n)²)]`
-/

namespace A094982.P13337395785544706676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038315 n : ℚ) / (A038207 n ^ 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094982.P13337395785544706676

namespace A094982

/-- `record[floor(A038315(n)/A038207(n)²)]` -/
def P13337395785544706676.Spec : Prop :=
  ∀ n, P13337395785544706676.a n = A094982 n

end A094982

/-! ## A094982.P14785992553173165012

`A000035(2*n)+floor(A064749(n)/A050915(n))`
-/

namespace A094982.P14785992553173165012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + ⌊(A064749 n : ℚ) / (A050915 n : ℚ)⌋

end

end A094982.P14785992553173165012

namespace A094982

/-- `A000035(2*n)+floor(A064749(n)/A050915(n))` -/
def P14785992553173165012.Spec : Prop :=
  ∀ n, P14785992553173165012.a n = A094982 n

end A094982

/-! ## A094982.P11020380404111977343

`floor(A064749(n)/A050915(n))%A000108(n+2)`
-/

namespace A094982.P11020380404111977343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A064749 n : ℚ) / (A050915 n : ℚ)⌋ (A000108 (n + 2))

end

end A094982.P11020380404111977343

namespace A094982

/-- `floor(A064749(n)/A050915(n))%A000108(n+2)` -/
def P11020380404111977343.Spec : Prop :=
  ∀ n, P11020380404111977343.a n = A094982 n

end A094982

/-!
# A094983: a(n) = floor(6^n/5^n).

The programs for A094983, the canonical program `A094983.P16149283042887149712` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094983 has offset 0).

The definition of A094983 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(6^n/5^n)` (program `A094983.P16149283042887149712`, by `A094983.P16149283042887149712.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094983.P16149283042887149712

`floor(6^n/5^n)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094983

/-- `floor(6^n/5^n)` -/
def P16149283042887149712.Spec : Prop :=
  ∀ n, P16149283042887149712.a n = A094983 n

theorem P16149283042887149712.correct : P16149283042887149712.Spec := by
  intro n
  simp only [A094983]

end A094983

/-! ## A094983.P8662330378085477853

`floor(A000400(n)/A000351(n))%A042950(n)`
-/

namespace A094983.P8662330378085477853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A000400 n : ℚ) / (A000351 n : ℚ)⌋ (A042950 n)

end

end A094983.P8662330378085477853

namespace A094983

/-- `floor(A000400(n)/A000351(n))%A042950(n)` -/
def P8662330378085477853.Spec : Prop :=
  ∀ n, P8662330378085477853.a n = A094983 n

end A094983

/-! ## A094983.P13519946512453742737

`A000038(n+1)+floor(A000400(n)/A000351(n))`
-/

namespace A094983.P13519946512453742737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + ⌊(A000400 n : ℚ) / (A000351 n : ℚ)⌋

end

end A094983.P13519946512453742737

namespace A094983

/-- `A000038(n+1)+floor(A000400(n)/A000351(n))` -/
def P13519946512453742737.Spec : Prop :=
  ∀ n, P13519946512453742737.a n = A094983 n

end A094983

/-! ## A094983.P17830443953162675651

`floor(A000400(n)/A000351(n))*A054977(n+1)`
-/

namespace A094983.P17830443953162675651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000400 n : ℚ) / (A000351 n : ℚ)⌋ * A054977 (n + 1)

end

end A094983.P17830443953162675651

namespace A094983

/-- `floor(A000400(n)/A000351(n))*A054977(n+1)` -/
def P17830443953162675651.Spec : Prop :=
  ∀ n, P17830443953162675651.a n = A094983 n

end A094983

/-! ## A094983.P892954985148897159

`A008683(45*(n+1))+floor(A000400(n)/A000351(n))`
-/

namespace A094983.P892954985148897159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (45 * (n + 1)) + ⌊(A000400 n : ℚ) / (A000351 n : ℚ)⌋

end

end A094983.P892954985148897159

namespace A094983

/-- `A008683(45*(n+1))+floor(A000400(n)/A000351(n))` -/
def P892954985148897159.Spec : Prop :=
  ∀ n, P892954985148897159.a n = A094983 n

end A094983

/-! ## A094983.P17502037601216327282

`A106400(2*n+1)²*floor(A000400(n)/A000351(n))`
-/

namespace A094983.P17502037601216327282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (2 * n + 1) ^ 2 * ⌊(A000400 n : ℚ) / (A000351 n : ℚ)⌋

end

end A094983.P17502037601216327282

namespace A094983

/-- `A106400(2*n+1)²*floor(A000400(n)/A000351(n))` -/
def P17502037601216327282.Spec : Prop :=
  ∀ n, P17502037601216327282.a n = A094983 n

end A094983

/-! ## A094983.P3883346504405365877

`A000027(floor(A000400(n)/A000351(n)))`
-/

namespace A094983.P3883346504405365877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ⌊(A000400 n : ℚ) / (A000351 n : ℚ)⌋.toNat

end

end A094983.P3883346504405365877

namespace A094983

/-- `A000027(floor(A000400(n)/A000351(n)))` -/
def P3883346504405365877.Spec : Prop :=
  ∀ n, P3883346504405365877.a n = A094983 n

end A094983

/-!
# A094984: a(n) = floor(7^n/5^n).

The programs for A094984, the canonical program `A094984.P10265166430611492838` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094984 has offset 0).

The definition of A094984 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(7^n/5^n)` (program `A094984.P10265166430611492838`, by `A094984.P10265166430611492838.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094984.P10265166430611492838

`floor(7^n/5^n)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094984

/-- `floor(7^n/5^n)` -/
def P10265166430611492838.Spec : Prop :=
  ∀ n, P10265166430611492838.a n = A094984 n

theorem P10265166430611492838.correct : P10265166430611492838.Spec := by
  intro n
  simp only [A094984]

end A094984

/-! ## A094984.P2974132364017150766

`ceil(A135164(n)/(2^n+3^n+5^n))`
-/

namespace A094984.P2974132364017150766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135164 n : ℚ) / (2 ^ n + (3 ^ n + 5 ^ n) : ℚ)⌉

end

end A094984.P2974132364017150766

namespace A094984

/-- `ceil(A135164(n)/(2^n+3^n+5^n))` -/
def P2974132364017150766.Spec : Prop :=
  ∀ n, P2974132364017150766.a n = A094984 n

end A094984

/-! ## A094984.P15785118389060680216

`ceil(A155640(n)/A155603(n))`
-/

namespace A094984.P15785118389060680216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155640 n : ℚ) / (A155603 n : ℚ)⌉

end

end A094984.P15785118389060680216

namespace A094984

/-- `ceil(A155640(n)/A155603(n))` -/
def P15785118389060680216.Spec : Prop :=
  ∀ n, P15785118389060680216.a n = A094984 n

end A094984

/-! ## A094984.P11831177294411910447

`floor(A000420(n)/A000351(n))%A060357(n)`
-/

namespace A094984.P11831177294411910447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A000420 n : ℚ) / (A000351 n : ℚ)⌋ (A060357 n)

end

end A094984.P11831177294411910447

namespace A094984

/-- `floor(A000420(n)/A000351(n))%A060357(n)` -/
def P11831177294411910447.Spec : Prop :=
  ∀ n, P11831177294411910447.a n = A094984 n

end A094984

/-! ## A094984.P2906103100230619925

`round(A081627(n)/A081655(n))`
-/

namespace A094984.P2906103100230619925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A081627 n : ℚ) / (A081655 n : ℚ))

end

end A094984.P2906103100230619925

namespace A094984

/-- `round(A081627(n)/A081655(n))` -/
def P2906103100230619925.Spec : Prop :=
  ∀ n, P2906103100230619925.a n = A094984 n

end A094984

/-!
# A094985: a(n) = floor(8^n/5^n).

The programs for A094985, the canonical program `A094985.P1128899404822837343` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094985 has offset 0).

The definition of A094985 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(8^n/5^n)` (program `A094985.P1128899404822837343`, by `A094985.P1128899404822837343.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094985.P1128899404822837343

`floor(8^n/5^n)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094985

/-- `floor(8^n/5^n)` -/
def P1128899404822837343.Spec : Prop :=
  ∀ n, P1128899404822837343.a n = A094985 n

theorem P1128899404822837343.correct : P1128899404822837343.Spec := by
  intro n
  simp only [A094985]

end A094985

/-! ## A094985.P11377200702208138585

`ceil(A155641(n)/A034474(n))`
-/

namespace A094985.P11377200702208138585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155641 n : ℚ) / (A034474 n : ℚ)⌉

end

end A094985.P11377200702208138585

namespace A094985

/-- `ceil(A155641(n)/A034474(n))` -/
def P11377200702208138585.Spec : Prop :=
  ∀ n, P11377200702208138585.a n = A094985 n

end A094985

/-! ## A094985.P6301902845299074326

`ceil(A155641(n)/A155596(n))`
-/

namespace A094985.P6301902845299074326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155641 n : ℚ) / (A155596 n : ℚ)⌉

end

end A094985.P6301902845299074326

namespace A094985

/-- `ceil(A155641(n)/A155596(n))` -/
def P6301902845299074326.Spec : Prop :=
  ∀ n, P6301902845299074326.a n = A094985 n

end A094985

/-! ## A094985.P3797594627521327019

`ceil((A191468(n)+1)/A034474(n))`
-/

namespace A094985.P3797594627521327019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191468 n + 1 : ℚ) / (A034474 n : ℚ)⌉

end

end A094985.P3797594627521327019

namespace A094985

/-- `ceil((A191468(n)+1)/A034474(n))` -/
def P3797594627521327019.Spec : Prop :=
  ∀ n, P3797594627521327019.a n = A094985 n

end A094985

/-! ## A094985.P8582237056404256863

`ceil(A155641(n)/A295506(n+1))`
-/

namespace A094985.P8582237056404256863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155641 n : ℚ) / (A295506 (n + 1) : ℚ)⌉

end

end A094985.P8582237056404256863

namespace A094985

/-- `ceil(A155641(n)/A295506(n+1))` -/
def P8582237056404256863.Spec : Prop :=
  ∀ n, P8582237056404256863.a n = A094985 n

end A094985

/-! ## A094985.P10465895483248845304

`(A001018(n)-A138959(n))/A000351(n)`
-/

namespace A094985.P10465895483248845304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001018 n - A138959 n : ℚ) / (A000351 n : ℚ)

end

end A094985.P10465895483248845304

namespace A094985

/-- `(A001018(n)-A138959(n))/A000351(n)` -/
def P10465895483248845304.Spec : Prop :=
  ∀ n, P10465895483248845304.a n = (A094985 n : ℚ)

end A094985

/-!
# A094986: a(n) = floor(9^n/5^n).

The programs for A094986, the canonical program `A094986.P3536120083251151562` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094986 has offset 0).

The definition of A094986 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(9^n/5^n)` (program `A094986.P3536120083251151562`, by `A094986.P3536120083251151562.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094986.P3536120083251151562

`floor(9^n/5^n)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094986

/-- `floor(9^n/5^n)` -/
def P3536120083251151562.Spec : Prop :=
  ∀ n, P3536120083251151562.a n = A094986 n

theorem P3536120083251151562.correct : P3536120083251151562.Spec := by
  intro n
  simp only [A094986]

end A094986

/-! ## A094986.P18082432950410445275

`A255216(2*n)`
-/

namespace A094986.P18082432950410445275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255216 (2 * n)

end

end A094986.P18082432950410445275

namespace A094986

/-- `A255216(2*n)` -/
def P18082432950410445275.Spec : Prop :=
  ∀ n, P18082432950410445275.a n = A094986 n

end A094986

/-! ## A094986.P16564234544375795750

`gcd(A000038(n), A255216(A005843(n)))`
-/

namespace A094986.P16564234544375795750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A255216 (A005843 n).toNat)

end

end A094986.P16564234544375795750

namespace A094986

/-- `gcd(A000038(n), A255216(A005843(n)))` -/
def P16564234544375795750.Spec : Prop :=
  ∀ n, (P16564234544375795750.a n : ℤ) = A094986 n

end A094986

/-! ## A094986.P2826390982084309469

`or(A000038(n+1), A255216(A005843(n)))`
-/

namespace A094986.P2826390982084309469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 (n + 1)) (A255216 (A005843 n).toNat)

end

end A094986.P2826390982084309469

namespace A094986

/-- `or(A000038(n+1), A255216(A005843(n)))` -/
def P2826390982084309469.Spec : Prop :=
  ∀ n, P2826390982084309469.a n = A094986 n

end A094986

/-! ## A094986.P11217275598957654175

`A255216(A005843(n))%A164285(n)`
-/

namespace A094986.P11217275598957654175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255216 (A005843 n).toNat) (A164285 n)

end

end A094986.P11217275598957654175

namespace A094986

/-- `A255216(A005843(n))%A164285(n)` -/
def P11217275598957654175.Spec : Prop :=
  ∀ n, P11217275598957654175.a n = A094986 n

end A094986

/-! ## A094986.P17359806249328597827

`A255216(A004277(n))%Δ[3^n]`
-/

namespace A094986.P17359806249328597827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255216 (A004277 n).toNat) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A094986.P17359806249328597827

namespace A094986

/-- `A255216(A004277(n))%Δ[3^n]` -/
def P17359806249328597827.Spec : Prop :=
  ∀ n, P17359806249328597827.a n = A094986 n

end A094986

/-!
# A094987: a(n) = floor(11^n/5^n).

The programs for A094987, the canonical program `A094987.P8422896393398873262` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094987 has offset 0).

The definition of A094987 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(11^n/5^n)` (program `A094987.P8422896393398873262`, by `A094987.P8422896393398873262.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094987.P8422896393398873262

`floor(11^n/5^n)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094987

/-- `floor(11^n/5^n)` -/
def P8422896393398873262.Spec : Prop :=
  ∀ n, P8422896393398873262.a n = A094987 n

theorem P8422896393398873262.correct : P8422896393398873262.Spec := by
  intro n
  simp only [A094987]

end A094987

/-! ## A094987.P6716340345003352156

`ceil(A155644(n)/5^n)`
-/

namespace A094987.P6716340345003352156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155644 n : ℚ) / (5 ^ n : ℚ)⌉

end

end A094987.P6716340345003352156

namespace A094987

/-- `ceil(A155644(n)/5^n)` -/
def P6716340345003352156.Spec : Prop :=
  ∀ n, P6716340345003352156.a n = A094987 n

end A094987

/-! ## A094987.P2924722865641784023

`record[floor(A073211(n)/A055237(n))]`
-/

namespace A094987.P2924722865641784023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A073211 n : ℚ) / (A055237 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094987.P2924722865641784023

namespace A094987

/-- `record[floor(A073211(n)/A055237(n))]` -/
def P2924722865641784023.Spec : Prop :=
  ∀ n, P2924722865641784023.a n = A094987 n

end A094987

/-! ## A094987.P12667014211601041631

`record[floor(A038315(n)/A038243(n))]`
-/

namespace A094987.P12667014211601041631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038315 n : ℚ) / (A038243 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094987.P12667014211601041631

namespace A094987

/-- `record[floor(A038315(n)/A038243(n))]` -/
def P12667014211601041631.Spec : Prop :=
  ∀ n, P12667014211601041631.a n = A094987 n

end A094987

/-! ## A094987.P11067042560008744327

`record[floor(A013618(n)/A013612(n))]`
-/

namespace A094987.P11067042560008744327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A013618 n : ℚ) / (A013612 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094987.P11067042560008744327

namespace A094987

/-- `record[floor(A013618(n)/A013612(n))]` -/
def P11067042560008744327.Spec : Prop :=
  ∀ n, P11067042560008744327.a n = A094987 n

end A094987

/-! ## A094987.P1762492367762742530

`record[floor(A218018(n)/A218016(n))]`
-/

namespace A094987.P1762492367762742530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A218018 n : ℚ) / (A218016 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094987.P1762492367762742530

namespace A094987

/-- `record[floor(A218018(n)/A218016(n))]` -/
def P1762492367762742530.Spec : Prop :=
  ∀ n, P1762492367762742530.a n = A094987 n

end A094987

/-!
# A094988: a(n) = floor(7^n/6^n).

The programs for A094988, the canonical program `A094988.P1188675073599202631` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094988 has offset 0).

The definition of A094988 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(7^n/6^n)` (program `A094988.P1188675073599202631`, by `A094988.P1188675073599202631.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094988.P1188675073599202631

`floor(7^n/6^n)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094988

/-- `floor(7^n/6^n)` -/
def P1188675073599202631.Spec : Prop :=
  ∀ n, P1188675073599202631.a n = A094988 n

theorem P1188675073599202631.correct : P1188675073599202631.Spec := by
  intro n
  simp only [A094988]

end A094988

/-! ## A094988.P15485643259739173020

`ceil(A155650(n)/(6^n+1-2^n))`
-/

namespace A094988.P15485643259739173020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155650 n : ℚ) / ((6 ^ n : ℤ) + (1 - (2 ^ n : ℤ)) : ℚ)⌉

end

end A094988.P15485643259739173020

namespace A094988

/-- `ceil(A155650(n)/(6^n+1-2^n))` -/
def P15485643259739173020.Spec : Prop :=
  ∀ n, P15485643259739173020.a n = A094988 n

end A094988

/-! ## A094988.P4333299568648111091

`A000027(floor(A000420(n)/A000400(n)))`
-/

namespace A094988.P4333299568648111091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ⌊(A000420 n : ℚ) / (A000400 n : ℚ)⌋.toNat

end

end A094988.P4333299568648111091

namespace A094988

/-- `A000027(floor(A000420(n)/A000400(n)))` -/
def P4333299568648111091.Spec : Prop :=
  ∀ n, P4333299568648111091.a n = A094988 n

end A094988

/-! ## A094988.P10128873135426573862

`A028310(floor((7/6)^n))`
-/

namespace A094988.P10128873135426573862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ⌊((7 : ℚ) / 6) ^ n⌋.toNat

end

end A094988.P10128873135426573862

namespace A094988

/-- `A028310(floor((7/6)^n))` -/
def P10128873135426573862.Spec : Prop :=
  ∀ n, P10128873135426573862.a n = A094988 n

end A094988

/-! ## A094988.P6947725513970182864

`A226764(A245356(n+2))`
-/

namespace A094988.P6947725513970182864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226764 (A245356 (n + 2)).toNat

end

end A094988.P6947725513970182864

namespace A094988

/-- `A226764(A245356(n+2))` -/
def P6947725513970182864.Spec : Prop :=
  ∀ n, P6947725513970182864.a n = A094988 n

end A094988

/-!
# A094989: a(n) = floor(11^n/6^n).

The programs for A094989, the canonical program `A094989.P4686486207615336520` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094989 has offset 0).

The definition of A094989 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(11^n/6^n)` (program `A094989.P4686486207615336520`, by `A094989.P4686486207615336520.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094989.P4686486207615336520

`floor(11^n/6^n)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094989

/-- `floor(11^n/6^n)` -/
def P4686486207615336520.Spec : Prop :=
  ∀ n, P4686486207615336520.a n = A094989 n

theorem P4686486207615336520.correct : P4686486207615336520.Spec := by
  intro n
  simp only [A094989]

end A094989

/-! ## A094989.P1694322856516419073

`ceil(A155654(n)/6^n)`
-/

namespace A094989.P1694322856516419073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155654 n : ℚ) / (6 ^ n : ℚ)⌉

end

end A094989.P1694322856516419073

namespace A094989

/-- `ceil(A155654(n)/6^n)` -/
def P1694322856516419073.Spec : Prop :=
  ∀ n, P1694322856516419073.a n = A094989 n

end A094989

/-! ## A094989.P9881297522015060657

`ceil(11^n/6^n-A057427(n))`
-/

namespace A094989.P9881297522015060657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(11 ^ n : ℚ) / (6 ^ n : ℚ) - (A057427 n : ℚ)⌉

end

end A094989.P9881297522015060657

namespace A094989

/-- `ceil(11^n/6^n-A057427(n))` -/
def P9881297522015060657.Spec : Prop :=
  ∀ n, P9881297522015060657.a n = A094989 n

end A094989

/-! ## A094989.P12772388248824579200

`ceil((11^n+1-6^n)/A062394(n))`
-/

namespace A094989.P12772388248824579200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((11 ^ n + 1 : ℤ) - (6 ^ n : ℤ) : ℚ) / (A062394 n : ℚ)⌉

end

end A094989.P12772388248824579200

namespace A094989

/-- `ceil((11^n+1-6^n)/A062394(n))` -/
def P12772388248824579200.Spec : Prop :=
  ∀ n, P12772388248824579200.a n = A094989 n

end A094989

/-! ## A094989.P4229847338331972012

`ceil(abs(6^n-2^n-A155622(n))/A000400(n))`
-/

namespace A094989.P4229847338331972012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|(6 ^ n : ℤ) - (2 ^ n : ℤ) - A155622 n| : ℚ) / (A000400 n : ℚ)⌉

end

end A094989.P4229847338331972012

namespace A094989

/-- `ceil(abs(6^n-2^n-A155622(n))/A000400(n))` -/
def P4229847338331972012.Spec : Prop :=
  ∀ n, P4229847338331972012.a n = A094989 n

end A094989

/-!
# A094990: a(n) = floor(8^n/7^n).

The programs for A094990, the canonical program `A094990.P16069698245352534432` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094990 has offset 0).

The definition of A094990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1725 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094990.P16069698245352534432

`floor((7/8)^-n)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094990

/-- `floor((7/8)^-n)` -/
def P16069698245352534432.Spec : Prop :=
  ∀ n, P16069698245352534432.a n = A094990 n

theorem P16069698245352534432.correct : P16069698245352534432.Spec := by
  intro n
  simp only [A094990]

end A094990

/-! ## A094990.P7002435679253432416

`ceil(A155659(n)/A155605(n))`
-/

namespace A094990.P7002435679253432416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155659 n : ℚ) / (A155605 n : ℚ)⌉

end

end A094990.P7002435679253432416

namespace A094990

/-- `ceil(A155659(n)/A155605(n))` -/
def P7002435679253432416.Spec : Prop :=
  ∀ n, P7002435679253432416.a n = A094990 n

end A094990

/-! ## A094990.P996986854241188387

`ceil(A155659(n)/A155612(n))`
-/

namespace A094990.P996986854241188387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155659 n : ℚ) / (A155612 n : ℚ)⌉

end

end A094990.P996986854241188387

namespace A094990

/-- `ceil(A155659(n)/A155612(n))` -/
def P996986854241188387.Spec : Prop :=
  ∀ n, P996986854241188387.a n = A094990 n

end A094990

/-! ## A094990.P7561518525265187605

`ceil(A155659(n)/A155618(n))`
-/

namespace A094990.P7561518525265187605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155659 n : ℚ) / (A155618 n : ℚ)⌉

end

end A094990.P7561518525265187605

namespace A094990

/-- `ceil(A155659(n)/A155618(n))` -/
def P7561518525265187605.Spec : Prop :=
  ∀ n, P7561518525265187605.a n = A094990 n

end A094990

/-! ## A094990.P3457546783745494734

`ceil(A155659(n)/A155634(n))`
-/

namespace A094990.P3457546783745494734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155659 n : ℚ) / (A155634 n : ℚ)⌉

end

end A094990.P3457546783745494734

namespace A094990

/-- `ceil(A155659(n)/A155634(n))` -/
def P3457546783745494734.Spec : Prop :=
  ∀ n, P3457546783745494734.a n = A094990 n

end A094990

/-! ## A094990.P3497694064815279597

`(A001018(n)-A138973(n))*7^-n`
-/

namespace A094990.P3497694064815279597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001018 n - A138973 n : ℚ) * (7 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A094990.P3497694064815279597

namespace A094990

/-- `(A001018(n)-A138973(n))*7^-n` -/
def P3497694064815279597.Spec : Prop :=
  ∀ n, P3497694064815279597.a n = (A094990 n : ℚ)

end A094990

/-! ## A094990.P11973884854520240278

`(A001018(n)-A138973(n))/A000420(n)`
-/

namespace A094990.P11973884854520240278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001018 n - A138973 n : ℚ) / (A000420 n : ℚ)

end

end A094990.P11973884854520240278

namespace A094990

/-- `(A001018(n)-A138973(n))/A000420(n)` -/
def P11973884854520240278.Spec : Prop :=
  ∀ n, P11973884854520240278.a n = (A094990 n : ℚ)

end A094990

/-! ## A094990.P7340733193691262268

`A000027(floor(A001018(n)/A000420(n)))`
-/

namespace A094990.P7340733193691262268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ⌊(A001018 n : ℚ) / (A000420 n : ℚ)⌋.toNat

end

end A094990.P7340733193691262268

namespace A094990

/-- `A000027(floor(A001018(n)/A000420(n)))` -/
def P7340733193691262268.Spec : Prop :=
  ∀ n, P7340733193691262268.a n = A094990 n

end A094990

/-!
# A094991: a(n) = floor(9^n/7^n).

The programs for A094991, the canonical program `A094991.P1919163422254147294` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094991 has offset 0).

The definition of A094991 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(9^n/7^n)` (program `A094991.P1919163422254147294`, by `A094991.P1919163422254147294.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094991.P1919163422254147294

`floor(9^n/7^n)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094991

/-- `floor(9^n/7^n)` -/
def P1919163422254147294.Spec : Prop :=
  ∀ n, P1919163422254147294.a n = A094991 n

theorem P1919163422254147294.correct : P1919163422254147294.Spec := by
  intro n
  simp only [A094991]

end A094991

/-! ## A094991.P14475856911615420223

`A074732(n+2)-A006466(A105636(n))`
-/

namespace A094991.P14475856911615420223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074732 (n + 2) - A006466 (A105636 n).toNat

end

end A094991.P14475856911615420223

namespace A094991

/-- `A074732(n+2)-A006466(A105636(n))` -/
def P14475856911615420223.Spec : Prop :=
  ∀ n, P14475856911615420223.a n = A094991 n

end A094991

/-! ## A094991.P16603957044152609284

`A000196(A124571(n+2))`
-/

namespace A094991.P16603957044152609284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A124571 (n + 2)).toNat

end

end A094991.P16603957044152609284

namespace A094991

/-- `A000196(A124571(n+2))` -/
def P16603957044152609284.Spec : Prop :=
  ∀ n, P16603957044152609284.a n = A094991 n

end A094991

/-! ## A094991.P13404531368240574912

`A000196(floor(sqrt(A080040(n))))`
-/

namespace A094991.P13404531368240574912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.sqrt (A080040 n)).toNat

end

end A094991.P13404531368240574912

namespace A094991

/-- `A000196(floor(sqrt(A080040(n))))` -/
def P13404531368240574912.Spec : Prop :=
  ∀ n, P13404531368240574912.a n = A094991 n

end A094991

/-! ## A094991.P10427463992182597932

`A135664(A219282(n)+A128768(n))`
-/

namespace A094991.P10427463992182597932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (A219282 n + A128768 n).toNat

end

end A094991.P10427463992182597932

namespace A094991

/-- `A135664(A219282(n)+A128768(n))` -/
def P10427463992182597932.Spec : Prop :=
  ∀ n, P10427463992182597932.a n = A094991 n

end A094991

/-!
# A094992: a(n) = floor(10^n/7^n).

The programs for A094992, the canonical program `A094992.P16764303759210908712` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094992 has offset 0).

The definition of A094992 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(10^n/7^n)` (program `A094992.P16764303759210908712`, by `A094992.P16764303759210908712.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094992.P16764303759210908712

`floor(10^n/7^n)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094992

/-- `floor(10^n/7^n)` -/
def P16764303759210908712.Spec : Prop :=
  ∀ n, P16764303759210908712.a n = A094992 n

theorem P16764303759210908712.correct : P16764303759210908712.Spec := by
  intro n
  simp only [A094992]

end A094992

/-! ## A094992.P13761261534100505182

`ceil(A057428(n)+10^n/7^n)`
-/

namespace A094992.P13761261534100505182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057428 n : ℚ) + (10 ^ n : ℚ) / (7 ^ n : ℚ)⌉

end

end A094992.P13761261534100505182

namespace A094992

/-- `ceil(A057428(n)+10^n/7^n)` -/
def P13761261534100505182.Spec : Prop :=
  ∀ n, P13761261534100505182.a n = A094992 n

end A094992

/-! ## A094992.P14098480851582470484

`ceil(A155661(n)/A000420(n))`
-/

namespace A094992.P14098480851582470484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155661 n : ℚ) / (A000420 n : ℚ)⌉

end

end A094992.P14098480851582470484

namespace A094992

/-- `ceil(A155661(n)/A000420(n))` -/
def P14098480851582470484.Spec : Prop :=
  ∀ n, P14098480851582470484.a n = A094992 n

end A094992

/-! ## A094992.P10381715055971234242

`ceil(A155661(n)/A034491(n))`
-/

namespace A094992.P10381715055971234242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155661 n : ℚ) / (A034491 n : ℚ)⌉

end

end A094992.P10381715055971234242

namespace A094992

/-- `ceil(A155661(n)/A034491(n))` -/
def P10381715055971234242.Spec : Prop :=
  ∀ n, P10381715055971234242.a n = A094992 n

end A094992

/-! ## A094992.P8369479717872871627

`ceil(A011557(n)/7^n-A122458(2*n))`
-/

namespace A094992.P8369479717872871627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A011557 n : ℚ) / (7 ^ n : ℚ) - (A122458 (2 * n) : ℚ)⌉

end

end A094992.P8369479717872871627

namespace A094992

/-- `ceil(A011557(n)/7^n-A122458(2*n))` -/
def P8369479717872871627.Spec : Prop :=
  ∀ n, P8369479717872871627.a n = A094992 n

end A094992

/-!
# A094993: a(n) = floor(11^n/7^n).

The programs for A094993, the canonical program `A094993.P3967750675968929690` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094993 has offset 0).

The definition of A094993 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(11^n/7^n)` (program `A094993.P3967750675968929690`, by `A094993.P3967750675968929690.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094993.P3967750675968929690

`floor(11^n/7^n)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094993

/-- `floor(11^n/7^n)` -/
def P3967750675968929690.Spec : Prop :=
  ∀ n, P3967750675968929690.a n = A094993 n

theorem P3967750675968929690.correct : P3967750675968929690.Spec := by
  intro n
  simp only [A094993]

end A094993

/-! ## A094993.P9975154702476641690

`ceil(A155662(n)/A000420(n))`
-/

namespace A094993.P9975154702476641690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155662 n : ℚ) / (A000420 n : ℚ)⌉

end

end A094993.P9975154702476641690

namespace A094993

/-- `ceil(A155662(n)/A000420(n))` -/
def P9975154702476641690.Spec : Prop :=
  ∀ n, P9975154702476641690.a n = A094993 n

end A094993

/-! ## A094993.P13884312034277113571

`ceil(A155662(n)/A034491(n))`
-/

namespace A094993.P13884312034277113571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155662 n : ℚ) / (A034491 n : ℚ)⌉

end

end A094993.P13884312034277113571

namespace A094993

/-- `ceil(A155662(n)/A034491(n))` -/
def P13884312034277113571.Spec : Prop :=
  ∀ n, P13884312034277113571.a n = A094993 n

end A094993

/-! ## A094993.P11466302808666452181

`ceil(A155662(n)/A155598(n))`
-/

namespace A094993.P11466302808666452181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155662 n : ℚ) / (A155598 n : ℚ)⌉

end

end A094993.P11466302808666452181

namespace A094993

/-- `ceil(A155662(n)/A155598(n))` -/
def P11466302808666452181.Spec : Prop :=
  ∀ n, P11466302808666452181.a n = A094993 n

end A094993

/-! ## A094993.P13815912875454346406

`A008836((n+1)²)+floor(A155662(n)/A034491(n))`
-/

namespace A094993.P13815912875454346406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 ((n + 1) ^ 2) + ⌊(A155662 n : ℚ) / (A034491 n : ℚ)⌋

end

end A094993.P13815912875454346406

namespace A094993

/-- `A008836((n+1)²)+floor(A155662(n)/A034491(n))` -/
def P13815912875454346406.Spec : Prop :=
  ∀ n, P13815912875454346406.a n = A094993 n

end A094993

/-!
# A094994: a(n) = floor(9^n/8^n).

The programs for A094994, the canonical program `A094994.P5890405523904178071` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094994 has offset 0).

The definition of A094994 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094994.P5890405523904178071

`floor((9/8)^n)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094994

/-- `floor((9/8)^n)` -/
def P5890405523904178071.Spec : Prop :=
  ∀ n, P5890405523904178071.a n = A094994 n

theorem P5890405523904178071.correct : P5890405523904178071.Spec := by
  intro n
  simp only [A094994]

end A094994

/-! ## A094994.P9983830082534253811

`ceil((9/8)^n-A057427(n))`
-/

namespace A094994.P9983830082534253811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((9 : ℚ) / 8) ^ n - (A057427 n : ℚ)⌉

end

end A094994.P9983830082534253811

namespace A094994

/-- `ceil((9/8)^n-A057427(n))` -/
def P9983830082534253811.Spec : Prop :=
  ∀ n, P9983830082534253811.a n = A094994 n

end A094994

/-! ## A094994.P15203361763642504875

`floor(A094981(n)/A000079(n))%A020695(n)`
-/

namespace A094994.P15203361763642504875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A094981 n : ℚ) / (A000079 n : ℚ)⌋ (A020695 n)

end

end A094994.P15203361763642504875

namespace A094994

/-- `floor(A094981(n)/A000079(n))%A020695(n)` -/
def P15203361763642504875.Spec : Prop :=
  ∀ n, P15203361763642504875.a n = A094994 n

end A094994

/-! ## A094994.P1626560761765702500

`A097807(n)²*floor(A094981(n)/A000079(n))`
-/

namespace A094994.P1626560761765702500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n ^ 2 * ⌊(A094981 n : ℚ) / (A000079 n : ℚ)⌋

end

end A094994.P1626560761765702500

namespace A094994

/-- `A097807(n)²*floor(A094981(n)/A000079(n))` -/
def P1626560761765702500.Spec : Prop :=
  ∀ n, P1626560761765702500.a n = A094994 n

end A094994

/-! ## A094994.P8958765344431245893

`A000007(n+1)+floor(A094981(n)/A000079(n))`
-/

namespace A094994.P8958765344431245893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + ⌊(A094981 n : ℚ) / (A000079 n : ℚ)⌋

end

end A094994.P8958765344431245893

namespace A094994

/-- `A000007(n+1)+floor(A094981(n)/A000079(n))` -/
def P8958765344431245893.Spec : Prop :=
  ∀ n, P8958765344431245893.a n = A094994 n

end A094994

/-! ## A094994.P1537792505561982111

`floor(A094981(n)/A000079(n))+6%A010693(n)`
-/

namespace A094994.P1537792505561982111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094981 n : ℚ) / (A000079 n : ℚ)⌋ + Int.tmod 6 (A010693 n)

end

end A094994.P1537792505561982111

namespace A094994

/-- `floor(A094981(n)/A000079(n))+6%A010693(n)` -/
def P1537792505561982111.Spec : Prop :=
  ∀ n, P1537792505561982111.a n = A094994 n

end A094994

/-! ## A094994.P10122476121096673786

`A000027(floor(A094981(n)/A000079(n)))`
-/

namespace A094994.P10122476121096673786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ⌊(A094981 n : ℚ) / (A000079 n : ℚ)⌋.toNat

end

end A094994.P10122476121096673786

namespace A094994

/-- `A000027(floor(A094981(n)/A000079(n)))` -/
def P10122476121096673786.Spec : Prop :=
  ∀ n, P10122476121096673786.a n = A094994 n

end A094994

/-!
# A094995: a(n) = floor(11^n/8^n).

The programs for A094995, the canonical program `A094995.P8936639872354390385` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094995 has offset 0).

The definition of A094995 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(11^n/8^n)` (program `A094995.P8936639872354390385`, by `A094995.P8936639872354390385.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094995.P8936639872354390385

`floor(11^n/8^n)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094995

/-- `floor(11^n/8^n)` -/
def P8936639872354390385.Spec : Prop :=
  ∀ n, P8936639872354390385.a n = A094995 n

theorem P8936639872354390385.correct : P8936639872354390385.Spec := by
  intro n
  simp only [A094995]

end A094995

/-! ## A094995.P3991280359733186419

`ceil(A155668(n)/8^n)`
-/

namespace A094995.P3991280359733186419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155668 n : ℚ) / (8 ^ n : ℚ)⌉

end

end A094995.P3991280359733186419

namespace A094995

/-- `ceil(A155668(n)/8^n)` -/
def P3991280359733186419.Spec : Prop :=
  ∀ n, P3991280359733186419.a n = A094995 n

end A094995

/-! ## A094995.P7643176332244362669

`ceil((11^n-8^n+1)/A001018(n))`
-/

namespace A094995.P7643176332244362669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((11 ^ n : ℤ) - (8 ^ n : ℤ) + 1 : ℚ) / (A001018 n : ℚ)⌉

end

end A094995.P7643176332244362669

namespace A094995

/-- `ceil((11^n-8^n+1)/A001018(n))` -/
def P7643176332244362669.Spec : Prop :=
  ∀ n, P7643176332244362669.a n = A094995 n

end A094995

/-! ## A094995.P17652510874682681934

`A000027(floor(A165151(n)/A165148(n)))`
-/

namespace A094995.P17652510874682681934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ⌊(A165151 n : ℚ) / (A165148 n : ℚ)⌋.toNat

end

end A094995.P17652510874682681934

namespace A094995

/-- `A000027(floor(A165151(n)/A165148(n)))` -/
def P17652510874682681934.Spec : Prop :=
  ∀ n, P17652510874682681934.a n = A094995 n

end A094995

/-! ## A094995.P8815352093961950030

`A003056(A330028(n))`
-/

namespace A094995.P8815352093961950030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A330028 n).toNat

end

end A094995.P8815352093961950030

namespace A094995

/-- `A003056(A330028(n))` -/
def P8815352093961950030.Spec : Prop :=
  ∀ n, P8815352093961950030.a n = A094995 n

end A094995

/-!
# A094996: a(n) = floor(10^n/9^n).

The programs for A094996, the canonical program `A094996.P16061367853568397859` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094996 has offset 0).

The definition of A094996 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 451 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094996.P16061367853568397859

`floor(A094974(n)/A002379(n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A094996

/-- `floor(A094974(n)/A002379(n))` -/
def P16061367853568397859.Spec : Prop :=
  ∀ n, P16061367853568397859.a n = A094996 n

theorem P16061367853568397859.correct : P16061367853568397859.Spec := by
  intro n
  simp only [A094996]

end A094996

/-! ## A094996.P9758909670433279822

`floor(A094974(n)/A014215(2*n))`
-/

namespace A094996.P9758909670433279822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094974 n : ℚ) / (A014215 (2 * n) : ℚ)⌋

end

end A094996.P9758909670433279822

namespace A094996

/-- `floor(A094974(n)/A014215(2*n))` -/
def P9758909670433279822.Spec : Prop :=
  ∀ n, P9758909670433279822.a n = A094996 n

end A094996

/-! ## A094996.P8282545440857283910

`floor(A094969(n)/A094981(n))`
-/

namespace A094996.P8282545440857283910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094969 n : ℚ) / (A094981 n : ℚ)⌋

end

end A094996.P8282545440857283910

namespace A094996

/-- `floor(A094969(n)/A094981(n))` -/
def P8282545440857283910.Spec : Prop :=
  ∀ n, P8282545440857283910.a n = A094996 n

end A094996

/-! ## A094996.P16971301666142107568

`floor(A094969(n)/A002379(2*n))`
-/

namespace A094996.P16971301666142107568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094969 n : ℚ) / (A002379 (2 * n) : ℚ)⌋

end

end A094996.P16971301666142107568

namespace A094996

/-- `floor(A094969(n)/A002379(2*n))` -/
def P16971301666142107568.Spec : Prop :=
  ∀ n, P16971301666142107568.a n = A094996 n

end A094996

/-! ## A094996.P4191866253806499395

`floor(A094974(n)/round(A083313(n)/2^n))`
-/

namespace A094996.P4191866253806499395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094974 n : ℚ) / (SequenceMachineLib.roundAway ((A083313 n : ℚ) / (2 ^ n : ℚ)) : ℚ)⌋

end

end A094996.P4191866253806499395

namespace A094996

/-- `floor(A094974(n)/round(A083313(n)/2^n))` -/
def P4191866253806499395.Spec : Prop :=
  ∀ n, P4191866253806499395.a n = A094996 n

end A094996

/-! ## A094996.P5480450000158677550

`floor(A054629(n)/A054628(n))`
-/

namespace A094996.P5480450000158677550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A054629 n : ℚ) / (A054628 n : ℚ)⌋

end

end A094996.P5480450000158677550

namespace A094996

/-- `floor(A054629(n)/A054628(n))` -/
def P5480450000158677550.Spec : Prop :=
  ∀ n, P5480450000158677550.a n = A094996 n

end A094996

/-! ## A094996.P15669839167727084547

`floor(10^n/9^n)`
-/

namespace A094996.P15669839167727084547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / (9 ^ n : ℚ)⌋

end

end A094996.P15669839167727084547

namespace A094996

/-- `floor(10^n/9^n)` -/
def P15669839167727084547.Spec : Prop :=
  ∀ n, P15669839167727084547.a n = A094996 n

end A094996

/-! ## A094996.P9170028548047627822

`ceil(A155671(n)/A155647(n))`
-/

namespace A094996.P9170028548047627822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155671 n : ℚ) / (A155647 n : ℚ)⌉

end

end A094996.P9170028548047627822

namespace A094996

/-- `ceil(A155671(n)/A155647(n))` -/
def P9170028548047627822.Spec : Prop :=
  ∀ n, P9170028548047627822.a n = A094996 n

end A094996

/-!
# A094997: a(n) = floor(11^n/9^n).

The programs for A094997, the canonical program `A094997.P12333821816905486678` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094997 has offset 0).

The definition of A094997 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(11^n/9^n)` (program `A094997.P12333821816905486678`, by `A094997.P12333821816905486678.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094997.P12333821816905486678

`floor(11^n/9^n)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094997

/-- `floor(11^n/9^n)` -/
def P12333821816905486678.Spec : Prop :=
  ∀ n, P12333821816905486678.a n = A094997 n

theorem P12333821816905486678.correct : P12333821816905486678.Spec := by
  intro n
  simp only [A094997]

end A094997

/-! ## A094997.P16526008316666138323

`ceil((11^n+1-9^n)/(2*C(3^n, 2)+1))`
-/

namespace A094997.P16526008316666138323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((11 ^ n + 1 : ℤ) - (9 ^ n : ℤ) : ℚ) / (2 * Nat.choose (3 ^ n) 2 + 1 : ℚ)⌉

end

end A094997.P16526008316666138323

namespace A094997

/-- `ceil((11^n+1-9^n)/(2*C(3^n, 2)+1))` -/
def P16526008316666138323.Spec : Prop :=
  ∀ n, P16526008316666138323.a n = A094997 n

end A094997

/-! ## A094997.P16018376205980347846

`ceil(A155672(n)/A155630(n))`
-/

namespace A094997.P16018376205980347846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155672 n : ℚ) / (A155630 n : ℚ)⌉

end

end A094997.P16018376205980347846

namespace A094997

/-- `ceil(A155672(n)/A155630(n))` -/
def P16018376205980347846.Spec : Prop :=
  ∀ n, P16018376205980347846.a n = A094997 n

end A094997

/-! ## A094997.P16477380293857456576

`ceil(A155672(n)/A155636(n))`
-/

namespace A094997.P16477380293857456576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155672 n : ℚ) / (A155636 n : ℚ)⌉

end

end A094997.P16477380293857456576

namespace A094997

/-- `ceil(A155672(n)/A155636(n))` -/
def P16477380293857456576.Spec : Prop :=
  ∀ n, P16477380293857456576.a n = A094997 n

end A094997

/-! ## A094997.P9424498284295328528

`A000196(Δ[A004526(3*a(n-1)+2)])` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A094997.P9424498284295328528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  A004526 (3 * f1 (n - 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (f1 (n + 1) - f1 n).toNat

end

end A094997.P9424498284295328528

namespace A094997

/-- `A000196(Δ[A004526(3*a(n-1)+2)])` -/
def P9424498284295328528.Spec : Prop :=
  ∀ n, P9424498284295328528.a n = A094997 n

end A094997

/-!
# A094998: a(n) is smallest positive integer multiple of n-th prime, say k*prime(n), such that k*prime(n) == 1 (mod j) for each integer j with 1 < j < prime(n).

The programs for A094998, there is no canonical definition to state claims against.
-/

/-! ## A094998.P15694073232002893999

`A099795(n+1)*A099796(n+1)+1`
-/

namespace A094998.P15694073232002893999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099795 (n + 1) * A099796 (n + 1) + 1

end

end A094998.P15694073232002893999

/-! ## A094998.P14146195004470599305

`A055006(A000040(n+1))`
-/

namespace A094998.P14146195004470599305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055006 (A000040 (n + 1)).toNat

end

end A094998.P14146195004470599305

/-! ## A094998.P6242613131310725827

`A055006(A008578(n+2))`
-/

namespace A094998.P6242613131310725827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055006 (A008578 (n + 2)).toNat

end

end A094998.P6242613131310725827

/-! ## A094998.P2860058316629746660

`A055006(A015919(n+2))`
-/

namespace A094998.P2860058316629746660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055006 (A015919 (n + 2)).toNat

end

end A094998.P2860058316629746660

/-! ## A094998.P11925101515081471490

`A055006(record[A006530(n+2)])`
-/

namespace A094998.P11925101515081471490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055006 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A094998.P11925101515081471490

/-! ## A094998.P906486007050629462

`A055006(record[A014963(n+2)])`
-/

namespace A094998.P906486007050629462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055006 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A094998.P906486007050629462

/-! ## A094998.P6430008933859439435

`A055006(record[A020639(n+2)])`
-/

namespace A094998.P6430008933859439435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055006 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A094998.P6430008933859439435

/-!
# A094999: a(n) = floor(12^n/11^n).

The programs for A094999, there is no canonical definition to state claims against.
-/

/-! ## A094999.P14872593959590585605

`floor(12^n/11^n)`
-/

namespace A094999.P14872593959590585605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(12 ^ n : ℚ) / (11 ^ n : ℚ)⌋

end

end A094999.P14872593959590585605

/-! ## A094999.P16216357999102313138

`A260999(A239905(n+1))`
-/

namespace A094999.P16216357999102313138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260999 (A239905 (n + 1)).toNat

end

end A094999.P16216357999102313138

/-! ## A094999.P16543893323495057609

`ceil(A342513(2*n+1)/A001950(n+3))`
-/

namespace A094999.P16543893323495057609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A342513 (2 * n + 1) : ℚ) / (A001950 (n + 3) : ℚ)⌉

end

end A094999.P16543893323495057609

