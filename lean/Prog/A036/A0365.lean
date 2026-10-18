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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
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
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A036502: Numerator of n^(n-2)/n!.

The programs for A036502, there is no canonical definition to state claims against.
-/

/-! ## A036502.P3265189323417797622

`round(A036505(n)/(n+1)²)`
-/

namespace A036502.P3265189323417797622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A036505 n : ℚ) / ((n + 1) ^ 2 : ℚ))

end

end A036502.P3265189323417797622

/-! ## A036502.P17415743337699479665

`ceil(A036504(n+1)/(n+1))`
-/

namespace A036502.P17415743337699479665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A036504 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A036502.P17415743337699479665

/-! ## A036502.P12096733724247380549

`round(abs(A227831(n+1))/(n+1))`
-/

namespace A036502.P12096733724247380549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((|A227831 (n + 1)| : ℚ) / (n + 1 : ℚ))

end

end A036502.P12096733724247380549

/-! ## A036502.P4228921607142159489

`round(A036504(n+1)/A000027(n+1))`
-/

namespace A036502.P4228921607142159489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A036504 (n + 1) : ℚ) / (A000027 (n + 1) : ℚ))

end

end A036502.P4228921607142159489

/-! ## A036502.P7587618748291848568

`round(A000272(n+1)/A051696(n+1))`
-/

namespace A036502.P7587618748291848568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000272 (n + 1) : ℚ) / (A051696 (n + 1) : ℚ))

end

end A036502.P7587618748291848568

/-! ## A036502.P10650087273680728100

`ceil(A105599(A000124(n))/A051696(n+1))`
-/

namespace A036502.P10650087273680728100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A105599 (A000124 n).toNat : ℚ) / (A051696 (n + 1) : ℚ)⌉

end

end A036502.P10650087273680728100

/-!
# A036503: Denominator of n^(n-2)/n!.

The programs for A036503, there is no canonical definition to state claims against.
-/

/-! ## A036503.P15405108777279641124

`char[1]+n!/∏{p}[n+1, #^val((n-1)!, #)]`
-/

namespace A036503.P15405108777279641124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) + (Nat.factorial n : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (Nat.factorial ((n : ℤ) - 1).toNat) p : ℕ) : ℚ)

end

end A036503.P15405108777279641124

/-! ## A036503.P17610683999581491429

`A095996(char[1]+1+n)`
-/

namespace A036503.P17610683999581491429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095996 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)

end

end A036503.P17610683999581491429

/-! ## A036503.P3164391998044141040

`A173185(n)%3*A095996(n+1)`
-/

namespace A036503.P3164391998044141040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173185 n) 3 * A095996 (n + 1)

end

end A036503.P3164391998044141040

/-! ## A036503.P15282602254602914612

`A014963(A014847(n+1))*A095996(n+1)`
-/

namespace A036503.P15282602254602914612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A014847 (n + 1)).toNat * A095996 (n + 1)

end

end A036503.P15282602254602914612

/-! ## A036503.P8023326893608063579

`lcm(A007318(A074828(n+1)), A095996(n+1))`
-/

namespace A036503.P8023326893608063579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 (A074828 (n + 1)).toNat) (A095996 (n + 1))

end

end A036503.P8023326893608063579

/-!
# A036504: Numerator of n^(n-1)/n!.

The programs for A036504, there is no canonical definition to state claims against.
-/

/-! ## A036504.P14753989289585925331

`abs(A227831(n+1))`
-/

namespace A036504.P14753989289585925331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A227831 (n + 1)|

end

end A036504.P14753989289585925331

/-! ## A036504.P9940731287589301709

`A036505(n)/(n+1)`
-/

namespace A036504.P9940731287589301709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036505 n : ℚ) / (n + 1 : ℚ)

end

end A036504.P9940731287589301709

/-! ## A036504.P7088115006324723221

`abs(A264234(n+1)/(n+1))`
-/

namespace A036504.P7088115006324723221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A264234 (n + 1) : ℚ) / (n + 1 : ℚ)|

end

end A036504.P7088115006324723221

/-! ## A036504.P4180227195000229819

`A395543(n+1)/((n+1)*(n+1))`
-/

namespace A036504.P4180227195000229819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A395543 (n + 1) : ℚ) / ((n + 1) * (n + 1) : ℚ)

end

end A036504.P4180227195000229819

/-! ## A036504.P1932192462950790160

`(n+1)^(n-1)/A062763(n+1)`
-/

namespace A036504.P1932192462950790160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) / (A062763 (n + 1) : ℚ)

end

end A036504.P1932192462950790160

/-! ## A036504.P6042124810838439915

`A000272(n+1)/∏{p}[n+1, #^val((n-1)!, #)]`
-/

namespace A036504.P6042124810838439915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000272 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (Nat.factorial ((n : ℤ) - 1).toNat) p : ℕ) : ℚ)

end

end A036504.P6042124810838439915

/-! ## A036504.P7315931568134146694

`floor(A036505(n)/A008619(2*n))`
-/

namespace A036504.P7315931568134146694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036505 n : ℚ) / (A008619 (2 * n) : ℚ)⌋

end

end A036504.P7315931568134146694

/-! ## A036504.P4633418907306229785

`lcm(A008683(4*(n+1))+1, A227831(n+1))`
-/

namespace A036504.P4633418907306229785
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (4 * (n + 1)) + 1) (A227831 (n + 1))

end

end A036504.P4633418907306229785

/-! ## A036504.P1282073672742688327

`(n+1)^n/A051696(n+1)`
-/

namespace A036504.P1282073672742688327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ n : ℚ) / (A051696 (n + 1) : ℚ)

end

end A036504.P1282073672742688327

/-!
# A036505: Numerator of (n+1)^n/n!.

The programs for A036505, there is no canonical definition to state claims against.
-/

/-! ## A036505.P6592171969009345130

`abs(A264234(n+1))`
-/

namespace A036505.P6592171969009345130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A264234 (n + 1)|

end

end A036505.P6592171969009345130

/-! ## A036505.P17915072707366608614

`(n+1)*A036504(n+1)`
-/

namespace A036505.P17915072707366608614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A036504 (n + 1)

end

end A036505.P17915072707366608614

/-! ## A036505.P7586891401592624679

`A395543(n+1)/(n+1)`
-/

namespace A036505.P7586891401592624679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A395543 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A036505.P7586891401592624679

/-! ## A036505.P1882689699132001723

`abs((n+1)*A227831(n+1))`
-/

namespace A036505.P1882689699132001723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A227831 (n + 1)|

end

end A036505.P1882689699132001723

/-! ## A036505.P16910119659927209171

`lcm(A007318(∑[n]), A264234(n+1))`
-/

namespace A036505.P16910119659927209171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)) (A264234 (n + 1))

end

end A036505.P16910119659927209171

/-! ## A036505.P9080743328251673740

`gcd(A024153(2*n+1), A264234(n+1))`
-/

namespace A036505.P9080743328251673740
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A024153 (2 * n + 1)) (A264234 (n + 1))

end

end A036505.P9080743328251673740

/-! ## A036505.P7485422099641043104

`A056916(n+1)/A051696(n+1)*A067911(n+1)`
-/

namespace A036505.P7485422099641043104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056916 (n + 1) : ℚ) / (A051696 (n + 1) : ℚ) * (A067911 (n + 1) : ℚ)

end

end A036505.P7485422099641043104

/-! ## A036505.P16176560298497601072

`(n+1)^n/A062763(n+1)`
-/

namespace A036505.P16176560298497601072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ n : ℚ) / (A062763 (n + 1) : ℚ)

end

end A036505.P16176560298497601072

/-! ## A036505.P2556481034134193998

`A000169(n+1)/A000142(n)*A095996(n+1)`
-/

namespace A036505.P2556481034134193998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000169 (n + 1) : ℚ) / (A000142 n : ℚ) * (A095996 (n + 1) : ℚ)

end

end A036505.P2556481034134193998

/-! ## A036505.P4684108991252421038

`A000169(n+1)/gcd(A000169(n+1), A001563(n))`
-/

namespace A036505.P4684108991252421038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000169 (n + 1) : ℚ) / (Int.gcd (A000169 (n + 1)) (A001563 n) : ℚ)

end

end A036505.P4684108991252421038

/-!
# A036506: Number of labeled 4-trees with n nodes.

The programs for A036506, the canonical program `A036506.P8544512114416842399` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036506 has offset 1).

The definition of A036506 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036506.P8544512114416842399

`C(n+1, 4)*(4*(n+1)-15)^(n-5)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036506

/-- `C(n+1, 4)*(4*(n+1)-15)^(n-5)` -/
def P8544512114416842399.Spec : Prop :=
  ∀ n, P8544512114416842399.a n = (A036506 (n + 1) : ℚ)

end A036506

/-! ## A036506.P4154532014658518040

`A211430(round(ϕ*a(n-1)))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A036506.P4154532014658518040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 1] fun n a =>
  A211430 (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))).toNat

end

end A036506.P4154532014658518040

namespace A036506

/-- `A211430(round(ϕ*a(n-1)))` -/
def P4154532014658518040.Spec : Prop :=
  ∀ n, P4154532014658518040.a n = A036506 (n + 1)

end A036506

/-! ## A036506.P8088662300861553492

`A089967(2*a(n-1)-a(n-4))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A036506.P8088662300861553492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 1] fun n a =>
  A089967 (2 * a (n - 1) - a (n - 4)).toNat

end

end A036506.P8088662300861553492

namespace A036506

/-- `A089967(2*a(n-1)-a(n-4))` -/
def P8088662300861553492.Spec : Prop :=
  ∀ n, P8088662300861553492.a n = A036506 (n + 1)

end A036506

/-!
# A036507: Smallest square containing exactly n decimal digits '0'.

The programs for A036507, there is no canonical definition to state claims against.
-/

/-! ## A036507.P13722930549755438236

`A048345(n+1)²`
-/

namespace A036507.P13722930549755438236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048345 (n + 1) ^ 2

end

end A036507.P13722930549755438236

/-! ## A036507.P463867092564958546

`A048345(n+1)^A014963(A001316(n))`
-/

namespace A036507.P463867092564958546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048345 (n + 1) : ℚ) ^ (A014963 (A001316 n).toNat : ℤ)

end

end A036507.P463867092564958546

/-! ## A036507.P863344585411052050

`A048345(n+1)^A020639(A034041(n))`
-/

namespace A036507.P863344585411052050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048345 (n + 1) : ℚ) ^ (A020639 (A034041 n).toNat : ℤ)

end

end A036507.P863344585411052050

/-! ## A036507.P7437040447328099653

`A048345(n+1)^A020639(A000079(n))`
-/

namespace A036507.P7437040447328099653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048345 (n + 1) : ℚ) ^ (A020639 (A000079 n).toNat : ℤ)

end

end A036507.P7437040447328099653

/-! ## A036507.P9639939730329629405

`A048345(n+1)^A020639(A095121(n))`
-/

namespace A036507.P9639939730329629405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048345 (n + 1) : ℚ) ^ (A020639 (A095121 n).toNat : ℤ)

end

end A036507.P9639939730329629405

/-!
# A036508: Smallest square containing exactly n 1's.

The programs for A036508, there is no canonical definition to state claims against.
-/

/-! ## A036508.P6008886440812100377

`A048346(n+1)²`
-/

namespace A036508.P6008886440812100377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048346 (n + 1) ^ 2

end

end A036508.P6008886440812100377

/-! ## A036508.P12755584794472801180

`A048346(n+1)^gcd(2, A000079(n))`
-/

namespace A036508.P12755584794472801180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048346 (n + 1) ^ Int.gcd 2 (A000079 n)

end

end A036508.P12755584794472801180

/-! ## A036508.P15086419053657519906

`A048346(n+1)^A020639(2*(n+1))`
-/

namespace A036508.P15086419053657519906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048346 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A036508.P15086419053657519906

/-! ## A036508.P10792309590887711950

`A048346(n+1)^A006530(A001316(n))`
-/

namespace A036508.P10792309590887711950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048346 (n + 1) : ℚ) ^ (A006530 (A001316 n).toNat : ℤ)

end

end A036508.P10792309590887711950

/-! ## A036508.P527840877512942949

`A048346(n+1)^A000040(A161618(n+1))`
-/

namespace A036508.P527840877512942949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048346 (n + 1) : ℚ) ^ (A000040 (A161618 (n + 1)).toNat : ℤ)

end

end A036508.P527840877512942949

/-!
# A036509: Smallest square containing exactly n 2's.

The programs for A036509, there is no canonical definition to state claims against.
-/

/-! ## A036509.P14402421752813287090

`A048347(n+1)²`
-/

namespace A036509.P14402421752813287090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048347 (n + 1) ^ 2

end

end A036509.P14402421752813287090

/-! ## A036509.P16671680343334029814

`A048347(n+1)^ratio[A007283(n)]`
-/

namespace A036509.P16671680343334029814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A048347 (n + 1) : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)

end

end A036509.P16671680343334029814

/-! ## A036509.P16347348628622816366

`A048347(n+1)^p?[A124765(n)]`
-/

namespace A036509.P16347348628622816366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048347 (n + 1) : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A036509.P16347348628622816366

/-! ## A036509.P16672367101705701489

`A048347(n+1)^A020639(A034041(n))`
-/

namespace A036509.P16672367101705701489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048347 (n + 1) : ℚ) ^ (A020639 (A034041 n).toNat : ℤ)

end

end A036509.P16672367101705701489

/-! ## A036509.P9558476726021747577

`A048347(n+1)^A000032(A034541(n+1))`
-/

namespace A036509.P9558476726021747577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048347 (n + 1) : ℚ) ^ (A000032 (A034541 (n + 1)).toNat : ℤ)

end

end A036509.P9558476726021747577

/-!
# A036510: Smallest square containing exactly n 3's.

The programs for A036510, there is no canonical definition to state claims against.
-/

/-! ## A036510.P519222043542025130

`A048348(n+1)²`
-/

namespace A036510.P519222043542025130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048348 (n + 1) ^ 2

end

end A036510.P519222043542025130

/-! ## A036510.P393822114336808563

`A048348(n+1)^p?[A025452(n)]`
-/

namespace A036510.P393822114336808563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048348 (n + 1) : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A036510.P393822114336808563

/-! ## A036510.P14398298356944391913

`A048348(n+1)^A000005(A151800(n))`
-/

namespace A036510.P14398298356944391913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048348 (n + 1) : ℚ) ^ (A000005 (A151800 n).toNat : ℤ)

end

end A036510.P14398298356944391913

/-! ## A036510.P8822576992268648500

`A048348(n+1)^A000005(A031928(n+1))`
-/

namespace A036510.P8822576992268648500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048348 (n + 1) : ℚ) ^ (A000005 (A031928 (n + 1)).toNat : ℤ)

end

end A036510.P8822576992268648500

/-! ## A036510.P16067095202073478145

`A048348(n+1)^A020639(2*ceil(2^n/3))`
-/

namespace A036510.P16067095202073478145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048348 (n + 1) : ℚ) ^ (A020639 (2 * ⌈(2 ^ n : ℚ) / 3⌉).toNat : ℤ)

end

end A036510.P16067095202073478145

/-!
# A036511: Smallest square containing exactly n 4's.

The programs for A036511, there is no canonical definition to state claims against.
-/

/-! ## A036511.P3176391058823464989

`A048349(n+1)²`
-/

namespace A036511.P3176391058823464989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048349 (n + 1) ^ 2

end

end A036511.P3176391058823464989

/-! ## A036511.P9139408405065369444

`A048349(n+1)^A020639(2*∑{d}[n+1, #])`
-/

namespace A036511.P9139408405065369444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048349 (n + 1) : ℚ) ^ (A020639 (2 * (∑ d ∈ Nat.divisors (f1 n), d)) : ℤ)

end

end A036511.P9139408405065369444

/-! ## A036511.P15801799185394584396

`A048349(n+1)^A020639(A034041(n))`
-/

namespace A036511.P15801799185394584396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048349 (n + 1) : ℚ) ^ (A020639 (A034041 n).toNat : ℤ)

end

end A036511.P15801799185394584396

/-! ## A036511.P1833018429517566282

`A048349(n+1)^A020639(A050573(n+1))`
-/

namespace A036511.P1833018429517566282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048349 (n + 1) : ℚ) ^ (A020639 (A050573 (n + 1)).toNat : ℤ)

end

end A036511.P1833018429517566282

/-! ## A036511.P7050326564309168295

`A048349(n+1)^A000005(A107257(n+1))`
-/

namespace A036511.P7050326564309168295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048349 (n + 1) : ℚ) ^ (A000005 (A107257 (n + 1)).toNat : ℤ)

end

end A036511.P7050326564309168295

/-!
# A036512: Smallest square containing exactly n 5's.

The programs for A036512, there is no canonical definition to state claims against.
-/

/-! ## A036512.P10620995968032395259

`A048350(n+1)²`
-/

namespace A036512.P10620995968032395259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048350 (n + 1) ^ 2

end

end A036512.P10620995968032395259

/-! ## A036512.P16508249444911991473

`A048350(n+1)^A020639(2*∑{d}[n+1, #])`
-/

namespace A036512.P16508249444911991473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048350 (n + 1) : ℚ) ^ (A020639 (2 * (∑ d ∈ Nat.divisors (f1 n), d)) : ℤ)

end

end A036512.P16508249444911991473

/-! ## A036512.P9250678921448874767

`A048350(n+1)^A020639(A016825(n))`
-/

namespace A036512.P9250678921448874767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048350 (n + 1) : ℚ) ^ (A020639 (A016825 n).toNat : ℤ)

end

end A036512.P9250678921448874767

/-! ## A036512.P13165360063583790085

`A048350(n+1)^A020639(A034041(n))`
-/

namespace A036512.P13165360063583790085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048350 (n + 1) : ℚ) ^ (A020639 (A034041 n).toNat : ℤ)

end

end A036512.P13165360063583790085

/-! ## A036512.P16093807024049446290

`A048350(n+1)^A020639(A055983(n))`
-/

namespace A036512.P16093807024049446290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048350 (n + 1) : ℚ) ^ (A020639 (A055983 n).toNat : ℤ)

end

end A036512.P16093807024049446290

/-!
# A036513: Smallest square containing exactly n 6's.

The programs for A036513, there is no canonical definition to state claims against.
-/

/-! ## A036513.P2035739539335325707

`A048351(n+1)²`
-/

namespace A036513.P2035739539335325707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048351 (n + 1) ^ 2

end

end A036513.P2035739539335325707

/-! ## A036513.P977275133707584716

`record[A048351(A038568(n))²]`
-/

namespace A036513.P977275133707584716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048351 (A038568 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036513.P977275133707584716

/-! ## A036513.P3547488662281624265

`A048351(n+1)^A020639(2*∑{d}[n+1, #])`
-/

namespace A036513.P3547488662281624265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048351 (n + 1) : ℚ) ^ (A020639 (2 * (∑ d ∈ Nat.divisors (f1 n), d)) : ℤ)

end

end A036513.P3547488662281624265

/-! ## A036513.P4421904175858495625

`A048351(n+1)^A020639(A034041(n))`
-/

namespace A036513.P4421904175858495625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048351 (n + 1) : ℚ) ^ (A020639 (A034041 n).toNat : ℤ)

end

end A036513.P4421904175858495625

/-! ## A036513.P70299414001953973

`A048351(n+1)^A000005(A252358(n))`
-/

namespace A036513.P70299414001953973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048351 (n + 1) : ℚ) ^ (A000005 (A252358 n).toNat : ℤ)

end

end A036513.P70299414001953973

/-!
# A036514: Smallest square containing exactly n 7's.

The programs for A036514, there is no canonical definition to state claims against.
-/

/-! ## A036514.P16457066383673499522

`A048352(n+1)²`
-/

namespace A036514.P16457066383673499522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048352 (n + 1) ^ 2

end

end A036514.P16457066383673499522

/-! ## A036514.P14911679561991504239

`A048352(n+1)^p?[A035172(n+1)]`
-/

namespace A036514.P14911679561991504239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035172 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048352 (n + 1) : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A036514.P14911679561991504239

/-! ## A036514.P10713860624494683675

`A048352(n+1)^gcd(2, A048345(n+1))`
-/

namespace A036514.P10713860624494683675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048352 (n + 1) ^ Int.gcd 2 (A048345 (n + 1))

end

end A036514.P10713860624494683675

/-! ## A036514.P5257143117594555129

`A048352(n+1)^A020639(A034041(n))`
-/

namespace A036514.P5257143117594555129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048352 (n + 1) : ℚ) ^ (A020639 (A034041 n).toNat : ℤ)

end

end A036514.P5257143117594555129

/-! ## A036514.P15986580025259729087

`A048352(n+1)^A001222(A001248(n+1))`
-/

namespace A036514.P15986580025259729087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048352 (n + 1) : ℚ) ^ (A001222 (A001248 (n + 1)).toNat : ℤ)

end

end A036514.P15986580025259729087

/-!
# A036515: Smallest square containing exactly n 8's.

The programs for A036515, there is no canonical definition to state claims against.
-/

/-! ## A036515.P26398412430317841

`A048353(n+1)²`
-/

namespace A036515.P26398412430317841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048353 (n + 1) ^ 2

end

end A036515.P26398412430317841

/-! ## A036515.P4023268972101548521

`record[A048353(A133310(n))²]`
-/

namespace A036515.P4023268972101548521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048353 (A133310 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036515.P4023268972101548521

/-! ## A036515.P10142423809909750449

`A048353(n+1)^A020639(A016825(n))`
-/

namespace A036515.P10142423809909750449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048353 (n + 1) : ℚ) ^ (A020639 (A016825 n).toNat : ℤ)

end

end A036515.P10142423809909750449

/-! ## A036515.P11889798897175269751

`A048353(n+1)^A020639(A034041(n))`
-/

namespace A036515.P11889798897175269751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048353 (n + 1) : ℚ) ^ (A020639 (A034041 n).toNat : ℤ)

end

end A036515.P11889798897175269751

/-! ## A036515.P11170708985028932555

`record[A048353(A133310(n))]*A048353(n+1)`
-/

namespace A036515.P11170708985028932555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048353 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A048353 (n + 1)

end

end A036515.P11170708985028932555

/-!
# A036516: Smallest square containing exactly n 9's.

The programs for A036516, there is no canonical definition to state claims against.
-/

/-! ## A036516.P5250602923890747859

`A048354(n+1)²`
-/

namespace A036516.P5250602923890747859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048354 (n + 1) ^ 2

end

end A036516.P5250602923890747859

/-! ## A036516.P1546779105452111491

`A048354(n+1)^p?[A035172(n+1)]`
-/

namespace A036516.P1546779105452111491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035172 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048354 (n + 1) : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A036516.P1546779105452111491

/-! ## A036516.P14029960176089119055

`A048354(n+1)^A020639(A016825(n))`
-/

namespace A036516.P14029960176089119055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048354 (n + 1) : ℚ) ^ (A020639 (A016825 n).toNat : ℤ)

end

end A036516.P14029960176089119055

/-! ## A036516.P17822876581942578026

`A048354(n+1)^A020639(A034041(n))`
-/

namespace A036516.P17822876581942578026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048354 (n + 1) : ℚ) ^ (A020639 (A034041 n).toNat : ℤ)

end

end A036516.P17822876581942578026

/-! ## A036516.P9337322359121045098

`A048354(n+1)^A000005(A077800(n+1))`
-/

namespace A036516.P9337322359121045098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048354 (n + 1) : ℚ) ^ (A000005 (A077800 (n + 1)).toNat : ℤ)

end

end A036516.P9337322359121045098

/-!
# A036517: Smallest triangular number containing exactly n 0's.

The programs for A036517, there is no canonical definition to state claims against.
-/

/-! ## A036517.P12447261562180876796

`A000217(A048355(n+1))`
-/

namespace A036517.P12447261562180876796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A048355 (n + 1)).toNat

end

end A036517.P12447261562180876796

/-!
# A036518: Smallest triangular number containing exactly n 1's.

The programs for A036518, there is no canonical definition to state claims against.
-/

/-! ## A036518.P8982690205375448192

`A000217(A048356(n+1))`
-/

namespace A036518.P8982690205375448192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A048356 (n + 1)).toNat

end

end A036518.P8982690205375448192

/-! ## A036518.P16716822060441170933

`A064038(A048356(n+1)+1)`
-/

namespace A036518.P16716822060441170933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064038 (A048356 (n + 1) + 1).toNat

end

end A036518.P16716822060441170933

/-!
# A036519: Smallest triangular number containing exactly n 2's.

The programs for A036519, there is no canonical definition to state claims against.
-/

/-! ## A036519.P1435010085338043483

`C(A048357(n+1)+1, 2)`
-/

namespace A036519.P1435010085338043483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A048357 (n + 1) + 1).toNat 2

end

end A036519.P1435010085338043483

/-!
# A036520: Smallest triangular number containing exactly n 3's.

The programs for A036520, there is no canonical definition to state claims against.
-/

/-! ## A036520.P6473352303116669775

`C(A048358(n+1)+1, 2)`
-/

namespace A036520.P6473352303116669775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A048358 (n + 1) + 1).toNat 2

end

end A036520.P6473352303116669775

/-! ## A036520.P16682132291086283751

`A000217(A048358(n+1))`
-/

namespace A036520.P16682132291086283751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A048358 (n + 1)).toNat

end

end A036520.P16682132291086283751

/-!
# A036521: Smallest triangular number containing exactly n 4's.

The programs for A036521, there is no canonical definition to state claims against.
-/

/-! ## A036521.P5634180936621480233

`C(A048359(n+1)+1, 2)`
-/

namespace A036521.P5634180936621480233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A048359 (n + 1) + 1).toNat 2

end

end A036521.P5634180936621480233

/-! ## A036521.P12093807778212079800

`A000217(A048359(n+1))`
-/

namespace A036521.P12093807778212079800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A048359 (n + 1)).toNat

end

end A036521.P12093807778212079800

/-!
# A036522: Smallest triangular number containing exactly n 5's.

The programs for A036522, there is no canonical definition to state claims against.
-/

/-! ## A036522.P12279037262662795747

`C(A048360(n+1)+1, 2)`
-/

namespace A036522.P12279037262662795747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A048360 (n + 1) + 1).toNat 2

end

end A036522.P12279037262662795747

/-!
# A036523: Smallest triangular number containing exactly n 6's.

The programs for A036523, there is no canonical definition to state claims against.
-/

/-! ## A036523.P15080955104375578769

`C(A048361(n+1)+1, 2)`
-/

namespace A036523.P15080955104375578769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A048361 (n + 1) + 1).toNat 2

end

end A036523.P15080955104375578769

/-! ## A036523.P4734683500574124377

`A000217(A048361(n+1))`
-/

namespace A036523.P4734683500574124377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A048361 (n + 1)).toNat

end

end A036523.P4734683500574124377

/-!
# A036524: Smallest triangular number containing exactly n 7's.

The programs for A036524, there is no canonical definition to state claims against.
-/

/-! ## A036524.P5222107621638356

`C(A048362(n+1)+1, 2)`
-/

namespace A036524.P5222107621638356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A048362 (n + 1) + 1).toNat 2

end

end A036524.P5222107621638356

/-!
# A036525: Smallest triangular number containing exactly n 8's.

The programs for A036525, there is no canonical definition to state claims against.
-/

/-! ## A036525.P15559330170330219138

`C(A048363(n+1)+1, 2)`
-/

namespace A036525.P15559330170330219138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A048363 (n + 1) + 1).toNat 2

end

end A036525.P15559330170330219138

/-!
# A036526: Smallest triangular number containing exactly n 9's.

The programs for A036526, there is no canonical definition to state claims against.
-/

/-! ## A036526.P16985765738971620739

`C(A048364(n+1)+1, 2)`
-/

namespace A036526.P16985765738971620739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A048364 (n + 1) + 1).toNat 2

end

end A036526.P16985765738971620739

/-! ## A036526.P673829297709345263

`(A048364(n+1)+A048364(n+1)²)/2*A145901(∑[n])`
-/

namespace A036526.P673829297709345263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048364 (n + 1) + A048364 (n + 1) ^ 2 : ℚ) / 2 * (A145901 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A036526.P673829297709345263

/-! ## A036526.P3541017291465369072

`((A048364(n+1)+A048364(n+1)²)/2)%A184684(n+1)`
-/

namespace A036526.P3541017291465369072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A048364 (n + 1) + A048364 (n + 1) ^ 2 : ℚ) / 2)) (A184684 (n + 1))

end

end A036526.P3541017291465369072

/-! ## A036526.P2052291772872749078

`char[A184692(n+1)]+(A048364(n+1)+A048364(n+1)²)/2`
-/

namespace A036526.P2052291772872749078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184692 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) + (A048364 (n + 1) + A048364 (n + 1) ^ 2 : ℚ) / 2

end

end A036526.P2052291772872749078

/-!
# A036527: Smallest cube containing exactly n 0's.

The programs for A036527, there is no canonical definition to state claims against.
-/

/-! ## A036527.P2713134191834588446

`A048365(n)^3`
-/

namespace A036527.P2713134191834588446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048365 n ^ 3

end

end A036527.P2713134191834588446

/-! ## A036527.P12903467041758024767

`A000578(A048365(n))`
-/

namespace A036527.P12903467041758024767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A048365 n).toNat

end

end A036527.P12903467041758024767

/-! ## A036527.P322887365576331735

`A000290(A048365(n))*A048365(A052061(n+1))`
-/

namespace A036527.P322887365576331735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A048365 n).toNat * A048365 (A052061 (n + 1)).toNat

end

end A036527.P322887365576331735

/-! ## A036527.P3236594227524815378

`A048365(A004902(n+1))²*A048365(n)`
-/

namespace A036527.P3236594227524815378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048365 (A004902 (n + 1)).toNat ^ 2 * A048365 n

end

end A036527.P3236594227524815378

/-!
# A036537: Numbers whose number of divisors is a power of 2.

The programs for A036537, the canonical program `A036537.P3717985819955807243` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036537 has offset 1).

The definition of A036537 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036537.P3717985819955807243

`eq[1, A359473(n+1)]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A036537

/-- `eq[1, A359473(n+1)]+1` -/
def P3717985819955807243.Spec : Prop :=
  ∀ n, (P3717985819955807243.a n : ℤ) = A036537 (n + 1)

theorem P3717985819955807243.correct : P3717985819955807243.Spec := by
  intro n
  simp only [A036537, Nat.add_sub_cancel]

end A036537

/-! ## A036537.P13954804986277891502

`eq[0, A285099(A000005(n+1))]+1`
-/

namespace A036537.P13954804986277891502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285099 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036537.P13954804986277891502

namespace A036537

/-- `eq[0, A285099(A000005(n+1))]+1` -/
def P13954804986277891502.Spec : Prop :=
  ∀ n, (P13954804986277891502.a n : ℤ) = A036537 (n + 1)

end A036537

/-! ## A036537.P8533219826617740526

`eq[1, A072963(2*A000005(n+1))]+1`
-/

namespace A036537.P8533219826617740526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (2 * A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036537.P8533219826617740526

namespace A036537

/-- `eq[1, A072963(2*A000005(n+1))]+1` -/
def P8533219826617740526.Spec : Prop :=
  ∀ n, (P8533219826617740526.a n : ℤ) = A036537 (n + 1)

end A036537

/-! ## A036537.P16919309217297194691

`eq[2, A006530(2*A000005(n+1))]+1`
-/

namespace A036537.P16919309217297194691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036537.P16919309217297194691

namespace A036537

/-- `eq[2, A006530(2*A000005(n+1))]+1` -/
def P16919309217297194691.Spec : Prop :=
  ∀ n, (P16919309217297194691.a n : ℤ) = A036537 (n + 1)

end A036537

/-! ## A036537.P181259235639505728

`eq[2, A014963(2*A000005(n+1))]+1`
-/

namespace A036537.P181259235639505728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036537.P181259235639505728

namespace A036537

/-- `eq[2, A014963(2*A000005(n+1))]+1` -/
def P181259235639505728.Spec : Prop :=
  ∀ n, (P181259235639505728.a n : ℤ) = A036537 (n + 1)

end A036537

/-! ## A036537.P4219323781553396613

`lt[A000120(2*A000005(n+1)), 2]+1`
-/

namespace A036537.P4219323781553396613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (2 * A000005 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A036537.P4219323781553396613

namespace A036537

/-- `lt[A000120(2*A000005(n+1)), 2]+1` -/
def P4219323781553396613.Spec : Prop :=
  ∀ n, (P4219323781553396613.a n : ℤ) = A036537 (n + 1)

end A036537

/-! ## A036537.P8546229564114923621

`record[(n+1)/A001221(2*A000005(n+1))]`
-/

namespace A036537.P8546229564114923621
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A001221 (2 * A000005 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036537.P8546229564114923621

namespace A036537

/-- `record[(n+1)/A001221(2*A000005(n+1))]` -/
def P8546229564114923621.Spec : Prop :=
  ∀ n, P8546229564114923621.a n = (A036537 (n + 1) : ℚ)

end A036537

/-! ## A036537.P355431092928644472

`filter[A268335(n+1), A359473(#)]`
-/

namespace A036537.P355431092928644472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A036537.P355431092928644472

namespace A036537

/-- `filter[A268335(n+1), A359473(#)]` -/
def P355431092928644472.Spec : Prop :=
  ∀ n, P355431092928644472.a n = A036537 (n + 1)

end A036537

/-! ## A036537.P5510006263695891886

`filter[A382061(n+1), A359473(#)]`
-/

namespace A036537.P5510006263695891886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A036537.P5510006263695891886

namespace A036537

/-- `filter[A382061(n+1), A359473(#)]` -/
def P5510006263695891886.Spec : Prop :=
  ∀ n, P5510006263695891886.a n = A036537 (n + 1)

end A036537

/-! ## A036537.P12810772491523779603

`filter[A336590(n+1), A359473(#)]`
-/

namespace A036537.P12810772491523779603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A036537.P12810772491523779603

namespace A036537

/-- `filter[A336590(n+1), A359473(#)]` -/
def P12810772491523779603.Spec : Prop :=
  ∀ n, P12810772491523779603.a n = A036537 (n + 1)

end A036537

/-! ## A036537.P5217729049223375137

`filter[A162644(n+1), A359473(#)]`
-/

namespace A036537.P5217729049223375137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A036537.P5217729049223375137

namespace A036537

/-- `filter[A162644(n+1), A359473(#)]` -/
def P5217729049223375137.Spec : Prop :=
  ∀ n, P5217729049223375137.a n = A036537 (n + 1)

end A036537

/-! ## A036537.P7992623693058340077

`filter[A337050(n+1), A359473(#)]`
-/

namespace A036537.P7992623693058340077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A036537.P7992623693058340077

namespace A036537

/-- `filter[A337050(n+1), A359473(#)]` -/
def P7992623693058340077.Spec : Prop :=
  ∀ n, P7992623693058340077.a n = A036537 (n + 1)

end A036537

/-! ## A036537.P3957954046389988393

`filter[A046841(n+1), A359473(#)]`
-/

namespace A036537.P3957954046389988393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A036537.P3957954046389988393

namespace A036537

/-- `filter[A046841(n+1), A359473(#)]` -/
def P3957954046389988393.Spec : Prop :=
  ∀ n, P3957954046389988393.a n = A036537 (n + 1)

end A036537

/-! ## A036537.P8542835456069064213

`filter[A359794(n+1), A359473(#)]`
-/

namespace A036537.P8542835456069064213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A036537.P8542835456069064213

namespace A036537

/-- `filter[A359794(n+1), A359473(#)]` -/
def P8542835456069064213.Spec : Prop :=
  ∀ n, P8542835456069064213.a n = A036537 (n + 1)

end A036537

/-! ## A036537.P4457167595389886547

`filter[A047588(n+2), A359473(#)]`
-/

namespace A036537.P4457167595389886547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047588 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A036537.P4457167595389886547

namespace A036537

/-- `filter[A047588(n+2), A359473(#)]` -/
def P4457167595389886547.Spec : Prop :=
  ∀ n, P4457167595389886547.a n = A036537 (n + 1)

end A036537

/-! ## A036537.P13745996148589824876

`filter[A336918(n+1), A359473(#)]`
-/

namespace A036537.P13745996148589824876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A036537.P13745996148589824876

namespace A036537

/-- `filter[A336918(n+1), A359473(#)]` -/
def P13745996148589824876.Spec : Prop :=
  ∀ n, P13745996148589824876.a n = A036537 (n + 1)

end A036537

/-! ## A036537.P15332791290542235481

`filter[A337533(n+1), A359473(#)]`
-/

namespace A036537.P15332791290542235481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A036537.P15332791290542235481

namespace A036537

/-- `filter[A337533(n+1), A359473(#)]` -/
def P15332791290542235481.Spec : Prop :=
  ∀ n, P15332791290542235481.a n = A036537 (n + 1)

end A036537

/-! ## A036537.P3671721483360565937

`filter[A377021(n+1), A359473(#)]`
-/

namespace A036537.P3671721483360565937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A036537.P3671721483360565937

namespace A036537

/-- `filter[A377021(n+1), A359473(#)]` -/
def P3671721483360565937.Spec : Prop :=
  ∀ n, P3671721483360565937.a n = A036537 (n + 1)

end A036537

/-! ## A036537.P13809196182837338767

`filter[A209061(n+1), A359473(#)]`
-/

namespace A036537.P13809196182837338767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A036537.P13809196182837338767

namespace A036537

/-- `filter[A209061(n+1), A359473(#)]` -/
def P13809196182837338767.Spec : Prop :=
  ∀ n, P13809196182837338767.a n = A036537 (n + 1)

end A036537

/-! ## A036537.P14570360207713482369

`filter[A164514(n+1), A359473(#)]`
-/

namespace A036537.P14570360207713482369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A036537.P14570360207713482369

namespace A036537

/-- `filter[A164514(n+1), A359473(#)]` -/
def P14570360207713482369.Spec : Prop :=
  ∀ n, P14570360207713482369.a n = A036537 (n + 1)

end A036537

/-!
# A036538: Number of integers m <= 2^n such that d(m) = 2^k for some k = 0, 1, 2, 3, ...

The programs for A036538, there is no canonical definition to state claims against.
-/

/-! ## A036538.P3542245777141846410

`∑[A036539(n+1)]+1`
-/

namespace A036538.P3542245777141846410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A036538.P3542245777141846410

/-! ## A036538.P2262011052715319587

`a(n-1)-(A000038(n)-A036539(n+1))` with `a(0)=2`
-/

namespace A036538.P2262011052715319587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - (A000038 n - A036539 (n + 1))

end

end A036538.P2262011052715319587

/-! ## A036538.P3125957473999009221

`A126132(2^n)+A036539(n+1)`
-/

namespace A036538.P3125957473999009221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126132 (2 ^ n) + A036539 (n + 1)

end

end A036538.P3125957473999009221

/-! ## A036538.P2238297360552696206

`A126132(2^(n+1))`
-/

namespace A036538.P2238297360552696206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126132 (2 ^ (n + 1))

end

end A036538.P2238297360552696206

/-! ## A036538.P13595670425402184552

`record[A126132(A135530(n))]`
-/

namespace A036538.P13595670425402184552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126132 (A135530 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036538.P13595670425402184552

/-!
# A036539: a(n) is the number of numbers k with 2^(n-1) < k <= 2^n having a number of divisors that is a power of 2.

The programs for A036539, there is no canonical definition to state claims against.
-/

/-! ## A036539.P481847819543735334

`A036538(n+1)-∏{e}[A000079(n), A036538(#)]`
-/

namespace A036539.P481847819543735334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036538 (n + 1) - ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A036538 (Nat.factorization (f1 n).natAbs p)

end

end A036539.P481847819543735334

/-! ## A036539.P3034249136162303871

`Δ[∏{e}[A000079(n), A036538(#)]]`
-/

namespace A036539.P3034249136162303871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, A036538 (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036539.P3034249136162303871

/-! ## A036539.P11184481382947604995

`A036538(n+1)-A126132(2^n)`
-/

namespace A036539.P11184481382947604995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036538 (n + 1) - A126132 (2 ^ n)

end

end A036539.P11184481382947604995

/-! ## A036539.P16657342318432985424

`Δ[A126132(2^n)]`
-/

namespace A036539.P16657342318432985424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126132 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036539.P16657342318432985424

/-! ## A036539.P10714977019957759324

`abs(Δ[A126132(A000079(n))])`
-/

namespace A036539.P10714977019957759324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126132 (A000079 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036539.P10714977019957759324

/-!
# A036540: Numbers k such that d(i) is a power of 2 for all k <= i <= k+6, where d(i) = number of divisors of i.

The programs for A036540, there is no canonical definition to state claims against.
-/

/-! ## A036540.P12914448638945759598

`A325058(A032555(n+2))`
-/

namespace A036540.P12914448638945759598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325058 (A032555 (n + 2)).toNat

end

end A036540.P12914448638945759598

/-! ## A036540.P16975122226058618300

`A325058(A032559(n+2))`
-/

namespace A036540.P16975122226058618300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325058 (A032559 (n + 2)).toNat

end

end A036540.P16975122226058618300

/-! ## A036540.P978490665403533947

`A325058(A077739(n+2))`
-/

namespace A036540.P978490665403533947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325058 (A077739 (n + 2)).toNat

end

end A036540.P978490665403533947

/-! ## A036540.P8688520700612885783

`A325058(A078213(n+2))`
-/

namespace A036540.P8688520700612885783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325058 (A078213 (n + 2)).toNat

end

end A036540.P8688520700612885783

/-!
# A036541: Deficit of central binomial coefficients in terms of number of prime factors: a(n) shows how many fewer prime factors the n-th central binomial coefficient has than n!.

The programs for A036541, the canonical program `A036541.P333989908532824306` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036541 has offset 1).

The definition of A036541 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036541.P333989908532824306

`A000720(n+1)-A034973(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A036541

/-- `A000720(n+1)-A034973(n+1)` -/
def P333989908532824306.Spec : Prop :=
  ∀ n, P333989908532824306.a n = A036541 (n + 1)

theorem P333989908532824306.correct : P333989908532824306.Spec := by
  intro n
  simp only [A036541, Nat.add_sub_cancel]

end A036541

/-! ## A036541.P9522672494437155334

`∑[A010051(n+1)]-A034973(n+1)`
-/

namespace A036541.P9522672494437155334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A034973 (n + 1)

end

end A036541.P9522672494437155334

namespace A036541

/-- `∑[A010051(n+1)]-A034973(n+1)` -/
def P9522672494437155334.Spec : Prop :=
  ∀ n, P9522672494437155334.a n = A036541 (n + 1)

end A036541

/-! ## A036541.P12567797458775328061

`A036234(n+1)-(A034973(n+1)+1)`
-/

namespace A036541.P12567797458775328061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) - (A034973 (n + 1) + 1)

end

end A036541.P12567797458775328061

namespace A036541

/-- `A036234(n+1)-(A034973(n+1)+1)` -/
def P12567797458775328061.Spec : Prop :=
  ∀ n, P12567797458775328061.a n = A036541 (n + 1)

end A036541

/-! ## A036541.P7898459187246316070

`A023443(A036234(n+1)-A034973(n+1))`
-/

namespace A036541.P7898459187246316070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A036234 (n + 1) - A034973 (n + 1)).toNat

end

end A036541.P7898459187246316070

namespace A036541

/-- `A023443(A036234(n+1)-A034973(n+1))` -/
def P7898459187246316070.Spec : Prop :=
  ∀ n, P7898459187246316070.a n = A036541 (n + 1)

end A036541

/-! ## A036541.P2167813835846859891

`A230980(n+1)-A034973(n+1)`
-/

namespace A036541.P2167813835846859891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (n + 1) - A034973 (n + 1)

end

end A036541.P2167813835846859891

namespace A036541

/-- `A230980(n+1)-A034973(n+1)` -/
def P2167813835846859891.Spec : Prop :=
  ∀ n, P2167813835846859891.a n = A036541 (n + 1)

end A036541

/-! ## A036541.P13680866364503606679

`A000720(n+1)-log2(A039593(n+1))`
-/

namespace A036541.P13680866364503606679
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000720 (n + 1) : ℝ) - Real.logb 2 (A039593 (n + 1) : ℝ)

end

end A036541.P13680866364503606679

namespace A036541

/-- `A000720(n+1)-log2(A039593(n+1))` -/
def P13680866364503606679.Spec : Prop :=
  ∀ n, P13680866364503606679.a n = (A036541 (n + 1) : ℝ)

end A036541

/-! ## A036541.P17967225507983742824

`A067434(n+1)-(A071854(n+1)+A034973(n+1))`
-/

namespace A036541.P17967225507983742824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067434 (n + 1) - (A071854 (n + 1) + A034973 (n + 1))

end

end A036541.P17967225507983742824

namespace A036541

/-- `A067434(n+1)-(A071854(n+1)+A034973(n+1))` -/
def P17967225507983742824.Spec : Prop :=
  ∀ n, P17967225507983742824.a n = A036541 (n + 1)

end A036541

/-! ## A036541.P1370731258768117151

`A036234(n+1)-A000005(A039593(n+1))`
-/

namespace A036541.P1370731258768117151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) - A000005 (A039593 (n + 1)).toNat

end

end A036541.P1370731258768117151

namespace A036541

/-- `A036234(n+1)-A000005(A039593(n+1))` -/
def P1370731258768117151.Spec : Prop :=
  ∀ n, P1370731258768117151.a n = A036541 (n + 1)

end A036541

/-! ## A036541.P17774938586213672536

`∑{e}[A056610(n+1), #]`
-/

namespace A036541.P17774938586213672536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056610 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A036541.P17774938586213672536

namespace A036541

/-- `∑{e}[A056610(n+1), #]` -/
def P17774938586213672536.Spec : Prop :=
  ∀ n, (P17774938586213672536.a n : ℤ) = A036541 (n + 1)

end A036541

/-! ## A036541.P4665417472867042421

`∑{p}[A056610(n+1), A001222(#)]`
-/

namespace A036541.P4665417472867042421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A036541.P4665417472867042421

namespace A036541

/-- `∑{p}[A056610(n+1), A001222(#)]` -/
def P4665417472867042421.Spec : Prop :=
  ∀ n, P4665417472867042421.a n = A036541 (n + 1)

end A036541

/-!
# A036542: a(n) = T(n,n), array T given by A047858.

The programs for A036542, the canonical program `A036542.P16399704563412289264` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036542 has offset 0).

The definition of A036542 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036542.P16399704563412289264

`6*a(n-1)-13*a(n-2)+12*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=3, a(2)=11, a(3)=34`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036542

/-- `6*a(n-1)-13*a(n-2)+12*a(n-3)-4*a(n-4)` -/
def P16399704563412289264.Spec : Prop :=
  ∀ n, P16399704563412289264.a n = A036542 n

theorem P16399704563412289264.correct : P16399704563412289264.Spec := by
  intro n
  simp only [A036542]

end A036542

/-! ## A036542.P15409461601590443683

`∑[ogf((1-x+x^2)/(1-4x+4x^2))]-n`
-/

namespace A036542.P15409461601590443683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A036542.P15409461601590443683

namespace A036542

/-- `∑[ogf((1-x+x^2)/(1-4x+4x^2))]-n` -/
def P15409461601590443683.Spec : Prop :=
  ∀ n, P15409461601590443683.a n = A036542 n

end A036542

/-! ## A036542.P2984522021509391502

`3*n*2^(n-1)+1-n`
-/

namespace A036542.P2984522021509391502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) + 1 - (n : ℚ)

end

end A036542.P2984522021509391502

namespace A036542

/-- `3*n*2^(n-1)+1-n` -/
def P2984522021509391502.Spec : Prop :=
  ∀ n, P2984522021509391502.a n = (A036542 n : ℚ)

end A036542

/-! ## A036542.P3210981405047211336

`abs(n-A048474(n))`
-/

namespace A036542.P3210981405047211336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A048474 n|

end

end A036542.P3210981405047211336

namespace A036542

/-- `abs(n-A048474(n))` -/
def P3210981405047211336.Spec : Prop :=
  ∀ n, P3210981405047211336.a n = A036542 n

end A036542

/-! ## A036542.P15759071670343263105

`abs(n*(A042950(n)-1)+1)`
-/

namespace A036542.P15759071670343263105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (A042950 n - 1) + 1|

end

end A036542.P15759071670343263105

namespace A036542

/-- `abs(n*(A042950(n)-1)+1)` -/
def P15759071670343263105.Spec : Prop :=
  ∀ n, P15759071670343263105.a n = A036542 n

end A036542

/-! ## A036542.P12857985280741309142

`abs(3*A001787(n)+1-n)`
-/

namespace A036542.P12857985280741309142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * A001787 n + 1 - (n : ℤ)|

end

end A036542.P12857985280741309142

namespace A036542

/-- `abs(3*A001787(n)+1-n)` -/
def P12857985280741309142.Spec : Prop :=
  ∀ n, P12857985280741309142.a n = A036542 n

end A036542

/-! ## A036542.P17275208009018290990

`abs(3*n*A011782(n)+1-n)`
-/

namespace A036542.P17275208009018290990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * ((n : ℤ) * A011782 n) + 1 - (n : ℤ)|

end

end A036542.P17275208009018290990

namespace A036542

/-- `abs(3*n*A011782(n)+1-n)` -/
def P17275208009018290990.Spec : Prop :=
  ∀ n, P17275208009018290990.a n = A036542 n

end A036542

/-! ## A036542.P3367090850174694229

`abs(3*n*A131577(n)+1-n)`
-/

namespace A036542.P3367090850174694229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * ((n : ℤ) * A131577 n) + 1 - (n : ℤ)|

end

end A036542.P3367090850174694229

namespace A036542

/-- `abs(3*n*A131577(n)+1-n)` -/
def P3367090850174694229.Spec : Prop :=
  ∀ n, P3367090850174694229.a n = A036542 n

end A036542

/-! ## A036542.P9988759780609718229

`abs(n*record[A164073(n+1)]+1-n)`
-/

namespace A036542.P9988759780609718229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1 - (n : ℤ)|

end

end A036542.P9988759780609718229

namespace A036542

/-- `abs(n*record[A164073(n+1)]+1-n)` -/
def P9988759780609718229.Spec : Prop :=
  ∀ n, P9988759780609718229.a n = A036542 n

end A036542

/-! ## A036542.P8609147968896704051

`abs(n*A003945(n+2)/4+1-n)`
-/

namespace A036542.P8609147968896704051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(n : ℚ) * ((A003945 (n + 2) : ℚ) / 4) + 1 - (n : ℚ)|

end

end A036542.P8609147968896704051

namespace A036542

/-- `abs(n*A003945(n+2)/4+1-n)` -/
def P8609147968896704051.Spec : Prop :=
  ∀ n, P8609147968896704051.a n = (A036542 n : ℚ)

end A036542

/-! ## A036542.P16479684478929766764

`∑[A084858(n)-A057427(n)]`
-/

namespace A036542.P16479684478929766764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084858 n - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036542.P16479684478929766764

namespace A036542

/-- `∑[A084858(n)-A057427(n)]` -/
def P16479684478929766764.Spec : Prop :=
  ∀ n, P16479684478929766764.a n = A036542 n

end A036542

/-! ## A036542.P17413178567560519597

`lcm(n-A048474(n), A033999(n))`
-/

namespace A036542.P17413178567560519597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - A048474 n) (A033999 n)

end

end A036542.P17413178567560519597

namespace A036542

/-- `lcm(n-A048474(n), A033999(n))` -/
def P17413178567560519597.Spec : Prop :=
  ∀ n, (P17413178567560519597.a n : ℤ) = A036542 n

end A036542

/-! ## A036542.P12239753704908131210

`or(A048474(n)-n, A000007(n))`
-/

namespace A036542.P12239753704908131210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048474 n - (n : ℤ)) (A000007 n)

end

end A036542.P12239753704908131210

namespace A036542

/-- `or(A048474(n)-n, A000007(n))` -/
def P12239753704908131210.Spec : Prop :=
  ∀ n, P12239753704908131210.a n = A036542 n

end A036542

/-! ## A036542.P9187233873707426969

`abs(A048474(n)+n*A057428(n))`
-/

namespace A036542.P9187233873707426969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048474 n + (n : ℤ) * A057428 n|

end

end A036542.P9187233873707426969

namespace A036542

/-- `abs(A048474(n)+n*A057428(n))` -/
def P9187233873707426969.Spec : Prop :=
  ∀ n, P9187233873707426969.a n = A036542 n

end A036542

/-! ## A036542.P12390094514531464892

`(A048474(n)-n)*A157928(n+2)`
-/

namespace A036542.P12390094514531464892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048474 n - (n : ℤ)) * A157928 (n + 2)

end

end A036542.P12390094514531464892

namespace A036542

/-- `(A048474(n)-n)*A157928(n+2)` -/
def P12390094514531464892.Spec : Prop :=
  ∀ n, P12390094514531464892.a n = A036542 n

end A036542

/-! ## A036542.P13716941546500757540

`(A048474(n)-n)*A001222(A038873(n+1))`
-/

namespace A036542.P13716941546500757540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048474 n - (n : ℤ)) * A001222 (A038873 (n + 1)).toNat

end

end A036542.P13716941546500757540

namespace A036542

/-- `(A048474(n)-n)*A001222(A038873(n+1))` -/
def P13716941546500757540.Spec : Prop :=
  ∀ n, P13716941546500757540.a n = A036542 n

end A036542

/-! ## A036542.P13559591989215993214

`(A048474(n)-n)*A001222(A040098(n+1))`
-/

namespace A036542.P13559591989215993214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048474 n - (n : ℤ)) * A001222 (A040098 (n + 1)).toNat

end

end A036542.P13559591989215993214

namespace A036542

/-- `(A048474(n)-n)*A001222(A040098(n+1))` -/
def P13559591989215993214.Spec : Prop :=
  ∀ n, P13559591989215993214.a n = A036542 n

end A036542

/-! ## A036542.P1216662139345256122

`(A048474(n)-n)*A001222(A040159(n+1))`
-/

namespace A036542.P1216662139345256122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048474 n - (n : ℤ)) * A001222 (A040159 (n + 1)).toNat

end

end A036542.P1216662139345256122

namespace A036542

/-- `(A048474(n)-n)*A001222(A040159(n+1))` -/
def P1216662139345256122.Spec : Prop :=
  ∀ n, P1216662139345256122.a n = A036542 n

end A036542

/-! ## A036542.P12786898054314838398

`(A048474(n)-n)^A001222(A008578(n+1))`
-/

namespace A036542.P12786898054314838398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048474 n - (n : ℤ) : ℚ) ^ (A001222 (A008578 (n + 1)).toNat : ℤ)

end

end A036542.P12786898054314838398

namespace A036542

/-- `(A048474(n)-n)^A001222(A008578(n+1))` -/
def P12786898054314838398.Spec : Prop :=
  ∀ n, P12786898054314838398.a n = (A036542 n : ℚ)

end A036542

/-! ## A036542.P3723325685179080269

`(A317404(n)+2+n)/2`
-/

namespace A036542.P3723325685179080269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317404 n + 2 + (n : ℤ) : ℚ) / 2

end

end A036542.P3723325685179080269

namespace A036542

/-- `(A317404(n)+2+n)/2` -/
def P3723325685179080269.Spec : Prop :=
  ∀ n, P3723325685179080269.a n = (A036542 n : ℚ)

end A036542

/-!
# A036543: a(n) = T(3,n), array T given by A048471.

The programs for A036543, the canonical program `A036543.P5163786072325499439` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036543 has offset 0).

The definition of A036543 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036543.P5163786072325499439

`4*3^n-3`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036543

/-- `4*3^n-3` -/
def P5163786072325499439.Spec : Prop :=
  ∀ n, P5163786072325499439.a n = A036543 n

theorem P5163786072325499439.correct : P5163786072325499439.Spec := by
  intro n
  simp only [A036543]

end A036543

/-! ## A036543.P13456099716379280092

`xor(5, 4*3^n)`
-/

namespace A036543.P13456099716379280092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 5 (4 * 3 ^ n)

end

end A036543.P13456099716379280092

namespace A036543

/-- `xor(5, 4*3^n)` -/
def P13456099716379280092.Spec : Prop :=
  ∀ n, (P13456099716379280092.a n : ℤ) = A036543 n

end A036543

/-! ## A036543.P13703799115473729028

`ogf((1+5x)/(1-4x+3x^2))`
-/

namespace A036543.P13703799115473729028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5] [1, -4, 3] n

end

end A036543.P13703799115473729028

namespace A036543

/-- `ogf((1+5x)/(1-4x+3x^2))` -/
def P13703799115473729028.Spec : Prop :=
  ∀ n, P13703799115473729028.a n = A036543 n

end A036543

/-! ## A036543.P11137764092425268761

`abs(3-lcm(4, 3^n))`
-/

namespace A036543.P11137764092425268761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - (Nat.lcm 4 (3 ^ n) : ℤ)|

end

end A036543.P11137764092425268761

namespace A036543

/-- `abs(3-lcm(4, 3^n))` -/
def P11137764092425268761.Spec : Prop :=
  ∀ n, P11137764092425268761.a n = A036543 n

end A036543

/-! ## A036543.P7476845433220246526

`3*(a(n-1)+2)` with `a(0)=1`
-/

namespace A036543.P7476845433220246526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * (a (n - 1) + 2)

end

end A036543.P7476845433220246526

namespace A036543

/-- `3*(a(n-1)+2)` -/
def P7476845433220246526.Spec : Prop :=
  ∀ n, (P7476845433220246526.a n : ℤ) = A036543 n

theorem P7476845433220246526.correct : P7476845433220246526.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A036543, Nat.add_sub_cancel, A036543.P7476845433220246526.a, A036543.P5163786072325499439.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A036543, Nat.add_sub_cancel, A036543.P7476845433220246526.a, A036543.P5163786072325499439.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A036543

/-! ## A036543.P4551422150178121097

`3*or(2, a(n-1))` with `a(0)=1`
-/

namespace A036543.P4551422150178121097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * Nat.lor 2 (a (n - 1))

end

end A036543.P4551422150178121097

namespace A036543

/-- `3*or(2, a(n-1))` -/
def P4551422150178121097.Spec : Prop :=
  ∀ n, (P4551422150178121097.a n : ℤ) = A036543 n

end A036543

/-! ## A036543.P9546849858266750801

`3*xor(2, a(n-1))` with `a(0)=1`
-/

namespace A036543.P9546849858266750801
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * Nat.xor 2 (a (n - 1))

end

end A036543.P9546849858266750801

namespace A036543

/-- `3*xor(2, a(n-1))` -/
def P9546849858266750801.Spec : Prop :=
  ∀ n, (P9546849858266750801.a n : ℤ) = A036543 n

end A036543

/-! ## A036543.P7391846646188612295

`∑[3*a(n-1)]` with `a(0)=1, a(1)=8`
-/

namespace A036543.P7391846646188612295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036543.P7391846646188612295

namespace A036543

/-- `∑[3*a(n-1)]` -/
def P7391846646188612295.Spec : Prop :=
  ∀ n, (P7391846646188612295.a n : ℤ) = A036543 n

end A036543

/-! ## A036543.P18165206174956471140

`lcm(3, a(n-1)+2)` with `a(0)=1, a(1)=9`
-/

namespace A036543.P18165206174956471140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n a =>
  Nat.lcm 3 (a (n - 1) + 2)

end

end A036543.P18165206174956471140

namespace A036543

/-- `lcm(3, a(n-1)+2)` -/
def P18165206174956471140.Spec : Prop :=
  ∀ n, (P18165206174956471140.a n : ℤ) = A036543 n

end A036543

/-! ## A036543.P8926401278261923016

`3*(2-floor(-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A036543.P8926401278261923016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * (2 - (-a (n - 1)))

end

end A036543.P8926401278261923016

namespace A036543

/-- `3*(2-floor(-a(n-1)))` -/
def P8926401278261923016.Spec : Prop :=
  ∀ n, P8926401278261923016.a n = A036543 n

theorem P8926401278261923016.correct : P8926401278261923016.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A036543, Nat.add_sub_cancel, A036543.P8926401278261923016.a, A036543.P5163786072325499439.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A036543, Nat.add_sub_cancel, A036543.P8926401278261923016.a, A036543.P5163786072325499439.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A036543

/-! ## A036543.P17714314861450728754

`3*(2-ceil(-a(n-1)))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A036543.P17714314861450728754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * (2 - (-a (n - 1)))

end

end A036543.P17714314861450728754

namespace A036543

/-- `3*(2-ceil(-a(n-1)))` -/
def P17714314861450728754.Spec : Prop :=
  ∀ n, P17714314861450728754.a n = A036543 n

theorem P17714314861450728754.correct : P17714314861450728754.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A036543, Nat.add_sub_cancel, A036543.P17714314861450728754.a, A036543.P5163786072325499439.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A036543, Nat.add_sub_cancel, A036543.P17714314861450728754.a, A036543.P5163786072325499439.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A036543

/-! ## A036543.P10854328109952708643

`3*(2-round(-a(n-1)))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A036543.P10854328109952708643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * (2 - (-a (n - 1)))

end

end A036543.P10854328109952708643

namespace A036543

/-- `3*(2-round(-a(n-1)))` -/
def P10854328109952708643.Spec : Prop :=
  ∀ n, P10854328109952708643.a n = A036543 n

theorem P10854328109952708643.correct : P10854328109952708643.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A036543, Nat.add_sub_cancel, A036543.P10854328109952708643.a, A036543.P5163786072325499439.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A036543, Nat.add_sub_cancel, A036543.P10854328109952708643.a, A036543.P5163786072325499439.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A036543

/-! ## A036543.P8168302721195932772

`(a(n-1)+2)/(1-2/3)` with `a(0)=1`
-/

namespace A036543.P8168302721195932772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 2) / (1 - (2 : ℚ) / 3)

end

end A036543.P8168302721195932772

namespace A036543

/-- `(a(n-1)+2)/(1-2/3)` -/
def P8168302721195932772.Spec : Prop :=
  ∀ n, P8168302721195932772.a n = (A036543 n : ℚ)

theorem P8168302721195932772.correct : P8168302721195932772.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A036543, Nat.add_sub_cancel, A036543.P8168302721195932772.a, A036543.P5163786072325499439.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A036543, Nat.add_sub_cancel, A036543.P8168302721195932772.a, A036543.P5163786072325499439.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A036543

/-! ## A036543.P16898187549824013591

`3*(4-(4/2-a(n-1)))` with `a(0)=1`
-/

namespace A036543.P16898187549824013591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * (4 - ((4 : ℚ) / 2 - a (n - 1)))

end

end A036543.P16898187549824013591

namespace A036543

/-- `3*(4-(4/2-a(n-1)))` -/
def P16898187549824013591.Spec : Prop :=
  ∀ n, P16898187549824013591.a n = (A036543 n : ℚ)

theorem P16898187549824013591.correct : P16898187549824013591.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A036543, Nat.add_sub_cancel, A036543.P16898187549824013591.a, A036543.P5163786072325499439.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A036543, Nat.add_sub_cancel, A036543.P16898187549824013591.a, A036543.P5163786072325499439.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A036543

/-! ## A036543.P4147266465419843034

`3*(2-(floor(n-a(n-1))-n))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A036543.P4147266465419843034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * (2 - ((n : ℤ) - a (n - 1) - (n : ℤ)))

end

end A036543.P4147266465419843034

namespace A036543

/-- `3*(2-(floor(n-a(n-1))-n))` -/
def P4147266465419843034.Spec : Prop :=
  ∀ n, P4147266465419843034.a n = A036543 n

theorem P4147266465419843034.correct : P4147266465419843034.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A036543, Nat.add_sub_cancel, A036543.P4147266465419843034.a, A036543.P5163786072325499439.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A036543, Nat.add_sub_cancel, A036543.P4147266465419843034.a, A036543.P5163786072325499439.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A036543

/-! ## A036543.P9788167782380069482

`3*(2-(a(n-1)-2*a(n-1)))` with `a(0)=1`
-/

namespace A036543.P9788167782380069482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * (2 - (a (n - 1) - 2 * a (n - 1)))

end

end A036543.P9788167782380069482

namespace A036543

/-- `3*(2-(a(n-1)-2*a(n-1)))` -/
def P9788167782380069482.Spec : Prop :=
  ∀ n, P9788167782380069482.a n = A036543 n

theorem P9788167782380069482.correct : P9788167782380069482.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A036543, Nat.add_sub_cancel, A036543.P9788167782380069482.a, A036543.P5163786072325499439.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A036543, Nat.add_sub_cancel, A036543.P9788167782380069482.a, A036543.P5163786072325499439.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A036543

/-! ## A036543.P6326145684884795721

`∑[a(n-1)+a(n-1)+a(n-1)]` with `a(0)=1, a(1)=8`
-/

namespace A036543.P6326145684884795721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036543.P6326145684884795721

namespace A036543

/-- `∑[a(n-1)+a(n-1)+a(n-1)]` -/
def P6326145684884795721.Spec : Prop :=
  ∀ n, (P6326145684884795721.a n : ℤ) = A036543 n

end A036543

/-! ## A036543.P7704780832706811734

`floor(a(n-1)+a(n-1)+a(n-1)+6)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A036543.P7704780832706811734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + 6))

end

end A036543.P7704780832706811734

namespace A036543

/-- `floor(a(n-1)+a(n-1)+a(n-1)+6)` -/
def P7704780832706811734.Spec : Prop :=
  ∀ n, (P7704780832706811734.a n : ℤ) = A036543 n

theorem P7704780832706811734.correct : P7704780832706811734.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A036543, Nat.add_sub_cancel, A036543.P7704780832706811734.a, A036543.P5163786072325499439.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A036543, Nat.add_sub_cancel, A036543.P7704780832706811734.a, A036543.P5163786072325499439.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A036543

/-! ## A036543.P16332822190644009852

`∑[A083583(n)]`
-/

namespace A036543.P16332822190644009852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036543.P16332822190644009852

namespace A036543

/-- `∑[A083583(n)]` -/
def P16332822190644009852.Spec : Prop :=
  ∀ n, P16332822190644009852.a n = A036543 n

end A036543

/-! ## A036543.P8884550841583900162

`A220944(2*n)`
-/

namespace A036543.P8884550841583900162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220944 (2 * n)

end

end A036543.P8884550841583900162

namespace A036543

/-- `A220944(2*n)` -/
def P8884550841583900162.Spec : Prop :=
  ∀ n, P8884550841583900162.a n = A036543 n

end A036543

/-!
# A036544: a(n) = (2*(1 + n + (((10^n-1)/9) - n)/9)).

The programs for A036544, the canonical program `A036544.P9728092277201156022` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036544 has offset 0).

The definition of A036544 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(1+n+((10^n-1)/9-n)/9)` (program `A036544.P7856081066671247122`, by `A036544.P7856081066671247122.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036544.P9728092277201156022

`12*a(n-1)-21*a(n-2)+10*a(n-3)` with `a(0)=2, a(1)=4, a(2)=8`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036544

/-- `12*a(n-1)-21*a(n-2)+10*a(n-3)` -/
def P9728092277201156022.Spec : Prop :=
  ∀ n, P9728092277201156022.a n = A036544 n

theorem P9728092277201156022.correct : P9728092277201156022.Spec := by
  intro n
  simp only [A036544]

end A036544

/-! ## A036544.P5134001153275321347

`2/81*(72*n+10^n+80)`
-/

namespace A036544.P5134001153275321347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 81 * (72 * n + 10 ^ n + 80 : ℚ)

end

end A036544.P5134001153275321347

namespace A036544

/-- `2/81*(72*n+10^n+80)` -/
def P5134001153275321347.Spec : Prop :=
  ∀ n, P5134001153275321347.a n = (A036544 n : ℚ)

theorem P5134001153275321347.correct : P5134001153275321347.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A036544, Nat.add_sub_cancel, A036544.P5134001153275321347.a, A036544.P9728092277201156022.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A036544, Nat.add_sub_cancel, A036544.P5134001153275321347.a, A036544.P9728092277201156022.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A036544

/-! ## A036544.P7856081066671247122

`2*(1+n+((10^n-1)/9-n)/9)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036544.P7856081066671247122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (1 + ((n : ℚ) + (((10 ^ n : ℤ) - 1 : ℚ) / 9 - (n : ℚ)) / 9))

end

end A036544.P7856081066671247122

namespace A036544

/-- `2*(1+n+((10^n-1)/9-n)/9)` -/
def P7856081066671247122.Spec : Prop :=
  ∀ n, P7856081066671247122.a n = (A036544 n : ℚ)

theorem P7856081066671247122.correct : P7856081066671247122.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A036544, Nat.add_sub_cancel, A036544.P7856081066671247122.a, A036544.P9728092277201156022.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A036544, Nat.add_sub_cancel, A036544.P7856081066671247122.a, A036544.P9728092277201156022.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A036544

/-! ## A036544.P8091706667430373587

`∑[∑[10*a(n-1)]]` with `a(0)=2, a(1)=0, a(2)=2`
-/

namespace A036544.P8091706667430373587
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 2] fun n f2 =>
  10 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036544.P8091706667430373587

namespace A036544

/-- `∑[∑[10*a(n-1)]]` -/
def P8091706667430373587.Spec : Prop :=
  ∀ n, (P8091706667430373587.a n : ℤ) = A036544 n

end A036544

/-! ## A036544.P13355376672704362509

`10*a(n-1)-16*n` with `a(0)=2`
-/

namespace A036544.P13355376672704362509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  10 * a (n - 1) - (16 * n : ℤ)

end

end A036544.P13355376672704362509

namespace A036544

/-- `10*a(n-1)-16*n` -/
def P13355376672704362509.Spec : Prop :=
  ∀ n, P13355376672704362509.a n = A036544 n

end A036544

/-! ## A036544.P16480870194547891673

`∑[A002276(n)+2]-A002276(n)`
-/

namespace A036544.P16480870194547891673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002276 n

end

end A036544.P16480870194547891673

namespace A036544

/-- `∑[A002276(n)+2]-A002276(n)` -/
def P16480870194547891673.Spec : Prop :=
  ∀ n, P16480870194547891673.a n = A036544 n

end A036544

/-!
# A036545: a(n) = T(4,n), array T given by A048471.

The programs for A036545, the canonical program `A036545.P10477077024341625309` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036545 has offset 0).

The definition of A036545 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036545.P10477077024341625309

`8*3^n-7`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036545

/-- `8*3^n-7` -/
def P10477077024341625309.Spec : Prop :=
  ∀ n, P10477077024341625309.a n = A036545 n

theorem P10477077024341625309.correct : P10477077024341625309.Spec := by
  intro n
  simp only [A036545]

end A036545

/-! ## A036545.P14042179853935759244

`xor(9, 8*3^n)`
-/

namespace A036545.P14042179853935759244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 9 (8 * 3 ^ n)

end

end A036545.P14042179853935759244

namespace A036545

/-- `xor(9, 8*3^n)` -/
def P14042179853935759244.Spec : Prop :=
  ∀ n, (P14042179853935759244.a n : ℤ) = A036545 n

end A036545

/-! ## A036545.P13516162096204886048

`ogf((1+13x)/(1-4x+3x^2))`
-/

namespace A036545.P13516162096204886048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 13] [1, -4, 3] n

end

end A036545.P13516162096204886048

namespace A036545

/-- `ogf((1+13x)/(1-4x+3x^2))` -/
def P13516162096204886048.Spec : Prop :=
  ∀ n, P13516162096204886048.a n = A036545 n

end A036545

/-! ## A036545.P799976100764453600

`∑[3*a(n-1)]` with `a(0)=1, a(1)=16`
-/

namespace A036545.P799976100764453600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 16] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036545.P799976100764453600

namespace A036545

/-- `∑[3*a(n-1)]` -/
def P799976100764453600.Spec : Prop :=
  ∀ n, (P799976100764453600.a n : ℤ) = A036545 n

end A036545

/-! ## A036545.P969994974501864013

`3*(a(n-1)+14/3)` with `a(0)=1`
-/

namespace A036545.P969994974501864013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * (a (n - 1) + (14 : ℚ) / 3)

end

end A036545.P969994974501864013

namespace A036545

/-- `3*(a(n-1)+14/3)` -/
def P969994974501864013.Spec : Prop :=
  ∀ n, P969994974501864013.a n = (A036545 n : ℚ)

theorem P969994974501864013.correct : P969994974501864013.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A036545, Nat.add_sub_cancel, A036545.P969994974501864013.a, A036545.P10477077024341625309.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A036545, Nat.add_sub_cancel, A036545.P969994974501864013.a, A036545.P10477077024341625309.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A036545

/-! ## A036545.P15244599091549418546

`∑[a(n-1)/sqrt(1/9)]` with `a(0)=1, a(1)=16`
-/

namespace A036545.P15244599091549418546
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 16] fun n f1 =>
  f1 (n - 1) / Real.sqrt ((1 : ℚ) / 9 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036545.P15244599091549418546

namespace A036545

/-- `∑[a(n-1)/sqrt(1/9)]` -/
def P15244599091549418546.Spec : Prop :=
  ∀ n, P15244599091549418546.a n = (A036545 n : ℝ)

end A036545

/-! ## A036545.P3806547719872132925

`3*(5-(1/3-a(n-1)))` with `a(0)=1`
-/

namespace A036545.P3806547719872132925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * (5 - ((1 : ℚ) / 3 - a (n - 1)))

end

end A036545.P3806547719872132925

namespace A036545

/-- `3*(5-(1/3-a(n-1)))` -/
def P3806547719872132925.Spec : Prop :=
  ∀ n, P3806547719872132925.a n = (A036545 n : ℚ)

theorem P3806547719872132925.correct : P3806547719872132925.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A036545, Nat.add_sub_cancel, A036545.P3806547719872132925.a, A036545.P10477077024341625309.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A036545, Nat.add_sub_cancel, A036545.P3806547719872132925.a, A036545.P10477077024341625309.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A036545

/-! ## A036545.P1897311044760766782

`floor(a(n-1)+2*(a(n-1)+7))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A036545.P1897311044760766782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * (a (n - 1) + 7)

end

end A036545.P1897311044760766782

namespace A036545

/-- `floor(a(n-1)+2*(a(n-1)+7))` -/
def P1897311044760766782.Spec : Prop :=
  ∀ n, (P1897311044760766782.a n : ℤ) = A036545 n

theorem P1897311044760766782.correct : P1897311044760766782.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A036545, Nat.add_sub_cancel, A036545.P1897311044760766782.a, A036545.P10477077024341625309.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A036545, Nat.add_sub_cancel, A036545.P1897311044760766782.a, A036545.P10477077024341625309.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A036545

/-! ## A036545.P1673912571450256355

`abs(6-A198644(n))`
-/

namespace A036545.P1673912571450256355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |6 - A198644 n|

end

end A036545.P1673912571450256355

namespace A036545

/-- `abs(6-A198644(n))` -/
def P1673912571450256355.Spec : Prop :=
  ∀ n, P1673912571450256355.a n = A036545 n

end A036545

/-! ## A036545.P339779632522547965

`ceil(A036546(n)/2)`
-/

namespace A036545.P339779632522547965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A036546 n : ℚ) / 2⌉

end

end A036545.P339779632522547965

namespace A036545

/-- `ceil(A036546(n)/2)` -/
def P339779632522547965.Spec : Prop :=
  ∀ n, P339779632522547965.a n = A036545 n

end A036545

/-! ## A036545.P1385646367977131931

`and(A198644(n), A199111(n))`
-/

namespace A036545.P1385646367977131931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198644 n) (A199111 n)

end

end A036545.P1385646367977131931

namespace A036545

/-- `and(A198644(n), A199111(n))` -/
def P1385646367977131931.Spec : Prop :=
  ∀ n, P1385646367977131931.a n = A036545 n

end A036545

/-! ## A036545.P4470497568981783936

`(A036547(n)+3)/4`
-/

namespace A036545.P4470497568981783936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036547 n + 3 : ℚ) / 4

end

end A036545.P4470497568981783936

namespace A036545

/-- `(A036547(n)+3)/4` -/
def P4470497568981783936.Spec : Prop :=
  ∀ n, P4470497568981783936.a n = (A036545 n : ℚ)

end A036545

/-! ## A036545.P2293961322427538283

`∑[A188825(n+1)%A188845(n+1)]`
-/

namespace A036545.P2293961322427538283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188825 (n + 1)) (A188845 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036545.P2293961322427538283

namespace A036545

/-- `∑[A188825(n+1)%A188845(n+1)]` -/
def P2293961322427538283.Spec : Prop :=
  ∀ n, P2293961322427538283.a n = A036545 n

end A036545

/-! ## A036545.P15682288535675696209

`and(A141722(n), A198644(n))`
-/

namespace A036545.P15682288535675696209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A141722 n) (A198644 n)

end

end A036545.P15682288535675696209

namespace A036545

/-- `and(A141722(n), A198644(n))` -/
def P15682288535675696209.Spec : Prop :=
  ∀ n, P15682288535675696209.a n = A036545 n

end A036545

/-! ## A036545.P4238165292828770458

`A048471(eq[4, A002262(n)])`
-/

namespace A036545.P4238165292828770458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048471 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036545.P4238165292828770458

namespace A036545

/-- `A048471(eq[4, A002262(n)])` -/
def P4238165292828770458.Spec : Prop :=
  ∀ n, P4238165292828770458.a n = A036545 n

end A036545

/-!
# A036546: a(n) = T(5,n), array T given by A048471.

The programs for A036546, the canonical program `A036546.P11218812028669592346` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036546 has offset 0).

The definition of A036546 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036546.P11218812028669592346

`16*3^n-15`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036546

/-- `16*3^n-15` -/
def P11218812028669592346.Spec : Prop :=
  ∀ n, P11218812028669592346.a n = A036546 n

theorem P11218812028669592346.correct : P11218812028669592346.Spec := by
  intro n
  simp only [A036546]

end A036546

/-! ## A036546.P11538630871047869731

`3*(a(n-1)+10)` with `a(0)=1`
-/

namespace A036546.P11538630871047869731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * (a (n - 1) + 10)

end

end A036546.P11538630871047869731

namespace A036546

/-- `3*(a(n-1)+10)` -/
def P11538630871047869731.Spec : Prop :=
  ∀ n, (P11538630871047869731.a n : ℤ) = A036546 n

theorem P11538630871047869731.correct : P11538630871047869731.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A036546, Nat.add_sub_cancel, A036546.P11538630871047869731.a, A036546.P11218812028669592346.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A036546, Nat.add_sub_cancel, A036546.P11538630871047869731.a, A036546.P11218812028669592346.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A036546

/-! ## A036546.P10027325879386408800

`lcm(3, a(n-1)+10)` with `a(0)=1`
-/

namespace A036546.P10027325879386408800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 3 (a (n - 1) + 10)

end

end A036546.P10027325879386408800

namespace A036546

/-- `lcm(3, a(n-1)+10)` -/
def P10027325879386408800.Spec : Prop :=
  ∀ n, (P10027325879386408800.a n : ℤ) = A036546 n

end A036546

/-! ## A036546.P13193494576824158974

`3*or(10, a(n-1))` with `a(0)=1`
-/

namespace A036546.P13193494576824158974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * Nat.lor 10 (a (n - 1))

end

end A036546.P13193494576824158974

namespace A036546

/-- `3*or(10, a(n-1))` -/
def P13193494576824158974.Spec : Prop :=
  ∀ n, (P13193494576824158974.a n : ℤ) = A036546 n

end A036546

/-! ## A036546.P11720162519241237081

`3*xor(10, a(n-1))` with `a(0)=1`
-/

namespace A036546.P11720162519241237081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * Nat.xor 10 (a (n - 1))

end

end A036546.P11720162519241237081

namespace A036546

/-- `3*xor(10, a(n-1))` -/
def P11720162519241237081.Spec : Prop :=
  ∀ n, (P11720162519241237081.a n : ℤ) = A036546 n

end A036546

/-! ## A036546.P2544365250667681993

`∑[3*a(n-1)]` with `a(0)=1, a(1)=32`
-/

namespace A036546.P2544365250667681993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 32] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036546.P2544365250667681993

namespace A036546

/-- `∑[3*a(n-1)]` -/
def P2544365250667681993.Spec : Prop :=
  ∀ n, (P2544365250667681993.a n : ℤ) = A036546 n

end A036546

/-! ## A036546.P17699859565267692676

`∑[A083583(n)/A025192(n)*A083583(n)]`
-/

namespace A036546.P17699859565267692676
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083583 n : ℚ) / (A025192 n : ℚ) * (A083583 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036546.P17699859565267692676

namespace A036546

/-- `∑[A083583(n)/A025192(n)*A083583(n)]` -/
def P17699859565267692676.Spec : Prop :=
  ∀ n, P17699859565267692676.a n = (A036546 n : ℚ)

end A036546

/-! ## A036546.P13516164607068922725

`ceil(A036547(n)/2)`
-/

namespace A036546.P13516164607068922725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A036547 n : ℚ) / 2⌉

end

end A036546.P13516164607068922725

namespace A036546

/-- `ceil(A036547(n)/2)` -/
def P13516164607068922725.Spec : Prop :=
  ∀ n, P13516164607068922725.a n = A036546 n

end A036546

/-! ## A036546.P12916775330819579289

`(A036548(n)+3)/4`
-/

namespace A036546.P12916775330819579289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036548 n + 3 : ℚ) / 4

end

end A036546.P12916775330819579289

namespace A036546

/-- `(A036548(n)+3)/4` -/
def P12916775330819579289.Spec : Prop :=
  ∀ n, P12916775330819579289.a n = (A036546 n : ℚ)

end A036546

/-! ## A036546.P2129761334108110529

`∑[A083583(n)²/A025192(n)]`
-/

namespace A036546.P2129761334108110529
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083583 n ^ 2 : ℚ) / (A025192 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036546.P2129761334108110529

namespace A036546

/-- `∑[A083583(n)²/A025192(n)]` -/
def P2129761334108110529.Spec : Prop :=
  ∀ n, P2129761334108110529.a n = (A036546 n : ℚ)

end A036546

/-!
# A036547: a(n) = T(6,n), array T given by A048471.

The programs for A036547, the canonical program `A036547.P8961781053565525089` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036547 has offset 0).

The definition of A036547 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036547.P8961781053565525089

`32*3^n-31`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036547

/-- `32*3^n-31` -/
def P8961781053565525089.Spec : Prop :=
  ∀ n, P8961781053565525089.a n = A036547 n

theorem P8961781053565525089.correct : P8961781053565525089.Spec := by
  intro n
  simp only [A036547]

end A036547

/-! ## A036547.P12507848214813152756

`∑[3*a(n-1)]` with `a(0)=1, a(1)=64`
-/

namespace A036547.P12507848214813152756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 64] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036547.P12507848214813152756

namespace A036547

/-- `∑[3*a(n-1)]` -/
def P12507848214813152756.Spec : Prop :=
  ∀ n, (P12507848214813152756.a n : ℤ) = A036547 n

end A036547

/-! ## A036547.P4204362376963678457

`abs(3*a(n-1)+62)` with `a(0)=1`
-/

namespace A036547.P4204362376963678457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + 62

end

end A036547.P4204362376963678457

namespace A036547

/-- `abs(3*a(n-1)+62)` -/
def P4204362376963678457.Spec : Prop :=
  ∀ n, (P4204362376963678457.a n : ℤ) = A036547 n

theorem P4204362376963678457.correct : P4204362376963678457.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A036547, Nat.add_sub_cancel, A036547.P4204362376963678457.a, A036547.P8961781053565525089.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A036547, Nat.add_sub_cancel, A036547.P4204362376963678457.a, A036547.P8961781053565525089.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A036547

/-! ## A036547.P5883061225277637247

`or(1, 8*A302507(n))`
-/

namespace A036547.P5883061225277637247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (8 * A302507 n)

end

end A036547.P5883061225277637247

namespace A036547

/-- `or(1, 8*A302507(n))` -/
def P5883061225277637247.Spec : Prop :=
  ∀ n, P5883061225277637247.a n = A036547 n

end A036547

/-! ## A036547.P8838524403143347250

`or(1, 64*A003462(n))`
-/

namespace A036547.P8838524403143347250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (64 * A003462 n)

end

end A036547.P8838524403143347250

namespace A036547

/-- `or(1, 64*A003462(n))` -/
def P8838524403143347250.Spec : Prop :=
  ∀ n, P8838524403143347250.a n = A036547 n

end A036547

/-! ## A036547.P3976909216182160600

`ceil(A036548(n)/2)`
-/

namespace A036547.P3976909216182160600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A036548 n : ℚ) / 2⌉

end

end A036547.P3976909216182160600

namespace A036547

/-- `ceil(A036548(n)/2)` -/
def P3976909216182160600.Spec : Prop :=
  ∀ n, P3976909216182160600.a n = A036547 n

end A036547

/-! ## A036547.P16322393737603843507

`ceil(A036549(n)/4)`
-/

namespace A036547.P16322393737603843507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A036549 n : ℚ) / 4⌉

end

end A036547.P16322393737603843507

namespace A036547

/-- `ceil(A036549(n)/4)` -/
def P16322393737603843507.Spec : Prop :=
  ∀ n, P16322393737603843507.a n = A036547 n

end A036547

/-! ## A036547.P9291949959118234630

`A048471(eq[6, A002262(n)])`
-/

namespace A036547.P9291949959118234630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048471 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036547.P9291949959118234630

namespace A036547

/-- `A048471(eq[6, A002262(n)])` -/
def P9291949959118234630.Spec : Prop :=
  ∀ n, P9291949959118234630.a n = A036547 n

end A036547

/-!
# A036548: a(n) = T(7,n), array T given by A048471.

The programs for A036548, the canonical program `A036548.P2748310777499833017` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036548 has offset 0).

The definition of A036548 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036548.P2748310777499833017

`64*3^n-63`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036548

/-- `64*3^n-63` -/
def P2748310777499833017.Spec : Prop :=
  ∀ n, P2748310777499833017.a n = A036548 n

theorem P2748310777499833017.correct : P2748310777499833017.Spec := by
  intro n
  simp only [A036548]

end A036548

/-! ## A036548.P1534591917645501080

`3*(a(n-1)+42)` with `a(0)=1`
-/

namespace A036548.P1534591917645501080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * (a (n - 1) + 42)

end

end A036548.P1534591917645501080

namespace A036548

/-- `3*(a(n-1)+42)` -/
def P1534591917645501080.Spec : Prop :=
  ∀ n, (P1534591917645501080.a n : ℤ) = A036548 n

theorem P1534591917645501080.correct : P1534591917645501080.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A036548, Nat.add_sub_cancel, A036548.P1534591917645501080.a, A036548.P2748310777499833017.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A036548, Nat.add_sub_cancel, A036548.P1534591917645501080.a, A036548.P2748310777499833017.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A036548

/-! ## A036548.P9209305269573553560

`3*or(43, a(n-1))` with `a(0)=1`
-/

namespace A036548.P9209305269573553560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * Nat.lor 43 (a (n - 1))

end

end A036548.P9209305269573553560

namespace A036548

/-- `3*or(43, a(n-1))` -/
def P9209305269573553560.Spec : Prop :=
  ∀ n, (P9209305269573553560.a n : ℤ) = A036548 n

end A036548

/-! ## A036548.P13882992797807275650

`ceil(A036549(n)/2)`
-/

namespace A036548.P13882992797807275650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A036549 n : ℚ) / 2⌉

end

end A036548.P13882992797807275650

namespace A036548

/-- `ceil(A036549(n)/2)` -/
def P13882992797807275650.Spec : Prop :=
  ∀ n, P13882992797807275650.a n = A036548 n

end A036548

/-! ## A036548.P17055110819493040233

`round(sqrt(A036547(n)*A036549(n)))`
-/

namespace A036548.P17055110819493040233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A036547 n * A036549 n : ℝ))

end

end A036548.P17055110819493040233

namespace A036548

/-- `round(sqrt(A036547(n)*A036549(n)))` -/
def P17055110819493040233.Spec : Prop :=
  ∀ n, P17055110819493040233.a n = A036548 n

end A036548

/-! ## A036548.P10085534724996201102

`round(A036549(n)/A000034(A046807(n+1)))`
-/

namespace A036548.P10085534724996201102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A036549 n : ℚ) / (A000034 (A046807 (n + 1)).toNat : ℚ))

end

end A036548.P10085534724996201102

namespace A036548

/-- `round(A036549(n)/A000034(A046807(n+1)))` -/
def P10085534724996201102.Spec : Prop :=
  ∀ n, P10085534724996201102.a n = A036548 n

end A036548

/-!
# A036549: a(n) = T(8,n), array T given by A048471.

The programs for A036549, the canonical program `A036549.P2639299217749662331` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036549 has offset 0).

The definition of A036549 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036549.P2639299217749662331

`128*3^n-127`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036549

/-- `128*3^n-127` -/
def P2639299217749662331.Spec : Prop :=
  ∀ n, P2639299217749662331.a n = A036549 n

theorem P2639299217749662331.correct : P2639299217749662331.Spec := by
  intro n
  simp only [A036549]

end A036549

/-! ## A036549.P14777708387172354493

`∑[3*a(n-1)]` with `a(0)=1, a(1)=256`
-/

namespace A036549.P14777708387172354493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 256] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036549.P14777708387172354493

namespace A036549

/-- `∑[3*a(n-1)]` -/
def P14777708387172354493.Spec : Prop :=
  ∀ n, (P14777708387172354493.a n : ℤ) = A036549 n

end A036549

/-! ## A036549.P2013360586375698362

`abs(1-2*A036548(n))`
-/

namespace A036549.P2013360586375698362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * A036548 n|

end

end A036549.P2013360586375698362

namespace A036549

/-- `abs(1-2*A036548(n))` -/
def P2013360586375698362.Spec : Prop :=
  ∀ n, P2013360586375698362.a n = A036549 n

end A036549

/-! ## A036549.P17920918547195926928

`A048471(eq[8, A002262(n)])`
-/

namespace A036549.P17920918547195926928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048471 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036549.P17920918547195926928

namespace A036549

/-- `A048471(eq[8, A002262(n)])` -/
def P17920918547195926928.Spec : Prop :=
  ∀ n, P17920918547195926928.a n = A036549 n

end A036549

/-! ## A036549.P7486603047024983238

`A048471(eq[9, A002260(n+1)])`
-/

namespace A036549.P7486603047024983238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048471 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036549.P7486603047024983238

namespace A036549

/-- `A048471(eq[9, A002260(n+1)])` -/
def P7486603047024983238.Spec : Prop :=
  ∀ n, P7486603047024983238.a n = A036549 n

end A036549

/-!
# A036550: a(n) = T(0,n) + T(1,n-1) + ... + T(n,0), array T given by A048471.

The programs for A036550, the canonical program `A036550.P10235174199096628714` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036550 has offset 0).

The definition of A036550 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036550.P10235174199096628714

`1/2*(3^(n+1)-2^(n+2)+2*n+3)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036550

/-- `1/2*(3^(n+1)-2^(n+2)+2*n+3)` -/
def P10235174199096628714.Spec : Prop :=
  ∀ n, P10235174199096628714.a n = (A036550 n : ℚ)

end A036550

/-! ## A036550.P12384963141292330080

`∑[∑[ogf((1-4x+5x^2)/(1-5x+6x^2))]]`
-/

namespace A036550.P12384963141292330080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 5] [1, -5, 6] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036550.P12384963141292330080

namespace A036550

/-- `∑[∑[ogf((1-4x+5x^2)/(1-5x+6x^2))]]` -/
def P12384963141292330080.Spec : Prop :=
  ∀ n, P12384963141292330080.a n = A036550 n

end A036550

/-! ## A036550.P8654478045273696171

`2^n+3*a(n-1)-2*n` with `a(0)=1`
-/

namespace A036550.P8654478045273696171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n : ℤ) + (3 * a (n - 1) - (2 * n : ℤ))

end

end A036550.P8654478045273696171

namespace A036550

/-- `2^n+3*a(n-1)-2*n` -/
def P8654478045273696171.Spec : Prop :=
  ∀ n, P8654478045273696171.a n = A036550 n

end A036550

/-! ## A036550.P12982345676076049810

`3^n-2^n+a(n-1)+1` with `a(0)=1`
-/

namespace A036550.P12982345676076049810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (3 ^ n : ℤ) - (2 ^ n : ℤ) + (a (n - 1) + 1)

end

end A036550.P12982345676076049810

namespace A036550

/-- `3^n-2^n+a(n-1)+1` -/
def P12982345676076049810.Spec : Prop :=
  ∀ n, P12982345676076049810.a n = A036550 n

end A036550

/-! ## A036550.P13535451409684491226

`or(1, ∑[∑[3*a(n-1)]-2^n])` with `a(0)=2, a(1)=2`
-/

namespace A036550.P13535451409684491226
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  3 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A036550.P13535451409684491226

namespace A036550

/-- `or(1, ∑[∑[3*a(n-1)]-2^n])` -/
def P13535451409684491226.Spec : Prop :=
  ∀ n, P13535451409684491226.a n = A036550 n

end A036550

/-! ## A036550.P14100905462900202551

`∑[A083323(n)]`
-/

namespace A036550.P14100905462900202551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036550.P14100905462900202551

namespace A036550

/-- `∑[A083323(n)]` -/
def P14100905462900202551.Spec : Prop :=
  ∀ n, P14100905462900202551.a n = A036550 n

end A036550

/-! ## A036550.P8023108878300502461

`∑[A001047(n)+1]`
-/

namespace A036550.P8023108878300502461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036550.P8023108878300502461

namespace A036550

/-- `∑[A001047(n)+1]` -/
def P8023108878300502461.Spec : Prop :=
  ∀ n, P8023108878300502461.a n = A036550 n

end A036550

/-! ## A036550.P6356447893352089727

`∑[A240506(n)]-n`
-/

namespace A036550.P6356447893352089727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240506 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A036550.P6356447893352089727

namespace A036550

/-- `∑[A240506(n)]-n` -/
def P6356447893352089727.Spec : Prop :=
  ∀ n, P6356447893352089727.a n = A036550 n

end A036550

/-! ## A036550.P15596617399053431656

`2*A263622(n)+1`
-/

namespace A036550.P15596617399053431656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A263622 n + 1

end

end A036550.P15596617399053431656

namespace A036550

/-- `2*A263622(n)+1` -/
def P15596617399053431656.Spec : Prop :=
  ∀ n, P15596617399053431656.a n = A036550 n

end A036550

/-! ## A036550.P7823509511809490220

`A134063(n+1)+n`
-/

namespace A036550.P7823509511809490220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134063 (n + 1) + (n : ℤ)

end

end A036550.P7823509511809490220

namespace A036550

/-- `A134063(n+1)+n` -/
def P7823509511809490220.Spec : Prop :=
  ∀ n, P7823509511809490220.a n = A036550 n

end A036550

/-! ## A036550.P17204696861283988699

`A000392(n+2)+1+n`
-/

namespace A036550.P17204696861283988699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 2) + 1 + (n : ℤ)

end

end A036550.P17204696861283988699

namespace A036550

/-- `A000392(n+2)+1+n` -/
def P17204696861283988699.Spec : Prop :=
  ∀ n, P17204696861283988699.a n = A036550 n

end A036550

/-! ## A036550.P10246385790642506922

`A293561(n+1)+∑[n+1]`
-/

namespace A036550.P10246385790642506922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293561 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A036550.P10246385790642506922

namespace A036550

/-- `A293561(n+1)+∑[n+1]` -/
def P10246385790642506922.Spec : Prop :=
  ∀ n, P10246385790642506922.a n = A036550 n

end A036550

/-! ## A036550.P11122512836336142015

`∑[A304973(Δ[n²])]+n+1`
-/

namespace A036550.P11122512836336142015
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304973 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A036550.P11122512836336142015

namespace A036550

/-- `∑[A304973(Δ[n²])]+n+1` -/
def P11122512836336142015.Spec : Prop :=
  ∀ n, P11122512836336142015.a n = A036550 n

end A036550

/-! ## A036550.P14415211047962402350

`A056509(2*n+3)+n+1`
-/

namespace A036550.P14415211047962402350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056509 (2 * n + 3) + (n + 1 : ℤ)

end

end A036550.P14415211047962402350

namespace A036550

/-- `A056509(2*n+3)+n+1` -/
def P14415211047962402350.Spec : Prop :=
  ∀ n, P14415211047962402350.a n = A036550 n

end A036550

/-! ## A036550.P3354928591452058994

`A233656(n+1)-2^(n+1)`
-/

namespace A036550.P3354928591452058994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233656 (n + 1) - (2 ^ (n + 1) : ℤ)

end

end A036550.P3354928591452058994

namespace A036550

/-- `A233656(n+1)-2^(n+1)` -/
def P3354928591452058994.Spec : Prop :=
  ∀ n, P3354928591452058994.a n = A036550 n

end A036550

/-! ## A036550.P6475467767718456070

`A109613(n)+A092438(n)`
-/

namespace A036550.P6475467767718456070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n + A092438 n

end

end A036550.P6475467767718456070

namespace A036550

/-- `A109613(n)+A092438(n)` -/
def P6475467767718456070.Spec : Prop :=
  ∀ n, P6475467767718456070.a n = A036550 n

end A036550

/-! ## A036550.P17245440457440161109

`A001489(n)+∑[A240506(n)]`
-/

namespace A036550.P17245440457440161109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240506 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036550.P17245440457440161109

namespace A036550

/-- `A001489(n)+∑[A240506(n)]` -/
def P17245440457440161109.Spec : Prop :=
  ∀ n, P17245440457440161109.a n = A036550 n

end A036550

/-! ## A036550.P17031025738083804105

`A187693(n)+A131051(n+1)`
-/

namespace A036550.P17031025738083804105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187693 n + A131051 (n + 1)

end

end A036550.P17031025738083804105

namespace A036550

/-- `A187693(n)+A131051(n+1)` -/
def P17031025738083804105.Spec : Prop :=
  ∀ n, P17031025738083804105.a n = A036550 n

end A036550

/-! ## A036550.P17896666558083640612

`A053156(n+1)-A000295(n)`
-/

namespace A036550.P17896666558083640612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053156 (n + 1) - A000295 n

end

end A036550.P17896666558083640612

namespace A036550

/-- `A053156(n+1)-A000295(n)` -/
def P17896666558083640612.Spec : Prop :=
  ∀ n, P17896666558083640612.a n = A036550 n

end A036550

/-! ## A036550.P7155472992647520645

`A067771(n)+1-A132753(n)`
-/

namespace A036550.P7155472992647520645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067771 n + (1 - A132753 n)

end

end A036550.P7155472992647520645

namespace A036550

/-- `A067771(n)+1-A132753(n)` -/
def P7155472992647520645.Spec : Prop :=
  ∀ n, P7155472992647520645.a n = A036550 n

end A036550

/-!
# A036551: a(n) = 2^(n-1)*(3^n-1) + 1.

The programs for A036551, the canonical program `A036551.P16636008447867567606` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036551 has offset 0).

The definition of A036551 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036551.P16636008447867567606

`2^(n-1)*(3^n-1)+1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036551

/-- `2^(n-1)*(3^n-1)+1` -/
def P16636008447867567606.Spec : Prop :=
  ∀ n, P16636008447867567606.a n = (A036551 n : ℚ)

end A036551

/-! ## A036551.P17614228502379568952

`or(1, -(2^n-6^n)/2)`
-/

namespace A036551.P17614228502379568952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway (-(((2 ^ n : ℤ) - (6 ^ n : ℤ) : ℚ) / 2)))

end

end A036551.P17614228502379568952

namespace A036551

/-- `or(1, -(2^n-6^n)/2)` -/
def P17614228502379568952.Spec : Prop :=
  ∀ n, P17614228502379568952.a n = A036551 n

end A036551

/-! ## A036551.P6252341833199804440

`ceil(A155597(n)/2)`
-/

namespace A036551.P6252341833199804440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155597 n : ℚ) / 2⌉

end

end A036551.P6252341833199804440

namespace A036551

/-- `ceil(A155597(n)/2)` -/
def P6252341833199804440.Spec : Prop :=
  ∀ n, P6252341833199804440.a n = A036551 n

end A036551

/-! ## A036551.P7661793081195931661

`(6^n-A000918(n))/2`
-/

namespace A036551.P7661793081195931661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 ^ n : ℤ) - A000918 n : ℚ) / 2

end

end A036551.P7661793081195931661

namespace A036551

/-- `(6^n-A000918(n))/2` -/
def P7661793081195931661.Spec : Prop :=
  ∀ n, P7661793081195931661.a n = (A036551 n : ℚ)

end A036551

/-! ## A036551.P5885781979135123765

`abs(A000225(n)-A081335(n))`
-/

namespace A036551.P5885781979135123765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000225 n - A081335 n|

end

end A036551.P5885781979135123765

namespace A036551

/-- `abs(A000225(n)-A081335(n))` -/
def P5885781979135123765.Spec : Prop :=
  ∀ n, P5885781979135123765.a n = A036551 n

end A036551

/-! ## A036551.P5275950066125592798

`∑[A011782(n)*A060816(n)]`
-/

namespace A036551.P5275950066125592798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A060816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036551.P5275950066125592798

namespace A036551

/-- `∑[A011782(n)*A060816(n)]` -/
def P5275950066125592798.Spec : Prop :=
  ∀ n, P5275950066125592798.a n = A036551 n

end A036551

/-! ## A036551.P16695444905998248053

`(A062394(n)-A000225(n))/2`
-/

namespace A036551.P16695444905998248053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062394 n - A000225 n : ℚ) / 2

end

end A036551.P16695444905998248053

namespace A036551

/-- `(A062394(n)-A000225(n))/2` -/
def P16695444905998248053.Spec : Prop :=
  ∀ n, P16695444905998248053.a n = (A036551 n : ℚ)

end A036551

/-! ## A036551.P466886328289953868

`round(A155597(n)/A000005(A157145(n+1)))`
-/

namespace A036551.P466886328289953868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A155597 n : ℚ) / (A000005 (A157145 (n + 1)).toNat : ℚ))

end

end A036551.P466886328289953868

namespace A036551

/-- `round(A155597(n)/A000005(A157145(n+1)))` -/
def P466886328289953868.Spec : Prop :=
  ∀ n, P466886328289953868.a n = A036551 n

end A036551

/-! ## A036551.P10292249241636933045

`A048471(∑[4*n])`
-/

namespace A036551.P10292249241636933045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048471 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A036551.P10292249241636933045

namespace A036551

/-- `A048471(∑[4*n])` -/
def P10292249241636933045.Spec : Prop :=
  ∀ n, P10292249241636933045.a n = A036551 n

end A036551

/-! ## A036551.P9094088385933304651

`round(A155597(n)/A020639(A103801(n+1)))`
-/

namespace A036551.P9094088385933304651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A155597 n : ℚ) / (A020639 (A103801 (n + 1)).toNat : ℚ))

end

end A036551.P9094088385933304651

namespace A036551

/-- `round(A155597(n)/A020639(A103801(n+1)))` -/
def P9094088385933304651.Spec : Prop :=
  ∀ n, P9094088385933304651.a n = A036551 n

end A036551

/-!
# A036552: List of pairs (m,2m) where m is the least unused positive number.

The programs for A036552, the canonical program `A036552.P7268647553509840710` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036552 has offset 1).

The definition of A036552 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036552.P7268647553509840710

`A003602(A081706(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A036552

/-- `A003602(A081706(n+1))` -/
def P7268647553509840710.Spec : Prop :=
  ∀ n, P7268647553509840710.a n = A036552 (n + 1)

theorem P7268647553509840710.correct : P7268647553509840710.Spec := by
  intro n
  simp only [A036552, Nat.add_sub_cancel]

end A036552

/-! ## A036552.P7738793716936934533

`A065261(A344346(n+1))`
-/

namespace A036552.P7738793716936934533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065261 (A344346 (n + 1)).toNat

end

end A036552.P7738793716936934533

namespace A036552

/-- `A065261(A344346(n+1))` -/
def P7738793716936934533.Spec : Prop :=
  ∀ n, P7738793716936934533.a n = A036552 (n + 1)

end A036552

/-! ## A036552.P55815875182122792

`A178804(A081706(n+1)+1)`
-/

namespace A036552.P55815875182122792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178804 (A081706 (n + 1) + 1).toNat

end

end A036552.P55815875182122792

namespace A036552

/-- `A178804(A081706(n+1)+1)` -/
def P55815875182122792.Spec : Prop :=
  ∀ n, P55815875182122792.a n = A036552 (n + 1)

end A036552

/-! ## A036552.P16129587097269408457

`A003602(eq[A010059(n+2), A010059(n)])`
-/

namespace A036552.P16129587097269408457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A036552.P16129587097269408457

namespace A036552

/-- `A003602(eq[A010059(n+2), A010059(n)])` -/
def P16129587097269408457.Spec : Prop :=
  ∀ n, P16129587097269408457.a n = A036552 (n + 1)

end A036552

/-! ## A036552.P376193342612524639

`A003602(eq[A309873(n+1), A309873(n+2)])`
-/

namespace A036552.P376193342612524639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A036552.P376193342612524639

namespace A036552

/-- `A003602(eq[A309873(n+1), A309873(n+2)])` -/
def P376193342612524639.Spec : Prop :=
  ∀ n, P376193342612524639.a n = A036552 (n + 1)

end A036552

/-!
# A036553: a(n) = phi(prime(n)) - prime(phi(n)).

The programs for A036553, the canonical program `A036553.P11962901007563156616` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036553 has offset 1).

The definition of A036553 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036553.P3019874476991920272

`A006093(n+1)-A048848(n+1)`
-/

namespace A036553.P3019874476991920272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A048848 (n + 1)

end

end A036553.P3019874476991920272

namespace A036553

/-- `A006093(n+1)-A048848(n+1)` -/
def P3019874476991920272.Spec : Prop :=
  ∀ n, P3019874476991920272.a n = A036553 (n + 1)

end A036553

/-! ## A036553.P7290722087768731316

`A037168(n+1)-A048849(n+1)`
-/

namespace A036553.P7290722087768731316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037168 (n + 1) - A048849 (n + 1)

end

end A036553.P7290722087768731316

namespace A036553

/-- `A037168(n+1)-A048849(n+1)` -/
def P7290722087768731316.Spec : Prop :=
  ∀ n, P7290722087768731316.a n = A036553 (n + 1)

end A036553

/-! ## A036553.P17612608911508715466

`A000040(n+1)-(A048848(n+1)+1)`
-/

namespace A036553.P17612608911508715466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (A048848 (n + 1) + 1)

end

end A036553.P17612608911508715466

namespace A036553

/-- `A000040(n+1)-(A048848(n+1)+1)` -/
def P17612608911508715466.Spec : Prop :=
  ∀ n, P17612608911508715466.a n = A036553 (n + 1)

end A036553

/-! ## A036553.P5243284648868068460

`2*A006093(n+1)-A048849(n+1)`
-/

namespace A036553.P5243284648868068460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006093 (n + 1) - A048849 (n + 1)

end

end A036553.P5243284648868068460

namespace A036553

/-- `2*A006093(n+1)-A048849(n+1)` -/
def P5243284648868068460.Spec : Prop :=
  ∀ n, P5243284648868068460.a n = A036553 (n + 1)

end A036553

/-! ## A036553.P7460848546194013123

`A048849(n+1)-2*A048848(n+1)`
-/

namespace A036553.P7460848546194013123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048849 (n + 1) - 2 * A048848 (n + 1)

end

end A036553.P7460848546194013123

namespace A036553

/-- `A048849(n+1)-2*A048848(n+1)` -/
def P7460848546194013123.Spec : Prop :=
  ∀ n, P7460848546194013123.a n = A036553 (n + 1)

end A036553

/-! ## A036553.P11962901007563156616

`A006093(n+1)-A000040((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A036553

/-- `A006093(n+1)-A000040((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])` -/
def P11962901007563156616.Spec : Prop :=
  ∀ n, P11962901007563156616.a n = A036553 (n + 1)

theorem P11962901007563156616.correct : P11962901007563156616.Spec := by
  intro n
  simp only [A036553, Nat.add_sub_cancel]

end A036553

/-! ## A036553.P5867356736209237482

`A000040(n+1)-(A000040((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])+1)`
-/

namespace A036553.P5867356736209237482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (A000040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat + 1)

end

end A036553.P5867356736209237482

namespace A036553

/-- `A000040(n+1)-(A000040((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])+1)` -/
def P5867356736209237482.Spec : Prop :=
  ∀ n, P5867356736209237482.a n = A036553 (n + 1)

end A036553

/-! ## A036553.P1266809838963457743

`A006093(n+1)-A000040(Δ[A002088(n)])`
-/

namespace A036553.P1266809838963457743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A000040 (f1 (n + 1) - f1 n).toNat

end

end A036553.P1266809838963457743

namespace A036553

/-- `A006093(n+1)-A000040(Δ[A002088(n)])` -/
def P1266809838963457743.Spec : Prop :=
  ∀ n, P1266809838963457743.a n = A036553 (n + 1)

end A036553

/-! ## A036553.P3258847217147916921

`A006093(n+1)-A000040(Δ[A005728(n)])`
-/

namespace A036553.P3258847217147916921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A000040 (f1 (n + 1) - f1 n).toNat

end

end A036553.P3258847217147916921

namespace A036553

/-- `A006093(n+1)-A000040(Δ[A005728(n)])` -/
def P3258847217147916921.Spec : Prop :=
  ∀ n, P3258847217147916921.a n = A036553 (n + 1)

end A036553

/-! ## A036553.P1127106160265613216

`A006093(n+1)-A000040(A000010(n+1))`
-/

namespace A036553.P1127106160265613216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A000040 (A000010 (n + 1)).toNat

end

end A036553.P1127106160265613216

namespace A036553

/-- `A006093(n+1)-A000040(A000010(n+1))` -/
def P1127106160265613216.Spec : Prop :=
  ∀ n, P1127106160265613216.a n = A036553 (n + 1)

end A036553

/-! ## A036553.P7933735104158869494

`A000040(n+1)-A008864(A000010(n+1))`
-/

namespace A036553.P7933735104158869494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A008864 (A000010 (n + 1)).toNat

end

end A036553.P7933735104158869494

namespace A036553

/-- `A000040(n+1)-A008864(A000010(n+1))` -/
def P7933735104158869494.Spec : Prop :=
  ∀ n, P7933735104158869494.a n = A036553 (n + 1)

end A036553

/-! ## A036553.P8989796562962354681

`sqrt(A005722(n+1))-A000040(A000010(n+1))`
-/

namespace A036553.P8989796562962354681
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A005722 (n + 1) : ℝ) - (A000040 (A000010 (n + 1)).toNat : ℝ)

end

end A036553.P8989796562962354681

namespace A036553

/-- `sqrt(A005722(n+1))-A000040(A000010(n+1))` -/
def P8989796562962354681.Spec : Prop :=
  ∀ n, P8989796562962354681.a n = (A036553 (n + 1) : ℝ)

end A036553

/-! ## A036553.P2916579720606456443

`A008864(n+1)-(A008864(A000010(n+1))+1)`
-/

namespace A036553.P2916579720606456443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - (A008864 (A000010 (n + 1)).toNat + 1)

end

end A036553.P2916579720606456443

namespace A036553

/-- `A008864(n+1)-(A008864(A000010(n+1))+1)` -/
def P2916579720606456443.Spec : Prop :=
  ∀ n, P2916579720606456443.a n = A036553 (n + 1)

end A036553

/-! ## A036553.P15331269426005866537

`A040976(n+1)-(A040976(A000010(n+1))+1)`
-/

namespace A036553.P15331269426005866537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - (A040976 (A000010 (n + 1)).toNat + 1)

end

end A036553.P15331269426005866537

namespace A036553

/-- `A040976(n+1)-(A040976(A000010(n+1))+1)` -/
def P15331269426005866537.Spec : Prop :=
  ∀ n, P15331269426005866537.a n = A036553 (n + 1)

end A036553

/-! ## A036553.P9651947900782071794

`A052147(n+1)-(A052147(A000010(n+1))+1)`
-/

namespace A036553.P9651947900782071794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) - (A052147 (A000010 (n + 1)).toNat + 1)

end

end A036553.P9651947900782071794

namespace A036553

/-- `A052147(n+1)-(A052147(A000010(n+1))+1)` -/
def P9651947900782071794.Spec : Prop :=
  ∀ n, P9651947900782071794.a n = A036553 (n + 1)

end A036553

/-! ## A036553.P2632407792417046958

`A006093(n+1)-A000040(A109606(n+1)+1)`
-/

namespace A036553.P2632407792417046958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A000040 (A109606 (n + 1) + 1).toNat

end

end A036553.P2632407792417046958

namespace A036553

/-- `A006093(n+1)-A000040(A109606(n+1)+1)` -/
def P2632407792417046958.Spec : Prop :=
  ∀ n, P2632407792417046958.a n = A036553 (n + 1)

end A036553

/-! ## A036553.P1473382380554332255

`A000040(n+1)-A008864(A109606(n+1)+1)`
-/

namespace A036553.P1473382380554332255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A008864 (A109606 (n + 1) + 1).toNat

end

end A036553.P1473382380554332255

namespace A036553

/-- `A000040(n+1)-A008864(A109606(n+1)+1)` -/
def P1473382380554332255.Spec : Prop :=
  ∀ n, P1473382380554332255.a n = A036553 (n + 1)

end A036553

/-! ## A036553.P12383705180440452761

`A086801(n+1)-(A086801(A000010(n+1))+1)`
-/

namespace A036553.P12383705180440452761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1) - (A086801 (A000010 (n + 1)).toNat + 1)

end

end A036553.P12383705180440452761

namespace A036553

/-- `A086801(n+1)-(A086801(A000010(n+1))+1)` -/
def P12383705180440452761.Spec : Prop :=
  ∀ n, P12383705180440452761.a n = A036553 (n + 1)

end A036553

/-! ## A036553.P3565937446772854559

`A113935(n+1)-(A113935(A000010(n+1))+1)`
-/

namespace A036553.P3565937446772854559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1) - (A113935 (A000010 (n + 1)).toNat + 1)

end

end A036553.P3565937446772854559

namespace A036553

/-- `A113935(n+1)-(A113935(A000010(n+1))+1)` -/
def P3565937446772854559.Spec : Prop :=
  ∀ n, P3565937446772854559.a n = A036553 (n + 1)

end A036553

/-! ## A036553.P11183091555453535755

`A006093(n+1)-A000040(A039649(n+1)-1)`
-/

namespace A036553.P11183091555453535755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A000040 (A039649 (n + 1) - 1).toNat

end

end A036553.P11183091555453535755

namespace A036553

/-- `A006093(n+1)-A000040(A039649(n+1)-1)` -/
def P11183091555453535755.Spec : Prop :=
  ∀ n, P11183091555453535755.a n = A036553 (n + 1)

end A036553

/-!
# A036554: Numbers whose binary representation ends in an odd number of zeros.

The programs for A036554, the canonical program `A036554.P8175060370953883075` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036554 has offset 1).

The definition of A036554 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072939, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A036554.P15491741348622103100

`A079523(n+1)+1`
-/

namespace A036554.P15491741348622103100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079523 (n + 1) + 1

end

end A036554.P15491741348622103100

namespace A036554

/-- `A079523(n+1)+1` -/
def P15491741348622103100.Spec : Prop :=
  ∀ n, P15491741348622103100.a n = A036554 (n + 1)

end A036554

/-! ## A036554.P8175060370953883075

`A072939(n+1)-1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A036554

/-- `A072939(n+1)-1` -/
def P8175060370953883075.Spec : Prop :=
  ∀ n, P8175060370953883075.a n = A036554 (n + 1)

theorem P8175060370953883075.correct : P8175060370953883075.Spec := by
  intro n
  simp only [A036554, Nat.add_sub_cancel]

end A036554

/-! ## A036554.P11498828769821652837

`2*A003159(n+1)`
-/

namespace A036554.P11498828769821652837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003159 (n + 1)

end

end A036554.P11498828769821652837

namespace A036554

/-- `2*A003159(n+1)` -/
def P11498828769821652837.Spec : Prop :=
  ∀ n, P11498828769821652837.a n = A036554 (n + 1)

end A036554

/-! ## A036554.P16647930106463104151

`A003158(n+1)-n`
-/

namespace A036554.P16647930106463104151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003158 (n + 1) - (n : ℤ)

end

end A036554.P16647930106463104151

namespace A036554

/-- `A003158(n+1)-n` -/
def P16647930106463104151.Spec : Prop :=
  ∀ n, P16647930106463104151.a n = A036554 (n + 1)

end A036554

/-! ## A036554.P2525460599629182756

`A003156(n+1)+n+1`
-/

namespace A036554.P2525460599629182756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003156 (n + 1) + (n + 1 : ℤ)

end

end A036554.P2525460599629182756

namespace A036554

/-- `A003156(n+1)+n+1` -/
def P2525460599629182756.Spec : Prop :=
  ∀ n, P2525460599629182756.a n = A036554 (n + 1)

end A036554

/-! ## A036554.P2663407875809315387

`A003157(n+1)-(n+1)`
-/

namespace A036554.P2663407875809315387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003157 (n + 1) - (n + 1 : ℤ)

end

end A036554.P2663407875809315387

namespace A036554

/-- `A003157(n+1)-(n+1)` -/
def P2663407875809315387.Spec : Prop :=
  ∀ n, P2663407875809315387.a n = A036554 (n + 1)

end A036554

/-! ## A036554.P8942476526864403873

`comp[n*and(n, -n)]`
-/

namespace A036554.P8942476526864403873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land (n : ℤ) (-(n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A036554.P8942476526864403873

namespace A036554

/-- `comp[n*and(n, -n)]` -/
def P8942476526864403873.Spec : Prop :=
  ∀ n, (P8942476526864403873.a n : ℤ) = A036554 (n + 1)

end A036554

/-! ## A036554.P16969175028683721629

`eq[2, and(n, -n)%3]`
-/

namespace A036554.P16969175028683721629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n : ℤ) (-(n : ℤ))) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036554.P16969175028683721629

namespace A036554

/-- `eq[2, and(n, -n)%3]` -/
def P16969175028683721629.Spec : Prop :=
  ∀ n, (P16969175028683721629.a n : ℤ) = A036554 (n + 1)

end A036554

/-! ## A036554.P11353448294348384822

`eq[0, xor(n, n-1)%3]`
-/

namespace A036554.P11353448294348384822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036554.P11353448294348384822

namespace A036554

/-- `eq[0, xor(n, n-1)%3]` -/
def P11353448294348384822.Spec : Prop :=
  ∀ n, (P11353448294348384822.a n : ℤ) = A036554 (n + 1)

end A036554

/-! ## A036554.P18335598576196289633

`comp[or(n, val(n+2, 2))]+2`
-/

namespace A036554.P18335598576196289633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (SequenceMachineLib.valuation (n + 2) 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2

end

end A036554.P18335598576196289633

namespace A036554

/-- `comp[or(n, val(n+2, 2))]+2` -/
def P18335598576196289633.Spec : Prop :=
  ∀ n, (P18335598576196289633.a n : ℤ) = A036554 (n + 1)

end A036554

/-! ## A036554.P11935503864122935009

`lt[0, val(n+1, 2)%2]+1`
-/

namespace A036554.P11935503864122935009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A036554.P11935503864122935009

namespace A036554

/-- `lt[0, val(n+1, 2)%2]+1` -/
def P11935503864122935009.Spec : Prop :=
  ∀ n, (P11935503864122935009.a n : ℤ) = A036554 (n + 1)

end A036554

/-! ## A036554.P14169978104695683683

`lt[gcd(2, val(n+1, 2)), 2]+1`
-/

namespace A036554.P14169978104695683683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (SequenceMachineLib.valuation (n + 1) 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A036554.P14169978104695683683

namespace A036554

/-- `lt[gcd(2, val(n+1, 2)), 2]+1` -/
def P14169978104695683683.Spec : Prop :=
  ∀ n, (P14169978104695683683.a n : ℤ) = A036554 (n + 1)

end A036554

/-! ## A036554.P1912271380092533102

`comp[val(2-xor(n, -n), 6)+n]`
-/

namespace A036554.P1912271380092533102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 - Int.xor (n : ℤ) (-(n : ℤ))).toNat 6 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A036554.P1912271380092533102

namespace A036554

/-- `comp[val(2-xor(n, -n), 6)+n]` -/
def P1912271380092533102.Spec : Prop :=
  ∀ n, (P1912271380092533102.a n : ℤ) = A036554 (n + 1)

end A036554

/-! ## A036554.P1232666698805695542

`eq[1, and(val(n, 2), a(n-1)!)]` with `a(0)=0`
-/

namespace A036554.P1232666698805695542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  Nat.land (SequenceMachineLib.valuation n 2) (Nat.factorial (f2 (n - 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036554.P1232666698805695542

namespace A036554

/-- `eq[1, and(val(n, 2), a(n-1)!)]` -/
def P1232666698805695542.Spec : Prop :=
  ∀ n, (P1232666698805695542.a n : ℤ) = A036554 (n + 1)

end A036554

/-! ## A036554.P3033906073246566463

`A162648(n+1)+2`
-/

namespace A036554.P3033906073246566463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162648 (n + 1) + 2

end

end A036554.P3033906073246566463

namespace A036554

/-- `A162648(n+1)+2` -/
def P3033906073246566463.Spec : Prop :=
  ∀ n, P3033906073246566463.a n = A036554 (n + 1)

end A036554

/-! ## A036554.P344302380413761294

`A108269(n+1)/2`
-/

namespace A036554.P344302380413761294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108269 (n + 1) : ℚ) / 2

end

end A036554.P344302380413761294

namespace A036554

/-- `A108269(n+1)/2` -/
def P344302380413761294.Spec : Prop :=
  ∀ n, P344302380413761294.a n = (A036554 (n + 1) : ℚ)

end A036554

/-!
# A036555: Hamming weight of 3n: number of 1's in binary expansion of 3n.

The programs for A036555, the canonical program `A036555.P9976746027563483838` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036555 has offset 0).

The definition of A036555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036555.P17784984704800451539

`log2(A134660(n))`
-/

namespace A036555.P17784984704800451539
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A134660 n : ℝ)

end

end A036555.P17784984704800451539

namespace A036555

/-- `log2(A134660(n))` -/
def P17784984704800451539.Spec : Prop :=
  ∀ n, P17784984704800451539.a n = (A036555 n : ℝ)

end A036555

/-! ## A036555.P119442907658831593

`∑{digits}[A190944(n), #]`
-/

namespace A036555.P119442907658831593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190944 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A036555.P119442907658831593

namespace A036555

/-- `∑{digits}[A190944(n), #]` -/
def P119442907658831593.Spec : Prop :=
  ∀ n, (P119442907658831593.a n : ℤ) = A036555 n

end A036555

/-! ## A036555.P10383214635584032654

`log2(A001316(3*n))`
-/

namespace A036555.P10383214635584032654
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 (3 * n) : ℝ)

end

end A036555.P10383214635584032654

namespace A036555

/-- `log2(A001316(3*n))` -/
def P10383214635584032654.Spec : Prop :=
  ∀ n, P10383214635584032654.a n = (A036555 n : ℝ)

end A036555

/-! ## A036555.P9976746027563483838

`val(A001316(A008585(n)), 2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A036555

/-- `val(A001316(A008585(n)), 2)` -/
def P9976746027563483838.Spec : Prop :=
  ∀ n, (P9976746027563483838.a n : ℤ) = A036555 n

theorem P9976746027563483838.correct : P9976746027563483838.Spec := by
  intro n
  simp only [A036555]

end A036555

/-! ## A036555.P8668970425314516562

`A334913(n)+A000120(n)`
-/

namespace A036555.P8668970425314516562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334913 n + A000120 n

end

end A036555.P8668970425314516562

namespace A036555

/-- `A334913(n)+A000120(n)` -/
def P8668970425314516562.Spec : Prop :=
  ∀ n, P8668970425314516562.a n = A036555 n

end A036555

/-! ## A036555.P2165345907870265327

`A371093(n)+A240883(n)`
-/

namespace A036555.P2165345907870265327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371093 n + A240883 n

end

end A036555.P2165345907870265327

namespace A036555

/-- `A371093(n)+A240883(n)` -/
def P2165345907870265327.Spec : Prop :=
  ∀ n, P2165345907870265327.a n = A036555 n

end A036555

/-! ## A036555.P2866423668730088384

`A033265(A001316(2*n+n))`
-/

namespace A036555.P2866423668730088384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033265 (A001316 (2 * n + n)).toNat

end

end A036555.P2866423668730088384

namespace A036555

/-- `A033265(A001316(2*n+n))` -/
def P2866423668730088384.Spec : Prop :=
  ∀ n, P2866423668730088384.a n = A036555 n

end A036555

/-! ## A036555.P11883869366073961172

`3*n-A005187(A032766(n))`
-/

namespace A036555.P11883869366073961172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A005187 (A032766 n).toNat

end

end A036555.P11883869366073961172

namespace A036555

/-- `3*n-A005187(A032766(n))` -/
def P11883869366073961172.Spec : Prop :=
  ∀ n, P11883869366073961172.a n = A036555 n

end A036555

/-! ## A036555.P7569840346074864591

`A324467(n)-A324466(n)`
-/

namespace A036555.P7569840346074864591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324467 n - A324466 n

end

end A036555.P7569840346074864591

namespace A036555

/-- `A324467(n)-A324466(n)` -/
def P7569840346074864591.Spec : Prop :=
  ∀ n, P7569840346074864591.a n = A036555 n

end A036555

/-! ## A036555.P14165457054699156464

`A001222(A268444(3*n))`
-/

namespace A036555.P14165457054699156464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A268444 (3 * n)).toNat

end

end A036555.P14165457054699156464

namespace A036555

/-- `A001222(A268444(3*n))` -/
def P14165457054699156464.Spec : Prop :=
  ∀ n, P14165457054699156464.a n = A036555 n

end A036555

/-! ## A036555.P5137142573200772

`A000120(A134660(n)-1)`
-/

namespace A036555.P5137142573200772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A134660 n - 1).toNat

end

end A036555.P5137142573200772

namespace A036555

/-- `A000120(A134660(n)-1)` -/
def P5137142573200772.Spec : Prop :=
  ∀ n, P5137142573200772.a n = A036555 n

end A036555

/-! ## A036555.P7142753279482479173

`∑{e}[A134660(A134660(n)-1), #]`
-/

namespace A036555.P7142753279482479173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134660 (A134660 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A036555.P7142753279482479173

namespace A036555

/-- `∑{e}[A134660(A134660(n)-1), #]` -/
def P7142753279482479173.Spec : Prop :=
  ∀ n, (P7142753279482479173.a n : ℤ) = A036555 n

end A036555

/-! ## A036555.P10575354289187806996

`A240883(2*n)`
-/

namespace A036555.P10575354289187806996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240883 (2 * n)

end

end A036555.P10575354289187806996

namespace A036555

/-- `A240883(2*n)` -/
def P10575354289187806996.Spec : Prop :=
  ∀ n, P10575354289187806996.a n = A036555 n

end A036555

/-! ## A036555.P12725194609052096788

`A046818(2*n)-1`
-/

namespace A036555.P12725194609052096788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046818 (2 * n) - 1

end

end A036555.P12725194609052096788

namespace A036555

/-- `A046818(2*n)-1` -/
def P12725194609052096788.Spec : Prop :=
  ∀ n, P12725194609052096788.a n = A036555 n

end A036555

/-! ## A036555.P8184020460003962179

`val(A134660(2*n), 2)`
-/

namespace A036555.P8184020460003962179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A134660 (2 * n)).toNat 2

end

end A036555.P8184020460003962179

namespace A036555

/-- `val(A134660(2*n), 2)` -/
def P8184020460003962179.Spec : Prop :=
  ∀ n, (P8184020460003962179.a n : ℤ) = A036555 n

end A036555

/-! ## A036555.P10342694457465868529

`A001222(A134660(2*n))`
-/

namespace A036555.P10342694457465868529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A134660 (2 * n)).toNat

end

end A036555.P10342694457465868529

namespace A036555

/-- `A001222(A134660(2*n))` -/
def P10342694457465868529.Spec : Prop :=
  ∀ n, P10342694457465868529.a n = A036555 n

end A036555

/-! ## A036555.P12075790898785889785

`log2(A351864(2*n))`
-/

namespace A036555.P12075790898785889785
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A351864 (2 * n) : ℝ)

end

end A036555.P12075790898785889785

namespace A036555

/-- `log2(A351864(2*n))` -/
def P12075790898785889785.Spec : Prop :=
  ∀ n, P12075790898785889785.a n = (A036555 n : ℝ)

end A036555

/-! ## A036555.P6442863676224070245

`A000120(A351864(2*n)-1)`
-/

namespace A036555.P6442863676224070245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A351864 (2 * n) - 1).toNat

end

end A036555.P6442863676224070245

namespace A036555

/-- `A000120(A351864(2*n)-1)` -/
def P6442863676224070245.Spec : Prop :=
  ∀ n, P6442863676224070245.a n = A036555 n

end A036555

/-! ## A036555.P16792838917348654584

`A000120(A006257(2*n+n))`
-/

namespace A036555.P16792838917348654584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A006257 (2 * n + n)).toNat

end

end A036555.P16792838917348654584

namespace A036555

/-- `A000120(A006257(2*n+n))` -/
def P16792838917348654584.Spec : Prop :=
  ∀ n, P16792838917348654584.a n = A036555 n

end A036555

/-! ## A036555.P16745533981572951688

`A000120(A165351(n))`
-/

namespace A036555.P16745533981572951688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A165351 n).toNat

end

end A036555.P16745533981572951688

namespace A036555

/-- `A000120(A165351(n))` -/
def P16745533981572951688.Spec : Prop :=
  ∀ n, P16745533981572951688.a n = A036555 n

end A036555

/-!
# A036556: Integers which when multiplied by 3 have an odd number of 1's in their binary expansion (cf. A000069).

The programs for A036556, the canonical program `A036556.P10612096107422092398` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036556 has offset 1).

The definition of A036556 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8736 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036556.P7063952891236398420

`A180963(n+1)/3`
-/

namespace A036556.P7063952891236398420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180963 (n + 1) : ℚ) / 3

end

end A036556.P7063952891236398420

namespace A036556

/-- `A180963(n+1)/3` -/
def P7063952891236398420.Spec : Prop :=
  ∀ n, P7063952891236398420.a n = (A036556 (n + 1) : ℚ)

end A036556

/-! ## A036556.P10612096107422092398

`lt[0, A293162(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A036556

/-- `lt[0, A293162(n)]` -/
def P10612096107422092398.Spec : Prop :=
  ∀ n, (P10612096107422092398.a n : ℤ) = A036556 (n + 1)

theorem P10612096107422092398.correct : P10612096107422092398.Spec := by
  intro n
  simp only [A036556, Nat.add_sub_cancel]

end A036556

/-! ## A036556.P4100802778643187278

`A000027(eq[1, A293162(n)])`
-/

namespace A036556.P4100802778643187278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036556.P4100802778643187278

namespace A036556

/-- `A000027(eq[1, A293162(n)])` -/
def P4100802778643187278.Spec : Prop :=
  ∀ n, P4100802778643187278.a n = A036556 (n + 1)

end A036556

/-! ## A036556.P11539660351473074581

`eq[A293162(n), A293668(n)]`
-/

namespace A036556.P11539660351473074581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293162 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293668 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036556.P11539660351473074581

namespace A036556

/-- `eq[A293162(n), A293668(n)]` -/
def P11539660351473074581.Spec : Prop :=
  ∀ n, (P11539660351473074581.a n : ℤ) = A036556 (n + 1)

end A036556

/-! ## A036556.P3445244835170768618

`eq[A010060(n), A295889(n)]`
-/

namespace A036556.P3445244835170768618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295889 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036556.P3445244835170768618

namespace A036556

/-- `eq[A010060(n), A295889(n)]` -/
def P3445244835170768618.Spec : Prop :=
  ∀ n, (P3445244835170768618.a n : ℤ) = A036556 (n + 1)

end A036556

/-! ## A036556.P18373214918387152033

`filter[A337250(n+1), A293162(#)]`
-/

namespace A036556.P18373214918387152033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293162 (f1 j).toNat = 1) n)

end

end A036556.P18373214918387152033

namespace A036556

/-- `filter[A337250(n+1), A293162(#)]` -/
def P18373214918387152033.Spec : Prop :=
  ∀ n, P18373214918387152033.a n = A036556 (n + 1)

end A036556

/-! ## A036556.P7427448338676048729

`filter[A004780(n+1), A293162(#)]`
-/

namespace A036556.P7427448338676048729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293162 (f1 j).toNat = 1) n)

end

end A036556.P7427448338676048729

namespace A036556

/-- `filter[A004780(n+1), A293162(#)]` -/
def P7427448338676048729.Spec : Prop :=
  ∀ n, P7427448338676048729.a n = A036556 (n + 1)

end A036556

/-! ## A036556.P13893840421062814928

`eq[1, A293162(2*n)]`
-/

namespace A036556.P13893840421062814928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293162 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036556.P13893840421062814928

namespace A036556

/-- `eq[1, A293162(2*n)]` -/
def P13893840421062814928.Spec : Prop :=
  ∀ n, (P13893840421062814928.a n : ℤ) = A036556 (n + 1)

end A036556

/-! ## A036556.P2182105531108911685

`eq[1, A254379(3*n)]/2`
-/

namespace A036556.P2182105531108911685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (3 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A036556.P2182105531108911685

namespace A036556

/-- `eq[1, A254379(3*n)]/2` -/
def P2182105531108911685.Spec : Prop :=
  ∀ n, P2182105531108911685.a n = (A036556 (n + 1) : ℚ)

end A036556

/-! ## A036556.P8399058238146839324

`eq[1, A316828(3*n)]/2`
-/

namespace A036556.P8399058238146839324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 (3 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A036556.P8399058238146839324

namespace A036556

/-- `eq[1, A316828(3*n)]/2` -/
def P8399058238146839324.Spec : Prop :=
  ∀ n, P8399058238146839324.a n = (A036556 (n + 1) : ℚ)

end A036556

/-! ## A036556.P13772787984961390098

`lt[1, A180938(3*(n+1))]+1`
-/

namespace A036556.P13772787984961390098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180938 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A036556.P13772787984961390098

namespace A036556

/-- `lt[1, A180938(3*(n+1))]+1` -/
def P13772787984961390098.Spec : Prop :=
  ∀ n, (P13772787984961390098.a n : ℤ) = A036556 (n + 1)

end A036556

/-! ## A036556.P13893611333810773085

`filter[A072823(n+1), A293162(#)]`
-/

namespace A036556.P13893611333810773085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293162 (f1 j).toNat = 1) n)

end

end A036556.P13893611333810773085

namespace A036556

/-- `filter[A072823(n+1), A293162(#)]` -/
def P13893611333810773085.Spec : Prop :=
  ∀ n, P13893611333810773085.a n = A036556 (n + 1)

end A036556

/-! ## A036556.P8563096534073701957

`filter[A004169(n+1), A293162(#)]`
-/

namespace A036556.P8563096534073701957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293162 (f1 j).toNat = 1) n)

end

end A036556.P8563096534073701957

namespace A036556

/-- `filter[A004169(n+1), A293162(#)]` -/
def P8563096534073701957.Spec : Prop :=
  ∀ n, P8563096534073701957.a n = A036556 (n + 1)

end A036556

/-! ## A036556.P11578005959311067168

`filter[A161989(n+1), A293162(#)]`
-/

namespace A036556.P11578005959311067168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293162 (f1 j).toNat = 1) n)

end

end A036556.P11578005959311067168

namespace A036556

/-- `filter[A161989(n+1), A293162(#)]` -/
def P11578005959311067168.Spec : Prop :=
  ∀ n, P11578005959311067168.a n = A036556 (n + 1)

end A036556

/-! ## A036556.P14115236647226749804

`filter[A175382(n+1), A293162(#)]`
-/

namespace A036556.P14115236647226749804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293162 (f1 j).toNat = 1) n)

end

end A036556.P14115236647226749804

namespace A036556

/-- `filter[A175382(n+1), A293162(#)]` -/
def P14115236647226749804.Spec : Prop :=
  ∀ n, P14115236647226749804.a n = A036556 (n + 1)

end A036556

/-! ## A036556.P5581364905576343913

`filter[A161992(n+1), A293162(#)]`
-/

namespace A036556.P5581364905576343913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293162 (f1 j).toNat = 1) n)

end

end A036556.P5581364905576343913

namespace A036556

/-- `filter[A161992(n+1), A293162(#)]` -/
def P5581364905576343913.Spec : Prop :=
  ∀ n, P5581364905576343913.a n = A036556 (n + 1)

end A036556

/-! ## A036556.P10811449867505025305

`filter[A116451(n), A293162(#)]`
-/

namespace A036556.P10811449867505025305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293162 (f1 j).toNat = 1) n)

end

end A036556.P10811449867505025305

namespace A036556

/-- `filter[A116451(n), A293162(#)]` -/
def P10811449867505025305.Spec : Prop :=
  ∀ n, P10811449867505025305.a n = A036556 (n + 1)

end A036556

/-! ## A036556.P11549551700944092143

`filter[A005767(n+1), A293162(#)]`
-/

namespace A036556.P11549551700944092143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293162 (f1 j).toNat = 1) n)

end

end A036556.P11549551700944092143

namespace A036556

/-- `filter[A005767(n+1), A293162(#)]` -/
def P11549551700944092143.Spec : Prop :=
  ∀ n, P11549551700944092143.a n = A036556 (n + 1)

end A036556

/-! ## A036556.P5194974555498433927

`filter[A057716(n+1), A293162(#)]`
-/

namespace A036556.P5194974555498433927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293162 (f1 j).toNat = 1) n)

end

end A036556.P5194974555498433927

namespace A036556

/-- `filter[A057716(n+1), A293162(#)]` -/
def P5194974555498433927.Spec : Prop :=
  ∀ n, P5194974555498433927.a n = A036556 (n + 1)

end A036556

/-! ## A036556.P14758935168812575474

`filter[A107907(n+1), A293162(#)]`
-/

namespace A036556.P14758935168812575474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107907 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293162 (f1 j).toNat = 1) n)

end

end A036556.P14758935168812575474

namespace A036556

/-- `filter[A107907(n+1), A293162(#)]` -/
def P14758935168812575474.Spec : Prop :=
  ∀ n, P14758935168812575474.a n = A036556 (n + 1)

end A036556

/-!
# A036557: Number of multiples of 3 in 0..2^n-1 with an even sum of base-2 digits.

The programs for A036557, the canonical program `A036557.P11631772265376742522` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036557 has offset 0).

The definition of A036557 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036557.P11631772265376742522

`A087433(A110654(n))/A000034(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A036557

/-- `A087433(A110654(n))/A000034(n)` -/
def P11631772265376742522.Spec : Prop :=
  ∀ n, P11631772265376742522.a n = (A036557 n : ℚ)

end A036557

/-! ## A036557.P5078377804513150839

`A087433(A110654(n))/ratio[A016116(n)]`
-/

namespace A036557.P5078377804513150839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087433 (A110654 n).toNat : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A036557.P5078377804513150839

namespace A036557

/-- `A087433(A110654(n))/ratio[A016116(n)]` -/
def P5078377804513150839.Spec : Prop :=
  ∀ n, P5078377804513150839.a n = (A036557 n : ℚ)

end A036557

/-! ## A036557.P7846299954614001868

`A087433(A110654(n))/A014963(A006519(n+1))`
-/

namespace A036557.P7846299954614001868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087433 (A110654 n).toNat : ℚ) / (A014963 (A006519 (n + 1)).toNat : ℚ)

end

end A036557.P7846299954614001868

namespace A036557

/-- `A087433(A110654(n))/A014963(A006519(n+1))` -/
def P7846299954614001868.Spec : Prop :=
  ∀ n, P7846299954614001868.a n = (A036557 n : ℚ)

end A036557

/-! ## A036557.P4902540527062892074

`(A182522(n)+A005578(n))/2`
-/

namespace A036557.P4902540527062892074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182522 n + A005578 n : ℚ) / 2

end

end A036557.P4902540527062892074

namespace A036557

/-- `(A182522(n)+A005578(n))/2` -/
def P4902540527062892074.Spec : Prop :=
  ∀ n, P4902540527062892074.a n = (A036557 n : ℚ)

end A036557

/-! ## A036557.P9497401046904645031

`A087433(A110654(n))/A006519(n²+1)`
-/

namespace A036557.P9497401046904645031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087433 (A110654 n).toNat : ℚ) / (A006519 (n ^ 2 + 1) : ℚ)

end

end A036557.P9497401046904645031

namespace A036557

/-- `A087433(A110654(n))/A006519(n²+1)` -/
def P9497401046904645031.Spec : Prop :=
  ∀ n, P9497401046904645031.a n = (A036557 n : ℚ)

end A036557

/-!
# A036558: Squared distances that can arise in any Barlow packing of spheres of diameter sqrt(3) (the scale being the simplest one that makes this an integer sequence).

The programs for A036558, there is no canonical definition to state claims against.
-/

/-! ## A036558.P5988277292117995142

`comp[A036559(n+1)]`
-/

namespace A036558.P5988277292117995142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A036558.P5988277292117995142

/-! ## A036558.P9369924914592383104

`comp[A036559(A366286(n))^(n%2)]`
-/

namespace A036558.P9369924914592383104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036559 (A366286 n).toNat ^ (n % 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A036558.P9369924914592383104

/-! ## A036558.P13693209151199742243

`eq[char[A036559(n+1)], A067018(2*(n+2))]`
-/

namespace A036558.P13693209151199742243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036559 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067018 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A036558.P13693209151199742243

/-! ## A036558.P6220800399252148066

`lt[A346837(A003992(n)), A004012(n)]`
-/

namespace A036558.P6220800399252148066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346837 (A003992 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004012 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A036558.P6220800399252148066

/-! ## A036558.P14705289294989996226

`lt[A005928(A276086(n)), A004012(n)]`
-/

namespace A036558.P14705289294989996226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005928 (A276086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004012 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A036558.P14705289294989996226

/-!
# A036559: Squared distances that cannot arise in any Barlow packing of spheres of diameter sqrt(3) (the scale being the simplest one that makes this an integer sequence).

The programs for A036559, there is no canonical definition to state claims against.
-/

/-! ## A036559.P9365948253731304325

`eq[0, char[A036558(n)]]`
-/

namespace A036559.P9365948253731304325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036558 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036559.P9365948253731304325

/-! ## A036559.P15966489692280764246

`lt[char[A036558(n)]*A008574(n), 1]`
-/

namespace A036559.P15966489692280764246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036558 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A008574 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A036559.P15966489692280764246

/-! ## A036559.P8172521724088889955

`lt[char[A036558(n)]*A017581(n), 1]`
-/

namespace A036559.P8172521724088889955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036558 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A017581 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A036559.P8172521724088889955

/-! ## A036559.P14402127592200813296

`lt[char[A036558(n)]*A026215(n+1), 1]`
-/

namespace A036559.P14402127592200813296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036558 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A026215 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A036559.P14402127592200813296

/-! ## A036559.P16327772367701671984

`lt[A160239(n+1)/8*char[A036558(n)], 1]`
-/

namespace A036559.P16327772367701671984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036558 n

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160239 (n + 1) : ℚ) / 8 * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n

end

end A036559.P16327772367701671984

/-! ## A036559.P6142721690055687826

`lt[char[A036558(n)]*A285879(4*(n+1)), 1]`
-/

namespace A036559.P6142721690055687826
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036558 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A285879 (4 * (n + 1))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A036559.P6142721690055687826

/-! ## A036559.P17283166350862955818

`lt[char[A036558(n)]*A163511(4*n+3), 1]`
-/

namespace A036559.P17283166350862955818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036558 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A163511 (4 * n + 3)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A036559.P17283166350862955818

/-!
# A036560: StirlingS2[ n,m ] triangle summed down the columns.

The programs for A036560, there is no canonical definition to state claims against.
-/

/-! ## A036560.P9900626999612270739

`A137649(n+1)-char[∑[n]]`
-/

namespace A036560.P9900626999612270739
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137649 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A036560.P9900626999612270739

/-! ## A036560.P2850932813024511810

`abs(A137649(n+1)-A010054(n))`
-/

namespace A036560.P2850932813024511810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137649 (n + 1) - A010054 n|

end

end A036560.P2850932813024511810

/-! ## A036560.P17709244701828690236

`abs(A137649(n+1)-A198954(n))`
-/

namespace A036560.P17709244701828690236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137649 (n + 1) - A198954 n|

end

end A036560.P17709244701828690236

/-! ## A036560.P16125159689844714785

`A238303(n)+A137649(n+1)-2`
-/

namespace A036560.P16125159689844714785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238303 n + (A137649 (n + 1) - 2)

end

end A036560.P16125159689844714785

/-! ## A036560.P16484694829220174440

`(A107893(n+1)-A010054(n))/A233543(n)`
-/

namespace A036560.P16484694829220174440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107893 (n + 1) - A010054 n : ℚ) / (A233543 n : ℚ)

end

end A036560.P16484694829220174440

/-! ## A036560.P68208123352119613

`(A107893(n+1)-abs(A197870(n)))/A233543(n)`
-/

namespace A036560.P68208123352119613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107893 (n + 1) - |A197870 n| : ℚ) / (A233543 n : ℚ)

end

end A036560.P68208123352119613

/-! ## A036560.P16556656137725555196

`abs((A107893(n+1)-A198954(n))/A233543(n))`
-/

namespace A036560.P16556656137725555196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A107893 (n + 1) - A198954 n : ℚ) / (A233543 n : ℚ)|

end

end A036560.P16556656137725555196

/-! ## A036560.P3487947476133603953

`A107893(n+1)/A002262(n)!-A010054(n)`
-/

namespace A036560.P3487947476133603953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107893 (n + 1) : ℚ) / (Nat.factorial (A002262 n).toNat : ℚ) - (A010054 n : ℚ)

end

end A036560.P3487947476133603953

/-! ## A036560.P1303002449349413836

`A107893(n+1)/A002262(n)!-abs(A197870(n))`
-/

namespace A036560.P1303002449349413836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107893 (n + 1) : ℚ) / (Nat.factorial (A002262 n).toNat : ℚ) - (|A197870 n| : ℚ)

end

end A036560.P1303002449349413836

/-! ## A036560.P15465731514865243972

`∑{d}[A137649(n+1)-A010054(n), A000010(#)]`
-/

namespace A036560.P15465731514865243972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137649 (n + 1) - A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A036560.P15465731514865243972

/-!
# A036561: Nicomachus triangle read by rows, T(n, k) = 2^(n - k)*3^k, for 0 <= k <= n.

The programs for A036561, the canonical program `A036561.P7490084913005378529` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036561 has offset 0).

The definition of A036561 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036561.P7490084913005378529

`2^(A004736(n+1)-1)*3^(A002260(n+1)-1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A036561

/-- `2^(A004736(n+1)-1)*3^(A002260(n+1)-1)` -/
def P7490084913005378529.Spec : Prop :=
  ∀ n, P7490084913005378529.a n = (A036561 n : ℚ)

end A036561

/-! ## A036561.P14447702997297927682

`A230445(n)+1`
-/

namespace A036561.P14447702997297927682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230445 n + 1

end

end A036561.P14447702997297927682

namespace A036561

/-- `A230445(n)+1` -/
def P14447702997297927682.Spec : Prop :=
  ∀ n, P14447702997297927682.a n = A036561 n

end A036561

/-! ## A036561.P671475016956299699

`ceil(A094615(n)/2)`
-/

namespace A036561.P671475016956299699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A094615 n : ℚ) / 2⌉

end

end A036561.P671475016956299699

namespace A036561

/-- `ceil(A094615(n)/2)` -/
def P671475016956299699.Spec : Prop :=
  ∀ n, P671475016956299699.a n = A036561 n

end A036561

/-! ## A036561.P13896888538851767244

`A094617(n+1)-1`
-/

namespace A036561.P13896888538851767244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094617 (n + 1) - 1

end

end A036561.P13896888538851767244

namespace A036561

/-- `A094617(n+1)-1` -/
def P13896888538851767244.Spec : Prop :=
  ∀ n, P13896888538851767244.a n = A036561 n

end A036561

/-! ## A036561.P893864182840780604

`A081954(n+1)/2`
-/

namespace A036561.P893864182840780604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081954 (n + 1) : ℚ) / 2

end

end A036561.P893864182840780604

namespace A036561

/-- `A081954(n+1)/2` -/
def P893864182840780604.Spec : Prop :=
  ∀ n, P893864182840780604.a n = (A036561 n : ℚ)

end A036561

/-! ## A036561.P16686449789422837205

`A094615(n)-A230445(n)`
-/

namespace A036561.P16686449789422837205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094615 n - A230445 n

end

end A036561.P16686449789422837205

namespace A036561

/-- `A094615(n)-A230445(n)` -/
def P16686449789422837205.Spec : Prop :=
  ∀ n, P16686449789422837205.a n = A036561 n

end A036561

/-! ## A036561.P15813743637354312907

`A013620(n)/A007318(n)`
-/

namespace A036561.P15813743637354312907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013620 n : ℚ) / (A007318 n : ℚ)

end

end A036561.P15813743637354312907

namespace A036561

/-- `A013620(n)/A007318(n)` -/
def P15813743637354312907.Spec : Prop :=
  ∀ n, P15813743637354312907.a n = (A036561 n : ℚ)

end A036561

/-! ## A036561.P7204835918474981265

`xor(A130330(n), A230445(n))`
-/

namespace A036561.P7204835918474981265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A130330 n) (A230445 n)

end

end A036561.P7204835918474981265

namespace A036561

/-- `xor(A130330(n), A230445(n))` -/
def P7204835918474981265.Spec : Prop :=
  ∀ n, P7204835918474981265.a n = A036561 n

end A036561

/-! ## A036561.P5698593379942072820

`A013620(n)/(A014473(n)+1)`
-/

namespace A036561.P5698593379942072820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013620 n : ℚ) / (A014473 n + 1 : ℚ)

end

end A036561.P5698593379942072820

namespace A036561

/-- `A013620(n)/(A014473(n)+1)` -/
def P5698593379942072820.Spec : Prop :=
  ∀ n, P5698593379942072820.a n = (A036561 n : ℚ)

end A036561

/-! ## A036561.P7400817921967779994

`2*A013620(n)/A028326(n)`
-/

namespace A036561.P7400817921967779994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A013620 n : ℚ) / (A028326 n : ℚ))

end

end A036561.P7400817921967779994

namespace A036561

/-- `2*A013620(n)/A028326(n)` -/
def P7400817921967779994.Spec : Prop :=
  ∀ n, P7400817921967779994.a n = (A036561 n : ℚ)

end A036561

/-! ## A036561.P14375818782401216130

`lcm(A013610(n), A038207(n))/A007318(n)`
-/

namespace A036561.P14375818782401216130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A013610 n) (A038207 n) : ℚ) / (A007318 n : ℚ)

end

end A036561.P14375818782401216130

namespace A036561

/-- `lcm(A013610(n), A038207(n))/A007318(n)` -/
def P14375818782401216130.Spec : Prop :=
  ∀ n, P14375818782401216130.a n = (A036561 n : ℚ)

end A036561

/-! ## A036561.P1593861374452994535

`A175840(A061579(n))`
-/

namespace A036561.P1593861374452994535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 (A061579 n).toNat

end

end A036561.P1593861374452994535

namespace A036561

/-- `A175840(A061579(n))` -/
def P1593861374452994535.Spec : Prop :=
  ∀ n, P1593861374452994535.a n = A036561 n

end A036561

/-! ## A036561.P3824744155451753310

`A082234(A056023(n+1))`
-/

namespace A036561.P3824744155451753310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082234 (A056023 (n + 1)).toNat

end

end A036561.P3824744155451753310

namespace A036561

/-- `A082234(A056023(n+1))` -/
def P3824744155451753310.Spec : Prop :=
  ∀ n, P3824744155451753310.a n = A036561 n

end A036561

/-! ## A036561.P7174071423490070573

`A175840(A114327(n)+n)`
-/

namespace A036561.P7174071423490070573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 (A114327 n + (n : ℤ)).toNat

end

end A036561.P7174071423490070573

namespace A036561

/-- `A175840(A114327(n)+n)` -/
def P7174071423490070573.Spec : Prop :=
  ∀ n, P7174071423490070573.a n = A036561 n

end A036561

/-! ## A036561.P13247132631063000020

`A155118(comp[∑[n]])`
-/

namespace A036561.P13247132631063000020
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155118 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A036561.P13247132631063000020

namespace A036561

/-- `A155118(comp[∑[n]])` -/
def P13247132631063000020.Spec : Prop :=
  ∀ n, P13247132631063000020.a n = A036561 n

end A036561

/-! ## A036561.P15411775953310583156

`A153279(A014132(n+1))`
-/

namespace A036561.P15411775953310583156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153279 (A014132 (n + 1)).toNat

end

end A036561.P15411775953310583156

namespace A036561

/-- `A153279(A014132(n+1))` -/
def P15411775953310583156.Spec : Prop :=
  ∀ n, P15411775953310583156.a n = A036561 n

end A036561

/-! ## A036561.P5825396240663528018

`A100851(n)/A059268(n)`
-/

namespace A036561.P5825396240663528018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100851 n : ℚ) / (A059268 n : ℚ)

end

end A036561.P5825396240663528018

namespace A036561

/-- `A100851(n)/A059268(n)` -/
def P5825396240663528018.Spec : Prop :=
  ∀ n, P5825396240663528018.a n = (A036561 n : ℚ)

end A036561

/-! ## A036561.P15923846111891563996

`A038233(n)/A038207(n)`
-/

namespace A036561.P15923846111891563996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038233 n : ℚ) / (A038207 n : ℚ)

end

end A036561.P15923846111891563996

namespace A036561

/-- `A038233(n)/A038207(n)` -/
def P15923846111891563996.Spec : Prop :=
  ∀ n, P15923846111891563996.a n = (A036561 n : ℚ)

end A036561

/-! ## A036561.P3018305359877514684

`A003586(A247714(n))`
-/

namespace A036561.P3018305359877514684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (A247714 n).toNat

end

end A036561.P3018305359877514684

namespace A036561

/-- `A003586(A247714(n))` -/
def P3018305359877514684.Spec : Prop :=
  ∀ n, P3018305359877514684.a n = A036561 n

end A036561

/-! ## A036561.P12069593906151549155

`A007694(A247714(n)+1)/2`
-/

namespace A036561.P12069593906151549155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007694 (A247714 n + 1).toNat : ℚ) / 2

end

end A036561.P12069593906151549155

namespace A036561

/-- `A007694(A247714(n)+1)/2` -/
def P12069593906151549155.Spec : Prop :=
  ∀ n, P12069593906151549155.a n = (A036561 n : ℚ)

end A036561

/-!
# A036562: a(n) = 4^(n+1) + 3*2^n + 1.

The programs for A036562, there is no canonical definition to state claims against.
-/

/-! ## A036562.P4564472831579256445

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=8, a(2)=23, a(3)=77`
-/

namespace A036562.P4564472831579256445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 23, 77] fun n a =>
  7 * a (n - 1) - 14 * a (n - 2) + 8 * a (n - 3)

end

end A036562.P4564472831579256445

/-! ## A036562.P13223624059947123143

`or(1, 2^n)²-floor(2^(n-1))`
-/

namespace A036562.P13223624059947123143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (2 ^ n) ^ 2 : ℤ) - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A036562.P13223624059947123143

/-! ## A036562.P12350843604893980834

`(2^n+1)²-floor(sqrt(a(n-1)))` with `a(0)=1`
-/

namespace A036562.P12350843604893980834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((2 ^ n + 1) ^ 2 : ℤ) - Int.sqrt (a (n - 1))

end

end A036562.P12350843604893980834

/-! ## A036562.P7100061006584599690

`xor(4^n, A003945(n))+1`
-/

namespace A036562.P7100061006584599690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (4 ^ n : ℤ) (A003945 n) + 1

end

end A036562.P7100061006584599690

/-! ## A036562.P7561232590923360576

`A083318(n)²-floor(2^(n-1))`
-/

namespace A036562.P7561232590923360576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083318 n ^ 2 - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A036562.P7561232590923360576

/-! ## A036562.P4698258730092039699

`ceil(A000051(n)²-sqrt(a(n-1)))` with `a(0)=1`
-/

namespace A036562.P4698258730092039699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(A000051 n ^ 2 : ℝ) - Real.sqrt (a (n - 1) : ℝ)⌉

end

end A036562.P4698258730092039699

/-! ## A036562.P13448846871886145890

`A343176(n)-A000038(n)`
-/

namespace A036562.P13448846871886145890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343176 n - A000038 n

end

end A036562.P13448846871886145890

/-! ## A036562.P11888417507966653669

`and(A260196(n), A343176(n))`
-/

namespace A036562.P11888417507966653669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A260196 n) (A343176 n)

end

end A036562.P11888417507966653669

/-! ## A036562.P9708796940742339768

`A135092(n)+A000225(n)²`
-/

namespace A036562.P9708796940742339768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135092 n + A000225 n ^ 2

end

end A036562.P9708796940742339768

/-! ## A036562.P9888746781229478915

`A135576(n+1)+A131577(n)`
-/

namespace A036562.P9888746781229478915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135576 (n + 1) + A131577 n

end

end A036562.P9888746781229478915

/-! ## A036562.P13071181756234297653

`and(A153881(n+1), A343176(n))`
-/

namespace A036562.P13071181756234297653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153881 (n + 1)) (A343176 n)

end

end A036562.P13071181756234297653

/-! ## A036562.P16816521813224678667

`Δ[A154118(n)]+A000225(n)²`
-/

namespace A036562.P16816521813224678667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A000225 n ^ 2

end

end A036562.P16816521813224678667

/-! ## A036562.P6251214445780759197

`A004119(n)+record[A137206(n)²]`
-/

namespace A036562.P6251214445780759197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137206 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004119 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036562.P6251214445780759197

/-! ## A036562.P5290084891421131113

`A135092(n)+(1-A000079(n))²`
-/

namespace A036562.P5290084891421131113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135092 n + (1 - A000079 n) ^ 2

end

end A036562.P5290084891421131113

/-! ## A036562.P6612866742391376038

`(A155559(n)+1)²-A131577(n)`
-/

namespace A036562.P6612866742391376038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155559 n + 1) ^ 2 - A131577 n

end

end A036562.P6612866742391376038

/-! ## A036562.P8441805491398494066

`A004119(n)+(2*A131577(n))²`
-/

namespace A036562.P8441805491398494066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004119 n + (2 * A131577 n) ^ 2

end

end A036562.P8441805491398494066

/-! ## A036562.P16642579180677746701

`A257418(2*n+1)-and(2, A257418(2*n))`
-/

namespace A036562.P16642579180677746701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257418 (2 * n + 1) - Int.land 2 (A257418 (2 * n))

end

end A036562.P16642579180677746701

/-! ## A036562.P6290146244102754307

`(A131577(n)+A094373(n))²-A131577(n)`
-/

namespace A036562.P6290146244102754307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131577 n + A094373 n) ^ 2 - A131577 n

end

end A036562.P6290146244102754307

/-! ## A036562.P13453153839004120846

`A343176(n)%A187560(n)`
-/

namespace A036562.P13453153839004120846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343176 n) (A187560 n)

end

end A036562.P13453153839004120846

/-!
# A036563: a(n) = 2^n - 3.

The programs for A036563, the canonical program `A036563.P16747850807333830855` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036563 has offset 0).

The definition of A036563 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-3` (program `A036563.P16747850807333830855`, by `A036563.P16747850807333830855.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036563.P16747850807333830855

`2^n-3`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036563

/-- `2^n-3` -/
def P16747850807333830855.Spec : Prop :=
  ∀ n, P16747850807333830855.a n = A036563 n

theorem P16747850807333830855.correct : P16747850807333830855.Spec := by
  intro n
  simp only [A036563]

end A036563

/-!
# A036564: a(n) = 2^n - 45 with n>5, a(5)=1.

The programs for A036564, the canonical program `A036564.P1316844146856537439` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036564 has offset 5).

The definition of A036564 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036564.P1316844146856537439

`a(n-1)+a(n-1)+45` with `a(0)=1, a(1)=19`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036564

/-- `a(n-1)+a(n-1)+45` -/
def P1316844146856537439.Spec : Prop :=
  ∀ n, (P1316844146856537439.a n : ℤ) = A036564 (n + 5)

theorem P1316844146856537439.correct : P1316844146856537439.Spec := by
  intro n
  simp only [A036564, Nat.add_sub_cancel]

end A036564

/-! ## A036564.P12303825454369448327

`A166118(n+1)-A040182(n)`
-/

namespace A036564.P12303825454369448327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166118 (n + 1) - A040182 n

end

end A036564.P12303825454369448327

namespace A036564

/-- `A166118(n+1)-A040182(n)` -/
def P12303825454369448327.Spec : Prop :=
  ∀ n, P12303825454369448327.a n = A036564 (n + 5)

end A036564

/-! ## A036564.P3556275053233517037

`∑[A113311(n)²*A000079(n)]`
-/

namespace A036564.P3556275053233517037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113311 n ^ 2 * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036564.P3556275053233517037

namespace A036564

/-- `∑[A113311(n)²*A000079(n)]` -/
def P3556275053233517037.Spec : Prop :=
  ∀ n, P3556275053233517037.a n = A036564 (n + 5)

end A036564

/-! ## A036564.P16643073026813637270

`A159742(n+1)-25%A159742(n+1)`
-/

namespace A036564.P16643073026813637270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159742 (n + 1) - Int.tmod 25 (A159742 (n + 1))

end

end A036564.P16643073026813637270

namespace A036564

/-- `A159742(n+1)-25%A159742(n+1)` -/
def P16643073026813637270.Spec : Prop :=
  ∀ n, P16643073026813637270.a n = A036564 (n + 5)

end A036564

/-! ## A036564.P538619009279391320

`A017197(n)+record[A000079(n)-A017197(n)]`
-/

namespace A036564.P538619009279391320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A017197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036564.P538619009279391320

namespace A036564

/-- `A017197(n)+record[A000079(n)-A017197(n)]` -/
def P538619009279391320.Spec : Prop :=
  ∀ n, P538619009279391320.a n = A036564 (n + 5)

end A036564

/-! ## A036564.P10154957029573744936

`A017209(n)+record[A000079(n)-A017209(n)]`
-/

namespace A036564.P10154957029573744936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A017209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036564.P10154957029573744936

namespace A036564

/-- `A017209(n)+record[A000079(n)-A017209(n)]` -/
def P10154957029573744936.Spec : Prop :=
  ∀ n, P10154957029573744936.a n = A036564 (n + 5)

end A036564

/-!
# A036565: Triangle of numbers in which i-th row is {2^(i-j)*7^j, 0<=j<=i}; i >= 0.

The programs for A036565, the canonical program `A036565.P6808793362176662829` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036565 has offset 0).

The definition of A036565 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7258 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036565.P6808793362176662829

`A000420(A002262(n))*A130321(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A036565

/-- `A000420(A002262(n))*A130321(n)` -/
def P6808793362176662829.Spec : Prop :=
  ∀ n, P6808793362176662829.a n = A036565 n

theorem P6808793362176662829.correct : P6808793362176662829.Spec := by
  intro n
  simp only [A036565]

end A036565

/-! ## A036565.P11796630979178940163

`A013614(n)/A007318(n)²*A038207(n)`
-/

namespace A036565.P11796630979178940163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013614 n : ℚ) / (A007318 n ^ 2 : ℚ) * (A038207 n : ℚ)

end

end A036565.P11796630979178940163

namespace A036565

/-- `A013614(n)/A007318(n)²*A038207(n)` -/
def P11796630979178940163.Spec : Prop :=
  ∀ n, P11796630979178940163.a n = (A036565 n : ℚ)

end A036565

/-! ## A036565.P10080541874459594568

`A013623(n)/A007318(n)`
-/

namespace A036565.P10080541874459594568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013623 n : ℚ) / (A007318 n : ℚ)

end

end A036565.P10080541874459594568

namespace A036565

/-- `A013623(n)/A007318(n)` -/
def P10080541874459594568.Spec : Prop :=
  ∀ n, P10080541874459594568.a n = (A036565 n : ℚ)

end A036565

/-! ## A036565.P1641595915736708237

`lcm(A013614(n), A038207(n))/A007318(n)`
-/

namespace A036565.P1641595915736708237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A013614 n) (A038207 n) : ℚ) / (A007318 n : ℚ)

end

end A036565.P1641595915736708237

namespace A036565

/-- `lcm(A013614(n), A038207(n))/A007318(n)` -/
def P1641595915736708237.Spec : Prop :=
  ∀ n, P1641595915736708237.a n = (A036565 n : ℚ)

end A036565

/-! ## A036565.P2853246280231761976

`A013625(n)/A038207(n)`
-/

namespace A036565.P2853246280231761976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013625 n : ℚ) / (A038207 n : ℚ)

end

end A036565.P2853246280231761976

namespace A036565

/-- `A013625(n)/A038207(n)` -/
def P2853246280231761976.Spec : Prop :=
  ∀ n, P2853246280231761976.a n = (A036565 n : ℚ)

end A036565

/-! ## A036565.P3516835065763121774

`A013625(n)/gcd(A013625(n), A038215(n))`
-/

namespace A036565.P3516835065763121774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013625 n : ℚ) / (Int.gcd (A013625 n) (A038215 n) : ℚ)

end

end A036565.P3516835065763121774

namespace A036565

/-- `A013625(n)/gcd(A013625(n), A038215(n))` -/
def P3516835065763121774.Spec : Prop :=
  ∀ n, P3516835065763121774.a n = (A036565 n : ℚ)

end A036565

/-! ## A036565.P16534294403210642900

`A013627(n)/A027465(n)`
-/

namespace A036565.P16534294403210642900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013627 n : ℚ) / (A027465 n : ℚ)

end

end A036565.P16534294403210642900

namespace A036565

/-- `A013627(n)/A027465(n)` -/
def P16534294403210642900.Spec : Prop :=
  ∀ n, P16534294403210642900.a n = (A036565 n : ℚ)

end A036565

/-! ## A036565.P6331246952949203688

`A038285(n)/A038231(n)`
-/

namespace A036565.P6331246952949203688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038285 n : ℚ) / (A038231 n : ℚ)

end

end A036565.P6331246952949203688

namespace A036565

/-- `A038285(n)/A038231(n)` -/
def P6331246952949203688.Spec : Prop :=
  ∀ n, P6331246952949203688.a n = (A036565 n : ℚ)

end A036565

/-! ## A036565.P12871047644560897872

`A013627(n)/gcd(A013627(n), A027467(n))`
-/

namespace A036565.P12871047644560897872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013627 n : ℚ) / (Int.gcd (A013627 n) (A027467 n) : ℚ)

end

end A036565.P12871047644560897872

namespace A036565

/-- `A013627(n)/gcd(A013627(n), A027467(n))` -/
def P12871047644560897872.Spec : Prop :=
  ∀ n, P12871047644560897872.a n = (A036565 n : ℚ)

end A036565

/-! ## A036565.P18439821097429372933

`A038309(n)/A038243(n)`
-/

namespace A036565.P18439821097429372933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038309 n : ℚ) / (A038243 n : ℚ)

end

end A036565.P18439821097429372933

namespace A036565

/-- `A038309(n)/A038243(n)` -/
def P18439821097429372933.Spec : Prop :=
  ∀ n, P18439821097429372933.a n = (A036565 n : ℚ)

end A036565

/-! ## A036565.P16524013666672774543

`A038333(n)/A038255(n)`
-/

namespace A036565.P16524013666672774543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038333 n : ℚ) / (A038255 n : ℚ)

end

end A036565.P16524013666672774543

namespace A036565

/-- `A038333(n)/A038255(n)` -/
def P16524013666672774543.Spec : Prop :=
  ∀ n, P16524013666672774543.a n = (A036565 n : ℚ)

end A036565

/-! ## A036565.P15944996411056136187

`A130321(n)*A166661(A059268(n))`
-/

namespace A036565.P15944996411056136187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A166661 (A059268 n).toNat

end

end A036565.P15944996411056136187

namespace A036565

/-- `A130321(n)*A166661(A059268(n))` -/
def P15944996411056136187.Spec : Prop :=
  ∀ n, P15944996411056136187.a n = A036565 n

end A036565

/-! ## A036565.P5491537754927271634

`A165828(A059268(n))/A059268(n)*A137688(n)`
-/

namespace A036565.P5491537754927271634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165828 (A059268 n).toNat : ℚ) / (A059268 n : ℚ) * (A137688 n : ℚ)

end

end A036565.P5491537754927271634

namespace A036565

/-- `A165828(A059268(n))/A059268(n)*A137688(n)` -/
def P5491537754927271634.Spec : Prop :=
  ∀ n, P5491537754927271634.a n = (A036565 n : ℚ)

end A036565

/-!
# A036566: Numbers of form 7^i*8^j with i, j >= 0, sorted.

The programs for A036566, there is no canonical definition to state claims against.
-/

/-! ## A036566.P10249404344219754471

`7^A025669(n+1)*8^A025675(n+1)`
-/

namespace A036566.P10249404344219754471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A025669 (n + 1) : ℤ) * (8 : ℚ) ^ (A025675 (n + 1) : ℤ)

end

end A036566.P10249404344219754471

/-! ## A036566.P5560451373769831451

`A038274(n)/A001281(A028326(n))`
-/

namespace A036566.P5560451373769831451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038274 n : ℚ) / (A001281 (A028326 n).toNat : ℚ)

end

end A036566.P5560451373769831451

/-! ## A036566.P4964751673199692228

`A038274(n)/A058207(A131063(n))`
-/

namespace A036566.P4964751673199692228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038274 n : ℚ) / (A058207 (A131063 n).toNat : ℚ)

end

end A036566.P4964751673199692228

/-! ## A036566.P12446739302539250025

`A038274(n)/A058207(A131113(n))`
-/

namespace A036566.P12446739302539250025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038274 n : ℚ) / (A058207 (A131113 n).toNat : ℚ)

end

end A036566.P12446739302539250025

/-! ## A036566.P15087546870988193585

`A000578(A059268(n))*A166661(A130321(n))`
-/

namespace A036566.P15087546870988193585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A059268 n).toNat * A166661 (A130321 n).toNat

end

end A036566.P15087546870988193585

/-!
# A036567: Basic numbers used in Sedgewick-Incerpi upper bound for shell sort.

The programs for A036567, there is no canonical definition to state claims against.
-/

/-! ## A036567.P15849357132416031806

`ratio[A036569(A000217(n)-n)]`
-/

namespace A036567.P15849357132416031806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036569 (A000217 n - (n : ℤ)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A036567.P15849357132416031806

/-! ## A036567.P9558547495600477258

`A308187(A005315(n))+A025048(2*(n+1))`
-/

namespace A036567.P9558547495600477258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308187 (A005315 n).toNat + A025048 (2 * (n + 1))

end

end A036567.P9558547495600477258

/-! ## A036567.P15009595946127775667

`A122840(A007141(n+1))+A025048(2*(n+1))`
-/

namespace A036567.P15009595946127775667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122840 (A007141 (n + 1)).toNat + A025048 (2 * (n + 1))

end

end A036567.P15009595946127775667

/-! ## A036567.P18232730082145580704

`A086078(A074664(n+1))+A025048(2*(n+1))`
-/

namespace A036567.P18232730082145580704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086078 (A074664 (n + 1)).toNat + A025048 (2 * (n + 1))

end

end A036567.P18232730082145580704

/-!
# A036569: Increments used in Sedgewick-Incerpi upper bound for shell sort.

The programs for A036569, there is no canonical definition to state claims against.
-/

/-! ## A036569.P13653612366527624514

`record[A300841(A018296(n+1))]`
-/

namespace A036569.P13653612366527624514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300841 (A018296 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036569.P13653612366527624514

/-! ## A036569.P631892449651332325

`filter[A029466(n+1), A336923(#)]`
-/

namespace A036569.P631892449651332325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029466 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336923 (f1 j).toNat = 1) n)

end

end A036569.P631892449651332325

/-! ## A036569.P10532520252458347144

`∩[A029466(n+1), A054784(n+1)]`
-/

namespace A036569.P10532520252458347144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036569.P10532520252458347144

/-!
# A036570: Primes p such that (p+1)/2 and (p+2)/3 are also primes.

The programs for A036570, there is no canonical definition to state claims against.
-/

/-! ## A036570.P12391811333342844494

`A278583(n+1)+1`
-/

namespace A036570.P12391811333342844494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278583 (n + 1) + 1

end

end A036570.P12391811333342844494

/-! ## A036570.P13784688745357879473

`∩[A005383(n+1), A350675(n+1)]`
-/

namespace A036570.P13784688745357879473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036570.P13784688745357879473

/-! ## A036570.P6584509980502605323

`∩[A079147(n+1), A350675(n+1)]`
-/

namespace A036570.P6584509980502605323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036570.P6584509980502605323

/-! ## A036570.P13429983858228836730

`∩[A171262(n+1), A350675(n+1)]`
-/

namespace A036570.P13429983858228836730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036570.P13429983858228836730

/-! ## A036570.P4451639385097545032

`∩[A217466(n+1), A350675(n+1)]`
-/

namespace A036570.P4451639385097545032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036570.P4451639385097545032

/-! ## A036570.P11173015988832378100

`∩[A216822(n+1), A350675(n+1)]`
-/

namespace A036570.P11173015988832378100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036570.P11173015988832378100

/-! ## A036570.P14278864325594663515

`∩[A057920(n+1), A350675(n+1)]`
-/

namespace A036570.P14278864325594663515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036570.P14278864325594663515

/-! ## A036570.P9080425805153762669

`∩[A348659(n+1), A350675(n+1)]`
-/

namespace A036570.P9080425805153762669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036570.P9080425805153762669

/-! ## A036570.P2754132569011430625

`∩[A005383(n+1), A091180(n+1)]`
-/

namespace A036570.P2754132569011430625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036570.P2754132569011430625

/-! ## A036570.P11882540058792041554

`∩[A048968(n+1), A091180(n+1)]`
-/

namespace A036570.P11882540058792041554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036570.P11882540058792041554

/-! ## A036570.P5006560815301139316

`∩[A057920(n+1), A091180(n+1)]`
-/

namespace A036570.P5006560815301139316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036570.P5006560815301139316

/-! ## A036570.P2805756741273139627

`∩[A064519(n+1), A091180(n+1)]`
-/

namespace A036570.P2805756741273139627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036570.P2805756741273139627

/-! ## A036570.P16222783991956282915

`∩[A079147(n+1), A091180(n+1)]`
-/

namespace A036570.P16222783991956282915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036570.P16222783991956282915

/-! ## A036570.P1048218533571508529

`∩[A091180(n+1), A171262(n+1)]`
-/

namespace A036570.P1048218533571508529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036570.P1048218533571508529

/-! ## A036570.P14115913884294516581

`∩[A091180(n+1), A192577(n+1)]`
-/

namespace A036570.P14115913884294516581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036570.P14115913884294516581

/-! ## A036570.P460793820053377064

`∩[A091180(n+1), A265396(n+1)]`
-/

namespace A036570.P460793820053377064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036570.P460793820053377064

/-! ## A036570.P8218386471731549233

`∩[A091180(n+1), A348659(n+1)]`
-/

namespace A036570.P8218386471731549233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036570.P8218386471731549233

/-! ## A036570.P9629861646823244686

`∩[A091180(n+1), A350675(n+1)]`
-/

namespace A036570.P9629861646823244686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036570.P9629861646823244686

/-! ## A036570.P12227249171711016205

`∩[A005383(n+1), A119705(n+1)]`
-/

namespace A036570.P12227249171711016205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119705 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036570.P12227249171711016205

/-! ## A036570.P5059723972880994550

`∩[A048968(n+1), A119705(n+1)]`
-/

namespace A036570.P5059723972880994550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119705 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036570.P5059723972880994550

/-!
# A036571: Binary packing of Connell sequence (shifted once right).

The programs for A036571, the canonical program `A036571.P7046767105541076495` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036571 has offset 0).

The definition of A036571 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036571.P7046767105541076495

`a(n-1)+2^(2*n-floor(1/2*(1+sqrt(8*n-7)))-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036571

/-- `a(n-1)+2^(2*n-floor(1/2*(1+sqrt(8*n-7)))-1)` -/
def P7046767105541076495.Spec : Prop :=
  ∀ n, P7046767105541076495.a n = (A036571 n : ℚ)

end A036571

/-! ## A036571.P11057555653362119916

`∑[A131577(A056847(2*n))]`
-/

namespace A036571.P11057555653362119916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A056847 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036571.P11057555653362119916

namespace A036571

/-- `∑[A131577(A056847(2*n))]` -/
def P11057555653362119916.Spec : Prop :=
  ∀ n, P11057555653362119916.a n = A036571 n

end A036571

/-! ## A036571.P15897184111221918880

`∑[A131577(record[n-A068527(n)])]`
-/

namespace A036571.P15897184111221918880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A068527 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036571.P15897184111221918880

namespace A036571

/-- `∑[A131577(record[n-A068527(n)])]` -/
def P15897184111221918880.Spec : Prop :=
  ∀ n, P15897184111221918880.a n = A036571 n

end A036571

/-! ## A036571.P4227094214743893858

`∑[A131577(2*n-A123578(n))]`
-/

namespace A036571.P4227094214743893858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 ((2 * n : ℤ) - A123578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036571.P4227094214743893858

namespace A036571

/-- `∑[A131577(2*n-A123578(n))]` -/
def P4227094214743893858.Spec : Prop :=
  ∀ n, P4227094214743893858.a n = A036571 n

end A036571

/-! ## A036571.P7053876648124283830

`∑[A034008(1-A123578(n)+n+n)]`
-/

namespace A036571.P7053876648124283830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (1 - A123578 n + (n : ℤ) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036571.P7053876648124283830

namespace A036571

/-- `∑[A034008(1-A123578(n)+n+n)]` -/
def P7053876648124283830.Spec : Prop :=
  ∀ n, P7053876648124283830.a n = A036571 n

end A036571

/-!
# A036572: Number of tetrahedra in largest triangulation of polygonal prism with regular polygonal base.

The programs for A036572, the canonical program `A036572.P184159588589478786` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036572 has offset 3).

The definition of A036572 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036572.P16547317900023360449

`ceil(((n+3)*(n+3)+6*(n+3)-16)/4)`
-/

namespace A036572.P16547317900023360449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n + 3) * (n + 3) + 6 * (n + 3) : ℤ) - 16 : ℚ) / 4⌉

end

end A036572.P16547317900023360449

namespace A036572

/-- `ceil(((n+3)*(n+3)+6*(n+3)-16)/4)` -/
def P16547317900023360449.Spec : Prop :=
  ∀ n, P16547317900023360449.a n = A036572 (n + 3)

end A036572

/-! ## A036572.P184159588589478786

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=3, a(1)=6, a(2)=10, a(3)=14`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036572

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P184159588589478786.Spec : Prop :=
  ∀ n, P184159588589478786.a n = A036572 (n + 3)

theorem P184159588589478786.correct : P184159588589478786.Spec := by
  intro n
  simp only [A036572, Nat.add_sub_cancel]

end A036572

/-! ## A036572.P10405732659604096015

`A004116(n+3)-3`
-/

namespace A036572.P10405732659604096015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004116 (n + 3) - 3

end

end A036572.P10405732659604096015

namespace A036572

/-- `A004116(n+3)-3` -/
def P10405732659604096015.Spec : Prop :=
  ∀ n, P10405732659604096015.a n = A036572 (n + 3)

end A036572

/-! ## A036572.P10085624798602623119

`∑[or(1, n)+5]/2`
-/

namespace A036572.P10085624798602623119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A036572.P10085624798602623119

namespace A036572

/-- `∑[or(1, n)+5]/2` -/
def P10085624798602623119.Spec : Prop :=
  ∀ n, P10085624798602623119.a n = (A036572 (n + 3) : ℚ)

end A036572

/-! ## A036572.P12344515842617925521

`round(∑[∑[cos(n)²]+2])`
-/

namespace A036572.P12344515842617925521
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ) ^ 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A036572.P12344515842617925521

namespace A036572

/-- `round(∑[∑[cos(n)²]+2])` -/
def P12344515842617925521.Spec : Prop :=
  ∀ n, P12344515842617925521.a n = A036572 (n + 3)

end A036572

/-! ## A036572.P1483636142124991249

`a(n-2)+5+n` with `a(0)=3, a(1)=6`
-/

namespace A036572.P1483636142124991249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 6] fun n a =>
  a (n - 2) + 5 + n

end

end A036572.P1483636142124991249

namespace A036572

/-- `a(n-2)+5+n` -/
def P1483636142124991249.Spec : Prop :=
  ∀ n, (P1483636142124991249.a n : ℤ) = A036572 (n + 3)

end A036572

/-! ## A036572.P6973862672678830043

`∑[∑[gcd(2, n)]]-∑[n-1]`
-/

namespace A036572.P6973862672678830043
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f3 j

end

end A036572.P6973862672678830043

namespace A036572

/-- `∑[∑[gcd(2, n)]]-∑[n-1]` -/
def P6973862672678830043.Spec : Prop :=
  ∀ n, P6973862672678830043.a n = A036572 (n + 3)

end A036572

/-! ## A036572.P7395428953203931041

`∑[n+3]-∑[∑[n%2]]`
-/

namespace A036572.P7395428953203931041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A036572.P7395428953203931041

namespace A036572

/-- `∑[n+3]-∑[∑[n%2]]` -/
def P7395428953203931041.Spec : Prop :=
  ∀ n, P7395428953203931041.a n = A036572 (n + 3)

end A036572

/-! ## A036572.P5488901356049736643

`∑[n+3]-∑[∑[and(1, n)]]`
-/

namespace A036572.P5488901356049736643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A036572.P5488901356049736643

namespace A036572

/-- `∑[n+3]-∑[∑[and(1, n)]]` -/
def P5488901356049736643.Spec : Prop :=
  ∀ n, P5488901356049736643.a n = A036572 (n + 3)

end A036572

/-! ## A036572.P3271834871388857543

`round(∑[∑[sin(n+1)²]+2])`
-/

namespace A036572.P3271834871388857543
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n + 1 : ℝ) ^ 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A036572.P3271834871388857543

namespace A036572

/-- `round(∑[∑[sin(n+1)²]+2])` -/
def P3271834871388857543.Spec : Prop :=
  ∀ n, P3271834871388857543.a n = A036572 (n + 3)

end A036572

/-! ## A036572.P5921137930104915504

`ogf((3-2x^2)/(1-2x+2x^3-x^4))`
-/

namespace A036572.P5921137930104915504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, -2] [1, -2, 0, 2, -1] n

end

end A036572.P5921137930104915504

namespace A036572

/-- `ogf((3-2x^2)/(1-2x+2x^3-x^4))` -/
def P5921137930104915504.Spec : Prop :=
  ∀ n, P5921137930104915504.a n = A036572 (n + 3)

end A036572

/-! ## A036572.P776566375824409062

`abs(∑[∑[1-a(n-1)]])` with `a(0)=3, a(1)=0`
-/

namespace A036572.P776566375824409062
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A036572.P776566375824409062

namespace A036572

/-- `abs(∑[∑[1-a(n-1)]])` -/
def P776566375824409062.Spec : Prop :=
  ∀ n, P776566375824409062.a n = A036572 (n + 3)

end A036572

/-! ## A036572.P5515115780636412720

`floor(∑[∑[1-a(n-1)]])` with `a(0)=3, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A036572.P5515115780636412720
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036572.P5515115780636412720

namespace A036572

/-- `floor(∑[∑[1-a(n-1)]])` -/
def P5515115780636412720.Spec : Prop :=
  ∀ n, P5515115780636412720.a n = A036572 (n + 3)

end A036572

/-! ## A036572.P16342719827165387055

`round(∑[∑[1-a(n-1)]])` with `a(0)=3, a(1)=0`

`round` is left out, it is the identity on integers.
-/

namespace A036572.P16342719827165387055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036572.P16342719827165387055

namespace A036572

/-- `round(∑[∑[1-a(n-1)]])` -/
def P16342719827165387055.Spec : Prop :=
  ∀ n, P16342719827165387055.a n = A036572 (n + 3)

end A036572

/-! ## A036572.P4863363438962316437

`∑[∑[2-a(n-1)]]/2` with `a(0)=6, a(1)=0`
-/

namespace A036572.P4863363438962316437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6, 0] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A036572.P4863363438962316437

namespace A036572

/-- `∑[∑[2-a(n-1)]]/2` -/
def P4863363438962316437.Spec : Prop :=
  ∀ n, P4863363438962316437.a n = (A036572 (n + 3) : ℚ)

end A036572

/-! ## A036572.P7902093586895584188

`3-∑[a(n-2)-1]` with `a(0)=0, a(1)=-3, a(2)=-4`
-/

namespace A036572.P7902093586895584188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -3, -4] fun n f1 =>
  f1 (n - 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036572.P7902093586895584188

namespace A036572

/-- `3-∑[a(n-2)-1]` -/
def P7902093586895584188.Spec : Prop :=
  ∀ n, P7902093586895584188.a n = A036572 (n + 3)

end A036572

/-! ## A036572.P15319029562062633684

`C(n+3, 2)-floor(((n-1)/2)²)`
-/

namespace A036572.P15319029562062633684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 2 : ℤ) - ⌊(((n : ℤ) - 1 : ℚ) / 2) ^ 2⌋

end

end A036572.P15319029562062633684

namespace A036572

/-- `C(n+3, 2)-floor(((n-1)/2)²)` -/
def P15319029562062633684.Spec : Prop :=
  ∀ n, P15319029562062633684.a n = A036572 (n + 3)

end A036572

/-! ## A036572.P4272525868360798563

`∑[∑[and(1, n+1)]+1]+n+1`
-/

namespace A036572.P4272525868360798563
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A036572.P4272525868360798563

namespace A036572

/-- `∑[∑[and(1, n+1)]+1]+n+1` -/
def P4272525868360798563.Spec : Prop :=
  ∀ n, (P4272525868360798563.a n : ℤ) = A036572 (n + 3)

end A036572

/-! ## A036572.P5417734719555839932

`3-floor((1-n)/2-a(n-1))` with `a(0)=3`
-/

namespace A036572.P5417734719555839932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  3 - ⌊(1 - (n : ℤ) : ℚ) / 2 - (a (n - 1) : ℚ)⌋

end

end A036572.P5417734719555839932

namespace A036572

/-- `3-floor((1-n)/2-a(n-1))` -/
def P5417734719555839932.Spec : Prop :=
  ∀ n, P5417734719555839932.a n = A036572 (n + 3)

end A036572

/-!
# A036573: Size of maximal triangulation of an n-antiprism with regular polygonal base.

The programs for A036573, the canonical program `A036573.P12277375506103141661` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036573 has offset 3).

The definition of A036573 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036573.P8749601925674252355

`floor(((n+3)²+8*(n+3)-16)/4)`
-/

namespace A036573.P8749601925674252355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n + 3) ^ 2 + 8 * (n + 3) : ℤ) - 16 : ℚ) / 4⌋

end

end A036573.P8749601925674252355

namespace A036573

/-- `floor(((n+3)²+8*(n+3)-16)/4)` -/
def P8749601925674252355.Spec : Prop :=
  ∀ n, P8749601925674252355.a n = A036573 (n + 3)

end A036573

/-! ## A036573.P12277375506103141661

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=4, a(1)=8, a(2)=12, a(3)=17`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036573

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P12277375506103141661.Spec : Prop :=
  ∀ n, P12277375506103141661.a n = A036573 (n + 3)

theorem P12277375506103141661.correct : P12277375506103141661.Spec := by
  intro n
  simp only [A036573, Nat.add_sub_cancel]

end A036573

/-! ## A036573.P18285713822095129591

`∑[a(n-2)+1]` with `a(0)=4, a(1)=4, a(2)=4`
-/

namespace A036573.P18285713822095129591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 4, 4] fun n f1 =>
  f1 (n - 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036573.P18285713822095129591

namespace A036573

/-- `∑[a(n-2)+1]` -/
def P18285713822095129591.Spec : Prop :=
  ∀ n, (P18285713822095129591.a n : ℤ) = A036573 (n + 3)

end A036573

/-! ## A036573.P15905732833809646486

`∑[∑[1-a(n-1)]]` with `a(0)=4, a(1)=0, a(2)=0`
-/

namespace A036573.P15905732833809646486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 0, 0] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036573.P15905732833809646486

namespace A036573

/-- `∑[∑[1-a(n-1)]]` -/
def P15905732833809646486.Spec : Prop :=
  ∀ n, P15905732833809646486.a n = A036573 (n + 3)

end A036573

/-! ## A036573.P12005700702865372866

`ogf((4-4x^2+x^3)/(1-2x+2x^3-x^4))`
-/

namespace A036573.P12005700702865372866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 0, -4, 1] [1, -2, 0, 2, -1] n

end

end A036573.P12005700702865372866

namespace A036573

/-- `ogf((4-4x^2+x^3)/(1-2x+2x^3-x^4))` -/
def P12005700702865372866.Spec : Prop :=
  ∀ n, P12005700702865372866.a n = A036573 (n + 3)

end A036573

/-! ## A036573.P8854319511157154978

`∑[A065033(n)+3]`
-/

namespace A036573.P8854319511157154978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036573.P8854319511157154978

namespace A036573

/-- `∑[A065033(n)+3]` -/
def P8854319511157154978.Spec : Prop :=
  ∀ n, P8854319511157154978.a n = A036573 (n + 3)

end A036573

/-! ## A036573.P9185434268015255935

`∑[A140106(n+1)+4]`
-/

namespace A036573.P9185434268015255935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036573.P9185434268015255935

namespace A036573

/-- `∑[A140106(n+1)+4]` -/
def P9185434268015255935.Spec : Prop :=
  ∀ n, P9185434268015255935.a n = A036573 (n + 3)

end A036573

/-! ## A036573.P5078108432226306166

`∑[A080513(A028310(n))+2]`
-/

namespace A036573.P5078108432226306166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A028310 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036573.P5078108432226306166

namespace A036573

/-- `∑[A080513(A028310(n))+2]` -/
def P5078108432226306166.Spec : Prop :=
  ∀ n, P5078108432226306166.a n = A036573 (n + 3)

end A036573

/-! ## A036573.P16828702813087528161

`∑[∑[(A105812(n)+A059841(n))²]]`
-/

namespace A036573.P16828702813087528161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A105812 n + A059841 n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036573.P16828702813087528161

namespace A036573

/-- `∑[∑[(A105812(n)+A059841(n))²]]` -/
def P16828702813087528161.Spec : Prop :=
  ∀ n, P16828702813087528161.a n = A036573 (n + 3)

end A036573

/-! ## A036573.P14436519207509946673

`Δ[A370307(n)+n²]`
-/

namespace A036573.P14436519207509946673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370307 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036573.P14436519207509946673

namespace A036573

/-- `Δ[A370307(n)+n²]` -/
def P14436519207509946673.Spec : Prop :=
  ∀ n, P14436519207509946673.a n = A036573 (n + 3)

end A036573

/-! ## A036573.P18371504086292964806

`∑[A263997(n+2)+2]`
-/

namespace A036573.P18371504086292964806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263997 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036573.P18371504086292964806

namespace A036573

/-- `∑[A263997(n+2)+2]` -/
def P18371504086292964806.Spec : Prop :=
  ∀ n, P18371504086292964806.a n = A036573 (n + 3)

end A036573

/-! ## A036573.P7433469849166330755

`Δ[A005744(n)+(n+1)²]`
-/

namespace A036573.P7433469849166330755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005744 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036573.P7433469849166330755

namespace A036573

/-- `Δ[A005744(n)+(n+1)²]` -/
def P7433469849166330755.Spec : Prop :=
  ∀ n, P7433469849166330755.a n = A036573 (n + 3)

end A036573

/-! ## A036573.P15153295587503133537

`∑[A168050(n+1)+n+3]`
-/

namespace A036573.P15153295587503133537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168050 (n + 1) + (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036573.P15153295587503133537

namespace A036573

/-- `∑[A168050(n+1)+n+3]` -/
def P15153295587503133537.Spec : Prop :=
  ∀ n, P15153295587503133537.a n = A036573 (n + 3)

end A036573

/-! ## A036573.P16904185722405344271

`∑[A080513(A131055(n+1))+2]`
-/

namespace A036573.P16904185722405344271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A131055 (n + 1)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036573.P16904185722405344271

namespace A036573

/-- `∑[A080513(A131055(n+1))+2]` -/
def P16904185722405344271.Spec : Prop :=
  ∀ n, P16904185722405344271.a n = A036573 (n + 3)

end A036573

/-! ## A036573.P7591019997291784270

`abs(1-A267531(n+2))`
-/

namespace A036573.P7591019997291784270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A267531 (n + 2)|

end

end A036573.P7591019997291784270

namespace A036573

/-- `abs(1-A267531(n+2))` -/
def P7591019997291784270.Spec : Prop :=
  ∀ n, P7591019997291784270.a n = A036573 (n + 3)

end A036573

/-! ## A036573.P10324135967333886897

`∑[A270059(n+2)+1]`
-/

namespace A036573.P10324135967333886897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270059 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036573.P10324135967333886897

namespace A036573

/-- `∑[A270059(n+2)+1]` -/
def P10324135967333886897.Spec : Prop :=
  ∀ n, P10324135967333886897.a n = A036573 (n + 3)

end A036573

/-! ## A036573.P16698783491426993856

`Δ[A266464(n+2)+n²]`
-/

namespace A036573.P16698783491426993856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266464 (n + 2) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036573.P16698783491426993856

namespace A036573

/-- `Δ[A266464(n+2)+n²]` -/
def P16698783491426993856.Spec : Prop :=
  ∀ n, P16698783491426993856.a n = A036573 (n + 3)

end A036573

/-! ## A036573.P17654597569600844689

`∑[A080513(A233583(n+1))+2]`
-/

namespace A036573.P17654597569600844689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A233583 (n + 1)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036573.P17654597569600844689

namespace A036573

/-- `∑[A080513(A233583(n+1))+2]` -/
def P17654597569600844689.Spec : Prop :=
  ∀ n, P17654597569600844689.a n = A036573 (n + 3)

end A036573

/-! ## A036573.P17361385326969846736

`∑[A008619(A233583(n+2))+2]`
-/

namespace A036573.P17361385326969846736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A233583 (n + 2)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036573.P17361385326969846736

namespace A036573

/-- `∑[A008619(A233583(n+2))+2]` -/
def P17361385326969846736.Spec : Prop :=
  ∀ n, P17361385326969846736.a n = A036573 (n + 3)

end A036573

/-!
# A036577: Ternary Thue-Morse sequence: closed under a->abc, b->ac, c->b.

The programs for A036577, the canonical program `A036577.P861720372246105226` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036577 has offset 1).

The definition of A036577 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029883, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A036577.P861720372246105226

`A029883(n+1)+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A036577

/-- `A029883(n+1)+1` -/
def P861720372246105226.Spec : Prop :=
  ∀ n, P861720372246105226.a n = A036577 (n + 1)

theorem P861720372246105226.correct : P861720372246105226.Spec := by
  intro n
  simp only [A036577, Nat.add_sub_cancel]

end A036577

/-! ## A036577.P13586303303670198682

`A036585(n+1)-1`
-/

namespace A036577.P13586303303670198682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036585 (n + 1) - 1

end

end A036577.P13586303303670198682

namespace A036577

/-- `A036585(n+1)-1` -/
def P13586303303670198682.Spec : Prop :=
  ∀ n, P13586303303670198682.a n = A036577 (n + 1)

end A036577

/-! ## A036577.P1511471358471504443

`3-A007413(n+1)`
-/

namespace A036577.P1511471358471504443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A007413 (n + 1)

end

end A036577.P1511471358471504443

namespace A036577

/-- `3-A007413(n+1)` -/
def P1511471358471504443.Spec : Prop :=
  ∀ n, P1511471358471504443.a n = A036577 (n + 1)

end A036577

/-! ## A036577.P3447238437220759276

`A010060(2*(n+1)-1)+A010060(2*(n+1))`
-/

namespace A036577.P3447238437220759276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (2 * (n + 1) - 1) + A010060 (2 * (n + 1))

end

end A036577.P3447238437220759276

namespace A036577

/-- `A010060(2*(n+1)-1)+A010060(2*(n+1))` -/
def P3447238437220759276.Spec : Prop :=
  ∀ n, P3447238437220759276.a n = A036577 (n + 1)

end A036577

/-! ## A036577.P4963252712041534431

`A115384(2*(n+1))-A115384(2*(n+1)-2)`
-/

namespace A036577.P4963252712041534431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (2 * (n + 1)) - A115384 (2 * (n + 1) - 2)

end

end A036577.P4963252712041534431

namespace A036577

/-- `A115384(2*(n+1))-A115384(2*(n+1)-2)` -/
def P4963252712041534431.Spec : Prop :=
  ∀ n, P4963252712041534431.a n = A036577 (n + 1)

end A036577

/-! ## A036577.P16766665693133599805

`floor(ratio[2/a(and(n, n-1))])` with `a(0)=1`
-/

namespace A036577.P16766665693133599805
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 / f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) / f1 n⌋

end

end A036577.P16766665693133599805

namespace A036577

/-- `floor(ratio[2/a(and(n, n-1))])` -/
def P16766665693133599805.Spec : Prop :=
  ∀ n, P16766665693133599805.a n = A036577 (n + 1)

end A036577

/-! ## A036577.P17988092327618313254

`Δ[2/a(and(n, n-1))]+1` with `a(0)=1`
-/

namespace A036577.P17988092327618313254
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 / f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A036577.P17988092327618313254

namespace A036577

/-- `Δ[2/a(and(n, n-1))]+1` -/
def P17988092327618313254.Spec : Prop :=
  ∀ n, P17988092327618313254.a n = (A036577 (n + 1) : ℚ)

end A036577

/-! ## A036577.P15941525240124670703

`1-Δ[abs(1-a(and(n, n-1)))]` with `a(0)=1`
-/

namespace A036577.P15941525240124670703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  |1 - f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A036577.P15941525240124670703

namespace A036577

/-- `1-Δ[abs(1-a(and(n, n-1)))]` -/
def P15941525240124670703.Spec : Prop :=
  ∀ n, P15941525240124670703.a n = A036577 (n + 1)

end A036577

/-! ## A036577.P2971736919393997616

`1-Δ[(a(floor(n/2))+n)%2]` with `a(0)=1`
-/

namespace A036577.P2971736919393997616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  (f1 ⌊(n : ℚ) / 2⌋.toNat + n) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A036577.P2971736919393997616

namespace A036577

/-- `1-Δ[(a(floor(n/2))+n)%2]` -/
def P2971736919393997616.Spec : Prop :=
  ∀ n, P2971736919393997616.a n = A036577 (n + 1)

end A036577

/-! ## A036577.P8026879372865919960

`floor(ratio[gcd(2, val(n*a(n-1), 2))])` with `a(0)=1`
-/

namespace A036577.P8026879372865919960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.gcd 2 (SequenceMachineLib.valuation (n * f1 (n - 1)) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A036577.P8026879372865919960

namespace A036577

/-- `floor(ratio[gcd(2, val(n*a(n-1), 2))])` -/
def P8026879372865919960.Spec : Prop :=
  ∀ n, P8026879372865919960.a n = A036577 (n + 1)

end A036577

/-! ## A036577.P3389950555172191326

`1-Δ[and(1, a(and(n, n-1))+1)]` with `a(0)=1`
-/

namespace A036577.P3389950555172191326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.land 1 (f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A036577.P3389950555172191326

namespace A036577

/-- `1-Δ[and(1, a(and(n, n-1))+1)]` -/
def P3389950555172191326.Spec : Prop :=
  ∀ n, P3389950555172191326.a n = A036577 (n + 1)

end A036577

/-! ## A036577.P17924502937092936795

`A316826(n+1)`
-/

namespace A036577.P17924502937092936795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 (n + 1)

end

end A036577.P17924502937092936795

namespace A036577

/-- `A316826(n+1)` -/
def P17924502937092936795.Spec : Prop :=
  ∀ n, P17924502937092936795.a n = A036577 (n + 1)

end A036577

/-! ## A036577.P13748468670775480676

`2-A036580(n)`
-/

namespace A036577.P13748468670775480676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A036580 n

end

end A036577.P13748468670775480676

namespace A036577

/-- `2-A036580(n)` -/
def P13748468670775480676.Spec : Prop :=
  ∀ n, P13748468670775480676.a n = A036577 (n + 1)

end A036577

/-! ## A036577.P13779675366601125705

`floor(ratio[A001285(n)])`
-/

namespace A036577.P13779675366601125705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A036577.P13779675366601125705

namespace A036577

/-- `floor(ratio[A001285(n)])` -/
def P13779675366601125705.Spec : Prop :=
  ∀ n, P13779675366601125705.a n = A036577 (n + 1)

end A036577

/-! ## A036577.P7169391900698916822

`Δ[A010060(n)]+1`
-/

namespace A036577.P7169391900698916822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A036577.P7169391900698916822

namespace A036577

/-- `Δ[A010060(n)]+1` -/
def P7169391900698916822.Spec : Prop :=
  ∀ n, P7169391900698916822.a n = A036577 (n + 1)

end A036577

/-! ## A036577.P10500001006094908418

`1-Δ[A010059(n)]`
-/

namespace A036577.P10500001006094908418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A036577.P10500001006094908418

namespace A036577

/-- `1-Δ[A010059(n)]` -/
def P10500001006094908418.Spec : Prop :=
  ∀ n, P10500001006094908418.a n = A036577 (n + 1)

end A036577

/-! ## A036577.P4653347144110416513

`4-A354384(n+1)`
-/

namespace A036577.P4653347144110416513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A354384 (n + 1)

end

end A036577.P4653347144110416513

namespace A036577

/-- `4-A354384(n+1)` -/
def P4653347144110416513.Spec : Prop :=
  ∀ n, P4653347144110416513.a n = A036577 (n + 1)

end A036577

/-! ## A036577.P12953737643300157320

`A005679(n+1)%3`
-/

namespace A036577.P12953737643300157320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005679 (n + 1)) 3

end

end A036577.P12953737643300157320

namespace A036577

/-- `A005679(n+1)%3` -/
def P12953737643300157320.Spec : Prop :=
  ∀ n, P12953737643300157320.a n = A036577 (n + 1)

end A036577

/-!
# A036578: Ternary Thue-Morse sequence: closed under a->abc, b->ac, c->b.

The programs for A036578, the canonical program `A036578.P17041184954175712032` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036578 has offset 0).

The definition of A036578 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036578.P5336810695215219686

`(2-char[xor(n, 2*n)])*xor(n, n+1)%3`
-/

namespace A036578.P5336810695215219686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * ((Nat.xor n (n + 1) % 3 : ℕ) : ℤ)

end

end A036578.P5336810695215219686

namespace A036578

/-- `(2-char[xor(n, 2*n)])*xor(n, n+1)%3` -/
def P5336810695215219686.Spec : Prop :=
  ∀ n, P5336810695215219686.a n = A036578 n

end A036578

/-! ## A036578.P12066827025158560642

`2-A036579(n)`
-/

namespace A036578.P12066827025158560642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A036579 n

end

end A036578.P12066827025158560642

namespace A036578

/-- `2-A036579(n)` -/
def P12066827025158560642.Spec : Prop :=
  ∀ n, P12066827025158560642.a n = A036578 n

end A036578

/-! ## A036578.P7971961823748861677

`3-A036582(n)`
-/

namespace A036578.P7971961823748861677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A036582 n

end

end A036578.P7971961823748861677

namespace A036578

/-- `3-A036582(n)` -/
def P7971961823748861677.Spec : Prop :=
  ∀ n, P7971961823748861677.a n = A036578 n

end A036578

/-! ## A036578.P18084744745606101946

`A036583(n)%3`
-/

namespace A036578.P18084744745606101946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036583 n) 3

end

end A036578.P18084744745606101946

namespace A036578

/-- `A036583(n)%3` -/
def P18084744745606101946.Spec : Prop :=
  ∀ n, P18084744745606101946.a n = A036578 n

end A036578

/-! ## A036578.P13738124400433776393

`A245188(n)%3`
-/

namespace A036578.P13738124400433776393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245188 n) 3

end

end A036578.P13738124400433776393

namespace A036578

/-- `A245188(n)%3` -/
def P13738124400433776393.Spec : Prop :=
  ∀ n, P13738124400433776393.a n = A036578 n

end A036578

/-! ## A036578.P5228208727991915275

`C(2, A036581(n)²)`
-/

namespace A036578.P5228208727991915275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A036581 n ^ 2).toNat

end

end A036578.P5228208727991915275

namespace A036578

/-- `C(2, A036581(n)²)` -/
def P5228208727991915275.Spec : Prop :=
  ∀ n, (P5228208727991915275.a n : ℤ) = A036578 n

end A036578

/-! ## A036578.P8998451401764360483

`a(A036580(n))` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A036578.P8998451401764360483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  a (A036580 n).toNat

end

end A036578.P8998451401764360483

namespace A036578

/-- `a(A036580(n))` -/
def P8998451401764360483.Spec : Prop :=
  ∀ n, (P8998451401764360483.a n : ℤ) = A036578 n

end A036578

/-! ## A036578.P17041184954175712032

`A005679(n+1)-1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A036578

/-- `A005679(n+1)-1` -/
def P17041184954175712032.Spec : Prop :=
  ∀ n, P17041184954175712032.a n = A036578 n

theorem P17041184954175712032.correct : P17041184954175712032.Spec := by
  intro n
  simp only [A036578]

end A036578

/-! ## A036578.P6012920362633942178

`A361145(n+1)%3`
-/

namespace A036578.P6012920362633942178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361145 (n + 1)) 3

end

end A036578.P6012920362633942178

namespace A036578

/-- `A361145(n+1)%3` -/
def P6012920362633942178.Spec : Prop :=
  ∀ n, P6012920362633942178.a n = A036578 n

end A036578

/-! ## A036578.P593901166237745276

`val(A354384(n+1), 2)`
-/

namespace A036578.P593901166237745276
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A354384 (n + 1)).toNat 2

end

end A036578.P593901166237745276

namespace A036578

/-- `val(A354384(n+1), 2)` -/
def P593901166237745276.Spec : Prop :=
  ∀ n, (P593901166237745276.a n : ℤ) = A036578 n

end A036578

/-! ## A036578.P15940126515070041580

`C(2, (3-A036584(n))²)`
-/

namespace A036578.P15940126515070041580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 ((3 - A036584 n) ^ 2).toNat

end

end A036578.P15940126515070041580

namespace A036578

/-- `C(2, (3-A036584(n))²)` -/
def P15940126515070041580.Spec : Prop :=
  ∀ n, (P15940126515070041580.a n : ℤ) = A036578 n

end A036578

/-! ## A036578.P17381881730019950499

`(A036585(n+1)+1)%3`
-/

namespace A036578.P17381881730019950499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036585 (n + 1) + 1) 3

end

end A036578.P17381881730019950499

namespace A036578

/-- `(A036585(n+1)+1)%3` -/
def P17381881730019950499.Spec : Prop :=
  ∀ n, P17381881730019950499.a n = A036578 n

end A036578

/-! ## A036578.P12406505883518946780

`(A036577(n+1)+2)%3`
-/

namespace A036578.P12406505883518946780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036577 (n + 1) + 2) 3

end

end A036578.P12406505883518946780

namespace A036578

/-- `(A036577(n+1)+2)%3` -/
def P12406505883518946780.Spec : Prop :=
  ∀ n, P12406505883518946780.a n = A036578 n

end A036578

/-! ## A036578.P13161799768941608807

`2-A007413(n+1)%3`
-/

namespace A036578.P13161799768941608807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (A007413 (n + 1)) 3

end

end A036578.P13161799768941608807

namespace A036578

/-- `2-A007413(n+1)%3` -/
def P13161799768941608807.Spec : Prop :=
  ∀ n, P13161799768941608807.a n = A036578 n

end A036578

/-! ## A036578.P3408819907620589382

`A080425(A233775(n+1))`
-/

namespace A036578.P3408819907620589382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A233775 (n + 1)).toNat

end

end A036578.P3408819907620589382

namespace A036578

/-- `A080425(A233775(n+1))` -/
def P3408819907620589382.Spec : Prop :=
  ∀ n, P3408819907620589382.a n = A036578 n

end A036578

/-! ## A036578.P17075671020582175881

`A036586(a(A036586(n)))` with `a(0)=1`
-/

namespace A036578.P17075671020582175881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A036586 (a (A036586 n).toNat).toNat

end

end A036578.P17075671020582175881

namespace A036578

/-- `A036586(a(A036586(n)))` -/
def P17075671020582175881.Spec : Prop :=
  ∀ n, P17075671020582175881.a n = A036578 n

end A036578

/-! ## A036578.P5954278241036716458

`A289813(2-Δ[A010060(n)])`
-/

namespace A036578.P5954278241036716458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A036578.P5954278241036716458

namespace A036578

/-- `A289813(2-Δ[A010060(n)])` -/
def P5954278241036716458.Spec : Prop :=
  ∀ n, P5954278241036716458.a n = A036578 n

end A036578

/-! ## A036578.P13846453236237032329

`A000045(and(3, Δ[A001285(n)]))`
-/

namespace A036578.P13846453236237032329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land 3 (f1 (n + 1) - f1 n)).toNat

end

end A036578.P13846453236237032329

namespace A036578

/-- `A000045(and(3, Δ[A001285(n)]))` -/
def P13846453236237032329.Spec : Prop :=
  ∀ n, P13846453236237032329.a n = A036578 n

end A036578

/-! ## A036578.P7357847885417050892

`A000045(and(3, Δ[A010060(n)]))`
-/

namespace A036578.P7357847885417050892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land 3 (f1 (n + 1) - f1 n)).toNat

end

end A036578.P7357847885417050892

namespace A036578

/-- `A000045(and(3, Δ[A010060(n)]))` -/
def P7357847885417050892.Spec : Prop :=
  ∀ n, P7357847885417050892.a n = A036578 n

end A036578

/-!
# A036579: Ternary Thue-Morse sequence: closed under a->abc, b->ac, c->b.

The programs for A036579, the canonical program `A036579.P9011421768844623426` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036579 has offset 0).

The definition of A036579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036579.P10297778737937346523

`A036582(n)-1`
-/

namespace A036579.P10297778737937346523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036582 n - 1

end

end A036579.P10297778737937346523

namespace A036579

/-- `A036582(n)-1` -/
def P10297778737937346523.Spec : Prop :=
  ∀ n, P10297778737937346523.a n = A036579 n

end A036579

/-! ## A036579.P9011421768844623426

`2-A036578(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A036579

/-- `2-A036578(n)` -/
def P9011421768844623426.Spec : Prop :=
  ∀ n, P9011421768844623426.a n = A036579 n

theorem P9011421768844623426.correct : P9011421768844623426.Spec := by
  intro n
  simp only [A036579]

end A036579

/-! ## A036579.P4029288891005367156

`C(2, A036580(n)²)`
-/

namespace A036579.P4029288891005367156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A036580 n ^ 2).toNat

end

end A036579.P4029288891005367156

namespace A036579

/-- `C(2, A036580(n)²)` -/
def P4029288891005367156.Spec : Prop :=
  ∀ n, (P4029288891005367156.a n : ℤ) = A036579 n

end A036579

/-! ## A036579.P1808765441425414915

`ceil(acot(Δ[A001285(n)]))`
-/

namespace A036579.P1808765441425414915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (f1 (n + 1) - f1 n : ℝ)⌉

end

end A036579.P1808765441425414915

namespace A036579

/-- `ceil(acot(Δ[A001285(n)]))` -/
def P1808765441425414915.Spec : Prop :=
  ∀ n, P1808765441425414915.a n = A036579 n

end A036579

/-! ## A036579.P10666122296099990479

`ceil(acot(Δ[A010060(n)]))`
-/

namespace A036579.P10666122296099990479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (f1 (n + 1) - f1 n : ℝ)⌉

end

end A036579.P10666122296099990479

namespace A036579

/-- `ceil(acot(Δ[A010060(n)]))` -/
def P10666122296099990479.Spec : Prop :=
  ∀ n, P10666122296099990479.a n = A036579 n

end A036579

/-! ## A036579.P10075275991287627572

`3-A005679(n+1)`
-/

namespace A036579.P10075275991287627572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A005679 (n + 1)

end

end A036579.P10075275991287627572

namespace A036579

/-- `3-A005679(n+1)` -/
def P10075275991287627572.Spec : Prop :=
  ∀ n, P10075275991287627572.a n = A036579 n

end A036579

/-! ## A036579.P15212593653442628492

`A007413(n+1)%3`
-/

namespace A036579.P15212593653442628492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007413 (n + 1)) 3

end

end A036579.P15212593653442628492

namespace A036579

/-- `A007413(n+1)%3` -/
def P15212593653442628492.Spec : Prop :=
  ∀ n, P15212593653442628492.a n = A036579 n

end A036579

/-! ## A036579.P17554760402496867060

`2-a(A036581(n))` with `a(0)=1, a(1)=2`
-/

namespace A036579.P17554760402496867060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 - a (A036581 n).toNat

end

end A036579.P17554760402496867060

namespace A036579

/-- `2-a(A036581(n))` -/
def P17554760402496867060.Spec : Prop :=
  ∀ n, P17554760402496867060.a n = A036579 n

end A036579

/-! ## A036579.P778281281006397966

`a(a(A036586(n)))` with `a(0)=1, a(1)=2, a(2)=0`
-/

namespace A036579.P778281281006397966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0] fun n a =>
  a (a (A036586 n).toNat)

end

end A036579.P778281281006397966

namespace A036579

/-- `a(a(A036586(n)))` -/
def P778281281006397966.Spec : Prop :=
  ∀ n, (P778281281006397966.a n : ℤ) = A036579 n

end A036579

/-! ## A036579.P1532346717674914581

`Δ[A000069(n+1)]%3`
-/

namespace A036579.P1532346717674914581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 3

end

end A036579.P1532346717674914581

namespace A036579

/-- `Δ[A000069(n+1)]%3` -/
def P1532346717674914581.Spec : Prop :=
  ∀ n, P1532346717674914581.a n = A036579 n

end A036579

/-! ## A036579.P5851956167296378320

`ceil(acot(Δ[A000120(n)%2]))`
-/

namespace A036579.P5851956167296378320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (f1 (n + 1) - f1 n : ℝ)⌉

end

end A036579.P5851956167296378320

namespace A036579

/-- `ceil(acot(Δ[A000120(n)%2]))` -/
def P5851956167296378320.Spec : Prop :=
  ∀ n, P5851956167296378320.a n = A036579 n

end A036579

/-! ## A036579.P4642502562180561663

`2-val(A354384(n+1), 2)`
-/

namespace A036579.P4642502562180561663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (SequenceMachineLib.valuation (A354384 (n + 1)).toNat 2 : ℤ)

end

end A036579.P4642502562180561663

namespace A036579

/-- `2-val(A354384(n+1), 2)` -/
def P4642502562180561663.Spec : Prop :=
  ∀ n, P4642502562180561663.a n = A036579 n

end A036579

/-! ## A036579.P7208454537502592935

`C(2, (3-A036585(n+1))²)`
-/

namespace A036579.P7208454537502592935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 ((3 - A036585 (n + 1)) ^ 2).toNat

end

end A036579.P7208454537502592935

namespace A036579

/-- `C(2, (3-A036585(n+1))²)` -/
def P7208454537502592935.Spec : Prop :=
  ∀ n, (P7208454537502592935.a n : ℤ) = A036579 n

end A036579

/-! ## A036579.P3372548675637690958

`A036583(n)-A036580(n)`
-/

namespace A036579.P3372548675637690958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036583 n - A036580 n

end

end A036579.P3372548675637690958

namespace A036579

/-- `A036583(n)-A036580(n)` -/
def P3372548675637690958.Spec : Prop :=
  ∀ n, P3372548675637690958.a n = A036579 n

end A036579

/-! ## A036579.P1185183812533654762

`A001513(n)%A036582(n)`
-/

namespace A036579.P1185183812533654762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001513 n) (A036582 n)

end

end A036579.P1185183812533654762

namespace A036579

/-- `A001513(n)%A036582(n)` -/
def P1185183812533654762.Spec : Prop :=
  ∀ n, P1185183812533654762.a n = A036579 n

end A036579

/-! ## A036579.P432616741326854584

`A001538(n)%A036582(n)`
-/

namespace A036579.P432616741326854584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A036582 n)

end

end A036579.P432616741326854584

namespace A036579

/-- `A001538(n)%A036582(n)` -/
def P432616741326854584.Spec : Prop :=
  ∀ n, P432616741326854584.a n = A036579 n

end A036579

/-! ## A036579.P8014756629795871054

`A002148(n)%A036582(n)`
-/

namespace A036579.P8014756629795871054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002148 n) (A036582 n)

end

end A036579.P8014756629795871054

namespace A036579

/-- `A002148(n)%A036582(n)` -/
def P8014756629795871054.Spec : Prop :=
  ∀ n, P8014756629795871054.a n = A036579 n

end A036579

/-! ## A036579.P6618114172770079522

`A010686(n)%A036582(n)`
-/

namespace A036579.P6618114172770079522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010686 n) (A036582 n)

end

end A036579.P6618114172770079522

namespace A036579

/-- `A010686(n)%A036582(n)` -/
def P6618114172770079522.Spec : Prop :=
  ∀ n, P6618114172770079522.a n = A036579 n

end A036579

/-! ## A036579.P1940422040786529712

`A010703(n)%A036582(n)`
-/

namespace A036579.P1940422040786529712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010703 n) (A036582 n)

end

end A036579.P1940422040786529712

namespace A036579

/-- `A010703(n)%A036582(n)` -/
def P1940422040786529712.Spec : Prop :=
  ∀ n, P1940422040786529712.a n = A036579 n

end A036579

/-!
# A036580: Ternary Thue-Morse sequence: closed under a->abc, b->ac, c->b.

The programs for A036580, the canonical program `A036580.P6020384830940862058` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036580 has offset 0).

The definition of A036580 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036580.P15878097733646940763

`1-Δ[2/a(and(n, n-1))]` with `a(0)=1`
-/

namespace A036580.P15878097733646940763
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 / f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A036580.P15878097733646940763

namespace A036580

/-- `1-Δ[2/a(and(n, n-1))]` -/
def P15878097733646940763.Spec : Prop :=
  ∀ n, P15878097733646940763.a n = (A036580 n : ℚ)

end A036580

/-! ## A036580.P6020384830940862058

`Δ[abs(1-a(and(n, n-1)))]+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036580

/-- `Δ[abs(1-a(and(n, n-1)))]+1` -/
def P6020384830940862058.Spec : Prop :=
  ∀ n, P6020384830940862058.a n = A036580 n

theorem P6020384830940862058.correct : P6020384830940862058.Spec := by
  intro n
  simp only [A036580]

end A036580

/-! ## A036580.P6095722263578422452

`Δ[(a(floor(n/2))+n)%2]+1` with `a(0)=1`
-/

namespace A036580.P6095722263578422452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  (f1 ⌊(n : ℚ) / 2⌋.toNat + n) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1

end

end A036580.P6095722263578422452

namespace A036580

/-- `Δ[(a(floor(n/2))+n)%2]+1` -/
def P6095722263578422452.Spec : Prop :=
  ∀ n, P6095722263578422452.a n = A036580 n

end A036580

/-! ## A036580.P3711477865856804856

`1-Δ[gcd(2, val(n*a(n-1), 2))]` with `a(0)=1`
-/

namespace A036580.P3711477865856804856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.gcd 2 (SequenceMachineLib.valuation (n * f1 (n - 1)) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A036580.P3711477865856804856

namespace A036580

/-- `1-Δ[gcd(2, val(n*a(n-1), 2))]` -/
def P3711477865856804856.Spec : Prop :=
  ∀ n, P3711477865856804856.a n = A036580 n

end A036580

/-! ## A036580.P17039170603863683563

`Δ[and(1, a(and(n, n-1))+1)]+1` with `a(0)=1`
-/

namespace A036580.P17039170603863683563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.land 1 (f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1

end

end A036580.P17039170603863683563

namespace A036580

/-- `Δ[and(1, a(and(n, n-1))+1)]+1` -/
def P17039170603863683563.Spec : Prop :=
  ∀ n, P17039170603863683563.a n = A036580 n

end A036580

/-! ## A036580.P5557234661235048116

`(a(floor((n-1)/2))+a(n-1)+1)%4` with `a(0)=0`
-/

namespace A036580.P5557234661235048116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + (a (n - 1) + 1)) % 4

end

end A036580.P5557234661235048116

namespace A036580

/-- `(a(floor((n-1)/2))+a(n-1)+1)%4` -/
def P5557234661235048116.Spec : Prop :=
  ∀ n, (P5557234661235048116.a n : ℤ) = A036580 n

end A036580

/-! ## A036580.P6711335473799210250

`and(3, a(floor((n-1)/2))+a(n-1)+1)` with `a(0)=0`
-/

namespace A036580.P6711335473799210250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.land 3 (a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + (a (n - 1) + 1))

end

end A036580.P6711335473799210250

namespace A036580

/-- `and(3, a(floor((n-1)/2))+a(n-1)+1)` -/
def P6711335473799210250.Spec : Prop :=
  ∀ n, (P6711335473799210250.a n : ℤ) = A036580 n

end A036580

/-! ## A036580.P4283965868124598536

`A036584(n)%3`
-/

namespace A036580.P4283965868124598536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036584 n) 3

end

end A036580.P4283965868124598536

namespace A036580

/-- `A036584(n)%3` -/
def P4283965868124598536.Spec : Prop :=
  ∀ n, P4283965868124598536.a n = A036580 n

end A036580

/-! ## A036580.P8153239327799030849

`Δ[A010059(n)]+1`
-/

namespace A036580.P8153239327799030849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A036580.P8153239327799030849

namespace A036580

/-- `Δ[A010059(n)]+1` -/
def P8153239327799030849.Spec : Prop :=
  ∀ n, P8153239327799030849.a n = A036580 n

end A036580

/-! ## A036580.P12481867504964239191

`1-Δ[A001285(n)]`
-/

namespace A036580.P12481867504964239191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A036580.P12481867504964239191

namespace A036580

/-- `1-Δ[A001285(n)]` -/
def P12481867504964239191.Spec : Prop :=
  ∀ n, P12481867504964239191.a n = A036580 n

end A036580

/-! ## A036580.P1107548941972255004

`1-Δ[A010060(n)]`
-/

namespace A036580.P1107548941972255004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A036580.P1107548941972255004

namespace A036580

/-- `1-Δ[A010060(n)]` -/
def P1107548941972255004.Spec : Prop :=
  ∀ n, P1107548941972255004.a n = A036580 n

end A036580

/-! ## A036580.P7256928731975834430

`A007413(n+1)-1`
-/

namespace A036580.P7256928731975834430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007413 (n + 1) - 1

end

end A036580.P7256928731975834430

namespace A036580

/-- `A007413(n+1)-1` -/
def P7256928731975834430.Spec : Prop :=
  ∀ n, P7256928731975834430.a n = A036580 n

end A036580

/-! ## A036580.P2049148290609971240

`1-A029883(n+1)`
-/

namespace A036580.P2049148290609971240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A029883 (n + 1)

end

end A036580.P2049148290609971240

namespace A036580

/-- `1-A029883(n+1)` -/
def P2049148290609971240.Spec : Prop :=
  ∀ n, P2049148290609971240.a n = A036580 n

end A036580

/-! ## A036580.P1724434320794789233

`2-A036577(n+1)`
-/

namespace A036580.P1724434320794789233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A036577 (n + 1)

end

end A036580.P1724434320794789233

namespace A036580

/-- `2-A036577(n+1)` -/
def P1724434320794789233.Spec : Prop :=
  ∀ n, P1724434320794789233.a n = A036580 n

end A036580

/-! ## A036580.P16393049776791084575

`2-A316826(n+1)`
-/

namespace A036580.P16393049776791084575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A316826 (n + 1)

end

end A036580.P16393049776791084575

namespace A036580

/-- `2-A316826(n+1)` -/
def P16393049776791084575.Spec : Prop :=
  ∀ n, P16393049776791084575.a n = A036580 n

end A036580

/-! ## A036580.P17095788439896463935

`A354384(n+1)-2`
-/

namespace A036580.P17095788439896463935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354384 (n + 1) - 2

end

end A036580.P17095788439896463935

namespace A036580

/-- `A354384(n+1)-2` -/
def P17095788439896463935.Spec : Prop :=
  ∀ n, P17095788439896463935.a n = A036580 n

end A036580

/-! ## A036580.P2549093997365404863

`3-A036585(n+1)`
-/

namespace A036580.P2549093997365404863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A036585 (n + 1)

end

end A036580.P2549093997365404863

namespace A036580

/-- `3-A036585(n+1)` -/
def P2549093997365404863.Spec : Prop :=
  ∀ n, P2549093997365404863.a n = A036580 n

end A036580

/-! ## A036580.P2879462966211013909

`A102379(n+1)%4`
-/

namespace A036580.P2879462966211013909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102379 (n + 1)) 4

end

end A036580.P2879462966211013909

namespace A036580

/-- `A102379(n+1)%4` -/
def P2879462966211013909.Spec : Prop :=
  ∀ n, P2879462966211013909.a n = A036580 n

end A036580

/-! ## A036580.P18445154962886270583

`C(2, (2-A036581(n))²)`
-/

namespace A036580.P18445154962886270583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 ((2 - A036581 n) ^ 2).toNat

end

end A036580.P18445154962886270583

namespace A036580

/-- `C(2, (2-A036581(n))²)` -/
def P18445154962886270583.Spec : Prop :=
  ∀ n, (P18445154962886270583.a n : ℤ) = A036580 n

end A036580

/-!
# A036581: Ternary Thue-Morse sequence: closed under a->abc, b->ac, c->b.

The programs for A036581, the canonical program `A036581.P16384260264226216548` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036581 has offset 0).

The definition of A036581 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036581.P8814023520112409756

`A036583(n)-1`
-/

namespace A036581.P8814023520112409756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036583 n - 1

end

end A036581.P8814023520112409756

namespace A036581

/-- `A036583(n)-1` -/
def P8814023520112409756.Spec : Prop :=
  ∀ n, P8814023520112409756.a n = A036581 n

end A036581

/-! ## A036581.P9640463751815227045

`2-A036586(n)`
-/

namespace A036581.P9640463751815227045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A036586 n

end

end A036581.P9640463751815227045

namespace A036581

/-- `2-A036586(n)` -/
def P9640463751815227045.Spec : Prop :=
  ∀ n, P9640463751815227045.a n = A036581 n

end A036581

/-! ## A036581.P299351352275013771

`3-A036584(n)`
-/

namespace A036581.P299351352275013771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A036584 n

end

end A036581.P299351352275013771

namespace A036581

/-- `3-A036584(n)` -/
def P299351352275013771.Spec : Prop :=
  ∀ n, P299351352275013771.a n = A036581 n

end A036581

/-! ## A036581.P16384260264226216548

`a(A036580(n))` with `a(0)=0, a(1)=2, a(2)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A036581

/-- `a(A036580(n))` -/
def P16384260264226216548.Spec : Prop :=
  ∀ n, (P16384260264226216548.a n : ℤ) = A036581 n

theorem P16384260264226216548.correct : P16384260264226216548.Spec := by
  intro n
  simp only [A036581]

end A036581

/-! ## A036581.P10064622925224843893

`A036585(n+1)%3`
-/

namespace A036581.P10064622925224843893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036585 (n + 1)) 3

end

end A036581.P10064622925224843893

namespace A036581

/-- `A036585(n+1)%3` -/
def P10064622925224843893.Spec : Prop :=
  ∀ n, P10064622925224843893.a n = A036581 n

end A036581

/-! ## A036581.P12494617960501599111

`C(2, A316826(n+1)²)`
-/

namespace A036581.P12494617960501599111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A316826 (n + 1) ^ 2).toNat

end

end A036581.P12494617960501599111

namespace A036581

/-- `C(2, A316826(n+1)²)` -/
def P12494617960501599111.Spec : Prop :=
  ∀ n, (P12494617960501599111.a n : ℤ) = A036581 n

end A036581

/-! ## A036581.P3790316301562499706

`10%A007413(n+1)²`
-/

namespace A036581.P3790316301562499706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 10 (A007413 (n + 1) ^ 2)

end

end A036581.P3790316301562499706

namespace A036581

/-- `10%A007413(n+1)²` -/
def P3790316301562499706.Spec : Prop :=
  ∀ n, P3790316301562499706.a n = A036581 n

end A036581

/-! ## A036581.P10337586631778972611

`ceil(acot(Δ[2/A001285(n)]))`
-/

namespace A036581.P10337586631778972611
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A001285 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (f1 (n + 1) - f1 n : ℝ)⌉

end

end A036581.P10337586631778972611

namespace A036581

/-- `ceil(acot(Δ[2/A001285(n)]))` -/
def P10337586631778972611.Spec : Prop :=
  ∀ n, P10337586631778972611.a n = A036581 n

end A036581

/-! ## A036581.P4991520911935007450

`(Δ[A000120(n)%2]+2)%3`
-/

namespace A036581.P4991520911935007450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n + 2) 3

end

end A036581.P4991520911935007450

namespace A036581

/-- `(Δ[A000120(n)%2]+2)%3` -/
def P4991520911935007450.Spec : Prop :=
  ∀ n, P4991520911935007450.a n = A036581 n

end A036581

/-! ## A036581.P16491206176821266166

`A001513(n)%A036583(n)`
-/

namespace A036581.P16491206176821266166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001513 n) (A036583 n)

end

end A036581.P16491206176821266166

namespace A036581

/-- `A001513(n)%A036583(n)` -/
def P16491206176821266166.Spec : Prop :=
  ∀ n, P16491206176821266166.a n = A036581 n

end A036581

/-! ## A036581.P17500000953293906589

`A001538(n)%A036583(n)`
-/

namespace A036581.P17500000953293906589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A036583 n)

end

end A036581.P17500000953293906589

namespace A036581

/-- `A001538(n)%A036583(n)` -/
def P17500000953293906589.Spec : Prop :=
  ∀ n, P17500000953293906589.a n = A036581 n

end A036581

/-! ## A036581.P12100774933983447445

`A002148(n)%A036583(n)`
-/

namespace A036581.P12100774933983447445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002148 n) (A036583 n)

end

end A036581.P12100774933983447445

namespace A036581

/-- `A002148(n)%A036583(n)` -/
def P12100774933983447445.Spec : Prop :=
  ∀ n, P12100774933983447445.a n = A036581 n

end A036581

/-! ## A036581.P11708843394095205671

`A004538(n)%A036583(n)`
-/

namespace A036581.P11708843394095205671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004538 n) (A036583 n)

end

end A036581.P11708843394095205671

namespace A036581

/-- `A004538(n)%A036583(n)` -/
def P11708843394095205671.Spec : Prop :=
  ∀ n, P11708843394095205671.a n = A036581 n

end A036581

/-! ## A036581.P10576726940809124050

`A010686(n)%A036583(n)`
-/

namespace A036581.P10576726940809124050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010686 n) (A036583 n)

end

end A036581.P10576726940809124050

namespace A036581

/-- `A010686(n)%A036583(n)` -/
def P10576726940809124050.Spec : Prop :=
  ∀ n, P10576726940809124050.a n = A036581 n

end A036581

/-! ## A036581.P16408122283449949682

`A010703(n)%A036583(n)`
-/

namespace A036581.P16408122283449949682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010703 n) (A036583 n)

end

end A036581.P16408122283449949682

namespace A036581

/-- `A010703(n)%A036583(n)` -/
def P16408122283449949682.Spec : Prop :=
  ∀ n, P16408122283449949682.a n = A036581 n

end A036581

/-! ## A036581.P5149332918335385472

`A016969(n)%A036583(n)`
-/

namespace A036581.P5149332918335385472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016969 n) (A036583 n)

end

end A036581.P5149332918335385472

namespace A036581

/-- `A016969(n)%A036583(n)` -/
def P5149332918335385472.Spec : Prop :=
  ∀ n, P5149332918335385472.a n = A036581 n

end A036581

/-! ## A036581.P10768403183588818014

`A016971(n)%A036583(n)`
-/

namespace A036581.P10768403183588818014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016971 n) (A036583 n)

end

end A036581.P10768403183588818014

namespace A036581

/-- `A016971(n)%A036583(n)` -/
def P10768403183588818014.Spec : Prop :=
  ∀ n, P10768403183588818014.a n = A036581 n

end A036581

/-! ## A036581.P9225184643435065687

`A016973(n)%A036583(n)`
-/

namespace A036581.P9225184643435065687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016973 n) (A036583 n)

end

end A036581.P9225184643435065687

namespace A036581

/-- `A016973(n)%A036583(n)` -/
def P9225184643435065687.Spec : Prop :=
  ∀ n, P9225184643435065687.a n = A036581 n

end A036581

/-! ## A036581.P3884009551542773311

`A016975(n)%A036583(n)`
-/

namespace A036581.P3884009551542773311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016975 n) (A036583 n)

end

end A036581.P3884009551542773311

namespace A036581

/-- `A016975(n)%A036583(n)` -/
def P3884009551542773311.Spec : Prop :=
  ∀ n, P3884009551542773311.a n = A036581 n

end A036581

/-!
# A036582: Ternary Thue-Morse sequence: closed under a->abc, b->ac, c->b.

The programs for A036582, the canonical program `A036582.P18337015569781502361` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036582 has offset 0).

The definition of A036582 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036582.P18337015569781502361

`A036579(n)+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A036582

/-- `A036579(n)+1` -/
def P18337015569781502361.Spec : Prop :=
  ∀ n, P18337015569781502361.a n = A036582 n

theorem P18337015569781502361.correct : P18337015569781502361.Spec := by
  intro n
  simp only [A036582]

end A036582

/-! ## A036582.P6959109480407847770

`3-A036578(n)`
-/

namespace A036582.P6959109480407847770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A036578 n

end

end A036582.P6959109480407847770

namespace A036582

/-- `3-A036578(n)` -/
def P6959109480407847770.Spec : Prop :=
  ∀ n, P6959109480407847770.a n = A036582 n

end A036582

/-! ## A036582.P7355036476923175932

`4-A005679(n+1)`
-/

namespace A036582.P7355036476923175932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A005679 (n + 1)

end

end A036582.P7355036476923175932

namespace A036582

/-- `4-A005679(n+1)` -/
def P7355036476923175932.Spec : Prop :=
  ∀ n, P7355036476923175932.a n = A036582 n

end A036582

/-! ## A036582.P15849784648895165918

`a(A036584(n))` with `a(0)=2, a(1)=3, a(2)=1, a(3)=2`
-/

namespace A036582.P15849784648895165918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 1, 2] fun n a =>
  a (A036584 n).toNat

end

end A036582.P15849784648895165918

namespace A036582

/-- `a(A036584(n))` -/
def P15849784648895165918.Spec : Prop :=
  ∀ n, (P15849784648895165918.a n : ℤ) = A036582 n

end A036582

/-! ## A036582.P4881539583902350748

`ceil(acot(Δ[A001285(n)]))+1`
-/

namespace A036582.P4881539583902350748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (f1 (n + 1) - f1 n : ℝ)⌉ + 1

end

end A036582.P4881539583902350748

namespace A036582

/-- `ceil(acot(Δ[A001285(n)]))+1` -/
def P4881539583902350748.Spec : Prop :=
  ∀ n, P4881539583902350748.a n = A036582 n

end A036582

/-! ## A036582.P1377509171553419608

`ceil(acot(Δ[A010060(n)]))+1`
-/

namespace A036582.P1377509171553419608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (f1 (n + 1) - f1 n : ℝ)⌉ + 1

end

end A036582.P1377509171553419608

namespace A036582

/-- `ceil(acot(Δ[A010060(n)]))+1` -/
def P1377509171553419608.Spec : Prop :=
  ∀ n, P1377509171553419608.a n = A036582 n

end A036582

/-! ## A036582.P6667645381118883681

`A007413(n+1)%3+1`
-/

namespace A036582.P6667645381118883681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007413 (n + 1)) 3 + 1

end

end A036582.P6667645381118883681

namespace A036582

/-- `A007413(n+1)%3+1` -/
def P6667645381118883681.Spec : Prop :=
  ∀ n, P6667645381118883681.a n = A036582 n

end A036582

/-! ## A036582.P5047990341788707862

`A276445(Δ[A010060(n)]+2)`
-/

namespace A036582.P5047990341788707862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276445 (f1 (n + 1) - f1 n + 2).toNat

end

end A036582.P5047990341788707862

namespace A036582

/-- `A276445(Δ[A010060(n)]+2)` -/
def P5047990341788707862.Spec : Prop :=
  ∀ n, P5047990341788707862.a n = A036582 n

end A036582

/-! ## A036582.P8333630350630503454

`A014963(9-Δ[A001285(n)])`
-/

namespace A036582.P8333630350630503454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (9 - (f1 (n + 1) - f1 n)).toNat

end

end A036582.P8333630350630503454

namespace A036582

/-- `A014963(9-Δ[A001285(n)])` -/
def P8333630350630503454.Spec : Prop :=
  ∀ n, P8333630350630503454.a n = A036582 n

end A036582

/-! ## A036582.P14535148158845545936

`A010882(A233775(n+1)-1)`
-/

namespace A036582.P14535148158845545936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A233775 (n + 1) - 1).toNat

end

end A036582.P14535148158845545936

namespace A036582

/-- `A010882(A233775(n+1)-1)` -/
def P14535148158845545936.Spec : Prop :=
  ∀ n, P14535148158845545936.a n = A036582 n

end A036582

/-! ## A036582.P1313283127921648727

`A036583(n)+A029883(n+1)`
-/

namespace A036582.P1313283127921648727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036583 n + A029883 (n + 1)

end

end A036582.P1313283127921648727

namespace A036582

/-- `A036583(n)+A029883(n+1)` -/
def P1313283127921648727.Spec : Prop :=
  ∀ n, P1313283127921648727.a n = A036582 n

end A036582

/-! ## A036582.P1896065743206237771

`A036581(n)+A036577(n+1)`
-/

namespace A036582.P1896065743206237771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036581 n + A036577 (n + 1)

end

end A036582.P1896065743206237771

namespace A036582

/-- `A036581(n)+A036577(n+1)` -/
def P1896065743206237771.Spec : Prop :=
  ∀ n, P1896065743206237771.a n = A036582 n

end A036582

/-! ## A036582.P6613272358607858185

`A036583(n)+1-A036580(n)`
-/

namespace A036582.P6613272358607858185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036583 n + (1 - A036580 n)

end

end A036582.P6613272358607858185

namespace A036582

/-- `A036583(n)+1-A036580(n)` -/
def P6613272358607858185.Spec : Prop :=
  ∀ n, P6613272358607858185.a n = A036582 n

end A036582

/-! ## A036582.P14789924652327305531

`gcd(A036586(n), A354384(n+1))`
-/

namespace A036582.P14789924652327305531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036586 n) (A354384 (n + 1))

end

end A036582.P14789924652327305531

namespace A036582

/-- `gcd(A036586(n), A354384(n+1))` -/
def P14789924652327305531.Spec : Prop :=
  ∀ n, (P14789924652327305531.a n : ℤ) = A036582 n

end A036582

/-! ## A036582.P16883471965681367966

`xor(A007413(n+1), A036584(n))`
-/

namespace A036582.P16883471965681367966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007413 (n + 1)) (A036584 n)

end

end A036582.P16883471965681367966

namespace A036582

/-- `xor(A007413(n+1), A036584(n))` -/
def P16883471965681367966.Spec : Prop :=
  ∀ n, P16883471965681367966.a n = A036582 n

end A036582

/-! ## A036582.P969735175453645212

`A004736((2-Δ[A010059(n)])²)`
-/

namespace A036582.P969735175453645212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 ((2 - (f1 (n + 1) - f1 n)) ^ 2).toNat

end

end A036582.P969735175453645212

namespace A036582

/-- `A004736((2-Δ[A010059(n)])²)` -/
def P969735175453645212.Spec : Prop :=
  ∀ n, P969735175453645212.a n = A036582 n

end A036582

/-! ## A036582.P10461639067112725734

`A007413(Δ[A000069(n+1)]+1)`
-/

namespace A036582.P10461639067112725734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007413 (f1 (n + 1) - f1 n + 1).toNat

end

end A036582.P10461639067112725734

namespace A036582

/-- `A007413(Δ[A000069(n+1)]+1)` -/
def P10461639067112725734.Spec : Prop :=
  ∀ n, P10461639067112725734.a n = A036582 n

end A036582

/-! ## A036582.P1602504241616403980

`A014963(Δ[A000069(n+1)]+7)`
-/

namespace A036582.P1602504241616403980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f1 (n + 1) - f1 n + 7).toNat

end

end A036582.P1602504241616403980

namespace A036582

/-- `A014963(Δ[A000069(n+1)]+7)` -/
def P1602504241616403980.Spec : Prop :=
  ∀ n, P1602504241616403980.a n = A036582 n

end A036582

/-! ## A036582.P2234653947628404892

`A001222(10-Δ[A000069(n+1)])`
-/

namespace A036582.P2234653947628404892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (10 - (f1 (n + 1) - f1 n)).toNat

end

end A036582.P2234653947628404892

namespace A036582

/-- `A001222(10-Δ[A000069(n+1)])` -/
def P2234653947628404892.Spec : Prop :=
  ∀ n, P2234653947628404892.a n = A036582 n

end A036582

/-! ## A036582.P14963868224515809949

`A000040(Δ[A000069(n+1)])%4`
-/

namespace A036582.P14963868224515809949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (f1 (n + 1) - f1 n).toNat) 4

end

end A036582.P14963868224515809949

namespace A036582

/-- `A000040(Δ[A000069(n+1)])%4` -/
def P14963868224515809949.Spec : Prop :=
  ∀ n, P14963868224515809949.a n = A036582 n

end A036582

/-!
# A036583: Ternary Thue-Morse sequence: closed under a->abc, b->ac, c->b.

The programs for A036583, the canonical program `A036583.P6799421790634942612` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036583 has offset 0).

The definition of A036583 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036583.P6799421790634942612

`A036581(n)+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A036583

/-- `A036581(n)+1` -/
def P6799421790634942612.Spec : Prop :=
  ∀ n, P6799421790634942612.a n = A036583 n

theorem P6799421790634942612.correct : P6799421790634942612.Spec := by
  intro n
  simp only [A036583]

end A036583

/-! ## A036583.P7474750926875089209

`3-A036586(n)`
-/

namespace A036583.P7474750926875089209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A036586 n

end

end A036583.P7474750926875089209

namespace A036583

/-- `3-A036586(n)` -/
def P7474750926875089209.Spec : Prop :=
  ∀ n, P7474750926875089209.a n = A036583 n

end A036583

/-! ## A036583.P8708637213269604007

`4-A036584(n)`
-/

namespace A036583.P8708637213269604007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A036584 n

end

end A036583.P8708637213269604007

namespace A036583

/-- `4-A036584(n)` -/
def P8708637213269604007.Spec : Prop :=
  ∀ n, P8708637213269604007.a n = A036583 n

end A036583

/-! ## A036583.P12024453255510190317

`Δ[A074938(n)/2]%6`
-/

namespace A036583.P12024453255510190317
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074938 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)) 6

end

end A036583.P12024453255510190317

namespace A036583

/-- `Δ[A074938(n)/2]%6` -/
def P12024453255510190317.Spec : Prop :=
  ∀ n, P12024453255510190317.a n = A036583 n

end A036583

/-! ## A036583.P14443747208033325746

`A036585(n+1)%3+1`
-/

namespace A036583.P14443747208033325746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036585 (n + 1)) 3 + 1

end

end A036583.P14443747208033325746

namespace A036583

/-- `A036585(n+1)%3+1` -/
def P14443747208033325746.Spec : Prop :=
  ∀ n, P14443747208033325746.a n = A036583 n

end A036583

/-! ## A036583.P13346723261121818090

`(A036577(n+1)+1)%3+1`
-/

namespace A036583.P13346723261121818090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036577 (n + 1) + 1) 3 + 1

end

end A036583.P13346723261121818090

namespace A036583

/-- `(A036577(n+1)+1)%3+1` -/
def P13346723261121818090.Spec : Prop :=
  ∀ n, P13346723261121818090.a n = A036583 n

end A036583

/-! ## A036583.P6253930198520449846

`A036580(n)+A036579(n)`
-/

namespace A036583.P6253930198520449846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036580 n + A036579 n

end

end A036583.P6253930198520449846

namespace A036583

/-- `A036580(n)+A036579(n)` -/
def P6253930198520449846.Spec : Prop :=
  ∀ n, P6253930198520449846.a n = A036583 n

end A036583

/-! ## A036583.P7533647313182098969

`A276445(2-Δ[A010060(n)])`
-/

namespace A036583.P7533647313182098969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276445 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A036583.P7533647313182098969

namespace A036583

/-- `A276445(2-Δ[A010060(n)])` -/
def P7533647313182098969.Spec : Prop :=
  ∀ n, P7533647313182098969.a n = A036583 n

end A036583

/-! ## A036583.P283174946925725656

`A130784(A233775(n+1)+1)`
-/

namespace A036583.P283174946925725656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130784 (A233775 (n + 1) + 1).toNat

end

end A036583.P283174946925725656

namespace A036583

/-- `A130784(A233775(n+1)+1)` -/
def P283174946925725656.Spec : Prop :=
  ∀ n, P283174946925725656.a n = A036583 n

end A036583

/-! ## A036583.P6474526774874417391

`A036582(n)-A029883(n+1)`
-/

namespace A036583.P6474526774874417391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036582 n - A029883 (n + 1)

end

end A036583.P6474526774874417391

namespace A036583

/-- `A036582(n)-A029883(n+1)` -/
def P6474526774874417391.Spec : Prop :=
  ∀ n, P6474526774874417391.a n = A036583 n

end A036583

/-! ## A036583.P9148770156110190570

`A354384(n+1)-A036578(n)`
-/

namespace A036583.P9148770156110190570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354384 (n + 1) - A036578 n

end

end A036583.P9148770156110190570

namespace A036583

/-- `A354384(n+1)-A036578(n)` -/
def P9148770156110190570.Spec : Prop :=
  ∀ n, P9148770156110190570.a n = A036583 n

end A036583

/-! ## A036583.P16251059714026955200

`A004736((Δ[A010059(n)]+2)²)`
-/

namespace A036583.P16251059714026955200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 ((f1 (n + 1) - f1 n + 2) ^ 2).toNat

end

end A036583.P16251059714026955200

namespace A036583

/-- `A004736((Δ[A010059(n)]+2)²)` -/
def P16251059714026955200.Spec : Prop :=
  ∀ n, P16251059714026955200.a n = A036583 n

end A036583

/-! ## A036583.P17091556805239655600

`A001222(Δ[A000069(n+1)]+6)`
-/

namespace A036583.P17091556805239655600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n + 6).toNat

end

end A036583.P17091556805239655600

namespace A036583

/-- `A001222(Δ[A000069(n+1)]+6)` -/
def P17091556805239655600.Spec : Prop :=
  ∀ n, P17091556805239655600.a n = A036583 n

end A036583

/-! ## A036583.P8938358466374119934

`A014963(6/Δ[A000069(n+1)])`
-/

namespace A036583.P8938358466374119934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway (6 / (f1 (n + 1) - f1 n : ℚ))).toNat

end

end A036583.P8938358466374119934

namespace A036583

/-- `A014963(6/Δ[A000069(n+1)])` -/
def P8938358466374119934.Spec : Prop :=
  ∀ n, P8938358466374119934.a n = A036583 n

end A036583

/-! ## A036583.P2281439941667964426

`A085068(1-Δ[A000120(n)%2])`
-/

namespace A036583.P2281439941667964426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085068 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A036583.P2281439941667964426

namespace A036583

/-- `A085068(1-Δ[A000120(n)%2])` -/
def P2281439941667964426.Spec : Prop :=
  ∀ n, P2281439941667964426.a n = A036583 n

end A036583

/-! ## A036583.P13508472363279438662

`A000041(xor(1, Δ[A000069(n+1)]))`
-/

namespace A036583.P13508472363279438662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.xor 1 (f1 (n + 1) - f1 n)).toNat

end

end A036583.P13508472363279438662

namespace A036583

/-- `A000041(xor(1, Δ[A000069(n+1)]))` -/
def P13508472363279438662.Spec : Prop :=
  ∀ n, P13508472363279438662.a n = A036583 n

end A036583

/-! ## A036583.P7809821076305998425

`A007413(n+1)+A036582(n)-2`
-/

namespace A036583.P7809821076305998425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007413 (n + 1) + (A036582 n - 2)

end

end A036583.P7809821076305998425

namespace A036583

/-- `A007413(n+1)+A036582(n)-2` -/
def P7809821076305998425.Spec : Prop :=
  ∀ n, P7809821076305998425.a n = A036583 n

end A036583

/-! ## A036583.P641181264555612127

`xor(A005679(n+1), A036585(n+1))`
-/

namespace A036583.P641181264555612127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005679 (n + 1)) (A036585 (n + 1))

end

end A036583.P641181264555612127

namespace A036583

/-- `xor(A005679(n+1), A036585(n+1))` -/
def P641181264555612127.Spec : Prop :=
  ∀ n, P641181264555612127.a n = A036583 n

end A036583

/-! ## A036583.P14084268674837329699

`A014963(A000032(Δ[A000069(n+1)]))`
-/

namespace A036583.P14084268674837329699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000032 (f1 (n + 1) - f1 n).toNat).toNat

end

end A036583.P14084268674837329699

namespace A036583

/-- `A014963(A000032(Δ[A000069(n+1)]))` -/
def P14084268674837329699.Spec : Prop :=
  ∀ n, P14084268674837329699.a n = A036583 n

end A036583

/-! ## A036583.P14920688518980037704

`A014963(A000203(Δ[A000069(n+1)]))`
-/

namespace A036583.P14920688518980037704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000203 (f1 (n + 1) - f1 n).toNat).toNat

end

end A036583.P14920688518980037704

namespace A036583

/-- `A014963(A000203(Δ[A000069(n+1)]))` -/
def P14920688518980037704.Spec : Prop :=
  ∀ n, P14920688518980037704.a n = A036583 n

end A036583

/-!
# A036584: Ternary Thue-Morse sequence: closed under a->abc, b->ac, c->b.

The programs for A036584, the canonical program `A036584.P6783415784682243525` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036584 has offset 0).

The definition of A036584 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036584.P7404630885433084289

`A036586(n)+1`
-/

namespace A036584.P7404630885433084289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036586 n + 1

end

end A036584.P7404630885433084289

namespace A036584

/-- `A036586(n)+1` -/
def P7404630885433084289.Spec : Prop :=
  ∀ n, P7404630885433084289.a n = A036584 n

end A036584

/-! ## A036584.P6783415784682243525

`3-A036581(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A036584

/-- `3-A036581(n)` -/
def P6783415784682243525.Spec : Prop :=
  ∀ n, P6783415784682243525.a n = A036584 n

theorem P6783415784682243525.correct : P6783415784682243525.Spec := by
  intro n
  simp only [A036584]

end A036584

/-! ## A036584.P7446892373116133676

`4-A036583(n)`
-/

namespace A036584.P7446892373116133676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A036583 n

end

end A036584.P7446892373116133676

namespace A036584

/-- `4-A036583(n)` -/
def P7446892373116133676.Spec : Prop :=
  ∀ n, P7446892373116133676.a n = A036584 n

end A036584

/-! ## A036584.P10099702666738611028

`A233775(n+1)%3+1`
-/

namespace A036584.P10099702666738611028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233775 (n + 1)) 3 + 1

end

end A036584.P10099702666738611028

namespace A036584

/-- `A233775(n+1)%3+1` -/
def P10099702666738611028.Spec : Prop :=
  ∀ n, P10099702666738611028.a n = A036584 n

end A036584

/-! ## A036584.P1923295525754000866

`(9-Δ[A001285(n)])%3+1`
-/

namespace A036584.P1923295525754000866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (9 - (f1 (n + 1) - f1 n)) 3 + 1

end

end A036584.P1923295525754000866

namespace A036584

/-- `(9-Δ[A001285(n)])%3+1` -/
def P1923295525754000866.Spec : Prop :=
  ∀ n, P1923295525754000866.a n = A036584 n

end A036584

/-! ## A036584.P12031626111725576735

`a(A007413(n+1)-1)` with `a(0)=3, a(1)=1, a(2)=2`
-/

namespace A036584.P12031626111725576735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 2] fun n a =>
  a (A007413 (n + 1) - 1).toNat

end

end A036584.P12031626111725576735

namespace A036584

/-- `a(A007413(n+1)-1)` -/
def P12031626111725576735.Spec : Prop :=
  ∀ n, (P12031626111725576735.a n : ℤ) = A036584 n

end A036584

/-! ## A036584.P2261482285634546773

`A010882(A233775(n+1))`
-/

namespace A036584.P2261482285634546773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A233775 (n + 1)).toNat

end

end A036584.P2261482285634546773

namespace A036584

/-- `A010882(A233775(n+1))` -/
def P2261482285634546773.Spec : Prop :=
  ∀ n, P2261482285634546773.a n = A036584 n

end A036584

/-! ## A036584.P17787019271266466525

`A000032(Δ[A001285(n)]+1)`
-/

namespace A036584.P17787019271266466525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (n + 1) - f1 n + 1).toNat

end

end A036584.P17787019271266466525

namespace A036584

/-- `A000032(Δ[A001285(n)]+1)` -/
def P17787019271266466525.Spec : Prop :=
  ∀ n, P17787019271266466525.a n = A036584 n

end A036584

/-! ## A036584.P17661808628648175890

`A000032(1-Δ[A010059(n)])`
-/

namespace A036584.P17661808628648175890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A036584.P17661808628648175890

namespace A036584

/-- `A000032(1-Δ[A010059(n)])` -/
def P17661808628648175890.Spec : Prop :=
  ∀ n, P17661808628648175890.a n = A036584 n

end A036584

/-! ## A036584.P11427966011206095245

`A117407(2-Δ[A010059(n)])`
-/

namespace A036584.P11427966011206095245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117407 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A036584.P11427966011206095245

namespace A036584

/-- `A117407(2-Δ[A010059(n)])` -/
def P11427966011206095245.Spec : Prop :=
  ∀ n, P11427966011206095245.a n = A036584 n

end A036584

/-! ## A036584.P7216075579655105450

`A004736(3-Δ[A010059(n)])`
-/

namespace A036584.P7216075579655105450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (3 - (f1 (n + 1) - f1 n)).toNat

end

end A036584.P7216075579655105450

namespace A036584

/-- `A004736(3-Δ[A010059(n)])` -/
def P7216075579655105450.Spec : Prop :=
  ∀ n, P7216075579655105450.a n = A036584 n

end A036584

/-! ## A036584.P1244700969850057165

`A001222(Δ[A010060(n)]+7)`
-/

namespace A036584.P1244700969850057165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n + 7).toNat

end

end A036584.P1244700969850057165

namespace A036584

/-- `A001222(Δ[A010060(n)]+7)` -/
def P1244700969850057165.Spec : Prop :=
  ∀ n, P1244700969850057165.a n = A036584 n

end A036584

/-! ## A036584.P15872585002171782600

`A036578(n)+A036577(n+1)`
-/

namespace A036584.P15872585002171782600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036578 n + A036577 (n + 1)

end

end A036584.P15872585002171782600

namespace A036584

/-- `A036578(n)+A036577(n+1)` -/
def P15872585002171782600.Spec : Prop :=
  ∀ n, P15872585002171782600.a n = A036584 n

end A036584

/-! ## A036584.P7859246982691209523

`A316826(n+1)+A036578(n)`
-/

namespace A036584.P7859246982691209523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 (n + 1) + A036578 n

end

end A036584.P7859246982691209523

namespace A036584

/-- `A316826(n+1)+A036578(n)` -/
def P7859246982691209523.Spec : Prop :=
  ∀ n, P7859246982691209523.a n = A036584 n

end A036584

/-! ## A036584.P7584215668370855395

`xor(A007413(n+1), A036582(n))`
-/

namespace A036584.P7584215668370855395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007413 (n + 1)) (A036582 n)

end

end A036584.P7584215668370855395

namespace A036584

/-- `xor(A007413(n+1), A036582(n))` -/
def P7584215668370855395.Spec : Prop :=
  ∀ n, P7584215668370855395.a n = A036584 n

end A036584

/-! ## A036584.P17800157245246917255

`A161916(2-floor(ratio[A001285(n)]))`
-/

namespace A036584.P17800157245246917255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161916 (2 - ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋).toNat

end

end A036584.P17800157245246917255

namespace A036584

/-- `A161916(2-floor(ratio[A001285(n)]))` -/
def P17800157245246917255.Spec : Prop :=
  ∀ n, P17800157245246917255.a n = A036584 n

end A036584

/-! ## A036584.P7178750962077263222

`A161916(floor(ratio[1/A001285(n)]))`
-/

namespace A036584.P7178750962077263222
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A001285 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161916 ⌊f1 (n + 1) / f1 n⌋.toNat

end

end A036584.P7178750962077263222

namespace A036584

/-- `A161916(floor(ratio[1/A001285(n)]))` -/
def P7178750962077263222.Spec : Prop :=
  ∀ n, P7178750962077263222.a n = A036584 n

end A036584

/-! ## A036584.P12746986485641370894

`A036583(xor(n, xor(n, A036583(n))))`
-/

namespace A036584.P12746986485641370894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036583 (Int.xor (n : ℤ) (Int.xor (n : ℤ) (A036583 n))).toNat

end

end A036584.P12746986485641370894

namespace A036584

/-- `A036583(xor(n, xor(n, A036583(n))))` -/
def P12746986485641370894.Spec : Prop :=
  ∀ n, P12746986485641370894.a n = A036584 n

end A036584

/-! ## A036584.P5614644095036105253

`A245188(xor(n, xor(n, A245188(n))))`
-/

namespace A036584.P5614644095036105253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245188 (Int.xor (n : ℤ) (Int.xor (n : ℤ) (A245188 n))).toNat

end

end A036584.P5614644095036105253

namespace A036584

/-- `A245188(xor(n, xor(n, A245188(n))))` -/
def P5614644095036105253.Spec : Prop :=
  ∀ n, P5614644095036105253.a n = A036584 n

end A036584

/-! ## A036584.P13130199819372238017

`A000032(Δ[A000120(n)%2]+1)`
-/

namespace A036584.P13130199819372238017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (n + 1) - f1 n + 1).toNat

end

end A036584.P13130199819372238017

namespace A036584

/-- `A000032(Δ[A000120(n)%2]+1)` -/
def P13130199819372238017.Spec : Prop :=
  ∀ n, P13130199819372238017.a n = A036584 n

end A036584

/-!
# A036585: Ternary Thue-Morse sequence: closed under a->abc, b->ac, c->b.

The programs for A036585, the canonical program `A036585.P17220132576541787484` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036585 has offset 1).

The definition of A036585 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001969, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A036585.P6789003653906385045

`A036577(n+1)+1`
-/

namespace A036585.P6789003653906385045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036577 (n + 1) + 1

end

end A036585.P6789003653906385045

namespace A036585

/-- `A036577(n+1)+1` -/
def P6789003653906385045.Spec : Prop :=
  ∀ n, P6789003653906385045.a n = A036585 (n + 1)

end A036585

/-! ## A036585.P9259862730330354018

`A029883(n+1)+2`
-/

namespace A036585.P9259862730330354018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029883 (n + 1) + 2

end

end A036585.P9259862730330354018

namespace A036585

/-- `A029883(n+1)+2` -/
def P9259862730330354018.Spec : Prop :=
  ∀ n, P9259862730330354018.a n = A036585 (n + 1)

end A036585

/-! ## A036585.P17220132576541787484

`A001969(n+2)-A001969(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A036585

/-- `A001969(n+2)-A001969(n+1)` -/
def P17220132576541787484.Spec : Prop :=
  ∀ n, P17220132576541787484.a n = A036585 (n + 1)

theorem P17220132576541787484.correct : P17220132576541787484.Spec := by
  intro n
  simp only [A036585, Nat.add_sub_cancel]

end A036585

/-! ## A036585.P13383085309259412992

`Δ[2/a(and(n, n-1))]+2` with `a(0)=1`
-/

namespace A036585.P13383085309259412992
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 / f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A036585.P13383085309259412992

namespace A036585

/-- `Δ[2/a(and(n, n-1))]+2` -/
def P13383085309259412992.Spec : Prop :=
  ∀ n, P13383085309259412992.a n = (A036585 (n + 1) : ℚ)

end A036585

/-! ## A036585.P8387719922056271543

`2-Δ[abs(1-a(and(n, n-1)))]` with `a(0)=1`
-/

namespace A036585.P8387719922056271543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  |1 - f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A036585.P8387719922056271543

namespace A036585

/-- `2-Δ[abs(1-a(and(n, n-1)))]` -/
def P8387719922056271543.Spec : Prop :=
  ∀ n, P8387719922056271543.a n = A036585 (n + 1)

end A036585

/-! ## A036585.P14081626926317288062

`Δ[gcd(2, val(n*a(n-1), 2))]+2` with `a(0)=1`
-/

namespace A036585.P14081626926317288062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.gcd 2 (SequenceMachineLib.valuation (n * f1 (n - 1)) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2

end

end A036585.P14081626926317288062

namespace A036585

/-- `Δ[gcd(2, val(n*a(n-1), 2))]+2` -/
def P14081626926317288062.Spec : Prop :=
  ∀ n, P14081626926317288062.a n = A036585 (n + 1)

end A036585

/-! ## A036585.P7876363535946619209

`2-Δ[and(1, a(and(n, n-1))+1)]` with `a(0)=1`
-/

namespace A036585.P7876363535946619209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.land 1 (f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A036585.P7876363535946619209

namespace A036585

/-- `2-Δ[and(1, a(and(n, n-1))+1)]` -/
def P7876363535946619209.Spec : Prop :=
  ∀ n, P7876363535946619209.a n = A036585 (n + 1)

end A036585

/-! ## A036585.P1864735656681542231

`3-A036580(n)`
-/

namespace A036585.P1864735656681542231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A036580 n

end

end A036585.P1864735656681542231

namespace A036585

/-- `3-A036580(n)` -/
def P1864735656681542231.Spec : Prop :=
  ∀ n, P1864735656681542231.a n = A036585 (n + 1)

end A036585

/-! ## A036585.P13137706071522424138

`Δ[A001285(n)]+2`
-/

namespace A036585.P13137706071522424138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A036585.P13137706071522424138

namespace A036585

/-- `Δ[A001285(n)]+2` -/
def P13137706071522424138.Spec : Prop :=
  ∀ n, P13137706071522424138.a n = A036585 (n + 1)

end A036585

/-! ## A036585.P7264971518353114601

`Δ[A010060(n)]+2`
-/

namespace A036585.P7264971518353114601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A036585.P7264971518353114601

namespace A036585

/-- `Δ[A010060(n)]+2` -/
def P7264971518353114601.Spec : Prop :=
  ∀ n, P7264971518353114601.a n = A036585 (n + 1)

end A036585

/-! ## A036585.P4377093599283945624

`2-Δ[A010059(n)]`
-/

namespace A036585.P4377093599283945624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A036585.P4377093599283945624

namespace A036585

/-- `2-Δ[A010059(n)]` -/
def P4377093599283945624.Spec : Prop :=
  ∀ n, P4377093599283945624.a n = A036585 (n + 1)

end A036585

/-! ## A036585.P10970755638030062564

`A316826(n+1)+1`
-/

namespace A036585.P10970755638030062564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 (n + 1) + 1

end

end A036585.P10970755638030062564

namespace A036585

/-- `A316826(n+1)+1` -/
def P10970755638030062564.Spec : Prop :=
  ∀ n, P10970755638030062564.a n = A036585 (n + 1)

end A036585

/-! ## A036585.P8656033006430698245

`4-A007413(n+1)`
-/

namespace A036585.P8656033006430698245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A007413 (n + 1)

end

end A036585.P8656033006430698245

namespace A036585

/-- `4-A007413(n+1)` -/
def P8656033006430698245.Spec : Prop :=
  ∀ n, P8656033006430698245.a n = A036585 (n + 1)

end A036585

/-! ## A036585.P9833297287064191364

`5-A354384(n+1)`
-/

namespace A036585.P9833297287064191364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A354384 (n + 1)

end

end A036585.P9833297287064191364

namespace A036585

/-- `5-A354384(n+1)` -/
def P9833297287064191364.Spec : Prop :=
  ∀ n, P9833297287064191364.a n = A036585 (n + 1)

end A036585

/-! ## A036585.P15721623802224051665

`a(A036584(n))` with `a(0)=3, a(1)=2, a(2)=1, a(3)=3`
-/

namespace A036585.P15721623802224051665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 1, 3] fun n a =>
  a (A036584 n).toNat

end

end A036585.P15721623802224051665

namespace A036585

/-- `a(A036584(n))` -/
def P15721623802224051665.Spec : Prop :=
  ∀ n, (P15721623802224051665.a n : ℤ) = A036585 (n + 1)

end A036585

/-! ## A036585.P10860933939396798886

`4-Δ[A000069(n+1)]`
-/

namespace A036585.P10860933939396798886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (f1 (n + 1) - f1 n)

end

end A036585.P10860933939396798886

namespace A036585

/-- `4-Δ[A000069(n+1)]` -/
def P10860933939396798886.Spec : Prop :=
  ∀ n, P10860933939396798886.a n = A036585 (n + 1)

end A036585

/-! ## A036585.P14673422235438404640

`Δ[A254379(2*n)]+2`
-/

namespace A036585.P14673422235438404640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A036585.P14673422235438404640

namespace A036585

/-- `Δ[A254379(2*n)]+2` -/
def P14673422235438404640.Spec : Prop :=
  ∀ n, P14673422235438404640.a n = A036585 (n + 1)

end A036585

/-! ## A036585.P14466731334299368969

`Δ[A316828(2*n)]+2`
-/

namespace A036585.P14466731334299368969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A036585.P14466731334299368969

namespace A036585

/-- `Δ[A316828(2*n)]+2` -/
def P14466731334299368969.Spec : Prop :=
  ∀ n, P14466731334299368969.a n = A036585 (n + 1)

end A036585

/-!
# A036586: Ternary Thue-Morse sequence: closed under a->abc, b->ac, c->b.

The programs for A036586, the canonical program `A036586.P6008186881590982081` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036586 has offset 0).

The definition of A036586 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036586.P6008186881590982081

`A036584(n)-1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A036586

/-- `A036584(n)-1` -/
def P6008186881590982081.Spec : Prop :=
  ∀ n, P6008186881590982081.a n = A036586 n

theorem P6008186881590982081.correct : P6008186881590982081.Spec := by
  intro n
  simp only [A036586]

end A036586

/-! ## A036586.P11700092090741828664

`2-A036581(n)`
-/

namespace A036586.P11700092090741828664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A036581 n

end

end A036586.P11700092090741828664

namespace A036586

/-- `2-A036581(n)` -/
def P11700092090741828664.Spec : Prop :=
  ∀ n, P11700092090741828664.a n = A036586 n

end A036586

/-! ## A036586.P9440777054758326007

`3-A036583(n)`
-/

namespace A036586.P9440777054758326007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A036583 n

end

end A036586.P9440777054758326007

namespace A036586

/-- `3-A036583(n)` -/
def P9440777054758326007.Spec : Prop :=
  ∀ n, P9440777054758326007.a n = A036586 n

end A036586

/-! ## A036586.P6326548480001215256

`A036582(n)%3`
-/

namespace A036586.P6326548480001215256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036582 n) 3

end

end A036586.P6326548480001215256

namespace A036586

/-- `A036582(n)%3` -/
def P6326548480001215256.Spec : Prop :=
  ∀ n, P6326548480001215256.a n = A036586 n

end A036586

/-! ## A036586.P12869820778165378743

`a(A036580(n))` with `a(0)=2, a(1)=0, a(2)=1`
-/

namespace A036586.P12869820778165378743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 1] fun n a =>
  a (A036580 n).toNat

end

end A036586.P12869820778165378743

namespace A036586

/-- `a(A036580(n))` -/
def P12869820778165378743.Spec : Prop :=
  ∀ n, (P12869820778165378743.a n : ℤ) = A036586 n

end A036586

/-! ## A036586.P225774375551674887

`A233775(n+1)%3`
-/

namespace A036586.P225774375551674887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233775 (n + 1)) 3

end

end A036586.P225774375551674887

namespace A036586

/-- `A233775(n+1)%3` -/
def P225774375551674887.Spec : Prop :=
  ∀ n, P225774375551674887.a n = A036586 n

end A036586

/-! ## A036586.P16099200842817983918

`A354384(n+1)%3`
-/

namespace A036586.P16099200842817983918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354384 (n + 1)) 3

end

end A036586.P16099200842817983918

namespace A036586

/-- `A354384(n+1)%3` -/
def P16099200842817983918.Spec : Prop :=
  ∀ n, P16099200842817983918.a n = A036586 n

end A036586

/-! ## A036586.P3292245189321255973

`a(a(A036579(n)))` with `a(0)=2, a(1)=0, a(2)=1`
-/

namespace A036586.P3292245189321255973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 1] fun n a =>
  a (a (A036579 n).toNat)

end

end A036586.P3292245189321255973

namespace A036586

/-- `a(a(A036579(n)))` -/
def P3292245189321255973.Spec : Prop :=
  ∀ n, (P3292245189321255973.a n : ℤ) = A036586 n

end A036586

/-! ## A036586.P2551711629002458006

`(9-Δ[A001285(n)])%3`
-/

namespace A036586.P2551711629002458006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (9 - (f1 (n + 1) - f1 n)) 3

end

end A036586.P2551711629002458006

namespace A036586

/-- `(9-Δ[A001285(n)])%3` -/
def P2551711629002458006.Spec : Prop :=
  ∀ n, P2551711629002458006.a n = A036586 n

end A036586

/-! ## A036586.P13133774493277351022

`(A007413(n+1)+1)%3`
-/

namespace A036586.P13133774493277351022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007413 (n + 1) + 1) 3

end

end A036586.P13133774493277351022

namespace A036586

/-- `(A007413(n+1)+1)%3` -/
def P13133774493277351022.Spec : Prop :=
  ∀ n, P13133774493277351022.a n = A036586 n

end A036586

/-! ## A036586.P18310503352047898706

`(3-A029883(n+1))%3`
-/

namespace A036586.P18310503352047898706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 - A029883 (n + 1)) 3

end

end A036586.P18310503352047898706

namespace A036586

/-- `(3-A029883(n+1))%3` -/
def P18310503352047898706.Spec : Prop :=
  ∀ n, P18310503352047898706.a n = A036586 n

end A036586

/-! ## A036586.P13490016020427848773

`val(A316826(n+1)+2, 2)`
-/

namespace A036586.P13490016020427848773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A316826 (n + 1) + 2).toNat 2

end

end A036586.P13490016020427848773

namespace A036586

/-- `val(A316826(n+1)+2, 2)` -/
def P13490016020427848773.Spec : Prop :=
  ∀ n, (P13490016020427848773.a n : ℤ) = A036586 n

end A036586

/-! ## A036586.P10898227905428141951

`C(7, A036585(n+1))%3`
-/

namespace A036586.P10898227905428141951
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 7 (A036585 (n + 1)).toNat % 3

end

end A036586.P10898227905428141951

namespace A036586

/-- `C(7, A036585(n+1))%3` -/
def P10898227905428141951.Spec : Prop :=
  ∀ n, (P10898227905428141951.a n : ℤ) = A036586 n

end A036586

/-! ## A036586.P15814225229675104975

`A010872(A233775(n+1))`
-/

namespace A036586.P15814225229675104975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A233775 (n + 1)).toNat

end

end A036586.P15814225229675104975

namespace A036586

/-- `A010872(A233775(n+1))` -/
def P15814225229675104975.Spec : Prop :=
  ∀ n, P15814225229675104975.a n = A036586 n

end A036586

/-! ## A036586.P9312314938575617466

`A001513(n)%A036584(n)`
-/

namespace A036586.P9312314938575617466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001513 n) (A036584 n)

end

end A036586.P9312314938575617466

namespace A036586

/-- `A001513(n)%A036584(n)` -/
def P9312314938575617466.Spec : Prop :=
  ∀ n, P9312314938575617466.a n = A036586 n

end A036586

/-! ## A036586.P1487555058726023264

`A001538(n)%A036584(n)`
-/

namespace A036586.P1487555058726023264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A036584 n)

end

end A036586.P1487555058726023264

namespace A036586

/-- `A001538(n)%A036584(n)` -/
def P1487555058726023264.Spec : Prop :=
  ∀ n, P1487555058726023264.a n = A036586 n

end A036586

/-! ## A036586.P13850649676468864165

`A016969(n)%A036584(n)`
-/

namespace A036586.P13850649676468864165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016969 n) (A036584 n)

end

end A036586.P13850649676468864165

namespace A036586

/-- `A016969(n)%A036584(n)` -/
def P13850649676468864165.Spec : Prop :=
  ∀ n, P13850649676468864165.a n = A036586 n

end A036586

/-! ## A036586.P16592468261518838434

`A016971(n)%A036584(n)`
-/

namespace A036586.P16592468261518838434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016971 n) (A036584 n)

end

end A036586.P16592468261518838434

namespace A036586

/-- `A016971(n)%A036584(n)` -/
def P16592468261518838434.Spec : Prop :=
  ∀ n, P16592468261518838434.a n = A036586 n

end A036586

/-! ## A036586.P14693816374547869478

`A016973(n)%A036584(n)`
-/

namespace A036586.P14693816374547869478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016973 n) (A036584 n)

end

end A036586.P14693816374547869478

namespace A036586

/-- `A016973(n)%A036584(n)` -/
def P14693816374547869478.Spec : Prop :=
  ∀ n, P14693816374547869478.a n = A036586 n

end A036586

/-!
# A036587: Number of binary rooted trees with n nodes and height at most 4.

The programs for A036587, there is no canonical definition to state claims against.
-/

/-! ## A036587.P18408867226838486416

`A036602(n+15)`
-/

namespace A036587.P18408867226838486416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036602 (n + 15)

end

end A036587.P18408867226838486416

/-! ## A036587.P5776559063741820473

`A036588(n)-A036594(n)`
-/

namespace A036587.P5776559063741820473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036588 n - A036594 n

end

end A036587.P5776559063741820473

/-! ## A036587.P1289194507957924384

`A036589(n)-(A036595(n)+A036594(n))`
-/

namespace A036587.P1289194507957924384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036589 n - (A036595 n + A036594 n)

end

end A036587.P1289194507957924384

/-! ## A036587.P16830006296936965871

`A120126(A036589(n)-A036595(n)-A036594(n))`
-/

namespace A036587.P16830006296936965871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120126 (A036589 n - A036595 n - A036594 n).toNat

end

end A036587.P16830006296936965871

/-! ## A036587.P11221771771877544070

`A036589(n)-A036595(n)-A036594(A254667(n))`
-/

namespace A036587.P11221771771877544070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036589 n - A036595 n - A036594 (A254667 n).toNat

end

end A036587.P11221771771877544070

/-!
# A036588: Number of binary rooted trees with n nodes and height at most 5.

The programs for A036588, there is no canonical definition to state claims against.
-/

/-! ## A036588.P10703967742577849758

`A036602(n+31)`
-/

namespace A036588.P10703967742577849758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036602 (n + 31)

end

end A036588.P10703967742577849758

/-! ## A036588.P1537411699853398214

`A036589(n)-A036595(n)`
-/

namespace A036588.P1537411699853398214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036589 n - A036595 n

end

end A036588.P1537411699853398214

/-! ## A036588.P9980627118142396659

`A036590(n)-(A036596(n)+A036595(n))`
-/

namespace A036588.P9980627118142396659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036590 n - (A036596 n + A036595 n)

end

end A036588.P9980627118142396659

/-! ## A036588.P4422443694124549515

`A036590(n)-A036596(n)-A036595(A254667(n))`
-/

namespace A036588.P4422443694124549515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036590 n - A036596 n - A036595 (A254667 n).toNat

end

end A036588.P4422443694124549515

/-! ## A036588.P14202828760619489616

`A036591(n)-(A036597(n)+A036596(n))-A036595(n)`
-/

namespace A036588.P14202828760619489616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036591 n - (A036597 n + A036596 n) - A036595 n

end

end A036588.P14202828760619489616

/-!
# A036589: Number of binary rooted trees with n nodes and height at most 6.

The programs for A036589, there is no canonical definition to state claims against.
-/

/-! ## A036589.P15227047403651935542

`A036602(n+63)`
-/

namespace A036589.P15227047403651935542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036602 (n + 63)

end

end A036589.P15227047403651935542

/-! ## A036589.P7105613227099221685

`A036590(n)-A036596(n)`
-/

namespace A036589.P7105613227099221685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036590 n - A036596 n

end

end A036589.P7105613227099221685

/-! ## A036589.P5010273213907504944

`A036591(n)-(A036597(n)+A036596(n))`
-/

namespace A036589.P5010273213907504944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036591 n - (A036597 n + A036596 n)

end

end A036589.P5010273213907504944

/-! ## A036589.P12668453654002994735

`A036590(n)+A036596(n)*A134824(n)`
-/

namespace A036589.P12668453654002994735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036590 n + A036596 n * A134824 n

end

end A036589.P12668453654002994735

/-! ## A036589.P12483656410877987237

`A036591(n)-A036597(n)-A036596(A254667(n))`
-/

namespace A036589.P12483656410877987237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036591 n - A036597 n - A036596 (A254667 n).toNat

end

end A036589.P12483656410877987237

/-!
# A036590: Number of binary rooted trees with n nodes and height at most 7.

The programs for A036590, there is no canonical definition to state claims against.
-/

/-! ## A036590.P12724578905252878629

`A036591(n)-A036597(n)`
-/

namespace A036590.P12724578905252878629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036591 n - A036597 n

end

end A036590.P12724578905252878629

/-! ## A036590.P9630315693193720452

`A036592(n)-(A036598(n)+A036597(n))`
-/

namespace A036590.P9630315693193720452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036592 n - (A036598 n + A036597 n)

end

end A036590.P9630315693193720452

/-! ## A036590.P11920305946364427988

`A036591(n)+A036597(n)*A057428(n)`
-/

namespace A036590.P11920305946364427988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036591 n + A036597 n * A057428 n

end

end A036590.P11920305946364427988

/-! ## A036590.P14918259065525079076

`A036591(n)+A036597(n)*A134824(n)`
-/

namespace A036590.P14918259065525079076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036591 n + A036597 n * A134824 n

end

end A036590.P14918259065525079076

/-! ## A036590.P14547615845071058713

`A036591(n)+A036597(n)/or(-1, A000041(n))`
-/

namespace A036590.P14547615845071058713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036591 n : ℚ) + (A036597 n : ℚ) / (Int.lor (-1) (A000041 n) : ℚ)

end

end A036590.P14547615845071058713

/-! ## A036590.P8399163010803648817

`A036596(n)+A036589(n)`
-/

namespace A036590.P8399163010803648817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036596 n + A036589 n

end

end A036590.P8399163010803648817

/-! ## A036590.P10873548358600183979

`A036589(n)-A036596(n)*A134824(n)`
-/

namespace A036590.P10873548358600183979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036589 n - A036596 n * A134824 n

end

end A036590.P10873548358600183979

/-!
# A036591: Number of binary rooted trees with n nodes and height at most 8.

The programs for A036591, there is no canonical definition to state claims against.
-/

/-! ## A036591.P6795156493050077190

`A036592(n)-A036598(n)`
-/

namespace A036591.P6795156493050077190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036592 n - A036598 n

end

end A036591.P6795156493050077190

/-! ## A036591.P9424686965756070979

`A036592(n)+A036598(n)*A134824(n)`
-/

namespace A036591.P9424686965756070979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036592 n + A036598 n * A134824 n

end

end A036591.P9424686965756070979

/-! ## A036591.P13120675120925792356

`A036597(n)+A036590(n)`
-/

namespace A036591.P13120675120925792356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036597 n + A036590 n

end

end A036591.P13120675120925792356

/-! ## A036591.P16082402623519628833

`A036590(n)-A036597(n)*A134824(n)`
-/

namespace A036591.P16082402623519628833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036590 n - A036597 n * A134824 n

end

end A036591.P16082402623519628833

/-! ## A036591.P11464716762144649815

`A036589(n)+A036597(n)+A036596(n)`
-/

namespace A036591.P11464716762144649815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036589 n + (A036597 n + A036596 n)

end

end A036591.P11464716762144649815

/-!
# A036592: Number of binary rooted trees with n nodes and height at most 9.

The programs for A036592, there is no canonical definition to state claims against.
-/

/-! ## A036592.P17958780288028546264

`A036598(n)+A036591(n)`
-/

namespace A036592.P17958780288028546264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036598 n + A036591 n

end

end A036592.P17958780288028546264

/-! ## A036592.P16440163127266665858

`A036591(n)-A036598(n)*A057428(n)`
-/

namespace A036592.P16440163127266665858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036591 n - A036598 n * A057428 n

end

end A036592.P16440163127266665858

/-! ## A036592.P417193654845228417

`A036591(n)-A036598(n)*A134824(n)`
-/

namespace A036592.P417193654845228417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036591 n - A036598 n * A134824 n

end

end A036592.P417193654845228417

/-! ## A036592.P10784127699881829402

`A036590(n)+A036598(n)+A036597(n)`
-/

namespace A036592.P10784127699881829402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036590 n + (A036598 n + A036597 n)

end

end A036592.P10784127699881829402

/-! ## A036592.P3328672309600798106

`A036598(n)+A036589(n)+A036597(n)+A036596(n)`
-/

namespace A036592.P3328672309600798106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036598 n + (A036589 n + (A036597 n + A036596 n))

end

end A036592.P3328672309600798106

/-!
# A036594: Number of binary rooted trees with n nodes and height exactly 5.

The programs for A036594, there is no canonical definition to state claims against.
-/

/-! ## A036594.P14816924734338271201

`A036588(n)-A036587(n)`
-/

namespace A036594.P14816924734338271201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036588 n - A036587 n

end

end A036594.P14816924734338271201

/-! ## A036594.P16849432871687582854

`A036602(n+31)-A036587(n)`
-/

namespace A036594.P16849432871687582854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036602 (n + 31) - A036587 n

end

end A036594.P16849432871687582854

/-! ## A036594.P1080037047521060061

`A036589(n)-(A036595(n)+A036587(n))`
-/

namespace A036594.P1080037047521060061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036589 n - (A036595 n + A036587 n)

end

end A036594.P1080037047521060061

/-! ## A036594.P11481581113695893637

`A036589(n)-A036595(n)-A036587(A254667(n))`
-/

namespace A036594.P11481581113695893637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036589 n - A036595 n - A036587 (A254667 n).toNat

end

end A036594.P11481581113695893637

/-! ## A036594.P4718246542903918434

`A036590(n)-(A036596(n)+A036595(n))-A036587(n)`
-/

namespace A036594.P4718246542903918434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036590 n - (A036596 n + A036595 n) - A036587 n

end

end A036594.P4718246542903918434

/-!
# A036595: Number of binary rooted trees with n nodes and height exactly 6.

The programs for A036595, there is no canonical definition to state claims against.
-/

/-! ## A036595.P11038958381527717827

`A036589(n)-A036588(n)`
-/

namespace A036595.P11038958381527717827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036589 n - A036588 n

end

end A036595.P11038958381527717827

/-! ## A036595.P5832027614592455990

`A036602(n+63)-A036588(n)`
-/

namespace A036595.P5832027614592455990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036602 (n + 63) - A036588 n

end

end A036595.P5832027614592455990

/-! ## A036595.P10063291477497684519

`A036590(n)-(A036596(n)+A036588(n))`
-/

namespace A036595.P10063291477497684519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036590 n - (A036596 n + A036588 n)

end

end A036595.P10063291477497684519

/-! ## A036595.P10297519196150588716

`A036590(n)-A036596(n)-A036588(A254667(n))`
-/

namespace A036595.P10297519196150588716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036590 n - A036596 n - A036588 (A254667 n).toNat

end

end A036595.P10297519196150588716

/-! ## A036595.P1014082158655623951

`A036591(n)-(A036597(n)+A036596(n))-A036588(n)`
-/

namespace A036595.P1014082158655623951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036591 n - (A036597 n + A036596 n) - A036588 n

end

end A036595.P1014082158655623951

/-!
# A036596: Number of binary rooted trees with n nodes and height exactly 7.

The programs for A036596, there is no canonical definition to state claims against.
-/

/-! ## A036596.P15678359594546009263

`A036590(n)-A036589(n)`
-/

namespace A036596.P15678359594546009263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036590 n - A036589 n

end

end A036596.P15678359594546009263

/-! ## A036596.P2918332433832327192

`A036591(n)-(A036597(n)+A036589(n))`
-/

namespace A036596.P2918332433832327192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036591 n - (A036597 n + A036589 n)

end

end A036596.P2918332433832327192

/-! ## A036596.P2987964222159498886

`A036591(n)-A036597(n)-A036589(A254667(n))`
-/

namespace A036596.P2987964222159498886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036591 n - A036597 n - A036589 (A254667 n).toNat

end

end A036596.P2987964222159498886

/-! ## A036596.P16209093356940177245

`A036591(A028310(n))%(A036597(n)+A036589(n))`
-/

namespace A036596.P16209093356940177245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036591 (A028310 n).toNat) (A036597 n + A036589 n)

end

end A036596.P16209093356940177245

/-! ## A036596.P9573345883651705770

`A036590(n)+A008683(A008578(n+2))*A036589(n)`
-/

namespace A036596.P9573345883651705770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036590 n + A008683 (A008578 (n + 2)).toNat * A036589 n

end

end A036596.P9573345883651705770

/-! ## A036596.P9699019622435918526

`A036592(n)-(A036598(n)+A036597(n))-A036589(n)`
-/

namespace A036596.P9699019622435918526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036592 n - (A036598 n + A036597 n) - A036589 n

end

end A036596.P9699019622435918526

/-!
# A036597: Number of binary rooted trees with n nodes and height exactly 8.

The programs for A036597, there is no canonical definition to state claims against.
-/

/-! ## A036597.P17996890832549332292

`A036591(n)-A036590(n)`
-/

namespace A036597.P17996890832549332292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036591 n - A036590 n

end

end A036597.P17996890832549332292

/-! ## A036597.P16206472362772478797

`A036592(n)-(A036598(n)+A036590(n))`
-/

namespace A036597.P16206472362772478797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036592 n - (A036598 n + A036590 n)

end

end A036597.P16206472362772478797

/-! ## A036597.P15061292654226715836

`A036591(n)-(A036596(n)+A036589(n))`
-/

namespace A036597.P15061292654226715836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036591 n - (A036596 n + A036589 n)

end

end A036597.P15061292654226715836

/-! ## A036597.P9905343745203588186

`A036592(n)-A036598(n)-(A036596(n)+A036589(n))`
-/

namespace A036597.P9905343745203588186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036592 n - A036598 n - (A036596 n + A036589 n)

end

end A036597.P9905343745203588186

/-! ## A036597.P10612744026418096392

`A036591(n)-(A036589(n)-A036596(n)*A134824(n))`
-/

namespace A036597.P10612744026418096392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036591 n - (A036589 n - A036596 n * A134824 n)

end

end A036597.P10612744026418096392

/-!
# A036598: Number of binary rooted trees with n nodes and height exactly 9.

The programs for A036598, there is no canonical definition to state claims against.
-/

/-! ## A036598.P14831870149240595331

`A036592(n)-A036591(n)`
-/

namespace A036598.P14831870149240595331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036592 n - A036591 n

end

end A036598.P14831870149240595331

/-! ## A036598.P14931622594212070159

`A036592(n)-(A036597(n)+A036590(n))`
-/

namespace A036598.P14931622594212070159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036592 n - (A036597 n + A036590 n)

end

end A036598.P14931622594212070159

/-! ## A036598.P7715001514011400885

`A036592(n)-(A036590(n)-A036597(n)*A134824(n))`
-/

namespace A036598.P7715001514011400885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036592 n - (A036590 n - A036597 n * A134824 n)

end

end A036598.P7715001514011400885

/-! ## A036598.P8585232612136540616

`A036592(n)-(A036589(n)+A036597(n)+A036596(n))`
-/

namespace A036598.P8585232612136540616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036592 n - (A036589 n + (A036597 n + A036596 n))

end

end A036598.P8585232612136540616

/-! ## A036598.P5655571308251191071

`A036592(n)%A036591(n)*A014963(A058159(n+1))`
-/

namespace A036598.P5655571308251191071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036592 n) (A036591 n) * A014963 (A058159 (n + 1)).toNat

end

end A036598.P5655571308251191071

/-!
# A036599: Number of binary rooted trees with n nodes and height exactly 10.

The programs for A036599, there is no canonical definition to state claims against.
-/

/-! ## A036599.P11619002508856183560

`∑[∑[A000194(A055024(n))]]`
-/

namespace A036599.P11619002508856183560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A055024 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036599.P11619002508856183560

/-! ## A036599.P5778101218688222804

`Δ[A036600(n)]-A107846(A023425(n))`
-/

namespace A036599.P5778101218688222804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A107846 (A023425 n).toNat

end

end A036599.P5778101218688222804

/-! ## A036599.P13058135292288469331

`A262040(C(floor(n-atan(n)), 8))`
-/

namespace A036599.P13058135292288469331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262040 (Nat.choose ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat 8)

end

end A036599.P13058135292288469331

/-! ## A036599.P2610717995459058619

`A329200(C(floor(n-atan(n)), 8))`
-/

namespace A036599.P2610717995459058619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329200 (Nat.choose ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat 8)

end

end A036599.P2610717995459058619

/-! ## A036599.P5469132981618489056

`Δ[Δ[A178334(8*12*C(n, 12))]]`
-/

namespace A036599.P5469132981618489056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (8 * (12 * Nat.choose n 12))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036599.P5469132981618489056

