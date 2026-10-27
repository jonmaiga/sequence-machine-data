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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
# A241400: Number of 4Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241400, there is no canonical definition to state claims against.
-/

/-! ## A241400.P9715313588581163885

`A241397(∑[n+3]+7)`
-/

namespace A241400.P9715313588581163885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241397 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A241400.P9715313588581163885

/-!
# A241401: Number of 5Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241401, there is no canonical definition to state claims against.
-/

/-! ## A241401.P15410424986611871002

`A241397(A167499(n+3))`
-/

namespace A241401.P15410424986611871002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241397 (A167499 (n + 3)).toNat

end

end A241401.P15410424986611871002

/-! ## A241401.P1390271262405291346

`A241397(A155212(n)+13)`
-/

namespace A241401.P1390271262405291346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241397 (A155212 n + 13).toNat

end

end A241401.P1390271262405291346

/-! ## A241401.P3152322428582015555

`A241397(A056000(n)+15)`
-/

namespace A241401.P3152322428582015555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241397 (A056000 n + 15).toNat

end

end A241401.P3152322428582015555

/-! ## A241401.P3900934593490068105

`A241397(eq[7, A066657(n)])`
-/

namespace A241401.P3900934593490068105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241401.P3900934593490068105

/-! ## A241401.P14643227699410093898

`A241397(A166136(n+3)-1)`
-/

namespace A241401.P14643227699410093898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241397 (A166136 (n + 3) - 1).toNat

end

end A241401.P14643227699410093898

/-!
# A241402: Number of 6Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241402, there is no canonical definition to state claims against.
-/

/-! ## A241402.P15190377380839990676

`A241397(A167499(n+4)+1)`
-/

namespace A241402.P15190377380839990676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241397 (A167499 (n + 4) + 1).toNat

end

end A241402.P15190377380839990676

/-! ## A241402.P2644570943848710128

`A241397(A000217(n+5)+6)`
-/

namespace A241402.P2644570943848710128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241397 (A000217 (n + 5) + 6).toNat

end

end A241402.P2644570943848710128

/-! ## A241402.P12359442452195610284

`A241397(eq[7, A131818(n+1)])`
-/

namespace A241402.P12359442452195610284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241402.P12359442452195610284

/-!
# A241403: Numbers n such that (n^2 + 2)/3 is not prime.

The programs for A241403, there is no canonical definition to state claims against.
-/

/-! ## A241403.P12787245127337990867

`comp[A240878(n+1)]`
-/

namespace A241403.P12787245127337990867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A241403.P12787245127337990867

/-! ## A241403.P4259147436027278239

`eq[0, char[A240878(A008619(n))]]`
-/

namespace A241403.P4259147436027278239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240878 (A008619 n).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A241403.P4259147436027278239

/-! ## A241403.P116238608692768767

`eq[0, char[A240878(A246694(n))]]`
-/

namespace A241403.P116238608692768767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240878 (A246694 n).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A241403.P116238608692768767

/-! ## A241403.P16961999617447207142

`eq[0, char[A240878(A110654(n+1))]]`
-/

namespace A241403.P16961999617447207142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240878 (A110654 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A241403.P16961999617447207142

/-! ## A241403.P12704124024183406169

`eq[A017053(3*n)%3, char[A240878(n+1)]]`
-/

namespace A241403.P12704124024183406169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017053 (3 * n)) 3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240878 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A241403.P12704124024183406169

/-! ## A241403.P4842698319655870822

`eq[A008611(3*n)-(n+1), char[A240878(n+1)]]`
-/

namespace A241403.P4842698319655870822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * n) - (n + 1 : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240878 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A241403.P4842698319655870822

/-!
# A241404: Sum of n and the sum of the factorials of its digits.

The programs for A241404, the canonical program `A241404.P1829195198016813191` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241404 has offset 1).

The definition of A241404 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061602, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A241404.P1829195198016813191

`n+1+A061602(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A241404

/-- `n+1+A061602(n+1)` -/
def P1829195198016813191.Spec : Prop :=
  ∀ n, P1829195198016813191.a n = A241404 (n + 1)

theorem P1829195198016813191.correct : P1829195198016813191.Spec := by
  intro n
  simp only [A241404, Nat.add_sub_cancel]

end A241404

/-! ## A241404.P12175179454916780300

`∑{digits}[n+1, #!]+1+n`
-/

namespace A241404.P12175179454916780300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial x).sum + 1 + n

end

end A241404.P12175179454916780300

namespace A241404

/-- `∑{digits}[n+1, #!]+1+n` -/
def P12175179454916780300.Spec : Prop :=
  ∀ n, (P12175179454916780300.a n : ℤ) = A241404 (n + 1)

theorem P12175179454916780300.correct : P12175179454916780300.Spec := by
  intro n
  simp only [A241404, Nat.add_sub_cancel, A241404.P12175179454916780300.f1, A241404.P12175179454916780300.a, A241404.P1829195198016813191.a, A061602, A061602.P6084715743619966137.f1, A061602.P6084715743619966137.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A241404

/-! ## A241404.P6319908044858327345

`2*(n+1)-A108911(n+1)`
-/

namespace A241404.P6319908044858327345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A108911 (n + 1)

end

end A241404.P6319908044858327345

namespace A241404

/-- `2*(n+1)-A108911(n+1)` -/
def P6319908044858327345.Spec : Prop :=
  ∀ n, P6319908044858327345.a n = A241404 (n + 1)

theorem P6319908044858327345.correct : P6319908044858327345.Spec := by
  intro n
  simp only [A241404, Nat.add_sub_cancel, A241404.P6319908044858327345.a, A241404.P1829195198016813191.a, A061602, A061602.P6084715743619966137.f1, A061602.P6084715743619966137.a, A108911, A108911.P11409882187476094557.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A241404

/-! ## A241404.P1313309557656700948

`∑{digits}[n+1, A000142(#)]+1+n`
-/

namespace A241404.P1313309557656700948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A000142 x).sum + 1 + (n : ℤ)

end

end A241404.P1313309557656700948

namespace A241404

/-- `∑{digits}[n+1, A000142(#)]+1+n` -/
def P1313309557656700948.Spec : Prop :=
  ∀ n, P1313309557656700948.a n = A241404 (n + 1)

end A241404

/-! ## A241404.P2057060984561920665

`Δ[∑[n]+∑[A061602(n)]]`
-/

namespace A241404.P2057060984561920665
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061602 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241404.P2057060984561920665

namespace A241404

/-- `Δ[∑[n]+∑[A061602(n)]]` -/
def P2057060984561920665.Spec : Prop :=
  ∀ n, P2057060984561920665.a n = A241404 (n + 1)

end A241404

/-! ## A241404.P8433067711489837918

`A061602(A008592(n+1))+n`
-/

namespace A241404.P8433067711489837918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061602 (A008592 (n + 1)).toNat + (n : ℤ)

end

end A241404.P8433067711489837918

namespace A241404

/-- `A061602(A008592(n+1))+n` -/
def P8433067711489837918.Spec : Prop :=
  ∀ n, P8433067711489837918.a n = A241404 (n + 1)

end A241404

/-! ## A241404.P14838622854388403599

`A061602(A017281(n+1))+n`
-/

namespace A241404.P14838622854388403599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061602 (A017281 (n + 1)).toNat + (n : ℤ)

end

end A241404.P14838622854388403599

namespace A241404

/-- `A061602(A017281(n+1))+n` -/
def P14838622854388403599.Spec : Prop :=
  ∀ n, P14838622854388403599.a n = A241404 (n + 1)

end A241404

/-!
# A241405: Sum of modified exponential divisors: if n = Product p_i^r_i then me-sigma(x) = Product (sum p_i^s_i such that s_i+1 divides r_i+1).

The programs for A241405, there is no canonical definition to state claims against.
-/

/-! ## A241405.P319062163054352670

`A051377((n+1)*∏{p}[n+1, #])/∏{p}[n+1, #]`
-/

namespace A241405.P319062163054352670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051377 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p)) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

end

end A241405.P319062163054352670

/-! ## A241405.P10517041007336965217

`A051377((n+1)*∏{p}[n+1, #])/A007947(n+1)`
-/

namespace A241405.P10517041007336965217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051377 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p)) : ℚ) / (A007947 (n + 1) : ℚ)

end

end A241405.P10517041007336965217

/-! ## A241405.P4822668389839553374

`A051377((n+1)*∏{p}[n+1, #])/A015053(n+1)`
-/

namespace A241405.P4822668389839553374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051377 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p)) : ℚ) / (A015053 (n + 1) : ℚ)

end

end A241405.P4822668389839553374

/-! ## A241405.P12065304623063647672

`A051377((n+1)/∏{p}[n+1, 1/#])/A007947(n+1)`
-/

namespace A241405.P12065304623063647672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051377 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), 1 / (p : ℚ)))).toNat : ℚ) / (A007947 (n + 1) : ℚ)

end

end A241405.P12065304623063647672

/-! ## A241405.P14210181320743571295

`A051377((n+1)/∏{p}[n+1, 1/#])/A015053(n+1)`
-/

namespace A241405.P14210181320743571295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051377 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), 1 / (p : ℚ)))).toNat : ℚ) / (A015053 (n + 1) : ℚ)

end

end A241405.P14210181320743571295

/-! ## A241405.P2590478980248976507

`A051377(A064549(n+1))/A007947(n+1)`
-/

namespace A241405.P2590478980248976507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051377 (A064549 (n + 1)).toNat : ℚ) / (A007947 (n + 1) : ℚ)

end

end A241405.P2590478980248976507

/-! ## A241405.P18423238623254263256

`A051377(A064549(n+1))/A015053(n+1)`
-/

namespace A241405.P18423238623254263256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051377 (A064549 (n + 1)).toNat : ℚ) / (A015053 (n + 1) : ℚ)

end

end A241405.P18423238623254263256

/-! ## A241405.P3219337336444349937

`abs(A051377(A064549(n+1))/A062953(n+1))`
-/

namespace A241405.P3219337336444349937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A051377 (A064549 (n + 1)).toNat : ℚ) / (A062953 (n + 1) : ℚ)|

end

end A241405.P3219337336444349937

/-! ## A241405.P16115050546439966561

`A051377(A064549(n+1))/(A076618(n+1)-1)`
-/

namespace A241405.P16115050546439966561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051377 (A064549 (n + 1)).toNat : ℚ) / (A076618 (n + 1) - 1 : ℚ)

end

end A241405.P16115050546439966561

/-! ## A241405.P4130044687214000118

`A051377(A064549(n+1))/(A073353(n+1)-(n+1))`
-/

namespace A241405.P4130044687214000118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051377 (A064549 (n + 1)).toNat : ℚ) / (A073353 (n + 1) - (n + 1 : ℤ) : ℚ)

end

end A241405.P4130044687214000118

/-!
# A241406: Numbers n such that n^2 == -1 (mod 61).

The programs for A241406, the canonical program `A241406.P18144182514012980170` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241406 has offset 1).

The definition of A241406 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A241406.P18144182514012980170

`a(n-2)+61` with `a(0)=11, a(1)=50`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A241406

/-- `a(n-2)+61` -/
def P18144182514012980170.Spec : Prop :=
  ∀ n, (P18144182514012980170.a n : ℤ) = A241406 (n + 1)

theorem P18144182514012980170.correct : P18144182514012980170.Spec := by
  intro n
  simp only [A241406, Nat.add_sub_cancel]

end A241406

/-! ## A241406.P5158425330652405823

`∑[floor(a(n-2))]` with `a(0)=11, a(1)=39, a(2)=22`

`floor` is left out, it is the identity on integers.
-/

namespace A241406.P5158425330652405823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11, 39, 22] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241406.P5158425330652405823

namespace A241406

/-- `∑[floor(a(n-2))]` -/
def P5158425330652405823.Spec : Prop :=
  ∀ n, (P5158425330652405823.a n : ℤ) = A241406 (n + 1)

end A241406

/-! ## A241406.P8658770543622676014

`61*n-a(n-1)` with `a(0)=11`
-/

namespace A241406.P8658770543622676014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  (61 * n : ℤ) - a (n - 1)

end

end A241406.P8658770543622676014

namespace A241406

/-- `61*n-a(n-1)` -/
def P8658770543622676014.Spec : Prop :=
  ∀ n, P8658770543622676014.a n = A241406 (n + 1)

end A241406

/-! ## A241406.P11472422761604806631

`A167533(n)-A090771(n+1)`
-/

namespace A241406.P11472422761604806631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167533 n - A090771 (n + 1)

end

end A241406.P11472422761604806631

namespace A241406

/-- `A167533(n)-A090771(n+1)` -/
def P11472422761604806631.Spec : Prop :=
  ∀ n, P11472422761604806631.a n = A241406 (n + 1)

end A241406

/-! ## A241406.P10718635234427015673

`A156674(n+1)+A091998(n+1)`
-/

namespace A241406.P10718635234427015673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) + A091998 (n + 1)

end

end A241406.P10718635234427015673

namespace A241406

/-- `A156674(n+1)+A091998(n+1)` -/
def P10718635234427015673.Spec : Prop :=
  ∀ n, P10718635234427015673.a n = A241406 (n + 1)

end A241406

/-! ## A241406.P4844789632745737475

`A164135(n+1)+A113804(n+1)`
-/

namespace A241406.P4844789632745737475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164135 (n + 1) + A113804 (n + 1)

end

end A241406.P4844789632745737475

namespace A241406

/-- `A164135(n+1)+A113804(n+1)` -/
def P4844789632745737475.Spec : Prop :=
  ∀ n, P4844789632745737475.a n = A241406 (n + 1)

end A241406

/-! ## A241406.P974697546252592456

`A281445(n+1)+A159254(n+1)`
-/

namespace A241406.P974697546252592456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281445 (n + 1) + A159254 (n + 1)

end

end A241406.P974697546252592456

namespace A241406

/-- `A281445(n+1)+A159254(n+1)` -/
def P974697546252592456.Spec : Prop :=
  ∀ n, P974697546252592456.a n = A241406 (n + 1)

end A241406

/-! ## A241406.P15789414634893830967

`A322489(n+1)+A155098(n+1)`
-/

namespace A241406.P15789414634893830967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322489 (n + 1) + A155098 (n + 1)

end

end A241406.P15789414634893830967

namespace A241406

/-- `A322489(n+1)+A155098(n+1)` -/
def P15789414634893830967.Spec : Prop :=
  ∀ n, P15789414634893830967.a n = A241406 (n + 1)

end A241406

/-! ## A241406.P9700916590047117838

`A155098(n+1)+2*A090771(n+1)`
-/

namespace A241406.P9700916590047117838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155098 (n + 1) + 2 * A090771 (n + 1)

end

end A241406.P9700916590047117838

namespace A241406

/-- `A155098(n+1)+2*A090771(n+1)` -/
def P9700916590047117838.Spec : Prop :=
  ∀ n, P9700916590047117838.a n = A241406 (n + 1)

end A241406

/-! ## A241406.P12238676940245570775

`A089644(n+1)+2*A322489(n+1)`
-/

namespace A241406.P12238676940245570775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089644 (n + 1) + 2 * A322489 (n + 1)

end

end A241406.P12238676940245570775

namespace A241406

/-- `A089644(n+1)+2*A322489(n+1)` -/
def P12238676940245570775.Spec : Prop :=
  ∀ n, P12238676940245570775.a n = A241406 (n + 1)

end A241406

/-! ## A241406.P10489927406588667942

`2*A155097(n+1)-A175886(n+1)`
-/

namespace A241406.P10489927406588667942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A155097 (n + 1) - A175886 (n + 1)

end

end A241406.P10489927406588667942

namespace A241406

/-- `2*A155097(n+1)-A175886(n+1)` -/
def P10489927406588667942.Spec : Prop :=
  ∀ n, P10489927406588667942.a n = A241406 (n + 1)

end A241406

/-! ## A241406.P13628072237645375509

`A155097(n+1)+A155098(n+1)-A155095(n+1)`
-/

namespace A241406.P13628072237645375509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155097 (n + 1) + (A155098 (n + 1) - A155095 (n + 1))

end

end A241406.P13628072237645375509

namespace A241406

/-- `A155097(n+1)+A155098(n+1)-A155095(n+1)` -/
def P13628072237645375509.Spec : Prop :=
  ∀ n, P13628072237645375509.a n = A241406 (n + 1)

end A241406

/-! ## A241406.P1984495273151124994

`A155107(n+1)+A241521(n+1)-A241520(n+1)`
-/

namespace A241406.P1984495273151124994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155107 (n + 1) + (A241521 (n + 1) - A241520 (n + 1))

end

end A241406.P1984495273151124994

namespace A241406

/-- `A155107(n+1)+A241521(n+1)-A241520(n+1)` -/
def P1984495273151124994.Spec : Prop :=
  ∀ n, P1984495273151124994.a n = A241406 (n + 1)

end A241406

/-! ## A241406.P14598202402656812010

`A072702(2*(n+1))+A002265(2*n)-1`
-/

namespace A241406.P14598202402656812010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072702 (2 * (n + 1)) + (A002265 (2 * n) - 1)

end

end A241406.P14598202402656812010

namespace A241406

/-- `A072702(2*(n+1))+A002265(2*n)-1` -/
def P14598202402656812010.Spec : Prop :=
  ∀ n, P14598202402656812010.a n = A241406 (n + 1)

end A241406

/-! ## A241406.P117335708932834025

`A047209(n+1)+2*A301718(A047209(n+1))`
-/

namespace A241406.P117335708932834025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047209 (n + 1) + 2 * A301718 (A047209 (n + 1)).toNat

end

end A241406.P117335708932834025

namespace A241406

/-- `A047209(n+1)+2*A301718(A047209(n+1))` -/
def P117335708932834025.Spec : Prop :=
  ∀ n, P117335708932834025.a n = A241406 (n + 1)

end A241406

/-!
# A241407: Numbers n such that n^2 == -1 (mod 73).

The programs for A241407, the canonical program `A241407.P14410298262473197848` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241407 has offset 1).

The definition of A241407 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A241407.P14410298262473197848

`a(n-2)+73` with `a(0)=27, a(1)=46`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A241407

/-- `a(n-2)+73` -/
def P14410298262473197848.Spec : Prop :=
  ∀ n, (P14410298262473197848.a n : ℤ) = A241407 (n + 1)

theorem P14410298262473197848.correct : P14410298262473197848.Spec := by
  intro n
  simp only [A241407, Nat.add_sub_cancel]

end A241407

/-! ## A241407.P10131334470315865331

`73*n-a(n-1)` with `a(0)=27`
-/

namespace A241407.P10131334470315865331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [27] fun n a =>
  (73 * n : ℤ) - a (n - 1)

end

end A241407.P10131334470315865331

namespace A241407

/-- `73*n-a(n-1)` -/
def P10131334470315865331.Spec : Prop :=
  ∀ n, P10131334470315865331.a n = A241407 (n + 1)

end A241407

/-! ## A241407.P7787750723597245033

`∑[A040011(n)²+18]`
-/

namespace A241407.P7787750723597245033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040011 n ^ 2 + 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241407.P7787750723597245033

namespace A241407

/-- `∑[A040011(n)²+18]` -/
def P7787750723597245033.Spec : Prop :=
  ∀ n, P7787750723597245033.a n = A241407 (n + 1)

end A241407

/-! ## A241407.P11158296213161253279

`12*n+6+∑[A040425(n)]`
-/

namespace A241407.P11158296213161253279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n + 6 : ℤ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241407.P11158296213161253279

namespace A241407

/-- `12*n+6+∑[A040425(n)]` -/
def P11158296213161253279.Spec : Prop :=
  ∀ n, P11158296213161253279.a n = A241407 (n + 1)

end A241407

/-! ## A241407.P6962729310638269213

`A155097(n+1)+3*A166639(n)`
-/

namespace A241407.P6962729310638269213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155097 (n + 1) + 3 * A166639 n

end

end A241407.P6962729310638269213

namespace A241407

/-- `A155097(n+1)+3*A166639(n)` -/
def P6962729310638269213.Spec : Prop :=
  ∀ n, P6962729310638269213.a n = A241407 (n + 1)

end A241407

/-! ## A241407.P9421641417564337905

`∑[A000035(n)]+9*A047621(n+1)`
-/

namespace A241407.P9421641417564337905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 9 * A047621 (n + 1)

end

end A241407.P9421641417564337905

namespace A241407

/-- `∑[A000035(n)]+9*A047621(n+1)` -/
def P9421641417564337905.Spec : Prop :=
  ∀ n, P9421641417564337905.a n = A241407 (n + 1)

end A241407

/-! ## A241407.P13342854279263525024

`A047219(n+2)+4*A212161(n)`
-/

namespace A241407.P13342854279263525024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047219 (n + 2) + 4 * A212161 n

end

end A241407.P13342854279263525024

namespace A241407

/-- `A047219(n+2)+4*A212161(n)` -/
def P13342854279263525024.Spec : Prop :=
  ∀ n, P13342854279263525024.a n = A241407 (n + 1)

end A241407

/-! ## A241407.P715238307831959144

`A155086(n+1)+A016825(A155086(n+1)+n)`
-/

namespace A241407.P715238307831959144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155086 (n + 1) + A016825 (A155086 (n + 1) + (n : ℤ)).toNat

end

end A241407.P715238307831959144

namespace A241407

/-- `A155086(n+1)+A016825(A155086(n+1)+n)` -/
def P715238307831959144.Spec : Prop :=
  ∀ n, P715238307831959144.a n = A241407 (n + 1)

end A241407

/-!
# A241408: a(n) is the number of partitions of n such that the number of parts having multiplicity > 1 is a part.

The programs for A241408, there is no canonical definition to state claims against.
-/

/-! ## A241408.P4041455419574487417

`A241411(n)+A241409(n)`
-/

namespace A241408.P4041455419574487417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241411 n + A241409 n

end

end A241408.P4041455419574487417

/-! ## A241408.P8418074896772382282

`A241414(n)+A241415(n)`
-/

namespace A241408.P8418074896772382282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241414 n + A241415 n

end

end A241408.P8418074896772382282

/-! ## A241408.P6259631614651880443

`A000041(n)-(A241412(n)+A241410(n))`
-/

namespace A241408.P6259631614651880443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241412 n + A241410 n)

end

end A241408.P6259631614651880443

/-! ## A241408.P8137603132633400072

`A000041(n)-(A241417(n)+A241416(n))`
-/

namespace A241408.P8137603132633400072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241417 n + A241416 n)

end

end A241408.P8137603132633400072

/-! ## A241408.P5154147672662462426

`A213598(n)-(A241412(n)+A241410(n))`
-/

namespace A241408.P5154147672662462426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - (A241412 n + A241410 n)

end

end A241408.P5154147672662462426

/-!
# A241409: Number of partitions of n such that the number of parts having multiplicity >1 is a part and the number of distinct parts is a part.

The programs for A241409, there is no canonical definition to state claims against.
-/

/-! ## A241409.P6780755004007859728

`A241387(n)+A241389(n)-A241410(n)`
-/

namespace A241409.P6780755004007859728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241387 n + (A241389 n - A241410 n)

end

end A241409.P6780755004007859728

/-! ## A241409.P7099680797746633003

`A241442(n)+A241443(n)-A241410(n)`
-/

namespace A241409.P7099680797746633003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241442 n + (A241443 n - A241410 n)

end

end A241409.P7099680797746633003

/-! ## A241409.P981392199323423572

`A241377(n)+A241378(n)-A241410(n)`
-/

namespace A241409.P981392199323423572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241377 n + (A241378 n - A241410 n)

end

end A241409.P981392199323423572

/-! ## A241409.P2106218195123264343

`A241414(n)+A241415(n)-A241411(n)`
-/

namespace A241409.P2106218195123264343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241414 n + (A241415 n - A241411 n)

end

end A241409.P2106218195123264343

/-! ## A241409.P9679695731942023090

`A000041(n)-(A241410(n)+A241412(n)+A241411(n))`
-/

namespace A241409.P9679695731942023090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241410 n + (A241412 n + A241411 n))

end

end A241409.P9679695731942023090

/-! ## A241409.P2715427722211517101

`A000041(n)-(A241410(n)+A241445(n)+A241444(n))`
-/

namespace A241409.P2715427722211517101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241410 n + (A241445 n + A241444 n))

end

end A241409.P2715427722211517101

/-! ## A241409.P5393593662634684828

`A139582(n)/2-(A241410(n)+A241412(n)+A241411(n))`
-/

namespace A241409.P5393593662634684828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - (A241410 n + (A241412 n + A241411 n) : ℚ)

end

end A241409.P5393593662634684828

/-! ## A241409.P13335146833908173919

`A139582(n)/2-(A241410(n)+A241445(n)+A241444(n))`
-/

namespace A241409.P13335146833908173919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - (A241410 n + (A241445 n + A241444 n) : ℚ)

end

end A241409.P13335146833908173919

/-!
# A241410: Number of partitions of n such that the number of parts having multiplicity >1 is not a part and the number of distinct parts is a part.

The programs for A241410, there is no canonical definition to state claims against.
-/

/-! ## A241410.P6367237128089952667

`A241387(n)+A241389(n)-A241409(n)`
-/

namespace A241410.P6367237128089952667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241387 n + (A241389 n - A241409 n)

end

end A241410.P6367237128089952667

/-! ## A241410.P11602120787684528426

`A241416(n)+A241417(n)-A241412(n)`
-/

namespace A241410.P11602120787684528426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241416 n + (A241417 n - A241412 n)

end

end A241410.P11602120787684528426

/-! ## A241410.P7529923912482755886

`A241442(n)+A241443(n)-A241409(n)`
-/

namespace A241410.P7529923912482755886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241442 n + (A241443 n - A241409 n)

end

end A241410.P7529923912482755886

/-! ## A241410.P12244099267570623367

`A241377(n)+A241378(n)-A241409(n)`
-/

namespace A241410.P12244099267570623367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241377 n + (A241378 n - A241409 n)

end

end A241410.P12244099267570623367

/-! ## A241410.P6928317112595509735

`A000041(n)-(A241412(n)+A241411(n)+A241409(n))`
-/

namespace A241410.P6928317112595509735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241412 n + (A241411 n + A241409 n))

end

end A241410.P6928317112595509735

/-! ## A241410.P8910913562539733067

`A000041(n)-A241445(n)-A241444(n)-A241409(n)`
-/

namespace A241410.P8910913562539733067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241445 n - A241444 n - A241409 n

end

end A241410.P8910913562539733067

/-!
# A241411: Number of partitions of n such that the number of parts having multiplicity >1 is a part and the number of distinct parts is not a part.

The programs for A241411, there is no canonical definition to state claims against.
-/

/-! ## A241411.P9056855928084099464

`A241414(n)+A241415(n)-A241409(n)`
-/

namespace A241411.P9056855928084099464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241414 n + (A241415 n - A241409 n)

end

end A241411.P9056855928084099464

/-! ## A241411.P1567936948658322822

`A241444(n)+A241445(n)-A241412(n)`
-/

namespace A241411.P1567936948658322822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241444 n + (A241445 n - A241412 n)

end

end A241411.P1567936948658322822

/-! ## A241411.P14236183399640245038

`A000041(n)-(A241412(n)+A241410(n))-A241409(n)`
-/

namespace A241411.P14236183399640245038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241412 n + A241410 n) - A241409 n

end

end A241411.P14236183399640245038

/-! ## A241411.P6691905597345468752

`A000041(n)-(A241417(n)+A241416(n))-A241409(n)`
-/

namespace A241411.P6691905597345468752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241417 n + A241416 n) - A241409 n

end

end A241411.P6691905597345468752

/-! ## A241411.P5616975948588074166

`A239946(n)-A241412(n)`
-/

namespace A241411.P5616975948588074166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239946 n - A241412 n

end

end A241411.P5616975948588074166

/-!
# A241412: Number of partitions of n such that neither the number of parts having multiplicity >1 nor the number of distinct parts is a part.

The programs for A241412, there is no canonical definition to state claims against.
-/

/-! ## A241412.P14424983388070991725

`A241416(n)+A241417(n)-A241410(n)`
-/

namespace A241412.P14424983388070991725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241416 n + (A241417 n - A241410 n)

end

end A241412.P14424983388070991725

/-! ## A241412.P5105042150919872341

`A241444(n)+A241445(n)-A241411(n)`
-/

namespace A241412.P5105042150919872341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241444 n + (A241445 n - A241411 n)

end

end A241412.P5105042150919872341

/-! ## A241412.P7870949096554492950

`A000041(n)-(A241410(n)+A241411(n)+A241409(n))`
-/

namespace A241412.P7870949096554492950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241410 n + (A241411 n + A241409 n))

end

end A241412.P7870949096554492950

/-! ## A241412.P17635766219437362947

`A000041(n)-(A241411(n)+A241443(n)+A241442(n))`
-/

namespace A241412.P17635766219437362947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241411 n + (A241443 n + A241442 n))

end

end A241412.P17635766219437362947

/-! ## A241412.P6148723352141121972

`A139582(n)/2-(A241411(n)+A241410(n)+A241409(n))`
-/

namespace A241412.P6148723352141121972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - (A241411 n + (A241410 n + A241409 n) : ℚ)

end

end A241412.P6148723352141121972

/-! ## A241412.P8371618668668896201

`A139582(n)/2-(A241411(n)+A241443(n)+A241442(n))`
-/

namespace A241412.P8371618668668896201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - (A241411 n + (A241443 n + A241442 n) : ℚ)

end

end A241412.P8371618668668896201

/-!
# A241413: Number of partitions p of n such that the number of numbers having multiplicity 1 in p is a part of p.

The programs for A241413, there is no canonical definition to state claims against.
-/

/-! ## A241413.P2660239046959392188

`A241416(n)+A241414(n)`
-/

namespace A241413.P2660239046959392188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241416 n + A241414 n

end

end A241413.P2660239046959392188

/-! ## A241413.P456671422642581111

`A241442(n)+A241444(n)`
-/

namespace A241413.P456671422642581111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241442 n + A241444 n

end

end A241413.P456671422642581111

/-! ## A241413.P2289305271956298739

`A241447(n)+A241449(n)`
-/

namespace A241413.P2289305271956298739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241447 n + A241449 n

end

end A241413.P2289305271956298739

/-! ## A241413.P4562087133541954300

`A241506(n)+A241508(n)`
-/

namespace A241413.P4562087133541954300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241506 n + A241508 n

end

end A241413.P4562087133541954300

/-! ## A241413.P9725135826999256455

`A241511(n)+A241513(n)`
-/

namespace A241413.P9725135826999256455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241511 n + A241513 n

end

end A241413.P9725135826999256455

/-!
# A241414: Number of partitions p of n such that the number of numbers having multiplicity 1 in p is a part and the number of numbers having multiplicity > 1 is a part.

The programs for A241414, there is no canonical definition to state claims against.
-/

/-! ## A241414.P7388507241941564773

`A241409(n)+A241411(n)-A241415(n)`
-/

namespace A241414.P7388507241941564773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241409 n + (A241411 n - A241415 n)

end

end A241414.P7388507241941564773

/-! ## A241414.P3163094651918448191

`A241442(n)+A241444(n)-A241416(n)`
-/

namespace A241414.P3163094651918448191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241442 n + (A241444 n - A241416 n)

end

end A241414.P3163094651918448191

/-! ## A241414.P1545453652467045922

`A241506(n)+A241508(n)-A241416(n)`
-/

namespace A241414.P1545453652467045922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241506 n + (A241508 n - A241416 n)

end

end A241414.P1545453652467045922

/-! ## A241414.P1757248504444187427

`A241511(n)+A241513(n)-A241416(n)`
-/

namespace A241414.P1757248504444187427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241511 n + (A241513 n - A241416 n)

end

end A241414.P1757248504444187427

/-! ## A241414.P14113255397954913196

`A241508(n)+A240486(n)-(A241507(n)+A241416(n))`
-/

namespace A241414.P14113255397954913196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241508 n + A240486 n - (A241507 n + A241416 n)

end

end A241414.P14113255397954913196

/-! ## A241414.P16989103345532266849

`A000041(n)-(A241412(n)+A241410(n))-A241415(n)`
-/

namespace A241414.P16989103345532266849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241412 n + A241410 n) - A241415 n

end

end A241414.P16989103345532266849

/-! ## A241414.P12086721505861490270

`A000041(n)-(A241417(n)+A241416(n))-A241415(n)`
-/

namespace A241414.P12086721505861490270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241417 n + A241416 n) - A241415 n

end

end A241414.P12086721505861490270

/-!
# A241415: Number of partitions p of n such that the number of numbers having multiplicity 1 in p is not a part and the number of numbers having multiplicity > 1 is a part.

The programs for A241415, there is no canonical definition to state claims against.
-/

/-! ## A241415.P13513054590691081985

`A241443(n)+A241445(n)-A241417(n)`
-/

namespace A241415.P13513054590691081985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241443 n + (A241445 n - A241417 n)

end

end A241415.P13513054590691081985

/-! ## A241415.P10387588223274743041

`A241507(n)+A241509(n)-A241417(n)`
-/

namespace A241415.P10387588223274743041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241507 n + (A241509 n - A241417 n)

end

end A241415.P10387588223274743041

/-! ## A241415.P2643526757431516418

`A241409(n)+A241411(n)-A241414(n)`
-/

namespace A241415.P2643526757431516418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241409 n + (A241411 n - A241414 n)

end

end A241415.P2643526757431516418

/-! ## A241415.P7483447180004234118

`A241448(n)+A241450(n)-A241417(n)`
-/

namespace A241415.P7483447180004234118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241448 n + (A241450 n - A241417 n)

end

end A241415.P7483447180004234118

/-! ## A241415.P17761670080020505011

`A241512(n)+A241514(n)-A241417(n)`
-/

namespace A241415.P17761670080020505011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241512 n + (A241514 n - A241417 n)

end

end A241415.P17761670080020505011

/-!
# A241416: Number of partitions p of n such that the number of numbers having multiplicity 1 in p is a part and the number of numbers having multiplicity > 1 is not a part.

The programs for A241416, there is no canonical definition to state claims against.
-/

/-! ## A241416.P4441150790524024464

`A241410(n)+A241412(n)-A241417(n)`
-/

namespace A241416.P4441150790524024464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241410 n + (A241412 n - A241417 n)

end

end A241416.P4441150790524024464

/-! ## A241416.P2194106192567163302

`A241442(n)+A241444(n)-A241414(n)`
-/

namespace A241416.P2194106192567163302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241442 n + (A241444 n - A241414 n)

end

end A241416.P2194106192567163302

/-! ## A241416.P6896161530865688888

`A241506(n)+A241508(n)-A241414(n)`
-/

namespace A241416.P6896161530865688888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241506 n + (A241508 n - A241414 n)

end

end A241416.P6896161530865688888

/-! ## A241416.P10448666926626018114

`A241511(n)+A241513(n)-A241414(n)`
-/

namespace A241416.P10448666926626018114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241511 n + (A241513 n - A241414 n)

end

end A241416.P10448666926626018114

/-! ## A241416.P3150057276601311970

`A000041(n)-(A241417(n)+A241411(n)+A241409(n))`
-/

namespace A241416.P3150057276601311970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241417 n + (A241411 n + A241409 n))

end

end A241416.P3150057276601311970

/-! ## A241416.P7746963863319373004

`A241508(n)+A240486(n)-A241414(n)-A241507(n)`
-/

namespace A241416.P7746963863319373004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241508 n + A240486 n - A241414 n - A241507 n

end

end A241416.P7746963863319373004

/-! ## A241416.P9820853555215590825

`A000041(n)-A241509(n)-A241507(n)-A241414(n)`
-/

namespace A241416.P9820853555215590825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241509 n - A241507 n - A241414 n

end

end A241416.P9820853555215590825

/-!
# A241417: Number of partitions p of n such that the number of numbers p having multiplicity 1 in p is not a part and the number of numbers having multiplicity > 1 is not a part.

The programs for A241417, there is no canonical definition to state claims against.
-/

/-! ## A241417.P1598442085901649244

`A241410(n)+A241412(n)-A241416(n)`
-/

namespace A241417.P1598442085901649244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241410 n + (A241412 n - A241416 n)

end

end A241417.P1598442085901649244

/-! ## A241417.P17203414830130201127

`A241443(n)+A241445(n)-A241415(n)`
-/

namespace A241417.P17203414830130201127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241443 n + (A241445 n - A241415 n)

end

end A241417.P17203414830130201127

/-! ## A241417.P6908246688910009380

`A241507(n)+A241509(n)-A241415(n)`
-/

namespace A241417.P6908246688910009380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241507 n + (A241509 n - A241415 n)

end

end A241417.P6908246688910009380

/-! ## A241417.P1923786284595669363

`A241448(n)+A241450(n)-A241415(n)`
-/

namespace A241417.P1923786284595669363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241448 n + (A241450 n - A241415 n)

end

end A241417.P1923786284595669363

/-! ## A241417.P12565407360605027237

`A241512(n)+A241514(n)-A241415(n)`
-/

namespace A241417.P12565407360605027237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241512 n + (A241514 n - A241415 n)

end

end A241417.P12565407360605027237

/-! ## A241417.P3463670943167663735

`A000041(n)-(A241414(n)+A241416(n)+A241415(n))`
-/

namespace A241417.P3463670943167663735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241414 n + (A241416 n + A241415 n))

end

end A241417.P3463670943167663735

/-!
# A241418: First differences of Arshon's sequence, cf. A099054.

The programs for A241418, the canonical program `A241418.P4866723597683486828` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241418 has offset 0).

The definition of A241418 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6560 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241418.P10435108943789467114

`Δ[A219762(n+1)]`
-/

namespace A241418.P10435108943789467114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241418.P10435108943789467114

namespace A241418

/-- `Δ[A219762(n+1)]` -/
def P10435108943789467114.Spec : Prop :=
  ∀ n, P10435108943789467114.a n = A241418 n

end A241418

/-! ## A241418.P9665650152095279927

`A219762(n+2)-A219762(n+1)`
-/

namespace A241418.P9665650152095279927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219762 (n + 2) - A219762 (n + 1)

end

end A241418.P9665650152095279927

namespace A241418

/-- `A219762(n+2)-A219762(n+1)` -/
def P9665650152095279927.Spec : Prop :=
  ∀ n, P9665650152095279927.a n = A241418 n

end A241418

/-! ## A241418.P4866723597683486828

`Δ[A053838(A128173(n))]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A241418

/-- `Δ[A053838(A128173(n))]` -/
def P4866723597683486828.Spec : Prop :=
  ∀ n, P4866723597683486828.a n = A241418 n

theorem P4866723597683486828.correct : P4866723597683486828.Spec := by
  intro n
  simp only [A241418]

end A241418

/-! ## A241418.P7171676097148542463

`Δ[A100337(n+1)%3]`
-/

namespace A241418.P7171676097148542463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100337 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241418.P7171676097148542463

namespace A241418

/-- `Δ[A100337(n+1)%3]` -/
def P7171676097148542463.Spec : Prop :=
  ∀ n, P7171676097148542463.a n = A241418 n

end A241418

/-! ## A241418.P16993896500372429354

`Δ[(A100336(n+1)+1)%3]`
-/

namespace A241418.P16993896500372429354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100336 (n + 1) + 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241418.P16993896500372429354

namespace A241418

/-- `Δ[(A100336(n+1)+1)%3]` -/
def P16993896500372429354.Spec : Prop :=
  ∀ n, P16993896500372429354.a n = A241418 n

end A241418

/-! ## A241418.P15597268826775344047

`Δ[xor(A100336(n+1), A100337(n+1))]`
-/

namespace A241418.P15597268826775344047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A100336 (n + 1)) (A100337 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241418.P15597268826775344047

namespace A241418

/-- `Δ[xor(A100336(n+1), A100337(n+1))]` -/
def P15597268826775344047.Spec : Prop :=
  ∀ n, P15597268826775344047.a n = A241418 n

end A241418

/-! ## A241418.P5197829713763155300

`Δ[A053838(A163344(n))]`
-/

namespace A241418.P5197829713763155300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 (A163344 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241418.P5197829713763155300

namespace A241418

/-- `Δ[A053838(A163344(n))]` -/
def P5197829713763155300.Spec : Prop :=
  ∀ n, P5197829713763155300.a n = A241418 n

end A241418

/-!
# A241419: Number of numbers m <= n that have a prime divisor greater than sqrt(n) (i.e., A006530(m)>sqrt(n)).

The programs for A241419, there is no canonical definition to state claims against.
-/

/-! ## A241419.P10132965830367376248

`n+1-(A333536(n+2)-Δ[A333535(n+1)])`
-/

namespace A241419.P10132965830367376248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A333536 (n + 2) - (f1 (n + 1) - f1 n))

end

end A241419.P10132965830367376248

/-! ## A241419.P4400579376632005286

`A024000(A333536(n+2)-Δ[A333535(n+1)])+n`
-/

namespace A241419.P4400579376632005286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A333536 (n + 2) - (f1 (n + 1) - f1 n)).toNat + (n : ℤ)

end

end A241419.P4400579376632005286

/-! ## A241419.P1249215796569698660

`n-A023443(A333536(n+2)-Δ[A333535(n+1)])`
-/

namespace A241419.P1249215796569698660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A333536 (n + 2) - (f1 (n + 1) - f1 n)).toNat

end

end A241419.P1249215796569698660

/-! ## A241419.P11731236442583034211

`n+1-(A333535(n+1)+A333536(n+2)-A333535(n+2))`
-/

namespace A241419.P11731236442583034211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A333535 (n + 1) + (A333536 (n + 2) - A333535 (n + 2)))

end

end A241419.P11731236442583034211

/-! ## A241419.P12563377954208412809

`n-A023443(A333535(n+1)+A333536(n+2)-A333535(n+2))`
-/

namespace A241419.P12563377954208412809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A333535 (n + 1) + (A333536 (n + 2) - A333535 (n + 2))).toNat

end

end A241419.P12563377954208412809

/-! ## A241419.P18256334904490885445

`1-A295084(n+1)+n`
-/

namespace A241419.P18256334904490885445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A295084 (n + 1) + (n : ℤ)

end

end A241419.P18256334904490885445

/-! ## A241419.P15563539971489912954

`1-(n-2*n)-A295084(1-(n-2*n))`
-/

namespace A241419.P15563539971489912954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - (2 * n : ℤ)) - A295084 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

end

end A241419.P15563539971489912954

/-! ## A241419.P15493909599798929957

`A024000(A295084(n+1))+n`
-/

namespace A241419.P15493909599798929957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A295084 (n + 1)).toNat + (n : ℤ)

end

end A241419.P15493909599798929957

/-! ## A241419.P15170162331121192276

`A005408(n)%(A295084(n+1)+n)`
-/

namespace A241419.P15170162331121192276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 n) (A295084 (n + 1) + (n : ℤ))

end

end A241419.P15170162331121192276

/-! ## A241419.P5442761617509890857

`abs(A295084(n+1)+A001478(n+1))`
-/

namespace A241419.P5442761617509890857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A295084 (n + 1) + A001478 (n + 1)|

end

end A241419.P5442761617509890857

/-!
# A241422: Limit-reverse of the infinite Fibonacci word A003849 with first term as initial block.

The programs for A241422, the canonical program `A241422.P16199679434567628478` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241422 has offset 0).

The definition of A241422 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241422.P18193489096216224514

`A003849(A245921(n)-n)`
-/

namespace A241422.P18193489096216224514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A245921 n - (n : ℤ)).toNat

end

end A241422.P18193489096216224514

namespace A241422

/-- `A003849(A245921(n)-n)` -/
def P18193489096216224514.Spec : Prop :=
  ∀ n, P18193489096216224514.a n = A241422 n

end A241422

/-! ## A241422.P16199679434567628478

`2-Δ[floor(ϕ*(sqrt(3)+n+1))]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A241422

/-- `2-Δ[floor(ϕ*(sqrt(3)+n+1))]` -/
def P16199679434567628478.Spec : Prop :=
  ∀ n, P16199679434567628478.a n = A241422 n

theorem P16199679434567628478.correct : P16199679434567628478.Spec := by
  intro n
  simp only [A241422]

end A241422

/-! ## A241422.P13499742752185525369

`Δ[floor(ϕ*(sqrt(3)+n+1))]%2`
-/

namespace A241422.P13499742752185525369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (Real.sqrt (3 : ℝ) + (n + 1 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A241422.P13499742752185525369

namespace A241422

/-- `Δ[floor(ϕ*(sqrt(3)+n+1))]%2` -/
def P13499742752185525369.Spec : Prop :=
  ∀ n, P13499742752185525369.a n = A241422 n

end A241422

/-! ## A241422.P7316375797778453437

`and(1, Δ[floor(ϕ*(sqrt(3)+n+1))])`
-/

namespace A241422.P7316375797778453437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (Real.sqrt (3 : ℝ) + (n + 1 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n)

end

end A241422.P7316375797778453437

namespace A241422

/-- `and(1, Δ[floor(ϕ*(sqrt(3)+n+1))])` -/
def P7316375797778453437.Spec : Prop :=
  ∀ n, P7316375797778453437.a n = A241422 n

end A241422

/-! ## A241422.P18087905513602364800

`A003849(A135600(n+1))`
-/

namespace A241422.P18087905513602364800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A135600 (n + 1)).toNat

end

end A241422.P18087905513602364800

namespace A241422

/-- `A003849(A135600(n+1))` -/
def P18087905513602364800.Spec : Prop :=
  ∀ n, P18087905513602364800.a n = A241422 n

end A241422

/-! ## A241422.P13859841243358900832

`and(A000322(n), A245920(n))²`
-/

namespace A241422.P13859841243358900832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000322 n) (A245920 n) ^ 2

end

end A241422.P13859841243358900832

namespace A241422

/-- `and(A000322(n), A245920(n))²` -/
def P13859841243358900832.Spec : Prop :=
  ∀ n, P13859841243358900832.a n = A241422 n

end A241422

/-! ## A241422.P9294315782522863284

`and(A001546(n), A245920(n))²`
-/

namespace A241422.P9294315782522863284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001546 n) (A245920 n) ^ 2

end

end A241422.P9294315782522863284

namespace A241422

/-- `and(A001546(n), A245920(n))²` -/
def P9294315782522863284.Spec : Prop :=
  ∀ n, P9294315782522863284.a n = A241422 n

end A241422

/-! ## A241422.P13018043745775245238

`and(A001848(n), A245920(n))²`
-/

namespace A241422.P13018043745775245238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001848 n) (A245920 n) ^ 2

end

end A241422.P13018043745775245238

namespace A241422

/-- `and(A001848(n), A245920(n))²` -/
def P13018043745775245238.Spec : Prop :=
  ∀ n, P13018043745775245238.a n = A241422 n

end A241422

/-! ## A241422.P12235040116227042802

`A003849(A246104(n+1)+A245920(n))`
-/

namespace A241422.P12235040116227042802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A246104 (n + 1) + A245920 n).toNat

end

end A241422.P12235040116227042802

namespace A241422

/-- `A003849(A246104(n+1)+A245920(n))` -/
def P12235040116227042802.Spec : Prop :=
  ∀ n, P12235040116227042802.a n = A241422 n

end A241422

/-! ## A241422.P2863230167989669177

`A003849(A245979(n+1)+A245920(n))`
-/

namespace A241422.P2863230167989669177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A245979 (n + 1) + A245920 n).toNat

end

end A241422.P2863230167989669177

namespace A241422

/-- `A003849(A245979(n+1)+A245920(n))` -/
def P2863230167989669177.Spec : Prop :=
  ∀ n, P2863230167989669177.a n = A241422 n

end A241422

/-!
# A241424: Largest number k > 0 such that n - k! is prime, or 0 if no such k exists.

The programs for A241424, there is no canonical definition to state claims against.
-/

/-! ## A241424.P12766082396587876325

`A293227(A127976(n+1))%4`
-/

namespace A241424.P12766082396587876325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293227 (A127976 (n + 1)).toNat) 4

end

end A241424.P12766082396587876325

/-! ## A241424.P14791875453048062230

`A077267(A311517(n)+A052971(n))`
-/

namespace A241424.P14791875453048062230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (A311517 n + A052971 n).toNat

end

end A241424.P14791875453048062230

/-! ## A241424.P9182553425573539256

`A001221(A006171(2*n))-A284751(n+1)`
-/

namespace A241424.P9182553425573539256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A006171 (2 * n)).toNat - A284751 (n + 1)

end

end A241424.P9182553425573539256

/-!
# A241425: Largest number k > 0 such that n + k! and n - k! are both prime, or 0 if no such k exists.

The programs for A241425, there is no canonical definition to state claims against.
-/

/-! ## A241425.P13102423058730937798

`A245716(n+1)-A072784(A185238(n))`
-/

namespace A241425.P13102423058730937798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245716 (n + 1) - A072784 (A185238 n).toNat

end

end A241425.P13102423058730937798

/-! ## A241425.P13732824097502237542

`A341619(A100178(n+1))+A245716(n+1)`
-/

namespace A241425.P13732824097502237542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341619 (A100178 (n + 1)).toNat + A245716 (n + 1)

end

end A241425.P13732824097502237542

/-! ## A241425.P16168623709505633835

`A245716(n+1)+A033665(A185284(n+2))`
-/

namespace A241425.P16168623709505633835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245716 (n + 1) + A033665 (A185284 (n + 2)).toNat

end

end A241425.P16168623709505633835

/-! ## A241425.P7867960251906700239

`A245716(n+1)+A185216(A033665(A185216(n)))`
-/

namespace A241425.P7867960251906700239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245716 (n + 1) + A185216 (A033665 (A185216 n).toNat).toNat

end

end A241425.P7867960251906700239

/-! ## A241425.P12871648324457616171

`A245716(n+1)+A185284(A032513(n*A185284(n)))`
-/

namespace A241425.P12871648324457616171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245716 (n + 1) + A185284 (A032513 ((n : ℤ) * A185284 n).toNat).toNat

end

end A241425.P12871648324457616171

/-!
# A241428: Number of n X n 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241428, there is no canonical definition to state claims against.
-/

/-! ## A241428.P2133302114948703537

`A241435(∑[4*n]+1)`
-/

namespace A241428.P2133302114948703537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A241428.P2133302114948703537

/-! ## A241428.P4317818337905996872

`A241435(n²+(n+1)²)+∑{digits}[n, C(#, 9)]`
-/

namespace A241428.P4317818337905996872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (n ^ 2 + (n + 1) ^ 2) + ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.choose x 9).sum : ℕ) : ℤ)

end

end A241428.P4317818337905996872

/-! ## A241428.P1731850565608462314

`record[A241435(Δ[A235355(n)])]`
-/

namespace A241428.P1731850565608462314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241428.P1731850565608462314

/-! ## A241428.P8089289739781891209

`record[A241435(A330613(n+1))]`
-/

namespace A241428.P8089289739781891209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241428.P8089289739781891209

/-!
# A241429: Number of n X 2 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241429, there is no canonical definition to state claims against.
-/

/-! ## A241429.P697116009279138640

`A241435(∑[n+2])`
-/

namespace A241429.P697116009279138640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A241429.P697116009279138640

/-! ## A241429.P2881405082515493241

`A241435(A000096(n+1))%A017377(n)`
-/

namespace A241429.P2881405082515493241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241435 (A000096 (n + 1)).toNat) (A017377 n)

end

end A241429.P2881405082515493241

/-!
# A241430: Number of n X 3 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241430, there is no canonical definition to state claims against.
-/

/-! ## A241430.P2397815888821002681

`A241435(∑[n+3]+1)`
-/

namespace A241430.P2397815888821002681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A241430.P2397815888821002681

/-! ## A241430.P15262160264365933025

`A079724(n+1)*A241435(A034856(n+2))`
-/

namespace A241430.P15262160264365933025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079724 (n + 1) * A241435 (A034856 (n + 2)).toNat

end

end A241430.P15262160264365933025

/-! ## A241430.P609901528040016847

`A241435(A034856(n+2))+A049347(3*n+2)`
-/

namespace A241430.P609901528040016847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (A034856 (n + 2)).toNat + A049347 (3 * n + 2)

end

end A241430.P609901528040016847

/-! ## A241430.P13148403912138681417

`A241435(A034856(n+2))%A111009(n+1)`
-/

namespace A241430.P13148403912138681417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241435 (A034856 (n + 2)).toNat) (A111009 (n + 1))

end

end A241430.P13148403912138681417

/-!
# A241431: Number of n X 4 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241431, there is no canonical definition to state claims against.
-/

/-! ## A241431.P3687410101633038684

`A241435(A141214(n+1))`
-/

namespace A241431.P3687410101633038684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (A141214 (n + 1)).toNat

end

end A241431.P3687410101633038684

/-! ## A241431.P4317040740878850360

`A241435(A027379(n+2))`
-/

namespace A241431.P4317040740878850360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (A027379 (n + 2)).toNat

end

end A241431.P4317040740878850360

/-! ## A241431.P9185419035968030819

`A241435(A055998(n+2))`
-/

namespace A241431.P9185419035968030819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (A055998 (n + 2)).toNat

end

end A241431.P9185419035968030819

/-! ## A241431.P14083554738372634531

`A241435(A155212(n)+5)`
-/

namespace A241431.P14083554738372634531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (A155212 n + 5).toNat

end

end A241431.P14083554738372634531

/-! ## A241431.P4892015098730882259

`A241435(A056000(n)+7)`
-/

namespace A241431.P4892015098730882259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (A056000 n + 7).toNat

end

end A241431.P4892015098730882259

/-!
# A241432: Number of n X 5 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241432, there is no canonical definition to state claims against.
-/

/-! ## A241432.P10290169882609283404

`A241435(Δ[A264443(n)])`
-/

namespace A241432.P10290169882609283404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (f1 (n + 1) - f1 n).toNat

end

end A241432.P10290169882609283404

/-! ## A241432.P14362780130722813620

`A241435(A046691(n+3))`
-/

namespace A241432.P14362780130722813620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (A046691 (n + 3)).toNat

end

end A241432.P14362780130722813620

/-! ## A241432.P6719143921981663928

`A241435(A056115(n)+11)`
-/

namespace A241432.P6719143921981663928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (A056115 n + 11).toNat

end

end A241432.P6719143921981663928

/-! ## A241432.P10919500875314832772

`A241435(eq[3, A152157(n)])`
-/

namespace A241432.P10919500875314832772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241432.P10919500875314832772

/-! ## A241432.P1242204184008963526

`A241435(eq[4, A193592(n)])`
-/

namespace A241432.P1242204184008963526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241432.P1242204184008963526

/-!
# A241433: Number of n X 6 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241433, there is no canonical definition to state claims against.
-/

/-! ## A241433.P8022616504187994750

`A241435(A052905(n+3))`
-/

namespace A241433.P8022616504187994750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (A052905 (n + 3)).toNat

end

end A241433.P8022616504187994750

/-! ## A241433.P8824868908722812203

`A241435(A302537(n)+15)`
-/

namespace A241433.P8824868908722812203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (A302537 n + 15).toNat

end

end A241433.P8824868908722812203

/-! ## A241433.P11211284154279753747

`A241435(A056119(n)+16)`
-/

namespace A241433.P11211284154279753747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (A056119 n + 16).toNat

end

end A241433.P11211284154279753747

/-! ## A241433.P13876359296679782390

`A241435(eq[3, A219347(n)])`
-/

namespace A241433.P13876359296679782390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241433.P13876359296679782390

/-! ## A241433.P14455462254997887521

`A241435(eq[5, A193592(n)])`
-/

namespace A241433.P14455462254997887521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241433.P14455462254997887521

/-!
# A241434: Number of n X 7 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241434, there is no canonical definition to state claims against.
-/

/-! ## A241434.P18204381496420631010

`A241435(A055999(n+4))`
-/

namespace A241434.P18204381496420631010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (A055999 (n + 4)).toNat

end

end A241434.P18204381496420631010

/-! ## A241434.P10727721974387520962

`A241435(eq[4, A219347(n)])`
-/

namespace A241434.P10727721974387520962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241434.P10727721974387520962

/-! ## A241434.P15929600272573808741

`A241435(eq[6, A193592(n)])`
-/

namespace A241434.P15929600272573808741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241434.P15929600272573808741

/-! ## A241434.P15026029125080382377

`A241435(eq[32, A166065(n)])`
-/

namespace A241434.P15026029125080382377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241434.P15026029125080382377

/-! ## A241434.P7054426903932048666

`A241435(A052905(n+4)-1)`
-/

namespace A241434.P7054426903932048666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (A052905 (n + 4) - 1).toNat

end

end A241434.P7054426903932048666

/-!
# A241436: Number of 2 X n 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241436, there is no canonical definition to state claims against.
-/

/-! ## A241436.P598050328334647638

`A241435(∑[n+1]+2)`
-/

namespace A241436.P598050328334647638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A241436.P598050328334647638

/-! ## A241436.P17801199165827301554

`A241435(A025747(n)+2)+char[18]`
-/

namespace A241436.P17801199165827301554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (A025747 n + 2).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A241436.P17801199165827301554

/-! ## A241436.P11114782537375512208

`record[A010054(n)*A241435(n+2)]`
-/

namespace A241436.P11114782537375512208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A241435 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241436.P11114782537375512208

/-! ## A241436.P15535436782912453688

`or(A000038(n), A241435(A238531(n+2)))`
-/

namespace A241436.P15535436782912453688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A241435 (A238531 (n + 2)).toNat)

end

end A241436.P15535436782912453688

/-!
# A241437: Number of 3 X n 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241437, there is no canonical definition to state claims against.
-/

/-! ## A241437.P706572837129730009

`A241435(∑[n+2]+4)`
-/

namespace A241437.P706572837129730009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A241437.P706572837129730009

/-! ## A241437.P18137532553367565276

`A241435(A167614(n+1))+char[16]`
-/

namespace A241437.P18137532553367565276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A241437.P18137532553367565276

/-! ## A241437.P14680446255175296830

`A326683(n)+A241435(A167614(n+1))`
-/

namespace A241437.P14680446255175296830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326683 n + A241435 (A167614 (n + 1)).toNat

end

end A241437.P14680446255175296830

/-! ## A241437.P13969060364652593674

`A326685(n)+A241435(A167614(n+1))`
-/

namespace A241437.P13969060364652593674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326685 n + A241435 (A167614 (n + 1)).toNat

end

end A241437.P13969060364652593674

/-! ## A241437.P14862318055520435149

`A241435(A167614(n+1))%A153819(n)`
-/

namespace A241437.P14862318055520435149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241435 (A167614 (n + 1)).toNat) (A153819 n)

end

end A241437.P14862318055520435149

/-!
# A241438: Number of 4Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241438, there is no canonical definition to state claims against.
-/

/-! ## A241438.P4130107994985321432

`A241435(∑[a(n-1)+1])` with `a(0)=10, a(1)=4`
-/

namespace A241438.P4130107994985321432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 4] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A241438.P4130107994985321432

/-! ## A241438.P11326654880384584366

`A241435(A141214(n)+7)`
-/

namespace A241438.P11326654880384584366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (A141214 n + 7).toNat

end

end A241438.P11326654880384584366

/-! ## A241438.P4587739915763544741

`A241435(A052905(n)+9)`
-/

namespace A241438.P4587739915763544741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (A052905 n + 9).toNat

end

end A241438.P4587739915763544741

/-! ## A241438.P9239816389568629837

`A241435(A055999(n)+10)`
-/

namespace A241438.P9239816389568629837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (A055999 n + 10).toNat

end

end A241438.P9239816389568629837

/-! ## A241438.P5928643344356270548

`A241435(eq[5, A066657(n)])`
-/

namespace A241438.P5928643344356270548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241438.P5928643344356270548

/-!
# A241439: Number of 5Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241439, there is no canonical definition to state claims against.
-/

/-! ## A241439.P10799854027031645707

`A241435(A167499(n+3))`
-/

namespace A241439.P10799854027031645707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (A167499 (n + 3)).toNat

end

end A241439.P10799854027031645707

/-! ## A241439.P3704734006872083557

`A241435(A155212(n)+13)`
-/

namespace A241439.P3704734006872083557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (A155212 n + 13).toNat

end

end A241439.P3704734006872083557

/-! ## A241439.P4255516112151368214

`A241435(A056000(n)+15)`
-/

namespace A241439.P4255516112151368214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (A056000 n + 15).toNat

end

end A241439.P4255516112151368214

/-! ## A241439.P2439151870065356469

`A241435(eq[7, A066657(n)])`
-/

namespace A241439.P2439151870065356469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241439.P2439151870065356469

/-!
# A241440: Number of 6Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241440, there is no canonical definition to state claims against.
-/

/-! ## A241440.P13533046556607565084

`A241435(A166136(n+4))`
-/

namespace A241440.P13533046556607565084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (A166136 (n + 4)).toNat

end

end A241440.P13533046556607565084

/-! ## A241440.P1599662844659756907

`A241435(A056115(n)+21)`
-/

namespace A241440.P1599662844659756907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (A056115 n + 21).toNat

end

end A241440.P1599662844659756907

/-! ## A241440.P9039825481531826812

`A241435(A167499(n+4)+1)`
-/

namespace A241440.P9039825481531826812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (A167499 (n + 4) + 1).toNat

end

end A241440.P9039825481531826812

/-! ## A241440.P514406066062513299

`A241435(A167614(n+4)+3)`
-/

namespace A241440.P514406066062513299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (A167614 (n + 4) + 3).toNat

end

end A241440.P514406066062513299

/-! ## A241440.P14525559023848182430

`A241435(A000124(n+5)+5)`
-/

namespace A241440.P14525559023848182430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (A000124 (n + 5) + 5).toNat

end

end A241440.P14525559023848182430

/-!
# A241441: Number of 7Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241441, there is no canonical definition to state claims against.
-/

/-! ## A241441.P4172017280008892003

`A241435(A056119(n)+28)`
-/

namespace A241441.P4172017280008892003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (A056119 n + 28).toNat

end

end A241441.P4172017280008892003

/-! ## A241441.P1174599125541323927

`A241435(eq[11, A066657(n)])`
-/

namespace A241441.P1174599125541323927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241441.P1174599125541323927

/-! ## A241441.P1002811612820252144

`A241435(A167499(n+5)+2)`
-/

namespace A241441.P1002811612820252144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (A167499 (n + 5) + 2).toNat

end

end A241441.P1002811612820252144

/-! ## A241441.P15911983475345251321

`A241435(A167614(n+5)+4)`
-/

namespace A241441.P15911983475345251321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (A167614 (n + 5) + 4).toNat

end

end A241441.P15911983475345251321

/-! ## A241441.P16982707981265227079

`A241435(A000124(n+6)+6)`
-/

namespace A241441.P16982707981265227079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241435 (A000124 (n + 6) + 6).toNat

end

end A241441.P16982707981265227079

/-!
# A241442: Number of partitions of n such that the number of parts having multiplicity 1 is a part and the number of distinct parts is a part.

The programs for A241442, there is no canonical definition to state claims against.
-/

/-! ## A241442.P4610433023551685703

`A241387(n)+A241389(n)-A241443(n)`
-/

namespace A241442.P4610433023551685703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241387 n + (A241389 n - A241443 n)

end

end A241442.P4610433023551685703

/-! ## A241442.P17975071815686414162

`A241409(n)+A241410(n)-A241443(n)`
-/

namespace A241442.P17975071815686414162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241409 n + (A241410 n - A241443 n)

end

end A241442.P17975071815686414162

/-! ## A241442.P14336596119875548667

`A241377(n)+A241378(n)-A241443(n)`
-/

namespace A241442.P14336596119875548667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241377 n + (A241378 n - A241443 n)

end

end A241442.P14336596119875548667

/-! ## A241442.P6055013184725961760

`A241414(n)+A241416(n)-A241444(n)`
-/

namespace A241442.P6055013184725961760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241414 n + (A241416 n - A241444 n)

end

end A241442.P6055013184725961760

/-! ## A241442.P9761634848109164224

`A241506(n)+A241508(n)-A241444(n)`
-/

namespace A241442.P9761634848109164224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241506 n + (A241508 n - A241444 n)

end

end A241442.P9761634848109164224

/-! ## A241442.P2287947381653604244

`A241511(n)+A241513(n)-A241444(n)`
-/

namespace A241442.P2287947381653604244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241511 n + (A241513 n - A241444 n)

end

end A241442.P2287947381653604244

/-!
# A241443: Number of partitions of n such that the number of parts having multiplicity 1 is not a part and the number of distinct parts is a part.

The programs for A241443, there is no canonical definition to state claims against.
-/

/-! ## A241443.P3487948944835382114

`A241387(n)+A241389(n)-A241442(n)`
-/

namespace A241443.P3487948944835382114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241387 n + (A241389 n - A241442 n)

end

end A241443.P3487948944835382114

/-! ## A241443.P7791505734036662575

`A241409(n)+A241410(n)-A241442(n)`
-/

namespace A241443.P7791505734036662575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241409 n + (A241410 n - A241442 n)

end

end A241443.P7791505734036662575

/-! ## A241443.P3929256564392804702

`A241415(n)+A241417(n)-A241445(n)`
-/

namespace A241443.P3929256564392804702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241415 n + (A241417 n - A241445 n)

end

end A241443.P3929256564392804702

/-! ## A241443.P10772591564725641327

`A241507(n)+A241509(n)-A241445(n)`
-/

namespace A241443.P10772591564725641327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241507 n + (A241509 n - A241445 n)

end

end A241443.P10772591564725641327

/-! ## A241443.P2339981599982023510

`A241377(n)+A241378(n)-A241442(n)`
-/

namespace A241443.P2339981599982023510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241377 n + (A241378 n - A241442 n)

end

end A241443.P2339981599982023510

/-! ## A241443.P12073964071374488878

`A241448(n)+A241450(n)-A241445(n)`
-/

namespace A241443.P12073964071374488878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241448 n + (A241450 n - A241445 n)

end

end A241443.P12073964071374488878

/-! ## A241443.P6696541698290308063

`A241512(n)+A241514(n)-A241445(n)`
-/

namespace A241443.P6696541698290308063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241512 n + (A241514 n - A241445 n)

end

end A241443.P6696541698290308063

/-!
# A241444: Number of partitions of n such that the number of parts having multiplicity 1 is a part and the number of distinct parts is not a part.

The programs for A241444, there is no canonical definition to state claims against.
-/

/-! ## A241444.P13420043627926768364

`A241411(n)+A241412(n)-A241445(n)`
-/

namespace A241444.P13420043627926768364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241411 n + (A241412 n - A241445 n)

end

end A241444.P13420043627926768364

/-! ## A241444.P3435619072434148608

`A241414(n)+A241416(n)-A241442(n)`
-/

namespace A241444.P3435619072434148608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241414 n + (A241416 n - A241442 n)

end

end A241444.P3435619072434148608

/-! ## A241444.P13920583906282313292

`A241506(n)+A241508(n)-A241442(n)`
-/

namespace A241444.P13920583906282313292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241506 n + (A241508 n - A241442 n)

end

end A241444.P13920583906282313292

/-! ## A241444.P9503458469236189228

`A241511(n)+A241513(n)-A241442(n)`
-/

namespace A241444.P9503458469236189228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241511 n + (A241513 n - A241442 n)

end

end A241444.P9503458469236189228

/-! ## A241444.P11668213084370423696

`A239946(n)-A241445(n)`
-/

namespace A241444.P11668213084370423696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239946 n - A241445 n

end

end A241444.P11668213084370423696

/-!
# A241445: Number of partitions of n such that the number of parts having multiplicity 1 is not a part and the number of distinct parts is not a part.

The programs for A241445, there is no canonical definition to state claims against.
-/

/-! ## A241445.P5197316513447653866

`A241415(n)+A241417(n)-A241443(n)`
-/

namespace A241445.P5197316513447653866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241415 n + (A241417 n - A241443 n)

end

end A241445.P5197316513447653866

/-! ## A241445.P297132814010438844

`A241507(n)+A241509(n)-A241443(n)`
-/

namespace A241445.P297132814010438844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241507 n + (A241509 n - A241443 n)

end

end A241445.P297132814010438844

/-! ## A241445.P5915750661930129508

`A241411(n)+A241412(n)-A241444(n)`
-/

namespace A241445.P5915750661930129508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241411 n + (A241412 n - A241444 n)

end

end A241445.P5915750661930129508

/-! ## A241445.P7345175845260248836

`A241448(n)+A241450(n)-A241443(n)`
-/

namespace A241445.P7345175845260248836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241448 n + (A241450 n - A241443 n)

end

end A241445.P7345175845260248836

/-! ## A241445.P2732393707652202204

`A241512(n)+A241514(n)-A241443(n)`
-/

namespace A241445.P2732393707652202204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241512 n + (A241514 n - A241443 n)

end

end A241445.P2732393707652202204

/-! ## A241445.P7883741807002368143

`A000041(n)-(A241442(n)+A241444(n)+A241443(n))`
-/

namespace A241445.P7883741807002368143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241442 n + (A241444 n + A241443 n))

end

end A241445.P7883741807002368143

/-!
# A241446: Number of partitions of n such that the number of parts having multiplicity 1 is a part or the number of distinct parts is a part.

The programs for A241446, there is no canonical definition to state claims against.
-/

/-! ## A241446.P5019638004081831126

`A241444(n)+A239945(n)`
-/

namespace A241446.P5019638004081831126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241444 n + A239945 n

end

end A241446.P5019638004081831126

/-! ## A241446.P4631871404497880422

`A241443(n)+A241413(n)`
-/

namespace A241446.P4631871404497880422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241443 n + A241413 n

end

end A241446.P4631871404497880422

/-! ## A241446.P11877279371162101527

`A000041(n)-A241445(n)`
-/

namespace A241446.P11877279371162101527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241445 n

end

end A241446.P11877279371162101527

/-! ## A241446.P12202534624071989332

`A213598(n)-A241445(n)`
-/

namespace A241446.P12202534624071989332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A241445 n

end

end A241446.P12202534624071989332

/-! ## A241446.P7126279851074196647

`sqrt(A001255(n))-A241445(n)`
-/

namespace A241446.P7126279851074196647
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241445 n : ℝ)

end

end A241446.P7126279851074196647

/-!
# A241447: Number of partitions p of n such that the number of parts having multiplicity 1 is a part and max(p) - min(p) is a part.

The programs for A241447, there is no canonical definition to state claims against.
-/

/-! ## A241447.P12382509803258946528

`A241387(n)+A241388(n)-A241448(n)`
-/

namespace A241447.P12382509803258946528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241387 n + (A241388 n - A241448 n)

end

end A241447.P12382509803258946528

/-! ## A241447.P9740937688172493977

`A238493(abs(1-n)+1)-A241448(n)`
-/

namespace A241447.P9740937688172493977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238493 (|1 - (n : ℤ)| + 1).toNat - A241448 n

end

end A241447.P9740937688172493977

/-! ## A241447.P7220055034598501885

`A241382(n)+A241383(n)-A241448(n)`
-/

namespace A241447.P7220055034598501885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241382 n + (A241383 n - A241448 n)

end

end A241447.P7220055034598501885

/-! ## A241447.P2598718240873199346

`abs(A238493(A000007(n)+n)-A241448(n))`
-/

namespace A241447.P2598718240873199346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A238493 (A000007 n + (n : ℤ)).toNat - A241448 n|

end

end A241447.P2598718240873199346

/-! ## A241447.P12611155418162756618

`A085811(n+2)-A241384(n)+A241383(n)-A241448(n)`
-/

namespace A241447.P12611155418162756618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 2) - A241384 n + (A241383 n - A241448 n)

end

end A241447.P12611155418162756618

/-! ## A241447.P156859572281748591

`A241386(n)-(A241448(n)+A241384(n))`
-/

namespace A241447.P156859572281748591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241386 n - (A241448 n + A241384 n)

end

end A241447.P156859572281748591

/-!
# A241448: Number of partitions p of n such that the number of parts having multiplicity 1 is not a part and max(p) - min(p) is a part.

The programs for A241448, there is no canonical definition to state claims against.
-/

/-! ## A241448.P12963933313222807319

`A238493(abs(1-n)+1)-A241447(n)`
-/

namespace A241448.P12963933313222807319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238493 (|1 - (n : ℤ)| + 1).toNat - A241447 n

end

end A241448.P12963933313222807319

/-! ## A241448.P14169425585206106382

`A241386(n)-(A241447(n)+A241384(n))`
-/

namespace A241448.P14169425585206106382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241386 n - (A241447 n + A241384 n)

end

end A241448.P14169425585206106382

/-! ## A241448.P3759682577741098012

`A241415(n)+A241417(n)-A241450(n)`
-/

namespace A241448.P3759682577741098012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241415 n + (A241417 n - A241450 n)

end

end A241448.P3759682577741098012

/-! ## A241448.P1380783052997293859

`A241443(n)+A241445(n)-A241450(n)`
-/

namespace A241448.P1380783052997293859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241443 n + (A241445 n - A241450 n)

end

end A241448.P1380783052997293859

/-! ## A241448.P332181367056430510

`A241507(n)+A241509(n)-A241450(n)`
-/

namespace A241448.P332181367056430510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241507 n + (A241509 n - A241450 n)

end

end A241448.P332181367056430510

/-! ## A241448.P17300658559024558637

`A241512(n)+A241514(n)-A241450(n)`
-/

namespace A241448.P17300658559024558637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241512 n + (A241514 n - A241450 n)

end

end A241448.P17300658559024558637

/-!
# A241449: Number of partitions p of n such that the number of parts having multiplicity 1 is a part and max(p) - min(p) is not a part.

The programs for A241449, there is no canonical definition to state claims against.
-/

/-! ## A241449.P12684014605498707929

`A241413(n)-A241447(n)`
-/

namespace A241449.P12684014605498707929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241413 n - A241447 n

end

end A241449.P12684014605498707929

/-! ## A241449.P4828551056914511451

`A241414(n)+A241416(n)-A241447(n)`
-/

namespace A241449.P4828551056914511451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241414 n + (A241416 n - A241447 n)

end

end A241449.P4828551056914511451

/-! ## A241449.P4002548165739797784

`A241442(n)+A241444(n)-A241447(n)`
-/

namespace A241449.P4002548165739797784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241442 n + (A241444 n - A241447 n)

end

end A241449.P4002548165739797784

/-! ## A241449.P4618481526802124347

`A241506(n)+A241508(n)-A241447(n)`
-/

namespace A241449.P4618481526802124347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241506 n + (A241508 n - A241447 n)

end

end A241449.P4618481526802124347

/-! ## A241449.P17822882371869303169

`A241511(n)+A241513(n)-A241447(n)`
-/

namespace A241449.P17822882371869303169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241511 n + (A241513 n - A241447 n)

end

end A241449.P17822882371869303169

/-!
# A241450: Number of partitions p of n such that the number of parts having multiplicity 1 is not a part and max(p) - min(p) is not a part.

The programs for A241450, there is no canonical definition to state claims against.
-/

/-! ## A241450.P3745738287121297140

`A241415(n)+A241417(n)-A241448(n)`
-/

namespace A241450.P3745738287121297140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241415 n + (A241417 n - A241448 n)

end

end A241450.P3745738287121297140

/-! ## A241450.P3763665645864992841

`A241443(n)+A241445(n)-A241448(n)`
-/

namespace A241450.P3763665645864992841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241443 n + (A241445 n - A241448 n)

end

end A241450.P3763665645864992841

/-! ## A241450.P113399431050882330

`A241507(n)+A241509(n)-A241448(n)`
-/

namespace A241450.P113399431050882330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241507 n + (A241509 n - A241448 n)

end

end A241450.P113399431050882330

/-! ## A241450.P15313270708218763826

`A241512(n)+A241514(n)-A241448(n)`
-/

namespace A241450.P15313270708218763826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241512 n + (A241514 n - A241448 n)

end

end A241450.P15313270708218763826

/-! ## A241450.P5757861897767455354

`A000041(n)-(A241448(n)+A241416(n)+A241414(n))`
-/

namespace A241450.P5757861897767455354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241448 n + (A241416 n + A241414 n))

end

end A241450.P5757861897767455354

/-!
# A241451: Number of partitions p of n such that the number of parts having multiplicity 1 is a part or max(p) - min(p) is a part.

The programs for A241451, there is no canonical definition to state claims against.
-/

/-! ## A241451.P17649994387807758389

`A241448(n)+A241413(n)`
-/

namespace A241451.P17649994387807758389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241448 n + A241413 n

end

end A241451.P17649994387807758389

/-! ## A241451.P7379809123226770027

`A000041(n)-A241450(n)`
-/

namespace A241451.P7379809123226770027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241450 n

end

end A241451.P7379809123226770027

/-! ## A241451.P4581953661980319267

`A213598(n)-A241450(n)`
-/

namespace A241451.P4581953661980319267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A241450 n

end

end A241451.P4581953661980319267

/-! ## A241451.P16153739232059075079

`sqrt(A001255(n))-A241450(n)`
-/

namespace A241451.P16153739232059075079
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241450 n : ℝ)

end

end A241451.P16153739232059075079

/-! ## A241451.P12147182442769632237

`∑[A002865(n)]-A241450(n)`
-/

namespace A241451.P12147182442769632237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A241450 n

end

end A241451.P12147182442769632237

/-!
# A241452: a(n) = pg(3, n) + pg(4, n) + ... + pg(n, n) where pg(m, n) is the n-th m-th-order polygonal number.

The programs for A241452, the canonical program `A241452.P5049079082097694883` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241452 has offset 0).

The definition of A241452 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241452.P5515252953366048129

`A039623(round(acot(n)+n)-1)-1`
-/

namespace A241452.P5515252953366048129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039623 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) - 1).toNat - 1

end

end A241452.P5515252953366048129

namespace A241452

/-- `A039623(round(acot(n)+n)-1)-1` -/
def P5515252953366048129.Spec : Prop :=
  ∀ n, P5515252953366048129.a n = A241452 n

end A241452

/-! ## A241452.P5049079082097694883

`A039623(A028310(abs(1-n)))-1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A241452

/-- `A039623(A028310(abs(1-n)))-1` -/
def P5049079082097694883.Spec : Prop :=
  ∀ n, P5049079082097694883.a n = A241452 n

theorem P5049079082097694883.correct : P5049079082097694883.Spec := by
  intro n
  simp only [A241452]

end A241452

/-! ## A241452.P3092444442487052874

`A245679(n)+A002415(A289207(n))`
-/

namespace A241452.P3092444442487052874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245679 n + A002415 (A289207 n).toNat

end

end A241452.P3092444442487052874

namespace A241452

/-- `A245679(n)+A002415(A289207(n))` -/
def P3092444442487052874.Spec : Prop :=
  ∀ n, P3092444442487052874.a n = A241452 n

end A241452

/-! ## A241452.P15491203875485451451

`A006325(n)+A002415(A289207(n))-A157928(n)`
-/

namespace A241452.P15491203875485451451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 n + (A002415 (A289207 n).toNat - A157928 n)

end

end A241452.P15491203875485451451

namespace A241452

/-- `A006325(n)+A002415(A289207(n))-A157928(n)` -/
def P15491203875485451451.Spec : Prop :=
  ∀ n, P15491203875485451451.a n = A241452 n

end A241452

/-! ## A241452.P7724135214723322026

`A006484(n)+A002415(A289207(n))-A184985(n+1)`
-/

namespace A241452.P7724135214723322026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006484 n + (A002415 (A289207 n).toNat - A184985 (n + 1))

end

end A241452.P7724135214723322026

namespace A241452

/-- `A006484(n)+A002415(A289207(n))-A184985(n+1)` -/
def P7724135214723322026.Spec : Prop :=
  ∀ n, P7724135214723322026.a n = A241452 n

end A241452

/-! ## A241452.P7385021938081135334

`A178242(n*floor(n-atan(n)))`
-/

namespace A241452.P7385021938081135334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178242 ((n : ℤ) * ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋).toNat

end

end A241452.P7385021938081135334

namespace A241452

/-- `A178242(n*floor(n-atan(n)))` -/
def P7385021938081135334.Spec : Prop :=
  ∀ n, P7385021938081135334.a n = A241452 n

end A241452

/-! ## A241452.P13391898529034584972

`A178242(n*A289207(n))`
-/

namespace A241452.P13391898529034584972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178242 ((n : ℤ) * A289207 n).toNat

end

end A241452.P13391898529034584972

namespace A241452

/-- `A178242(n*A289207(n))` -/
def P13391898529034584972.Spec : Prop :=
  ∀ n, P13391898529034584972.a n = A241452 n

end A241452

/-! ## A241452.P4230859580641119774

`A178242(n*(A004275(n)-n))`
-/

namespace A241452.P4230859580641119774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178242 ((n : ℤ) * (A004275 n - (n : ℤ))).toNat

end

end A241452.P4230859580641119774

namespace A241452

/-- `A178242(n*(A004275(n)-n))` -/
def P4230859580641119774.Spec : Prop :=
  ∀ n, P4230859580641119774.a n = A241452 n

end A241452

/-! ## A241452.P14675502194149230360

`A178242(A103505(n)-A028310(n))`
-/

namespace A241452.P14675502194149230360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178242 (A103505 n - A028310 n).toNat

end

end A241452.P14675502194149230360

namespace A241452

/-- `A178242(A103505(n)-A028310(n))` -/
def P14675502194149230360.Spec : Prop :=
  ∀ n, P14675502194149230360.a n = A241452 n

end A241452

/-! ## A241452.P7010163698526128564

`A178242(A132411(n)-A004273(n))`
-/

namespace A241452.P7010163698526128564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178242 (A132411 n - A004273 n).toNat

end

end A241452.P7010163698526128564

namespace A241452

/-- `A178242(A132411(n)-A004273(n))` -/
def P7010163698526128564.Spec : Prop :=
  ∀ n, P7010163698526128564.a n = A241452 n

end A241452

/-! ## A241452.P1215187773227397513

`A178242(A103505(2*n)%A253909(n))`
-/

namespace A241452.P1215187773227397513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178242 (Int.tmod (A103505 (2 * n)) (A253909 n)).toNat

end

end A241452.P1215187773227397513

namespace A241452

/-- `A178242(A103505(2*n)%A253909(n))` -/
def P1215187773227397513.Spec : Prop :=
  ∀ n, P1215187773227397513.a n = A241452 n

end A241452

/-!
# A241453: a(n) = pg(3, n) * pg(4, n) * ... * pg(n, n) where pg(m, n) is the n-th m-th-order polygonal number.

The programs for A241453, there is no canonical definition to state claims against.
-/

/-! ## A241453.P7568737515260513501

`A321232(∏[n!])`
-/

namespace A241453.P7568737515260513501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321232 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A241453.P7568737515260513501

/-!
# A241454: Number of simple connected graphs g on n nodes with |Aut(g)| = 2.

The programs for A241454, there is no canonical definition to state claims against.
-/

/-! ## A241454.P15404688149824148379

`Δ[A330344(round(sqrt(n²+1)))]`
-/

namespace A241454.P15404688149824148379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330344 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241454.P15404688149824148379

/-! ## A241454.P4801801296287201946

`A330344(n+1)-∑[A330346(n)]`
-/

namespace A241454.P4801801296287201946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330344 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241454.P4801801296287201946

/-! ## A241454.P18267935894168682183

`A330344(n+1)-A330344(round(sqrt(n²+1)))`
-/

namespace A241454.P18267935894168682183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330344 (n + 1) - A330344 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A241454.P18267935894168682183

/-!
# A241455: Number of simple connected graphs g on n nodes with |Aut(g)| = 4.

The programs for A241455, there is no canonical definition to state claims against.
-/

/-! ## A241455.P18244673428448717373

`A054896(A088009(n))`
-/

namespace A241455.P18244673428448717373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054896 (A088009 n).toNat

end

end A241455.P18244673428448717373

/-! ## A241455.P17322751521358514521

`A237578(A237716(n²))`
-/

namespace A241455.P17322751521358514521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237578 (A237716 (n ^ 2)).toNat

end

end A241455.P17322751521358514521

/-! ## A241455.P13099000292399707075

`A111892(∑[A351152(n)])`
-/

namespace A241455.P13099000292399707075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111892 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A241455.P13099000292399707075

/-!
# A241456: Number of simple connected graphs g on n nodes with |Aut(g)| = 6.

The programs for A241456, there is no canonical definition to state claims against.
-/

/-! ## A241456.P14092600116627842056

`A239499(A328700(n+1)+3)`
-/

namespace A241456.P14092600116627842056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239499 (A328700 (n + 1) + 3).toNat

end

end A241456.P14092600116627842056

/-! ## A241456.P8129140808672630218

`or(A115851(n), A194640(A293043(n)))`
-/

namespace A241456.P8129140808672630218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A115851 n) (A194640 (A293043 n).toNat)

end

end A241456.P8129140808672630218

/-! ## A241456.P17724996758543229077

`A059169(A070085(n+1)+A002494(n))`
-/

namespace A241456.P17724996758543229077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A070085 (n + 1) + A002494 n).toNat

end

end A241456.P17724996758543229077

/-! ## A241456.P8526074930575794003

`A325395(A054997(n+1))%A003418(n)`
-/

namespace A241456.P8526074930575794003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325395 (A054997 (n + 1)).toNat) (A003418 n)

end

end A241456.P8526074930575794003

/-!
# A241457: Number of simple connected graphs g on n nodes with |Aut(g)| = 8.

The programs for A241457, there is no canonical definition to state claims against.
-/

/-! ## A241457.P9674912931601924068

`A137722(A222625(n+1)+8)`
-/

namespace A241457.P9674912931601924068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137722 (A222625 (n + 1) + 8).toNat

end

end A241457.P9674912931601924068

/-! ## A241457.P15105135004252307913

`A004110(n)-A100196(A001349(n))`
-/

namespace A241457.P15105135004252307913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004110 n - A100196 (A001349 n).toNat

end

end A241457.P15105135004252307913

/-! ## A241457.P11400021970408480181

`A025461(A094388(n)*A242477(n))`
-/

namespace A241457.P11400021970408480181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025461 (A094388 n * A242477 n).toNat

end

end A241457.P11400021970408480181

/-! ## A241457.P7219412588754768991

`A004110(n)-A100196(A128528(n+1))`
-/

namespace A241457.P7219412588754768991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004110 n - A100196 (A128528 (n + 1)).toNat

end

end A241457.P7219412588754768991

/-!
# A241458: Number of simple connected graphs g on n nodes with |Aut(g)| = 10.

The programs for A241458, there is no canonical definition to state claims against.
-/

/-! ## A241458.P15164283313709218412

`A007307(A139797(n))`
-/

namespace A241458.P15164283313709218412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 (A139797 n).toNat

end

end A241458.P15164283313709218412

/-! ## A241458.P6751458261610111121

`A118808(A107854(n))`
-/

namespace A241458.P6751458261610111121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118808 (A107854 n).toNat

end

end A241458.P6751458261610111121

/-! ## A241458.P10305993831667308085

`A122886(A171966(n))`
-/

namespace A241458.P10305993831667308085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122886 (A171966 n).toNat

end

end A241458.P10305993831667308085

/-! ## A241458.P5791911995859643853

`A068202(A277218(n))`
-/

namespace A241458.P5791911995859643853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068202 (A277218 n).toNat

end

end A241458.P5791911995859643853

/-! ## A241458.P5248974623309854443

`A280127(A109070(n))`
-/

namespace A241458.P5248974623309854443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280127 (A109070 n).toNat

end

end A241458.P5248974623309854443

/-!
# A241459: Number of simple connected graphs g on n nodes with |Aut(g)| = 12.

The programs for A241459, there is no canonical definition to state claims against.
-/

/-! ## A241459.P3957229818910926680

`A260731(A275165(n))-1`
-/

namespace A241459.P3957229818910926680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260731 (A275165 n).toNat - 1

end

end A241459.P3957229818910926680

/-! ## A241459.P10833193533574222808

`A361850(A006128(n)+3)`
-/

namespace A241459.P10833193533574222808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361850 (A006128 n + 3).toNat

end

end A241459.P10833193533574222808

/-! ## A241459.P1210268328485876520

`A079690(A000108(n)+A000088(n))`
-/

namespace A241459.P1210268328485876520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079690 (A000108 n + A000088 n).toNat

end

end A241459.P1210268328485876520

/-! ## A241459.P10666938052758123262

`A381717(A324738(n))%A356937(n)`
-/

namespace A241459.P10666938052758123262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381717 (A324738 n).toNat) (A356937 n)

end

end A241459.P10666938052758123262

/-!
# A241461: Number of simple connected graphs g on n nodes with |Aut(g)| = 16.

The programs for A241461, there is no canonical definition to state claims against.
-/

/-! ## A241461.P8910025011894108104

`A238793(A043328(n))`
-/

namespace A241461.P8910025011894108104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238793 (A043328 n).toNat

end

end A241461.P8910025011894108104

/-! ## A241461.P1048129623590196648

`A253638(A093390(n!))`
-/

namespace A241461.P1048129623590196648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253638 (A093390 (Nat.factorial n)).toNat

end

end A241461.P1048129623590196648

/-! ## A241461.P13100958340345208781

`A238793(A123341(n+1))`
-/

namespace A241461.P13100958340345208781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238793 (A123341 (n + 1)).toNat

end

end A241461.P13100958340345208781

/-! ## A241461.P232377069478337817

`A238793(A141072(n+1))`
-/

namespace A241461.P232377069478337817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238793 (A141072 (n + 1)).toNat

end

end A241461.P232377069478337817

/-!
# A241462: Number of simple connected graphs g on n nodes with |Aut(g)| = 20.

The programs for A241462, there is no canonical definition to state claims against.
-/

/-! ## A241462.P10859564629276851566

`A130994(2*A370529(n))`
-/

namespace A241462.P10859564629276851566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130994 (2 * A370529 n).toNat

end

end A241462.P10859564629276851566

/-! ## A241462.P14377608652484760764

`A161275(A034344(n+1)+1)`
-/

namespace A241462.P14377608652484760764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161275 (A034344 (n + 1) + 1).toNat

end

end A241462.P14377608652484760764

/-! ## A241462.P4501197609883819072

`A161275(A319882(n+3)+1)`
-/

namespace A241462.P4501197609883819072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161275 (A319882 (n + 3) + 1).toNat

end

end A241462.P4501197609883819072

/-! ## A241462.P16380820376323357509

`A051885(∑[∑[A236468(n+2)]])`
-/

namespace A241462.P16380820376323357509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236468 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A241462.P16380820376323357509

/-! ## A241462.P11115951686368264481

`floor(A215587(n)/A340266(n+1))`
-/

namespace A241462.P11115951686368264481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A215587 n : ℚ) / (A340266 (n + 1) : ℚ)⌋

end

end A241462.P11115951686368264481

/-!
# A241463: Number of simple connected graphs g on n nodes with |Aut(g)| = 24.

The programs for A241463, there is no canonical definition to state claims against.
-/

/-! ## A241463.P728562342920930316

`A232539(A149024(n))`
-/

namespace A241463.P728562342920930316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232539 (A149024 n).toNat

end

end A241463.P728562342920930316

/-! ## A241463.P5142678800299533042

`A284478(A148917(n))`
-/

namespace A241463.P5142678800299533042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284478 (A148917 n).toNat

end

end A241463.P5142678800299533042

/-! ## A241463.P15013088009216283275

`A351007(A001679(n)²)`
-/

namespace A241463.P15013088009216283275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351007 (A001679 n ^ 2).toNat

end

end A241463.P15013088009216283275

/-! ## A241463.P10909415342720174120

`A039884(A323524(∑[n]))`
-/

namespace A241463.P10909415342720174120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039884 (A323524 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A241463.P10909415342720174120

/-!
# A241464: Number of simple connected graphs g on n nodes with |Aut(g)| = 36.

The programs for A241464, there is no canonical definition to state claims against.
-/

/-! ## A241464.P4859839979523507864

`A239500(A036615(n))`
-/

namespace A241464.P4859839979523507864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239500 (A036615 n).toNat

end

end A241464.P4859839979523507864

/-! ## A241464.P9504788461800023108

`A086771(A373509(n))`
-/

namespace A241464.P9504788461800023108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086771 (A373509 n).toNat

end

end A241464.P9504788461800023108

/-! ## A241464.P14900802983794724429

`A230197(A072214(n)+1)`
-/

namespace A241464.P14900802983794724429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230197 (A072214 n + 1).toNat

end

end A241464.P14900802983794724429

/-! ## A241464.P14607492279416645229

`A085859(A102917(n)-1)`
-/

namespace A241464.P14607492279416645229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085859 (A102917 n - 1).toNat

end

end A241464.P14607492279416645229

/-! ## A241464.P13716562476630198064

`A086771(or(1, A224809(n)))`
-/

namespace A241464.P13716562476630198064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086771 (Int.lor 1 (A224809 n)).toNat

end

end A241464.P13716562476630198064

/-!
# A241465: Number of simple connected graphs g on n nodes with |Aut(g)| = 48.

The programs for A241465, there is no canonical definition to state claims against.
-/

/-! ## A241465.P6051599095779352109

`A003963(A000519(n+1))*A082997(n+1)`
-/

namespace A241465.P6051599095779352109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A000519 (n + 1)).toNat * A082997 (n + 1)

end

end A241465.P6051599095779352109

/-!
# A241466: Number of simple connected graphs g on n nodes with |Aut(g)| = 72.

The programs for A241466, there is no canonical definition to state claims against.
-/

/-! ## A241466.P9383313734198141790

`floor(A000142(n)/A186983(n))`
-/

namespace A241466.P9383313734198141790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000142 n : ℚ) / (A186983 (n + 13) : ℚ)⌋

end

end A241466.P9383313734198141790

/-! ## A241466.P7093517639064281191

`A168201(A020099(n))`
-/

namespace A241466.P7093517639064281191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A020099 n).toNat

end

end A241466.P7093517639064281191

/-! ## A241466.P616790220667457593

`A001949(record[A341883(n)])`
-/

namespace A241466.P616790220667457593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001949 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A241466.P616790220667457593

/-! ## A241466.P11123540433563845225

`A388716(A146019(n+2))`
-/

namespace A241466.P11123540433563845225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388716 (A146019 (n + 2)).toNat

end

end A241466.P11123540433563845225

/-! ## A241466.P808764028044849093

`A065744(A003471(n)+5)`
-/

namespace A241466.P808764028044849093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065744 (A003471 n + 5).toNat

end

end A241466.P808764028044849093

/-!
# A241467: Number of simple connected graphs g on n nodes with |Aut(g)| = 120.

The programs for A241467, there is no canonical definition to state claims against.
-/

/-! ## A241467.P4439775870312197666

`A032244(A217787(n))`
-/

namespace A241467.P4439775870312197666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032244 (A217787 n).toNat

end

end A241467.P4439775870312197666

/-! ## A241467.P13569130737843967121

`A161285(A244508(n)+1)`
-/

namespace A241467.P13569130737843967121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161285 (A244508 n + 1).toNat

end

end A241467.P13569130737843967121

/-! ## A241467.P7586734654249393546

`A161285(A304521(n+1))`
-/

namespace A241467.P7586734654249393546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161285 (A304521 (n + 1)).toNat

end

end A241467.P7586734654249393546

/-! ## A241467.P16763532560866999825

`A017866(A018133(n)+2)`
-/

namespace A241467.P16763532560866999825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017866 (A018133 n + 2).toNat

end

end A241467.P16763532560866999825

/-! ## A241467.P16959300785651912889

`A017866(A005691(n+6))`
-/

namespace A241467.P16959300785651912889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017866 (A005691 (n + 6)).toNat

end

end A241467.P16959300785651912889

/-!
# A241468: Number of simple connected graphs g on n nodes with |Aut(g)| = 144.

The programs for A241468, there is no canonical definition to state claims against.
-/

/-! ## A241468.P7968640645639279791

`lcm(3, A046665(A332398(n)))`
-/

namespace A241468.P7968640645639279791
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A046665 (A332398 n).toNat)

end

end A241468.P7968640645639279791

/-! ## A241468.P6220520631405098869

`A056273(n)%A043057(A118330(n))`
-/

namespace A241468.P6220520631405098869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056273 n) (A043057 (A118330 n).toNat)

end

end A241468.P6220520631405098869

/-! ## A241468.P8093306217457543733

`A350840(A116201(n))-A050320(n+1)`
-/

namespace A241468.P8093306217457543733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350840 (A116201 n).toNat - A050320 (n + 1)

end

end A241468.P8093306217457543733

/-! ## A241468.P14846577294909092030

`A350840(A116201(n))-A114717(n+1)`
-/

namespace A241468.P14846577294909092030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350840 (A116201 n).toNat - A114717 (n + 1)

end

end A241468.P14846577294909092030

/-!
# A241469: Number of simple connected graphs g on n nodes with |Aut(g)| = 240.

The programs for A241469, there is no canonical definition to state claims against.
-/

/-! ## A241469.P13615182399561356438

`A394020(A049893(n+1))`
-/

namespace A241469.P13615182399561356438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394020 (A049893 (n + 1)).toNat

end

end A241469.P13615182399561356438

/-! ## A241469.P13456066380831807538

`A036670(n)*A324615(n)`
-/

namespace A241469.P13456066380831807538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036670 n * A324615 n

end

end A241469.P13456066380831807538

/-! ## A241469.P626998599699701649

`record[A049319(n+1)]%A184344(n+1)`
-/

namespace A241469.P626998599699701649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A184344 (n + 1))

end

end A241469.P626998599699701649

/-! ## A241469.P14016880852329870028

`and(A125084(3*n+4)-9, A241468(n+1))`
-/

namespace A241469.P14016880852329870028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A125084 (3 * n + 4) - 9) (A241468 (n + 1))

end

end A241469.P14016880852329870028

/-! ## A241469.P10240995883246512011

`A110654(A059076(n))*A324615(n)`
-/

namespace A241469.P10240995883246512011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A059076 n).toNat * A324615 n

end

end A241469.P10240995883246512011

/-!
# A241470: Number of simple connected graphs g on n nodes with |Aut(g)| = 720.

The programs for A241470, there is no canonical definition to state claims against.
-/

/-! ## A241470.P7015917834828743051

`round(A014258(n)/7)`
-/

namespace A241470.P7015917834828743051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A014258 n : ℚ) / 7)

end

end A241470.P7015917834828743051

/-! ## A241470.P6930626624787653906

`round(A237575(n)/7)`
-/

namespace A241470.P6930626624787653906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A237575 n : ℚ) / 7)

end

end A241470.P6930626624787653906

/-! ## A241470.P5950285380982056403

`∑[A329863(floor(n²/10))]`
-/

namespace A241470.P5950285380982056403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329863 ⌊(n ^ 2 : ℚ) / 10⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241470.P5950285380982056403

/-! ## A241470.P5323394474737599379

`round(∏[A007429(n+1)/6])`
-/

namespace A241470.P5323394474737599379
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007429 (n + 1) : ℚ) / 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A241470.P5323394474737599379

/-! ## A241470.P18149390131941076892

`A029393(A000018(n))`
-/

namespace A241470.P18149390131941076892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029393 (A000018 n).toNat

end

end A241470.P18149390131941076892

/-!
# A241472: a(n) = |{0 < k < sqrt(prime(n)): k^2 + 1 is a quadratic residue modulo prime(n)}|.

The programs for A241472, there is no canonical definition to state claims against.
-/

/-! ## A241472.P7382120088954659235

`A280737(lcm(A103505(n), A303624(n+1)))`
-/

namespace A241472.P7382120088954659235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280737 (Int.lcm (A103505 n) (A303624 (n + 1)))

end

end A241472.P7382120088954659235

/-!
# A241475: Triangle t(n,r) = s(n,r)*s(n,r+1), where s(n,r) = lcm(n,n-1,...,n-r+1)/lcm(1,2,...,r-1,r), n >= 1 and 0 <= r < n.

The programs for A241475, there is no canonical definition to state claims against.
-/

/-! ## A241475.P13328555434821892777

`A067049(comp[∑[n+1]])*A093430(n+1)`
-/

namespace A241475.P13328555434821892777
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067049 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A093430 (n + 1)

end

end A241475.P13328555434821892777

/-! ## A241475.P13315164094875137486

`A093430(n+1)*A093430(floor(acot(n)+n))`
-/

namespace A241475.P13315164094875137486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093430 (n + 1) * A093430 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A241475.P13315164094875137486

/-! ## A241475.P14383087965618636560

`A093430(n+1)*A093430(round(sqrt(n²+1)))`
-/

namespace A241475.P14383087965618636560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093430 (n + 1) * A093430 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A241475.P14383087965618636560

/-! ## A241475.P13577991296149322468

`A067049(A007401(n+1))*A067049(A014132(n+1))`
-/

namespace A241475.P13577991296149322468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067049 (A007401 (n + 1)).toNat * A067049 (A014132 (n + 1)).toNat

end

end A241475.P13577991296149322468

/-! ## A241475.P17538118669828832155

`A132812(n+1)/A043289(A342064(n+1))`
-/

namespace A241475.P17538118669828832155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132812 (n + 1) : ℚ) / (A043289 (A342064 (n + 1)).toNat : ℚ)

end

end A241475.P17538118669828832155

/-!
# A241476: Least positive primitive root g < prime(n) modulo prime(n) with g - 1 a square, or 0 if such a number g does not exist.

The programs for A241476, there is no canonical definition to state claims against.
-/

/-! ## A241476.P3924695770372959881

`A002034(∏{d}[A242277(n+1), #])`
-/

namespace A241476.P3924695770372959881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A241476.P3924695770372959881

/-! ## A241476.P6961671058886959383

`A014963(∏{d}[A242277(n+1), #])`
-/

namespace A241476.P6961671058886959383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A241476.P6961671058886959383

/-! ## A241476.P13941796526199063705

`A019554(∏{d}[A242277(n+1), #])`
-/

namespace A241476.P13941796526199063705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A241476.P13941796526199063705

/-! ## A241476.P15525275586053635406

`A020639(∏{d}[A242277(n+1), #²])`
-/

namespace A241476.P15525275586053635406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2)

end

end A241476.P15525275586053635406

/-! ## A241476.P9300255381976671887

`A020639(∏{d}[∏{d}[A242277(n+1), #], #])`
-/

namespace A241476.P9300255381976671887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242277 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ d ∈ Nat.divisors (f1 n), d)

end

end A241476.P9300255381976671887

/-!
# A241478: a(n) = 4^n*(n/4 + binomial(n-1/2, -1/2)).

The programs for A241478, the canonical program `A241478.P14446686761118758760` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241478 has offset 0).

The definition of A241478 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241478.P17183480089946394573

`A002697(n)+record[a(n-1)/(floor(n/2)/n-1)]` with `a(0)=1`
-/

namespace A241478.P17183480089946394573
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002697 n : ℚ) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241478.P17183480089946394573

namespace A241478

/-- `A002697(n)+record[a(n-1)/(floor(n/2)/n-1)]` -/
def P17183480089946394573.Spec : Prop :=
  ∀ n, P17183480089946394573.a n = (A241478 n : ℚ)

end A241478

/-! ## A241478.P14446686761118758760

`A002697(n)+A000984(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A241478

/-- `A002697(n)+A000984(n)` -/
def P14446686761118758760.Spec : Prop :=
  ∀ n, P14446686761118758760.a n = A241478 n

theorem P14446686761118758760.correct : P14446686761118758760.Spec := by
  intro n
  simp only [A241478]

end A241478

/-! ## A241478.P7127995628845579681

`A079028(n)-A068551(n)`
-/

namespace A241478.P7127995628845579681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079028 n - A068551 n

end

end A241478.P7127995628845579681

namespace A241478

/-- `A079028(n)-A068551(n)` -/
def P7127995628845579681.Spec : Prop :=
  ∀ n, P7127995628845579681.a n = A241478 n

end A241478

/-! ## A241478.P3827658804283622216

`A002697(n)+record[A081668(n)]`
-/

namespace A241478.P3827658804283622216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241478.P3827658804283622216

namespace A241478

/-- `A002697(n)+record[A081668(n)]` -/
def P3827658804283622216.Spec : Prop :=
  ∀ n, P3827658804283622216.a n = A241478 n

end A241478

/-! ## A241478.P2628845675262707343

`A002697(n)+record[A126869(n)]`
-/

namespace A241478.P2628845675262707343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241478.P2628845675262707343

namespace A241478

/-- `A002697(n)+record[A126869(n)]` -/
def P2628845675262707343.Spec : Prop :=
  ∀ n, P2628845675262707343.a n = A241478 n

end A241478

/-! ## A241478.P5045938923750846222

`A002697(n)+record[A126930(n)]`
-/

namespace A241478.P5045938923750846222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241478.P5045938923750846222

namespace A241478

/-- `A002697(n)+record[A126930(n)]` -/
def P5045938923750846222.Spec : Prop :=
  ∀ n, P5045938923750846222.a n = A241478 n

end A241478

/-! ## A241478.P11723363671062486828

`A000984(n)+record[A235789(n)]`
-/

namespace A241478.P11723363671062486828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241478.P11723363671062486828

namespace A241478

/-- `A000984(n)+record[A235789(n)]` -/
def P11723363671062486828.Spec : Prop :=
  ∀ n, P11723363671062486828.a n = A241478 n

end A241478

/-! ## A241478.P3007921591608617025

`record[A001405(n)-A168150(n)]`
-/

namespace A241478.P3007921591608617025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - A168150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241478.P3007921591608617025

namespace A241478

/-- `record[A001405(n)-A168150(n)]` -/
def P3007921591608617025.Spec : Prop :=
  ∀ n, P3007921591608617025.a n = A241478 n

end A241478

/-! ## A241478.P8319070666001859353

`record[A056040(n)-A168150(n)]`
-/

namespace A241478.P8319070666001859353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n - A168150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241478.P8319070666001859353

namespace A241478

/-- `record[A056040(n)-A168150(n)]` -/
def P8319070666001859353.Spec : Prop :=
  ∀ n, P8319070666001859353.a n = A241478 n

end A241478

/-! ## A241478.P10905706620701812263

`A002697(n)+A001405(2*n)`
-/

namespace A241478.P10905706620701812263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 n + A001405 (2 * n)

end

end A241478.P10905706620701812263

namespace A241478

/-- `A002697(n)+A001405(2*n)` -/
def P10905706620701812263.Spec : Prop :=
  ∀ n, P10905706620701812263.a n = A241478 n

end A241478

/-! ## A241478.P8812194352916168202

`A049610(2*n)+A000984(n)`
-/

namespace A241478.P8812194352916168202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (2 * n) + A000984 n

end

end A241478.P8812194352916168202

namespace A241478

/-- `A049610(2*n)+A000984(n)` -/
def P8812194352916168202.Spec : Prop :=
  ∀ n, P8812194352916168202.a n = A241478 n

end A241478

/-! ## A241478.P13565531880072261884

`A056040(2*n)+A002697(n)`
-/

namespace A241478.P13565531880072261884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (2 * n) + A002697 n

end

end A241478.P13565531880072261884

namespace A241478

/-- `A056040(2*n)+A002697(n)` -/
def P13565531880072261884.Spec : Prop :=
  ∀ n, P13565531880072261884.a n = A241478 n

end A241478

/-! ## A241478.P15740583623552511943

`A081668(2*n)+A002697(n)`
-/

namespace A241478.P15740583623552511943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 (2 * n) + A002697 n

end

end A241478.P15740583623552511943

namespace A241478

/-- `A081668(2*n)+A002697(n)` -/
def P15740583623552511943.Spec : Prop :=
  ∀ n, P15740583623552511943.a n = A241478 n

end A241478

/-! ## A241478.P16024842000269002714

`A126869(2*n)+A002697(n)`
-/

namespace A241478.P16024842000269002714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * n) + A002697 n

end

end A241478.P16024842000269002714

namespace A241478

/-- `A126869(2*n)+A002697(n)` -/
def P16024842000269002714.Spec : Prop :=
  ∀ n, P16024842000269002714.a n = A241478 n

end A241478

/-! ## A241478.P11889648171529401726

`A126930(2*n)+A002697(n)`
-/

namespace A241478.P11889648171529401726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 (2 * n) + A002697 n

end

end A241478.P11889648171529401726

namespace A241478

/-- `A126930(2*n)+A002697(n)` -/
def P11889648171529401726.Spec : Prop :=
  ∀ n, P11889648171529401726.a n = A241478 n

end A241478

/-! ## A241478.P15836962402366060500

`A000984(n)+n*A011782(n)²`
-/

namespace A241478.P15836962402366060500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (n : ℤ) * A011782 n ^ 2

end

end A241478.P15836962402366060500

namespace A241478

/-- `A000984(n)+n*A011782(n)²` -/
def P15836962402366060500.Spec : Prop :=
  ∀ n, P15836962402366060500.a n = A241478 n

end A241478

/-! ## A241478.P5745557975965750338

`A000984(n)+n*A131577(n)²`
-/

namespace A241478.P5745557975965750338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (n : ℤ) * A131577 n ^ 2

end

end A241478.P5745557975965750338

namespace A241478

/-- `A000984(n)+n*A131577(n)²` -/
def P5745557975965750338.Spec : Prop :=
  ∀ n, P5745557975965750338.a n = A241478 n

end A241478

/-! ## A241478.P10817092095475466543

`A001405(2*n)-A168150(2*n)`
-/

namespace A241478.P10817092095475466543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) - A168150 (2 * n)

end

end A241478.P10817092095475466543

namespace A241478

/-- `A001405(2*n)-A168150(2*n)` -/
def P10817092095475466543.Spec : Prop :=
  ∀ n, P10817092095475466543.a n = A241478 n

end A241478

/-! ## A241478.P588443916560154224

`A056040(2*n)-A168150(2*n)`
-/

namespace A241478.P588443916560154224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (2 * n) - A168150 (2 * n)

end

end A241478.P588443916560154224

namespace A241478

/-- `A056040(2*n)-A168150(2*n)` -/
def P588443916560154224.Spec : Prop :=
  ∀ n, P588443916560154224.a n = A241478 n

end A241478

/-! ## A241478.P16314971199650030276

`A001405(2*n)+n*A034008(2*n)`
-/

namespace A241478.P16314971199650030276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) + (n : ℤ) * A034008 (2 * n)

end

end A241478.P16314971199650030276

namespace A241478

/-- `A001405(2*n)+n*A034008(2*n)` -/
def P16314971199650030276.Spec : Prop :=
  ∀ n, P16314971199650030276.a n = A241478 n

end A241478

/-!
# A241479: GCD of the solutions x of sigma(x) = sigma(n), where sigma(n) = A000203(n) = sum of divisors of n.

The programs for A241479, there is no canonical definition to state claims against.
-/

/-! ## A241479.P370122802563129233

`A240667(A000203(n+1))`
-/

namespace A241479.P370122802563129233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240667 (A000203 (n + 1)).toNat

end

end A241479.P370122802563129233

/-! ## A241479.P12150897245482875662

`A240667(∑{d}[n+1, #])`
-/

namespace A241479.P12150897245482875662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240667 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A241479.P12150897245482875662

/-! ## A241479.P16268507631223717099

`A240667(Δ[A160664(n)])`
-/

namespace A241479.P16268507631223717099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240667 (f1 (n + 1) - f1 n).toNat

end

end A241479.P16268507631223717099

/-! ## A241479.P13130367949801015246

`A240667(abs(A143348(n+1)))`
-/

namespace A241479.P13130367949801015246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240667 |A143348 (n + 1)|.toNat

end

end A241479.P13130367949801015246

/-! ## A241479.P4938197305115343811

`A240667(sqrt(A072861(n+1)))`
-/

namespace A241479.P4938197305115343811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240667 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))).toNat

end

end A241479.P4938197305115343811

/-! ## A241479.P1837677718478429543

`A240667(A039653(n+1)+1)`
-/

namespace A241479.P1837677718478429543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240667 (A039653 (n + 1) + 1).toNat

end

end A241479.P1837677718478429543

/-! ## A241479.P4061820149470734675

`A240667(A088580(n+1)-1)`
-/

namespace A241479.P4061820149470734675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240667 (A088580 (n + 1) - 1).toNat

end

end A241479.P4061820149470734675

/-! ## A241479.P14061625489496545752

`A240667(A074400(n+1)/2)`
-/

namespace A241479.P14061625489496545752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240667 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

end

end A241479.P14061625489496545752

/-! ## A241479.P6916774497451584694

`A240667(A146076(2*(n+1))/2)`
-/

namespace A241479.P6916774497451584694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240667 (SequenceMachineLib.roundAway ((A146076 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A241479.P6916774497451584694

/-! ## A241479.P14524624879851154284

`A240667(A001065(n+1)+1+n)`
-/

namespace A241479.P14524624879851154284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240667 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A241479.P14524624879851154284

/-! ## A241479.P561370343756079413

`A240667(A155085(n+1)-(n+1))`
-/

namespace A241479.P561370343756079413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240667 (A155085 (n + 1) - (n + 1 : ℤ)).toNat

end

end A241479.P561370343756079413

/-! ## A241479.P4964001147168561301

`A240667(A064987(n+1)/(n+1))`
-/

namespace A241479.P4964001147168561301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240667 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A241479.P4964001147168561301

/-! ## A241479.P14734526605981678918

`A240667(A160664(n+1)-A160664(n))`
-/

namespace A241479.P14734526605981678918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240667 (A160664 (n + 1) - A160664 n).toNat

end

end A241479.P14734526605981678918

/-! ## A241479.P1290349806463933102

`A240667(A146076(n+1)+A000593(n+1))`
-/

namespace A241479.P1290349806463933102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240667 (A146076 (n + 1) + A000593 (n + 1)).toNat

end

end A241479.P1290349806463933102

/-! ## A241479.P8255739614273345619

`A240667(A088001(n+1)+A088000(n+1))`
-/

namespace A241479.P8255739614273345619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240667 (A088001 (n + 1) + A088000 (n + 1)).toNat

end

end A241479.P8255739614273345619

/-! ## A241479.P16830388123782221308

`A240667(A162296(n+1)+A048250(n+1))`
-/

namespace A241479.P16830388123782221308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240667 (A162296 (n + 1) + A048250 (n + 1)).toNat

end

end A241479.P16830388123782221308

/-! ## A241479.P8823076723240840613

`A240667(A326126(n+1)+A007913(n+1))`
-/

namespace A241479.P8823076723240840613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240667 (A326126 (n + 1) + A007913 (n + 1)).toNat

end

end A241479.P8823076723240840613

/-!
# A241480: Numbers k such that the GCD of the x's that satisfy sigma(x) = sigma(k) is not equal to 1.

The programs for A241480, there is no canonical definition to state claims against.
-/

/-! ## A241480.P17917800249153961270

`lt[1, A241479(n+1)]+1`
-/

namespace A241480.P17917800249153961270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241479 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A241480.P17917800249153961270

/-! ## A241480.P14035617840139531684

`lt[1, A241479(A028310(n))]`
-/

namespace A241480.P14035617840139531684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241479 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A241480.P14035617840139531684

/-! ## A241480.P15982809963064653867

`lt[1, A241479(A004277(n)-n)]`
-/

namespace A241480.P15982809963064653867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241479 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A241480.P15982809963064653867

/-! ## A241480.P1483690880000220676

`lt[1, A241479(A000007(n)+n)]`
-/

namespace A241480.P1483690880000220676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241479 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A241480.P1483690880000220676

/-! ## A241480.P17058712147309895429

`eq[char[A380303(n+1)], A010051(2*(n+1))]`
-/

namespace A241480.P17058712147309895429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380303 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A241480.P17058712147309895429

/-!
# A241481: Numbers such that the GCD of the x's that satisfy sigma(x) = sigma(n) is not equal to 1 while the number of such x's is not 1 either.

The programs for A241481, there is no canonical definition to state claims against.
-/

/-! ## A241481.P276470119729918072

`∩[A206447(n+1), A241480(n+1)]`
-/

namespace A241481.P276470119729918072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241481.P276470119729918072

/-! ## A241481.P11609538579093061233

`∩[A206036(n+1), A241480(n+1)]`
-/

namespace A241481.P11609538579093061233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241481.P11609538579093061233

/-!
# A241482: Least fundamental discriminant D > 1 such that the first n primes p have (D/p) >= 0.

The programs for A241482, there is no canonical definition to state claims against.
-/

/-! ## A241482.P10054664118597418345

`A014683(4*A090983(n+1))`
-/

namespace A241482.P10054664118597418345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014683 (4 * A090983 (n + 1)).toNat

end

end A241482.P10054664118597418345

/-! ## A241482.P685134867714862243

`A028310(4*A090983(n+1))`
-/

namespace A241482.P685134867714862243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (4 * A090983 (n + 1)).toNat

end

end A241482.P685134867714862243

/-! ## A241482.P12272255392774193530

`A037449(4*A090983(n+1))`
-/

namespace A241482.P12272255392774193530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (4 * A090983 (n + 1)).toNat

end

end A241482.P12272255392774193530

/-! ## A241482.P719614526837347050

`A038608(4*A090983(n+1))`
-/

namespace A241482.P719614526837347050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (4 * A090983 (n + 1)).toNat

end

end A241482.P719614526837347050

/-!
# A241483: Primes p such that p+2, p+4, p+6, p+8, p+10 and p+12 are all semiprime.

The programs for A241483, there is no canonical definition to state claims against.
-/

/-! ## A241483.P9839173225221072357

`∩[A092128(n+1)-2, A241959(n+1)]`
-/

namespace A241483.P9839173225221072357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092128 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241483.P9839173225221072357

/-! ## A241483.P1396907327078104123

`p?[A092128(n+1)-2]`
-/

namespace A241483.P1396907327078104123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092128 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A241483.P1396907327078104123

/-! ## A241483.P6822846238603732975

`record[A006530(A092128(n+1)-2)]`
-/

namespace A241483.P6822846238603732975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A092128 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241483.P6822846238603732975

/-! ## A241483.P3998427923554080181

`record[A020639(A092128(n+1)-2)]`
-/

namespace A241483.P3998427923554080181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A092128 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241483.P3998427923554080181

/-!
# A241484: Primes p such that p+2 and p+4 are semiprime.

The programs for A241484, there is no canonical definition to state claims against.
-/

/-! ## A241484.P9579102512716198300

`∩[A063637(n+1), A289250(n+1)]`
-/

namespace A241484.P9579102512716198300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241484.P9579102512716198300

/-! ## A241484.P16240138446563085688

`p?[A092207(n+1)-2]`
-/

namespace A241484.P16240138446563085688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092207 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A241484.P16240138446563085688

/-! ## A241484.P7625870513241558509

`p?[A198327(n+1)-4]`
-/

namespace A241484.P7625870513241558509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198327 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A241484.P7625870513241558509

/-! ## A241484.P17692875663773074816

`record[A001414(A092207(n+1)-2)]`
-/

namespace A241484.P17692875663773074816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A092207 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241484.P17692875663773074816

/-! ## A241484.P904775346589450619

`record[A006530(A092207(n+1)-2)]`
-/

namespace A241484.P904775346589450619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A092207 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241484.P904775346589450619

/-! ## A241484.P9922908802190923797

`record[A020639(A092207(n+1)-2)]`
-/

namespace A241484.P9922908802190923797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A092207 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241484.P9922908802190923797

/-! ## A241484.P10538217024592126141

`record[A006530(A198327(n+1)-4)]`
-/

namespace A241484.P10538217024592126141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A198327 (n + 1) - 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241484.P10538217024592126141

/-! ## A241484.P479972770380303256

`record[A020639(A198327(n+1)-4)]`
-/

namespace A241484.P479972770380303256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A198327 (n + 1) - 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241484.P479972770380303256

/-! ## A241484.P17202852651049001449

`p?[A124936(n+1)-3]`
-/

namespace A241484.P17202852651049001449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124936 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A241484.P17202852651049001449

/-! ## A241484.P14729813212065195644

`record[A006530(abs(3-A124936(n+1)))]`
-/

namespace A241484.P14729813212065195644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 |3 - A124936 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241484.P14729813212065195644

/-! ## A241484.P16127922741236263792

`record[A014963(A092207(n+1)-2)]`
-/

namespace A241484.P16127922741236263792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A092207 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241484.P16127922741236263792

/-! ## A241484.P12521638420121643038

`record[A014963(A124936(n+1)-3)]`
-/

namespace A241484.P12521638420121643038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A124936 (n + 1) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241484.P12521638420121643038

/-!
# A241485: Primes p such that p+2, p+222 and p+2222 are also prime.

The programs for A241485, there is no canonical definition to state claims against.
-/

/-! ## A241485.P308852296468041845

`A154762(A055686(n+1))`
-/

namespace A241485.P308852296468041845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154762 (A055686 (n + 1)).toNat

end

end A241485.P308852296468041845

/-!
# A241486: Primes p such that p+4, p+444 and p+4444 are also prime.

The programs for A241486, there is no canonical definition to state claims against.
-/

/-! ## A241486.P13708513812534305395

`A046136(lt[A084588(n+2), A057846(2*n)])`
-/

namespace A241486.P13708513812534305395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084588 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057846 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046136 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A241486.P13708513812534305395

/-!
# A241487: Primes p such that p+6, p+666 and p+6666 are also prime.

The programs for A241487, there is no canonical definition to state claims against.
-/

/-! ## A241487.P3152156251388883265

`A113029(A023857(n+2))`
-/

namespace A241487.P3152156251388883265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113029 (A023857 (n + 2)).toNat

end

end A241487.P3152156251388883265

/-!
# A241490: Least zeroless number k such that k^3 contains n zeros.

The programs for A241490, there is no canonical definition to state claims against.
-/

/-! ## A241490.P9904848159072072869

`record[gcd(A092820(n), A203802(n+1))]`
-/

namespace A241490.P9904848159072072869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092820 n) (A203802 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241490.P9904848159072072869

/-!
# A241491: 2*n is not the sum of two base-2 palindromes.

The programs for A241491, there is no canonical definition to state claims against.
-/

/-! ## A241491.P14189024180780307228

`A261678(n+1)/2`
-/

namespace A241491.P14189024180780307228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261678 (n + 1) : ℚ) / 2

end

end A241491.P14189024180780307228

/-! ## A241491.P238233509695316106

`A014682(A261678(n+1))`
-/

namespace A241491.P238233509695316106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A261678 (n + 1)).toNat

end

end A241491.P238233509695316106

/-! ## A241491.P16288770315395065623

`A103391(A261678(n+1)-2)`
-/

namespace A241491.P16288770315395065623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A261678 (n + 1) - 2).toNat

end

end A241491.P16288770315395065623

/-! ## A241491.P4268277472936040740

`A328399(A261678(n+1)-2)`
-/

namespace A241491.P4268277472936040740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A261678 (n + 1) - 2).toNat

end

end A241491.P4268277472936040740

/-! ## A241491.P15736817489984389801

`A302032(A261678(n+1)+2)-1`
-/

namespace A241491.P15736817489984389801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 (A261678 (n + 1) + 2).toNat - 1

end

end A241491.P15736817489984389801

/-! ## A241491.P14672674858709803450

`A302032(A261678(n+1))%A240510(n+2)`
-/

namespace A241491.P14672674858709803450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302032 (A261678 (n + 1)).toNat) (A240510 (n + 2))

end

end A241491.P14672674858709803450

/-! ## A241491.P15860780016234572819

`A175126(A261678(n+1)+2)-1`
-/

namespace A241491.P15860780016234572819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A261678 (n + 1) + 2).toNat - 1

end

end A241491.P15860780016234572819

/-! ## A241491.P8508404818005056592

`A175126(A261678(n+1)+A000007(n))`
-/

namespace A241491.P8508404818005056592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A261678 (n + 1) + A000007 n).toNat

end

end A241491.P8508404818005056592

/-! ## A241491.P9486110483173559768

`A175126(A261678(n+1)%A290393(n+1))`
-/

namespace A241491.P9486110483173559768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (Int.tmod (A261678 (n + 1)) (A290393 (n + 1))).toNat

end

end A241491.P9486110483173559768

/-! ## A241491.P3518739329935691769

`A004525(A261678(n+1)-A005843(n+1))+n+1`
-/

namespace A241491.P3518739329935691769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A261678 (n + 1) - A005843 (n + 1)).toNat + (n + 1 : ℤ)

end

end A241491.P3518739329935691769

/-! ## A241491.P6712489409120814230

`eq[0, A261679(2*n)]`
-/

namespace A241491.P6712489409120814230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261679 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A241491.P6712489409120814230

/-! ## A241491.P502349010781229175

`eq[A000035(n), A261679(n)]/2`
-/

namespace A241491.P502349010781229175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261679 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A241491.P502349010781229175

/-! ## A241491.P14643704305244186950

`A001281(A261678(n+1)+2)-1`
-/

namespace A241491.P14643704305244186950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A261678 (n + 1) + 2).toNat - 1

end

end A241491.P14643704305244186950

/-! ## A241491.P18319925916220126926

`A004525(A261678(n+1)+2)-1`
-/

namespace A241491.P18319925916220126926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A261678 (n + 1) + 2).toNat - 1

end

end A241491.P18319925916220126926

/-!
# A241494: Pyramid Top Numbers: write the decimal digits of 'n' (a nonnegative integer) and take successive absolute differences ("pyramidalization"). The number at the top of the pyramid is 'a(n)'.

The programs for A241494, there is no canonical definition to state claims against.
-/

/-! ## A241494.P15814083432804210228

`A240237(n)%10`
-/

namespace A241494.P15814083432804210228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240237 n) 10

end

end A241494.P15814083432804210228

/-! ## A241494.P7781457169918403058

`A363038(n)%10`
-/

namespace A241494.P7781457169918403058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363038 n) 10

end

end A241494.P7781457169918403058

/-! ## A241494.P10855346454304383847

`A010879(A363038(n))`
-/

namespace A241494.P10855346454304383847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A363038 n).toNat

end

end A241494.P10855346454304383847

/-! ## A241494.P2313278035483160581

`sqrt(A069940(n)-A257297(n)-A069816(n))`
-/

namespace A241494.P2313278035483160581
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A069940 n - A257297 n - A069816 n : ℝ)

end

end A241494.P2313278035483160581

/-! ## A241494.P10707215249319715226

`sqrt(A007953(n)²-2*A257297(n)-A069816(n))`
-/

namespace A241494.P10707215249319715226
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A007953 n ^ 2 - 2 * A257297 n - A069816 n : ℝ)

end

end A241494.P10707215249319715226

/-! ## A241494.P4023879431596556249

`A056967(A047842(n))%11`
-/

namespace A241494.P4023879431596556249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056967 (A047842 n).toNat) 11

end

end A241494.P4023879431596556249

/-! ## A241494.P9104600210693956645

`A004185(A051022(n))%11`
-/

namespace A241494.P9104600210693956645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004185 (A051022 n).toNat) 11

end

end A241494.P9104600210693956645

/-! ## A241494.P12562269572055931875

`abs(A225693(n)%A213306(n))`
-/

namespace A241494.P12562269572055931875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A225693 n) (A213306 n)|

end

end A241494.P12562269572055931875

/-! ## A241494.P17622379523138825336

`abs(A055017(n))%A003171(n+1)`
-/

namespace A241494.P17622379523138825336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A055017 n| (A003171 (n + 1))

end

end A241494.P17622379523138825336

/-! ## A241494.P4872584085078363968

`gcd(A055017(n), A338827(A087019(n)))`
-/

namespace A241494.P4872584085078363968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055017 n) (A338827 (A087019 n).toNat)

end

end A241494.P4872584085078363968

/-! ## A241494.P12081757068027034182

`A010879(A240237(n))`
-/

namespace A241494.P12081757068027034182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A240237 n).toNat

end

end A241494.P12081757068027034182

/-! ## A241494.P10306037607481618351

`∑{digits}[A055017(A096582(n+2)), #]`
-/

namespace A241494.P10306037607481618351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (A096582 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A241494.P10306037607481618351

/-! ## A241494.P16727172473231315793

`∑{digits}[A055017(n)*A057428(A000290(n)), #]`
-/

namespace A241494.P16727172473231315793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 n * A057428 (A000290 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A241494.P16727172473231315793

/-! ## A241494.P11422003981338264645

`lcm(A008284(A000217(2*(n+1))), A055017(n))`
-/

namespace A241494.P11422003981338264645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008284 (A000217 (2 * (n + 1))).toNat) (A055017 n)

end

end A241494.P11422003981338264645

/-!
# A241496: Expansion of (1 + 4*x + x^2) / (1 - x^2)^3.

The programs for A241496, the canonical program `A241496.P16987211060044145286` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241496 has offset 0).

The definition of A241496 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x+x^2)/(1-3x^2+3x^4-x^6))` (program `A241496.P16987211060044145286`, by `A241496.P16987211060044145286.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A241496.P16987211060044145286

`ogf((1+4x+x^2)/(1-3x^2+3x^4-x^6))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A241496

/-- `ogf((1+4x+x^2)/(1-3x^2+3x^4-x^6))` -/
def P16987211060044145286.Spec : Prop :=
  ∀ n, P16987211060044145286.a n = A241496 n

theorem P16987211060044145286.correct : P16987211060044145286.Spec := by
  intro n
  simp only [A241496]

end A241496

/-! ## A241496.P5661267895129088756

`(3*n*(n+4)-(-1)^n*(n*(n+4)+2)+10)/8`
-/

namespace A241496.P5661267895129088756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n * (n + 4) : ℤ) - (-1) ^ n * (n * (n + 4) + 2 : ℤ) + 10 : ℚ) / 8

end

end A241496.P5661267895129088756

namespace A241496

/-- `(3*n*(n+4)-(-1)^n*(n*(n+4)+2)+10)/8` -/
def P5661267895129088756.Spec : Prop :=
  ∀ n, P5661267895129088756.a n = (A241496 n : ℚ)

end A241496

/-! ## A241496.P5839151661807402142

`floor(lcm(2, (n+2)²)/4)`
-/

namespace A241496.P5839151661807402142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm 2 ((n + 2) ^ 2) : ℚ) / 4⌋

end

end A241496.P5839151661807402142

namespace A241496

/-- `floor(lcm(2, (n+2)²)/4)` -/
def P5839151661807402142.Spec : Prop :=
  ∀ n, P5839151661807402142.a n = A241496 n

end A241496

/-! ## A241496.P5416036808942054027

`floor((n+2)²/(2*gcd(2, n)))`
-/

namespace A241496.P5416036808942054027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 2) ^ 2 : ℚ) / (2 * Nat.gcd 2 n : ℚ)⌋

end

end A241496.P5416036808942054027

namespace A241496

/-- `floor((n+2)²/(2*gcd(2, n)))` -/
def P5416036808942054027.Spec : Prop :=
  ∀ n, P5416036808942054027.a n = A241496 n

end A241496

/-! ## A241496.P10862908681731498081

`(n%2+1)*∑[∑[char[2*n]]]`
-/

namespace A241496.P10862908681731498081
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2 + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A241496.P10862908681731498081

namespace A241496

/-- `(n%2+1)*∑[∑[char[2*n]]]` -/
def P10862908681731498081.Spec : Prop :=
  ∀ n, (P10862908681731498081.a n : ℤ) = A241496 n

end A241496

/-! ## A241496.P4018259359645920018

`(and(1, n)+1)*floor((n/2+1)²)`
-/

namespace A241496.P4018259359645920018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n + 1 : ℤ) * ⌊((n : ℚ) / 2 + 1) ^ 2⌋

end

end A241496.P4018259359645920018

namespace A241496

/-- `(and(1, n)+1)*floor((n/2+1)²)` -/
def P4018259359645920018.Spec : Prop :=
  ∀ n, P4018259359645920018.a n = A241496 n

end A241496

/-! ## A241496.P6769953081909437263

`floor(∑[n+1]²/(2*a(n-1)))` with `a(0)=1`
-/

namespace A241496.P6769953081909437263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / (2 * a (n - 1) : ℚ)⌋

end

end A241496.P6769953081909437263

namespace A241496

/-- `floor(∑[n+1]²/(2*a(n-1)))` -/
def P6769953081909437263.Spec : Prop :=
  ∀ n, P6769953081909437263.a n = A241496 n

end A241496

/-! ## A241496.P6046605678630175620

`floor(∑[(n+1)^3/2]/a(n-1))` with `a(0)=1`
-/

namespace A241496.P6046605678630175620
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j) / (a (n - 1) : ℚ)⌋

end

end A241496.P6046605678630175620

namespace A241496

/-- `floor(∑[(n+1)^3/2]/a(n-1))` -/
def P6046605678630175620.Spec : Prop :=
  ∀ n, P6046605678630175620.a n = A241496 n

end A241496

/-! ## A241496.P531185987606770579

`floor(gcd(n+3, n+1)/(2/(n+2))²)`
-/

namespace A241496.P531185987606770579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd (n + 3) (n + 1) : ℚ) / (2 / (n + 2 : ℚ)) ^ 2⌋

end

end A241496.P531185987606770579

namespace A241496

/-- `floor(gcd(n+3, n+1)/(2/(n+2))²)` -/
def P531185987606770579.Spec : Prop :=
  ∀ n, P531185987606770579.a n = A241496 n

end A241496

/-! ## A241496.P6414506294705505005

`floor((n+2)/2*gcd(n+2, ∑[n+1]))`
-/

namespace A241496.P6414506294705505005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / 2 * (Nat.gcd (n + 2) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)⌋

end

end A241496.P6414506294705505005

namespace A241496

/-- `floor((n+2)/2*gcd(n+2, ∑[n+1]))` -/
def P6414506294705505005.Spec : Prop :=
  ∀ n, P6414506294705505005.a n = A241496 n

end A241496

/-! ## A241496.P17660222076796207390

`floor(floor(∑[n+1]²/a(n-1))/2)` with `a(0)=1`
-/

namespace A241496.P17660222076796207390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(⌊(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / (a (n - 1) : ℚ)⌋ : ℚ) / 2⌋

end

end A241496.P17660222076796207390

namespace A241496

/-- `floor(floor(∑[n+1]²/a(n-1))/2)` -/
def P17660222076796207390.Spec : Prop :=
  ∀ n, P17660222076796207390.a n = A241496 n

end A241496

/-! ## A241496.P4594793202789597859

`∑[4/a(n-1)*∑[n]]-a(n-1)` with `a(0)=1`
-/

namespace A241496.P4594793202789597859
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  4 / f1 (n - 1) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A241496.P4594793202789597859

namespace A241496

/-- `∑[4/a(n-1)*∑[n]]-a(n-1)` -/
def P4594793202789597859.Spec : Prop :=
  ∀ n, P4594793202789597859.a n = (A241496 n : ℚ)

end A241496

/-! ## A241496.P3677710418342515060

`∑[(n+1)*(char[2*n+1]+1)-a(n-1)]` with `a(0)=1`
-/

namespace A241496.P3677710418342515060
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (((n + 1) * ((if ∃ j, f2 j = n then 1 else 0) + 1) : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241496.P3677710418342515060

namespace A241496

/-- `∑[(n+1)*(char[2*n+1]+1)-a(n-1)]` -/
def P3677710418342515060.Spec : Prop :=
  ∀ n, P3677710418342515060.a n = A241496 n

end A241496

/-! ## A241496.P11615215729490278105

`∑[A059029(n)+1]-a(n-1)` with `a(0)=1`
-/

namespace A241496.P11615215729490278105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A241496.P11615215729490278105

namespace A241496

/-- `∑[A059029(n)+1]-a(n-1)` -/
def P11615215729490278105.Spec : Prop :=
  ∀ n, P11615215729490278105.a n = A241496 n

end A241496

/-! ## A241496.P13811366790560510010

`∑[A008619(n)]*A000034(n)`
-/

namespace A241496.P13811366790560510010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000034 n

end

end A241496.P13811366790560510010

namespace A241496

/-- `∑[A008619(n)]*A000034(n)` -/
def P13811366790560510010.Spec : Prop :=
  ∀ n, P13811366790560510010.a n = A241496 n

end A241496

/-! ## A241496.P17234891835902734564

`A147685(n)+A114753(n+1)`
-/

namespace A241496.P17234891835902734564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147685 n + A114753 (n + 1)

end

end A241496.P17234891835902734564

namespace A241496

/-- `A147685(n)+A114753(n+1)` -/
def P17234891835902734564.Spec : Prop :=
  ∀ n, P17234891835902734564.a n = A241496 n

end A241496

/-! ## A241496.P5518251478673515971

`A000034(n)*A087811(n+1)`
-/

namespace A241496.P5518251478673515971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A087811 (n + 1)

end

end A241496.P5518251478673515971

namespace A241496

/-- `A000034(n)*A087811(n+1)` -/
def P5518251478673515971.Spec : Prop :=
  ∀ n, P5518251478673515971.a n = A241496 n

end A241496

/-! ## A241496.P16563216930099957193

`A008619(n)*A097362(n+1)`
-/

namespace A241496.P16563216930099957193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A097362 (n + 1)

end

end A241496.P16563216930099957193

namespace A241496

/-- `A008619(n)*A097362(n+1)` -/
def P16563216930099957193.Spec : Prop :=
  ∀ n, P16563216930099957193.a n = A241496 n

end A241496

/-! ## A241496.P1285379897721688242

`(A026741(n)+1)*A080513(n)`
-/

namespace A241496.P1285379897721688242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A026741 n + 1) * A080513 n

end

end A241496.P1285379897721688242

namespace A241496

/-- `(A026741(n)+1)*A080513(n)` -/
def P1285379897721688242.Spec : Prop :=
  ∀ n, P1285379897721688242.a n = A241496 n

end A241496

/-! ## A241496.P486584652553223225

`A026035(n+2)-A212767(n)`
-/

namespace A241496.P486584652553223225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026035 (n + 2) - A212767 n

end

end A241496.P486584652553223225

namespace A241496

/-- `A026035(n+2)-A212767(n)` -/
def P486584652553223225.Spec : Prop :=
  ∀ n, P486584652553223225.a n = A241496 n

end A241496

/-!
# A241497: q-Pell numbers with q=2.

The programs for A241497, the canonical program `A241497.P5354042532790429935` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241497 has offset 0).

The definition of A241497 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A241497.P5354042532790429935

`2*a(n-1)+2^(n-2)*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A241497

/-- `2*a(n-1)+2^(n-2)*a(n-2)` -/
def P5354042532790429935.Spec : Prop :=
  ∀ n, P5354042532790429935.a n = (A241497 n : ℚ)

end A241497

/-! ## A241497.P15424750758457506861

`round(2^(n-2))*A246368(ceil(2^(n-1)))`
-/

namespace A241497.P15424750758457506861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)) * A246368 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A241497.P15424750758457506861

namespace A241497

/-- `round(2^(n-2))*A246368(ceil(2^(n-1)))` -/
def P15424750758457506861.Spec : Prop :=
  ∀ n, P15424750758457506861.a n = A241497 n

end A241497

/-! ## A241497.P4067750273909535717

`A154125(A058798(n)+A054782(n))`
-/

namespace A241497.P4067750273909535717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154125 (A058798 n + A054782 n).toNat

end

end A241497.P4067750273909535717

namespace A241497

/-- `A154125(A058798(n)+A054782(n))` -/
def P4067750273909535717.Spec : Prop :=
  ∀ n, P4067750273909535717.a n = A241497 n

end A241497

/-!
# A241498: q-Lucas numbers with q=2.

The programs for A241498, the canonical program `A241498.P3913344068891794524` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241498 has offset 0).

The definition of A241498 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A241498.P3913344068891794524

`a(n-1)+2^(n-2)*a(n-2)` with `a(0)=2, a(1)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A241498

/-- `a(n-1)+2^(n-2)*a(n-2)` -/
def P3913344068891794524.Spec : Prop :=
  ∀ n, P3913344068891794524.a n = (A241498 n : ℚ)

end A241498

/-! ## A241498.P9805739600320202152

`A138895(A149602(n+1))`
-/

namespace A241498.P9805739600320202152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138895 (A149602 (n + 1)).toNat

end

end A241498.P9805739600320202152

namespace A241498

/-- `A138895(A149602(n+1))` -/
def P9805739600320202152.Spec : Prop :=
  ∀ n, P9805739600320202152.a n = A241498 n

end A241498

/-! ## A241498.P9054190979488745662

`A010872(A093834(n))+A009290(n)`
-/

namespace A241498.P9054190979488745662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A093834 n).toNat + A009290 n

end

end A241498.P9054190979488745662

namespace A241498

/-- `A010872(A093834(n))+A009290(n)` -/
def P9054190979488745662.Spec : Prop :=
  ∀ n, P9054190979488745662.a n = A241498 n

end A241498

/-!
# A241499: a(n)= k is the number of consecutive primes of the form 10^d - prime(n), 10^(d+1)- prime(n),...,10^(d+k-1)- prime(n) where d is the number of decimal digits of prime(n).

The programs for A241499, there is no canonical definition to state claims against.
-/

/-! ## A241499.P10491555734725277070

`A296882(∑{d}[n+1, 2^(#-1)])%A090281(3*n+1)`
-/

namespace A241499.P10491555734725277070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296882 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ ((d : ℤ) - 1 : ℤ))).toNat) (A090281 (3 * n + 1))

end

end A241499.P10491555734725277070

/-! ## A241499.P14109254150957471626

`A215020(A142461(n+4)+A000010(n+1))`
-/

namespace A241499.P14109254150957471626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215020 (A142461 (n + 4) + A000010 (n + 1)).toNat

end

end A241499.P14109254150957471626

/-! ## A241499.P11360911128770410146

`and(A267401(A169709(n)), A277820(2*n+5))`
-/

namespace A241499.P11360911128770410146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267401 (A169709 n).toNat) (A277820 (2 * n + 5))

end

end A241499.P11360911128770410146

