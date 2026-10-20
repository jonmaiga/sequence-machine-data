import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A268502: Expansion of Product_{k>=1} ((1 + k*x^k) / (1 - x^k))^k.

The programs for A268502, there is no canonical definition to state claims against.
-/

/-! ## A268502.P3166078820804741460

`A215033(a(n-1))+3` with `a(0)=1, a(1)=2`
-/

namespace A268502.P3166078820804741460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A215033 (a (n - 1)).toNat + 3

end

end A268502.P3166078820804741460

/-! ## A268502.P15548921669373649206

`A140199(A192969(n))`
-/

namespace A268502.P15548921669373649206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140199 (A192969 n).toNat

end

end A268502.P15548921669373649206

/-!
# A268503: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 369", based on the 5-celled von Neumann neighborhood.

The programs for A268503, there is no canonical definition to state claims against.
-/

/-! ## A268503.P3557021125658994679

`∑[A268277(n)]`
-/

namespace A268503.P3557021125658994679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268503.P3557021125658994679

/-! ## A268503.P12829336092707306867

`A268277(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A268503.P12829336092707306867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A268277 n + a (A023443 n).toNat

end

end A268503.P12829336092707306867

/-! ## A268503.P7548423791262283041

`A268277(A002378(n)/(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A268503.P7548423791262283041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A268277 (SequenceMachineLib.roundAway ((A002378 n : ℚ) / (n + 1 : ℚ))).toNat + a (n - 1)

end

end A268503.P7548423791262283041

/-! ## A268503.P14366830804165914657

`∑[∑[A270793(n)]+1-A270793(n)]`
-/

namespace A268503.P14366830804165914657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270793 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A270793 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268503.P14366830804165914657

/-! ## A268503.P16505893292212020824

`∑[or(3, 2*n)²-A272273(n+1)]`
-/

namespace A268503.P16505893292212020824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 (2 * n) ^ 2 : ℤ) - A272273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268503.P16505893292212020824

/-!
# A268504: 

The programs for A268504, there is no canonical definition to state claims against.
-/

/-! ## A268504.P10567810257568266838

`∏[(3*n)!]`
-/

namespace A268504.P10567810257568266838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A268504.P10567810257568266838

/-! ## A268504.P13778847731950704435

`2^∑[log2((3*n)!)]`
-/

namespace A268504.P13778847731950704435
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.factorial (3 * n) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268504.P13778847731950704435

/-! ## A268504.P17267480110189169726

`(3*n)!*a(n-1)` with `a(0)=1`
-/

namespace A268504.P17267480110189169726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.factorial (3 * n) * a (n - 1)

end

end A268504.P17267480110189169726

/-! ## A268504.P297894094028314130

`∏[record[((n²-1)%Δ[n²])!]]`
-/

namespace A268504.P297894094028314130
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod ((n ^ 2 : ℤ) - 1) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A268504.P297894094028314130

/-! ## A268504.P4096819137528583588

`∏[A100732(n)]`
-/

namespace A268504.P4096819137528583588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A268504.P4096819137528583588

/-!
# A268505: 

The programs for A268505, there is no canonical definition to state claims against.
-/

/-! ## A268505.P15015962939349066534

`∏[(4*n)!]`
-/

namespace A268505.P15015962939349066534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A268505.P15015962939349066534

/-! ## A268505.P5589451555552933360

`(4*n)!*a(n-1)` with `a(0)=1`
-/

namespace A268505.P5589451555552933360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.factorial (4 * n) * a (n - 1)

end

end A268505.P5589451555552933360

/-! ## A268505.P14524452214272774905

`∏[record[(n^val(gcd(4, n), 4))!]]`
-/

namespace A268505.P14524452214272774905
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n ^ SequenceMachineLib.valuation (Nat.gcd 4 n) 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A268505.P14524452214272774905

/-! ## A268505.P15712454513582757815

`∏[record[round(n/(n%2+1/2))!]]`
-/

namespace A268505.P15712454513582757815
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway ((n : ℚ) / (((n % 2 : ℕ) : ℚ) + (1 : ℚ) / 2))).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A268505.P15712454513582757815

/-!
# A268506: 

The programs for A268506, there is no canonical definition to state claims against.
-/

/-! ## A268506.P12915814640195884362

`∏[(5*n)!]`
-/

namespace A268506.P12915814640195884362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (5 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A268506.P12915814640195884362

/-! ## A268506.P15934879985529045857

`(5*n)!*a(n-1)` with `a(0)=1`
-/

namespace A268506.P15934879985529045857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.factorial (5 * n) * a (n - 1)

end

end A268506.P15934879985529045857

/-! ## A268506.P11119674098349227457

`∏[5*n*(5*n-1)*(5*n-2)*(5*n-3)*(5*n-4)*a(n-1)]` with `a(0)=1`
-/

namespace A268506.P11119674098349227457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  5 * ((n : ℤ) * (((5 * n : ℤ) - 1) * (((5 * n : ℤ) - 2) * (((5 * n : ℤ) - 3) * ((5 * n : ℤ) - 4))))) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A268506.P11119674098349227457

/-!
# A268507: Number of ordered ways to write n as w^2 + x^2 + y^2 + z^2 with w > 0, w >= x <= y <= z such that x^2*y^2 + y^2*z^2 + z^2*x^2 is a square, where w,x,y,z are nonnegative integers.

The programs for A268507, there is no canonical definition to state claims against.
-/

/-! ## A268507.P1570539965815060614

`A272351(n+1)-A122841(A299276(n))`
-/

namespace A268507.P1570539965815060614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272351 (n + 1) - A122841 (A299276 n).toNat

end

end A268507.P1570539965815060614

/-! ## A268507.P1251167548417091407

`A272351(n+1)-A086015(A108441(n))`
-/

namespace A268507.P1251167548417091407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272351 (n + 1) - A086015 (A108441 n).toNat

end

end A268507.P1251167548417091407

/-! ## A268507.P293486389448689781

`A272351(n+1)-A107846(A113092(n))`
-/

namespace A268507.P293486389448689781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272351 (n + 1) - A107846 (A113092 n).toNat

end

end A268507.P293486389448689781

/-! ## A268507.P12109674740300716505

`A107079(A272351(n+1))%p?[A025065(n)]`
-/

namespace A268507.P12109674740300716505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107079 (A272351 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A268507.P12109674740300716505

/-! ## A268507.P2152529838808294436

`A107079(gcd(A107651(n+1), A272351(n+1)))`
-/

namespace A268507.P2152529838808294436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (Int.gcd (A107651 (n + 1)) (A272351 (n + 1)))

end

end A268507.P2152529838808294436

/-!
# A268509: Numbers x such that x^3 = y^2 + z for some y and some nonzero z with -x < z < x.

The programs for A268509, there is no canonical definition to state claims against.
-/

/-! ## A268509.P5010003431331759651

`filter[A253181(n+1), A049240(#)]`
-/

namespace A268509.P5010003431331759651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A268509.P5010003431331759651

/-! ## A268509.P5360237230194186720

`∩[A000037(n+1), A253181(n+1)]`
-/

namespace A268509.P5360237230194186720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268509.P5360237230194186720

/-! ## A268509.P17153124893441375242

`∩[A094784(n+1), A253181(n+1)]`
-/

namespace A268509.P17153124893441375242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268509.P17153124893441375242

/-! ## A268509.P13336968953573199022

`filter[A253181(n+1), A267635(#)]`
-/

namespace A268509.P13336968953573199022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A268509.P13336968953573199022

/-! ## A268509.P11466022804853416193

`lt[A010052(n), char[A253181(n+1)]]`
-/

namespace A268509.P11466022804853416193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253181 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A268509.P11466022804853416193

/-! ## A268509.P184963416706027200

`lt[A037213(n), char[A253181(n+1)]]`
-/

namespace A268509.P184963416706027200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253181 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A268509.P184963416706027200

/-!
# A268510: Numbers x such that x^2 = y^3 + z (0 < abs(z) < y).

The programs for A268510, there is no canonical definition to state claims against.
-/

/-! ## A268510.P9437481781483839348

`round(sqrt(A268509(n+1)^3))`
-/

namespace A268510.P9437481781483839348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A268509 (n + 1) ^ 3 : ℝ))

end

end A268510.P9437481781483839348

/-! ## A268510.P2905591901089805144

`A002821(A268509(n+1))`
-/

namespace A268510.P2905591901089805144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 (A268509 (n + 1)).toNat

end

end A268510.P2905591901089805144

/-! ## A268510.P2053113745843783265

`A002821(∩[A000037(n+1), A253181(n+1)])`
-/

namespace A268510.P2053113745843783265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253181 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A268510.P2053113745843783265

/-! ## A268510.P8975202850720040188

`A002821(∩[A094784(n+1), A253181(n+1)])`
-/

namespace A268510.P8975202850720040188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253181 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A268510.P8975202850720040188

/-!
# A268511: Odd integers n such that 3^n + 5^n = x^2 + y^2 (x and y integers) is solvable.

The programs for A268511, there is no canonical definition to state claims against.
-/

/-! ## A268511.P6496428957398816627

`∩[A070698(n+1), A192592(A070698(n+1))]`
-/

namespace A268511.P6496428957398816627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192592 (A070698 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268511.P6496428957398816627

/-! ## A268511.P3153410439124368368

`A162401(record[A306454(n+1)])`
-/

namespace A268511.P3153410439124368368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162401 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A268511.P3153410439124368368

/-! ## A268511.P3715202080793287861

`A175069(record[A306454(n+1)])`
-/

namespace A268511.P3715202080793287861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175069 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A268511.P3715202080793287861

/-!
# A268513: Numbers n such that bigomega(n) = bigomega(n*(n+1)+41).

The programs for A268513, there is no canonical definition to state claims against.
-/

/-! ## A268513.P17435289878757390662

`A316857(lt[A053120(n), A182406(2*n+1)])`
-/

namespace A268513.P17435289878757390662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182406 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316857 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A268513.P17435289878757390662

/-! ## A268513.P8033370659215267852

`eq[A240205(n), A287457(n+1)]`
-/

namespace A268513.P8033370659215267852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240205 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287457 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268513.P8033370659215267852

/-! ## A268513.P13532309203992384489

`A319397(A174616(n))+A000040(n+1)`
-/

namespace A268513.P13532309203992384489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319397 (A174616 n).toNat + A000040 (n + 1)

end

end A268513.P13532309203992384489

/-!
# A268514: a(0)=0; thereafter a(2n+1)=3*a(n)+1, a(2n)=2*a(n)+a(n-1)+1.

The programs for A268514, the canonical program `A268514.P15426293074144232651` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268514 has offset 0).

The definition of A268514 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268514.P15426293074144232651

`(A064194(n+1)-1)/2`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A268514

/-- `(A064194(n+1)-1)/2` -/
def P15426293074144232651.Spec : Prop :=
  ∀ n, P15426293074144232651.a n = (A268514 n : ℚ)

end A268514

/-! ## A268514.P3910932043762910052

`∑[gcd(2, n)*a(floor(n/2))]` with `a(0)=0, a(1)=1`
-/

namespace A268514.P3910932043762910052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  Nat.gcd 2 n * f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268514.P3910932043762910052

namespace A268514

/-- `∑[gcd(2, n)*a(floor(n/2))]` -/
def P3910932043762910052.Spec : Prop :=
  ∀ n, (P3910932043762910052.a n : ℤ) = A268514 n

end A268514

/-! ## A268514.P17873576364631816072

`A325103(n)+n`
-/

namespace A268514.P17873576364631816072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325103 n + (n : ℤ)

end

end A268514.P17873576364631816072

namespace A268514

/-- `A325103(n)+n` -/
def P17873576364631816072.Spec : Prop :=
  ∀ n, P17873576364631816072.a n = A268514 n

end A268514

/-! ## A268514.P17073128019758680290

`∑[A080100(n)]-1`
-/

namespace A268514.P17073128019758680290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A268514.P17073128019758680290

namespace A268514

/-- `∑[A080100(n)]-1` -/
def P17073128019758680290.Spec : Prop :=
  ∀ n, P17073128019758680290.a n = A268514 n

end A268514

/-! ## A268514.P11741726654108607584

`∑[sqrt(A309074(n))]-1`
-/

namespace A268514.P11741726654108607584
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A309074 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A268514.P11741726654108607584

namespace A268514

/-- `∑[sqrt(A309074(n))]-1` -/
def P11741726654108607584.Spec : Prop :=
  ∀ n, P11741726654108607584.a n = (A268514 n : ℝ)

end A268514

/-! ## A268514.P2180355548911497091

`∑[floor(A267584(n)/2)]`
-/

namespace A268514.P2180355548911497091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A267584 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268514.P2180355548911497091

namespace A268514

/-- `∑[floor(A267584(n)/2)]` -/
def P2180355548911497091.Spec : Prop :=
  ∀ n, P2180355548911497091.a n = A268514 n

end A268514

/-! ## A268514.P7328606381806080556

`floor(A064194(n+1)/2)`
-/

namespace A268514.P7328606381806080556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A064194 (n + 1) : ℚ) / 2⌋

end

end A268514.P7328606381806080556

namespace A268514

/-- `floor(A064194(n+1)/2)` -/
def P7328606381806080556.Spec : Prop :=
  ∀ n, P7328606381806080556.a n = A268514 n

end A268514

/-! ## A268514.P1399411808661716567

`∑[2^A080791(n)]-1`
-/

namespace A268514.P1399411808661716567
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A080791 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A268514.P1399411808661716567

namespace A268514

/-- `∑[2^A080791(n)]-1` -/
def P1399411808661716567.Spec : Prop :=
  ∀ n, P1399411808661716567.a n = (A268514 n : ℚ)

end A268514

/-! ## A268514.P15762436001318711843

`∑[n-A353292(n)]+n`
-/

namespace A268514.P15762436001318711843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A353292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A268514.P15762436001318711843

namespace A268514

/-- `∑[n-A353292(n)]+n` -/
def P15762436001318711843.Spec : Prop :=
  ∀ n, P15762436001318711843.a n = A268514 n

end A268514

/-! ## A268514.P3454617593174925458

`∑[n]-(A080572(n+1)-n)/2`
-/

namespace A268514.P3454617593174925458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (A080572 (n + 1) - (n : ℤ) : ℚ) / 2

end

end A268514.P3454617593174925458

namespace A268514

/-- `∑[n]-(A080572(n+1)-n)/2` -/
def P3454617593174925458.Spec : Prop :=
  ∀ n, P3454617593174925458.a n = (A268514 n : ℚ)

end A268514

/-! ## A268514.P16716476383551016622

`∑[and(n, -n)*A000010(a(n-1))]-1` with `a(0)=1`
-/

namespace A268514.P16716476383551016622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.land (n : ℤ) (-(n : ℤ)) * A000010 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A268514.P16716476383551016622

namespace A268514

/-- `∑[and(n, -n)*A000010(a(n-1))]-1` -/
def P16716476383551016622.Spec : Prop :=
  ∀ n, P16716476383551016622.a n = A268514 n

end A268514

/-! ## A268514.P4508500970687981906

`∑[A000079(A080791(n))]-1`
-/

namespace A268514.P4508500970687981906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A080791 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A268514.P4508500970687981906

namespace A268514

/-- `∑[A000079(A080791(n))]-1` -/
def P4508500970687981906.Spec : Prop :=
  ∀ n, P4508500970687981906.a n = A268514 n

end A268514

/-! ## A268514.P9222119092166090008

`∑[A267584(A025480(n))]-1`
-/

namespace A268514.P9222119092166090008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267584 (A025480 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A268514.P9222119092166090008

namespace A268514

/-- `∑[A267584(A025480(n))]-1` -/
def P9222119092166090008.Spec : Prop :=
  ∀ n, P9222119092166090008.a n = A268514 n

end A268514

/-! ## A268514.P15757165310715464679

`∑[A001316(A035327(n))]-2`
-/

namespace A268514.P15757165310715464679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A035327 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A268514.P15757165310715464679

namespace A268514

/-- `∑[A001316(A035327(n))]-2` -/
def P15757165310715464679.Spec : Prop :=
  ∀ n, P15757165310715464679.a n = A268514 n

end A268514

/-! ## A268514.P14934630955209530795

`∑[A233931(A073137(n))]+n`
-/

namespace A268514.P14934630955209530795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233931 (A073137 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A268514.P14934630955209530795

namespace A268514

/-- `∑[A233931(A073137(n))]+n` -/
def P14934630955209530795.Spec : Prop :=
  ∀ n, P14934630955209530795.a n = A268514 n

end A268514

/-! ## A268514.P8765870965504331248

`∑[A080100(n)%A005408(n)]`
-/

namespace A268514.P8765870965504331248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080100 n) (A005408 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268514.P8765870965504331248

namespace A268514

/-- `∑[A080100(n)%A005408(n)]` -/
def P8765870965504331248.Spec : Prop :=
  ∀ n, P8765870965504331248.a n = A268514 n

end A268514

/-! ## A268514.P14183627563630473268

`∑[A090077(A073138(n))]`
-/

namespace A268514.P14183627563630473268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090077 (A073138 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268514.P14183627563630473268

namespace A268514

/-- `∑[A090077(A073138(n))]` -/
def P14183627563630473268.Spec : Prop :=
  ∀ n, P14183627563630473268.a n = A268514 n

end A268514

/-! ## A268514.P9763125179251436940

`∑[A025480(A267584(n))]`
-/

namespace A268514.P9763125179251436940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A267584 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268514.P9763125179251436940

namespace A268514

/-- `∑[A025480(A267584(n))]` -/
def P9763125179251436940.Spec : Prop :=
  ∀ n, P9763125179251436940.a n = A268514 n

end A268514

/-! ## A268514.P15455365757615212501

`∑[A048896(A036044(n))]-1`
-/

namespace A268514.P15455365757615212501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (A036044 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A268514.P15455365757615212501

namespace A268514

/-- `∑[A048896(A036044(n))]-1` -/
def P15455365757615212501.Spec : Prop :=
  ∀ n, P15455365757615212501.a n = A268514 n

end A268514

/-! ## A268514.P16758854465295722434

`∑[A090616(A267584(n)+2)]`
-/

namespace A268514.P16758854465295722434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090616 (A267584 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268514.P16758854465295722434

namespace A268514

/-- `∑[A090616(A267584(n)+2)]` -/
def P16758854465295722434.Spec : Prop :=
  ∀ n, P16758854465295722434.a n = A268514 n

end A268514

/-!
# A268515: Records in A002945 (continued fraction expansion of cube root of 2).

The programs for A268515, there is no canonical definition to state claims against.
-/

/-! ## A268515.P754869085825974868

`record[A002945(n)]`
-/

namespace A268515.P754869085825974868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268515.P754869085825974868

/-! ## A268515.P3114577547896411216

`A002945(A181495(n+1)-1)`
-/

namespace A268515.P3114577547896411216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002945 (A181495 (n + 1) - 1).toNat

end

end A268515.P3114577547896411216

/-!
# A268518: Primes p == -1 mod 6 such that there are consecutive primes q and r with p^2 = q + r + 1.

The programs for A268518, there is no canonical definition to state claims against.
-/

/-! ## A268518.P11918388132739215758

`∩[A003627(n+1), A092740(n+1)]`
-/

namespace A268518.P11918388132739215758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268518.P11918388132739215758

/-! ## A268518.P3597988382357908814

`∩[A007528(n+1), A092740(n+1)]`
-/

namespace A268518.P3597988382357908814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268518.P3597988382357908814

/-! ## A268518.P6507540753631053173

`∩[A056955(n+1), A092740(n+1)]`
-/

namespace A268518.P6507540753631053173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268518.P6507540753631053173

/-! ## A268518.P2799569111917597669

`∩[A092740(n+1), A259548(n+1)]`
-/

namespace A268518.P2799569111917597669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268518.P2799569111917597669

/-! ## A268518.P127379362029575207

`∩[A082406(n+1), A092740(n+1)]`
-/

namespace A268518.P127379362029575207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268518.P127379362029575207

/-! ## A268518.P18425401158140246962

`p?[A078182(A092740(n+1))]`
-/

namespace A268518.P18425401158140246962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078182 (A092740 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A268518.P18425401158140246962

/-! ## A268518.P8506892256367320017

`record[A078182(A092740(n+2))]`
-/

namespace A268518.P8506892256367320017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078182 (A092740 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268518.P8506892256367320017

/-! ## A268518.P644391433219216563

`filter[A092740(n+1), A080846(#)]`
-/

namespace A268518.P644391433219216563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080846 (f1 j).toNat = 1) n)

end

end A268518.P644391433219216563

/-! ## A268518.P12461235359133048366

`filter[A092740(n+1), A131532(#)]`
-/

namespace A268518.P12461235359133048366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131532 (f1 j).toNat = 1) n)

end

end A268518.P12461235359133048366

/-! ## A268518.P11914232418922294591

`filter[A092740(n+1), A214090(#)]`
-/

namespace A268518.P11914232418922294591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A214090 (f1 j).toNat = 1) n)

end

end A268518.P11914232418922294591

/-!
# A268519: Odd powers of 2 written between a pair of 1's.

The programs for A268519, there is no canonical definition to state claims against.
-/

/-! ## A268519.P10367349132850215858

`A162672(A199115(n+1))`
-/

namespace A268519.P10367349132850215858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162672 (A199115 (n + 1)).toNat

end

end A268519.P10367349132850215858

/-!
# A268520: Primes in A268519.

The programs for A268520, there is no canonical definition to state claims against.
-/

/-! ## A268520.P16540291726607096171

`A268519(A351283(n)+A124221(n+1))`
-/

namespace A268520.P16540291726607096171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268519 (A351283 n + A124221 (n + 1)).toNat

end

end A268520.P16540291726607096171

/-!
# A268522: Connected simple marginal independence graphs (SMIGs) on n nodes having a unique directed acyclic subgraph.

The programs for A268522, there is no canonical definition to state claims against.
-/

/-! ## A268522.P4279133348215866963

`A033270(A257829(n+1)+A178118(n))`
-/

namespace A268522.P4279133348215866963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A257829 (n + 1) + A178118 n).toNat

end

end A268522.P4279133348215866963

/-!
# A268524: a(n) = r*a(ceiling(n/2))+s*a(floor(n/2)) with a(1)=1 and (r,s)=(3,1).

The programs for A268524, the canonical program `A268524.P1043198502298127274` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268524 has offset 1).

The definition of A268524 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268524.P1043198502298127274

`3*a(ceil((n+1)/2)-1)+a(floor((n+1)/2)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A268524

/-- `3*a(ceil((n+1)/2)-1)+a(floor((n+1)/2)-1)` -/
def P1043198502298127274.Spec : Prop :=
  ∀ n, (P1043198502298127274.a n : ℤ) = A268524 (n + 1)

theorem P1043198502298127274.correct : P1043198502298127274.Spec := by
  intro n
  simp only [A268524, Nat.add_sub_cancel]

end A268524

/-! ## A268524.P16097000659216976357

`∑[gcd(3, n%2)*a(floor(n/2))]` with `a(0)=1, a(1)=3`
-/

namespace A268524.P16097000659216976357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  Nat.gcd 3 (n % 2) * f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268524.P16097000659216976357

namespace A268524

/-- `∑[gcd(3, n%2)*a(floor(n/2))]` -/
def P16097000659216976357.Spec : Prop :=
  ∀ n, (P16097000659216976357.a n : ℤ) = A268524 (n + 1)

end A268524

/-! ## A268524.P17395225076299283219

`∑[3*a(floor(n/(xor(n, n+1)+1)))]` with `a(0)=1`
-/

namespace A268524.P17395225076299283219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * f1 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268524.P17395225076299283219

namespace A268524

/-- `∑[3*a(floor(n/(xor(n, n+1)+1)))]` -/
def P17395225076299283219.Spec : Prop :=
  ∀ n, (P17395225076299283219.a n : ℤ) = A268524 (n + 1)

end A268524

/-! ## A268524.P1309416285333356697

`∑[3*a(floor(n/2))/and(3, 1-2*n)]` with `a(0)=1, a(1)=3`
-/

namespace A268524.P1309416285333356697
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  3 * (f1 ⌊(n : ℚ) / 2⌋.toNat / (Int.land 3 (1 - (2 * n : ℤ)) : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268524.P1309416285333356697

namespace A268524

/-- `∑[3*a(floor(n/2))/and(3, 1-2*n)]` -/
def P1309416285333356697.Spec : Prop :=
  ∀ n, P1309416285333356697.a n = (A268524 (n + 1) : ℚ)

end A268524

/-! ## A268524.P4878062989327692781

`∑[3^A290251(n)]`
-/

namespace A268524.P4878062989327692781
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A290251 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268524.P4878062989327692781

namespace A268524

/-- `∑[3^A290251(n)]` -/
def P4878062989327692781.Spec : Prop :=
  ∀ n, P4878062989327692781.a n = (A268524 (n + 1) : ℚ)

end A268524

/-! ## A268524.P5814359411977429181

`∑[3^log2(A267584(n))]`
-/

namespace A268524.P5814359411977429181
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 : ℝ) ^ (Real.logb 2 (A267584 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268524.P5814359411977429181

namespace A268524

/-- `∑[3^log2(A267584(n))]` -/
def P5814359411977429181.Spec : Prop :=
  ∀ n, P5814359411977429181.a n = (A268524 (n + 1) : ℝ)

end A268524

/-! ## A268524.P2324476622710937020

`∑[3^A080791(2*n)]`
-/

namespace A268524.P2324476622710937020
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A080791 (2 * n) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268524.P2324476622710937020

namespace A268524

/-- `∑[3^A080791(2*n)]` -/
def P2324476622710937020.Spec : Prop :=
  ∀ n, P2324476622710937020.a n = (A268524 (n + 1) : ℚ)

end A268524

/-! ## A268524.P14596270116131247486

`∑[A309057(2*n)]`
-/

namespace A268524.P14596270116131247486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309057 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268524.P14596270116131247486

namespace A268524

/-- `∑[A309057(2*n)]` -/
def P14596270116131247486.Spec : Prop :=
  ∀ n, P14596270116131247486.a n = A268524 (n + 1)

end A268524

/-! ## A268524.P9454952777010172088

`∑[3^A001222(A278531(n))]`
-/

namespace A268524.P9454952777010172088
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A001222 (A278531 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268524.P9454952777010172088

namespace A268524

/-- `∑[3^A001222(A278531(n))]` -/
def P9454952777010172088.Spec : Prop :=
  ∀ n, P9454952777010172088.a n = (A268524 (n + 1) : ℚ)

end A268524

/-! ## A268524.P10282060476065907384

`∑[3^A001222(A253563(n))]`
-/

namespace A268524.P10282060476065907384
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A001222 (A253563 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268524.P10282060476065907384

namespace A268524

/-- `∑[3^A001222(A253563(n))]` -/
def P10282060476065907384.Spec : Prop :=
  ∀ n, P10282060476065907384.a n = (A268524 (n + 1) : ℚ)

end A268524

/-! ## A268524.P15651065152838898017

`∑[3^A001222(A163511(n))]`
-/

namespace A268524.P15651065152838898017
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A001222 (A163511 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268524.P15651065152838898017

namespace A268524

/-- `∑[3^A001222(A163511(n))]` -/
def P15651065152838898017.Spec : Prop :=
  ∀ n, P15651065152838898017.a n = (A268524 (n + 1) : ℚ)

end A268524

/-! ## A268524.P9494405359283611714

`∑[3^A001222(A332214(n))]`
-/

namespace A268524.P9494405359283611714
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A001222 (A332214 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268524.P9494405359283611714

namespace A268524

/-- `∑[3^A001222(A332214(n))]` -/
def P9494405359283611714.Spec : Prop :=
  ∀ n, P9494405359283611714.a n = (A268524 (n + 1) : ℚ)

end A268524

/-!
# A268525: a(n) = r*a(ceiling(n/2))+s*a(floor(n/2)) with a(1)=1 and (r,s)=(2,3).

The programs for A268525, the canonical program `A268525.P15477016352622728595` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268525 has offset 1).

The definition of A268525 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268525.P15477016352622728595

`2*a(ceil((n+1)/2)-1)+3*a(floor((n+1)/2)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A268525

/-- `2*a(ceil((n+1)/2)-1)+3*a(floor((n+1)/2)-1)` -/
def P15477016352622728595.Spec : Prop :=
  ∀ n, (P15477016352622728595.a n : ℤ) = A268525 (n + 1)

theorem P15477016352622728595.correct : P15477016352622728595.Spec := by
  intro n
  simp only [A268525, Nat.add_sub_cancel]

end A268525

/-! ## A268525.P2139929128977456135

`A073061(4*n)+a(n-1)` with `a(0)=1`
-/

namespace A268525.P2139929128977456135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A073061 (4 * n) + a (n - 1)

end

end A268525.P2139929128977456135

namespace A268525

/-- `A073061(4*n)+a(n-1)` -/
def P2139929128977456135.Spec : Prop :=
  ∀ n, P2139929128977456135.a n = A268525 (n + 1)

end A268525

/-! ## A268525.P4290140612446660717

`∑[A073061(A008574(n))]`
-/

namespace A268525.P4290140612446660717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073061 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268525.P4290140612446660717

namespace A268525

/-- `∑[A073061(A008574(n))]` -/
def P4290140612446660717.Spec : Prop :=
  ∀ n, P4290140612446660717.a n = A268525 (n + 1)

end A268525

/-! ## A268525.P11769947013583904946

`∑[A073061(record[A257088(n)])]`
-/

namespace A268525.P11769947013583904946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073061 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268525.P11769947013583904946

namespace A268525

/-- `∑[A073061(record[A257088(n)])]` -/
def P11769947013583904946.Spec : Prop :=
  ∀ n, P11769947013583904946.a n = A268525 (n + 1)

end A268525

/-! ## A268525.P10891494793558494557

`∑[A073061(A257088(2*n))]`
-/

namespace A268525.P10891494793558494557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073061 (A257088 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268525.P10891494793558494557

namespace A268525

/-- `∑[A073061(A257088(2*n))]` -/
def P10891494793558494557.Spec : Prop :=
  ∀ n, P10891494793558494557.a n = A268525 (n + 1)

end A268525

/-! ## A268525.P14271595971564742802

`∑[A073061(A004275(2*n+1))]`
-/

namespace A268525.P14271595971564742802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073061 (A004275 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268525.P14271595971564742802

namespace A268525

/-- `∑[A073061(A004275(2*n+1))]` -/
def P14271595971564742802.Spec : Prop :=
  ∀ n, P14271595971564742802.a n = A268525 (n + 1)

end A268525

/-! ## A268525.P12342351520269526724

`∑[A000010(A176893(4*n))]`
-/

namespace A268525.P12342351520269526724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A176893 (4 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268525.P12342351520269526724

namespace A268525

/-- `∑[A000010(A176893(4*n))]` -/
def P12342351520269526724.Spec : Prop :=
  ∀ n, P12342351520269526724.a n = A268525 (n + 1)

end A268525

/-! ## A268525.P14388531951816886284

`∑[A000010(A073061(A017077(n)))]`
-/

namespace A268525.P14388531951816886284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A073061 (A017077 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268525.P14388531951816886284

namespace A268525

/-- `∑[A000010(A073061(A017077(n)))]` -/
def P14388531951816886284.Spec : Prop :=
  ∀ n, P14388531951816886284.a n = A268525 (n + 1)

end A268525

/-! ## A268525.P6325560879904678863

`∑[A000010(A073061(A017089(n)))]`
-/

namespace A268525.P6325560879904678863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A073061 (A017089 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268525.P6325560879904678863

namespace A268525

/-- `∑[A000010(A073061(A017089(n)))]` -/
def P6325560879904678863.Spec : Prop :=
  ∀ n, P6325560879904678863.a n = A268525 (n + 1)

end A268525

/-! ## A268525.P2727911536147566226

`∑[A009947(A176893(2*n))]`
-/

namespace A268525.P2727911536147566226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009947 (A176893 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268525.P2727911536147566226

namespace A268525

/-- `∑[A009947(A176893(2*n))]` -/
def P2727911536147566226.Spec : Prop :=
  ∀ n, P2727911536147566226.a n = A268525 (n + 1)

end A268525

/-!
# A268526: a(n) = r*a(ceiling(n/2))+s*a(floor(n/2)) with a(1)=1 and (r,s)=(3,2).

The programs for A268526, the canonical program `A268526.P9338193707830734584` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268526 has offset 1).

The definition of A268526 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268526.P9338193707830734584

`3*a(ceil((n+1)/2)-1)+2*a(floor((n+1)/2)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A268526

/-- `3*a(ceil((n+1)/2)-1)+2*a(floor((n+1)/2)-1)` -/
def P9338193707830734584.Spec : Prop :=
  ∀ n, (P9338193707830734584.a n : ℤ) = A268526 (n + 1)

theorem P9338193707830734584.correct : P9338193707830734584.Spec := by
  intro n
  simp only [A268526, Nat.add_sub_cancel]

end A268526

/-! ## A268526.P15430149759333328644

`∑[(3-n%2)*a(floor(n/2))]` with `a(0)=1, a(1)=4`
-/

namespace A268526.P15430149759333328644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  (3 - ((n % 2 : ℕ) : ℤ)) * f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268526.P15430149759333328644

namespace A268526

/-- `∑[(3-n%2)*a(floor(n/2))]` -/
def P15430149759333328644.Spec : Prop :=
  ∀ n, P15430149759333328644.a n = A268526 (n + 1)

end A268526

/-! ## A268526.P11329216806983007298

`record[A059905(A180543(n+1)²)]`
-/

namespace A268526.P11329216806983007298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A180543 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268526.P11329216806983007298

namespace A268526

/-- `record[A059905(A180543(n+1)²)]` -/
def P11329216806983007298.Spec : Prop :=
  ∀ n, P11329216806983007298.a n = A268526 (n + 1)

end A268526

/-!
# A268527: a(n) = r*a(ceiling(n/2))+s*a(floor(n/2)) with a(1)=1 and (r,s)=(4,1).

The programs for A268527, the canonical program `A268527.P13154963271611568197` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268527 has offset 1).

The definition of A268527 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268527.P13154963271611568197

`4*a(ceil((n+1)/2)-1)+a(floor((n+1)/2)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A268527

/-- `4*a(ceil((n+1)/2)-1)+a(floor((n+1)/2)-1)` -/
def P13154963271611568197.Spec : Prop :=
  ∀ n, (P13154963271611568197.a n : ℤ) = A268527 (n + 1)

theorem P13154963271611568197.correct : P13154963271611568197.Spec := by
  intro n
  simp only [A268527, Nat.add_sub_cancel]

end A268527

/-! ## A268527.P7653261175645401746

`∑[gcd(2, n)²*a(floor(n/2))]` with `a(0)=1, a(1)=4`
-/

namespace A268527.P7653261175645401746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  Nat.gcd 2 n ^ 2 * f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268527.P7653261175645401746

namespace A268527

/-- `∑[gcd(2, n)²*a(floor(n/2))]` -/
def P7653261175645401746.Spec : Prop :=
  ∀ n, (P7653261175645401746.a n : ℤ) = A268527 (n + 1)

end A268527

/-! ## A268527.P8987751320136170225

`∑[gcd(4, n^3)*a(floor(n/2))]` with `a(0)=1, a(1)=4`
-/

namespace A268527.P8987751320136170225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  Nat.gcd 4 (n ^ 3) * f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268527.P8987751320136170225

namespace A268527

/-- `∑[gcd(4, n^3)*a(floor(n/2))]` -/
def P8987751320136170225.Spec : Prop :=
  ∀ n, (P8987751320136170225.a n : ℤ) = A268527 (n + 1)

end A268527

/-! ## A268527.P3525524048137172583

`∑[(2-n%2)²*a(floor(n/2))]` with `a(0)=1, a(1)=4`
-/

namespace A268527.P3525524048137172583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  (2 - ((n % 2 : ℕ) : ℤ)) ^ 2 * f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268527.P3525524048137172583

namespace A268527

/-- `∑[(2-n%2)²*a(floor(n/2))]` -/
def P3525524048137172583.Spec : Prop :=
  ∀ n, P3525524048137172583.a n = A268527 (n + 1)

end A268527

/-! ## A268527.P416948653988312374

`∑[4*a(floor(n/(xor(n, n+1)+1)))]` with `a(0)=1`
-/

namespace A268527.P416948653988312374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  4 * f1 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268527.P416948653988312374

namespace A268527

/-- `∑[4*a(floor(n/(xor(n, n+1)+1)))]` -/
def P416948653988312374.Spec : Prop :=
  ∀ n, (P416948653988312374.a n : ℤ) = A268527 (n + 1)

end A268527

/-! ## A268527.P2962171169186626931

`∑[4*a(ceil((n+1)/(xor(n, n+1)+1))-1)]` with `a(0)=1`
-/

namespace A268527.P2962171169186626931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  4 * f1 (⌈(n + 1 : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌉ - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268527.P2962171169186626931

namespace A268527

/-- `∑[4*a(ceil((n+1)/(xor(n, n+1)+1))-1)]` -/
def P2962171169186626931.Spec : Prop :=
  ∀ n, (P2962171169186626931.a n : ℤ) = A268527 (n + 1)

end A268527

/-! ## A268527.P6819487852309433925

`∑[A267584(n)²]`
-/

namespace A268527.P6819487852309433925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267584 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268527.P6819487852309433925

namespace A268527

/-- `∑[A267584(n)²]` -/
def P6819487852309433925.Spec : Prop :=
  ∀ n, P6819487852309433925.a n = A268527 (n + 1)

end A268527

/-! ## A268527.P15413628394983387488

`∑[4^A290251(n)]`
-/

namespace A268527.P15413628394983387488
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A290251 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268527.P15413628394983387488

namespace A268527

/-- `∑[4^A290251(n)]` -/
def P15413628394983387488.Spec : Prop :=
  ∀ n, P15413628394983387488.a n = (A268527 (n + 1) : ℚ)

end A268527

/-! ## A268527.P17394795021033651968

`∑[a(floor(n/2))*A000032((-1)^n+2)]` with `a(0)=1, a(1)=4`
-/

namespace A268527.P17394795021033651968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat * A000032 ((-1) ^ n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268527.P17394795021033651968

namespace A268527

/-- `∑[a(floor(n/2))*A000032((-1)^n+2)]` -/
def P17394795021033651968.Spec : Prop :=
  ∀ n, P17394795021033651968.a n = A268527 (n + 1)

end A268527

/-! ## A268527.P7114840487505574053

`∑[A278531(A073137(n))²]`
-/

namespace A268527.P7114840487505574053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278531 (A073137 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268527.P7114840487505574053

namespace A268527

/-- `∑[A278531(A073137(n))²]` -/
def P7114840487505574053.Spec : Prop :=
  ∀ n, P7114840487505574053.a n = A268527 (n + 1)

end A268527

/-! ## A268527.P15630037569842505531

`∑[A278533(A073138(n))²]`
-/

namespace A268527.P15630037569842505531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278533 (A073138 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268527.P15630037569842505531

namespace A268527

/-- `∑[A278533(A073138(n))²]` -/
def P15630037569842505531.Spec : Prop :=
  ∀ n, P15630037569842505531.a n = A268527 (n + 1)

end A268527

/-! ## A268527.P15672842959258280654

`∑[A000079(A080791(2*n))²]`
-/

namespace A268527.P15672842959258280654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A080791 (2 * n)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268527.P15672842959258280654

namespace A268527

/-- `∑[A000079(A080791(2*n))²]` -/
def P15672842959258280654.Spec : Prop :=
  ∀ n, P15672842959258280654.a n = A268527 (n + 1)

end A268527

/-! ## A268527.P5820009329079336947

`∑[A309074(2*n)]`
-/

namespace A268527.P5820009329079336947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309074 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268527.P5820009329079336947

namespace A268527

/-- `∑[A309074(2*n)]` -/
def P5820009329079336947.Spec : Prop :=
  ∀ n, P5820009329079336947.a n = A268527 (n + 1)

end A268527

/-! ## A268527.P5137556899789918663

`∑[A080100(2*n)²]`
-/

namespace A268527.P5137556899789918663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268527.P5137556899789918663

namespace A268527

/-- `∑[A080100(2*n)²]` -/
def P5137556899789918663.Spec : Prop :=
  ∀ n, P5137556899789918663.a n = A268527 (n + 1)

end A268527

/-! ## A268527.P13393572111712064432

`∑[A011782(A008687(2*n+1))²]`
-/

namespace A268527.P13393572111712064432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A008687 (2 * n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268527.P13393572111712064432

namespace A268527

/-- `∑[A011782(A008687(2*n+1))²]` -/
def P13393572111712064432.Spec : Prop :=
  ∀ n, P13393572111712064432.a n = A268527 (n + 1)

end A268527

/-! ## A268527.P856121973493200126

`∑[A048896(A036044(2*n))²]`
-/

namespace A268527.P856121973493200126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (A036044 (2 * n)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268527.P856121973493200126

namespace A268527

/-- `∑[A048896(A036044(2*n))²]` -/
def P856121973493200126.Spec : Prop :=
  ∀ n, P856121973493200126.a n = A268527 (n + 1)

end A268527

/-! ## A268527.P16068100343356656302

`∑[A267584(n*A267584(n))]`
-/

namespace A268527.P16068100343356656302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267584 ((n : ℤ) * A267584 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268527.P16068100343356656302

namespace A268527

/-- `∑[A267584(n*A267584(n))]` -/
def P16068100343356656302.Spec : Prop :=
  ∀ n, P16068100343356656302.a n = A268527 (n + 1)

end A268527

/-!
# A268529: Records in A268642.

The programs for A268529, there is no canonical definition to state claims against.
-/

/-! ## A268529.P5145586513823368652

`record[A268642(n+1)]`
-/

namespace A268529.P5145586513823368652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268529.P5145586513823368652

/-! ## A268529.P12166186145877001655

`A268642(A268530(n+1))`
-/

namespace A268529.P12166186145877001655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268642 (A268530 (n + 1)).toNat

end

end A268529.P12166186145877001655

/-! ## A268529.P8577913773257627089

`A162845(∪[A162855(3*(n+1)), A162849(n+1)])`
-/

namespace A268529.P8577913773257627089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162855 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162849 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162845 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A268529.P8577913773257627089

/-!
# A268530: Positions of records in A268642.

The programs for A268530, there is no canonical definition to state claims against.
-/

/-! ## A268530.P5598336849214187447

`A268531(A268529(n+1))`
-/

namespace A268530.P5598336849214187447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268531 (A268529 (n + 1)).toNat

end

end A268530.P5598336849214187447

/-! ## A268530.P6843468112821389106

`A268531(record[A268642(n+1)])`
-/

namespace A268530.P6843468112821389106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268531 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A268530.P6843468112821389106

/-!
# A268532: Decimal representation of permutations of lengths 1, 2, 3, ... arranged first by number of inversions and then lexicographically.

The programs for A268532, there is no canonical definition to state claims against.
-/

/-! ## A268532.P13004959287937162228

`A352991(∑[A218530(n)^A218530(n)])`
-/

namespace A268532.P13004959287937162228
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218530 n : ℚ) ^ (A218530 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352991 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A268532.P13004959287937162228

/-! ## A268532.P2126976432657506465

`record[A352991(n+1)/A264173(A218530(n))]`
-/

namespace A268532.P2126976432657506465
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352991 (n + 1) : ℚ) / (A264173 (A218530 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268532.P2126976432657506465

/-!
# A268534: Size of free Kleene algebra on n generators.

The programs for A268534, there is no canonical definition to state claims against.
-/

/-! ## A268534.P14768467800182973287

`A007154(n)+2`
-/

namespace A268534.P14768467800182973287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007154 n + 2

end

end A268534.P14768467800182973287

/-!
# A268535: Number of solutions to Nickerson variant of Langford (or Langford-Skolem) problem, as n runs through the positive numbers congruent to 0 or 1 mod 4.

The programs for A268535, there is no canonical definition to state claims against.
-/

/-! ## A268535.P13650521108420668625

`record[A059106(n+1)]`
-/

namespace A268535.P13650521108420668625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268535.P13650521108420668625

/-! ## A268535.P5214560692479272159

`record[ceil(A004075(n+1)/2)]`
-/

namespace A268535.P5214560692479272159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004075 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268535.P5214560692479272159

/-! ## A268535.P17839231766372650573

`A059106(A014601(n)+1)`
-/

namespace A268535.P17839231766372650573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059106 (A014601 n + 1).toNat

end

end A268535.P17839231766372650573

/-! ## A268535.P18189926422079345670

`A059106(A042948(n+1))`
-/

namespace A268535.P18189926422079345670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059106 (A042948 (n + 1)).toNat

end

end A268535.P18189926422079345670

/-! ## A268535.P6101408115188740114

`A059106(∑[ratio[A108411(n)]])`
-/

namespace A268535.P6101408115188740114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059106 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A268535.P6101408115188740114

/-!
# A268536: The number of permutations of {1,2,...,n,1,2,...,n} with the property that there are k numbers between the two k's in the set for k=1,...,n, as n runs through the positive integers congruent to -1 or 0 mod 4.

The programs for A268536, there is no canonical definition to state claims against.
-/

/-! ## A268536.P1631621227303284333

`2*A192289(n+1)`
-/

namespace A268536.P1631621227303284333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192289 (n + 1)

end

end A268536.P1631621227303284333

/-! ## A268536.P17698069314857450760

`A176127(record[A092486(n)])`
-/

namespace A268536.P17698069314857450760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176127 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A268536.P17698069314857450760

/-! ## A268536.P13622513761411808286

`A176127(A014601(n+1))`
-/

namespace A268536.P13622513761411808286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176127 (A014601 (n + 1)).toNat

end

end A268536.P13622513761411808286

/-! ## A268536.P2712551863247153915

`A176127(A154708(n+1))`
-/

namespace A268536.P2712551863247153915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176127 (A154708 (n + 1)).toNat

end

end A268536.P2712551863247153915

/-! ## A268536.P2238229673274512042

`A176127(A042948(n)+3)`
-/

namespace A268536.P2238229673274512042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176127 (A042948 n + 3).toNat

end

end A268536.P2238229673274512042

/-!
# A268537: Number of Skolem sequences of order n, as n runs through the positive integers congruent to 0 and 1 mod 4.

The programs for A268537, there is no canonical definition to state claims against.
-/

/-! ## A268537.P10072951999234682270

`A004075(A042948(n+1))`
-/

namespace A268537.P10072951999234682270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004075 (A042948 (n + 1)).toNat

end

end A268537.P10072951999234682270

/-! ## A268537.P12065021491638268484

`record[A004075(n+1)]`
-/

namespace A268537.P12065021491638268484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268537.P12065021491638268484

/-! ## A268537.P7781086919144589445

`A004075(A014601(n)+1)`
-/

namespace A268537.P7781086919144589445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004075 (A014601 n + 1).toNat

end

end A268537.P7781086919144589445

/-! ## A268537.P7314829829132974766

`A004075(lt[A004075(n+2), n])`
-/

namespace A268537.P7314829829132974766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004075 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004075 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A268537.P7314829829132974766

/-! ## A268537.P988822526069338908

`A004075(2*n+1)+A004075(2*(n+1))`
-/

namespace A268537.P988822526069338908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004075 (2 * n + 1) + A004075 (2 * (n + 1))

end

end A268537.P988822526069338908

/-!
# A268538: a(n) is the n-th prime 3-dimensional Catalan number.

The programs for A268538, there is no canonical definition to state claims against.
-/

/-! ## A268538.P12178255501066808276

`A008621(∑[A182954(n)])`
-/

namespace A268538.P12178255501066808276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A268538.P12178255501066808276

/-! ## A268538.P7858746618048706041

`A110655(∑[A182954(n)])`
-/

namespace A268538.P7858746618048706041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A268538.P7858746618048706041

/-!
# A268539: Numbers k such that 48*k + 25 is a perfect square.

The programs for A268539, the canonical program `A268539.P8998916302961426006` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268539 has offset 1).

The definition of A268539 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268539.P8998916302961426006

`(3*n*(n+1)+(2*(n+1)-1)*(-1)^((n-1)*n/2)-1)/4`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A268539

/-- `(3*n*(n+1)+(2*(n+1)-1)*(-1)^((n-1)*n/2)-1)/4` -/
def P8998916302961426006.Spec : Prop :=
  ∀ n, P8998916302961426006.a n = (A268539 (n + 1) : ℝ)

end A268539

/-! ## A268539.P16654826166097162480

`floor((C(or(2, n), 2)+n²+n)/2)`
-/

namespace A268539.P16654826166097162480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (Nat.lor 2 n) 2 + (n ^ 2 + n) : ℚ) / 2⌋

end

end A268539.P16654826166097162480

namespace A268539

/-- `floor((C(or(2, n), 2)+n²+n)/2)` -/
def P16654826166097162480.Spec : Prop :=
  ∀ n, P16654826166097162480.a n = A268539 (n + 1)

end A268539

/-! ## A268539.P10806032836202474711

`∑[3*n]-C(and(3*(n+1), -3), 2)/6`
-/

namespace A268539.P10806032836202474711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (Nat.choose (Int.land (3 * (n + 1) : ℤ) (-3)).toNat 2 : ℚ) / 6

end

end A268539.P10806032836202474711

namespace A268539

/-- `∑[3*n]-C(and(3*(n+1), -3), 2)/6` -/
def P10806032836202474711.Spec : Prop :=
  ∀ n, P10806032836202474711.a n = (A268539 (n + 1) : ℚ)

end A268539

/-! ## A268539.P1053811337363779346

`∑[3*n]-A154293(n+1)`
-/

namespace A268539.P1053811337363779346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A154293 (n + 1)

end

end A268539.P1053811337363779346

namespace A268539

/-- `∑[3*n]-A154293(n+1)` -/
def P1053811337363779346.Spec : Prop :=
  ∀ n, P1053811337363779346.a n = A268539 (n + 1)

end A268539

/-! ## A268539.P10301130939889606213

`A011848(A290562(n+1))+n*A004525(n+1)`
-/

namespace A268539.P10301130939889606213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 (A290562 (n + 1)).toNat + (n : ℤ) * A004525 (n + 1)

end

end A268539.P10301130939889606213

namespace A268539

/-- `A011848(A290562(n+1))+n*A004525(n+1)` -/
def P10301130939889606213.Spec : Prop :=
  ∀ n, P10301130939889606213.a n = A268539 (n + 1)

end A268539

/-! ## A268539.P14192282415252893323

`A014679(A174398(n+1))`
-/

namespace A268539.P14192282415252893323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014679 (A174398 (n + 1)).toNat

end

end A268539.P14192282415252893323

namespace A268539

/-- `A014679(A174398(n+1))` -/
def P14192282415252893323.Spec : Prop :=
  ∀ n, P14192282415252893323.a n = A268539 (n + 1)

end A268539

/-! ## A268539.P159071147394508452

`floor(A067589(n+1)/2)`
-/

namespace A268539.P159071147394508452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A067589 (n + 1) : ℚ) / 2⌋

end

end A268539.P159071147394508452

namespace A268539

/-- `floor(A067589(n+1)/2)` -/
def P159071147394508452.Spec : Prop :=
  ∀ n, P159071147394508452.a n = A268539 (n + 1)

end A268539

/-! ## A268539.P12716266274861920295

`lt[1, A193832(2*(n+1))/A193832(2*n+1)]`
-/

namespace A268539.P12716266274861920295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193832 (2 * (n + 1)) : ℚ) / (A193832 (2 * n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A268539.P12716266274861920295

namespace A268539

/-- `lt[1, A193832(2*(n+1))/A193832(2*n+1)]` -/
def P12716266274861920295.Spec : Prop :=
  ∀ n, (P12716266274861920295.a n : ℤ) = A268539 (n + 1)

end A268539

/-! ## A268539.P5016511748033918830

`eq[1, A263232(2*n)]`
-/

namespace A268539.P5016511748033918830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263232 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268539.P5016511748033918830

namespace A268539

/-- `eq[1, A263232(2*n)]` -/
def P5016511748033918830.Spec : Prop :=
  ∀ n, (P5016511748033918830.a n : ℤ) = A268539 (n + 1)

end A268539

/-!
# A268540: Numbers whose Fouriest transform (see A268236) is 44.

The programs for A268540, there is no canonical definition to state claims against.
-/

/-! ## A268540.P3938541811711101244

`4*(A268541(n+1)+1)`
-/

namespace A268540.P3938541811711101244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A268541 (n + 1) + 1)

end

end A268540.P3938541811711101244

/-! ## A268540.P11106996968726989266

`4*(record[A268237(4*(n+5))]+1)`
-/

namespace A268540.P11106996968726989266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268237 (4 * (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)

end

end A268540.P11106996968726989266

/-! ## A268540.P12941025548022196473

`A192544(A268541(n+1))`
-/

namespace A268540.P12941025548022196473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192544 (A268541 (n + 1)).toNat

end

end A268540.P12941025548022196473

/-! ## A268540.P8100027168229037886

`eq[A225058(n), A268237(n)]`
-/

namespace A268540.P8100027168229037886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225058 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268237 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268540.P8100027168229037886

/-! ## A268540.P12223180220869047227

`A008574(A268541(n+1)+1)`
-/

namespace A268540.P12223180220869047227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A268541 (n + 1) + 1).toNat

end

end A268540.P12223180220869047227

/-! ## A268540.P14311325334982839152

`A008586(A268541(n+1)+1)`
-/

namespace A268540.P14311325334982839152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A268541 (n + 1) + 1).toNat

end

end A268540.P14311325334982839152

/-! ## A268540.P4616214176036424007

`A005843(A005408(A268541(n+1))+1)`
-/

namespace A268540.P4616214176036424007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A005408 (A268541 (n + 1)).toNat + 1).toNat

end

end A268540.P4616214176036424007

/-! ## A268540.P17320767250566234461

`A005843(A005843(A268541(n+1)+1))`
-/

namespace A268540.P17320767250566234461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A005843 (A268541 (n + 1) + 1).toNat).toNat

end

end A268540.P17320767250566234461

/-!
# A268541: Base in which the Fouriest transform of A268540(n) is 44.

The programs for A268541, there is no canonical definition to state claims against.
-/

/-! ## A268541.P8521177764734289966

`A268540(n+1)/4-1`
-/

namespace A268541.P8521177764734289966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268540 (n + 1) : ℚ) / 4 - 1

end

end A268541.P8521177764734289966

/-! ## A268541.P5983221469168486082

`record[A268237(n+19)]`
-/

namespace A268541.P5983221469168486082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268237 (n + 19)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268541.P5983221469168486082

/-! ## A268541.P16901217243731369950

`eq[n, A268237(4*(n+1))]`
-/

namespace A268541.P16901217243731369950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268237 (4 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268541.P16901217243731369950

/-! ## A268541.P3859315172559930157

`A059169(A268540(n+1))`
-/

namespace A268541.P3859315172559930157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A268540 (n + 1)).toNat

end

end A268541.P3859315172559930157

/-! ## A268541.P15542249752222033728

`A025480(A268540(n+1)-3)`
-/

namespace A268541.P15542249752222033728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A268540 (n + 1) - 3).toNat

end

end A268541.P15542249752222033728

/-! ## A268541.P12002080610039381290

`A008621(A268540(n+1)-5)`
-/

namespace A268541.P12002080610039381290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A268540 (n + 1) - 5).toNat

end

end A268541.P12002080610039381290

/-! ## A268541.P4490355545659143554

`A225058(eq[A225058(n), A268237(n)])`
-/

namespace A268541.P4490355545659143554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225058 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268237 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225058 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A268541.P4490355545659143554

/-! ## A268541.P7444182399798758077

`A026741(A026741(A268540(n+1))-2)`
-/

namespace A268541.P7444182399798758077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A026741 (A268540 (n + 1)).toNat - 2).toNat

end

end A268541.P7444182399798758077

/-! ## A268541.P2344765751275142986

`A252463(A252463(A268540(n+1))-2)`
-/

namespace A268541.P2344765751275142986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A252463 (A268540 (n + 1)).toNat - 2).toNat

end

end A268541.P2344765751275142986

/-!
# A268542: The diagonal of the rational function 1/(1 - x - y - x y - x z - y z).

The programs for A268542, there is no canonical definition to state claims against.
-/

/-! ## A268542.P9648836390812731028

`A010848(A269612(n+1)-A080674(n))`
-/

namespace A268542.P9648836390812731028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010848 (A269612 (n + 1) - A080674 n).toNat

end

end A268542.P9648836390812731028

/-!
# A268543: The diagonal of 1/(1 - (y + z + x z + x w + x y w)).

The programs for A268543, there is no canonical definition to state claims against.
-/

/-! ## A268543.P6112214899646710974

`A000984(n)*A114496(n)`
-/

namespace A268543.P6112214899646710974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A114496 n

end

end A268543.P6112214899646710974

/-! ## A268543.P11900335398114693454

`sqrt(A002894(n))*A114496(n)`
-/

namespace A268543.P11900335398114693454
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A002894 n : ℝ) * (A114496 n : ℝ)

end

end A268543.P11900335398114693454

/-! ## A268543.P9304105485766305949

`A114496(n)*A117852(∑[n])`
-/

namespace A268543.P9304105485766305949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114496 n * A117852 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268543.P9304105485766305949

/-! ## A268543.P11860744632566249591

`A001405(2*n)*A114496(n)`
-/

namespace A268543.P11860744632566249591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) * A114496 n

end

end A268543.P11860744632566249591

/-! ## A268543.P16363831637186723503

`A000984(n)*A114188(∑[4*n])`
-/

namespace A268543.P16363831637186723503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A114188 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268543.P16363831637186723503

/-! ## A268543.P1904397930078803220

`A000984(n)*A209414((n+1)²+n²)`
-/

namespace A268543.P1904397930078803220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A209414 ((n + 1) ^ 2 + n ^ 2)

end

end A268543.P1904397930078803220

/-! ## A268543.P17209161158412810865

`A007318(A046092(n))*A114496(n)`
-/

namespace A268543.P17209161158412810865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A046092 n).toNat * A114496 n

end

end A268543.P17209161158412810865

/-! ## A268543.P13034474559989924912

`record[A117852(A001971(n))]*A114496(n)`
-/

namespace A268543.P13034474559989924912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117852 (A001971 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A114496 n

end

end A268543.P13034474559989924912

/-!
# A268545: From the diagonal of 1/(1 - (y + z + x w + x z w + x y w)).

The programs for A268545, there is no canonical definition to state claims against.
-/

/-! ## A268545.P5408913063751888289

`C(2*n, n)*A026000(n)`
-/

namespace A268545.P5408913063751888289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) * A026000 n

end

end A268545.P5408913063751888289

/-! ## A268545.P5641197724446723142

`A000984(n)*A026000(n)`
-/

namespace A268545.P5641197724446723142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A026000 n

end

end A268545.P5641197724446723142

/-! ## A268545.P17570674081371853343

`sqrt(A002894(n))*A026000(n)`
-/

namespace A268545.P17570674081371853343
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A002894 n : ℝ) * (A026000 n : ℝ)

end

end A268545.P17570674081371853343

/-! ## A268545.P8062519335756448464

`record[A126930(n)]*A026000(n)`
-/

namespace A268545.P8062519335756448464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A026000 n

end

end A268545.P8062519335756448464

/-! ## A268545.P17194917599897329389

`A001405(2*n)*A026000(n)`
-/

namespace A268545.P17194917599897329389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) * A026000 n

end

end A268545.P17194917599897329389

/-! ## A268545.P4460769882958455310

`A026000(n)*A126930(2*n)`
-/

namespace A268545.P4460769882958455310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026000 n * A126930 (2 * n)

end

end A268545.P4460769882958455310

/-! ## A268545.P6424361328916810724

`A000984(n)*A056242(A001844(n))`
-/

namespace A268545.P6424361328916810724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A056242 (A001844 n).toNat

end

end A268545.P6424361328916810724

/-! ## A268545.P15767827657357157972

`A007318(A046092(n))*A026000(n)`
-/

namespace A268545.P15767827657357157972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A046092 n).toNat * A026000 n

end

end A268545.P15767827657357157972

/-! ## A268545.P9166695251414730525

`A000984(n)*A117317(A046092(n))`
-/

namespace A268545.P9166695251414730525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A117317 (A046092 n).toNat

end

end A268545.P9166695251414730525

/-! ## A268545.P12605909724346444166

`(n+1)*A000108(n)*A117317(A046092(n))`
-/

namespace A268545.P12605909724346444166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000108 n * A117317 (A046092 n).toNat

end

end A268545.P12605909724346444166

/-!
# A268549: Diagonal of (1 - 9 x y)/((1 - 3 y - 2 x + 3 y^2 + 9 x^2 y) * (1 - u - z) * (1 - v - w)).

The programs for A268549, there is no canonical definition to state claims against.
-/

/-! ## A268549.P5024852071660132229

`C(2*n, n)²*A004987(n)`
-/

namespace A268549.P5024852071660132229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n ^ 2 : ℤ) * A004987 n

end

end A268549.P5024852071660132229

/-! ## A268549.P4357493891166209554

`A002894(n)*A004987(n)`
-/

namespace A268549.P4357493891166209554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002894 n * A004987 n

end

end A268549.P4357493891166209554

/-! ## A268549.P4793350044032548728

`A000984(n)²*A004987(n)`
-/

namespace A268549.P4793350044032548728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n ^ 2 * A004987 n

end

end A268549.P4793350044032548728

/-! ## A268549.P1574896661231648186

`((n+1)*A000108(n))²*A004987(n)`
-/

namespace A268549.P1574896661231648186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A000108 n) ^ 2 * A004987 n

end

end A268549.P1574896661231648186

/-! ## A268549.P2592062175383999412

`A007318(A046092(n))²*A004987(n)`
-/

namespace A268549.P2592062175383999412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A046092 n).toNat ^ 2 * A004987 n

end

end A268549.P2592062175383999412

/-!
# A268553: Diagonal of the rational function 1/((1 - u v - u w - v w) * (1 - x y - x z - y z)).

The programs for A268553, the canonical program `A268553.P1174429533030880570` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268553 has offset 0).

The definition of A268553 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268553.P1174429533030880570

`A006480(n)²`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A268553

/-- `A006480(n)²` -/
def P1174429533030880570.Spec : Prop :=
  ∀ n, P1174429533030880570.a n = A268553 n

theorem P1174429533030880570.correct : P1174429533030880570.Spec := by
  intro n
  simp only [A268553]

end A268553

/-! ## A268553.P14342129399643090694

`(C(2*n, n)*C(3*n, n))²`
-/

namespace A268553.P14342129399643090694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n * Nat.choose (3 * n) n) ^ 2

end

end A268553.P14342129399643090694

namespace A268553

/-- `(C(2*n, n)*C(3*n, n))²` -/
def P14342129399643090694.Spec : Prop :=
  ∀ n, (P14342129399643090694.a n : ℤ) = A268553 n

end A268553

/-! ## A268553.P2797994887626369868

`(C(2*n, n)*C(3*n, n))^2`
-/

namespace A268553.P2797994887626369868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n * Nat.choose (3 * n) n) ^ 2

end

end A268553.P2797994887626369868

namespace A268553

/-- `(C(2*n, n)*C(3*n, n))^2` -/
def P2797994887626369868.Spec : Prop :=
  ∀ n, (P2797994887626369868.a n : ℤ) = A268553 n

end A268553

/-! ## A268553.P5323915017873582481

`A318107(∑[n])²`
-/

namespace A268553.P5323915017873582481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318107 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A268553.P5323915017873582481

namespace A268553

/-- `A318107(∑[n])²` -/
def P5323915017873582481.Spec : Prop :=
  ∀ n, P5323915017873582481.a n = A268553 n

end A268553

/-! ## A268553.P2133465048903692654

`A320824(∑[n])²`
-/

namespace A268553.P2133465048903692654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320824 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A268553.P2133465048903692654

namespace A268553

/-- `A320824(∑[n])²` -/
def P2133465048903692654.Spec : Prop :=
  ∀ n, P2133465048903692654.a n = A268553 n

end A268553

/-!
# A268554: Diagonal of the rational function 1/((1 - w - u v) * (1 - x y - x z - y z)).

The programs for A268554, the canonical program `A268554.P12438937793262761339` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268554 has offset 0).

The definition of A268554 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268554.P12438937793262761339

`C(4*n, 2*n)*C(3*n, n)*C(2*n, n)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A268554

/-- `C(4*n, 2*n)*C(3*n, n)*C(2*n, n)` -/
def P12438937793262761339.Spec : Prop :=
  ∀ n, (P12438937793262761339.a n : ℤ) = A268554 n

theorem P12438937793262761339.correct : P12438937793262761339.Spec := by
  intro n
  simp only [A268554]

end A268554

/-! ## A268554.P1033443428755254523

`C(3*n, n)²*C(4*n, n)`
-/

namespace A268554.P1033443428755254523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n) n ^ 2 * Nat.choose (4 * n) n

end

end A268554.P1033443428755254523

namespace A268554

/-- `C(3*n, n)²*C(4*n, n)` -/
def P1033443428755254523.Spec : Prop :=
  ∀ n, (P1033443428755254523.a n : ℤ) = A268554 n

end A268554

/-! ## A268554.P12507036984184282539

`C(3*n, n)*C(4*n, n)*A005809(n)`
-/

namespace A268554.P12507036984184282539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) n * Nat.choose (4 * n) n : ℤ) * A005809 n

end

end A268554.P12507036984184282539

namespace A268554

/-- `C(3*n, n)*C(4*n, n)*A005809(n)` -/
def P12507036984184282539.Spec : Prop :=
  ∀ n, P12507036984184282539.a n = A268554 n

end A268554

/-! ## A268554.P4857771186710123382

`C(2*n, n)*C(3*n, n)*A000984(2*n)`
-/

namespace A268554.P4857771186710123382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n * Nat.choose (3 * n) n : ℤ) * A000984 (2 * n)

end

end A268554.P4857771186710123382

namespace A268554

/-- `C(2*n, n)*C(3*n, n)*A000984(2*n)` -/
def P4857771186710123382.Spec : Prop :=
  ∀ n, P4857771186710123382.a n = A268554 n

end A268554

/-! ## A268554.P11631895818974256855

`A000897(n)*A005809(n)`
-/

namespace A268554.P11631895818974256855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000897 n * A005809 n

end

end A268554.P11631895818974256855

namespace A268554

/-- `A000897(n)*A005809(n)` -/
def P11631895818974256855.Spec : Prop :=
  ∀ n, P11631895818974256855.a n = A268554 n

end A268554

/-!
# A268555: Diagonal of the rational function of six variables 1/((1 - w - u v - u v w) * (1 - z - x y)).

The programs for A268555, the canonical program `A268555.P8235004269466494055` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268555 has offset 0).

The definition of A268555 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268555.P8235004269466494055

`A000984(n)*A001850(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A268555

/-- `A000984(n)*A001850(n)` -/
def P8235004269466494055.Spec : Prop :=
  ∀ n, P8235004269466494055.a n = A268555 n

theorem P8235004269466494055.correct : P8235004269466494055.Spec := by
  intro n
  simp only [A268555]

end A268555

/-! ## A268555.P3788695627667142603

`sqrt(A002894(n))*A001850(n)`
-/

namespace A268555.P3788695627667142603
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A002894 n : ℝ) * (A001850 n : ℝ)

end

end A268555.P3788695627667142603

namespace A268555

/-- `sqrt(A002894(n))*A001850(n)` -/
def P3788695627667142603.Spec : Prop :=
  ∀ n, P3788695627667142603.a n = (A268555 n : ℝ)

end A268555

/-! ## A268555.P10536385048836880536

`∑[A110170(n)]*A000984(n)`
-/

namespace A268555.P10536385048836880536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000984 n

end

end A268555.P10536385048836880536

namespace A268555

/-- `∑[A110170(n)]*A000984(n)` -/
def P10536385048836880536.Spec : Prop :=
  ∀ n, P10536385048836880536.a n = A268555 n

end A268555

/-! ## A268555.P10209437584584484057

`record[A126930(n)]*A001850(n)`
-/

namespace A268555.P10209437584584484057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A001850 n

end

end A268555.P10209437584584484057

namespace A268555

/-- `record[A126930(n)]*A001850(n)` -/
def P10209437584584484057.Spec : Prop :=
  ∀ n, P10209437584584484057.a n = A268555 n

end A268555

/-! ## A268555.P4430284493585006385

`A001405(2*n)*A001850(n)`
-/

namespace A268555.P4430284493585006385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) * A001850 n

end

end A268555.P4430284493585006385

namespace A268555

/-- `A001405(2*n)*A001850(n)` -/
def P4430284493585006385.Spec : Prop :=
  ∀ n, P4430284493585006385.a n = A268555 n

end A268555

/-! ## A268555.P7926507180319823361

`A000984(n)*A026003(2*n)`
-/

namespace A268555.P7926507180319823361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A026003 (2 * n)

end

end A268555.P7926507180319823361

namespace A268555

/-- `A000984(n)*A026003(2*n)` -/
def P7926507180319823361.Spec : Prop :=
  ∀ n, P7926507180319823361.a n = A268555 n

end A268555

/-! ## A268555.P13437341344953056301

`A001850(n)*A056040(2*n)`
-/

namespace A268555.P13437341344953056301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 n * A056040 (2 * n)

end

end A268555.P13437341344953056301

namespace A268555

/-- `A001850(n)*A056040(2*n)` -/
def P13437341344953056301.Spec : Prop :=
  ∀ n, P13437341344953056301.a n = A268555 n

end A268555

/-! ## A268555.P1499527234244147223

`A001850(n)*A126869(2*n)`
-/

namespace A268555.P1499527234244147223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 n * A126869 (2 * n)

end

end A268555.P1499527234244147223

namespace A268555

/-- `A001850(n)*A126869(2*n)` -/
def P1499527234244147223.Spec : Prop :=
  ∀ n, P1499527234244147223.a n = A268555 n

end A268555

/-! ## A268555.P14621789083718886023

`A001850(n)*A126930(2*n)`
-/

namespace A268555.P14621789083718886023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 n * A126930 (2 * n)

end

end A268555.P14621789083718886023

namespace A268555

/-- `A001850(n)*A126930(2*n)` -/
def P14621789083718886023.Spec : Prop :=
  ∀ n, P14621789083718886023.a n = A268555 n

end A268555

/-! ## A268555.P17922727754008487172

`A001405(2*n)*A026003(2*n)`
-/

namespace A268555.P17922727754008487172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) * A026003 (2 * n)

end

end A268555.P17922727754008487172

namespace A268555

/-- `A001405(2*n)*A026003(2*n)` -/
def P17922727754008487172.Spec : Prop :=
  ∀ n, P17922727754008487172.a n = A268555 n

end A268555

/-!
# A268556: Number of pairs (tau, sigma) of permutations of a set of size 4*n, where tau (resp. sigma) has only 2-cycles (resp. 4-cycles), up to simultaneous conjugacy.

The programs for A268556, there is no canonical definition to state claims against.
-/

/-! ## A268556.P3956123284908742664

`A256656(A362690(n))+n`
-/

namespace A268556.P3956123284908742664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256656 (A362690 n).toNat + (n : ℤ)

end

end A268556.P3956123284908742664

/-!
# A268557: Number of immersions of unoriented circle into oriented sphere with n labeled double points, where additionally each double point distinguishes one of the 4 half-edges incident to it.

The programs for A268557, there is no canonical definition to state claims against.
-/

/-! ## A268557.P492539091561579990

`A268567(n+1)*4^(n+1)/2`
-/

namespace A268557.P492539091561579990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268567 (n + 1) * (4 ^ (n + 1) : ℤ) : ℚ) / 2

end

end A268557.P492539091561579990

/-! ## A268557.P435399637649585433

`2^n*A268560(n+1)`
-/

namespace A268557.P435399637649585433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A268560 (n + 1)

end

end A268557.P435399637649585433

/-! ## A268557.P17832960544055762364

`A004171(n)*A268567(n+1)`
-/

namespace A268557.P17832960544055762364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n * A268567 (n + 1)

end

end A268557.P17832960544055762364

/-! ## A268557.P15085462614223280394

`Δ[A001045(2*n+1)]*A268567(n+1)`
-/

namespace A268557.P15085462614223280394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A268567 (n + 1)

end

end A268557.P15085462614223280394

/-!
# A268558: Number of not necessarily connected sensed combinatorial maps with n edges.

The programs for A268558, there is no canonical definition to state claims against.
-/

/-! ## A268558.P17201467453731111333

`A191912(a(n-1))-1` with `a(0)=1, a(1)=2`
-/

namespace A268558.P17201467453731111333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A191912 (a (n - 1)).toNat - 1

end

end A268558.P17201467453731111333

/-!
# A268560: Number of bicolored maps defined by immersions of unoriented circle into oriented sphere with n double points with edges labeled 1..2*n such that labels of successive edges along the curve (starting at any edge, going in the direction determined by the coloring) are encountered in pairs of the form {2*m-1, 2*m} (in either order).

The programs for A268560, there is no canonical definition to state claims against.
-/

/-! ## A268560.P5495546551881097976

`A268567(n+1)*2^(n+1)`
-/

namespace A268560.P5495546551881097976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268567 (n + 1) * (2 ^ (n + 1) : ℤ)

end

end A268560.P5495546551881097976

/-! ## A268560.P2811472793306285097

`Δ[A048578(n)]*A268567(n+1)`
-/

namespace A268560.P2811472793306285097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A268567 (n + 1)

end

end A268560.P2811472793306285097

/-! ## A268560.P15967073102533039291

`A000079(n+1)*A268567(n+1)`
-/

namespace A268560.P15967073102533039291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A268567 (n + 1)

end

end A268560.P15967073102533039291

/-! ## A268560.P11735823745157921185

`A011782(n+2)*A268567(n+1)`
-/

namespace A268560.P11735823745157921185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 2) * A268567 (n + 1)

end

end A268560.P11735823745157921185

/-! ## A268560.P16428187883096411690

`record[A090988(n+1)]*A268567(n+1)`
-/

namespace A268560.P16428187883096411690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A268567 (n + 1)

end

end A268560.P16428187883096411690

/-!
# A268561: Number of bicolored immersions of unoriented circle into oriented sphere with n double points.

The programs for A268561, there is no canonical definition to state claims against.
-/

/-! ## A268561.P16847625630073224900

`A215820(A022553(n))+n`
-/

namespace A268561.P16847625630073224900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215820 (A022553 n).toNat + (n : ℤ)

end

end A268561.P16847625630073224900

/-! ## A268561.P6744829063003803107

`A170898(A259352(n+1))+n`
-/

namespace A268561.P6744829063003803107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170898 (A259352 (n + 1)).toNat + (n : ℤ)

end

end A268561.P6744829063003803107

/-!
# A268562: Number of bicolored immersions of oriented circle into oriented surface with n double points, up to stable geotopy.

The programs for A268562, there is no canonical definition to state claims against.
-/

/-! ## A268562.P17645005659526944396

`A162330(A002720(n)+n)`
-/

namespace A268562.P17645005659526944396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162330 (A002720 n + (n : ℤ)).toNat

end

end A268562.P17645005659526944396

/-!
# A268563: Number of immersions of unoriented circle into oriented sphere with 2n double points such that two different choices of orientation of the circle are related by geotopy.

The programs for A268563, there is no canonical definition to state claims against.
-/

/-! ## A268563.P12953969958128659439

`2*A008987(2*n)-A008986(2*n)`
-/

namespace A268563.P12953969958128659439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008987 (2 * n) - A008986 (2 * n)

end

end A268563.P12953969958128659439

/-! ## A268563.P4575040062124087920

`ceil(A373325(n)/2)`
-/

namespace A268563.P4575040062124087920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A373325 n : ℚ) / 2⌉

end

end A268563.P4575040062124087920

/-! ## A268563.P10350765468270319789

`A373325(A028310(n))/2`
-/

namespace A268563.P10350765468270319789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373325 (A028310 n).toNat : ℚ) / 2

end

end A268563.P10350765468270319789

/-! ## A268563.P14519964191068905027

`A373325(n)/(A057427(n)+1)`
-/

namespace A268563.P14519964191068905027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373325 n : ℚ) / (A057427 n + 1 : ℚ)

end

end A268563.P14519964191068905027

/-!
# A268564: Number of immersions of unoriented circle into oriented sphere with 2n double points such that two different choices of orientation of the circle are not related by geotopy.

The programs for A268564, there is no canonical definition to state claims against.
-/

/-! ## A268564.P11387121131077149717

`A008986(2*n)-A008987(2*n)`
-/

namespace A268564.P11387121131077149717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008986 (2 * n) - A008987 (2 * n)

end

end A268564.P11387121131077149717

/-! ## A268564.P1199608786047077457

`record[A268561(n)%A008987(n)]`
-/

namespace A268564.P1199608786047077457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268561 n) (A008987 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268564.P1199608786047077457

/-!
# A268565: Number of achiral immersions of oriented circle into oriented sphere with 2n double points.

The programs for A268565, there is no canonical definition to state claims against.
-/

/-! ## A268565.P17114981132373641665

`2*A008988(2*n)-A008986(2*n)`
-/

namespace A268565.P17114981132373641665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008988 (2 * n) - A008986 (2 * n)

end

end A268565.P17114981132373641665

/-! ## A268565.P17878361246634728249

`A097621(A001423(n))-A334950(n)`
-/

namespace A268565.P17878361246634728249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097621 (A001423 n).toNat - A334950 n

end

end A268565.P17878361246634728249

/-!
# A268566: Number of chiral immersions of oriented circle into oriented sphere with 2n double points.

The programs for A268566, there is no canonical definition to state claims against.
-/

/-! ## A268566.P15204616101085533530

`A008986(2*n)-A008988(2*n)`
-/

namespace A268566.P15204616101085533530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008986 (2 * n) - A008988 (2 * n)

end

end A268566.P15204616101085533530

/-!
# A268567: Number of immersions of oriented circle into oriented sphere with n labeled double points.

The programs for A268567, there is no canonical definition to state claims against.
-/

/-! ## A268567.P12916415748421418724

`A054993(n+1)*n!/2`
-/

namespace A268567.P12916415748421418724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054993 (n + 1) * (Nat.factorial n : ℤ) : ℚ) / 2

end

end A268567.P12916415748421418724

/-! ## A268567.P16992978874933181335

`A268560(n+1)/A000079(n+1)`
-/

namespace A268567.P16992978874933181335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268560 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A268567.P16992978874933181335

/-! ## A268567.P14115822839883732140

`A268560(n+1)/record[A090988(n+1)]`
-/

namespace A268567.P14115822839883732140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090988 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268560 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A268567.P14115822839883732140

/-! ## A268567.P6128608977958981925

`A268560(n+1)/A005843(A000079(n))`
-/

namespace A268567.P6128608977958981925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268560 (n + 1) : ℚ) / (A005843 (A000079 n).toNat : ℚ)

end

end A268567.P6128608977958981925

/-! ## A268567.P14640899148275652279

`A268560(n+1)/record[A006519(2*(n+1))]`
-/

namespace A268567.P14640899148275652279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268560 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A268567.P14640899148275652279

/-!
# A268568: Number of immersions of oriented circle into oriented sphere with n double points and no simple loop.

The programs for A268568, there is no canonical definition to state claims against.
-/

/-! ## A268568.P13962774845942572514

`A373075(A001976(n+1))`
-/

namespace A268568.P13962774845942572514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373075 (A001976 (n + 1)).toNat

end

end A268568.P13962774845942572514

/-! ## A268568.P9002522168687913568

`A373076(2*A373080(n))`
-/

namespace A268568.P9002522168687913568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373076 (2 * A373080 n).toNat

end

end A268568.P9002522168687913568

/-! ## A268568.P17107406840087124297

`A065716(A005248(n)+A003319(n))`
-/

namespace A268568.P17107406840087124297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065716 (A005248 n + A003319 n).toNat

end

end A268568.P17107406840087124297

/-! ## A268568.P15246271664176813842

`∑[A088931(A229167(n)-A007302(n))]`
-/

namespace A268568.P15246271664176813842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088931 (A229167 n - A007302 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268568.P15246271664176813842

/-!
# A268570: Number of immersions of oriented circle into unoriented sphere with n double points and no simple loop.

The programs for A268570, there is no canonical definition to state claims against.
-/

/-! ## A268570.P197833203019340026

`floor(A091066(A056325(n)+2)/9)`
-/

namespace A268570.P197833203019340026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A091066 (A056325 n + 2).toNat : ℚ) / 9⌋

end

end A268570.P197833203019340026

/-! ## A268570.P10479510852048991889

`A008616(A115276(n)+A002266(n))`
-/

namespace A268570.P10479510852048991889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A115276 n + A002266 n).toNat

end

end A268570.P10479510852048991889

/-! ## A268570.P4089887230488729039

`A008616(or(A072645(n), A115276(n)))`
-/

namespace A268570.P4089887230488729039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (Int.lor (A072645 n) (A115276 n)).toNat

end

end A268570.P4089887230488729039

/-! ## A268570.P11355299364132176150

`A008616(or(A103627(n), A115276(n)))`
-/

namespace A268570.P11355299364132176150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (Int.lor (A103627 n) (A115276 n)).toNat

end

end A268570.P11355299364132176150

/-! ## A268570.P9884588134018173412

`A008616(xor(A002266(n), A115276(n)))`
-/

namespace A268570.P9884588134018173412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (Int.xor (A002266 n) (A115276 n)).toNat

end

end A268570.P9884588134018173412

/-!
# A268571: Number of immersions of unoriented circle into unoriented sphere with n double points and no simple loop.

The programs for A268571, there is no canonical definition to state claims against.
-/

/-! ## A268571.P15069651650460020782

`A008618(A148726(n)+6)`
-/

namespace A268571.P15069651650460020782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A148726 n + 6).toNat

end

end A268571.P15069651650460020782

/-! ## A268571.P2739533242686057946

`A036541(∑[A000041(C(n, 2))])`
-/

namespace A268571.P2739533242686057946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036541 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A268571.P2739533242686057946

/-! ## A268571.P18069259576212068051

`∑[∑[A323927(n+1)]-A116634(n)]`
-/

namespace A268571.P18069259576212068051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323927 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A116634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268571.P18069259576212068051

/-! ## A268571.P18172244554304700725

`A126205(A050197(3*n+2)+A050181(n))`
-/

namespace A268571.P18172244554304700725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126205 (A050197 (3 * n + 2) + A050181 n).toNat

end

end A268571.P18172244554304700725

/-!
# A268572: Number of bicolored immersions of unoriented circle into oriented sphere with n double points and no simple loop.

The programs for A268572, there is no canonical definition to state claims against.
-/

/-! ## A268572.P14534816340992571593

`A065719(A199923(n)+A028983(n+4))`
-/

namespace A268572.P14534816340992571593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065719 (A199923 n + A028983 (n + 4)).toNat

end

end A268572.P14534816340992571593

/-!
# A268577: Numbers m such that 3*m^2-5 is a prime.

The programs for A268577, there is no canonical definition to state claims against.
-/

/-! ## A268577.P10292809076602720040

`ceil(sqrt(A201717(n+1)/3))`
-/

namespace A268577.P10292809076602720040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A201717 (n + 1) : ℚ) / 3 : ℝ)⌉

end

end A268577.P10292809076602720040

/-! ## A268577.P11134630423829681562

`round(sqrt(A201717(n+1)/3))%A017104(n)`
-/

namespace A268577.P11134630423829681562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt ((A201717 (n + 1) : ℚ) / 3 : ℝ))) (A017104 n)

end

end A268577.P11134630423829681562

/-! ## A268577.P10034027342028461039

`round(A033999(n)²*sqrt(A201717(n+1)/3))`
-/

namespace A268577.P10034027342028461039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A033999 n ^ 2 : ℝ) * Real.sqrt ((A201717 (n + 1) : ℚ) / 3 : ℝ))

end

end A268577.P10034027342028461039

/-! ## A268577.P3598092204392671730

`A028310(round(sqrt(A201717(n+1)/3)))`
-/

namespace A268577.P3598092204392671730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway (Real.sqrt ((A201717 (n + 1) : ℚ) / 3 : ℝ))).toNat

end

end A268577.P3598092204392671730

/-! ## A268577.P5192925883230275038

`round(sqrt(A201717(n+1)/3)*A014963(32*n+14))`
-/

namespace A268577.P5192925883230275038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A201717 (n + 1) : ℚ) / 3 : ℝ) * (A014963 (32 * n + 14) : ℝ))

end

end A268577.P5192925883230275038

/-!
# A268578: Numbers n such that n+2, n+4, n+6, n+8, n+10, n+12 and n+14 are all semiprimes.

The programs for A268578, there is no canonical definition to state claims against.
-/

/-! ## A268578.P11934368136273438389

`A092129(n+1)-2`
-/

namespace A268578.P11934368136273438389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092129 (n + 1) - 2

end

end A268578.P11934368136273438389

/-! ## A268578.P5049155256248529088

`A118824(2*n+1)+A092129(n+1)`
-/

namespace A268578.P5049155256248529088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118824 (2 * n + 1) + A092129 (n + 1)

end

end A268578.P5049155256248529088

/-! ## A268578.P15093222050426614201

`A092129(n+1)+A001489(n+2)+n`
-/

namespace A268578.P15093222050426614201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092129 (n + 1) + A001489 (n + 2) + (n : ℤ)

end

end A268578.P15093222050426614201

/-! ## A268578.P5091823171872613705

`A226177(A000040(n+1))+A092129(n+1)`
-/

namespace A268578.P5091823171872613705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226177 (A000040 (n + 1)).toNat + A092129 (n + 1)

end

end A268578.P5091823171872613705

/-!
# A268579: Expansion of (1 + 6*x + x^2 + 12*x^3 - 2*x^4)/((1 - x)^4*(1 + x)^3).

The programs for A268579, the canonical program `A268579.P6602055046072878994` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268579 has offset 0).

The definition of A268579 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+6x+x^2+12x^3-2x^4)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))` (program `A268579.P6602055046072878994`, by `A268579.P6602055046072878994.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A268579.P6602055046072878994

`ogf((1+6x+x^2+12x^3-2x^4)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A268579

/-- `ogf((1+6x+x^2+12x^3-2x^4)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))` -/
def P6602055046072878994.Spec : Prop :=
  ∀ n, P6602055046072878994.a n = A268579 n

theorem P6602055046072878994.correct : P6602055046072878994.Spec := by
  intro n
  simp only [A268579]

end A268579

/-! ## A268579.P7243601401784214145

`A319258(∑[and(1, n)+1])`
-/

namespace A268579.P7243601401784214145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319258 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268579.P7243601401784214145

namespace A268579

/-- `A319258(∑[and(1, n)+1])` -/
def P7243601401784214145.Spec : Prop :=
  ∀ n, P7243601401784214145.a n = A268579 n

end A268579

/-! ## A268579.P3374573836594639948

`A319258(∑[(2*and(1, n))!])`
-/

namespace A268579.P3374573836594639948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319258 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268579.P3374573836594639948

namespace A268579

/-- `A319258(∑[(2*and(1, n))!])` -/
def P3374573836594639948.Spec : Prop :=
  ∀ n, P3374573836594639948.a n = A268579 n

end A268579

/-! ## A268579.P14232767300805881673

`A319258(∑[6/gcd(2, n)]/3)`
-/

namespace A268579.P14232767300805881673
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 / (Nat.gcd 2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319258 (SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j) / 3)).toNat

end

end A268579.P14232767300805881673

namespace A268579

/-- `A319258(∑[6/gcd(2, n)]/3)` -/
def P14232767300805881673.Spec : Prop :=
  ∀ n, P14232767300805881673.a n = A268579 n

end A268579

/-! ## A268579.P10615922798394703982

`A319258(A032766(n+1))`
-/

namespace A268579.P10615922798394703982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319258 (A032766 (n + 1)).toNat

end

end A268579.P10615922798394703982

namespace A268579

/-- `A319258(A032766(n+1))` -/
def P10615922798394703982.Spec : Prop :=
  ∀ n, P10615922798394703982.a n = A268579 n

end A268579

/-! ## A268579.P18043685888382201115

`∑[A129889(3*n+2)]`
-/

namespace A268579.P18043685888382201115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129889 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268579.P18043685888382201115

namespace A268579

/-- `∑[A129889(3*n+2)]` -/
def P18043685888382201115.Spec : Prop :=
  ∀ n, P18043685888382201115.a n = A268579 n

end A268579

/-! ## A268579.P6415284610880404587

`∑[A175781(A102214(n))]`
-/

namespace A268579.P6415284610880404587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175781 (A102214 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268579.P6415284610880404587

namespace A268579

/-- `∑[A175781(A102214(n))]` -/
def P6415284610880404587.Spec : Prop :=
  ∀ n, P6415284610880404587.a n = A268579 n

end A268579

/-!
# A268581: a(n) = 2*n^2 + 8*n + 5.

The programs for A268581, the canonical program `A268581.P13764220029622230360` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268581 has offset 0).

The definition of A268581 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n²+8*n+5` (program `A268581.P13764220029622230360`, by `A268581.P13764220029622230360.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A268581.P3442184943736798482

`2*(n+2)²-3`
-/

namespace A268581.P3442184943736798482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) ^ 2 : ℤ) - 3

end

end A268581.P3442184943736798482

namespace A268581

/-- `2*(n+2)²-3` -/
def P3442184943736798482.Spec : Prop :=
  ∀ n, P3442184943736798482.a n = A268581 n

theorem P3442184943736798482.correct : P3442184943736798482.Spec := by
  intro n
  simp only [A268581, Nat.add_sub_cancel, A268581.P3442184943736798482.a, A268581.P13764220029622230360.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A268581

/-! ## A268581.P13764220029622230360

`2*n²+8*n+5`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A268581

/-- `2*n²+8*n+5` -/
def P13764220029622230360.Spec : Prop :=
  ∀ n, (P13764220029622230360.a n : ℤ) = A268581 n

theorem P13764220029622230360.correct : P13764220029622230360.Spec := by
  intro n
  simp only [A268581]

end A268581

/-! ## A268581.P7488823412521364270

`∑[a(n-1)+4]` with `a(0)=5, a(1)=10`
-/

namespace A268581.P7488823412521364270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 10] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268581.P7488823412521364270

namespace A268581

/-- `∑[a(n-1)+4]` -/
def P7488823412521364270.Spec : Prop :=
  ∀ n, (P7488823412521364270.a n : ℤ) = A268581 n

end A268581

/-! ## A268581.P11528449087434401855

`or(5, 2*n*(n+4))`
-/

namespace A268581.P11528449087434401855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 (2 * (n * (n + 4)))

end

end A268581.P11528449087434401855

namespace A268581

/-- `or(5, 2*n*(n+4))` -/
def P11528449087434401855.Spec : Prop :=
  ∀ n, (P11528449087434401855.a n : ℤ) = A268581 n

end A268581

/-! ## A268581.P3673465884571306134

`xor(5, 2*n*(n+4))`
-/

namespace A268581.P3673465884571306134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 5 (2 * (n * (n + 4)))

end

end A268581.P3673465884571306134

namespace A268581

/-- `xor(5, 2*n*(n+4))` -/
def P3673465884571306134.Spec : Prop :=
  ∀ n, (P3673465884571306134.a n : ℤ) = A268581 n

end A268581

/-! ## A268581.P13087178862333240189

`record[2*(2-n)²-3]`
-/

namespace A268581.P13087178862333240189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 - (n : ℤ)) ^ 2 - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268581.P13087178862333240189

namespace A268581

/-- `record[2*(2-n)²-3]` -/
def P13087178862333240189.Spec : Prop :=
  ∀ n, P13087178862333240189.a n = A268581 n

end A268581

/-! ## A268581.P14968835636321413494

`∑[record[xor(3, n+1)+3]]`
-/

namespace A268581.P14968835636321413494
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n + 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268581.P14968835636321413494

namespace A268581

/-- `∑[record[xor(3, n+1)+3]]` -/
def P14968835636321413494.Spec : Prop :=
  ∀ n, (P14968835636321413494.a n : ℤ) = A268581 n

end A268581

/-! ## A268581.P18397962296442268743

`∑[ogf((5-x^2)/(1-2x+x^2))]`
-/

namespace A268581.P18397962296442268743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 0, -1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268581.P18397962296442268743

namespace A268581

/-- `∑[ogf((5-x^2)/(1-2x+x^2))]` -/
def P18397962296442268743.Spec : Prop :=
  ∀ n, P18397962296442268743.a n = A268581 n

end A268581

/-! ## A268581.P1759589442137684091

`ogf((5-x^2)/(1-3x+3x^2-x^3))`
-/

namespace A268581.P1759589442137684091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 0, -1] [1, -3, 3, -1] n

end

end A268581.P1759589442137684091

namespace A268581

/-- `ogf((5-x^2)/(1-3x+3x^2-x^3))` -/
def P1759589442137684091.Spec : Prop :=
  ∀ n, P1759589442137684091.a n = A268581 n

end A268581

/-! ## A268581.P12168747973958197735

`floor(n-∑[a(n-1)-4])` with `a(0)=-5`

`floor` is left out, it is the identity on integers.
-/

namespace A268581.P12168747973958197735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-5] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268581.P12168747973958197735

namespace A268581

/-- `floor(n-∑[a(n-1)-4])` -/
def P12168747973958197735.Spec : Prop :=
  ∀ n, P12168747973958197735.a n = A268581 n

end A268581

/-! ## A268581.P17137888710304769405

`abs(C(2*(n+2), 2)+n-1)`
-/

namespace A268581.P17137888710304769405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (2 * (n + 2)) 2 : ℤ) + ((n : ℤ) - 1)|

end

end A268581.P17137888710304769405

namespace A268581

/-- `abs(C(2*(n+2), 2)+n-1)` -/
def P17137888710304769405.Spec : Prop :=
  ∀ n, P17137888710304769405.a n = A268581 n

end A268581

/-! ## A268581.P16303049163727770321

`floor(4*n+a(n-1)+6)` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A268581.P16303049163727770321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  4 * n + (a (n - 1) + 6)

end

end A268581.P16303049163727770321

namespace A268581

/-- `floor(4*n+a(n-1)+6)` -/
def P16303049163727770321.Spec : Prop :=
  ∀ n, (P16303049163727770321.a n : ℤ) = A268581 n

theorem P16303049163727770321.correct : P16303049163727770321.Spec := by
  intro n
  induction n with
  | zero => simp [A268581, A268581.P16303049163727770321.a, A268581.P13764220029622230360.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A268581, Nat.add_sub_cancel, A268581.P16303049163727770321.a, A268581.P13764220029622230360.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A268581

/-! ## A268581.P11891920495374641644

`Δ[C((n+1)²+n, 2)]/(n+2)`
-/

namespace A268581.P11891920495374641644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1) ^ 2 + n) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (n + 2 : ℚ)

end

end A268581.P11891920495374641644

namespace A268581

/-- `Δ[C((n+1)²+n, 2)]/(n+2)` -/
def P11891920495374641644.Spec : Prop :=
  ∀ n, P11891920495374641644.a n = (A268581 n : ℚ)

end A268581

/-! ## A268581.P10312145137174371393

`∑{d}[-a(n-1), (n+2)²-#]` with `a(0)=2`
-/

namespace A268581.P10312145137174371393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (((n + 2) ^ 2 : ℤ) - (d : ℤ))

end

end A268581.P10312145137174371393

namespace A268581

/-- `∑{d}[-a(n-1), (n+2)²-#]` -/
def P10312145137174371393.Spec : Prop :=
  ∀ n, P10312145137174371393.a n = A268581 n

end A268581

/-! ## A268581.P2548610434928326761

`abs(lcm(2*n+3, n+2)+n-1)`
-/

namespace A268581.P2548610434928326761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lcm (2 * n + 3) (n + 2) : ℤ) + ((n : ℤ) - 1)|

end

end A268581.P2548610434928326761

namespace A268581

/-- `abs(lcm(2*n+3, n+2)+n-1)` -/
def P2548610434928326761.Spec : Prop :=
  ∀ n, P2548610434928326761.a n = A268581 n

end A268581

/-! ## A268581.P2192064020695837308

`4*((a(n-1)+2)/4+n+1)` with `a(0)=5`
-/

namespace A268581.P2192064020695837308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  4 * ((a (n - 1) + 2) / 4 + (n + 1 : ℚ))

end

end A268581.P2192064020695837308

namespace A268581

/-- `4*((a(n-1)+2)/4+n+1)` -/
def P2192064020695837308.Spec : Prop :=
  ∀ n, P2192064020695837308.a n = (A268581 n : ℚ)

theorem P2192064020695837308.correct : P2192064020695837308.Spec := by
  intro n
  induction n with
  | zero => simp [A268581, A268581.P2192064020695837308.a, A268581.P13764220029622230360.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A268581, Nat.add_sub_cancel, A268581.P2192064020695837308.a, A268581.P13764220029622230360.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A268581

/-! ## A268581.P17968090306734018011

`∑[6-(gcd(2, a(n-1))-a(n-1))]` with `a(0)=5`
-/

namespace A268581.P17968090306734018011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  6 - ((Int.gcd 2 (f1 (n - 1)) : ℤ) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268581.P17968090306734018011

namespace A268581

/-- `∑[6-(gcd(2, a(n-1))-a(n-1))]` -/
def P17968090306734018011.Spec : Prop :=
  ∀ n, P17968090306734018011.a n = A268581 n

end A268581

/-! ## A268581.P13367426122728074624

`∑[6-(a(n-1)%4-a(n-1))]` with `a(0)=5`
-/

namespace A268581.P13367426122728074624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  6 - (Int.tmod (f1 (n - 1)) 4 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268581.P13367426122728074624

namespace A268581

/-- `∑[6-(a(n-1)%4-a(n-1))]` -/
def P13367426122728074624.Spec : Prop :=
  ∀ n, P13367426122728074624.a n = A268581 n

end A268581

/-! ## A268581.P5762450834863490492

`∑[Δ[(n+2)*2*n]-C(2, n+2)]`
-/

namespace A268581.P5762450834863490492
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268581.P5762450834863490492

namespace A268581

/-- `∑[Δ[(n+2)*2*n]-C(2, n+2)]` -/
def P5762450834863490492.Spec : Prop :=
  ∀ n, P5762450834863490492.a n = A268581 n

end A268581

/-! ## A268581.P9618119522157630604

`ceil((2*n+1)/acot(n+3)+n+1)`
-/

namespace A268581.P9618119522157630604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℝ) / SequenceMachineLib.acot (n + 3 : ℝ) + (n + 1 : ℝ)⌉

end

end A268581.P9618119522157630604

namespace A268581

/-- `ceil((2*n+1)/acot(n+3)+n+1)` -/
def P9618119522157630604.Spec : Prop :=
  ∀ n, P9618119522157630604.a n = A268581 n

end A268581

/-!
# A268582: Sphenic numbers having identical digits.

The programs for A268582, there is no canonical definition to state claims against.
-/

/-! ## A268582.P16437886441688270463

`∩[A046393(n+1), A048307(n)]`
-/

namespace A268582.P16437886441688270463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048307 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268582.P16437886441688270463

/-! ## A268582.P13857600606049536907

`∩[A046393(n+1), A064222(n)]`
-/

namespace A268582.P13857600606049536907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268582.P13857600606049536907

/-! ## A268582.P12983185201510754875

`∩[A044821(n+1), A046393(n+1)]`
-/

namespace A268582.P12983185201510754875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268582.P12983185201510754875

/-! ## A268582.P12237510665203497183

`∩[A046393(n+1), A048321(n+1)]`
-/

namespace A268582.P12237510665203497183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268582.P12237510665203497183

/-! ## A268582.P13120158633614081643

`∩[A046393(n+1), A096105(n+1)]`
-/

namespace A268582.P13120158633614081643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268582.P13120158633614081643

/-!
# A268584: a(0)=0; a(1)=0. For m>=1 : a(2*m) = 2*m-2-i, a(2*m+1) = 2*m-2-i, where i (0<=i<=2*m-4) is the largest number such that a(2*m-2)-a(i)=0 AND a(2*m-1)-a(i+1)=0, or a(2*m)=0 AND a(2*m+1)=0 if no such i exists.

The programs for A268584, there is no canonical definition to state claims against.
-/

/-! ## A268584.P14922330788568414386

`2*A181391(∑[log2(gcd(2, n))])`
-/

namespace A268584.P14922330788568414386
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181391 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A268584.P14922330788568414386

/-! ## A268584.P3135203460544759294

`2*A181391(∑[char[2*n]])`
-/

namespace A268584.P3135203460544759294
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181391 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268584.P3135203460544759294

/-! ## A268584.P13350047689652119499

`2*A333359(∑[char[2*n]])`
-/

namespace A268584.P13350047689652119499
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A333359 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268584.P13350047689652119499

/-! ## A268584.P11617481414399917128

`2*A171917(floor(n/2)+2)`
-/

namespace A268584.P11617481414399917128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171917 (⌊(n : ℚ) / 2⌋ + 2).toNat

end

end A268584.P11617481414399917128

/-! ## A268584.P10238121344560556422

`A181391(floor(n/2)+1)/sqrt(1/4)`
-/

namespace A268584.P10238121344560556422
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A181391 (⌊(n : ℚ) / 2⌋ + 1).toNat : ℝ) / Real.sqrt ((1 : ℚ) / 4 : ℝ)

end

end A268584.P10238121344560556422

/-! ## A268584.P3210870737038817605

`A005843(A181391(∑[log2(gcd(2, n))]))`
-/

namespace A268584.P3210870737038817605
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A181391 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A268584.P3210870737038817605

/-! ## A268584.P6185580233138270930

`A005843(A333359(∑[char[2*n]]))`
-/

namespace A268584.P6185580233138270930
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A333359 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A268584.P6185580233138270930

/-! ## A268584.P2817966386707798629

`A005843(A181391(floor(n/2)+1))`
-/

namespace A268584.P2817966386707798629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A181391 (⌊(n : ℚ) / 2⌋ + 1).toNat).toNat

end

end A268584.P2817966386707798629

/-! ## A268584.P3712137276986827554

`A005408(A181391(∑[(n+1)%2]))-1`
-/

namespace A268584.P3712137276986827554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A181391 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - 1

end

end A268584.P3712137276986827554

/-!
# A268585: Composite numbers m such that for any positive integers a < b, if a * b = m then b - a is a perfect square.

The programs for A268585, there is no canonical definition to state claims against.
-/

/-! ## A268585.P5361094908530932225

`1+A187401(n+1)²`
-/

namespace A268585.P5361094908530932225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A187401 (n + 1) ^ 2

end

end A268585.P5361094908530932225

/-! ## A268585.P10438028755097988265

`A053755(A187401(n+1)/2)`
-/

namespace A268585.P10438028755097988265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 (SequenceMachineLib.roundAway ((A187401 (n + 1) : ℚ) / 2)).toNat

end

end A268585.P10438028755097988265

/-! ## A268585.P13514361424738853151

`∩[A121944(n+1), A276460(n+1)]`
-/

namespace A268585.P13514361424738853151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268585.P13514361424738853151

/-! ## A268585.P13604277548982376746

`∩[A144255(n+1), A276460(n+1)]`
-/

namespace A268585.P13604277548982376746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268585.P13604277548982376746

/-! ## A268585.P3030465635632809195

`∩[A189047(n+1), A276460(n+1)]`
-/

namespace A268585.P3030465635632809195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268585.P3030465635632809195

/-!
# A268586: Expansion of x^3*(3*x - 2)/(2*x - 1)^3.

The programs for A268586, the canonical program `A268586.P15698712478783616084` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268586 has offset 0).

The definition of A268586 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2x^3-3x^4)/(1-6x+12x^2-8x^3))` (program `A268586.P15698712478783616084`, by `A268586.P15698712478783616084.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A268586.P15698712478783616084

`ogf((2x^3-3x^4)/(1-6x+12x^2-8x^3))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A268586

/-- `ogf((2x^3-3x^4)/(1-6x+12x^2-8x^3))` -/
def P15698712478783616084.Spec : Prop :=
  ∀ n, P15698712478783616084.a n = A268586 n

theorem P15698712478783616084.correct : P15698712478783616084.Spec := by
  intro n
  simp only [A268586]

end A268586

/-! ## A268586.P13012186653066587511

`6*a(n-1)-12*a(n-2)+8*a(n-3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2, a(4)=9`
-/

namespace A268586.P13012186653066587511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 2, 9] fun n a =>
  6 * a (n - 1) - 12 * a (n - 2) + 8 * a (n - 3)

end

end A268586.P13012186653066587511

namespace A268586

/-- `6*a(n-1)-12*a(n-2)+8*a(n-3)` -/
def P13012186653066587511.Spec : Prop :=
  ∀ n, P13012186653066587511.a n = A268586 n

end A268586

/-! ## A268586.P4361498025091047309

`A158920(n+1)-A131352(n)`
-/

namespace A268586.P4361498025091047309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158920 (n + 1) - A131352 n

end

end A268586.P4361498025091047309

namespace A268586

/-- `A158920(n+1)-A131352(n)` -/
def P4361498025091047309.Spec : Prop :=
  ∀ n, P4361498025091047309.a n = A268586 n

end A268586

/-! ## A268586.P2207673614948591666

`A034007(n)/2*A289207(n)`
-/

namespace A268586.P2207673614948591666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034007 n : ℚ) / 2 * (A289207 n : ℚ)

end

end A268586.P2207673614948591666

namespace A268586

/-- `A034007(n)/2*A289207(n)` -/
def P2207673614948591666.Spec : Prop :=
  ∀ n, P2207673614948591666.a n = (A268586 n : ℚ)

end A268586

/-! ## A268586.P16628652125521651015

`A190050(log2(A011782(n)))-A011782(n)`
-/

namespace A268586.P16628652125521651015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190050 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat - A011782 n

end

end A268586.P16628652125521651015

namespace A268586

/-- `A190050(log2(A011782(n)))-A011782(n)` -/
def P16628652125521651015.Spec : Prop :=
  ∀ n, P16628652125521651015.a n = A268586 n

end A268586

/-! ## A268586.P1690685503592193674

`A158920(n+1)-(A111297(n)+A049610(n))`
-/

namespace A268586.P1690685503592193674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158920 (n + 1) - (A111297 n + A049610 n)

end

end A268586.P1690685503592193674

namespace A268586

/-- `A158920(n+1)-(A111297(n)+A049610(n))` -/
def P1690685503592193674.Spec : Prop :=
  ∀ n, P1690685503592193674.a n = A268586 n

end A268586

/-! ## A268586.P16744393285111556916

`(A084851(n)+A045623(n))%A158920(n+1)`
-/

namespace A268586.P16744393285111556916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084851 n + A045623 n) (A158920 (n + 1))

end

end A268586.P16744393285111556916

namespace A268586

/-- `(A084851(n)+A045623(n))%A158920(n+1)` -/
def P16744393285111556916.Spec : Prop :=
  ∀ n, P16744393285111556916.a n = A268586 n

end A268586

/-! ## A268586.P1149309218456918551

`A268587(n+1)/(n/6+2)`
-/

namespace A268586.P1149309218456918551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268587 (n + 1) : ℚ) / ((n : ℚ) / 6 + 2)

end

end A268586.P1149309218456918551

namespace A268586

/-- `A268587(n+1)/(n/6+2)` -/
def P1149309218456918551.Spec : Prop :=
  ∀ n, P1149309218456918551.a n = (A268586 n : ℚ)

end A268586

/-!
# A268587: Expansion of x^4*(5 - 16*x + 13*x^2)/(1 - 2*x)^4.

The programs for A268587, the canonical program `A268587.P9658738214087192201` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268587 has offset 0).

The definition of A268587 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((5x^4-16x^5+13x^6)/(1-8x+24x^2-32x^3+16x^4))` (program `A268587.P9658738214087192201`, by `A268587.P9658738214087192201.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A268587.P9658738214087192201

`ogf((5x^4-16x^5+13x^6)/(1-8x+24x^2-32x^3+16x^4))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A268587

/-- `ogf((5x^4-16x^5+13x^6)/(1-8x+24x^2-32x^3+16x^4))` -/
def P9658738214087192201.Spec : Prop :=
  ∀ n, P9658738214087192201.a n = A268587 n

theorem P9658738214087192201.correct : P9658738214087192201.Spec := by
  intro n
  simp only [A268587]

end A268587

/-! ## A268587.P8558623808682191246

`8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=5, a(5)=24, a(6)=85`
-/

namespace A268587.P8558623808682191246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 5, 24, 85] fun n a =>
  8 * a (n - 1) - 24 * a (n - 2) + 32 * a (n - 3) - 16 * a (n - 4)

end

end A268587.P8558623808682191246

namespace A268587

/-- `8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` -/
def P8558623808682191246.Spec : Prop :=
  ∀ n, P8558623808682191246.a n = A268587 n

end A268587

/-! ## A268587.P3700074797604704789

`A268462(n)/2-A268598(n)`
-/

namespace A268587.P3700074797604704789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268462 n : ℚ) / 2 - (A268598 n : ℚ)

end

end A268587.P3700074797604704789

namespace A268587

/-- `A268462(n)/2-A268598(n)` -/
def P3700074797604704789.Spec : Prop :=
  ∀ n, P3700074797604704789.a n = (A268587 n : ℚ)

end A268587

/-! ## A268587.P15944972358874710072

`A001281(A268462(n))-A268598(n)`
-/

namespace A268587.P15944972358874710072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A268462 n).toNat - A268598 n

end

end A268587.P15944972358874710072

namespace A268587

/-- `A001281(A268462(n))-A268598(n)` -/
def P15944972358874710072.Spec : Prop :=
  ∀ n, P15944972358874710072.a n = A268587 n

end A268587

/-!
# A268588: Numbers n such that n, n + 1, n + 2, n + 3 and n + 4 are products of exactly three primes.

The programs for A268588, the canonical program `A268588.P11598390377590245523` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268588 has offset 1).

The definition of A268588 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1892 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268588.P8929695119519540140

`∩[A045941(n+1), A124057(n+1)]`
-/

namespace A268588.P8929695119519540140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268588.P8929695119519540140

namespace A268588

/-- `∩[A045941(n+1), A124057(n+1)]` -/
def P8929695119519540140.Spec : Prop :=
  ∀ n, (P8929695119519540140.a n : ℤ) = A268588 (n + 1)

end A268588

/-! ## A268588.P9957607317617392382

`∩[A124057(n+1), A124057(n+2)-1]`
-/

namespace A268588.P9957607317617392382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124057 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268588.P9957607317617392382

namespace A268588

/-- `∩[A124057(n+1), A124057(n+2)-1]` -/
def P9957607317617392382.Spec : Prop :=
  ∀ n, (P9957607317617392382.a n : ℤ) = A268588 (n + 1)

end A268588

/-! ## A268588.P11598390377590245523

`A124057(eq[1, A124057(n+2)%A124057(n+1)]+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A268588

/-- `A124057(eq[1, A124057(n+2)%A124057(n+1)]+1)` -/
def P11598390377590245523.Spec : Prop :=
  ∀ n, P11598390377590245523.a n = A268588 (n + 1)

theorem P11598390377590245523.correct : P11598390377590245523.Spec := by
  intro n
  simp only [A268588, Nat.add_sub_cancel]

end A268588

/-! ## A268588.P8411833244658416954

`∩[A045940(n+1)-1, A113789(n+1)]`
-/

namespace A268588.P8411833244658416954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045940 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268588.P8411833244658416954

namespace A268588

/-- `∩[A045940(n+1)-1, A113789(n+1)]` -/
def P8411833244658416954.Spec : Prop :=
  ∀ n, (P8411833244658416954.a n : ℤ) = A268588 (n + 1)

end A268588

/-! ## A268588.P12593592004295481810

`∩[A113789(n+2)-2, A113789(n+2)]`
-/

namespace A268588.P12593592004295481810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113789 (n + 2) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113789 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268588.P12593592004295481810

namespace A268588

/-- `∩[A113789(n+2)-2, A113789(n+2)]` -/
def P12593592004295481810.Spec : Prop :=
  ∀ n, (P12593592004295481810.a n : ℤ) = A268588 (n + 1)

end A268588

/-! ## A268588.P4015376170501683947

`filter[A045941(n+1), A066829(#)]`
-/

namespace A268588.P4015376170501683947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A268588.P4015376170501683947

namespace A268588

/-- `filter[A045941(n+1), A066829(#)]` -/
def P4015376170501683947.Spec : Prop :=
  ∀ n, P4015376170501683947.a n = A268588 (n + 1)

end A268588

/-! ## A268588.P4455326182504778931

`filter[A045941(n+1), A358753(#)]`
-/

namespace A268588.P4455326182504778931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A268588.P4455326182504778931

namespace A268588

/-- `filter[A045941(n+1), A358753(#)]` -/
def P4455326182504778931.Spec : Prop :=
  ∀ n, P4455326182504778931.a n = A268588 (n + 1)

end A268588

/-! ## A268588.P1663759752668518007

`filter[A045941(n+1), A359372(#)]`
-/

namespace A268588.P1663759752668518007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359372 (f1 j).toNat = 1) n)

end

end A268588.P1663759752668518007

namespace A268588

/-- `filter[A045941(n+1), A359372(#)]` -/
def P1663759752668518007.Spec : Prop :=
  ∀ n, P1663759752668518007.a n = A268588 (n + 1)

end A268588

/-! ## A268588.P1827659928888494646

`filter[A045941(n+1), A373975(#)]`
-/

namespace A268588.P1827659928888494646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A268588.P1827659928888494646

namespace A268588

/-- `filter[A045941(n+1), A373975(#)]` -/
def P1827659928888494646.Spec : Prop :=
  ∀ n, P1827659928888494646.a n = A268588 (n + 1)

end A268588

/-!
# A268591: Number of n-isohedral edge-to-edge "full colorings" of regular polygons.

The programs for A268591, there is no canonical definition to state claims against.
-/

/-! ## A268591.P18179074143293391413

`A165045(A243103(n+1)+A003346(n+1))`
-/

namespace A268591.P18179074143293391413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165045 (A243103 (n + 1) + A003346 (n + 1)).toNat

end

end A268591.P18179074143293391413

/-!
# A268592: a(n) = (6/n^3) * Sum_{d|n} moebius(n/d)*binomial(2*d,d).

The programs for A268592, there is no canonical definition to state claims against.
-/

/-! ## A268592.P2534996193263187810

`A268619(n+1)*6/(n+1)`
-/

namespace A268592.P2534996193263187810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268619 (n + 1) * 6 : ℚ) / (n + 1 : ℚ)

end

end A268592.P2534996193263187810

/-! ## A268592.P494761692354529029

`A060165(n+1)*6/(n+1)²`
-/

namespace A268592.P494761692354529029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060165 (n + 1) * 6 : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A268592.P494761692354529029

/-! ## A268592.P12827482512867486314

`A022553(n+1)*12/(n+1)²`
-/

namespace A268592.P12827482512867486314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022553 (n + 1) * 12 : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A268592.P12827482512867486314

/-! ## A268592.P16369616352867331787

`A007727(n+1)*6/(n+1)^3`
-/

namespace A268592.P16369616352867331787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007727 (n + 1) * 6 : ℚ) / ((n + 1) ^ 3 : ℚ)

end

end A268592.P16369616352867331787

/-! ## A268592.P9201173609600648901

`A045630(n+1)*12/(n+1)^3`
-/

namespace A268592.P9201173609600648901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045630 (n + 1) * 12 : ℚ) / ((n + 1) ^ 3 : ℚ)

end

end A268592.P9201173609600648901

/-!
# A268593: The largest of three distinct primes, a > b > c > 0, such that each of the following four numbers are also prime: a+b+c, a+b-c, a-b+c, a-b-c, regardless of sign.

The programs for A268593, there is no canonical definition to state claims against.
-/

/-! ## A268593.P7788719688157372741

`p?[record[A073731(A026730(n))]]`
-/

namespace A268593.P7788719688157372741
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073731 ((A026730 n).toNat + 10)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A268593.P7788719688157372741

/-! ## A268593.P4631547447998484829

`A118759(∪[A098970(n+1), A240894(n+1)])`
-/

namespace A268593.P4631547447998484829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240894 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A268593.P4631547447998484829

/-! ## A268593.P14256032973292432519

`p?[A031955(n+1)*A133188(n+1)]`
-/

namespace A268593.P14256032973292432519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031955 (n + 1) * A133188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A268593.P14256032973292432519

/-! ## A268593.P14662887908048112080

`A050264(A002998(n)+6)`
-/

namespace A268593.P14662887908048112080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050264 (A002998 n + 6).toNat

end

end A268593.P14662887908048112080

/-! ## A268593.P14372544282282907182

`filter[A050264(n+1), A377191(#)]`
-/

namespace A268593.P14372544282282907182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377191 (f1 j).toNat = 1) n)

end

end A268593.P14372544282282907182

/-!
# A268594: Numbers n of the form p^k - k = q^i - i for primes p < q.

The programs for A268594, there is no canonical definition to state claims against.
-/

/-! ## A268594.P6978714842114164621

`A268596(n+1)-1`
-/

namespace A268594.P6978714842114164621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268596 (n + 1) - 1

end

end A268594.P6978714842114164621

/-! ## A268594.P18329741306775775897

`xor(1, A268596(A000027(n+1)))`
-/

namespace A268594.P18329741306775775897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A268596 (A000027 (n + 1)).toNat)

end

end A268594.P18329741306775775897

/-! ## A268594.P16139995989211086074

`xor(A015526(n), A268596(n+1))`
-/

namespace A268594.P16139995989211086074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A015526 n) (A268596 (n + 1))

end

end A268594.P16139995989211086074

/-! ## A268594.P17822433794472796066

`xor(A015600(n), A268596(n+1))`
-/

namespace A268594.P17822433794472796066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A015600 n) (A268596 (n + 1))

end

end A268594.P17822433794472796066

/-! ## A268594.P3140820205711182420

`xor(A015748(n), A268596(n+1))`
-/

namespace A268594.P3140820205711182420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A015748 n) (A268596 (n + 1))

end

end A268594.P3140820205711182420

/-!
# A268596: Values of prime q corresponding to terms in A268594.

The programs for A268596, there is no canonical definition to state claims against.
-/

/-! ## A268596.P5803760561685350146

`A268594(n+1)+1`
-/

namespace A268596.P5803760561685350146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268594 (n + 1) + 1

end

end A268596.P5803760561685350146

/-! ## A268596.P18056855042445840202

`or(1, A268594(Δ[n²]-n))`
-/

namespace A268596.P18056855042445840202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A268594 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A268596.P18056855042445840202

/-! ## A268596.P13288135097761916257

`xor(1, A268594(1-(n-2*n)))`
-/

namespace A268596.P13288135097761916257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A268594 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat)

end

end A268596.P13288135097761916257

/-! ## A268596.P8178756563755892734

`2-(A007318(C(2, n))-A268594(Δ[n²]-n))`
-/

namespace A268596.P8178756563755892734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A007318 (Nat.choose 2 n) - A268594 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A268596.P8178756563755892734

/-! ## A268596.P8002922121285290266

`∪[A066878(n+1), p?[A269769(n+1)+1]]`
-/

namespace A268596.P8002922121285290266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066878 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269769 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A268596.P8002922121285290266

/-!
# A268598: Expansion of x^5*(4 - 5*x)/(1 - 2*x)^4.

The programs for A268598, the canonical program `A268598.P15797010432626015969` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268598 has offset 0).

The definition of A268598 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((4x^5-5x^6)/(1-8x+24x^2-32x^3+16x^4))` (program `A268598.P15797010432626015969`, by `A268598.P15797010432626015969.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A268598.P15797010432626015969

`ogf((4x^5-5x^6)/(1-8x+24x^2-32x^3+16x^4))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A268598

/-- `ogf((4x^5-5x^6)/(1-8x+24x^2-32x^3+16x^4))` -/
def P15797010432626015969.Spec : Prop :=
  ∀ n, P15797010432626015969.a n = A268598 n

theorem P15797010432626015969.correct : P15797010432626015969.Spec := by
  intro n
  simp only [A268598]

end A268598

/-! ## A268598.P14840198389249708327

`8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=4, a(6)=27`
-/

namespace A268598.P14840198389249708327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 4, 27] fun n a =>
  8 * a (n - 1) - 24 * a (n - 2) + 32 * a (n - 3) - 16 * a (n - 4)

end

end A268598.P14840198389249708327

namespace A268598

/-- `8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` -/
def P14840198389249708327.Spec : Prop :=
  ∀ n, P14840198389249708327.a n = A268598 n

end A268598

/-! ## A268598.P2713016906926639057

`(n-3)*A268586(floor(n-atan(n)))`
-/

namespace A268598.P2713016906926639057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) * A268586 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat

end

end A268598.P2713016906926639057

namespace A268598

/-- `(n-3)*A268586(floor(n-atan(n)))` -/
def P2713016906926639057.Spec : Prop :=
  ∀ n, P2713016906926639057.a n = A268598 n

end A268598

/-! ## A268598.P546070686006691742

`(n-3)*A268586(A289207(n))`
-/

namespace A268598.P546070686006691742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) * A268586 (A289207 n).toNat

end

end A268598.P546070686006691742

namespace A268598

/-- `(n-3)*A268586(A289207(n))` -/
def P546070686006691742.Spec : Prop :=
  ∀ n, P546070686006691742.a n = A268598 n

end A268598

/-! ## A268598.P14112355583868059005

`A268462(n)/2-A268587(n)`
-/

namespace A268598.P14112355583868059005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268462 n : ℚ) / 2 - (A268587 n : ℚ)

end

end A268598.P14112355583868059005

namespace A268598

/-- `A268462(n)/2-A268587(n)` -/
def P14112355583868059005.Spec : Prop :=
  ∀ n, P14112355583868059005.a n = (A268598 n : ℚ)

end A268598

/-!
# A268599: Expansion of 2*x^6*(4-10*x+7*x^2)/(1-2*x)^5.

The programs for A268599, the canonical program `A268599.P13467126820978758543` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268599 has offset 0).

The definition of A268599 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((8x^6-20x^7+14x^8)/(1-10x+40x^2-80x^3+80x^4-32x^5))` (program `A268599.P13467126820978758543`, by `A268599.P13467126820978758543.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A268599.P13467126820978758543

`ogf((8x^6-20x^7+14x^8)/(1-10x+40x^2-80x^3+80x^4-32x^5))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A268599

/-- `ogf((8x^6-20x^7+14x^8)/(1-10x+40x^2-80x^3+80x^4-32x^5))` -/
def P13467126820978758543.Spec : Prop :=
  ∀ n, P13467126820978758543.a n = A268599 n

theorem P13467126820978758543.correct : P13467126820978758543.Spec := by
  intro n
  simp only [A268599]

end A268599

/-! ## A268599.P10905870667061673805

`A235943(A073090(n)+n)`
-/

namespace A268599.P10905870667061673805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235943 (A073090 n + (n : ℤ)).toNat

end

end A268599.P10905870667061673805

namespace A268599

/-- `A235943(A073090(n)+n)` -/
def P10905870667061673805.Spec : Prop :=
  ∀ n, P10905870667061673805.a n = A268599 n

end A268599

/-! ## A268599.P17260165771691777555

`A004247(A255070(n)+A000719(n))`
-/

namespace A268599.P17260165771691777555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 (A255070 n + A000719 n).toNat

end

end A268599.P17260165771691777555

namespace A268599

/-- `A004247(A255070(n)+A000719(n))` -/
def P17260165771691777555.Spec : Prop :=
  ∀ n, P17260165771691777555.a n = A268599 n

end A268599

/-! ## A268599.P7985821814354565297

`A004247(A304311(n)+A000719(n))`
-/

namespace A268599.P7985821814354565297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 (A304311 n + A000719 n).toNat

end

end A268599.P7985821814354565297

namespace A268599

/-- `A004247(A304311(n)+A000719(n))` -/
def P7985821814354565297.Spec : Prop :=
  ∀ n, P7985821814354565297.a n = A268599 n

end A268599

/-! ## A268599.P4372815130498820822

`A029837(A068870(n))*A375297(n+3)`
-/

namespace A268599.P4372815130498820822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A068870 n).toNat * A375297 (n + 3)

end

end A268599.P4372815130498820822

namespace A268599

/-- `A029837(A068870(n))*A375297(n+3)` -/
def P4372815130498820822.Spec : Prop :=
  ∀ n, P4372815130498820822.a n = A268599 n

end A268599

