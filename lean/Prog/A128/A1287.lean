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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A128700: Highly abundant numbers with an odd divisor sum.

The programs for A128700, there is no canonical definition to state claims against.
-/

/-! ## A128700.P15715751480192509833

`∩[∪[2*(n+1)², (n+1)²], A002093(n+1)]`
-/

namespace A128700.P15715751480192509833
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A128700.P15715751480192509833

/-! ## A128700.P10952069684271304484

`filter[A002093(n+1), A053866(#)]`
-/

namespace A128700.P10952069684271304484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053866 (f1 j).toNat = 1) n)

end

end A128700.P10952069684271304484

/-! ## A128700.P6226502824136998439

`filter[A002093(n+1), A093709(#)]`
-/

namespace A128700.P6226502824136998439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093709 (f1 j).toNat = 1) n)

end

end A128700.P6226502824136998439

/-! ## A128700.P4775221486453508523

`filter[A002093(n+1), A379502(#)]`
-/

namespace A128700.P4775221486453508523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379502 (f1 j).toNat = 1) n)

end

end A128700.P4775221486453508523

/-! ## A128700.P2031530867860544620

`∩[A002093(n+1), A028982(n+1)]`
-/

namespace A128700.P2031530867860544620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128700.P2031530867860544620

/-!
# A128704: Number of groups of order A128703(n).

The programs for A128704, there is no canonical definition to state claims against.
-/

/-! ## A128704.P11423670108164598259

`A000001(A128703(n+1))`
-/

namespace A128704.P11423670108164598259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A128703 (n + 1)).toNat

end

end A128704.P11423670108164598259

/-! ## A128704.P5701578487663368231

`A201733(lcm(5, A128703(n+1)))`
-/

namespace A128704.P5701578487663368231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (Int.lcm 5 (A128703 (n + 1)))

end

end A128704.P5701578487663368231

/-! ## A128704.P7280774542433146176

`A201733(root(A128703(n+1), 2)²)`
-/

namespace A128704.P7280774542433146176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (SequenceMachineLib.roundAway (((A128703 (n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat

end

end A128704.P7280774542433146176

/-! ## A128704.P15579845862581330223

`A201733(or(char[1], A128703(n+1)))`
-/

namespace A128704.P15579845862581330223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A128703 (n + 1))).toNat

end

end A128704.P15579845862581330223

/-! ## A128704.P9034813905378876549

`A201733(∑{d}[A128703(n+1), A000010(#)])`
-/

namespace A128704.P9034813905378876549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d).toNat

end

end A128704.P9034813905378876549

/-!
# A128706: Number of groups of order A128705(n).

The programs for A128706, there is no canonical definition to state claims against.
-/

/-! ## A128706.P14575378367046135655

`A000001(A128705(n+1))`
-/

namespace A128706.P14575378367046135655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A128705 (n + 1)).toNat

end

end A128706.P14575378367046135655

/-! ## A128706.P8561313057876128351

`A201733(lcm(7, A128705(n+1)))`
-/

namespace A128706.P8561313057876128351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (Int.lcm 7 (A128705 (n + 1)))

end

end A128706.P8561313057876128351

/-! ## A128706.P8580462087100928650

`A201733(root(A128705(n+1), 2)²)`
-/

namespace A128706.P8580462087100928650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (SequenceMachineLib.roundAway (((A128705 (n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat

end

end A128706.P8580462087100928650

/-! ## A128706.P15274738560566389941

`A201733(A128705(n+1)+char[1])`
-/

namespace A128706.P15274738560566389941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (A128705 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A128706.P15274738560566389941

/-! ## A128706.P2904213758828786442

`A201733(∑{d}[A128705(n+1), A000010(#)])`
-/

namespace A128706.P2904213758828786442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d).toNat

end

end A128706.P2904213758828786442

/-!
# A128707: Least number having the maximal distance between consecutive integers coprime to n.

The programs for A128707, there is no canonical definition to state claims against.
-/

/-! ## A128707.P10566244443378255249

`A006530(n+1)-A327403(A078599(n+1))`
-/

namespace A128707.P10566244443378255249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) - A327403 (A078599 (n + 1)).toNat

end

end A128707.P10566244443378255249

/-! ## A128707.P11010386942195715678

`A006530(n+1)-A327403(A133900(n+1))`
-/

namespace A128707.P11010386942195715678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) - A327403 (A133900 (n + 1)).toNat

end

end A128707.P11010386942195715678

/-! ## A128707.P17965572883744975169

`A006530(n+1)-A327403(A007955(n+1))`
-/

namespace A128707.P17965572883744975169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) - A327403 (A007955 (n + 1)).toNat

end

end A128707.P17965572883744975169

/-! ## A128707.P8772400340396186258

`A165500(∏{p}[n+1, #])-∑{p}[n+1, gcd(n, #)]`
-/

namespace A128707.P8772400340396186258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165500 (∏ p ∈ Nat.primeFactors (f1 n), p) - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.gcd n p : ℕ) : ℤ)

end

end A128707.P8772400340396186258

/-! ## A128707.P3430093084541860917

`A006530(2*(n+1))-A119569(A007947(n+1))`
-/

namespace A128707.P3430093084541860917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n + 1)) - A119569 (A007947 (n + 1)).toNat

end

end A128707.P3430093084541860917

/-!
# A128708: Let j(n) be the Jacobsthal function, A048669. Then a(n) is the number of times that the gap j(n) appears between consecutive numbers <= n+1 and coprime to n.

The programs for A128708, the canonical program `A128708.P6544148237693271811` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128708 has offset 1).

The definition of A128708 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128708.P12373371526580238343

`A003557(n+1)*A036453(A340365(n+1))`
-/

namespace A128708.P12373371526580238343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A036453 (A340365 (n + 1)).toNat

end

end A128708.P12373371526580238343

namespace A128708

/-- `A003557(n+1)*A036453(A340365(n+1))` -/
def P12373371526580238343.Spec : Prop :=
  ∀ n, P12373371526580238343.a n = A128708 (n + 1)

end A128708

/-! ## A128708.P7339373985238192850

`A003557(n+1)*A040001(A070536(n+1)²)`
-/

namespace A128708.P7339373985238192850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A040001 (A070536 (n + 1) ^ 2).toNat

end

end A128708.P7339373985238192850

namespace A128708

/-- `A003557(n+1)*A040001(A070536(n+1)²)` -/
def P7339373985238192850.Spec : Prop :=
  ∀ n, P7339373985238192850.a n = A128708 (n + 1)

end A128708

/-! ## A128708.P6438327305252904543

`A003557(n+1)*A040001(n*A070536(n+1))`
-/

namespace A128708.P6438327305252904543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A040001 ((n : ℤ) * A070536 (n + 1)).toNat

end

end A128708.P6438327305252904543

namespace A128708

/-- `A003557(n+1)*A040001(n*A070536(n+1))` -/
def P6438327305252904543.Spec : Prop :=
  ∀ n, P6438327305252904543.a n = A128708 (n + 1)

end A128708

/-! ## A128708.P6544148237693271811

`A000188(gcd(A000082(n+1), A065958(n+1)))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A128708

/-- `A000188(gcd(A000082(n+1), A065958(n+1)))` -/
def P6544148237693271811.Spec : Prop :=
  ∀ n, P6544148237693271811.a n = A128708 (n + 1)

theorem P6544148237693271811.correct : P6544148237693271811.Spec := by
  intro n
  simp only [A128708, Nat.add_sub_cancel]

end A128708

/-! ## A128708.P198865483027723102

`A003557(n+1)*A076820(A300451(A076820(n+1)))`
-/

namespace A128708.P198865483027723102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A076820 (A300451 (A076820 (n + 1)).toNat).toNat

end

end A128708.P198865483027723102

namespace A128708

/-- `A003557(n+1)*A076820(A300451(A076820(n+1)))` -/
def P198865483027723102.Spec : Prop :=
  ∀ n, P198865483027723102.a n = A128708 (n + 1)

end A128708

/-! ## A128708.P679588759949524905

`A003557(n+1)*A074473(A062513(2*(n+1)))`
-/

namespace A128708.P679588759949524905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A074473 (A062513 (2 * (n + 1))).toNat

end

end A128708.P679588759949524905

namespace A128708

/-- `A003557(n+1)*A074473(A062513(2*(n+1)))` -/
def P679588759949524905.Spec : Prop :=
  ∀ n, P679588759949524905.a n = A128708 (n + 1)

end A128708

/-! ## A128708.P5991840013502315608

`A003557(n+1)*A323437(A000265(n+1))`
-/

namespace A128708.P5991840013502315608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A323437 (A000265 (n + 1)).toNat

end

end A128708.P5991840013502315608

namespace A128708

/-- `A003557(n+1)*A323437(A000265(n+1))` -/
def P5991840013502315608.Spec : Prop :=
  ∀ n, P5991840013502315608.a n = A128708 (n + 1)

end A128708

/-!
# A128709: O.g.f.: A(x) = 1/(1-1*x/(1-3*x/(1-5*x/(1-7*x/(1-...-(2n-1)*x/(1-...)))))) (continued fraction).

The programs for A128709, there is no canonical definition to state claims against.
-/

/-! ## A128709.P5960392174313791405

`A291261(∑[n+2]-1)`
-/

namespace A128709.P5960392174313791405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291261 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A128709.P5960392174313791405

/-! ## A128709.P14841637731730727266

`and(floor(1/(γ-n)), A291261(A034856(n+1)))`
-/

namespace A128709.P14841637731730727266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌊1 / (Real.eulerMascheroniConstant - (n : ℝ))⌋ (A291261 (A034856 (n + 1)).toNat)

end

end A128709.P14841637731730727266

/-! ## A128709.P10899486536701102383

`A291261(A034856(n+1))+A025469(n)`
-/

namespace A128709.P10899486536701102383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291261 (A034856 (n + 1)).toNat + A025469 n

end

end A128709.P10899486536701102383

/-! ## A128709.P17075372928352634076

`A291261(A034856(n+1))+A026830(n)`
-/

namespace A128709.P17075372928352634076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291261 (A034856 (n + 1)).toNat + A026830 n

end

end A128709.P17075372928352634076

/-! ## A128709.P7969684466540387106

`A291261(A034856(n+1))+A036426(n)`
-/

namespace A128709.P7969684466540387106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291261 (A034856 (n + 1)).toNat + A036426 n

end

end A128709.P7969684466540387106

/-!
# A128710: Triangle read by rows: T(n,k) = (k+2)*binomial(n,k) (0 <= k <= n).

The programs for A128710, the canonical program `A128710.P3337549446234895823` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128710 has offset 0).

The definition of A128710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128710.P3337549446234895823

`A103406(n)+A007318(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A128710

/-- `A103406(n)+A007318(n)` -/
def P3337549446234895823.Spec : Prop :=
  ∀ n, P3337549446234895823.a n = A128710 n

theorem P3337549446234895823.correct : P3337549446234895823.Spec := by
  intro n
  simp only [A128710]

end A128710

/-! ## A128710.P18317442702283232897

`A127952(n)+A029653(n)`
-/

namespace A128710.P18317442702283232897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127952 n + A029653 n

end

end A128710.P18317442702283232897

namespace A128710

/-- `A127952(n)+A029653(n)` -/
def P18317442702283232897.Spec : Prop :=
  ∀ n, P18317442702283232897.a n = A128710 n

end A128710

/-! ## A128710.P14967159144209993806

`A134399(n)+A124927(n)`
-/

namespace A128710.P14967159144209993806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134399 n + A124927 n

end

end A128710.P14967159144209993806

namespace A128710

/-- `A134399(n)+A124927(n)` -/
def P14967159144209993806.Spec : Prop :=
  ∀ n, P14967159144209993806.a n = A128710 n

end A128710

/-! ## A128710.P9639449467593876069

`A103406(n)+abs(A130595(n))`
-/

namespace A128710.P9639449467593876069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103406 n + |A130595 n|

end

end A128710.P9639449467593876069

namespace A128710

/-- `A103406(n)+abs(A130595(n))` -/
def P9639449467593876069.Spec : Prop :=
  ∀ n, P9639449467593876069.a n = A128710 n

end A128710

/-! ## A128710.P4470184576621749123

`A103406(n)+sqrt(A008459(n))`
-/

namespace A128710.P4470184576621749123
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A103406 n : ℝ) + Real.sqrt (A008459 n : ℝ)

end

end A128710.P4470184576621749123

namespace A128710

/-- `A103406(n)+sqrt(A008459(n))` -/
def P4470184576621749123.Spec : Prop :=
  ∀ n, P4470184576621749123.a n = (A128710 n : ℝ)

end A128710

/-! ## A128710.P18202219584767527215

`A103406(n)+Δ[A102363(n)]`
-/

namespace A128710.P18202219584767527215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103406 n + (f1 (n + 1) - f1 n)

end

end A128710.P18202219584767527215

namespace A128710

/-- `A103406(n)+Δ[A102363(n)]` -/
def P18202219584767527215.Spec : Prop :=
  ∀ n, P18202219584767527215.a n = A128710 n

end A128710

/-! ## A128710.P14975480729290101178

`A055137(n)+A003506(n+1)`
-/

namespace A128710.P14975480729290101178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055137 n + A003506 (n + 1)

end

end A128710.P14975480729290101178

namespace A128710

/-- `A055137(n)+A003506(n+1)` -/
def P14975480729290101178.Spec : Prop :=
  ∀ n, P14975480729290101178.a n = A128710 n

end A128710

/-! ## A128710.P15019810598382436953

`A135278(n)+A128133(n+1)`
-/

namespace A128710.P15019810598382436953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n + A128133 (n + 1)

end

end A128710.P15019810598382436953

namespace A128710

/-- `A135278(n)+A128133(n+1)` -/
def P15019810598382436953.Spec : Prop :=
  ∀ n, P15019810598382436953.a n = A128710 n

end A128710

/-! ## A128710.P4203646647659010461

`(A002262(n)+2)*A007318(n)`
-/

namespace A128710.P4203646647659010461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 2) * A007318 n

end

end A128710.P4203646647659010461

namespace A128710

/-- `(A002262(n)+2)*A007318(n)` -/
def P4203646647659010461.Spec : Prop :=
  ∀ n, P4203646647659010461.a n = A128710 n

end A128710

/-! ## A128710.P9895947152087017169

`A103406(n)+A028326(n)/2`
-/

namespace A128710.P9895947152087017169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103406 n : ℚ) + (A028326 n : ℚ) / 2

end

end A128710.P9895947152087017169

namespace A128710

/-- `A103406(n)+A028326(n)/2` -/
def P9895947152087017169.Spec : Prop :=
  ∀ n, P9895947152087017169.a n = (A128710 n : ℚ)

end A128710

/-! ## A128710.P9301323251095555303

`abs((A002262(n)+2)*A108086(n))`
-/

namespace A128710.P9301323251095555303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A002262 n + 2) * A108086 n|

end

end A128710.P9301323251095555303

namespace A128710

/-- `abs((A002262(n)+2)*A108086(n))` -/
def P9301323251095555303.Spec : Prop :=
  ∀ n, P9301323251095555303.a n = A128710 n

end A128710

/-! ## A128710.P3400245439921813382

`abs((A002262(n)+2)*A130595(n))`
-/

namespace A128710.P3400245439921813382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A002262 n + 2) * A130595 n|

end

end A128710.P3400245439921813382

namespace A128710

/-- `abs((A002262(n)+2)*A130595(n))` -/
def P3400245439921813382.Spec : Prop :=
  ∀ n, P3400245439921813382.a n = A128710 n

end A128710

/-! ## A128710.P17095593167960847449

`(A002262(n)+2)*sqrt(A008459(n))`
-/

namespace A128710.P17095593167960847449
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002262 n + 2 : ℝ) * Real.sqrt (A008459 n : ℝ)

end

end A128710.P17095593167960847449

namespace A128710

/-- `(A002262(n)+2)*sqrt(A008459(n))` -/
def P17095593167960847449.Spec : Prop :=
  ∀ n, P17095593167960847449.a n = (A128710 n : ℝ)

end A128710

/-! ## A128710.P11051960134554731937

`(sqrt(A143844(n))+2)*A007318(n)`
-/

namespace A128710.P11051960134554731937
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A143844 n : ℝ) + 2) * (A007318 n : ℝ)

end

end A128710.P11051960134554731937

namespace A128710

/-- `(sqrt(A143844(n))+2)*A007318(n)` -/
def P11051960134554731937.Spec : Prop :=
  ∀ n, P11051960134554731937.a n = (A128710 n : ℝ)

end A128710

/-! ## A128710.P4746775891585672612

`(log2(A059268(n))+2)*A007318(n)`
-/

namespace A128710.P4746775891585672612
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.logb 2 (A059268 n : ℝ) + 2) * (A007318 n : ℝ)

end

end A128710.P4746775891585672612

namespace A128710

/-- `(log2(A059268(n))+2)*A007318(n)` -/
def P4746775891585672612.Spec : Prop :=
  ∀ n, P4746775891585672612.a n = (A128710 n : ℝ)

end A128710

/-! ## A128710.P7125680840550095906

`(A002262(n)+2)*Δ[A102363(n)]`
-/

namespace A128710.P7125680840550095906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 2) * (f1 (n + 1) - f1 n)

end

end A128710.P7125680840550095906

namespace A128710

/-- `(A002262(n)+2)*Δ[A102363(n)]` -/
def P7125680840550095906.Spec : Prop :=
  ∀ n, P7125680840550095906.a n = A128710 n

end A128710

/-! ## A128710.P5040750758244615441

`A128065(n+1)+A093375(n+1)`
-/

namespace A128710.P5040750758244615441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128065 (n + 1) + A093375 (n + 1)

end

end A128710.P5040750758244615441

namespace A128710

/-- `A128065(n+1)+A093375(n+1)` -/
def P5040750758244615441.Spec : Prop :=
  ∀ n, P5040750758244615441.a n = A128710 n

end A128710

/-! ## A128710.P2888344540349702484

`(A002260(n+1)+1)*A007318(n)`
-/

namespace A128710.P2888344540349702484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) + 1) * A007318 n

end

end A128710.P2888344540349702484

namespace A128710

/-- `(A002260(n+1)+1)*A007318(n)` -/
def P2888344540349702484.Spec : Prop :=
  ∀ n, P2888344540349702484.a n = A128710 n

end A128710

/-! ## A128710.P996167861065707255

`abs((A002260(n+1)+1)*A108086(n))`
-/

namespace A128710.P996167861065707255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A002260 (n + 1) + 1) * A108086 n|

end

end A128710.P996167861065707255

namespace A128710

/-- `abs((A002260(n+1)+1)*A108086(n))` -/
def P996167861065707255.Spec : Prop :=
  ∀ n, P996167861065707255.a n = A128710 n

end A128710

/-! ## A128710.P3994676563850824592

`abs((A002260(n+1)+1)*A130595(n))`
-/

namespace A128710.P3994676563850824592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A002260 (n + 1) + 1) * A130595 n|

end

end A128710.P3994676563850824592

namespace A128710

/-- `abs((A002260(n+1)+1)*A130595(n))` -/
def P3994676563850824592.Spec : Prop :=
  ∀ n, P3994676563850824592.a n = A128710 n

end A128710

/-!
# A128711: Expansion of phi(x) * psi(x^4) * phi(-x^4)^4 in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A128711, there is no canonical definition to state claims against.
-/

/-! ## A128711.P8190914543839198575

`(-1)^n*A030207(2*n+1)`
-/

namespace A128711.P8190914543839198575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A030207 (2 * n + 1)

end

end A128711.P8190914543839198575

/-! ## A128711.P17066166012893110550

`A030207(xor(1, 2*n))/(-1)^n`
-/

namespace A128711.P17066166012893110550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030207 (Nat.xor 1 (2 * n)) : ℚ) / ((-1) ^ n : ℚ)

end

end A128711.P17066166012893110550

/-! ## A128711.P16726079431057413061

`A030207(2*n+1)*A033999(n)`
-/

namespace A128711.P16726079431057413061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030207 (2 * n + 1) * A033999 n

end

end A128711.P16726079431057413061

/-! ## A128711.P6187152072165522527

`A030207(2*n+1)*A056594(2*n)`
-/

namespace A128711.P6187152072165522527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030207 (2 * n + 1) * A056594 (2 * n)

end

end A128711.P6187152072165522527

/-! ## A128711.P1702930932691626863

`A030207(2*n+1)/Δ[A001511(n+1)]`
-/

namespace A128711.P1702930932691626863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030207 (2 * n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A128711.P1702930932691626863

/-! ## A128711.P5058549661612219269

`A030207(2*n+1)*A294653(A006519(n+1))`
-/

namespace A128711.P5058549661612219269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030207 (2 * n + 1) * A294653 (A006519 (n + 1)).toNat

end

end A128711.P5058549661612219269

/-!
# A128712: Expansion of q^(-1/8)* eta(q)^5* eta(q^2)^3/ eta(q^4)^2 in powers of q.

The programs for A128712, there is no canonical definition to state claims against.
-/

/-! ## A128712.P14544410031967877886

`A128711(4*n)`
-/

namespace A128712.P14544410031967877886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128711 (4 * n)

end

end A128712.P14544410031967877886

/-! ## A128712.P4893709234781099804

`A128711(A008574(n))-A000007(n)`
-/

namespace A128712.P4893709234781099804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128711 (A008574 n).toNat - A000007 n

end

end A128712.P4893709234781099804

/-! ## A128712.P13854559134317440

`A128711(A008586(n))%A006094(n+1)`
-/

namespace A128712.P13854559134317440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128711 (A008586 n).toNat) (A006094 (n + 1))

end

end A128712.P13854559134317440

/-! ## A128712.P6607585193747999569

`A128711(A008574(n))^A276088(A004273(n))`
-/

namespace A128712.P6607585193747999569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128711 (A008574 n).toNat : ℚ) ^ (A276088 (A004273 n).toNat : ℤ)

end

end A128712.P6607585193747999569

/-! ## A128712.P7432837795440766622

`A128711(A008574(n)+A000007(n))+A000007(n)`
-/

namespace A128712.P7432837795440766622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128711 (A008574 n + A000007 n).toNat + A000007 n

end

end A128712.P7432837795440766622

/-! ## A128712.P13255440183970596692

`A030207(8*n+1)`
-/

namespace A128712.P13255440183970596692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030207 (8 * n + 1)

end

end A128712.P13255440183970596692

/-! ## A128712.P7909131615103142335

`A030207(A017077(n))%A033846(n+1)`
-/

namespace A128712.P7909131615103142335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030207 (A017077 n).toNat) (A033846 (n + 1))

end

end A128712.P7909131615103142335

/-! ## A128712.P855738724734422346

`A128711(A008586(n))%A099359(n)`
-/

namespace A128712.P855738724734422346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128711 (A008586 n).toNat) (A099359 n)

end

end A128712.P855738724734422346

/-!
# A128713: Expansion of q^(-3/8)* eta(q)^7* eta(q^4)^2/ eta(q^2)^3 in powers of q.

The programs for A128713, there is no canonical definition to state claims against.
-/

/-! ## A128713.P17959062935435126089

`A128711(4*n+1)/2`
-/

namespace A128713.P17959062935435126089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128711 (4 * n + 1) : ℚ) / 2

end

end A128713.P17959062935435126089

/-! ## A128713.P4122245840140965824

`-(A030207(A017101(n))/2)`
-/

namespace A128713.P4122245840140965824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A030207 (A017101 n).toNat : ℚ) / 2)

end

end A128713.P4122245840140965824

/-! ## A128713.P7327592809012601603

`A014289(2*n+1)-A030207(A017101(n))/2`
-/

namespace A128713.P7327592809012601603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014289 (2 * n + 1) : ℚ) - (A030207 (A017101 n).toNat : ℚ) / 2

end

end A128713.P7327592809012601603

/-! ## A128713.P8769357557701779549

`A309686(A320001(n+1))-A030207(A017101(n))/2`
-/

namespace A128713.P8769357557701779549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309686 (A320001 (n + 1)).toNat : ℚ) - (A030207 (A017101 n).toNat : ℚ) / 2

end

end A128713.P8769357557701779549

/-! ## A128713.P14231221929541464275

`A198517(A073575(3*n+1))-A030207(A017101(n))/2`
-/

namespace A128713.P14231221929541464275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198517 (A073575 (3 * n + 1)).toNat : ℚ) - (A030207 (A017101 n).toNat : ℚ) / 2

end

end A128713.P14231221929541464275

/-!
# A128714: Number of skew Dyck paths of semilength n ending with a left step.

The programs for A128714, the canonical program `A128714.P13217542877390641147` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128714 has offset 0).

The definition of A128714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128714.P13217542877390641147

`Δ[A033321(abs(1-n))]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A128714

/-- `Δ[A033321(abs(1-n))]` -/
def P13217542877390641147.Spec : Prop :=
  ∀ n, P13217542877390641147.a n = A128714 n

theorem P13217542877390641147.correct : P13217542877390641147.Spec := by
  intro n
  simp only [A128714]

end A128714

/-! ## A128714.P14934204089684934764

`A002212(n)-A033321(n)`
-/

namespace A128714.P14934204089684934764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n - A033321 n

end

end A128714.P14934204089684934764

namespace A128714

/-- `A002212(n)-A033321(n)` -/
def P14934204089684934764.Spec : Prop :=
  ∀ n, P14934204089684934764.a n = A128714 n

end A128714

/-! ## A128714.P13099834438250713693

`A025238(n+1)%A033321(n)`
-/

namespace A128714.P13099834438250713693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025238 (n + 1)) (A033321 n)

end

end A128714.P13099834438250713693

namespace A128714

/-- `A025238(n+1)%A033321(n)` -/
def P13099834438250713693.Spec : Prop :=
  ∀ n, P13099834438250713693.a n = A128714 n

end A128714

/-! ## A128714.P11155450779896406729

`A002215(A004273(n)+1)-A033321(n)`
-/

namespace A128714.P11155450779896406729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002215 (A004273 n + 1).toNat - A033321 n

end

end A128714.P11155450779896406729

namespace A128714

/-- `A002215(A004273(n)+1)-A033321(n)` -/
def P11155450779896406729.Spec : Prop :=
  ∀ n, P11155450779896406729.a n = A128714 n

end A128714

/-! ## A128714.P13048388432817352254

`A033321(n)-A033321(A028310(n)-1)`
-/

namespace A128714.P13048388432817352254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033321 n - A033321 (A028310 n - 1).toNat

end

end A128714.P13048388432817352254

namespace A128714

/-- `A033321(n)-A033321(A028310(n)-1)` -/
def P13048388432817352254.Spec : Prop :=
  ∀ n, P13048388432817352254.a n = A128714 n

end A128714

/-! ## A128714.P11406508674633391846

`A129167(A000007(n)+n)-A181768(n)`
-/

namespace A128714.P11406508674633391846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129167 (A000007 n + (n : ℤ)).toNat - A181768 n

end

end A128714.P11406508674633391846

namespace A128714

/-- `A129167(A000007(n)+n)-A181768(n)` -/
def P11406508674633391846.Spec : Prop :=
  ∀ n, P11406508674633391846.a n = A128714 n

end A128714

/-! ## A128714.P12931283739000562600

`A033321(n)-A033321(A004273(n)-n)`
-/

namespace A128714.P12931283739000562600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033321 n - A033321 (A004273 n - (n : ℤ)).toNat

end

end A128714.P12931283739000562600

namespace A128714

/-- `A033321(n)-A033321(A004273(n)-n)` -/
def P12931283739000562600.Spec : Prop :=
  ∀ n, P12931283739000562600.a n = A128714 n

end A128714

/-! ## A128714.P16621077737355479611

`A033321(n)-A033321(n-A057427(n))`
-/

namespace A128714.P16621077737355479611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033321 n - A033321 ((n : ℤ) - A057427 n).toNat

end

end A128714.P16621077737355479611

namespace A128714

/-- `A033321(n)-A033321(n-A057427(n))` -/
def P16621077737355479611.Spec : Prop :=
  ∀ n, P16621077737355479611.a n = A128714 n

end A128714

/-! ## A128714.P3276927990257663442

`A002212(n)+A129167(n)-∑[A002212(n)]`
-/

namespace A128714.P3276927990257663442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n + (A129167 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128714.P3276927990257663442

namespace A128714

/-- `A002212(n)+A129167(n)-∑[A002212(n)]` -/
def P3276927990257663442.Spec : Prop :=
  ∀ n, P3276927990257663442.a n = A128714 n

end A128714

/-! ## A128714.P3876528381204925600

`(A002212(n)%A007317(n+1))%A033321(n)`
-/

namespace A128714.P3876528381204925600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A002212 n) (A007317 (n + 1))) (A033321 n)

end

end A128714.P3876528381204925600

namespace A128714

/-- `(A002212(n)%A007317(n+1))%A033321(n)` -/
def P3876528381204925600.Spec : Prop :=
  ∀ n, P3876528381204925600.a n = A128714 n

end A128714

/-! ## A128714.P17419103176185702392

`A128730(n)-A128737(n)`
-/

namespace A128714.P17419103176185702392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128730 n - A128737 n

end

end A128714.P17419103176185702392

namespace A128714

/-- `A128730(n)-A128737(n)` -/
def P17419103176185702392.Spec : Prop :=
  ∀ n, P17419103176185702392.a n = A128714 n

end A128714

/-! ## A128714.P3814143372952658537

`A128732(n)-A128734(n)`
-/

namespace A128714.P3814143372952658537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128732 n - A128734 n

end

end A128714.P3814143372952658537

namespace A128714

/-- `A128732(n)-A128734(n)` -/
def P3814143372952658537.Spec : Prop :=
  ∀ n, P3814143372952658537.a n = A128714 n

end A128714

/-! ## A128714.P10154083336399033556

`2*A128732(n)-A128740(n)`
-/

namespace A128714.P10154083336399033556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128732 n - A128740 n

end

end A128714.P10154083336399033556

namespace A128714

/-- `2*A128732(n)-A128740(n)` -/
def P10154083336399033556.Spec : Prop :=
  ∀ n, P10154083336399033556.a n = A128714 n

end A128714

/-! ## A128714.P4438454020999801325

`A128740(n)-2*A128734(n)`
-/

namespace A128714.P4438454020999801325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128740 n - 2 * A128734 n

end

end A128714.P4438454020999801325

namespace A128714

/-- `A128740(n)-2*A128734(n)` -/
def P4438454020999801325.Spec : Prop :=
  ∀ n, P4438454020999801325.a n = A128714 n

end A128714

/-! ## A128714.P15548015442121520021

`2*A128732(n)-Δ[A128726(n)]`
-/

namespace A128714.P15548015442121520021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128732 n - (f1 (n + 1) - f1 n)

end

end A128714.P15548015442121520021

namespace A128714

/-- `2*A128732(n)-Δ[A128726(n)]` -/
def P15548015442121520021.Spec : Prop :=
  ∀ n, P15548015442121520021.a n = A128714 n

end A128714

/-! ## A128714.P10016351849437322410

`Δ[A128726(n)]-2*A128734(n)`
-/

namespace A128714.P10016351849437322410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A128734 n

end

end A128714.P10016351849437322410

namespace A128714

/-- `Δ[A128726(n)]-2*A128734(n)` -/
def P10016351849437322410.Spec : Prop :=
  ∀ n, P10016351849437322410.a n = A128714 n

end A128714

/-! ## A128714.P6670334356610868090

`A110877(∑[n])-A110877(A161680(n))`
-/

namespace A128714.P6670334356610868090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110877 (∑ j ∈ Finset.range (n + 1), f1 j) - A110877 (A161680 n).toNat

end

end A128714.P6670334356610868090

namespace A128714

/-- `A110877(∑[n])-A110877(A161680(n))` -/
def P6670334356610868090.Spec : Prop :=
  ∀ n, P6670334356610868090.a n = A128714 n

end A128714

/-! ## A128714.P9303331108762380205

`(A002212(n)%A033321(n))%A090344(n)²`
-/

namespace A128714.P9303331108762380205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A002212 n) (A033321 n)) (A090344 n ^ 2)

end

end A128714.P9303331108762380205

namespace A128714

/-- `(A002212(n)%A033321(n))%A090344(n)²` -/
def P9303331108762380205.Spec : Prop :=
  ∀ n, P9303331108762380205.a n = A128714 n

end A128714

/-!
# A128715: A131830 + A103451 - A000012 as infinite lower triangular matrices.

The programs for A128715, the canonical program `A128715.P7289910566905276765` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128715 has offset 0).

The definition of A128715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128715.P7289910566905276765

`A103516(n)+A014473(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A128715

/-- `A103516(n)+A014473(n)` -/
def P7289910566905276765.Spec : Prop :=
  ∀ n, P7289910566905276765.a n = A128715 n

theorem P7289910566905276765.correct : P7289910566905276765.Spec := by
  intro n
  simp only [A128715]

end A128715

/-! ## A128715.P7868844230135414618

`A131830(n)-log2(A154325(n))`
-/

namespace A128715.P7868844230135414618
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A131830 n : ℝ) - Real.logb 2 (A154325 n : ℝ)

end

end A128715.P7868844230135414618

namespace A128715

/-- `A131830(n)-log2(A154325(n))` -/
def P7868844230135414618.Spec : Prop :=
  ∀ n, P7868844230135414618.a n = (A128715 n : ℝ)

end A128715

/-! ## A128715.P5505329227030641358

`A144217(n+1)+A132044(n)`
-/

namespace A128715.P5505329227030641358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144217 (n + 1) + A132044 n

end

end A128715.P5505329227030641358

namespace A128715

/-- `A144217(n+1)+A132044(n)` -/
def P5505329227030641358.Spec : Prop :=
  ∀ n, P5505329227030641358.a n = A128715 n

end A128715

/-! ## A128715.P9020321126925258599

`A007318(n)+A103516(n)-1`
-/

namespace A128715.P9020321126925258599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A103516 n - 1)

end

end A128715.P9020321126925258599

namespace A128715

/-- `A007318(n)+A103516(n)-1` -/
def P9020321126925258599.Spec : Prop :=
  ∀ n, P9020321126925258599.a n = A128715 n

end A128715

/-! ## A128715.P4602842751733376885

`A103451(n)+A131830(n)-1`
-/

namespace A128715.P4602842751733376885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n + (A131830 n - 1)

end

end A128715.P4602842751733376885

namespace A128715

/-- `A103451(n)+A131830(n)-1` -/
def P4602842751733376885.Spec : Prop :=
  ∀ n, P4602842751733376885.a n = A128715 n

end A128715

/-! ## A128715.P16231350500616334770

`A131821(n+1)*A132044(n)`
-/

namespace A128715.P16231350500616334770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131821 (n + 1) * A132044 n

end

end A128715.P16231350500616334770

namespace A128715

/-- `A131821(n+1)*A132044(n)` -/
def P16231350500616334770.Spec : Prop :=
  ∀ n, P16231350500616334770.a n = A128715 n

end A128715

/-! ## A128715.P5541676389363841788

`2*A131830(n)-A132073(n)`
-/

namespace A128715.P5541676389363841788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131830 n - A132073 n

end

end A128715.P5541676389363841788

namespace A128715

/-- `2*A131830(n)-A132073(n)` -/
def P5541676389363841788.Spec : Prop :=
  ∀ n, P5541676389363841788.a n = A128715 n

end A128715

/-! ## A128715.P1758578079023793235

`A132749(n)+Δ[A056943(n)]`
-/

namespace A128715.P1758578079023793235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056943 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 n + (f1 (n + 1) - f1 n)

end

end A128715.P1758578079023793235

namespace A128715

/-- `A132749(n)+Δ[A056943(n)]` -/
def P1758578079023793235.Spec : Prop :=
  ∀ n, P1758578079023793235.a n = A128715 n

end A128715

/-! ## A128715.P893487934215499276

`A135227(n)+Δ[A193739(n)]`
-/

namespace A128715.P893487934215499276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135227 n + (f1 (n + 1) - f1 n)

end

end A128715.P893487934215499276

namespace A128715

/-- `A135227(n)+Δ[A193739(n)]` -/
def P893487934215499276.Spec : Prop :=
  ∀ n, P893487934215499276.a n = A128715 n

end A128715

/-! ## A128715.P14081513753934806851

`A131830(n)-A001221(A103444(n))`
-/

namespace A128715.P14081513753934806851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131830 n - A001221 (A103444 n).toNat

end

end A128715.P14081513753934806851

namespace A128715

/-- `A131830(n)-A001221(A103444(n))` -/
def P14081513753934806851.Spec : Prop :=
  ∀ n, P14081513753934806851.a n = A128715 n

end A128715

/-!
# A128716: Triangle where the n-th row, of n terms in order, contains consecutive multiples of n. The smallest term of row n is the smallest integer greater than or equal to the largest term of row (n-1), for n >= 2.

The programs for A128716, there is no canonical definition to state claims against.
-/

/-! ## A128716.P7031573263070635613

`∑[A010054(n)]*A132919(A187829(n+1))`
-/

namespace A128716.P7031573263070635613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A132919 (A187829 (n + 1)).toNat

end

end A128716.P7031573263070635613

/-! ## A128716.P868970325538338578

`A002024(n+1)*A132919(A187829(n+1))`
-/

namespace A128716.P868970325538338578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A132919 (A187829 (n + 1)).toNat

end

end A128716.P868970325538338578

/-! ## A128716.P3085533513430055927

`∑[A010054(A132945(n))]*A132919(n+1)`
-/

namespace A128716.P3085533513430055927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A132945 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A132919 (n + 1)

end

end A128716.P3085533513430055927

/-!
# A128717: Primes that yield another prime if one adds either the sum of its digits or the product of its digits.

The programs for A128717, the canonical program `A128717.P661086661280849448` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128717 has offset 1).

The definition of A128717 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1317 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128717.P661086661280849448

`∩[A048519(n+1), A157677(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A128717

/-- `∩[A048519(n+1), A157677(n+1)]` -/
def P661086661280849448.Spec : Prop :=
  ∀ n, (P661086661280849448.a n : ℤ) = A128717 (n + 1)

theorem P661086661280849448.correct : P661086661280849448.Spec := by
  intro n
  simp only [A128717, Nat.add_sub_cancel]

end A128717

/-! ## A128717.P4936313549200241914

`∩[A048519(n+1), A157676(n+1)]`
-/

namespace A128717.P4936313549200241914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128717.P4936313549200241914

namespace A128717

/-- `∩[A048519(n+1), A157676(n+1)]` -/
def P4936313549200241914.Spec : Prop :=
  ∀ n, (P4936313549200241914.a n : ℤ) = A128717 (n + 1)

end A128717

/-! ## A128717.P16642753172009787398

`∩[A047791(n+1), A157677(n+1)]`
-/

namespace A128717.P16642753172009787398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128717.P16642753172009787398

namespace A128717

/-- `∩[A047791(n+1), A157677(n+1)]` -/
def P16642753172009787398.Spec : Prop :=
  ∀ n, (P16642753172009787398.a n : ℤ) = A128717 (n + 1)

end A128717

/-! ## A128717.P12518260853617133184

`p?[∩[A047791(n+1), A157676(n+1)]]`
-/

namespace A128717.P12518260853617133184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047791 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157676 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A128717.P12518260853617133184

namespace A128717

/-- `p?[∩[A047791(n+1), A157676(n+1)]]` -/
def P12518260853617133184.Spec : Prop :=
  ∀ n, (P12518260853617133184.a n : ℤ) = A128717 (n + 1)

end A128717

/-!
# A128718: Triangle read by rows: T(n,k) is the number of skew Dyck paths of semilength n and having k UU's (doublerises) (n >= 1; 0 <= k <= n-1).

The programs for A128718, there is no canonical definition to state claims against.
-/

/-! ## A128718.P17647250327297312478

`A126182(∑[char[∑[n]]]²-(n+1))`
-/

namespace A128718.P17647250327297312478
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126182 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A128718.P17647250327297312478

/-! ## A128718.P261855011854648510

`A126182(A061579(n))%A052968(n)`
-/

namespace A128718.P261855011854648510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126182 (A061579 n).toNat) (A052968 n)

end

end A128718.P261855011854648510

/-! ## A128718.P14127037475172192838

`gcd(A025469(n), A126182(A061579(n)))`
-/

namespace A128718.P14127037475172192838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025469 n) (A126182 (A061579 n).toNat)

end

end A128718.P14127037475172192838

/-! ## A128718.P15628998795006840344

`lcm(A033999(n), A126182(A061579(n)))`
-/

namespace A128718.P15628998795006840344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A126182 (A061579 n).toNat)

end

end A128718.P15628998795006840344

/-!
# A128720: Number of paths in the first quadrant from (0,0) to (n,0) using steps U=(1,1), D=(1,-1), h=(1,0) and H=(2,0).

The programs for A128720, there is no canonical definition to state claims against.
-/

/-! ## A128720.P3565980092174226422

`A059345(n)-A106050(n+1)`
-/

namespace A128720.P3565980092174226422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059345 n - A106050 (n + 1)

end

end A128720.P3565980092174226422

/-! ## A128720.P1326323745115499619

`A132276(∑[n])`
-/

namespace A128720.P1326323745115499619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132276 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128720.P1326323745115499619

/-! ## A128720.P10545318700285934137

`A132276(A000217(n))^A070750(n+1)²`
-/

namespace A128720.P10545318700285934137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132276 (A000217 n).toNat : ℚ) ^ (A070750 (n + 1) ^ 2 : ℤ)

end

end A128720.P10545318700285934137

/-! ## A128720.P5233068960802553351

`A349136(2*(n+1))+A132276(A000217(n))`
-/

namespace A128720.P5233068960802553351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349136 (2 * (n + 1)) + A132276 (A000217 n).toNat

end

end A128720.P5233068960802553351

/-! ## A128720.P588009938724333229

`A001511(2*n+1)*A132276(A000217(n))`
-/

namespace A128720.P588009938724333229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) * A132276 (A000217 n).toNat

end

end A128720.P588009938724333229

/-! ## A128720.P8923415041337679542

`A132276(A000217(n))/A001511(A109613(n))`
-/

namespace A128720.P8923415041337679542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132276 (A000217 n).toNat : ℚ) / (A001511 (A109613 n).toNat : ℚ)

end

end A128720.P8923415041337679542

/-! ## A128720.P9790712212660592229

`A001222(A045328(n+1))*A132276(A000217(n))`
-/

namespace A128720.P9790712212660592229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A045328 (n + 1)).toNat * A132276 (A000217 n).toNat

end

end A128720.P9790712212660592229

/-! ## A128720.P29302042907936730

`A001222(A256267(n+1))*A132276(A000217(n))`
-/

namespace A128720.P29302042907936730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A256267 (n + 1)).toNat * A132276 (A000217 n).toNat

end

end A128720.P29302042907936730

/-! ## A128720.P11049583885172849698

`A059397(∑[n]+n)`
-/

namespace A128720.P11049583885172849698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059397 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A128720.P11049583885172849698

/-!
# A128721: Number of UUU's in all skew Dyck paths of semilength n.

The programs for A128721, there is no canonical definition to state claims against.
-/

/-! ## A128721.P1949933585153165636

`A128743(n)-A128752(n)`
-/

namespace A128721.P1949933585153165636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128743 n - A128752 n

end

end A128721.P1949933585153165636

/-! ## A128721.P2351484142264528994

`A128740(n)+∑[A128740(n)]-A128752(n)`
-/

namespace A128721.P2351484142264528994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128740 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128740 n + (∑ j ∈ Finset.range (n + 1), f1 j - A128752 n)

end

end A128721.P2351484142264528994

/-! ## A128721.P10275751920269475373

`A128740(n)+A128726(n+1)-A128752(n)`
-/

namespace A128721.P10275751920269475373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128740 n + A128726 (n + 1) - A128752 n

end

end A128721.P10275751920269475373

/-! ## A128721.P13799710911875136867

`A128743(n)+A128752(n)*A153881(n+1)`
-/

namespace A128721.P13799710911875136867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128743 n + A128752 n * A153881 (n + 1)

end

end A128721.P13799710911875136867

/-! ## A128721.P13587905851494668178

`A128726(n+1)+Δ[A128726(n)]-A128752(n)`
-/

namespace A128721.P13587905851494668178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128726 (n + 1) + (f1 (n + 1) - f1 n) - A128752 n

end

end A128721.P13587905851494668178

/-!
# A128722: Triangle read by rows: T(n,k) is the number of skew Dyck paths of semilength n and having k hills (i.e., peaks at level 1) (0 <= k <= n).

The programs for A128722, there is no canonical definition to state claims against.
-/

/-! ## A128722.P19163475129694181

`A244361(A134380(n+1))-A117707(A025581(n))`
-/

namespace A128722.P19163475129694181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244361 (A134380 (n + 1)).toNat - A117707 (A025581 n).toNat

end

end A128722.P19163475129694181

/-!
# A128723: Number of skew Dyck paths of semilength n having no peaks at level 1.

The programs for A128723, there is no canonical definition to state claims against.
-/

/-! ## A128723.P1415920242739565603

`ratio[A011782(n)]*A117641(n)`
-/

namespace A128723.P1415920242739565603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A117641 n : ℚ)

end

end A128723.P1415920242739565603

/-! ## A128723.P6730032857874520834

`A036453(n+1)*A117641(n)`
-/

namespace A128723.P6730032857874520834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A117641 n

end

end A128723.P6730032857874520834

/-! ## A128723.P9977373999483659342

`A104435(n+1)*A117641(n)`
-/

namespace A128723.P9977373999483659342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104435 (n + 1) * A117641 n

end

end A128723.P9977373999483659342

/-! ## A128723.P13750372594558064252

`A117641(n)*A127750(2*n)`
-/

namespace A128723.P13750372594558064252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117641 n * A127750 (2 * n)

end

end A128723.P13750372594558064252

/-! ## A128723.P14120509651139449643

`A036452(2*n+1)*A117641(n)`
-/

namespace A128723.P14120509651139449643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (2 * n + 1) * A117641 n

end

end A128723.P14120509651139449643

/-! ## A128723.P2232898880479565914

`A020639(A001316(n))*A117641(n)`
-/

namespace A128723.P2232898880479565914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001316 n).toNat * A117641 n

end

end A128723.P2232898880479565914

/-! ## A128723.P15796873623409173497

`A020639(A008574(n))*A117641(n)`
-/

namespace A128723.P15796873623409173497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008574 n).toNat * A117641 n

end

end A128723.P15796873623409173497

/-! ## A128723.P2525560675522015062

`A020639(A092346(n))*A117641(n)`
-/

namespace A128723.P2525560675522015062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A092346 n).toNat * A117641 n

end

end A128723.P2525560675522015062

/-! ## A128723.P3566769988970261209

`A020639(A137688(n))*A117641(n)`
-/

namespace A128723.P3566769988970261209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A137688 n).toNat * A117641 n

end

end A128723.P3566769988970261209

/-! ## A128723.P7166896504738451410

`A020639(A000010(n+1))*A117641(n)`
-/

namespace A128723.P7166896504738451410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 1)).toNat * A117641 n

end

end A128723.P7166896504738451410

/-! ## A128723.P15331345962235042909

`A117641(n)*A292563(A292563(n)-1)`
-/

namespace A128723.P15331345962235042909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117641 n * A292563 (A292563 n - 1).toNat

end

end A128723.P15331345962235042909

/-! ## A128723.P2930676404558477780

`A068875(n)/A000108(n)*A117641(n)`
-/

namespace A128723.P2930676404558477780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068875 n : ℚ) / (A000108 n : ℚ) * (A117641 n : ℚ)

end

end A128723.P2930676404558477780

/-! ## A128723.P11414577296228417606

`A117641(n)+A117641(n)%A002212(n)`
-/

namespace A128723.P11414577296228417606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117641 n + Int.tmod (A117641 n) (A002212 n)

end

end A128723.P11414577296228417606

/-!
# A128725: Number of skew Dyck paths of semilength n having no LL's.

The programs for A128725, there is no canonical definition to state claims against.
-/

/-! ## A128725.P8429403411232547951

`A128724(A022856(n+2))`
-/

namespace A128725.P8429403411232547951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128724 (A022856 (n + 2)).toNat

end

end A128725.P8429403411232547951

/-! ## A128725.P4843831380331470276

`A128724(∑[n]+1-A004275(n))`
-/

namespace A128725.P4843831380331470276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128724 (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - A004275 n).toNat

end

end A128725.P4843831380331470276

/-! ## A128725.P4654936792115895712

`A128724(∑[A004274(n)]-A161680(n))`
-/

namespace A128725.P4654936792115895712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128724 (∑ j ∈ Finset.range (n + 1), f1 j - A161680 n).toNat

end

end A128725.P4654936792115895712

/-! ## A128725.P1097471879627360031

`A128724(A133263(n)-A004274(n+1))`
-/

namespace A128725.P1097471879627360031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128724 (A133263 n - A004274 (n + 1)).toNat

end

end A128725.P1097471879627360031

/-! ## A128725.P1127240786340861642

`A128724(lt[A100953(n+3), A128724(n)+3])`
-/

namespace A128725.P1127240786340861642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100953 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128724 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128724 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A128725.P1127240786340861642

/-!
# A128726: Number of LL's in all skew Dyck paths of semilength n.

The programs for A128726, there is no canonical definition to state claims against.
-/

/-! ## A128726.P11224650859370575509

`∑[A128740(abs(1-n))]`
-/

namespace A128726.P11224650859370575509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128740 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128726.P11224650859370575509

/-! ## A128726.P11741291844977871636

`A128740(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A128726.P11741291844977871636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A128740 (n - 1) + a (n - 1)

end

end A128726.P11741291844977871636

/-! ## A128726.P17600417111697091522

`A128732(n)-A128730(n)`
-/

namespace A128726.P17600417111697091522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128732 n - A128730 n

end

end A128726.P17600417111697091522

/-! ## A128726.P16739482121738268467

`A128734(n)-A128737(n)`
-/

namespace A128726.P16739482121738268467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128734 n - A128737 n

end

end A128726.P16739482121738268467

/-! ## A128726.P2619211030919951166

`A128732(n)%A128730(A233583(n+1))`
-/

namespace A128726.P2619211030919951166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128732 n) (A128730 (A233583 (n + 1)).toNat)

end

end A128726.P2619211030919951166

/-! ## A128726.P2946739386349509245

`A128714(n)+A128734(n)-A128730(n)`
-/

namespace A128726.P2946739386349509245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128714 n + (A128734 n - A128730 n)

end

end A128726.P2946739386349509245

/-! ## A128726.P8256400386401743239

`∑[A128740(n)]-A128740(n)`
-/

namespace A128726.P8256400386401743239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128740 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A128740 n

end

end A128726.P8256400386401743239

/-! ## A128726.P7132539272592156638

`A085362(n)-(A128730(n)+A126568(n))`
-/

namespace A128726.P7132539272592156638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085362 n - (A128730 n + A126568 n)

end

end A128726.P7132539272592156638

/-! ## A128726.P14980036236792529081

`A128740(n)-(A128734(n)+A128730(n))`
-/

namespace A128726.P14980036236792529081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128740 n - (A128734 n + A128730 n)

end

end A128726.P14980036236792529081

/-!
# A128727: Triangle read by rows: T(n,k) is the number of skew Dyck paths of semilength n having k DDU and LDU's.

The programs for A128727, there is no canonical definition to state claims against.
-/

/-! ## A128727.P12709172080757084839

`∏{e}[ceil(2^(n-1)), A126177(#)]`
-/

namespace A128727.P12709172080757084839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A126177 (Nat.factorization (f1 n).natAbs p)

end

end A128727.P12709172080757084839

/-!
# A128729: Number of skew Dyck paths of semilength n with no UDL's.

The programs for A128729, there is no canonical definition to state claims against.
-/

/-! ## A128729.P420831243720201579

`A128728(∑[ceil(n/3)]+floor(n/3))`
-/

namespace A128729.P420831243720201579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128728 (∑ j ∈ Finset.range (n + 1), f1 j + ⌊(n : ℚ) / 3⌋).toNat

end

end A128729.P420831243720201579

/-! ## A128729.P16279044817069333684

`A274484(A028310(A002998(n)))`
-/

namespace A128729.P16279044817069333684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274484 (A028310 (A002998 n).toNat).toNat

end

end A128729.P16279044817069333684

/-! ## A128729.P4795860644826734487

`A274484(A028310(n)^A189788(n))`
-/

namespace A128729.P4795860644826734487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274484 (SequenceMachineLib.roundAway ((A028310 n : ℚ) ^ (A189788 n : ℤ))).toNat

end

end A128729.P4795860644826734487

/-! ## A128729.P17470042324324652273

`A274484(gcd(A002998(n), A266489(n)))`
-/

namespace A128729.P17470042324324652273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274484 (Int.gcd (A002998 n) (A266489 n))

end

end A128729.P17470042324324652273

/-!
# A128730: Number of UDL's in all skew Dyck paths of semilength n.

The programs for A128730, there is no canonical definition to state claims against.
-/

/-! ## A128730.P375659679256365080

`A128737(n)+A128714(n)`
-/

namespace A128730.P375659679256365080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128737 n + A128714 n

end

end A128730.P375659679256365080

/-! ## A128730.P15181812768634604467

`A128732(n)-A128726(n)`
-/

namespace A128730.P15181812768634604467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128732 n - A128726 n

end

end A128730.P15181812768634604467

/-! ## A128730.P11786674434427398847

`A128726(n)+A138415(n)-A057427(n)`
-/

namespace A128730.P11786674434427398847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128726 n + (A138415 n - A057427 n)

end

end A128730.P11786674434427398847

/-! ## A128730.P12096933290965993595

`A128714(n)+A128734(n)-A128726(n)`
-/

namespace A128730.P12096933290965993595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128714 n + (A128734 n - A128726 n)

end

end A128730.P12096933290965993595

/-! ## A128730.P54675616680276397

`A085362(n)-(A128726(n)+A126568(n))`
-/

namespace A128730.P54675616680276397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085362 n - (A128726 n + A126568 n)

end

end A128730.P54675616680276397

/-! ## A128730.P2544149933209276026

`A128740(n)-(A128734(n)+A128726(n))`
-/

namespace A128730.P2544149933209276026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128740 n - (A128734 n + A128726 n)

end

end A128730.P2544149933209276026

/-!
# A128731: Triangle read by rows: T(n,k) is the number of skew Dyck paths of semilength n having k DL's (n>=0; 0<=k<=floor(n/2)).

The programs for A128731, there is no canonical definition to state claims against.
-/

/-! ## A128731.P3993970629360217637

`A119245(n)+A102683(A000108(n))`
-/

namespace A128731.P3993970629360217637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119245 n + A102683 (A000108 n).toNat

end

end A128731.P3993970629360217637

/-! ## A128731.P1293174423964295110

`A217096(A007051(n))+A119245(n)`
-/

namespace A128731.P1293174423964295110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217096 (A007051 n).toNat + A119245 n

end

end A128731.P1293174423964295110

/-! ## A128731.P11059076685118598540

`A235127(A005317(n))+A119245(n)`
-/

namespace A128731.P11059076685118598540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235127 (A005317 n).toNat + A119245 n

end

end A128731.P11059076685118598540

/-! ## A128731.P14930076095654540207

`A119245(n)+A119241(A174506(n))`
-/

namespace A128731.P14930076095654540207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119245 n + A119241 (A174506 n).toNat

end

end A128731.P14930076095654540207

/-!
# A128732: Number DL's in all skew Dyck paths of semilength n.

The programs for A128732, there is no canonical definition to state claims against.
-/

/-! ## A128732.P8667948385625953844

`A128734(n)+A128714(n)`
-/

namespace A128732.P8667948385625953844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128734 n + A128714 n

end

end A128732.P8667948385625953844

/-! ## A128732.P7271027022806764028

`A128730(n)+A128726(n)`
-/

namespace A128732.P7271027022806764028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128730 n + A128726 n

end

end A128732.P7271027022806764028

/-! ## A128732.P11313180874878487928

`A128734(n)+Δ[A033321(abs(1-n))]`
-/

namespace A128732.P11313180874878487928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033321 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128734 n + (f1 (n + 1) - f1 n)

end

end A128732.P11313180874878487928

/-! ## A128732.P3407057885027669243

`A002212(n)+A128734(n)-A033321(n)`
-/

namespace A128732.P3407057885027669243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n + (A128734 n - A033321 n)

end

end A128732.P3407057885027669243

/-! ## A128732.P2210871885770050594

`A128734(n)+A129167(A000007(n)+n)-A181768(n)`
-/

namespace A128732.P2210871885770050594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128734 n + (A129167 (A000007 n + (n : ℤ)).toNat - A181768 n)

end

end A128732.P2210871885770050594

/-! ## A128732.P7407994321402593650

`A128734(n)+(A002212(n)%A007317(n+1))%A033321(n)`
-/

namespace A128732.P7407994321402593650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128734 n + Int.tmod (Int.tmod (A002212 n) (A007317 (n + 1))) (A033321 n)

end

end A128732.P7407994321402593650

/-! ## A128732.P11834199392977418506

`A085362(n)-A126568(n)`
-/

namespace A128732.P11834199392977418506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085362 n - A126568 n

end

end A128732.P11834199392977418506

/-! ## A128732.P5389852642639261090

`A128740(n)-A128734(n)`
-/

namespace A128732.P5389852642639261090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128740 n - A128734 n

end

end A128732.P5389852642639261090

/-! ## A128732.P13926582843243401978

`Δ[A128726(n)]-A128734(n)`
-/

namespace A128732.P13926582843243401978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A128734 n

end

end A128732.P13926582843243401978

/-!
# A128734: Number of LD's in all skew Dyck paths of semilength n.

The programs for A128734, there is no canonical definition to state claims against.
-/

/-! ## A128734.P15881074890699479152

`A128737(n)+A128726(n)`
-/

namespace A128734.P15881074890699479152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128737 n + A128726 n

end

end A128734.P15881074890699479152

/-! ## A128734.P4148169688179482597

`A128732(n)-A128714(n)`
-/

namespace A128734.P4148169688179482597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128732 n - A128714 n

end

end A128734.P4148169688179482597

/-! ## A128734.P12981097000198727017

`A128732(n)-Δ[A033321(abs(1-n))]`
-/

namespace A128734.P12981097000198727017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033321 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128732 n - (f1 (n + 1) - f1 n)

end

end A128734.P12981097000198727017

/-! ## A128734.P15988698649066668867

`A033321(n)+A128732(n)-A002212(n)`
-/

namespace A128734.P15988698649066668867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033321 n + (A128732 n - A002212 n)

end

end A128734.P15988698649066668867

/-! ## A128734.P13003141620713480023

`A128726(n)+A128730(n)-A128714(n)`
-/

namespace A128734.P13003141620713480023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128726 n + (A128730 n - A128714 n)

end

end A128734.P13003141620713480023

/-! ## A128734.P12146712056502968909

`A128732(A028310(n))-(A002212(n)-A033321(n))`
-/

namespace A128734.P12146712056502968909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128732 (A028310 n).toNat - (A002212 n - A033321 n)

end

end A128734.P12146712056502968909

/-! ## A128734.P10415361713238159102

`A128732(n)-(A129167(A000007(n)+n)-A181768(n))`
-/

namespace A128734.P10415361713238159102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128732 n - (A129167 (A000007 n + (n : ℤ)).toNat - A181768 n)

end

end A128734.P10415361713238159102

/-! ## A128734.P1213393192221846787

`A128740(n)-A128732(n)`
-/

namespace A128734.P1213393192221846787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128740 n - A128732 n

end

end A128734.P1213393192221846787

/-! ## A128734.P7132674077243060017

`Δ[A128726(n)]-A128732(n)`
-/

namespace A128734.P7132674077243060017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A128732 n

end

end A128734.P7132674077243060017

/-! ## A128734.P5934140082578513165

`Δ[A128732(n)-A128730(n)]-A128732(n)`
-/

namespace A128734.P5934140082578513165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128732 n - A128730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A128732 n

end

end A128734.P5934140082578513165

/-!
# A128735: Triangle read by rows: T(n,k) is the number of skew Dyck paths of semilength n and having k LDU's (n >= 0; 0 <= k <= floor((n-1)/3) for n >= 1).

The programs for A128735, there is no canonical definition to state claims against.
-/

/-! ## A128735.P15893437672362707456

`A109880(a(n-1)+4)` with `a(0)=1, a(1)=3, a(2)=10, a(3)=35, a(4)=1`
-/

namespace A128735.P15893437672362707456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 10, 35, 1] fun n a =>
  A109880 (a (n - 1) + 4).toNat

end

end A128735.P15893437672362707456

/-! ## A128735.P7394281317928455938

`A109880(n*a(n-1))` with `a(0)=1, a(1)=3, a(2)=10, a(3)=35, a(4)=1`
-/

namespace A128735.P7394281317928455938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 10, 35, 1] fun n a =>
  A109880 ((n : ℤ) * a (n - 1)).toNat

end

end A128735.P7394281317928455938

/-!
# A128736: Number of skew Dyck paths of semilength n and having no LDU's.

The programs for A128736, there is no canonical definition to state claims against.
-/

/-! ## A128736.P17579996561701937419

`A128735(A002264(∑[n]))`
-/

namespace A128736.P17579996561701937419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128735 (A002264 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A128736.P17579996561701937419

/-! ## A128736.P15466747820506311826

`A128735(∑[∑[A022003(n)]])`
-/

namespace A128736.P15466747820506311826
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128735 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A128736.P15466747820506311826

/-! ## A128736.P6548753983862966059

`A128735(floor(A000217(n)/3))`
-/

namespace A128736.P6548753983862966059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128735 ⌊(A000217 n : ℚ) / 3⌋.toNat

end

end A128736.P6548753983862966059

/-! ## A128736.P5330049395327043903

`A128735(A309685(2*(n+1)))`
-/

namespace A128736.P5330049395327043903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128735 (A309685 (2 * (n + 1))).toNat

end

end A128736.P5330049395327043903

/-!
# A128737: Number of LDU's in all skew Dyck paths of semilength n.

The programs for A128737, there is no canonical definition to state claims against.
-/

/-! ## A128737.P6720251311095807254

`A128730(n)-A128714(n)`
-/

namespace A128737.P6720251311095807254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128730 n - A128714 n

end

end A128737.P6720251311095807254

/-! ## A128737.P1581289446753094184

`A128734(n)-A128726(n)`
-/

namespace A128737.P1581289446753094184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128734 n - A128726 n

end

end A128737.P1581289446753094184

/-! ## A128737.P5723997110443152715

`A128734(n)-∑[A128740(abs(1-n))]`
-/

namespace A128737.P5723997110443152715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128740 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128734 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128737.P5723997110443152715

/-! ## A128737.P1038221720154794543

`A128730(n)-Δ[A033321(abs(1-n))]`
-/

namespace A128737.P1038221720154794543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033321 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128730 n - (f1 (n + 1) - f1 n)

end

end A128737.P1038221720154794543

/-! ## A128737.P4679357065781267600

`A128730(n+2)%A085362(n)`
-/

namespace A128737.P4679357065781267600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128730 (n + 2)) (A085362 n)

end

end A128737.P4679357065781267600

/-!
# A128738: Triangle read by rows: T(n,k) is the number of skew Dyck paths of semilength n having k DD's (0 <= k <= n-1 for n >= 1).

The programs for A128738, there is no canonical definition to state claims against.
-/

/-! ## A128738.P14689782286832958706

`A127288(A080248(n))+A112367(n)`
-/

namespace A128738.P14689782286832958706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127288 (A080248 n).toNat + A112367 n

end

end A128738.P14689782286832958706

/-!
# A128739: Number of skew Dyck paths of semilength n having no DD's.

The programs for A128739, there is no canonical definition to state claims against.
-/

/-! ## A128739.P8392740490134268335

`A128738(C(n, 2)+1)`
-/

namespace A128739.P8392740490134268335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128738 (Nat.choose n 2 + 1)

end

end A128739.P8392740490134268335

/-! ## A128739.P1882993499190886248

`A128738(∑[abs(1-n)])`
-/

namespace A128739.P1882993499190886248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128738 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A128739.P1882993499190886248

/-! ## A128739.P15286161793577500549

`A159768(A032559(n+1))+A075206(n+1)`
-/

namespace A128739.P15286161793577500549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159768 (A032559 (n + 1)).toNat + A075206 (n + 1)

end

end A128739.P15286161793577500549

/-! ## A128739.P7835430912374025908

`A075206(n+1)+A159771(n+1)+A011734(A159712(n))`
-/

namespace A128739.P7835430912374025908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075206 (n + 1) + (A159771 (n + 1) + A011734 (A159712 n).toNat)

end

end A128739.P7835430912374025908

/-! ## A128739.P5601913192938050729

`A075206(n+1)+A159771(n+1)+A011734(A185544(n))`
-/

namespace A128739.P5601913192938050729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075206 (n + 1) + (A159771 (n + 1) + A011734 (A185544 n).toNat)

end

end A128739.P5601913192938050729

/-!
# A128740: Number of DD's in all skew Dyck paths of semilength n.

The programs for A128740, there is no canonical definition to state claims against.
-/

/-! ## A128740.P13398332364642357860

`Δ[A128726(n)]`
-/

namespace A128740.P13398332364642357860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128740.P13398332364642357860

/-! ## A128740.P6318519541313980381

`A128734(n)+A128732(n)`
-/

namespace A128740.P6318519541313980381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128734 n + A128732 n

end

end A128740.P6318519541313980381

/-! ## A128740.P206699851941171539

`Δ[A128732(n)-A128730(n)]`
-/

namespace A128740.P206699851941171539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128732 n - A128730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128740.P206699851941171539

/-! ## A128740.P747895580882169230

`A128726(n+1)-A128726(n)`
-/

namespace A128740.P747895580882169230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128726 (n + 1) - A128726 n

end

end A128740.P747895580882169230

/-! ## A128740.P270067812773979140

`A128714(n)+2*A128734(n)`
-/

namespace A128740.P270067812773979140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128714 n + 2 * A128734 n

end

end A128740.P270067812773979140

/-! ## A128740.P14818270297209899949

`2*A128732(n)-A128714(n)`
-/

namespace A128740.P14818270297209899949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128732 n - A128714 n

end

end A128740.P14818270297209899949

/-! ## A128740.P14038302129943150923

`Δ[Δ[A128730(n)]]-A085362(n)`
-/

namespace A128740.P14038302129943150923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128730 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A085362 n

end

end A128740.P14038302129943150923

/-!
# A128741: Triangle read by rows: T(n,k) is the number of skew Dyck paths of semilength n and having k returns to the x-axis (1 <= k <= n).

The programs for A128741, there is no canonical definition to state claims against.
-/

/-! ## A128741.P10226038405644238471

`A125005(A104684(n))+A092392(n)`
-/

namespace A128741.P10226038405644238471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125005 (A104684 n).toNat + A092392 n

end

end A128741.P10226038405644238471

/-! ## A128741.P4524291435795107837

`A173677(A082608(n+4))+A092392(n)`
-/

namespace A128741.P4524291435795107837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173677 (A082608 (n + 4)).toNat + A092392 n

end

end A128741.P4524291435795107837

/-!
# A128742: Number of compositions of n which avoid the pattern 112.

The programs for A128742, there is no canonical definition to state claims against.
-/

/-! ## A128742.P3211027043323032891

`A025465(A049606(n))+A002843(n)`
-/

namespace A128742.P3211027043323032891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025465 (A049606 n).toNat + A002843 n

end

end A128742.P3211027043323032891

/-! ## A128742.P1932926860893548781

`A326531(A250408(n+1))+A002843(n)`
-/

namespace A128742.P1932926860893548781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326531 (A250408 (n + 1)).toNat + A002843 n

end

end A128742.P1932926860893548781

/-! ## A128742.P9812659913409437192

`A277025(A185238(3*(n+1)))+A002843(n)`
-/

namespace A128742.P9812659913409437192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277025 (A185238 (3 * (n + 1))).toNat + A002843 n

end

end A128742.P9812659913409437192

/-! ## A128742.P6991203844702408729

`A293137(A293735(n))`
-/

namespace A128742.P6991203844702408729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 (A293735 n).toNat

end

end A128742.P6991203844702408729

/-! ## A128742.P5302021135436844457

`A321578(A320803(n))`
-/

namespace A128742.P5302021135436844457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321578 (A320803 n).toNat

end

end A128742.P5302021135436844457

/-!
# A128743: Number of UU's (i.e., doublerises) in all skew Dyck paths of semilength n.

The programs for A128743, the canonical program `A128743.P4794288623127083266` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128743 has offset 0).

The definition of A128743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128743.P5691105906328158671

`A128752(n)+A128721(n)`
-/

namespace A128743.P5691105906328158671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128752 n + A128721 n

end

end A128743.P5691105906328158671

namespace A128743

/-- `A128752(n)+A128721(n)` -/
def P5691105906328158671.Spec : Prop :=
  ∀ n, P5691105906328158671.a n = A128743 n

end A128743

/-! ## A128743.P7154821627076644612

`A128740(n)+∑[A128740(n)]`
-/

namespace A128743.P7154821627076644612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128740 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128740 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128743.P7154821627076644612

namespace A128743

/-- `A128740(n)+∑[A128740(n)]` -/
def P7154821627076644612.Spec : Prop :=
  ∀ n, P7154821627076644612.a n = A128743 n

end A128743

/-! ## A128743.P16870171530411002956

`A128740(n)+A128726(n+1)`
-/

namespace A128743.P16870171530411002956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128740 n + A128726 (n + 1)

end

end A128743.P16870171530411002956

namespace A128743

/-- `A128740(n)+A128726(n+1)` -/
def P16870171530411002956.Spec : Prop :=
  ∀ n, P16870171530411002956.a n = A128743 n

end A128743

/-! ## A128743.P13073462276817509113

`A128726(n+1)+Δ[A128726(n)]`
-/

namespace A128743.P13073462276817509113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128726 (n + 1) + (f1 (n + 1) - f1 n)

end

end A128743.P13073462276817509113

namespace A128743

/-- `A128726(n+1)+Δ[A128726(n)]` -/
def P13073462276817509113.Spec : Prop :=
  ∀ n, P13073462276817509113.a n = A128743 n

end A128743

/-! ## A128743.P4794288623127083266

`A026376(A028310(n))-A026378(A028310(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A128743

/-- `A026376(A028310(n))-A026378(A028310(n))` -/
def P4794288623127083266.Spec : Prop :=
  ∀ n, P4794288623127083266.a n = A128743 n

theorem P4794288623127083266.correct : P4794288623127083266.Spec := by
  intro n
  simp only [A128743]

end A128743

/-! ## A128743.P2010215626020924157

`A026374(A000982(2*n+1))-A026374(2*n²)`
-/

namespace A128743.P2010215626020924157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026374 (A000982 (2 * n + 1)).toNat - A026374 (2 * n ^ 2)

end

end A128743.P2010215626020924157

namespace A128743

/-- `A026374(A000982(2*n+1))-A026374(2*n²)` -/
def P2010215626020924157.Spec : Prop :=
  ∀ n, P2010215626020924157.a n = A128743 n

end A128743

/-!
# A128745: Triangle read by rows: T(n,k) is the number of skew Dyck paths of semilength n and having height of the last peak equal to k (1 <= k <= n).

The programs for A128745, there is no canonical definition to state claims against.
-/

/-! ## A128745.P14877174067037718446

`2^(n-C(∑[char[∑[n]]], 2))*A171486(n)`
-/

namespace A128745.P14877174067037718446
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) * (A171486 n : ℚ)

end

end A128745.P14877174067037718446

/-! ## A128745.P4722563623254563646

`A059268(n)*A171486(n)`
-/

namespace A128745.P4722563623254563646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A171486 n

end

end A128745.P4722563623254563646

/-! ## A128745.P7351773079573062661

`A000079(A002262(n))*A171486(n)`
-/

namespace A128745.P7351773079573062661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A171486 n

end

end A128745.P7351773079573062661

/-! ## A128745.P5331979010386357215

`A003958(A036561(n))*A171486(n)`
-/

namespace A128745.P5331979010386357215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A036561 n).toNat * A171486 n

end

end A128745.P5331979010386357215

/-! ## A128745.P218610225128097630

`A000079(A163351(n))*A171486(n)`
-/

namespace A128745.P218610225128097630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A163351 n).toNat * A171486 n

end

end A128745.P218610225128097630

/-! ## A128745.P2466600447969765167

`A130321(A061579(n))*A171486(n)`
-/

namespace A128745.P2466600447969765167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 (A061579 n).toNat * A171486 n

end

end A128745.P2466600447969765167

/-! ## A128745.P4541914811579907248

`A011782(A002260(n+1))*A171486(n)`
-/

namespace A128745.P4541914811579907248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat * A171486 n

end

end A128745.P4541914811579907248

/-!
# A128746: Height of the last peak summed over all skew Dyck paths of semilength n.

The programs for A128746, the canonical program `A128746.P14051206347353493942` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128746 has offset 1).

The definition of A128746 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128746.P14051206347353493942

`A045445(n+1)+∑[A045890(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A128746

/-- `A045445(n+1)+∑[A045890(n)]` -/
def P14051206347353493942.Spec : Prop :=
  ∀ n, P14051206347353493942.a n = A128746 (n + 1)

theorem P14051206347353493942.correct : P14051206347353493942.Spec := by
  intro n
  simp only [A128746, Nat.add_sub_cancel]

end A128746

/-! ## A128746.P9602602405621657198

`∑[2*A045890(n)-A045868(n)]`
-/

namespace A128746.P9602602405621657198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045890 n - A045868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128746.P9602602405621657198

namespace A128746

/-- `∑[2*A045890(n)-A045868(n)]` -/
def P9602602405621657198.Spec : Prop :=
  ∀ n, P9602602405621657198.a n = A128746 (n + 1)

end A128746

/-! ## A128746.P15645586631760677689

`A045445(n+1)+Δ[A039919(n+1)]`
-/

namespace A128746.P15645586631760677689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045445 (n + 1) + (f1 (n + 1) - f1 n)

end

end A128746.P15645586631760677689

namespace A128746

/-- `A045445(n+1)+Δ[A039919(n+1)]` -/
def P15645586631760677689.Spec : Prop :=
  ∀ n, P15645586631760677689.a n = A128746 (n + 1)

end A128746

/-! ## A128746.P3768576448374153100

`A002212(n+1)+2*A045445(n+1)`
-/

namespace A128746.P3768576448374153100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 (n + 1) + 2 * A045445 (n + 1)

end

end A128746.P3768576448374153100

namespace A128746

/-- `A002212(n+1)+2*A045445(n+1)` -/
def P3768576448374153100.Spec : Prop :=
  ∀ n, P3768576448374153100.a n = A128746 (n + 1)

end A128746

/-! ## A128746.P11278824009466466631

`Δ[A007317(n+1)]+2*A045445(n+1)`
-/

namespace A128746.P11278824009466466631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A045445 (n + 1)

end

end A128746.P11278824009466466631

namespace A128746

/-- `Δ[A007317(n+1)]+2*A045445(n+1)` -/
def P11278824009466466631.Spec : Prop :=
  ∀ n, P11278824009466466631.a n = A128746 (n + 1)

end A128746

/-! ## A128746.P11598651330044640590

`A045445(n+1)+A039919(n+2)-A039919(n+1)`
-/

namespace A128746.P11598651330044640590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045445 (n + 1) + (A039919 (n + 2) - A039919 (n + 1))

end

end A128746.P11598651330044640590

namespace A128746

/-- `A045445(n+1)+A039919(n+2)-A039919(n+1)` -/
def P11598651330044640590.Spec : Prop :=
  ∀ n, P11598651330044640590.a n = A128746 (n + 1)

end A128746

/-! ## A128746.P15338945417364558926

`A045445(n+1)+Δ[A002212(n+1)-A181768(n+1)]`
-/

namespace A128746.P15338945417364558926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 (n + 1) - A181768 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045445 (n + 1) + (f1 (n + 1) - f1 n)

end

end A128746.P15338945417364558926

namespace A128746

/-- `A045445(n+1)+Δ[A002212(n+1)-A181768(n+1)]` -/
def P15338945417364558926.Spec : Prop :=
  ∀ n, P15338945417364558926.a n = A128746 (n + 1)

end A128746

/-! ## A128746.P1218613700337178773

`Δ[2*A039919(n+1)-A007317(n+1)]`
-/

namespace A128746.P1218613700337178773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A039919 (n + 1) - A007317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128746.P1218613700337178773

namespace A128746

/-- `Δ[2*A039919(n+1)-A007317(n+1)]` -/
def P1218613700337178773.Spec : Prop :=
  ∀ n, P1218613700337178773.a n = A128746 (n + 1)

end A128746

/-! ## A128746.P18180943877830117805

`A045445(n+2)-(A045635(n+1)+A045445(n+1))`
-/

namespace A128746.P18180943877830117805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045445 (n + 2) - (A045635 (n + 1) + A045445 (n + 1))

end

end A128746.P18180943877830117805

namespace A128746

/-- `A045445(n+2)-(A045635(n+1)+A045445(n+1))` -/
def P18180943877830117805.Spec : Prop :=
  ∀ n, P18180943877830117805.a n = A128746 (n + 1)

end A128746

/-!
# A128748: Number of peaks at height >1 in all skew Dyck paths of semilength n.

The programs for A128748, the canonical program `A128748.P7166467053256492629` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128748 has offset 1).

The definition of A128748 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128748.P16482324749286334040

`Δ[A242586(n)-A129167(n)]`
-/

namespace A128748.P16482324749286334040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242586 n - A129167 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128748.P16482324749286334040

namespace A128748

/-- `Δ[A242586(n)-A129167(n)]` -/
def P16482324749286334040.Spec : Prop :=
  ∀ n, P16482324749286334040.a n = A128748 (n + 1)

end A128748

/-! ## A128748.P7166467053256492629

`Δ[A242586(n)-∑[A033321(n)]]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A128748

/-- `Δ[A242586(n)-∑[A033321(n)]]` -/
def P7166467053256492629.Spec : Prop :=
  ∀ n, P7166467053256492629.a n = A128748 (n + 1)

theorem P7166467053256492629.correct : P7166467053256492629.Spec := by
  intro n
  simp only [A128748, Nat.add_sub_cancel]

end A128748

/-! ## A128748.P10630087191544966345

`A026378(n+1)-Δ[A129167(n)]`
-/

namespace A128748.P10630087191544966345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129167 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026378 (n + 1) - (f1 (n + 1) - f1 n)

end

end A128748.P10630087191544966345

namespace A128748

/-- `A026378(n+1)-Δ[A129167(n)]` -/
def P10630087191544966345.Spec : Prop :=
  ∀ n, P10630087191544966345.a n = A128748 (n + 1)

end A128748

/-! ## A128748.P12416422946595167628

`Δ[A128732(n+1)]-A126568(n)`
-/

namespace A128748.P12416422946595167628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A126568 n

end

end A128748.P12416422946595167628

namespace A128748

/-- `Δ[A128732(n+1)]-A126568(n)` -/
def P12416422946595167628.Spec : Prop :=
  ∀ n, P12416422946595167628.a n = A128748 (n + 1)

end A128748

/-! ## A128748.P8634496402394416519

`Δ[A242586(n)]-A033321(n+1)`
-/

namespace A128748.P8634496402394416519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A033321 (n + 1)

end

end A128748.P8634496402394416519

namespace A128748

/-- `Δ[A242586(n)]-A033321(n+1)` -/
def P8634496402394416519.Spec : Prop :=
  ∀ n, P8634496402394416519.a n = A128748 (n + 1)

end A128748

/-! ## A128748.P2573248051857369487

`A128740(n+1)+A128732(n+1)`
-/

namespace A128748.P2573248051857369487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128740 (n + 1) + A128732 (n + 1)

end

end A128748.P2573248051857369487

namespace A128748

/-- `A128740(n+1)+A128732(n+1)` -/
def P2573248051857369487.Spec : Prop :=
  ∀ n, P2573248051857369487.a n = A128748 (n + 1)

end A128748

/-! ## A128748.P344014040957452538

`A026378(n+1)-A033321(n+1)`
-/

namespace A128748.P344014040957452538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026378 (n + 1) - A033321 (n + 1)

end

end A128748.P344014040957452538

namespace A128748

/-- `A026378(n+1)-A033321(n+1)` -/
def P344014040957452538.Spec : Prop :=
  ∀ n, P344014040957452538.a n = A128748 (n + 1)

end A128748

/-! ## A128748.P221762624833839499

`A128732(n+1)+Δ[A128726(n+1)]`
-/

namespace A128748.P221762624833839499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128732 (n + 1) + (f1 (n + 1) - f1 n)

end

end A128748.P221762624833839499

namespace A128748

/-- `A128732(n+1)+Δ[A128726(n+1)]` -/
def P221762624833839499.Spec : Prop :=
  ∀ n, P221762624833839499.a n = A128748 (n + 1)

end A128748

/-! ## A128748.P9412891192577589580

`A128734(n+1)+2*A128732(n+1)`
-/

namespace A128748.P9412891192577589580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128734 (n + 1) + 2 * A128732 (n + 1)

end

end A128748.P9412891192577589580

namespace A128748

/-- `A128734(n+1)+2*A128732(n+1)` -/
def P9412891192577589580.Spec : Prop :=
  ∀ n, P9412891192577589580.a n = A128748 (n + 1)

end A128748

/-! ## A128748.P6282730290705669692

`2*A128740(n+1)-A128734(n+1)`
-/

namespace A128748.P6282730290705669692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128740 (n + 1) - A128734 (n + 1)

end

end A128748.P6282730290705669692

namespace A128748

/-- `2*A128740(n+1)-A128734(n+1)` -/
def P6282730290705669692.Spec : Prop :=
  ∀ n, P6282730290705669692.a n = A128748 (n + 1)

end A128748

/-!
# A128749: Triangle read by rows: T(n,k) is the number of skew Dyck paths of semilength n having k ascents of length 1.

The programs for A128749, there is no canonical definition to state claims against.
-/

/-! ## A128749.P3885829887555305360

`A104580(n)*A153764(A187829(n+1))`
-/

namespace A128749.P3885829887555305360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104580 n * A153764 (A187829 (n + 1)).toNat

end

end A128749.P3885829887555305360

/-!
# A128750: Number of skew Dyck paths of semilength n having no ascents of length 1.

The programs for A128750, there is no canonical definition to state claims against.
-/

/-! ## A128750.P1648326467028013038

`A085139(n)-a(n-1)` with `a(0)=1`
-/

namespace A128750.P1648326467028013038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A085139 n - a (n - 1)

end

end A128750.P1648326467028013038

/-! ## A128750.P7805365404701789912

`2*A247172(n)-a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A128750.P7805365404701789912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  2 * A247172 n - a (n - 1)

end

end A128750.P7805365404701789912

/-! ## A128750.P3828212804350080357

`abs(∑[A033999(n)*A085139(n)])`
-/

namespace A128750.P3828212804350080357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A085139 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A128750.P3828212804350080357

/-! ## A128750.P2392177453164345247

`∑[A033999(n^3)*A085139(n)]*A033999(n)`
-/

namespace A128750.P2392177453164345247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n ^ 3) * A085139 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A128750.P2392177453164345247

/-! ## A128750.P14493498455022099615

`A128749(∑[n])`
-/

namespace A128750.P14493498455022099615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128749 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128750.P14493498455022099615

/-!
# A128752: Number of ascents of length at least 2 in all skew Dyck paths of semilength n.

The programs for A128752, there is no canonical definition to state claims against.
-/

/-! ## A128752.P184226782405640013

`A128743(n)-A128721(n)`
-/

namespace A128752.P184226782405640013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128743 n - A128721 n

end

end A128752.P184226782405640013

/-! ## A128752.P2542967525754024329

`A128740(n)+∑[A128740(n)]-A128721(n)`
-/

namespace A128752.P2542967525754024329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128740 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128740 n + (∑ j ∈ Finset.range (n + 1), f1 j - A128721 n)

end

end A128752.P2542967525754024329

/-! ## A128752.P5092294338956553286

`A128740(n)+A128726(n+1)-A128721(n)`
-/

namespace A128752.P5092294338956553286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128740 n + A128726 (n + 1) - A128721 n

end

end A128752.P5092294338956553286

/-! ## A128752.P12123512095584833073

`A128743(n)+A128721(n)*A153881(n+1)`
-/

namespace A128752.P12123512095584833073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128743 n + A128721 n * A153881 (n + 1)

end

end A128752.P12123512095584833073

/-! ## A128752.P14975789775590516767

`A128726(n+1)+Δ[A128726(n)]-A128721(n)`
-/

namespace A128752.P14975789775590516767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128726 (n + 1) + (f1 (n + 1) - f1 n) - A128721 n

end

end A128752.P14975789775590516767

/-! ## A128752.P16533656024886312194

`A163841(A133263(n))%A026378(A028310(n))`
-/

namespace A128752.P16533656024886312194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163841 (A133263 n).toNat) (A026378 (A028310 n).toNat)

end

end A128752.P16533656024886312194

/-!
# A128759: Least k such that the Jacobsthal function A048669(k) = n.

The programs for A128759, there is no canonical definition to state claims against.
-/

/-! ## A128759.P15325522882221844543

`A070971(n+1)/ceil(3/(n+1))`
-/

namespace A128759.P15325522882221844543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070971 (n + 1) : ℚ) / (⌈3 / (n + 1 : ℚ)⌉ : ℚ)

end

end A128759.P15325522882221844543

/-! ## A128759.P15812947907370837557

`gcd(A070971(n+1), A130706(n))`
-/

namespace A128759.P15812947907370837557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A070971 (n + 1)) (A130706 n)

end

end A128759.P15812947907370837557

/-! ## A128759.P389628146009388548

`floor(A070971(n+1)/A141044(n))`
-/

namespace A128759.P389628146009388548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A070971 (n + 1) : ℚ) / (A141044 n : ℚ)⌋

end

end A128759.P389628146009388548

/-! ## A128759.P6602507332788776382

`A070971(n+1)-A000038(∑{e}[n, #])`
-/

namespace A128759.P6602507332788776382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070971 (n + 1) - A000038 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A128759.P6602507332788776382

/-! ## A128759.P17055746924803913208

`gcd(a(n-1), A087583(n))*A070971(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A128759.P17055746924803913208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (Int.gcd (a (n - 1)) (A087583 n) : ℤ) * A070971 (n + 1)

end

end A128759.P17055746924803913208

/-!
# A128760: Number of ways to write n as the absolute difference of a power of 2 and a power of 3.

The programs for A128760, there is no canonical definition to state claims against.
-/

/-! ## A128760.P14004899587303309338

`A219551(n)+A134667(A320107(n+1))`
-/

namespace A128760.P14004899587303309338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219551 n + A134667 (A320107 (n + 1)).toNat

end

end A128760.P14004899587303309338

/-! ## A128760.P15852198805126774333

`A127739(A114043(n+1))%A288179(n+1)`
-/

namespace A128760.P15852198805126774333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127739 (A114043 (n + 1)).toNat) (A288179 (n + 1))

end

end A128760.P15852198805126774333

/-! ## A128760.P4510748228552785008

`val(A017425(A125220(2*n+1)), 2)`
-/

namespace A128760.P4510748228552785008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A017425 (A125220 (2 * n + 1)).toNat).toNat 2

end

end A128760.P4510748228552785008

/-! ## A128760.P14224349820192079254

`A282714(A121737(n+1))+A219551(n)`
-/

namespace A128760.P14224349820192079254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282714 (A121737 (n + 1)).toNat + A219551 n

end

end A128760.P14224349820192079254

/-!
# A128761: Number of compositions of n with parts in N which avoid the consecutive pattern 123.

The programs for A128761, there is no canonical definition to state claims against.
-/

/-! ## A128761.P13708078169403935004

`A100196(A153582(n))`
-/

namespace A128761.P13708078169403935004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A153582 n).toNat

end

end A128761.P13708078169403935004

/-! ## A128761.P4905275692632638511

`A100196(A000149(n)-floor(exp(n-γ)))`
-/

namespace A128761.P4905275692632638511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A000149 n - ⌊Real.exp ((n : ℝ) - Real.eulerMascheroniConstant)⌋).toNat

end

end A128761.P4905275692632638511

/-! ## A128761.P8435220246452925025

`A100196(A103819(n)+A028303(n))`
-/

namespace A128761.P8435220246452925025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A103819 n + A028303 n).toNat

end

end A128761.P8435220246452925025

/-! ## A128761.P15298602764465239229

`A100196(1-(A002387(n)-A000149(n)))`
-/

namespace A128761.P15298602764465239229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (1 - (A002387 n - A000149 n)).toNat

end

end A128761.P15298602764465239229

/-! ## A128761.P15808470375983488531

`A294922(A110725(n))`
-/

namespace A128761.P15808470375983488531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294922 (A110725 n).toNat

end

end A128761.P15808470375983488531

/-!
# A128763: Expansion of chi(q^5) * chi(q^10) / ( chi(q) * chi(q^2)) in powers of q where chi() is a Ramanujan theta function.

The programs for A128763, there is no canonical definition to state claims against.
-/

/-! ## A128763.P14244359350587995561

`A058492(n)%A000120(A283642(n+1))`
-/

namespace A128763.P14244359350587995561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058492 n) (A000120 (A283642 (n + 1)).toNat)

end

end A128763.P14244359350587995561

/-!
# A128766: Number of inequivalent n-colorings of the vertices of the 3D cube under full orthogonal group of the cube (of order 48).

The programs for A128766, the canonical program `A128766.P12209268228407418113` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128766 has offset 1).

The definition of A128766 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128766.P12209268228407418113

`1/48*(20*(n+1)²+21*(n+1)^4+6*(n+1)^6+(n+1)^8)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A128766

/-- `1/48*(20*(n+1)²+21*(n+1)^4+6*(n+1)^6+(n+1)^8)` -/
def P12209268228407418113.Spec : Prop :=
  ∀ n, P12209268228407418113.a n = (A128766 (n + 1) : ℚ)

end A128766

/-! ## A128766.P6440368289916836038

`∑[A100789(n)]-A337896(n+1)`
-/

namespace A128766.P6440368289916836038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A337896 (n + 1)

end

end A128766.P6440368289916836038

namespace A128766

/-- `∑[A100789(n)]-A337896(n+1)` -/
def P6440368289916836038.Spec : Prop :=
  ∀ n, P6440368289916836038.a n = A128766 (n + 1)

end A128766

/-! ## A128766.P3767969660304366465

`A337896(n+1)+A337897(n+1)`
-/

namespace A128766.P3767969660304366465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337896 (n + 1) + A337897 (n + 1)

end

end A128766.P3767969660304366465

namespace A128766

/-- `A337896(n+1)+A337897(n+1)` -/
def P3767969660304366465.Spec : Prop :=
  ∀ n, P3767969660304366465.a n = A128766 (n + 1)

end A128766

/-! ## A128766.P10689911922802845890

`A337896(n+1)+∑[A057813(n)]+A027480(n)²`
-/

namespace A128766.P10689911922802845890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337896 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j + A027480 n ^ 2)

end

end A128766.P10689911922802845890

namespace A128766

/-- `A337896(n+1)+∑[A057813(n)]+A027480(n)²` -/
def P10689911922802845890.Spec : Prop :=
  ∀ n, P10689911922802845890.a n = A128766 (n + 1)

end A128766

/-! ## A128766.P15103960068335180205

`A000543(n+1)-A337896(n+1)`
-/

namespace A128766.P15103960068335180205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000543 (n + 1) - A337896 (n + 1)

end

end A128766.P15103960068335180205

namespace A128766

/-- `A000543(n+1)-A337896(n+1)` -/
def P15103960068335180205.Spec : Prop :=
  ∀ n, P15103960068335180205.a n = A128766 (n + 1)

end A128766

/-! ## A128766.P17883169752965497228

`A337896(n+1)+A071270(n+1)+A027480(n)²`
-/

namespace A128766.P17883169752965497228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337896 (n + 1) + (A071270 (n + 1) + A027480 n ^ 2)

end

end A128766.P17883169752965497228

namespace A128766

/-- `A337896(n+1)+A071270(n+1)+A027480(n)²` -/
def P17883169752965497228.Spec : Prop :=
  ∀ n, P17883169752965497228.a n = A128766 (n + 1)

end A128766

/-! ## A128766.P13426814136407010051

`A337896(n+1)+A135509(n+1)-∑[A002492(n)]`
-/

namespace A128766.P13426814136407010051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337896 (n + 1) + (A135509 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128766.P13426814136407010051

namespace A128766

/-- `A337896(n+1)+A135509(n+1)-∑[A002492(n)]` -/
def P13426814136407010051.Spec : Prop :=
  ∀ n, P13426814136407010051.a n = A128766 (n + 1)

end A128766

/-!
# A128767: Number of inequivalent n-colorings of the 4D hypercube under the full orthogonal group of the cube (of order 2^4*4! = 384).

The programs for A128767, the canonical program `A128767.P5391098239481366286` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128767 has offset 1).

The definition of A128767 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128767.P9974273347693240365

`A337954(n+1)+A337955(n+1)`
-/

namespace A128767.P9974273347693240365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337954 (n + 1) + A337955 (n + 1)

end

end A128767.P9974273347693240365

namespace A128767

/-- `A337954(n+1)+A337955(n+1)` -/
def P9974273347693240365.Spec : Prop :=
  ∀ n, P9974273347693240365.a n = A128767 (n + 1)

end A128767

/-! ## A128767.P5306400204185473728

`A337952(n+1)-A337954(n+1)`
-/

namespace A128767.P5306400204185473728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337952 (n + 1) - A337954 (n + 1)

end

end A128767.P5306400204185473728

namespace A128767

/-- `A337952(n+1)-A337954(n+1)` -/
def P5306400204185473728.Spec : Prop :=
  ∀ n, P5306400204185473728.a n = A128767 (n + 1)

end A128767

/-! ## A128767.P5391098239481366286

`(A337952(n+1)+A337955(n+1))/2`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A128767

/-- `(A337952(n+1)+A337955(n+1))/2` -/
def P5391098239481366286.Spec : Prop :=
  ∀ n, P5391098239481366286.a n = (A128767 (n + 1) : ℚ)

end A128767

/-! ## A128767.P7814748157155110230

`A337955(n+1)+A337954(A077168(n))`
-/

namespace A128767.P7814748157155110230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337955 (n + 1) + A337954 (A077168 n).toNat

end

end A128767.P7814748157155110230

namespace A128767

/-- `A337955(n+1)+A337954(A077168(n))` -/
def P7814748157155110230.Spec : Prop :=
  ∀ n, P7814748157155110230.a n = A128767 (n + 1)

end A128767

/-!
# A128768: Number of peak-avoiding compositions with positive parts.

The programs for A128768, there is no canonical definition to state claims against.
-/

/-! ## A128768.P1690424563003587358

`A008621(∑[∑[A319642(n)]])`
-/

namespace A128768.P1690424563003587358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319642 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A128768.P1690424563003587358

/-! ## A128768.P17640938823367948333

`A110655(∑[∑[A319642(n)]])`
-/

namespace A128768.P17640938823367948333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319642 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A128768.P17640938823367948333

/-! ## A128768.P4880655306224705486

`∑[A087066(Δ[A022863(n+1)])]`
-/

namespace A128768.P4880655306224705486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022863 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087066 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128768.P4880655306224705486

/-! ## A128768.P8788816863940195085

`A033483(n)+A000267(A006645(n))`
-/

namespace A128768.P8788816863940195085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033483 n + A000267 (A006645 n).toNat

end

end A128768.P8788816863940195085

/-! ## A128768.P5431197613905972722

`A103128(A361758(n))`
-/

namespace A128768.P5431197613905972722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A361758 n).toNat

end

end A128768.P5431197613905972722

/-!
# A128769: 

The programs for A128769, there is no canonical definition to state claims against.
-/

/-! ## A128769.P6846245755323697438

`A325013(eq[5, A002262(n)]+1)`
-/

namespace A128769.P6846245755323697438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325013 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A128769.P6846245755323697438

/-!
# A128770: Expansion of phi(-q^9) / phi(-q) in powers of q where phi() is a Ramanujan theta function.

The programs for A128770, there is no canonical definition to state claims against.
-/

/-! ## A128770.P5643838001710163163

`abs(A261988(n))`
-/

namespace A128770.P5643838001710163163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A261988 n|

end

end A128770.P5643838001710163163

/-! ## A128770.P4328805762847540652

`A033999(n)*A261988(n)`
-/

namespace A128770.P4328805762847540652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A261988 n

end

end A128770.P4328805762847540652

/-! ## A128770.P13707858105487303043

`gcd(A000038(n), A261988(n))`
-/

namespace A128770.P13707858105487303043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A261988 n)

end

end A128770.P13707858105487303043

/-! ## A128770.P5792192611204674653

`lcm(A000034(n), A261988(n))`
-/

namespace A128770.P5792192611204674653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A261988 n)

end

end A128770.P5792192611204674653

/-! ## A128770.P17920938143010400346

`record[A105931(A007947(n+1))*A132975(n+1)]`
-/

namespace A128770.P17920938143010400346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105931 (A007947 (n + 1)).toNat * A132975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128770.P17920938143010400346

/-! ## A128770.P14982954951794338852

`record[ceil(2/3*A132180(n))]`
-/

namespace A128770.P14982954951794338852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) / 3 * (A132180 n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128770.P14982954951794338852

/-! ## A128770.P3681596512536246896

`record[A069932(n+1)*A145977(n)]`
-/

namespace A128770.P3681596512536246896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069932 (n + 1) * A145977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128770.P3681596512536246896

/-! ## A128770.P7350718072138083289

`(2-A000007(n))*A145977(2*n)`
-/

namespace A128770.P7350718072138083289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A145977 (2 * n)

end

end A128770.P7350718072138083289

/-! ## A128770.P10139646394468902273

`A069932(2*n+1)*A145977(2*n)`
-/

namespace A128770.P10139646394468902273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069932 (2 * n + 1) * A145977 (2 * n)

end

end A128770.P10139646394468902273

/-! ## A128770.P5295365521825728557

`(A145977(2*n)+A132180(2*n))/2`
-/

namespace A128770.P5295365521825728557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145977 (2 * n) + A132180 (2 * n) : ℚ) / 2

end

end A128770.P5295365521825728557

/-! ## A128770.P10379407263763563442

`(A145977(2*n)+A141094(2*n))/2`
-/

namespace A128770.P10379407263763563442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145977 (2 * n) + A141094 (2 * n) : ℚ) / 2

end

end A128770.P10379407263763563442

/-! ## A128770.P2251006849146560789

`(A213267(2*n)+A132180(2*n))/2`
-/

namespace A128770.P2251006849146560789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213267 (2 * n) + A132180 (2 * n) : ℚ) / 2

end

end A128770.P2251006849146560789

/-! ## A128770.P9870686116255201203

`(A213267(2*n)+A141094(2*n))/2`
-/

namespace A128770.P9870686116255201203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213267 (2 * n) + A141094 (2 * n) : ℚ) / 2

end

end A128770.P9870686116255201203

/-!
# A128771: Expansion of phi(-q) / phi(-q^9) in powers of q where phi() is a Ramanujan theta function.

The programs for A128771, there is no canonical definition to state claims against.
-/

/-! ## A128771.P3981063195097298815

`(n+1)%3*A182034(n)`
-/

namespace A128771.P3981063195097298815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 3 : ℕ) : ℤ) * A182034 n

end

end A128771.P3981063195097298815

/-! ## A128771.P3359405509154038493

`A033999(n)*A139380(n)`
-/

namespace A128771.P3359405509154038493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A139380 n

end

end A128771.P3359405509154038493

/-! ## A128771.P15169089747583141682

`A101675(n)*A139380(n)`
-/

namespace A128771.P15169089747583141682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101675 n * A139380 n

end

end A128771.P15169089747583141682

/-! ## A128771.P2951135177911793405

`A114284(n)*A139032(n)`
-/

namespace A128771.P2951135177911793405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114284 n * A139032 n

end

end A128771.P2951135177911793405

/-! ## A128771.P18082788231654729826

`A131713(n)*A139032(n)`
-/

namespace A128771.P18082788231654729826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 n * A139032 n

end

end A128771.P18082788231654729826

/-! ## A128771.P9466632196926253512

`A139380(n)*A163810(n)`
-/

namespace A128771.P9466632196926253512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139380 n * A163810 n

end

end A128771.P9466632196926253512

/-! ## A128771.P13044776510591135863

`A139380(n)*A281727(n)`
-/

namespace A128771.P13044776510591135863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139380 n * A281727 n

end

end A128771.P13044776510591135863

/-! ## A128771.P5504304203911057984

`(2-A057079(n)²)*A139032(n)`
-/

namespace A128771.P5504304203911057984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A057079 n ^ 2) * A139032 n

end

end A128771.P5504304203911057984

/-! ## A128771.P14522652498580380056

`(2-A132954(n)²)*A139032(n)`
-/

namespace A128771.P14522652498580380056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A132954 n ^ 2) * A139032 n

end

end A128771.P14522652498580380056

/-! ## A128771.P2573576638064800318

`(2-A156283(n)²)*A139032(n)`
-/

namespace A128771.P2573576638064800318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A156283 n ^ 2) * A139032 n

end

end A128771.P2573576638064800318

/-! ## A128771.P6155616065475650054

`(2-A184334(n)²)*A139032(n)`
-/

namespace A128771.P6155616065475650054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A184334 n ^ 2) * A139032 n

end

end A128771.P6155616065475650054

/-! ## A128771.P15107614797387588016

`(2-A187340(n)²)*A139032(n)`
-/

namespace A128771.P15107614797387588016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A187340 n ^ 2) * A139032 n

end

end A128771.P15107614797387588016

/-! ## A128771.P1620614628843901592

`A057079(n+2)*A139380(n)`
-/

namespace A128771.P1620614628843901592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (n + 2) * A139380 n

end

end A128771.P1620614628843901592

/-! ## A128771.P7762280186977899303

`A128770(n)/A261988(n)*A139380(n)`
-/

namespace A128771.P7762280186977899303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128770 n : ℚ) / (A261988 n : ℚ) * (A139380 n : ℚ)

end

end A128771.P7762280186977899303

/-! ## A128771.P2483568080182249897

`(2-A000007(n))*A128144(2*n)`
-/

namespace A128771.P2483568080182249897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A128144 (2 * n)

end

end A128771.P2483568080182249897

/-! ## A128771.P8818907003384288361

`(2-A000122(2*n))*A128144(2*n)`
-/

namespace A128771.P8818907003384288361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000122 (2 * n)) * A128144 (2 * n)

end

end A128771.P8818907003384288361

/-!
# A128772: a(n) = numerator of r(n): r(1)=1, r(n+1) = [b(1,n);b(2,n),...,b(n,n)], a continued fraction of rational terms, where {b(k,n)} is the permutation of the first n terms of {r(k)} such that r(n+1) is maximized.

The programs for A128772, there is no canonical definition to state claims against.
-/

/-! ## A128772.P6404080430058164644

`A000040(C(a(n-1), a(n-3))+1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A128772.P6404080430058164644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A000040 (Nat.choose (a (n - 1)).toNat (a (n - 3)).toNat + 1)

end

end A128772.P6404080430058164644

/-! ## A128772.P12235598036181698435

`A384888(A219969(n))`
-/

namespace A128772.P12235598036181698435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384888 (A219969 n).toNat

end

end A128772.P12235598036181698435

/-!
# A128774: a(n) = numerator of r(n): r(1)=1, r(n+1) = [b(1,n);b(2,n),...,b(n,n)], a continued fraction of rational terms, where {b(k,n)} is the permutation of the first n terms of {r(k)} such that r(n+1) is minimized.

The programs for A128774, there is no canonical definition to state claims against.
-/

/-! ## A128774.P15267074692391088890

`A387050(10*(3*a(n-1)-2*a(n-2)))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A128774.P15267074692391088890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4] fun n a =>
  A387050 (10 * (3 * a (n - 1) - 2 * a (n - 2))).toNat

end

end A128774.P15267074692391088890

/-! ## A128774.P7196923962011665938

`A353864(A148087(n))`
-/

namespace A128774.P7196923962011665938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353864 (A148087 n).toNat

end

end A128774.P7196923962011665938

/-!
# A128775: a(n) = denominator of r(n): r(1)=1, r(n+1) = [b(1,n);b(2,n),...,b(n,n)], a continued fraction of rational terms, where {b(k,n)} is the permutation of the first n terms of {r(k)} such that r(n+1) is minimized.

The programs for A128775, there is no canonical definition to state claims against.
-/

/-! ## A128775.P1220010277941201211

`A057488(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A128775.P1220010277941201211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3] fun n a =>
  A057488 (a (n - 1)).toNat

end

end A128775.P1220010277941201211

/-! ## A128775.P5358809182021108256

`ceil(A001222((n+3)!)^(n-1-ϕ))`
-/

namespace A128775.P5358809182021108256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001222 (Nat.factorial (n + 3)) : ℝ) ^ (((n : ℤ) - 1 : ℝ) - Real.goldenRatio)⌉

end

end A128775.P5358809182021108256

/-!
# A128778: a(n) = numerator of Product_{k=1..n} (1 + {n/k}), where {x} is the fractional part of x, {x} = x - floor(x).

The programs for A128778, there is no canonical definition to state claims against.
-/

/-! ## A128778.P5200443119780730670

`(gcd(1-n, floor(n/2))²+n)^A327104(A001045(n))`
-/

namespace A128778.P5200443119780730670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋ ^ 2 + n : ℚ) ^ (A327104 (A001045 n).toNat : ℤ)

end

end A128778.P5200443119780730670

/-! ## A128778.P7507355030532995420

`A017666(A153152(n)^A110654(n))`
-/

namespace A128778.P7507355030532995420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (SequenceMachineLib.roundAway ((A153152 n : ℚ) ^ (A110654 n : ℤ))).toNat

end

end A128778.P7507355030532995420

/-! ## A128778.P4670804401280769008

`A017666(A079097(n)^A266755(n))`
-/

namespace A128778.P4670804401280769008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (SequenceMachineLib.roundAway ((A079097 n : ℚ) ^ (A266755 n : ℤ))).toNat

end

end A128778.P4670804401280769008

/-! ## A128778.P36982639766222444

`A028310(A079097(n)^A266755(n))`
-/

namespace A128778.P36982639766222444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A079097 n : ℚ) ^ (A266755 n : ℤ))).toNat

end

end A128778.P36982639766222444

/-! ## A128778.P9387542779153560109

`A079097(n)^A327104(A001045(n))`
-/

namespace A128778.P9387542779153560109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079097 n : ℚ) ^ (A327104 (A001045 n).toNat : ℤ)

end

end A128778.P9387542779153560109

/-!
# A128780: Numbers n such that n^k+(n+1)^k is prime for k = 1, 2, 4.

The programs for A128780, there is no canonical definition to state claims against.
-/

/-! ## A128780.P5369253127900675321

`∩[A068501(n+1), A155211(n+1)]`
-/

namespace A128780.P5369253127900675321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128780.P5369253127900675321

/-! ## A128780.P6142530774527798417

`∩[A155211(n+1), A178659(n+1)-1]`
-/

namespace A128780.P6142530774527798417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178659 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128780.P6142530774527798417

/-! ## A128780.P11836839084052819732

`∩[floor(A048161(n+1)/2), A155211(n+1)]`
-/

namespace A128780.P11836839084052819732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048161 (n + 1) : ℚ) / 2⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128780.P11836839084052819732

/-! ## A128780.P9556691065380286150

`∩[A014682(A048161(n+1)-1), A155211(n+1)]`
-/

namespace A128780.P9556691065380286150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A048161 (n + 1) - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128780.P9556691065380286150

/-!
# A128782: a(n) = n^2*4^n.

The programs for A128782, the canonical program `A128782.P8267303298175215525` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128782 has offset 0).

The definition of A128782 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*4^n` (program `A128782.P8267303298175215525`, by `A128782.P8267303298175215525.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128782.P8267303298175215525

`n²*4^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A128782

/-- `n²*4^n` -/
def P8267303298175215525.Spec : Prop :=
  ∀ n, (P8267303298175215525.a n : ℤ) = A128782 n

theorem P8267303298175215525.correct : P8267303298175215525.Spec := by
  intro n
  simp only [A128782]

end A128782

/-! ## A128782.P14749387414886087966

`n²/tan(acot(4))^n`
-/

namespace A128782.P14749387414886087966
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℝ) / Real.tan (SequenceMachineLib.acot (4 : ℝ)) ^ n

end

end A128782.P14749387414886087966

namespace A128782

/-- `n²/tan(acot(4))^n` -/
def P14749387414886087966.Spec : Prop :=
  ∀ n, P14749387414886087966.a n = (A128782 n : ℝ)

end A128782

/-! ## A128782.P5905367676889333051

`n²/4^(gcd(n, n+1)-(n+1))`
-/

namespace A128782.P5905367676889333051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / (4 : ℚ) ^ ((Nat.gcd n (n + 1) : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A128782.P5905367676889333051

namespace A128782

/-- `n²/4^(gcd(n, n+1)-(n+1))` -/
def P5905367676889333051.Spec : Prop :=
  ∀ n, P5905367676889333051.a n = (A128782 n : ℚ)

theorem P5905367676889333051.correct : P5905367676889333051.Spec := by
  intro n
  simp only [A128782, Nat.add_sub_cancel, A128782.P5905367676889333051.a, A128782.P8267303298175215525.a, SequenceMachineLib.memo_apply]
  try simp

end A128782

/-! ## A128782.P16320013664441355149

`a(n-1)/((n-1)/(2*n))²` with `a(0)=0, a(1)=4`
-/

namespace A128782.P16320013664441355149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 1) / (((n : ℤ) - 1 : ℚ) / (2 * n : ℚ)) ^ 2

end

end A128782.P16320013664441355149

namespace A128782

/-- `a(n-1)/((n-1)/(2*n))²` -/
def P16320013664441355149.Spec : Prop :=
  ∀ n, P16320013664441355149.a n = (A128782 n : ℚ)

end A128782

/-! ## A128782.P15211738605133404899

`A036289(n)²`
-/

namespace A128782.P15211738605133404899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 n ^ 2

end

end A128782.P15211738605133404899

namespace A128782

/-- `A036289(n)²` -/
def P15211738605133404899.Spec : Prop :=
  ∀ n, P15211738605133404899.a n = A128782 n

end A128782

/-! ## A128782.P14590884914861227703

`A168251(2*n)`
-/

namespace A128782.P14590884914861227703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168251 (2 * n)

end

end A128782.P14590884914861227703

namespace A128782

/-- `A168251(2*n)` -/
def P14590884914861227703.Spec : Prop :=
  ∀ n, P14590884914861227703.a n = A128782 n

end A128782

/-! ## A128782.P14391649685383069967

`A097064(n+1)²`
-/

namespace A128782.P14391649685383069967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097064 (n + 1) ^ 2

end

end A128782.P14391649685383069967

namespace A128782

/-- `A097064(n+1)²` -/
def P14391649685383069967.Spec : Prop :=
  ∀ n, P14391649685383069967.a n = A128782 n

end A128782

/-! ## A128782.P5303807604302637432

`A093968(2*n)²`
-/

namespace A128782.P5303807604302637432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093968 (2 * n) ^ 2

end

end A128782.P5303807604302637432

namespace A128782

/-- `A093968(2*n)²` -/
def P5303807604302637432.Spec : Prop :=
  ∀ n, P5303807604302637432.a n = A128782 n

end A128782

/-! ## A128782.P15631946923097861350

`A007758(2*n)/4`
-/

namespace A128782.P15631946923097861350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007758 (2 * n) : ℚ) / 4

end

end A128782.P15631946923097861350

namespace A128782

/-- `A007758(2*n)/4` -/
def P15631946923097861350.Spec : Prop :=
  ∀ n, P15631946923097861350.a n = (A128782 n : ℚ)

end A128782

/-! ## A128782.P1490556201177673271

`A058922(n+1)²/4`
-/

namespace A128782.P1490556201177673271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058922 (n + 1) ^ 2 : ℚ) / 4

end

end A128782.P1490556201177673271

namespace A128782

/-- `A058922(n+1)²/4` -/
def P1490556201177673271.Spec : Prop :=
  ∀ n, P1490556201177673271.a n = (A128782 n : ℚ)

end A128782

/-! ## A128782.P2162467486973487289

`A159964(n+1)²/4`
-/

namespace A128782.P2162467486973487289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159964 (n + 1) ^ 2 : ℚ) / 4

end

end A128782.P2162467486973487289

namespace A128782

/-- `A159964(n+1)²/4` -/
def P2162467486973487289.Spec : Prop :=
  ∀ n, P2162467486973487289.a n = (A128782 n : ℚ)

end A128782

/-! ## A128782.P3559781011766614033

`A209691(∑[n+2])²`
-/

namespace A128782.P3559781011766614033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209691 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A128782.P3559781011766614033

namespace A128782

/-- `A209691(∑[n+2])²` -/
def P3559781011766614033.Spec : Prop :=
  ∀ n, P3559781011766614033.a n = A128782 n

end A128782

/-! ## A128782.P7019024709285903236

`(n*A100851(∑[n]))²`
-/

namespace A128782.P7019024709285903236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A100851 (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2

end

end A128782.P7019024709285903236

namespace A128782

/-- `(n*A100851(∑[n]))²` -/
def P7019024709285903236.Spec : Prop :=
  ∀ n, P7019024709285903236.a n = A128782 n

end A128782

/-! ## A128782.P12893637838169376330

`(n*∑[A193726(∑[n])])²`
-/

namespace A128782.P12893637838169376330
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193726 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2

end

end A128782.P12893637838169376330

namespace A128782

/-- `(n*∑[A193726(∑[n])])²` -/
def P12893637838169376330.Spec : Prop :=
  ∀ n, P12893637838169376330.a n = A128782 n

end A128782

/-! ## A128782.P13620589611313699359

`(n*A013621(∑[n]))²`
-/

namespace A128782.P13620589611313699359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A013621 (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2

end

end A128782.P13620589611313699359

namespace A128782

/-- `(n*A013621(∑[n]))²` -/
def P13620589611313699359.Spec : Prop :=
  ∀ n, P13620589611313699359.a n = A128782 n

end A128782

/-! ## A128782.P12734256586195368434

`(n*A036565(∑[n]))²`
-/

namespace A128782.P12734256586195368434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A036565 (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2

end

end A128782.P12734256586195368434

namespace A128782

/-- `(n*A036565(∑[n]))²` -/
def P12734256586195368434.Spec : Prop :=
  ∀ n, P12734256586195368434.a n = A128782 n

end A128782

/-! ## A128782.P9820397330276003294

`(n*A038212(∑[n]))²`
-/

namespace A128782.P9820397330276003294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A038212 (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2

end

end A128782.P9820397330276003294

namespace A128782

/-- `(n*A038212(∑[n]))²` -/
def P9820397330276003294.Spec : Prop :=
  ∀ n, P9820397330276003294.a n = A128782 n

end A128782

/-! ## A128782.P7504670648821570172

`(n*∑[A059450(∑[n])])²`
-/

namespace A128782.P7504670648821570172
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059450 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2

end

end A128782.P7504670648821570172

namespace A128782

/-- `(n*∑[A059450(∑[n])])²` -/
def P7504670648821570172.Spec : Prop :=
  ∀ n, P7504670648821570172.a n = A128782 n

end A128782

/-! ## A128782.P247897797623010243

`(n*A013623(∑[n]))²`
-/

namespace A128782.P247897797623010243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A013623 (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2

end

end A128782.P247897797623010243

namespace A128782

/-- `(n*A013623(∑[n]))²` -/
def P247897797623010243.Spec : Prop :=
  ∀ n, P247897797623010243.a n = A128782 n

end A128782

/-! ## A128782.P18143920786679197180

`(n*A038214(∑[n]))²`
-/

namespace A128782.P18143920786679197180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A038214 (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2

end

end A128782.P18143920786679197180

namespace A128782

/-- `(n*A038214(∑[n]))²` -/
def P18143920786679197180.Spec : Prop :=
  ∀ n, P18143920786679197180.a n = A128782 n

end A128782

/-!
# A128783: Numbers whose square is a nontrivial concatenation of other squares.

The programs for A128783, there is no canonical definition to state claims against.
-/

/-! ## A128783.P13260811441774333922

`sqrt(A019547(n+1))`
-/

namespace A128783.P13260811441774333922
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A019547 (n + 1) : ℝ)

end

end A128783.P13260811441774333922

/-! ## A128783.P2740819662504033929

`A000027(root(A019547(n+1), 2))`
-/

namespace A128783.P2740819662504033929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A019547 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A128783.P2740819662504033929

/-! ## A128783.P14062522822133956261

`root(A019547(n+1), gcd(2, A005843(n)))`
-/

namespace A128783.P14062522822133956261
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A019547 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A005843 n) : ℝ))

end

end A128783.P14062522822133956261

/-! ## A128783.P18268282277794101877

`root(A019547(n+1), A001316(A001316(n)))`
-/

namespace A128783.P18268282277794101877
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A019547 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A128783.P18268282277794101877

/-! ## A128783.P17634776750357426852

`root(A019547(n+1), 2%A048646(n+1))`
-/

namespace A128783.P17634776750357426852
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A019547 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A048646 (n + 1)) : ℝ))

end

end A128783.P17634776750357426852

/-!
# A128784: a(n) = n^2*5^n.

The programs for A128784, the canonical program `A128784.P7871800214283789235` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128784 has offset 0).

The definition of A128784 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*5^n` (program `A128784.P7871800214283789235`, by `A128784.P7871800214283789235.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128784.P7871800214283789235

`n²*5^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A128784

/-- `n²*5^n` -/
def P7871800214283789235.Spec : Prop :=
  ∀ n, (P7871800214283789235.a n : ℤ) = A128784 n

theorem P7871800214283789235.correct : P7871800214283789235.Spec := by
  intro n
  simp only [A128784]

end A128784

/-! ## A128784.P3948689789508000579

`15*a(n-1)-75*a(n-2)+125*a(n-3)` with `a(0)=0, a(1)=5, a(2)=100`
-/

namespace A128784.P3948689789508000579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 100] fun n a =>
  15 * a (n - 1) - 75 * a (n - 2) + 125 * a (n - 3)

end

end A128784.P3948689789508000579

namespace A128784

/-- `15*a(n-1)-75*a(n-2)+125*a(n-3)` -/
def P3948689789508000579.Spec : Prop :=
  ∀ n, P3948689789508000579.a n = A128784 n

theorem P3948689789508000579.correct : P3948689789508000579.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A128784, Nat.add_sub_cancel, A128784.P3948689789508000579.a, A128784.P7871800214283789235.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A128784, Nat.add_sub_cancel, A128784.P3948689789508000579.a, A128784.P7871800214283789235.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A128784

/-! ## A128784.P11232274259825703052

`(n/cos(atan(2))^n)²`
-/

namespace A128784.P11232274259825703052
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℝ) / Real.cos (Real.arctan (2 : ℝ)) ^ n) ^ 2

end

end A128784.P11232274259825703052

namespace A128784

/-- `(n/cos(atan(2))^n)²` -/
def P11232274259825703052.Spec : Prop :=
  ∀ n, P11232274259825703052.a n = (A128784 n : ℝ)

end A128784

/-! ## A128784.P4283561216171683922

`(n/sin(acot(2))^n)²`
-/

namespace A128784.P4283561216171683922
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℝ) / Real.sin (SequenceMachineLib.acot (2 : ℝ)) ^ n) ^ 2

end

end A128784.P4283561216171683922

namespace A128784

/-- `(n/sin(acot(2))^n)²` -/
def P4283561216171683922.Spec : Prop :=
  ∀ n, P4283561216171683922.a n = (A128784 n : ℝ)

end A128784

/-! ## A128784.P8343885807540699182

`xor(2, n*n*5^n+2)`
-/

namespace A128784.P8343885807540699182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (n * (n * 5 ^ n) + 2)

end

end A128784.P8343885807540699182

namespace A128784

/-- `xor(2, n*n*5^n+2)` -/
def P8343885807540699182.Spec : Prop :=
  ∀ n, (P8343885807540699182.a n : ℤ) = A128784 n

end A128784

/-! ## A128784.P8180077062167280225

`lcm(n, n*5^n+1)-n`
-/

namespace A128784.P8180077062167280225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n (n * 5 ^ n + 1) : ℤ) - (n : ℤ)

end

end A128784.P8180077062167280225

namespace A128784

/-- `lcm(n, n*5^n+1)-n` -/
def P8180077062167280225.Spec : Prop :=
  ∀ n, P8180077062167280225.a n = A128784 n

end A128784

/-! ## A128784.P17113677217610817975

`floor(n²*∑[5*a(n-1)])` with `a(0)=1, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A128784.P17113677217610817975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128784.P17113677217610817975

namespace A128784

/-- `floor(n²*∑[5*a(n-1)])` -/
def P17113677217610817975.Spec : Prop :=
  ∀ n, (P17113677217610817975.a n : ℤ) = A128784 n

end A128784

/-! ## A128784.P11681661278381664184

`n*comp[xor(1, 2*n)]*5^n/2`
-/

namespace A128784.P11681661278381664184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * n)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n * 5 ^ n : ℚ) / 2

end

end A128784.P11681661278381664184

namespace A128784

/-- `n*comp[xor(1, 2*n)]*5^n/2` -/
def P11681661278381664184.Spec : Prop :=
  ∀ n, P11681661278381664184.a n = (A128784 n : ℚ)

end A128784

/-! ## A128784.P3088840892028222462

`n²/5^(gcd(n, n+1)-(n+1))`
-/

namespace A128784.P3088840892028222462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / (5 : ℚ) ^ ((Nat.gcd n (n + 1) : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A128784.P3088840892028222462

namespace A128784

/-- `n²/5^(gcd(n, n+1)-(n+1))` -/
def P3088840892028222462.Spec : Prop :=
  ∀ n, P3088840892028222462.a n = (A128784 n : ℚ)

theorem P3088840892028222462.correct : P3088840892028222462.Spec := by
  intro n
  simp only [A128784, Nat.add_sub_cancel, A128784.P3088840892028222462.a, A128784.P7871800214283789235.a, SequenceMachineLib.memo_apply]
  try simp

end A128784

/-! ## A128784.P7600187019358570227

`n*A050916(n)-n`
-/

namespace A128784.P7600187019358570227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A050916 n - (n : ℤ)

end

end A128784.P7600187019358570227

namespace A128784

/-- `n*A050916(n)-n` -/
def P7600187019358570227.Spec : Prop :=
  ∀ n, P7600187019358570227.a n = A128784 n

end A128784

/-! ## A128784.P456458129481089629

`n²*A020729(n)/2`
-/

namespace A128784.P456458129481089629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A020729 n : ℚ) / 2

end

end A128784.P456458129481089629

namespace A128784

/-- `n²*A020729(n)/2` -/
def P456458129481089629.Spec : Prop :=
  ∀ n, P456458129481089629.a n = (A128784 n : ℚ)

end A128784

/-! ## A128784.P2706978410143255872

`n²/5^A001489(n)`
-/

namespace A128784.P2706978410143255872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / (5 : ℚ) ^ (A001489 n : ℤ)

end

end A128784.P2706978410143255872

namespace A128784

/-- `n²/5^A001489(n)` -/
def P2706978410143255872.Spec : Prop :=
  ∀ n, P2706978410143255872.a n = (A128784 n : ℚ)

end A128784

/-! ## A128784.P12975464124898270583

`lcm(5, n²*A000351(n))`
-/

namespace A128784.P12975464124898270583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 ((n ^ 2 : ℤ) * A000351 n)

end

end A128784.P12975464124898270583

namespace A128784

/-- `lcm(5, n²*A000351(n))` -/
def P12975464124898270583.Spec : Prop :=
  ∀ n, (P12975464124898270583.a n : ℤ) = A128784 n

end A128784

/-! ## A128784.P15469675684769633318

`n²*A095687(n+1)/2`
-/

namespace A128784.P15469675684769633318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A095687 (n + 1) : ℚ) / 2

end

end A128784.P15469675684769633318

namespace A128784

/-- `n²*A095687(n+1)/2` -/
def P15469675684769633318.Spec : Prop :=
  ∀ n, P15469675684769633318.a n = (A128784 n : ℚ)

end A128784

/-! ## A128784.P566489473903434624

`n*A004277(n)*5^n/2`
-/

namespace A128784.P566489473903434624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A004277 n * (5 ^ n : ℤ) : ℚ) / 2

end

end A128784.P566489473903434624

namespace A128784

/-- `n*A004277(n)*5^n/2` -/
def P566489473903434624.Spec : Prop :=
  ∀ n, P566489473903434624.a n = (A128784 n : ℚ)

end A128784

/-! ## A128784.P6397685436094671070

`char[A307009(n+1)]+n*n*5^n`
-/

namespace A128784.P6397685436094671070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n * (n * 5 ^ n)

end

end A128784.P6397685436094671070

namespace A128784

/-- `char[A307009(n+1)]+n*n*5^n` -/
def P6397685436094671070.Spec : Prop :=
  ∀ n, (P6397685436094671070.a n : ℤ) = A128784 n

end A128784

/-! ## A128784.P12448918626366296499

`A116156(n)+A116156(n)/A001478(n+1)`
-/

namespace A128784.P12448918626366296499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116156 n : ℚ) + (A116156 n : ℚ) / (A001478 (n + 1) : ℚ)

end

end A128784.P12448918626366296499

namespace A128784

/-- `A116156(n)+A116156(n)/A001478(n+1)` -/
def P12448918626366296499.Spec : Prop :=
  ∀ n, P12448918626366296499.a n = (A128784 n : ℚ)

end A128784

/-! ## A128784.P8913652621415965674

`A129005(n)/(n+1)`
-/

namespace A128784.P8913652621415965674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129005 n : ℚ) / (n + 1 : ℚ)

end

end A128784.P8913652621415965674

namespace A128784

/-- `A129005(n)/(n+1)` -/
def P8913652621415965674.Spec : Prop :=
  ∀ n, P8913652621415965674.a n = (A128784 n : ℚ)

end A128784

/-! ## A128784.P7730766873873932517

`A129005(n)-A128791(n)`
-/

namespace A128784.P7730766873873932517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129005 n - A128791 n

end

end A128784.P7730766873873932517

namespace A128784

/-- `A129005(n)-A128791(n)` -/
def P7730766873873932517.Spec : Prop :=
  ∀ n, P7730766873873932517.a n = A128784 n

end A128784

/-!
# A128785: a(n) = n^2*6^n.

The programs for A128785, the canonical program `A128785.P13046394259781789652` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128785 has offset 0).

The definition of A128785 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*6^n` (program `A128785.P13046394259781789652`, by `A128785.P13046394259781789652.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128785.P13046394259781789652

`n²*6^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A128785

/-- `n²*6^n` -/
def P13046394259781789652.Spec : Prop :=
  ∀ n, (P13046394259781789652.a n : ℤ) = A128785 n

theorem P13046394259781789652.correct : P13046394259781789652.Spec := by
  intro n
  simp only [A128785]

end A128785

/-! ## A128785.P12380787764168714653

`18*a(n-1)-108*a(n-2)+216*a(n-3)` with `a(0)=0, a(1)=6, a(2)=144`
-/

namespace A128785.P12380787764168714653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 6, 144] fun n a =>
  18 * a (n - 1) - 108 * a (n - 2) + 216 * a (n - 3)

end

end A128785.P12380787764168714653

namespace A128785

/-- `18*a(n-1)-108*a(n-2)+216*a(n-3)` -/
def P12380787764168714653.Spec : Prop :=
  ∀ n, P12380787764168714653.a n = A128785 n

theorem P12380787764168714653.correct : P12380787764168714653.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A128785, Nat.add_sub_cancel, A128785.P12380787764168714653.a, A128785.P13046394259781789652.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A128785, Nat.add_sub_cancel, A128785.P12380787764168714653.a, A128785.P13046394259781789652.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A128785

/-! ## A128785.P12936792017590133280

`abs((A226200(n)-n)*n²)`
-/

namespace A128785.P12936792017590133280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A226200 n - (n : ℤ)) * (n ^ 2 : ℤ)|

end

end A128785.P12936792017590133280

namespace A128785

/-- `abs((A226200(n)-n)*n²)` -/
def P12936792017590133280.Spec : Prop :=
  ∀ n, P12936792017590133280.a n = A128785 n

end A128785

/-! ## A128785.P16284120850566264129

`n²+n²*A024062(n)`
-/

namespace A128785.P16284120850566264129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (n ^ 2 : ℤ) * A024062 n

end

end A128785.P16284120850566264129

namespace A128785

/-- `n²+n²*A024062(n)` -/
def P16284120850566264129.Spec : Prop :=
  ∀ n, P16284120850566264129.a n = A128785 n

end A128785

/-! ## A128785.P7105619353614611210

`n²*A062394(n)-n²`
-/

namespace A128785.P7105619353614611210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A062394 n - (n ^ 2 : ℤ)

end

end A128785.P7105619353614611210

namespace A128785

/-- `n²*A062394(n)-n²` -/
def P7105619353614611210.Spec : Prop :=
  ∀ n, P7105619353614611210.a n = A128785 n

end A128785

/-! ## A128785.P1353820833496836335

`xor(n, 6^n*A000290(n)+n)`
-/

namespace A128785.P1353820833496836335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((6 ^ n : ℤ) * A000290 n + (n : ℤ))

end

end A128785.P1353820833496836335

namespace A128785

/-- `xor(n, 6^n*A000290(n)+n)` -/
def P1353820833496836335.Spec : Prop :=
  ∀ n, P1353820833496836335.a n = A128785 n

end A128785

/-! ## A128785.P3058018985401186237

`abs((∑[2*n]-n)*A026549(2*n))`
-/

namespace A128785.P3058018985401186237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)) * A026549 (2 * n)|

end

end A128785.P3058018985401186237

namespace A128785

/-- `abs((∑[2*n]-n)*A026549(2*n))` -/
def P3058018985401186237.Spec : Prop :=
  ∀ n, P3058018985401186237.a n = A128785 n

end A128785

/-! ## A128785.P2794506498967802477

`lcm(A007758(n), A127960(n))`
-/

namespace A128785.P2794506498967802477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007758 n) (A127960 n)

end

end A128785.P2794506498967802477

namespace A128785

/-- `lcm(A007758(n), A127960(n))` -/
def P2794506498967802477.Spec : Prop :=
  ∀ n, (P2794506498967802477.a n : ℤ) = A128785 n

end A128785

/-! ## A128785.P10597789414824853350

`A002064(n)*A036290(n)-A036290(n)`
-/

namespace A128785.P10597789414824853350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002064 n * A036290 n - A036290 n

end

end A128785.P10597789414824853350

namespace A128785

/-- `A002064(n)*A036290(n)-A036290(n)` -/
def P10597789414824853350.Spec : Prop :=
  ∀ n, P10597789414824853350.a n = A128785 n

end A128785

/-! ## A128785.P14724356519374044400

`n²*A000400(n+1)/6`
-/

namespace A128785.P14724356519374044400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A000400 (n + 1) : ℚ) / 6

end

end A128785.P14724356519374044400

namespace A128785

/-- `n²*A000400(n+1)/6` -/
def P14724356519374044400.Spec : Prop :=
  ∀ n, P14724356519374044400.a n = (A128785 n : ℚ)

end A128785

/-! ## A128785.P7191154763685609517

`A000400(n)*A001105(n)/2`
-/

namespace A128785.P7191154763685609517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000400 n * A001105 n : ℚ) / 2

end

end A128785.P7191154763685609517

namespace A128785

/-- `A000400(n)*A001105(n)/2` -/
def P7191154763685609517.Spec : Prop :=
  ∀ n, P7191154763685609517.a n = (A128785 n : ℚ)

end A128785

/-!
# A128786: a(n) = n^2*7^n.

The programs for A128786, the canonical program `A128786.P9666995029026690429` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128786 has offset 0).

The definition of A128786 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*7^n` (program `A128786.P9666995029026690429`, by `A128786.P9666995029026690429.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128786.P9666995029026690429

`n²*7^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A128786

/-- `n²*7^n` -/
def P9666995029026690429.Spec : Prop :=
  ∀ n, (P9666995029026690429.a n : ℤ) = A128786 n

theorem P9666995029026690429.correct : P9666995029026690429.Spec := by
  intro n
  simp only [A128786]

end A128786

/-! ## A128786.P2188799520610905570

`21*a(n-1)-147*a(n-2)+343*a(n-3)` with `a(0)=0, a(1)=7, a(2)=196`
-/

namespace A128786.P2188799520610905570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 7, 196] fun n a =>
  21 * a (n - 1) - 147 * a (n - 2) + 343 * a (n - 3)

end

end A128786.P2188799520610905570

namespace A128786

/-- `21*a(n-1)-147*a(n-2)+343*a(n-3)` -/
def P2188799520610905570.Spec : Prop :=
  ∀ n, P2188799520610905570.a n = A128786 n

theorem P2188799520610905570.correct : P2188799520610905570.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A128786, Nat.add_sub_cancel, A128786.P2188799520610905570.a, A128786.P9666995029026690429.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A128786, Nat.add_sub_cancel, A128786.P2188799520610905570.a, A128786.P9666995029026690429.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A128786

/-! ## A128786.P16801687774409674764

`n*A050919(n)-n`
-/

namespace A128786.P16801687774409674764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A050919 n - (n : ℤ)

end

end A128786.P16801687774409674764

namespace A128786

/-- `n*A050919(n)-n` -/
def P16801687774409674764.Spec : Prop :=
  ∀ n, P16801687774409674764.a n = A128786 n

end A128786

/-! ## A128786.P17679848359538634394

`n²/7^A001489(n)`
-/

namespace A128786.P17679848359538634394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / (7 : ℚ) ^ (A001489 n : ℤ)

end

end A128786.P17679848359538634394

namespace A128786

/-- `n²/7^A001489(n)` -/
def P17679848359538634394.Spec : Prop :=
  ∀ n, P17679848359538634394.a n = (A128786 n : ℚ)

end A128786

/-! ## A128786.P785719463030592396

`n*(A036293(n)+1)-n`
-/

namespace A128786.P785719463030592396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A036293 n + 1) - (n : ℤ)

end

end A128786.P785719463030592396

namespace A128786

/-- `n*(A036293(n)+1)-n` -/
def P785719463030592396.Spec : Prop :=
  ∀ n, P785719463030592396.a n = A128786 n

end A128786

/-! ## A128786.P16612605150048692834

`n²+n²*A024075(n)`
-/

namespace A128786.P16612605150048692834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (n ^ 2 : ℤ) * A024075 n

end

end A128786.P16612605150048692834

namespace A128786

/-- `n²+n²*A024075(n)` -/
def P16612605150048692834.Spec : Prop :=
  ∀ n, P16612605150048692834.a n = A128786 n

end A128786

/-! ## A128786.P1649639725110225921

`n²*A034491(n)-n²`
-/

namespace A128786.P1649639725110225921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A034491 n - (n ^ 2 : ℤ)

end

end A128786.P1649639725110225921

namespace A128786

/-- `n²*A034491(n)-n²` -/
def P1649639725110225921.Spec : Prop :=
  ∀ n, P1649639725110225921.a n = A128786 n

end A128786

/-! ## A128786.P7607808165841787071

`n²*A109808(n+1)/2`
-/

namespace A128786.P7607808165841787071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A109808 (n + 1) : ℚ) / 2

end

end A128786.P7607808165841787071

namespace A128786

/-- `n²*A109808(n+1)/2` -/
def P7607808165841787071.Spec : Prop :=
  ∀ n, P7607808165841787071.a n = (A128786 n : ℚ)

end A128786

/-! ## A128786.P12725741292422586601

`abs(n²*A000420(n)-n)+n`
-/

namespace A128786.P12725741292422586601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) * A000420 n - (n : ℤ)| + (n : ℤ)

end

end A128786.P12725741292422586601

namespace A128786

/-- `abs(n²*A000420(n)-n)+n` -/
def P12725741292422586601.Spec : Prop :=
  ∀ n, P12725741292422586601.a n = A128786 n

end A128786

/-! ## A128786.P135457025825665793

`(A109613(2*n)-1)*n*7^n/2`
-/

namespace A128786.P135457025825665793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A109613 (2 * n) - 1) * (n * 7 ^ n : ℤ) : ℚ) / 2

end

end A128786.P135457025825665793

namespace A128786

/-- `(A109613(2*n)-1)*n*7^n/2` -/
def P135457025825665793.Spec : Prop :=
  ∀ n, P135457025825665793.a n = (A128786 n : ℚ)

end A128786

/-! ## A128786.P8286060861508497724

`or(n²*A000420(n), char[A167167(n)])`
-/

namespace A128786.P8286060861508497724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167167 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n ^ 2 : ℤ) * A000420 n) ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A128786.P8286060861508497724

namespace A128786

/-- `or(n²*A000420(n), char[A167167(n)])` -/
def P8286060861508497724.Spec : Prop :=
  ∀ n, P8286060861508497724.a n = A128786 n

end A128786

/-! ## A128786.P1902036832256511154

`lcm(n, (A120741(n)+A034494(n))*n²)`
-/

namespace A128786.P1902036832256511154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((A120741 n + A034494 n) * (n ^ 2 : ℤ))

end

end A128786.P1902036832256511154

namespace A128786

/-- `lcm(n, (A120741(n)+A034494(n))*n²)` -/
def P1902036832256511154.Spec : Prop :=
  ∀ n, (P1902036832256511154.a n : ℤ) = A128786 n

end A128786

/-! ## A128786.P4671141567832061871

`n²*Δ[A023000(n)]/A066827(2*(n+1))`
-/

namespace A128786.P4671141567832061871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * (f1 (n + 1) - f1 n) : ℚ) / (A066827 (2 * (n + 1)) : ℚ)

end

end A128786.P4671141567832061871

namespace A128786

/-- `n²*Δ[A023000(n)]/A066827(2*(n+1))` -/
def P4671141567832061871.Spec : Prop :=
  ∀ n, P4671141567832061871.a n = (A128786 n : ℚ)

end A128786

/-! ## A128786.P8911737927175097326

`n²*A208704(n+1)/4`
-/

namespace A128786.P8911737927175097326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A208704 (n + 1) : ℚ) / 4

end

end A128786.P8911737927175097326

namespace A128786

/-- `n²*A208704(n+1)/4` -/
def P8911737927175097326.Spec : Prop :=
  ∀ n, P8911737927175097326.a n = (A128786 n : ℚ)

end A128786

/-!
# A128787: a(n) = n^2*8^n.

The programs for A128787, the canonical program `A128787.P2077013603776167473` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128787 has offset 0).

The definition of A128787 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*8^n` (program `A128787.P2077013603776167473`, by `A128787.P2077013603776167473.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128787.P2077013603776167473

`n²*8^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A128787

/-- `n²*8^n` -/
def P2077013603776167473.Spec : Prop :=
  ∀ n, (P2077013603776167473.a n : ℤ) = A128787 n

theorem P2077013603776167473.correct : P2077013603776167473.Spec := by
  intro n
  simp only [A128787]

end A128787

/-! ## A128787.P17929220168845114730

`24*a(n-1)-192*a(n-2)+512*a(n-3)` with `a(0)=0, a(1)=8, a(2)=256`
-/

namespace A128787.P17929220168845114730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 8, 256] fun n a =>
  24 * a (n - 1) - 192 * a (n - 2) + 512 * a (n - 3)

end

end A128787.P17929220168845114730

namespace A128787

/-- `24*a(n-1)-192*a(n-2)+512*a(n-3)` -/
def P17929220168845114730.Spec : Prop :=
  ∀ n, P17929220168845114730.a n = A128787 n

theorem P17929220168845114730.correct : P17929220168845114730.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A128787, Nat.add_sub_cancel, A128787.P17929220168845114730.a, A128787.P2077013603776167473.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A128787, Nat.add_sub_cancel, A128787.P17929220168845114730.a, A128787.P2077013603776167473.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A128787

/-! ## A128787.P3971177447752647506

`round(n²/acot(8^n))`
-/

namespace A128787.P3971177447752647506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℝ) / SequenceMachineLib.acot (8 ^ n : ℝ))

end

end A128787.P3971177447752647506

namespace A128787

/-- `round(n²/acot(8^n))` -/
def P3971177447752647506.Spec : Prop :=
  ∀ n, P3971177447752647506.a n = A128787 n

end A128787

/-! ## A128787.P3626122200962049162

`n²+n²*A024088(n)`
-/

namespace A128787.P3626122200962049162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (n ^ 2 : ℤ) * A024088 n

end

end A128787.P3626122200962049162

namespace A128787

/-- `n²+n²*A024088(n)` -/
def P3626122200962049162.Spec : Prop :=
  ∀ n, P3626122200962049162.a n = A128787 n

end A128787

/-! ## A128787.P16377989688406632255

`lcm(2, n²*A000079(3*n))`
-/

namespace A128787.P16377989688406632255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((n ^ 2 : ℤ) * A000079 (3 * n))

end

end A128787.P16377989688406632255

namespace A128787

/-- `lcm(2, n²*A000079(3*n))` -/
def P16377989688406632255.Spec : Prop :=
  ∀ n, (P16377989688406632255.a n : ℤ) = A128787 n

end A128787

/-! ## A128787.P8220842549431884883

`and(n*n*8^n, -A000120(n))`
-/

namespace A128787.P8220842549431884883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n * (n * 8 ^ n) : ℤ) (-A000120 n)

end

end A128787.P8220842549431884883

namespace A128787

/-- `and(n*n*8^n, -A000120(n))` -/
def P8220842549431884883.Spec : Prop :=
  ∀ n, P8220842549431884883.a n = A128787 n

end A128787

/-! ## A128787.P16675040346938246925

`abs(A001489(n)*A036294(n))`
-/

namespace A128787.P16675040346938246925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 n * A036294 n|

end

end A128787.P16675040346938246925

namespace A128787

/-- `abs(A001489(n)*A036294(n))` -/
def P16675040346938246925.Spec : Prop :=
  ∀ n, P16675040346938246925.a n = A128787 n

end A128787

/-! ## A128787.P3297089242886009200

`lcm(2, A018215(n)*A036289(n))`
-/

namespace A128787.P3297089242886009200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A018215 n * A036289 n)

end

end A128787.P3297089242886009200

namespace A128787

/-- `lcm(2, A018215(n)*A036289(n))` -/
def P3297089242886009200.Spec : Prop :=
  ∀ n, (P3297089242886009200.a n : ℤ) = A128787 n

end A128787

/-! ## A128787.P11918693105169404373

`lcm(n, A000079(n)*A128782(n))`
-/

namespace A128787.P11918693105169404373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A000079 n * A128782 n)

end

end A128787.P11918693105169404373

namespace A128787

/-- `lcm(n, A000079(n)*A128782(n))` -/
def P11918693105169404373.Spec : Prop :=
  ∀ n, (P11918693105169404373.a n : ℤ) = A128787 n

end A128787

/-! ## A128787.P3636521411680621725

`(n*A094015(n))²/A000034(n)`
-/

namespace A128787.P3636521411680621725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) * A094015 n) ^ 2 : ℚ) / (A000034 n : ℚ)

end

end A128787.P3636521411680621725

namespace A128787

/-- `(n*A094015(n))²/A000034(n)` -/
def P3636521411680621725.Spec : Prop :=
  ∀ n, P3636521411680621725.a n = (A128787 n : ℚ)

end A128787

/-! ## A128787.P9565965444148417800

`abs((n*Δ[A000225(n)])²*A000079(n)-n)+n`
-/

namespace A128787.P9565965444148417800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) * (f1 (n + 1) - f1 n)) ^ 2 * A000079 n - (n : ℤ)| + (n : ℤ)

end

end A128787.P9565965444148417800

namespace A128787

/-- `abs((n*Δ[A000225(n)])²*A000079(n)-n)+n` -/
def P9565965444148417800.Spec : Prop :=
  ∀ n, P9565965444148417800.a n = A128787 n

end A128787

/-! ## A128787.P6284186299573068557

`A000302(n+1)*A001788(n)/ratio[A004277(n)]`
-/

namespace A128787.P6284186299573068557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000302 (n + 1) * A001788 n : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A128787.P6284186299573068557

namespace A128787

/-- `A000302(n+1)*A001788(n)/ratio[A004277(n)]` -/
def P6284186299573068557.Spec : Prop :=
  ∀ n, P6284186299573068557.a n = (A128787 n : ℚ)

end A128787

/-! ## A128787.P5963400688019459112

`A007758(3*n)/9`
-/

namespace A128787.P5963400688019459112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007758 (3 * n) : ℚ) / 9

end

end A128787.P5963400688019459112

namespace A128787

/-- `A007758(3*n)/9` -/
def P5963400688019459112.Spec : Prop :=
  ∀ n, P5963400688019459112.a n = (A128787 n : ℚ)

end A128787

/-! ## A128787.P14743684737778638660

`n²*A013730(n)/2`
-/

namespace A128787.P14743684737778638660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A013730 n : ℚ) / 2

end

end A128787.P14743684737778638660

namespace A128787

/-- `n²*A013730(n)/2` -/
def P14743684737778638660.Spec : Prop :=
  ∀ n, P14743684737778638660.a n = (A128787 n : ℚ)

end A128787

/-! ## A128787.P8854777119121918909

`2*n²*A000079(3*n+2)/8`
-/

namespace A128787.P8854777119121918909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n ^ 2 : ℤ) * A000079 (3 * n + 2) : ℚ) / 8

end

end A128787.P8854777119121918909

namespace A128787

/-- `2*n²*A000079(3*n+2)/8` -/
def P8854777119121918909.Spec : Prop :=
  ∀ n, P8854777119121918909.a n = (A128787 n : ℚ)

end A128787

/-! ## A128787.P1325788168741730208

`A097064(2*n+1)*A097064(n+1)/2`
-/

namespace A128787.P1325788168741730208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097064 (2 * n + 1) * A097064 (n + 1) : ℚ) / 2

end

end A128787.P1325788168741730208

namespace A128787

/-- `A097064(2*n+1)*A097064(n+1)/2` -/
def P1325788168741730208.Spec : Prop :=
  ∀ n, P1325788168741730208.a n = (A128787 n : ℚ)

end A128787

/-! ## A128787.P7796009046854310600

`A036289(n)²*A036289(n)/A028310(n)`
-/

namespace A128787.P7796009046854310600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036289 n ^ 2 * A036289 n : ℚ) / (A028310 n : ℚ)

end

end A128787.P7796009046854310600

namespace A128787

/-- `A036289(n)²*A036289(n)/A028310(n)` -/
def P7796009046854310600.Spec : Prop :=
  ∀ n, P7796009046854310600.a n = (A128787 n : ℚ)

end A128787

/-!
# A128788: a(n) = n^2*9^n.

The programs for A128788, the canonical program `A128788.P5167137184545089802` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128788 has offset 0).

The definition of A128788 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*9^n` (program `A128788.P5167137184545089802`, by `A128788.P5167137184545089802.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128788.P5167137184545089802

`n²*9^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A128788

/-- `n²*9^n` -/
def P5167137184545089802.Spec : Prop :=
  ∀ n, (P5167137184545089802.a n : ℤ) = A128788 n

theorem P5167137184545089802.correct : P5167137184545089802.Spec := by
  intro n
  simp only [A128788]

end A128788

/-! ## A128788.P13541521872356176795

`27*a(n-1)-243*a(n-2)+729*a(n-3)` with `a(0)=0, a(1)=9, a(2)=324`
-/

namespace A128788.P13541521872356176795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 9, 324] fun n a =>
  27 * a (n - 1) - 243 * a (n - 2) + 729 * a (n - 3)

end

end A128788.P13541521872356176795

namespace A128788

/-- `27*a(n-1)-243*a(n-2)+729*a(n-3)` -/
def P13541521872356176795.Spec : Prop :=
  ∀ n, P13541521872356176795.a n = A128788 n

theorem P13541521872356176795.correct : P13541521872356176795.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A128788, Nat.add_sub_cancel, A128788.P13541521872356176795.a, A128788.P5167137184545089802.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A128788, Nat.add_sub_cancel, A128788.P13541521872356176795.a, A128788.P5167137184545089802.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A128788

/-! ## A128788.P16797172911477933112

`A036290(n)²`
-/

namespace A128788.P16797172911477933112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036290 n ^ 2

end

end A128788.P16797172911477933112

namespace A128788

/-- `A036290(n)²` -/
def P16797172911477933112.Spec : Prop :=
  ∀ n, P16797172911477933112.a n = A128788 n

end A128788

/-! ## A128788.P522859413191522629

`∑[A229277(n)]²`
-/

namespace A128788.P522859413191522629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A128788.P522859413191522629

namespace A128788

/-- `∑[A229277(n)]²` -/
def P522859413191522629.Spec : Prop :=
  ∀ n, P522859413191522629.a n = A128788 n

end A128788

/-! ## A128788.P213362154868681275

`(1-A050914(n))²`
-/

namespace A128788.P213362154868681275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A050914 n) ^ 2

end

end A128788.P213362154868681275

namespace A128788

/-- `(1-A050914(n))²` -/
def P213362154868681275.Spec : Prop :=
  ∀ n, P213362154868681275.a n = A128788 n

end A128788

/-! ## A128788.P5745014458134733344

`(n*A000244(n))²`
-/

namespace A128788.P5745014458134733344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A000244 n) ^ 2

end

end A128788.P5745014458134733344

namespace A128788

/-- `(n*A000244(n))²` -/
def P5745014458134733344.Spec : Prop :=
  ∀ n, P5745014458134733344.a n = A128788 n

end A128788

/-! ## A128788.P12715815018968489282

`(n*Δ[A007051(n)])²`
-/

namespace A128788.P12715815018968489282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (f1 (n + 1) - f1 n)) ^ 2

end

end A128788.P12715815018968489282

namespace A128788

/-- `(n*Δ[A007051(n)])²` -/
def P12715815018968489282.Spec : Prop :=
  ∀ n, P12715815018968489282.a n = A128788 n

end A128788

/-! ## A128788.P5402848207767062378

`(3*A027471(n+1))²`
-/

namespace A128788.P5402848207767062378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * A027471 (n + 1)) ^ 2

end

end A128788.P5402848207767062378

namespace A128788

/-- `(3*A027471(n+1))²` -/
def P5402848207767062378.Spec : Prop :=
  ∀ n, P5402848207767062378.a n = A128788 n

end A128788

/-! ## A128788.P82498787848272487

`A127960(2*n)/4`
-/

namespace A128788.P82498787848272487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127960 (2 * n) : ℚ) / 4

end

end A128788.P82498787848272487

namespace A128788

/-- `A127960(2*n)/4` -/
def P82498787848272487.Spec : Prop :=
  ∀ n, P82498787848272487.a n = (A128788 n : ℚ)

end A128788

/-! ## A128788.P11019214942731760808

`A116138(n)²/(n+1)²`
-/

namespace A128788.P11019214942731760808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116138 n ^ 2 : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A128788.P11019214942731760808

namespace A128788

/-- `A116138(n)²/(n+1)²` -/
def P11019214942731760808.Spec : Prop :=
  ∀ n, P11019214942731760808.a n = (A128788 n : ℚ)

end A128788

/-!
# A128789: a(n) = n^3*2^n.

The programs for A128789, the canonical program `A128789.P13129381073551512114` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128789 has offset 0).

The definition of A128789 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3*2^n` (program `A128789.P13129381073551512114`, by `A128789.P13129381073551512114.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128789.P13129381073551512114

`n^3*2^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A128789

/-- `n^3*2^n` -/
def P13129381073551512114.Spec : Prop :=
  ∀ n, (P13129381073551512114.a n : ℤ) = A128789 n

theorem P13129381073551512114.correct : P13129381073551512114.Spec := by
  intro n
  simp only [A128789]

end A128789

/-! ## A128789.P15703512207863993638

`8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` with `a(0)=0, a(1)=2, a(2)=32, a(3)=216`
-/

namespace A128789.P15703512207863993638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 32, 216] fun n a =>
  8 * a (n - 1) - 24 * a (n - 2) + 32 * a (n - 3) - 16 * a (n - 4)

end

end A128789.P15703512207863993638

namespace A128789

/-- `8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` -/
def P15703512207863993638.Spec : Prop :=
  ∀ n, P15703512207863993638.a n = A128789 n

theorem P15703512207863993638.correct : P15703512207863993638.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A128789, Nat.add_sub_cancel, A128789.P15703512207863993638.a, A128789.P13129381073551512114.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A128789, Nat.add_sub_cancel, A128789.P15703512207863993638.a, A128789.P13129381073551512114.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A128789

/-! ## A128789.P6912611365209021324

`abs(n*(A248917(n)-1))`
-/

namespace A128789.P6912611365209021324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (A248917 n - 1)|

end

end A128789.P6912611365209021324

namespace A128789

/-- `abs(n*(A248917(n)-1))` -/
def P6912611365209021324.Spec : Prop :=
  ∀ n, P6912611365209021324.a n = A128789 n

end A128789

/-! ## A128789.P17593134739046395879

`n²*A002064(n)-n²`
-/

namespace A128789.P17593134739046395879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A002064 n - (n ^ 2 : ℤ)

end

end A128789.P17593134739046395879

namespace A128789

/-- `n²*A002064(n)-n²` -/
def P17593134739046395879.Spec : Prop :=
  ∀ n, P17593134739046395879.a n = A128789 n

end A128789

/-! ## A128789.P17586347469846169527

`and(n*n²*A000079(n), -(n+1))`
-/

namespace A128789.P17586347469846169527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n * n ^ 2 : ℤ) * A000079 n) (-(n + 1 : ℤ))

end

end A128789.P17586347469846169527

namespace A128789

/-- `and(n*n²*A000079(n), -(n+1))` -/
def P17586347469846169527.Spec : Prop :=
  ∀ n, P17586347469846169527.a n = A128789 n

end A128789

/-! ## A128789.P2901524124694591473

`n*(2*A011782(n)*n²+n)-n²`
-/

namespace A128789.P2901524124694591473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 * A011782 n * (n ^ 2 : ℤ) + (n : ℤ)) - (n ^ 2 : ℤ)

end

end A128789.P2901524124694591473

namespace A128789

/-- `n*(2*A011782(n)*n²+n)-n²` -/
def P2901524124694591473.Spec : Prop :=
  ∀ n, P2901524124694591473.a n = A128789 n

end A128789

/-! ## A128789.P7997856541437289992

`abs(A000578(n)*A120617(n))`
-/

namespace A128789.P7997856541437289992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000578 n * A120617 n|

end

end A128789.P7997856541437289992

namespace A128789

/-- `abs(A000578(n)*A120617(n))` -/
def P7997856541437289992.Spec : Prop :=
  ∀ n, P7997856541437289992.a n = A128789 n

end A128789

/-! ## A128789.P4943659272364619321

`lcm(A000079(n)*A000578(n), 2*n)`
-/

namespace A128789.P4943659272364619321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n * A000578 n) (2 * n : ℤ)

end

end A128789.P4943659272364619321

namespace A128789

/-- `lcm(A000079(n)*A000578(n), 2*n)` -/
def P4943659272364619321.Spec : Prop :=
  ∀ n, (P4943659272364619321.a n : ℤ) = A128789 n

end A128789

/-! ## A128789.P1218080547892892607

`A000578(n)+A000225(n)*A000578(n)`
-/

namespace A128789.P1218080547892892607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + A000225 n * A000578 n

end

end A128789.P1218080547892892607

namespace A128789

/-- `A000578(n)+A000225(n)*A000578(n)` -/
def P1218080547892892607.Spec : Prop :=
  ∀ n, P1218080547892892607.a n = A128789 n

end A128789

/-! ## A128789.P13277854329826021898

`A000051(n)*A000578(n)-A000578(n)`
-/

namespace A128789.P13277854329826021898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n * A000578 n - A000578 n

end

end A128789.P13277854329826021898

namespace A128789

/-- `A000051(n)*A000578(n)-A000578(n)` -/
def P13277854329826021898.Spec : Prop :=
  ∀ n, P13277854329826021898.a n = A128789 n

end A128789

/-! ## A128789.P4767193676549095201

`A001787(n)*A058331(n)-A001787(n)`
-/

namespace A128789.P4767193676549095201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n * A058331 n - A001787 n

end

end A128789.P4767193676549095201

namespace A128789

/-- `A001787(n)*A058331(n)-A001787(n)` -/
def P4767193676549095201.Spec : Prop :=
  ∀ n, P4767193676549095201.a n = A128789 n

end A128789

/-! ## A128789.P12189465606389830077

`A036289(n)+A000079(n)*A007531(n+1)`
-/

namespace A128789.P12189465606389830077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 n + A000079 n * A007531 (n + 1)

end

end A128789.P12189465606389830077

namespace A128789

/-- `A036289(n)+A000079(n)*A007531(n+1)` -/
def P12189465606389830077.Spec : Prop :=
  ∀ n, P12189465606389830077.a n = A128789 n

end A128789

/-! ## A128789.P8693215537391341033

`n²*A058922(n+1)/2`
-/

namespace A128789.P8693215537391341033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A058922 (n + 1) : ℚ) / 2

end

end A128789.P8693215537391341033

namespace A128789

/-- `n²*A058922(n+1)/2` -/
def P8693215537391341033.Spec : Prop :=
  ∀ n, P8693215537391341033.a n = (A128789 n : ℚ)

end A128789

/-! ## A128789.P8304640792628220674

`n*A000079(n+1)*n²/2`
-/

namespace A128789.P8304640792628220674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A000079 (n + 1) * (n ^ 2 : ℤ) : ℚ) / 2

end

end A128789.P8304640792628220674

namespace A128789

/-- `n*A000079(n+1)*n²/2` -/
def P8304640792628220674.Spec : Prop :=
  ∀ n, P8304640792628220674.a n = (A128789 n : ℚ)

end A128789

/-! ## A128789.P17656048838154154755

`A001105(n)*A036289(n)/2`
-/

namespace A128789.P17656048838154154755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001105 n * A036289 n : ℚ) / 2

end

end A128789.P17656048838154154755

namespace A128789

/-- `A001105(n)*A036289(n)/2` -/
def P17656048838154154755.Spec : Prop :=
  ∀ n, P17656048838154154755.a n = (A128789 n : ℚ)

end A128789

/-! ## A128789.P12141298272878080139

`A004277(n)²*A001787(n)/2`
-/

namespace A128789.P12141298272878080139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 n ^ 2 * A001787 n : ℚ) / 2

end

end A128789.P12141298272878080139

namespace A128789

/-- `A004277(n)²*A001787(n)/2` -/
def P12141298272878080139.Spec : Prop :=
  ∀ n, P12141298272878080139.a n = (A128789 n : ℚ)

end A128789

/-! ## A128789.P17756775865944409292

`A005843(n)²*A001787(n)/2`
-/

namespace A128789.P17756775865944409292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 n ^ 2 * A001787 n : ℚ) / 2

end

end A128789.P17756775865944409292

namespace A128789

/-- `A005843(n)²*A001787(n)/2` -/
def P17756775865944409292.Spec : Prop :=
  ∀ n, P17756775865944409292.a n = (A128789 n : ℚ)

end A128789

/-! ## A128789.P4410208540420173354

`Δ[A095121(n)]*A000578(n)/2`
-/

namespace A128789.P4410208540420173354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) * A000578 n : ℚ) / 2

end

end A128789.P4410208540420173354

namespace A128789

/-- `Δ[A095121(n)]*A000578(n)/2` -/
def P4410208540420173354.Spec : Prop :=
  ∀ n, P4410208540420173354.a n = (A128789 n : ℚ)

end A128789

/-! ## A128789.P1248620688353342862

`n*A132314(n)²/A000034(n)`
-/

namespace A128789.P1248620688353342862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A132314 n ^ 2 : ℚ) / (A000034 n : ℚ)

end

end A128789.P1248620688353342862

namespace A128789

/-- `n*A132314(n)²/A000034(n)` -/
def P1248620688353342862.Spec : Prop :=
  ∀ n, P1248620688353342862.a n = (A128789 n : ℚ)

end A128789

/-!
# A128790: a(n) = n^3*4^n.

The programs for A128790, the canonical program `A128790.P18260975557873993254` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128790 has offset 0).

The definition of A128790 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3*4^n` (program `A128790.P18260975557873993254`, by `A128790.P18260975557873993254.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128790.P18260975557873993254

`n^3*4^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A128790

/-- `n^3*4^n` -/
def P18260975557873993254.Spec : Prop :=
  ∀ n, (P18260975557873993254.a n : ℤ) = A128790 n

theorem P18260975557873993254.correct : P18260975557873993254.Spec := by
  intro n
  simp only [A128790]

end A128790

/-! ## A128790.P6003094527903138694

`lcm(2, n*A128782(n))`
-/

namespace A128790.P6003094527903138694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((n : ℤ) * A128782 n)

end

end A128790.P6003094527903138694

namespace A128790

/-- `lcm(2, n*A128782(n))` -/
def P6003094527903138694.Spec : Prop :=
  ∀ n, (P6003094527903138694.a n : ℤ) = A128790 n

end A128790

/-! ## A128790.P5582734889867755234

`lcm(n, n*A036289(n)²)`
-/

namespace A128790.P5582734889867755234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) * A036289 n ^ 2)

end

end A128790.P5582734889867755234

namespace A128790

/-- `lcm(n, n*A036289(n)²)` -/
def P5582734889867755234.Spec : Prop :=
  ∀ n, (P5582734889867755234.a n : ℤ) = A128790 n

end A128790

/-! ## A128790.P11476478892604602941

`and(n²*A001787(2*n), -(n+1))`
-/

namespace A128790.P11476478892604602941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n ^ 2 : ℤ) * A001787 (2 * n)) (-(n + 1 : ℤ))

end

end A128790.P11476478892604602941

namespace A128790

/-- `and(n²*A001787(2*n), -(n+1))` -/
def P11476478892604602941.Spec : Prop :=
  ∀ n, P11476478892604602941.a n = A128790 n

end A128790

/-! ## A128790.P11005247489568417055

`xor(1, n*n²*Δ[A002450(n)]+1)`
-/

namespace A128790.P11005247489568417055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) * ((n ^ 2 : ℤ) * (f1 (n + 1) - f1 n)) + 1)

end

end A128790.P11005247489568417055

namespace A128790

/-- `xor(1, n*n²*Δ[A002450(n)]+1)` -/
def P11005247489568417055.Spec : Prop :=
  ∀ n, P11005247489568417055.a n = A128790 n

end A128790

/-! ## A128790.P15854031030304197290

`n*((n*Δ[A000225(n)])²+1)-n`
-/

namespace A128790.P15854031030304197290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (((n : ℤ) * (f1 (n + 1) - f1 n)) ^ 2 + 1) - (n : ℤ)

end

end A128790.P15854031030304197290

namespace A128790

/-- `n*((n*Δ[A000225(n)])²+1)-n` -/
def P15854031030304197290.Spec : Prop :=
  ∀ n, P15854031030304197290.a n = A128790 n

end A128790

/-! ## A128790.P14277969529461522453

`abs(A000578(n)*A262710(n))`
-/

namespace A128790.P14277969529461522453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000578 n * A262710 n|

end

end A128790.P14277969529461522453

namespace A128790

/-- `abs(A000578(n)*A262710(n))` -/
def P14277969529461522453.Spec : Prop :=
  ∀ n, P14277969529461522453.a n = A128790 n

end A128790

/-! ## A128790.P9234176957162435477

`A000578(n)/4^A001489(n)`
-/

namespace A128790.P9234176957162435477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000578 n : ℚ) / (4 : ℚ) ^ (A001489 n : ℤ)

end

end A128790.P9234176957162435477

namespace A128790

/-- `A000578(n)/4^A001489(n)` -/
def P9234176957162435477.Spec : Prop :=
  ∀ n, P9234176957162435477.a n = (A128790 n : ℚ)

end A128790

/-! ## A128790.P1689343895036796240

`record[A025480(n)²*A001787(n)]`
-/

namespace A128790.P1689343895036796240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n ^ 2 * A001787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128790.P1689343895036796240

namespace A128790

/-- `record[A025480(n)²*A001787(n)]` -/
def P1689343895036796240.Spec : Prop :=
  ∀ n, P1689343895036796240.a n = A128790 n

end A128790

/-! ## A128790.P3069077415324829144

`n*A116144(n)-A036289(n)²`
-/

namespace A128790.P3069077415324829144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A116144 n - A036289 n ^ 2

end

end A128790.P3069077415324829144

namespace A128790

/-- `n*A116144(n)-A036289(n)²` -/
def P3069077415324829144.Spec : Prop :=
  ∀ n, P3069077415324829144.a n = A128790 n

end A128790

/-! ## A128790.P13886349792369414021

`xor(1, n*Δ[A002450(n)]*A000290(n)+1)`
-/

namespace A128790.P13886349792369414021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) * ((f1 (n + 1) - f1 n) * A000290 n) + 1)

end

end A128790.P13886349792369414021

namespace A128790

/-- `xor(1, n*Δ[A002450(n)]*A000290(n)+1)` -/
def P13886349792369414021.Spec : Prop :=
  ∀ n, P13886349792369414021.a n = A128790 n

end A128790

/-! ## A128790.P14766137264764379975

`record[A000079(n)*A000578(A142150(n))]`
-/

namespace A128790.P14766137264764379975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A000578 (A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128790.P14766137264764379975

namespace A128790

/-- `record[A000079(n)*A000578(A142150(n))]` -/
def P14766137264764379975.Spec : Prop :=
  ∀ n, P14766137264764379975.a n = A128790 n

end A128790

/-! ## A128790.P9841454484742904687

`A002064(n)*A007758(n)-A007758(n)`
-/

namespace A128790.P9841454484742904687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002064 n * A007758 n - A007758 n

end

end A128790.P9841454484742904687

namespace A128790

/-- `A002064(n)*A007758(n)-A007758(n)` -/
def P9841454484742904687.Spec : Prop :=
  ∀ n, P9841454484742904687.a n = A128790 n

end A128790

/-! ## A128790.P17531719797684948608

`A036289(n)*A248917(n)-A036289(n)`
-/

namespace A128790.P17531719797684948608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 n * A248917 n - A036289 n

end

end A128790.P17531719797684948608

namespace A128790

/-- `A036289(n)*A248917(n)-A036289(n)` -/
def P17531719797684948608.Spec : Prop :=
  ∀ n, P17531719797684948608.a n = A128790 n

end A128790

/-! ## A128790.P14048836567440101589

`A001815(n+1)*A036289(n+1)-A001815(2*n+1)`
-/

namespace A128790.P14048836567440101589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 (n + 1) * A036289 (n + 1) - A001815 (2 * n + 1)

end

end A128790.P14048836567440101589

namespace A128790

/-- `A001815(n+1)*A036289(n+1)-A001815(2*n+1)` -/
def P14048836567440101589.Spec : Prop :=
  ∀ n, P14048836567440101589.a n = A128790 n

end A128790

/-! ## A128790.P17376448685639652710

`A000302(n)*A033431(n)/2`
-/

namespace A128790.P17376448685639652710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000302 n * A033431 n : ℚ) / 2

end

end A128790.P17376448685639652710

namespace A128790

/-- `A000302(n)*A033431(n)/2` -/
def P17376448685639652710.Spec : Prop :=
  ∀ n, P17376448685639652710.a n = (A128790 n : ℚ)

end A128790

/-! ## A128790.P1728867734033017609

`A004277(n)²*A002699(n)/2`
-/

namespace A128790.P1728867734033017609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 n ^ 2 * A002699 n : ℚ) / 2

end

end A128790.P1728867734033017609

namespace A128790

/-- `A004277(n)²*A002699(n)/2` -/
def P1728867734033017609.Spec : Prop :=
  ∀ n, P1728867734033017609.a n = (A128790 n : ℚ)

end A128790

/-! ## A128790.P6873008337498875477

`A005843(n)²*A002699(n)/2`
-/

namespace A128790.P6873008337498875477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 n ^ 2 * A002699 n : ℚ) / 2

end

end A128790.P6873008337498875477

namespace A128790

/-- `A005843(n)²*A002699(n)/2` -/
def P6873008337498875477.Spec : Prop :=
  ∀ n, P6873008337498875477.a n = (A128790 n : ℚ)

end A128790

/-! ## A128790.P3123998019115130168

`A007758(n)*A058922(n+1)/2`
-/

namespace A128790.P3123998019115130168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007758 n * A058922 (n + 1) : ℚ) / 2

end

end A128790.P3123998019115130168

namespace A128790

/-- `A007758(n)*A058922(n+1)/2` -/
def P3123998019115130168.Spec : Prop :=
  ∀ n, P3123998019115130168.a n = (A128790 n : ℚ)

end A128790

/-!
# A128791: a(n) = n^3 * 5^n.

The programs for A128791, the canonical program `A128791.P4585751115799897645` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128791 has offset 0).

The definition of A128791 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3*5^n` (program `A128791.P4585751115799897645`, by `A128791.P4585751115799897645.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128791.P4585751115799897645

`n^3*5^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A128791

/-- `n^3*5^n` -/
def P4585751115799897645.Spec : Prop :=
  ∀ n, (P4585751115799897645.a n : ℤ) = A128791 n

theorem P4585751115799897645.correct : P4585751115799897645.Spec := by
  intro n
  simp only [A128791]

end A128791

/-! ## A128791.P9180161214544249104

`lcm(5, n*A128784(n))`
-/

namespace A128791.P9180161214544249104
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 ((n : ℤ) * A128784 n)

end

end A128791.P9180161214544249104

namespace A128791

/-- `lcm(5, n*A128784(n))` -/
def P9180161214544249104.Spec : Prop :=
  ∀ n, (P9180161214544249104.a n : ℤ) = A128791 n

end A128791

/-! ## A128791.P2301743238223744943

`A005843(n)*A128784(n)/2`
-/

namespace A128791.P2301743238223744943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 n * A128784 n : ℚ) / 2

end

end A128791.P2301743238223744943

namespace A128791

/-- `A005843(n)*A128784(n)/2` -/
def P2301743238223744943.Spec : Prop :=
  ∀ n, P2301743238223744943.a n = (A128791 n : ℚ)

end A128791

/-! ## A128791.P4872103018394029103

`A128784(n)+n*A128799(n)`
-/

namespace A128791.P4872103018394029103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128784 n + (n : ℤ) * A128799 n

end

end A128791.P4872103018394029103

namespace A128791

/-- `A128784(n)+n*A128799(n)` -/
def P4872103018394029103.Spec : Prop :=
  ∀ n, P4872103018394029103.a n = A128791 n

end A128791

/-! ## A128791.P15484078193634883013

`A000578(n)*A034474(n)-A000578(n)`
-/

namespace A128791.P15484078193634883013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n * A034474 n - A000578 n

end

end A128791.P15484078193634883013

namespace A128791

/-- `A000578(n)*A034474(n)-A000578(n)` -/
def P15484078193634883013.Spec : Prop :=
  ∀ n, P15484078193634883013.a n = A128791 n

end A128791

/-! ## A128791.P855276472964514948

`A000351(n+1)*n*n²/5`
-/

namespace A128791.P855276472964514948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000351 (n + 1) * (n * n ^ 2 : ℤ) : ℚ) / 5

end

end A128791.P855276472964514948

namespace A128791

/-- `A000351(n+1)*n*n²/5` -/
def P855276472964514948.Spec : Prop :=
  ∀ n, P855276472964514948.a n = (A128791 n : ℚ)

end A128791

/-! ## A128791.P1508462772502287161

`(n*A128784(n))%A059482(n+1)`
-/

namespace A128791.P1508462772502287161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A128784 n) (A059482 (n + 1))

end

end A128791.P1508462772502287161

namespace A128791

/-- `(n*A128784(n))%A059482(n+1)` -/
def P1508462772502287161.Spec : Prop :=
  ∀ n, P1508462772502287161.a n = A128791 n

end A128791

/-!
# A128792: a(n) = n^3*6^n.

The programs for A128792, the canonical program `A128792.P7863353324319674705` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128792 has offset 0).

The definition of A128792 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3*6^n` (program `A128792.P7863353324319674705`, by `A128792.P7863353324319674705.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128792.P7863353324319674705

`n^3*6^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A128792

/-- `n^3*6^n` -/
def P7863353324319674705.Spec : Prop :=
  ∀ n, (P7863353324319674705.a n : ℤ) = A128792 n

theorem P7863353324319674705.correct : P7863353324319674705.Spec := by
  intro n
  simp only [A128792]

end A128792

/-! ## A128792.P691775638604566709

`lcm(2, n*A128785(n))`
-/

namespace A128792.P691775638604566709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((n : ℤ) * A128785 n)

end

end A128792.P691775638604566709

namespace A128792

/-- `lcm(2, n*A128785(n))` -/
def P691775638604566709.Spec : Prop :=
  ∀ n, (P691775638604566709.a n : ℤ) = A128792 n

end A128792

/-! ## A128792.P9662299445455709399

`lcm(A062074(n), A128789(n))`
-/

namespace A128792.P9662299445455709399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A062074 n) (A128789 n)

end

end A128792.P9662299445455709399

namespace A128792

/-- `lcm(A062074(n), A128789(n))` -/
def P9662299445455709399.Spec : Prop :=
  ∀ n, (P9662299445455709399.a n : ℤ) = A128792 n

end A128792

/-! ## A128792.P12484846395368126197

`A000578(n)/6^A001489(n)`
-/

namespace A128792.P12484846395368126197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000578 n : ℚ) / (6 : ℚ) ^ (A001489 n : ℤ)

end

end A128792.P12484846395368126197

namespace A128792

/-- `A000578(n)/6^A001489(n)` -/
def P12484846395368126197.Spec : Prop :=
  ∀ n, P12484846395368126197.a n = (A128792 n : ℚ)

end A128792

/-! ## A128792.P10279234806304893267

`lcm(n, A000400(n)*A000578(n))`
-/

namespace A128792.P10279234806304893267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A000400 n * A000578 n)

end

end A128792.P10279234806304893267

namespace A128792

/-- `lcm(n, A000400(n)*A000578(n))` -/
def P10279234806304893267.Spec : Prop :=
  ∀ n, (P10279234806304893267.a n : ℤ) = A128792 n

end A128792

/-! ## A128792.P267550085555167116

`A000051(n)*A062074(n)-A062074(n)`
-/

namespace A128792.P267550085555167116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n * A062074 n - A062074 n

end

end A128792.P267550085555167116

namespace A128792

/-- `A000051(n)*A062074(n)-A062074(n)` -/
def P267550085555167116.Spec : Prop :=
  ∀ n, P267550085555167116.a n = A128792 n

end A128792

/-! ## A128792.P10095090043821848656

`A000079(n)*A168299(n)-A000079(n)`
-/

namespace A128792.P10095090043821848656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A168299 n - A000079 n

end

end A128792.P10095090043821848656

namespace A128792

/-- `A000079(n)*A168299(n)-A000079(n)` -/
def P10095090043821848656.Spec : Prop :=
  ∀ n, P10095090043821848656.a n = A128792 n

end A128792

/-! ## A128792.P3048133156746227816

`n*A036292(n)²/A000400(n)`
-/

namespace A128792.P3048133156746227816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A036292 n ^ 2 : ℚ) / (A000400 n : ℚ)

end

end A128792.P3048133156746227816

namespace A128792

/-- `n*A036292(n)²/A000400(n)` -/
def P3048133156746227816.Spec : Prop :=
  ∀ n, P3048133156746227816.a n = (A128792 n : ℚ)

end A128792

/-!
# A128793: a(n) = n^3*7^n.

The programs for A128793, the canonical program `A128793.P3269818969368987692` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128793 has offset 0).

The definition of A128793 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3*7^n` (program `A128793.P3269818969368987692`, by `A128793.P3269818969368987692.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128793.P3269818969368987692

`n^3*7^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A128793

/-- `n^3*7^n` -/
def P3269818969368987692.Spec : Prop :=
  ∀ n, (P3269818969368987692.a n : ℤ) = A128793 n

theorem P3269818969368987692.correct : P3269818969368987692.Spec := by
  intro n
  simp only [A128793]

end A128793

/-! ## A128793.P8388469042856645666

`A000578(n)/7^-n`
-/

namespace A128793.P8388469042856645666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000578 n : ℚ) / (7 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A128793.P8388469042856645666

namespace A128793

/-- `A000578(n)/7^-n` -/
def P8388469042856645666.Spec : Prop :=
  ∀ n, P8388469042856645666.a n = (A128793 n : ℚ)

end A128793

/-! ## A128793.P14242930181618261165

`(n+1)*A128786(n)-A128786(n)`
-/

namespace A128793.P14242930181618261165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A128786 n - A128786 n

end

end A128793.P14242930181618261165

namespace A128793

/-- `(n+1)*A128786(n)-A128786(n)` -/
def P14242930181618261165.Spec : Prop :=
  ∀ n, P14242930181618261165.a n = A128793 n

end A128793

/-! ## A128793.P16721201935565976533

`A000420(n)*A033431(n)/2`
-/

namespace A128793.P16721201935565976533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000420 n * A033431 n : ℚ) / 2

end

end A128793.P16721201935565976533

namespace A128793

/-- `A000420(n)*A033431(n)/2` -/
def P16721201935565976533.Spec : Prop :=
  ∀ n, P16721201935565976533.a n = (A128793 n : ℚ)

end A128793

/-! ## A128793.P14627011381244984275

`A001105(n)*A036293(n)/2`
-/

namespace A128793.P14627011381244984275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001105 n * A036293 n : ℚ) / 2

end

end A128793.P14627011381244984275

namespace A128793

/-- `A001105(n)*A036293(n)/2` -/
def P14627011381244984275.Spec : Prop :=
  ∀ n, P14627011381244984275.a n = (A128793 n : ℚ)

end A128793

/-! ## A128793.P9435027292178266698

`n*A036293(n)²/A000420(n)`
-/

namespace A128793.P9435027292178266698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A036293 n ^ 2 : ℚ) / (A000420 n : ℚ)

end

end A128793.P9435027292178266698

namespace A128793

/-- `n*A036293(n)²/A000420(n)` -/
def P9435027292178266698.Spec : Prop :=
  ∀ n, P9435027292178266698.a n = (A128793 n : ℚ)

end A128793

/-!
# A128794: a(n) = n^3*8^n.

The programs for A128794, the canonical program `A128794.P2230672432098309614` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128794 has offset 0).

The definition of A128794 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3*8^n` (program `A128794.P2230672432098309614`, by `A128794.P2230672432098309614.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128794.P2230672432098309614

`n^3*8^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A128794

/-- `n^3*8^n` -/
def P2230672432098309614.Spec : Prop :=
  ∀ n, (P2230672432098309614.a n : ℤ) = A128794 n

theorem P2230672432098309614.correct : P2230672432098309614.Spec := by
  intro n
  simp only [A128794]

end A128794

/-! ## A128794.P5502625382856476907

`A036289(n)^3`
-/

namespace A128794.P5502625382856476907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 n ^ 3

end

end A128794.P5502625382856476907

namespace A128794

/-- `A036289(n)^3` -/
def P5502625382856476907.Spec : Prop :=
  ∀ n, P5502625382856476907.a n = A128794 n

end A128794

/-! ## A128794.P14506735064215439973

`sqrt(A128782(n))^3`
-/

namespace A128794.P14506735064215439973
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A128782 n : ℝ) ^ 3

end

end A128794.P14506735064215439973

namespace A128794

/-- `sqrt(A128782(n))^3` -/
def P14506735064215439973.Spec : Prop :=
  ∀ n, P14506735064215439973.a n = (A128794 n : ℝ)

end A128794

/-! ## A128794.P11519089787697897879

`A097064(n+1)^3`
-/

namespace A128794.P11519089787697897879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097064 (n + 1) ^ 3

end

end A128794.P11519089787697897879

namespace A128794

/-- `A097064(n+1)^3` -/
def P11519089787697897879.Spec : Prop :=
  ∀ n, P11519089787697897879.a n = A128794 n

end A128794

/-! ## A128794.P8962907350938882349

`(A002064(n)-1)^3`
-/

namespace A128794.P8962907350938882349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002064 n - 1) ^ 3

end

end A128794.P8962907350938882349

namespace A128794

/-- `(A002064(n)-1)^3` -/
def P8962907350938882349.Spec : Prop :=
  ∀ n, P8962907350938882349.a n = A128794 n

end A128794

/-! ## A128794.P10701885754494499008

`(2*A001787(n))^3`
-/

namespace A128794.P10701885754494499008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A001787 n) ^ 3

end

end A128794.P10701885754494499008

namespace A128794

/-- `(2*A001787(n))^3` -/
def P10701885754494499008.Spec : Prop :=
  ∀ n, P10701885754494499008.a n = A128794 n

end A128794

/-! ## A128794.P9018731435665828158

`A093968(2*n)^3`
-/

namespace A128794.P9018731435665828158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093968 (2 * n) ^ 3

end

end A128794.P9018731435665828158

namespace A128794

/-- `A093968(2*n)^3` -/
def P9018731435665828158.Spec : Prop :=
  ∀ n, P9018731435665828158.a n = A128794 n

end A128794

/-! ## A128794.P11613932711583005182

`(A066524(n)+n)^3`
-/

namespace A128794.P11613932711583005182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A066524 n + (n : ℤ)) ^ 3

end

end A128794.P11613932711583005182

namespace A128794

/-- `(A066524(n)+n)^3` -/
def P11613932711583005182.Spec : Prop :=
  ∀ n, P11613932711583005182.a n = A128794 n

end A128794

/-! ## A128794.P5928138870163825932

`(A069229(n)-n)^3`
-/

namespace A128794.P5928138870163825932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A069229 n - (n : ℤ)) ^ 3

end

end A128794.P5928138870163825932

namespace A128794

/-- `(A069229(n)-n)^3` -/
def P5928138870163825932.Spec : Prop :=
  ∀ n, P5928138870163825932.a n = A128794 n

end A128794

/-! ## A128794.P12171808827827804217

`(n*A000079(n))^3`
-/

namespace A128794.P12171808827827804217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A000079 n) ^ 3

end

end A128794.P12171808827827804217

namespace A128794

/-- `(n*A000079(n))^3` -/
def P12171808827827804217.Spec : Prop :=
  ∀ n, P12171808827827804217.a n = A128794 n

end A128794

/-! ## A128794.P15370783854744161060

`(n*A155559(n))^3`
-/

namespace A128794.P15370783854744161060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A155559 n) ^ 3

end

end A128794.P15370783854744161060

namespace A128794

/-- `(n*A155559(n))^3` -/
def P15370783854744161060.Spec : Prop :=
  ∀ n, P15370783854744161060.a n = A128794 n

end A128794

/-! ## A128794.P8917750888691789395

`(n*A171449(n))^3`
-/

namespace A128794.P8917750888691789395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A171449 n) ^ 3

end

end A128794.P8917750888691789395

namespace A128794

/-- `(n*A171449(n))^3` -/
def P8917750888691789395.Spec : Prop :=
  ∀ n, P8917750888691789395.a n = A128794 n

end A128794

/-! ## A128794.P4861008063918901079

`(n*A171559(n))^3`
-/

namespace A128794.P4861008063918901079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A171559 n) ^ 3

end

end A128794.P4861008063918901079

namespace A128794

/-- `(n*A171559(n))^3` -/
def P4861008063918901079.Spec : Prop :=
  ∀ n, P4861008063918901079.a n = A128794 n

end A128794

/-!
# A128795: a(n) = n^3*9^n.

The programs for A128795, the canonical program `A128795.P16103889940377404626` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128795 has offset 0).

The definition of A128795 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3*9^n` (program `A128795.P16103889940377404626`, by `A128795.P16103889940377404626.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128795.P16103889940377404626

`n^3*9^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A128795

/-- `n^3*9^n` -/
def P16103889940377404626.Spec : Prop :=
  ∀ n, (P16103889940377404626.a n : ℤ) = A128795 n

theorem P16103889940377404626.correct : P16103889940377404626.Spec := by
  intro n
  simp only [A128795]

end A128795

/-! ## A128795.P1721031981602906162

`record[A140303(n)²*A198063(n)]`
-/

namespace A128795.P1721031981602906162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140303 n ^ 2 * A198063 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128795.P1721031981602906162

namespace A128795

/-- `record[A140303(n)²*A198063(n)]` -/
def P1721031981602906162.Spec : Prop :=
  ∀ n, P1721031981602906162.a n = A128795 n

end A128795

/-! ## A128795.P4039709604845388147

`A000244(n)*A168299(n)-A000244(n)`
-/

namespace A128795.P4039709604845388147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A168299 n - A000244 n

end

end A128795.P4039709604845388147

namespace A128795

/-- `A000244(n)*A168299(n)-A000244(n)` -/
def P4039709604845388147.Spec : Prop :=
  ∀ n, P4039709604845388147.a n = A128795 n

end A128795

/-! ## A128795.P9753460136179082482

`A002522(n)*A158749(n)-A158749(n)`
-/

namespace A128795.P9753460136179082482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n * A158749 n - A158749 n

end

end A128795.P9753460136179082482

namespace A128795

/-- `A002522(n)*A158749(n)-A158749(n)` -/
def P9753460136179082482.Spec : Prop :=
  ∀ n, P9753460136179082482.a n = A128795 n

end A128795

/-! ## A128795.P4174078483202361512

`abs((A116138(n)-A036290(n))*A036290(n))`
-/

namespace A128795.P4174078483202361512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A116138 n - A036290 n) * A036290 n|

end

end A128795.P4174078483202361512

namespace A128795

/-- `abs((A116138(n)-A036290(n))*A036290(n))` -/
def P4174078483202361512.Spec : Prop :=
  ∀ n, P4174078483202361512.a n = A128795 n

end A128795

/-! ## A128795.P16008876542249409501

`A062074(2*n)/8`
-/

namespace A128795.P16008876542249409501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062074 (2 * n) : ℚ) / 8

end

end A128795.P16008876542249409501

namespace A128795

/-- `A062074(2*n)/8` -/
def P16008876542249409501.Spec : Prop :=
  ∀ n, P16008876542249409501.a n = (A128795 n : ℚ)

end A128795

/-! ## A128795.P8320280238620429269

`A127960(n)²/A028310(n)`
-/

namespace A128795.P8320280238620429269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127960 n ^ 2 : ℚ) / (A028310 n : ℚ)

end

end A128795.P8320280238620429269

namespace A128795

/-- `A127960(n)²/A028310(n)` -/
def P8320280238620429269.Spec : Prop :=
  ∀ n, P8320280238620429269.a n = (A128795 n : ℚ)

end A128795

/-! ## A128795.P18330430510170696294

`A069996(n)*A128800(n+1)/A036289(n+1)`
-/

namespace A128795.P18330430510170696294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069996 n * A128800 (n + 1) : ℚ) / (A036289 (n + 1) : ℚ)

end

end A128795.P18330430510170696294

namespace A128795

/-- `A069996(n)*A128800(n+1)/A036289(n+1)` -/
def P18330430510170696294.Spec : Prop :=
  ∀ n, P18330430510170696294.a n = (A128795 n : ℚ)

end A128795

/-! ## A128795.P2363655633187398242

`A036290(n)^3/A000244(n)`
-/

namespace A128795.P2363655633187398242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036290 n ^ 3 : ℚ) / (A000244 n : ℚ)

end

end A128795.P2363655633187398242

namespace A128795

/-- `A036290(n)^3/A000244(n)` -/
def P2363655633187398242.Spec : Prop :=
  ∀ n, P2363655633187398242.a n = (A128795 n : ℚ)

end A128795

/-!
# A128796: a(n) = n*(n-1)*2^n.

The programs for A128796, the canonical program `A128796.P2345555735138113176` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128796 has offset 0).

The definition of A128796 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n-1)*2^n` (program `A128796.P2345555735138113176`, by `A128796.P2345555735138113176.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128796.P11001728018559904989

`(n²-n)*2^n`
-/

namespace A128796.P11001728018559904989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (n : ℤ)) * (2 ^ n : ℤ)

end

end A128796.P11001728018559904989

namespace A128796

/-- `(n²-n)*2^n` -/
def P11001728018559904989.Spec : Prop :=
  ∀ n, P11001728018559904989.a n = A128796 n

theorem P11001728018559904989.correct : P11001728018559904989.Spec := by
  intro n
  simp only [A128796, Nat.add_sub_cancel, A128796.P11001728018559904989.a, A128796.P2345555735138113176.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A128796

/-! ## A128796.P2345555735138113176

`n*(n-1)*2^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A128796

/-- `n*(n-1)*2^n` -/
def P2345555735138113176.Spec : Prop :=
  ∀ n, P2345555735138113176.a n = A128796 n

theorem P2345555735138113176.correct : P2345555735138113176.Spec := by
  intro n
  simp only [A128796]

end A128796

/-! ## A128796.P11805824973254112541

`C(n, 2)/2^-(n+1)`
-/

namespace A128796.P11805824973254112541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℚ) / (2 : ℚ) ^ (-(n + 1 : ℤ) : ℤ)

end

end A128796.P11805824973254112541

namespace A128796

/-- `C(n, 2)/2^-(n+1)` -/
def P11805824973254112541.Spec : Prop :=
  ∀ n, P11805824973254112541.a n = (A128796 n : ℚ)

end A128796

/-! ## A128796.P2443695902987700953

`lcm(n, n-1)/2^-n`
-/

namespace A128796.P2443695902987700953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) ((n : ℤ) - 1) : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A128796.P2443695902987700953

namespace A128796

/-- `lcm(n, n-1)/2^-n` -/
def P2443695902987700953.Spec : Prop :=
  ∀ n, P2443695902987700953.a n = (A128796 n : ℚ)

end A128796

/-! ## A128796.P586749570946468415

`abs(n*A159964(n))`
-/

namespace A128796.P586749570946468415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A159964 n|

end

end A128796.P586749570946468415

namespace A128796

/-- `abs(n*A159964(n))` -/
def P586749570946468415.Spec : Prop :=
  ∀ n, P586749570946468415.a n = A128796 n

end A128796

/-! ## A128796.P14366296839555628963

`A100381(n)+A100381(n)`
-/

namespace A128796.P14366296839555628963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100381 n + A100381 n

end

end A128796.P14366296839555628963

namespace A128796

/-- `A100381(n)+A100381(n)` -/
def P14366296839555628963.Spec : Prop :=
  ∀ n, P14366296839555628963.a n = A128796 n

end A128796

/-! ## A128796.P16699213137256618230

`A178987(n)+A084857(n)`
-/

namespace A128796.P16699213137256618230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178987 n + A084857 n

end

end A128796.P16699213137256618230

namespace A128796

/-- `A178987(n)+A084857(n)` -/
def P16699213137256618230.Spec : Prop :=
  ∀ n, P16699213137256618230.a n = A128796 n

end A128796

/-! ## A128796.P16322138468266388528

`A007758(n)-A036289(n)`
-/

namespace A128796.P16322138468266388528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007758 n - A036289 n

end

end A128796.P16322138468266388528

namespace A128796

/-- `A007758(n)-A036289(n)` -/
def P16322138468266388528.Spec : Prop :=
  ∀ n, P16322138468266388528.a n = A128796 n

end A128796

/-! ## A128796.P12912817545249997145

`A086950(n)-A001787(n)`
-/

namespace A128796.P12912817545249997145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086950 n - A001787 n

end

end A128796.P12912817545249997145

namespace A128796

/-- `A086950(n)-A001787(n)` -/
def P12912817545249997145.Spec : Prop :=
  ∀ n, P12912817545249997145.a n = A128796 n

end A128796

/-! ## A128796.P5520522684324178963

`A014477(n)-A130129(n)`
-/

namespace A128796.P5520522684324178963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014477 n - A130129 n

end

end A128796.P5520522684324178963

namespace A128796

/-- `A014477(n)-A130129(n)` -/
def P5520522684324178963.Spec : Prop :=
  ∀ n, P5520522684324178963.a n = A128796 n

end A128796

/-! ## A128796.P7697334446488599141

`A248917(n)-A002064(n)`
-/

namespace A128796.P7697334446488599141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248917 n - A002064 n

end

end A128796.P7697334446488599141

namespace A128796

/-- `A248917(n)-A002064(n)` -/
def P7697334446488599141.Spec : Prop :=
  ∀ n, P7697334446488599141.a n = A128796 n

end A128796

/-! ## A128796.P13966162043820812758

`A276041(n)-A014480(n)`
-/

namespace A128796.P13966162043820812758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276041 n - A014480 n

end

end A128796.P13966162043820812758

namespace A128796

/-- `A276041(n)-A014480(n)` -/
def P13966162043820812758.Spec : Prop :=
  ∀ n, P13966162043820812758.a n = A128796 n

end A128796

/-! ## A128796.P4653295571881676531

`lcm(A036289(n), A159964(n))`
-/

namespace A128796.P4653295571881676531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A036289 n) (A159964 n)

end

end A128796.P4653295571881676531

namespace A128796

/-- `lcm(A036289(n), A159964(n))` -/
def P4653295571881676531.Spec : Prop :=
  ∀ n, (P4653295571881676531.a n : ℤ) = A128796 n

end A128796

/-! ## A128796.P9636954081784382072

`A178987(n+1)+A052481(n)`
-/

namespace A128796.P9636954081784382072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178987 (n + 1) + A052481 n

end

end A128796.P9636954081784382072

namespace A128796

/-- `A178987(n+1)+A052481(n)` -/
def P9636954081784382072.Spec : Prop :=
  ∀ n, P9636954081784382072.a n = A128796 n

end A128796

/-! ## A128796.P17720784788030113658

`A007758(n)+1-A002064(n)`
-/

namespace A128796.P17720784788030113658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007758 n + (1 - A002064 n)

end

end A128796.P17720784788030113658

namespace A128796

/-- `A007758(n)+1-A002064(n)` -/
def P17720784788030113658.Spec : Prop :=
  ∀ n, P17720784788030113658.a n = A128796 n

end A128796

/-! ## A128796.P2923441586176934157

`A055580(n)-A003261(n+1)`
-/

namespace A128796.P2923441586176934157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055580 n - A003261 (n + 1)

end

end A128796.P2923441586176934157

namespace A128796

/-- `A055580(n)-A003261(n+1)` -/
def P2923441586176934157.Spec : Prop :=
  ∀ n, P2923441586176934157.a n = A128796 n

end A128796

/-! ## A128796.P8694888290454616798

`A007758(n)-A097064(n+1)`
-/

namespace A128796.P8694888290454616798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007758 n - A097064 (n + 1)

end

end A128796.P8694888290454616798

namespace A128796

/-- `A007758(n)-A097064(n+1)` -/
def P8694888290454616798.Spec : Prop :=
  ∀ n, P8694888290454616798.a n = A128796 n

end A128796

/-! ## A128796.P7688874460719306207

`A248917(n)-(A036289(n)+1)`
-/

namespace A128796.P7688874460719306207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248917 n - (A036289 n + 1)

end

end A128796.P7688874460719306207

namespace A128796

/-- `A248917(n)-(A036289(n)+1)` -/
def P7688874460719306207.Spec : Prop :=
  ∀ n, P7688874460719306207.a n = A128796 n

end A128796

/-! ## A128796.P16834228159197594869

`A196508(n)-A028399(n+2)`
-/

namespace A128796.P16834228159197594869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196508 n - A028399 (n + 2)

end

end A128796.P16834228159197594869

namespace A128796

/-- `A196508(n)-A028399(n+2)` -/
def P16834228159197594869.Spec : Prop :=
  ∀ n, P16834228159197594869.a n = A128796 n

end A128796

/-! ## A128796.P1711482595298845840

`A000079(n)*A002061(n)-A000079(n)`
-/

namespace A128796.P1711482595298845840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A002061 n - A000079 n

end

end A128796.P1711482595298845840

namespace A128796

/-- `A000079(n)*A002061(n)-A000079(n)` -/
def P1711482595298845840.Spec : Prop :=
  ∀ n, P1711482595298845840.a n = A128796 n

end A128796

/-!
# A128797: a(n) = (n^2-n)*3^n.

The programs for A128797, the canonical program `A128797.P16414781802524646076` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128797 has offset 0).

The definition of A128797 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n²-n)*3^n` (program `A128797.P16414781802524646076`, by `A128797.P16414781802524646076.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128797.P16414781802524646076

`(n²-n)*3^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A128797

/-- `(n²-n)*3^n` -/
def P16414781802524646076.Spec : Prop :=
  ∀ n, P16414781802524646076.a n = A128797 n

theorem P16414781802524646076.correct : P16414781802524646076.Spec := by
  intro n
  simp only [A128797]

end A128797

/-! ## A128797.P16295976049813462433

`lcm(n, n-1)/3^-n`
-/

namespace A128797.P16295976049813462433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) ((n : ℤ) - 1) : ℚ) / (3 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A128797.P16295976049813462433

namespace A128797

/-- `lcm(n, n-1)/3^-n` -/
def P16295976049813462433.Spec : Prop :=
  ∀ n, P16295976049813462433.a n = (A128797 n : ℚ)

end A128797

/-! ## A128797.P4228833868060191733

`lcm(2, n*(n-1)*3^n)`
-/

namespace A128797.P4228833868060191733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((n : ℤ) * ((n : ℤ) - 1) * (3 ^ n : ℤ))

end

end A128797.P4228833868060191733

namespace A128797

/-- `lcm(2, n*(n-1)*3^n)` -/
def P4228833868060191733.Spec : Prop :=
  ∀ n, (P4228833868060191733.a n : ℤ) = A128797 n

end A128797

/-! ## A128797.P5351523024769601256

`xor(1, n*abs(1-n)*3^n+1)`
-/

namespace A128797.P5351523024769601256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) * |1 - (n : ℤ)| * (3 ^ n : ℤ) + 1)

end

end A128797.P5351523024769601256

namespace A128797

/-- `xor(1, n*abs(1-n)*3^n+1)` -/
def P5351523024769601256.Spec : Prop :=
  ∀ n, P5351523024769601256.a n = A128797 n

end A128797

/-! ## A128797.P6517952676440537794

`2*A161680(n)/3^-n`
-/

namespace A128797.P6517952676440537794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A161680 n : ℚ) / (3 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A128797.P6517952676440537794

namespace A128797

/-- `2*A161680(n)/3^-n` -/
def P6517952676440537794.Spec : Prop :=
  ∀ n, P6517952676440537794.a n = (A128797 n : ℚ)

end A128797

/-! ## A128797.P4198169168431622008

`(A036290(n)+1)*(n-1)+1-n`
-/

namespace A128797.P4198169168431622008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036290 n + 1) * ((n : ℤ) - 1) + 1 - (n : ℤ)

end

end A128797.P4198169168431622008

namespace A128797

/-- `(A036290(n)+1)*(n-1)+1-n` -/
def P4198169168431622008.Spec : Prop :=
  ∀ n, P4198169168431622008.a n = A128797 n

end A128797

/-! ## A128797.P6235297111752874564

`A127960(n)-A036290(n)`
-/

namespace A128797.P6235297111752874564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127960 n - A036290 n

end

end A128797.P6235297111752874564

namespace A128797

/-- `A127960(n)-A036290(n)` -/
def P6235297111752874564.Spec : Prop :=
  ∀ n, P6235297111752874564.a n = A128797 n

end A128797

/-! ## A128797.P16127358056201188283

`A127960(n)-n*A000244(n)`
-/

namespace A128797.P16127358056201188283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127960 n - (n : ℤ) * A000244 n

end

end A128797.P16127358056201188283

namespace A128797

/-- `A127960(n)-n*A000244(n)` -/
def P16127358056201188283.Spec : Prop :=
  ∀ n, P16127358056201188283.a n = A128797 n

end A128797

/-! ## A128797.P14049822806798907040

`A116138(n)-A036290(n)-A036290(n)`
-/

namespace A128797.P14049822806798907040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116138 n - A036290 n - A036290 n

end

end A128797.P14049822806798907040

namespace A128797

/-- `A116138(n)-A036290(n)-A036290(n)` -/
def P14049822806798907040.Spec : Prop :=
  ∀ n, P14049822806798907040.a n = A128797 n

end A128797

/-! ## A128797.P13151561627769643615

`A000244(n)*A002061(n)-A000244(n)`
-/

namespace A128797.P13151561627769643615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A002061 n - A000244 n

end

end A128797.P13151561627769643615

namespace A128797

/-- `A000244(n)*A002061(n)-A000244(n)` -/
def P13151561627769643615.Spec : Prop :=
  ∀ n, P13151561627769643615.a n = A128797 n

end A128797

/-! ## A128797.P11103290418030417562

`A127960(n)-A127960(n)/A028310(n)`
-/

namespace A128797.P11103290418030417562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127960 n : ℚ) - (A127960 n : ℚ) / (A028310 n : ℚ)

end

end A128797.P11103290418030417562

namespace A128797

/-- `A127960(n)-A127960(n)/A028310(n)` -/
def P11103290418030417562.Spec : Prop :=
  ∀ n, P11103290418030417562.a n = (A128797 n : ℚ)

end A128797

/-! ## A128797.P5660691912847769182

`A128800(n)/2^n`
-/

namespace A128797.P5660691912847769182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128800 n : ℚ) / (2 ^ n : ℚ)

end

end A128797.P5660691912847769182

namespace A128797

/-- `A128800(n)/2^n` -/
def P5660691912847769182.Spec : Prop :=
  ∀ n, P5660691912847769182.a n = (A128797 n : ℚ)

end A128797

/-! ## A128797.P178964423905025397

`A128803(n)/3^n`
-/

namespace A128797.P178964423905025397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128803 n : ℚ) / (3 ^ n : ℚ)

end

end A128797.P178964423905025397

namespace A128797

/-- `A128803(n)/3^n` -/
def P178964423905025397.Spec : Prop :=
  ∀ n, P178964423905025397.a n = (A128797 n : ℚ)

end A128797

/-! ## A128797.P11260779656759463842

`floor(A128803(n)/A000244(n))`
-/

namespace A128797.P11260779656759463842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A128803 n : ℚ) / (A000244 n : ℚ)⌋

end

end A128797.P11260779656759463842

namespace A128797

/-- `floor(A128803(n)/A000244(n))` -/
def P11260779656759463842.Spec : Prop :=
  ∀ n, P11260779656759463842.a n = A128797 n

end A128797

/-! ## A128797.P8772059256355628806

`A036290(n)²/A000244(n)-A036290(n)`
-/

namespace A128797.P8772059256355628806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036290 n ^ 2 : ℚ) / (A000244 n : ℚ) - (A036290 n : ℚ)

end

end A128797.P8772059256355628806

namespace A128797

/-- `A036290(n)²/A000244(n)-A036290(n)` -/
def P8772059256355628806.Spec : Prop :=
  ∀ n, P8772059256355628806.a n = (A128797 n : ℚ)

end A128797

/-!
# A128798: a(n) = n*(n-1)*4^n.

The programs for A128798, the canonical program `A128798.P11634242177375116821` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128798 has offset 0).

The definition of A128798 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n-1)*4^n` (program `A128798.P11634242177375116821`, by `A128798.P11634242177375116821.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128798.P12672053167085855813

`(n²-n)*4^n`
-/

namespace A128798.P12672053167085855813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (n : ℤ)) * (4 ^ n : ℤ)

end

end A128798.P12672053167085855813

namespace A128798

/-- `(n²-n)*4^n` -/
def P12672053167085855813.Spec : Prop :=
  ∀ n, P12672053167085855813.a n = A128798 n

theorem P12672053167085855813.correct : P12672053167085855813.Spec := by
  intro n
  simp only [A128798, Nat.add_sub_cancel, A128798.P12672053167085855813.a, A128798.P11634242177375116821.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A128798

/-! ## A128798.P11634242177375116821

`n*(n-1)*4^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A128798

/-- `n*(n-1)*4^n` -/
def P11634242177375116821.Spec : Prop :=
  ∀ n, P11634242177375116821.a n = A128798 n

theorem P11634242177375116821.correct : P11634242177375116821.Spec := by
  intro n
  simp only [A128798]

end A128798

/-! ## A128798.P9985736015971389360

`lcm(n, n-1)/4^-n`
-/

namespace A128798.P9985736015971389360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) ((n : ℤ) - 1) : ℚ) / (4 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A128798.P9985736015971389360

namespace A128798

/-- `lcm(n, n-1)/4^-n` -/
def P9985736015971389360.Spec : Prop :=
  ∀ n, P9985736015971389360.a n = (A128798 n : ℚ)

end A128798

/-! ## A128798.P5207324664138403918

`4^(n+1)*C(n, 2)/2`
-/

namespace A128798.P5207324664138403918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ (n + 1) * Nat.choose n 2 : ℚ) / 2

end

end A128798.P5207324664138403918

namespace A128798

/-- `4^(n+1)*C(n, 2)/2` -/
def P5207324664138403918.Spec : Prop :=
  ∀ n, P5207324664138403918.a n = (A128798 n : ℚ)

end A128798

/-! ## A128798.P9925318833732494899

`round(2^Δ[n²]*A161680(n))`
-/

namespace A128798.P9925318833732494899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ) * (A161680 n : ℚ))

end

end A128798.P9925318833732494899

namespace A128798

/-- `round(2^Δ[n²]*A161680(n))` -/
def P9925318833732494899.Spec : Prop :=
  ∀ n, P9925318833732494899.a n = A128798 n

end A128798

/-! ## A128798.P14417089358264634026

`A128782(n)-A018215(n)`
-/

namespace A128798.P14417089358264634026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128782 n - A018215 n

end

end A128798.P14417089358264634026

namespace A128798

/-- `A128782(n)-A018215(n)` -/
def P14417089358264634026.Spec : Prop :=
  ∀ n, P14417089358264634026.a n = A128798 n

end A128798

/-! ## A128798.P9397803478683701984

`A036289(n)²-A018215(n)`
-/

namespace A128798.P9397803478683701984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 n ^ 2 - A018215 n

end

end A128798.P9397803478683701984

namespace A128798

/-- `A036289(n)²-A018215(n)` -/
def P9397803478683701984.Spec : Prop :=
  ∀ n, P9397803478683701984.a n = A128798 n

end A128798

/-! ## A128798.P17212909972290226970

`A116144(n)-A036289(2*n)`
-/

namespace A128798.P17212909972290226970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116144 n - A036289 (2 * n)

end

end A128798.P17212909972290226970

namespace A128798

/-- `A116144(n)-A036289(2*n)` -/
def P17212909972290226970.Spec : Prop :=
  ∀ n, P17212909972290226970.a n = A128798 n

end A128798

/-! ## A128798.P15355681491730478635

`lcm(2, A036289(n)*A159964(n))`
-/

namespace A128798.P15355681491730478635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A036289 n * A159964 n)

end

end A128798.P15355681491730478635

namespace A128798

/-- `lcm(2, A036289(n)*A159964(n))` -/
def P15355681491730478635.Spec : Prop :=
  ∀ n, (P15355681491730478635.a n : ℤ) = A128798 n

end A128798

/-! ## A128798.P14574627463825529915

`A097064(n+1)²-A001787(2*n)`
-/

namespace A128798.P14574627463825529915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097064 (n + 1) ^ 2 - A001787 (2 * n)

end

end A128798.P14574627463825529915

namespace A128798

/-- `A097064(n+1)²-A001787(2*n)` -/
def P14574627463825529915.Spec : Prop :=
  ∀ n, P14574627463825529915.a n = A128798 n

end A128798

/-! ## A128798.P1036709212684345919

`A340257(2*n)-A001787(n+1)²`
-/

namespace A128798.P1036709212684345919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340257 (2 * n) - A001787 (n + 1) ^ 2

end

end A128798.P1036709212684345919

namespace A128798

/-- `A340257(2*n)-A001787(n+1)²` -/
def P1036709212684345919.Spec : Prop :=
  ∀ n, P1036709212684345919.a n = A128798 n

end A128798

/-! ## A128798.P2664171362719830373

`(2*A001787(n))²-A001787(2*n)`
-/

namespace A128798.P2664171362719830373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A001787 n) ^ 2 - A001787 (2 * n)

end

end A128798.P2664171362719830373

namespace A128798

/-- `(2*A001787(n))²-A001787(2*n)` -/
def P2664171362719830373.Spec : Prop :=
  ∀ n, P2664171362719830373.a n = A128798 n

end A128798

/-! ## A128798.P5373269129151369665

`A011782(n+1)²*A050187(2*n)/2`
-/

namespace A128798.P5373269129151369665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) ^ 2 * A050187 (2 * n) : ℚ) / 2

end

end A128798.P5373269129151369665

namespace A128798

/-- `A011782(n+1)²*A050187(2*n)/2` -/
def P5373269129151369665.Spec : Prop :=
  ∀ n, P5373269129151369665.a n = (A128798 n : ℚ)

end A128798

/-! ## A128798.P12384449164578676251

`A300451(2*n)-A081908(2*n+1)/2`
-/

namespace A128798.P12384449164578676251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300451 (2 * n) : ℚ) - (A081908 (2 * n + 1) : ℚ) / 2

end

end A128798.P12384449164578676251

namespace A128798

/-- `A300451(2*n)-A081908(2*n+1)/2` -/
def P12384449164578676251.Spec : Prop :=
  ∀ n, P12384449164578676251.a n = (A128798 n : ℚ)

end A128798

/-! ## A128798.P10032882011158265508

`A011782(2*n+1)*A050187(2*n)/2`
-/

namespace A128798.P10032882011158265508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (2 * n + 1) * A050187 (2 * n) : ℚ) / 2

end

end A128798.P10032882011158265508

namespace A128798

/-- `A011782(2*n+1)*A050187(2*n)/2` -/
def P10032882011158265508.Spec : Prop :=
  ∀ n, P10032882011158265508.a n = (A128798 n : ℚ)

end A128798

/-! ## A128798.P17449699334369424578

`A139756(2*n+1)*A289207(2*n)/2`
-/

namespace A128798.P17449699334369424578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139756 (2 * n + 1) * A289207 (2 * n) : ℚ) / 2

end

end A128798.P17449699334369424578

namespace A128798

/-- `A139756(2*n+1)*A289207(2*n)/2` -/
def P17449699334369424578.Spec : Prop :=
  ∀ n, P17449699334369424578.a n = (A128798 n : ℚ)

end A128798

/-! ## A128798.P1395830885524559511

`(A356888(2*n+1)-A001787(2*n+1))/2`
-/

namespace A128798.P1395830885524559511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356888 (2 * n + 1) - A001787 (2 * n + 1) : ℚ) / 2

end

end A128798.P1395830885524559511

namespace A128798

/-- `(A356888(2*n+1)-A001787(2*n+1))/2` -/
def P1395830885524559511.Spec : Prop :=
  ∀ n, P1395830885524559511.a n = (A128798 n : ℚ)

end A128798

/-! ## A128798.P2868392060111347408

`A001815(2*n)-A001815(2*n+1)/(4*n+2)`
-/

namespace A128798.P2868392060111347408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001815 (2 * n) : ℚ) - (A001815 (2 * n + 1) : ℚ) / (4 * n + 2 : ℚ)

end

end A128798.P2868392060111347408

namespace A128798

/-- `A001815(2*n)-A001815(2*n+1)/(4*n+2)` -/
def P2868392060111347408.Spec : Prop :=
  ∀ n, P2868392060111347408.a n = (A128798 n : ℚ)

end A128798

/-! ## A128798.P13790233934781523612

`A000337(n)*A036289(n)-A036289(n)`
-/

namespace A128798.P13790233934781523612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000337 n * A036289 n - A036289 n

end

end A128798.P13790233934781523612

namespace A128798

/-- `A000337(n)*A036289(n)-A036289(n)` -/
def P13790233934781523612.Spec : Prop :=
  ∀ n, P13790233934781523612.a n = A128798 n

end A128798

/-! ## A128798.P4572377601299906637

`A128796(n)*A276041(n)/A002061(n+1)`
-/

namespace A128798.P4572377601299906637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128796 n * A276041 n : ℚ) / (A002061 (n + 1) : ℚ)

end

end A128798.P4572377601299906637

namespace A128798

/-- `A128796(n)*A276041(n)/A002061(n+1)` -/
def P4572377601299906637.Spec : Prop :=
  ∀ n, P4572377601299906637.a n = (A128798 n : ℚ)

end A128798

/-!
# A128799: a(n) = n*(n-1)*5^n.

The programs for A128799, the canonical program `A128799.P2138756944582292063` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128799 has offset 0).

The definition of A128799 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n-1)*5^n` (program `A128799.P2138756944582292063`, by `A128799.P2138756944582292063.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128799.P12750771605096695499

`(n²-n)*5^n`
-/

namespace A128799.P12750771605096695499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (n : ℤ)) * (5 ^ n : ℤ)

end

end A128799.P12750771605096695499

namespace A128799

/-- `(n²-n)*5^n` -/
def P12750771605096695499.Spec : Prop :=
  ∀ n, P12750771605096695499.a n = A128799 n

theorem P12750771605096695499.correct : P12750771605096695499.Spec := by
  intro n
  simp only [A128799, Nat.add_sub_cancel, A128799.P12750771605096695499.a, A128799.P2138756944582292063.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A128799

/-! ## A128799.P2138756944582292063

`n*(n-1)*5^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A128799

/-- `n*(n-1)*5^n` -/
def P2138756944582292063.Spec : Prop :=
  ∀ n, P2138756944582292063.a n = A128799 n

theorem P2138756944582292063.correct : P2138756944582292063.Spec := by
  intro n
  simp only [A128799]

end A128799

/-! ## A128799.P1874715120977077589

`15*a(n-1)-75*a(n-2)+125*a(n-3)` with `a(0)=0, a(1)=0, a(2)=50`
-/

namespace A128799.P1874715120977077589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 50] fun n a =>
  15 * a (n - 1) - 75 * a (n - 2) + 125 * a (n - 3)

end

end A128799.P1874715120977077589

namespace A128799

/-- `15*a(n-1)-75*a(n-2)+125*a(n-3)` -/
def P1874715120977077589.Spec : Prop :=
  ∀ n, P1874715120977077589.a n = A128799 n

theorem P1874715120977077589.correct : P1874715120977077589.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A128799, Nat.add_sub_cancel, A128799.P1874715120977077589.a, A128799.P2138756944582292063.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A128799, Nat.add_sub_cancel, A128799.P1874715120977077589.a, A128799.P2138756944582292063.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A128799

/-! ## A128799.P10480980445937205694

`lcm(n, n-1)/5^-n`
-/

namespace A128799.P10480980445937205694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) ((n : ℤ) - 1) : ℚ) / (5 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A128799.P10480980445937205694

namespace A128799

/-- `lcm(n, n-1)/5^-n` -/
def P10480980445937205694.Spec : Prop :=
  ∀ n, P10480980445937205694.a n = (A128799 n : ℚ)

end A128799

/-! ## A128799.P10180622765304261694

`4*C(n, 2)*5^n/2`
-/

namespace A128799.P10180622765304261694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * Nat.choose n 2 * 5 ^ n : ℚ) / 2

end

end A128799.P10180622765304261694

namespace A128799

/-- `4*C(n, 2)*5^n/2` -/
def P10180622765304261694.Spec : Prop :=
  ∀ n, P10180622765304261694.a n = (A128799 n : ℚ)

end A128799

/-! ## A128799.P16362688306742829704

`abs((n-1)*A036291(n))`
-/

namespace A128799.P16362688306742829704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - 1) * A036291 n|

end

end A128799.P16362688306742829704

namespace A128799

/-- `abs((n-1)*A036291(n))` -/
def P16362688306742829704.Spec : Prop :=
  ∀ n, P16362688306742829704.a n = A128799 n

end A128799

/-! ## A128799.P11692280004366660082

`A128784(n)-n*5^n`
-/

namespace A128799.P11692280004366660082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128784 n - (n * 5 ^ n : ℤ)

end

end A128799.P11692280004366660082

namespace A128799

/-- `A128784(n)-n*5^n` -/
def P11692280004366660082.Spec : Prop :=
  ∀ n, P11692280004366660082.a n = A128799 n

end A128799

/-! ## A128799.P7470706158357846238

`-((n-n²)*A000351(n))`
-/

namespace A128799.P7470706158357846238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((n : ℤ) - (n ^ 2 : ℤ)) * A000351 n)

end

end A128799.P7470706158357846238

namespace A128799

/-- `-((n-n²)*A000351(n))` -/
def P7470706158357846238.Spec : Prop :=
  ∀ n, P7470706158357846238.a n = A128799 n

end A128799

/-! ## A128799.P17288314993720492623

`abs((n²-n)*Δ[A003463(n)])`
-/

namespace A128799.P17288314993720492623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n ^ 2 : ℤ) - (n : ℤ)) * (f1 (n + 1) - f1 n)|

end

end A128799.P17288314993720492623

namespace A128799

/-- `abs((n²-n)*Δ[A003463(n)])` -/
def P17288314993720492623.Spec : Prop :=
  ∀ n, P17288314993720492623.a n = A128799 n

end A128799

/-! ## A128799.P11043280256093887703

`lcm(2, A024000(n)*A036291(n))`
-/

namespace A128799.P11043280256093887703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A024000 n * A036291 n)

end

end A128799.P11043280256093887703

namespace A128799

/-- `lcm(2, A024000(n)*A036291(n))` -/
def P11043280256093887703.Spec : Prop :=
  ∀ n, (P11043280256093887703.a n : ℤ) = A128799 n

end A128799

/-! ## A128799.P5230418995826634645

`n*(A050916(n)-1)-(A050916(n)-1)`
-/

namespace A128799.P5230418995826634645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A050916 n - 1) - (A050916 n - 1)

end

end A128799.P5230418995826634645

namespace A128799

/-- `n*(A050916(n)-1)-(A050916(n)-1)` -/
def P5230418995826634645.Spec : Prop :=
  ∀ n, P5230418995826634645.a n = A128799 n

end A128799

/-! ## A128799.P4974503275642118485

`A000351(n)*A002061(n)-A000351(n)`
-/

namespace A128799.P4974503275642118485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n * A002061 n - A000351 n

end

end A128799.P4974503275642118485

namespace A128799

/-- `A000351(n)*A002061(n)-A000351(n)` -/
def P4974503275642118485.Spec : Prop :=
  ∀ n, P4974503275642118485.a n = A128799 n

end A128799

/-! ## A128799.P294803389199995979

`A000720(gcd(n, n+1))-A024000(n)*A036291(n)`
-/

namespace A128799.P294803389199995979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Nat.gcd n (n + 1)) - A024000 n * A036291 n

end

end A128799.P294803389199995979

namespace A128799

/-- `A000720(gcd(n, n+1))-A024000(n)*A036291(n)` -/
def P294803389199995979.Spec : Prop :=
  ∀ n, P294803389199995979.a n = A128799 n

end A128799

/-! ## A128799.P10941770562432493520

`A128963(A000007(n)+n)/(n+1)`
-/

namespace A128799.P10941770562432493520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128963 (A000007 n + (n : ℤ)).toNat : ℚ) / (n + 1 : ℚ)

end

end A128799.P10941770562432493520

namespace A128799

/-- `A128963(A000007(n)+n)/(n+1)` -/
def P10941770562432493520.Spec : Prop :=
  ∀ n, P10941770562432493520.a n = (A128799 n : ℚ)

end A128799

/-! ## A128799.P10778099708112810592

`A000351(n)*A045991(n)/A028310(n)`
-/

namespace A128799.P10778099708112810592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000351 n * A045991 n : ℚ) / (A028310 n : ℚ)

end

end A128799.P10778099708112810592

namespace A128799

/-- `A000351(n)*A045991(n)/A028310(n)` -/
def P10778099708112810592.Spec : Prop :=
  ∀ n, P10778099708112810592.a n = (A128799 n : ℚ)

end A128799

