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
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C031
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A182900: Triangle read by rows: T(n,k) is the number of weighted lattice paths in B(n) having k valleys. The members of B(n) are paths of weight n that start at (0,0), end on but never go below the horizontal axis, and whose steps are of the following four kinds: an (1,0)-step with weight 1, an (1,0)-step with weight 2, a (1,1)-step with weight 2, and a (1,-1)-step with weight 1. The weight of a path is the sum of the weights of its steps. A valley is a (1,-1)-step followed by a (1,1)-step.

The programs for A182900, there is no canonical definition to state claims against.
-/

/-! ## A182900.P999337781812385128

`A247297(n)-A309785(A079960(n))`
-/

namespace A182900.P999337781812385128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247297 n - A309785 (A079960 n).toNat

end

end A182900.P999337781812385128

/-! ## A182900.P15476381884117459329

`A258997(n)+A098083(A001104(n+1))`
-/

namespace A182900.P15476381884117459329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258997 n + A098083 (A001104 (n + 1)).toNat

end

end A182900.P15476381884117459329

/-! ## A182900.P5765974598479440148

`A258997(n)+A098083(A002998(n+1))`
-/

namespace A182900.P5765974598479440148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258997 n + A098083 (A002998 (n + 1)).toNat

end

end A182900.P5765974598479440148

/-! ## A182900.P6328006914534756428

`A258997(n)+A098083(A276142(n+1))`
-/

namespace A182900.P6328006914534756428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258997 n + A098083 (A276142 (n + 1)).toNat

end

end A182900.P6328006914534756428

/-! ## A182900.P9398641962277603725

`A247297(n)-A097946(A110320(n+3))`
-/

namespace A182900.P9398641962277603725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247297 n - A097946 (A110320 (n + 3)).toNat

end

end A182900.P9398641962277603725

/-!
# A182901: Number of weighted lattice paths in B(n) having no valleys. The members of B(n) are paths of weight n that start at (0,0), end on but never go below the horizontal axis, and whose steps are of the following four kinds: an (1,0)-step with weight 1, an (1,0)-step with weight 2, a (1,1)-step with weight 2, and a (1,-1)-step with weight 1. The weight of a path is the sum of the weights of its steps. A valley is a (1,-1)-step followed by a (1,1)-step.

The programs for A182901, there is no canonical definition to state claims against.
-/

/-! ## A182901.P14998234543831207077

`A162985(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A182901.P14998234543831207077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A162985 (n + 1) - a (n - 1)

end

end A182901.P14998234543831207077

/-! ## A182901.P4315383745330358030

`A182900(lt[A182977(n), 2*A182900(n)])`
-/

namespace A182901.P4315383745330358030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A182900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182900 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A182901.P4315383745330358030

/-! ## A182901.P8580361919185450963

`A182900(lt[A182977(n)/2, A182900(n)])`
-/

namespace A182901.P8580361919185450963
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182977 n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182900 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A182901.P8580361919185450963

/-! ## A182901.P11641251601272218618

`A182900(lt[A182977(n), A182900(n)])`
-/

namespace A182901.P11641251601272218618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182900 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A182901.P11641251601272218618

/-! ## A182901.P11197710905350273454

`A182900(lt[A241321(n)², A182900(n)])`
-/

namespace A182901.P11197710905350273454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241321 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182900 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A182901.P11197710905350273454

/-!
# A182902: Number of valleys in all weighted lattice paths in B(n).

The programs for A182902, there is no canonical definition to state claims against.
-/

/-! ## A182902.P6064808437770751621

`floor(A349413(n)/24)`
-/

namespace A182902.P6064808437770751621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A349413 n : ℚ) / 24⌋

end

end A182902.P6064808437770751621

/-! ## A182902.P5589104665170994751

`A002262(C(n, 6)²+10)`
-/

namespace A182902.P5589104665170994751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (Nat.choose n 6 ^ 2 + 10)

end

end A182902.P5589104665170994751

/-! ## A182902.P294379209020689203

`round(sqrt(2*A241771(n+1)))`
-/

namespace A182902.P294379209020689203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A241771 (n + 1) : ℝ))

end

end A182902.P294379209020689203

/-! ## A182902.P697939026385532438

`A130527(A036677(n))`
-/

namespace A182902.P697939026385532438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130527 (A036677 n).toNat

end

end A182902.P697939026385532438

/-! ## A182902.P7945627878189712198

`A327469(A007827(n))`
-/

namespace A182902.P7945627878189712198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327469 (A007827 n).toNat

end

end A182902.P7945627878189712198

/-!
# A182904: Number of weighted lattice paths in L_n having no peaks. The members of L_n are paths of weight n that start at (0,0), end on the horizontal axis and whose steps are of the following four kinds: an (1,0)-step with weight 1, an (1,0)-step with weight 2, a (1,1)-step with weight 2, and a (1,-1)-step with weight 1. The weight of a path is the sum of the weights of its steps. A peak is a (1,1)-step followed by a (1,-1)-step.

The programs for A182904, there is no canonical definition to state claims against.
-/

/-! ## A182904.P2410089848525859585

`A182903(floor(∑[(n+1)/3]))`
-/

namespace A182904.P2410089848525859585
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182903 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋.toNat

end

end A182904.P2410089848525859585

/-! ## A182904.P12696826987348754459

`A182903(A001840(n))^A178334(n)`
-/

namespace A182904.P12696826987348754459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182903 (A001840 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A182904.P12696826987348754459

/-! ## A182904.P9108622101407789198

`or(A000007(n), A182903(A001840(n)))`
-/

namespace A182904.P9108622101407789198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A182903 (A001840 n).toNat)

end

end A182904.P9108622101407789198

/-! ## A182904.P16849433082348027181

`A182903(A001840(n))%A091964(n+1)`
-/

namespace A182904.P16849433082348027181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182903 (A001840 n).toNat) (A091964 (n + 1))

end

end A182904.P16849433082348027181

/-! ## A182904.P8361939257377886906

`or(A182903(A001840(n)), A309785(n+1))`
-/

namespace A182904.P8361939257377886906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A182903 (A001840 n).toNat) (A309785 (n + 1))

end

end A182904.P8361939257377886906

/-!
# A182905: Number of weighted lattice paths in F[n]. The members of F[n] are paths of weight n that start at (0,0), do not go below the horizontal axis, and whose steps are of the following four kinds: an (1,0)-step with weight 1, an (1,0)-step with weight 2, a (1,1)-step with weight 2, and a (1,-1)-step with weight 1. The weight of a path is the sum of the weights of its steps.

The programs for A182905, there is no canonical definition to state claims against.
-/

/-! ## A182905.P4249300193464074757

`A329672(n)-a(n-1)` with `a(0)=1`
-/

namespace A182905.P4249300193464074757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A329672 n - a (n - 1)

end

end A182905.P4249300193464074757

/-! ## A182905.P15297816162461937481

`A329674(n+1)-A026150(n+1)`
-/

namespace A182905.P15297816162461937481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329674 (n + 1) - A026150 (n + 1)

end

end A182905.P15297816162461937481

/-! ## A182905.P18106912670860740627

`A048766(A119430(n))+A000129(n)`
-/

namespace A182905.P18106912670860740627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A119430 n).toNat + A000129 n

end

end A182905.P18106912670860740627

/-! ## A182905.P790523257052601671

`A100196(A129847(n)+A026641(n))`
-/

namespace A182905.P790523257052601671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A129847 n + A026641 n).toNat

end

end A182905.P790523257052601671

/-! ## A182905.P12510106712180825186

`A100196(A268430(n)+A008616(n))`
-/

namespace A182905.P12510106712180825186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A268430 n + A008616 n).toNat

end

end A182905.P12510106712180825186

/-!
# A182906: Triangle read by rows: T(n,k) is the number of weighted lattice paths in F[n] having endpoint height k (k<=floor(n/2)). The members of F[n] are paths of weight n that start at (0,0), do not go below the horizontal axis, and whose steps are of the following four kinds: an (1,0)-step with weight 1, an (1,0)-step with weight 2, a (1,1)-step with weight 2, and a (1,-1)-step with weight 1. The weight of a path is the sum of the weights of its steps.

The programs for A182906, there is no canonical definition to state claims against.
-/

/-! ## A182906.P2255397998256284013

`A291812(A132280(n)+1)`
-/

namespace A182906.P2255397998256284013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291812 (A132280 n + 1).toNat

end

end A182906.P2255397998256284013

/-! ## A182906.P3135775272129378529

`A291812(A106489(n+2)+1)`
-/

namespace A182906.P3135775272129378529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291812 (A106489 (n + 2) + 1).toNat

end

end A182906.P3135775272129378529

/-! ## A182906.P14227349183110698064

`A176844(A273896(n+2)+1)`
-/

namespace A182906.P14227349183110698064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176844 (A273896 (n + 2) + 1).toNat

end

end A182906.P14227349183110698064

/-!
# A182907: Triangle read by rows: row n is the degree sequence (written in nondecreasing order) of the rooted tree with Matula-Goebel number n.

The programs for A182907, there is no canonical definition to state claims against.
-/

/-! ## A182907.P3919795615539491964

`A322306(∑[A218970(A322337(n+4))])`
-/

namespace A182907.P3919795615539491964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218970 (A322337 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322306 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A182907.P3919795615539491964

/-! ## A182907.P12127226911604174198

`∑{e}[A346703(A214207(n+1)), #]`
-/

namespace A182907.P12127226911604174198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346703 (A214207 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A182907.P12127226911604174198

/-! ## A182907.P2093500943417634530

`gcd(A001221(A223126(n+2)), A033270(2*(n+1)))`
-/

namespace A182907.P2093500943417634530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A223126 (n + 2)).toNat) (A033270 (2 * (n + 1)))

end

end A182907.P2093500943417634530

/-! ## A182907.P10022384023048240383

`A001221(record[A328617(n+1)-A294902(n+1)])`
-/

namespace A182907.P10022384023048240383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328617 (n + 1) - A294902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A182907.P10022384023048240383

/-! ## A182907.P11506618517503327105

`A244415(A378133(n))`
-/

namespace A182907.P11506618517503327105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (A378133 n).toNat

end

end A182907.P11506618517503327105

/-!
# A182908: Rank of 2^n when all prime powers (A246655) p^n, for n>=1, are jointly ranked.

The programs for A182908, the canonical program `A182908.P17591284892401627303` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182908 has offset 1).

The definition of A182908 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025528, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A182908.P18004090703418153713

`A024622(n+1)-1`
-/

namespace A182908.P18004090703418153713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024622 (n + 1) - 1

end

end A182908.P18004090703418153713

namespace A182908

/-- `A024622(n+1)-1` -/
def P18004090703418153713.Spec : Prop :=
  ∀ n, P18004090703418153713.a n = A182908 (n + 1)

theorem P18004090703418153713.correct : P18004090703418153713.Spec := by
  intro n
  simp only [A182908, Nat.add_sub_cancel, A182908.P18004090703418153713.a, A182908.P17591284892401627303.a, A024622, A024622.P7610113690782019861.a, A025528, A025528.P16007803137134117632.f1, A025528.P16007803137134117632.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A182908

/-! ## A182908.P17591284892401627303

`A025528(2^(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A182908

/-- `A025528(2^(n+1))` -/
def P17591284892401627303.Spec : Prop :=
  ∀ n, P17591284892401627303.a n = A182908 (n + 1)

theorem P17591284892401627303.correct : P17591284892401627303.Spec := by
  intro n
  simp only [A182908, Nat.add_sub_cancel]

end A182908

/-! ## A182908.P6037797859567076102

`∑[A244508(n)+1]`
-/

namespace A182908.P6037797859567076102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244508 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182908.P6037797859567076102

namespace A182908

/-- `∑[A244508(n)+1]` -/
def P6037797859567076102.Spec : Prop :=
  ∀ n, P6037797859567076102.a n = A182908 (n + 1)

end A182908

/-! ## A182908.P10894863880105422195

`∑[A304521(n+1)]`
-/

namespace A182908.P10894863880105422195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182908.P10894863880105422195

namespace A182908

/-- `∑[A304521(n+1)]` -/
def P10894863880105422195.Spec : Prop :=
  ∀ n, P10894863880105422195.a n = A182908 (n + 1)

end A182908

/-! ## A182908.P10077187147524074256

`∑[abs(Δ[A024622(n)])]`
-/

namespace A182908.P10077187147524074256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024622 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182908.P10077187147524074256

namespace A182908

/-- `∑[abs(Δ[A024622(n)])]` -/
def P10077187147524074256.Spec : Prop :=
  ∀ n, P10077187147524074256.a n = A182908 (n + 1)

end A182908

/-! ## A182908.P14173669692355481746

`A244508(n)+A024622(n)`
-/

namespace A182908.P14173669692355481746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244508 n + A024622 n

end

end A182908.P14173669692355481746

namespace A182908

/-- `A244508(n)+A024622(n)` -/
def P14173669692355481746.Spec : Prop :=
  ∀ n, P14173669692355481746.a n = A182908 (n + 1)

end A182908

/-! ## A182908.P15659404816667615352

`∑[A036380(n+1)+A036378(n)]`
-/

namespace A182908.P15659404816667615352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036380 (n + 1) + A036378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182908.P15659404816667615352

namespace A182908

/-- `∑[A036380(n+1)+A036378(n)]` -/
def P15659404816667615352.Spec : Prop :=
  ∀ n, P15659404816667615352.a n = A182908 (n + 1)

end A182908

/-! ## A182908.P15454941668683923967

`A036386(n+1)+∑[A036378(n)]`
-/

namespace A182908.P15454941668683923967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036386 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182908.P15454941668683923967

namespace A182908

/-- `A036386(n+1)+∑[A036378(n)]` -/
def P15454941668683923967.Spec : Prop :=
  ∀ n, P15454941668683923967.a n = A182908 (n + 1)

end A182908

/-! ## A182908.P3147464667238523482

`A036386(n+1)+A007053(n+1)`
-/

namespace A182908.P3147464667238523482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036386 (n + 1) + A007053 (n + 1)

end

end A182908.P3147464667238523482

namespace A182908

/-- `A036386(n+1)+A007053(n+1)` -/
def P3147464667238523482.Spec : Prop :=
  ∀ n, P3147464667238523482.a n = A182908 (n + 1)

end A182908

/-! ## A182908.P3746825416197318201

`A001489(n+1)+A024622(n+1)+n`
-/

namespace A182908.P3746825416197318201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (n + 1) + (A024622 (n + 1) + (n : ℤ))

end

end A182908.P3746825416197318201

namespace A182908

/-- `A001489(n+1)+A024622(n+1)+n` -/
def P3746825416197318201.Spec : Prop :=
  ∀ n, P3746825416197318201.a n = A182908 (n + 1)

theorem P3746825416197318201.correct : P3746825416197318201.Spec := by
  intro n
  simp only [A182908, Nat.add_sub_cancel, A182908.P3746825416197318201.a, A182908.P17591284892401627303.a, A001489, A001489.P15233530513763566776.a, A024622, A024622.P7610113690782019861.a, A025528, A025528.P16007803137134117632.f1, A025528.P16007803137134117632.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A182908

/-!
# A182909: Ranks of composite numbers when all prime powers p^n for n>=1 are jointly ranked.

The programs for A182909, there is no canonical definition to state claims against.
-/

/-! ## A182909.P5058441377471898003

`lt[A000038(A192016(n+1)), A055642(n)]`
-/

namespace A182909.P5058441377471898003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A192016 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A182909.P5058441377471898003

/-! ## A182909.P15686070667638627230

`lt[A000038(A192016(n+1)), A138902(n)]`
-/

namespace A182909.P15686070667638627230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A192016 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138902 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A182909.P15686070667638627230

/-! ## A182909.P10919184648885551717

`lt[A000038(A192016(n+1)), A004218(n+1)]`
-/

namespace A182909.P10919184648885551717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A192016 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A182909.P10919184648885551717

/-! ## A182909.P8146904590065767355

`A130734(A024621(n+2))`
-/

namespace A182909.P8146904590065767355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130734 (A024621 (n + 2)).toNat

end

end A182909.P8146904590065767355

/-! ## A182909.P5293403251496199968

`eq[0, A000007(A192016(n+1))]`
-/

namespace A182909.P5293403251496199968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A192016 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182909.P5293403251496199968

/-!
# A182910: Number of unitary prime divisors of the swinging factorial (A056040) n$ = n! / floor(n/2)!^2.

The programs for A182910, there is no canonical definition to state claims against.
-/

/-! ## A182910.P2894517022608095061

`∑{e}[A056040(n), round(acot(#))]`
-/

namespace A182910.P2894517022608095061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, SequenceMachineLib.roundAway (SequenceMachineLib.acot (Nat.factorization (f1 n).natAbs p : ℝ))

end

end A182910.P2894517022608095061

/-! ## A182910.P1589721222683625011

`∑{e}[A056040(n), A000170(#)]`
-/

namespace A182910.P1589721222683625011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000170 (Nat.factorization (f1 n).natAbs p)

end

end A182910.P1589721222683625011

/-! ## A182910.P7139167456502776022

`∑{e}[A056040(n), A000997(#)]`
-/

namespace A182910.P7139167456502776022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000997 (Nat.factorization (f1 n).natAbs p)

end

end A182910.P7139167456502776022

/-! ## A182910.P17275394639192205307

`∑{e}[A056040(n), A002464(#)]`
-/

namespace A182910.P17275394639192205307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A002464 (Nat.factorization (f1 n).natAbs p)

end

end A182910.P17275394639192205307

/-! ## A182910.P560205440943835903

`∑{e}[A056040(n), A002562(#)]`
-/

namespace A182910.P560205440943835903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A002562 (Nat.factorization (f1 n).natAbs p)

end

end A182910.P560205440943835903

/-!
# A182911: Prime encoded sequence of generic integer partitions of n in the antilexicographic order of the partitions.

The programs for A182911, there is no canonical definition to state claims against.
-/

/-! ## A182911.P10310060130206728646

`A237593(A258171(n+1))^A258120(n+2)`
-/

namespace A182911.P10310060130206728646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237593 (A258171 (n + 1)).toNat : ℚ) ^ (A258120 (n + 2) : ℤ)

end

end A182911.P10310060130206728646

/-! ## A182911.P594685643804205878

`A079474(lt[A074290(n+3), A119559(n)²%3])`
-/

namespace A182911.P594685643804205878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074290 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119559 n ^ 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079474 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A182911.P594685643804205878

/-! ## A182911.P6996854012039407228

`A026549(and(n, A247002(n)))`
-/

namespace A182911.P6996854012039407228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 (Int.land (n : ℤ) (A247002 n)).toNat

end

end A182911.P6996854012039407228

/-!
# A182912: Numerators of an asymptotic series for the Gamma function (G. Nemes).

The programs for A182912, there is no canonical definition to state claims against.
-/

/-! ## A182912.P17828007462823121220

`1-and(round(ϕ*a(n-1)), A085634(n+1))` with `a(0)=1, a(1)=0`
-/

namespace A182912.P17828007462823121220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  1 - Int.land (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))) (A085634 (n + 1))

end

end A182912.P17828007462823121220

/-!
# A182913: Denominators of an asymptotic series for the Gamma function (G. Nemes).

The programs for A182913, there is no canonical definition to state claims against.
-/

/-! ## A182913.P3272201518388322361

`A046799(A048143(n))*A182920(n)`
-/

namespace A182913.P3272201518388322361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 (A048143 n).toNat * A182920 n

end

end A182913.P3272201518388322361

/-!
# A182917: Denominators of an asymptotic series for the factorial function (S. Wehmeier).

The programs for A182917, there is no canonical definition to state claims against.
-/

/-! ## A182917.P2238558800828777672

`∏[A154268(n)/2]`
-/

namespace A182917.P2238558800828777672
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154268 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A182917.P2238558800828777672

/-! ## A182917.P16337745194170861920

`∏[ratio[A001164(n)]/2]`
-/

namespace A182917.P16337745194170861920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001164 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A182917.P16337745194170861920

/-! ## A182917.P10413982204470233972

`A001164(n+1)/record[A001316(n+1)]`
-/

namespace A182917.P10413982204470233972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001164 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A182917.P10413982204470233972

/-! ## A182917.P1889364556677503956

`A001164(n+1)*A001164(n+1)/A144618(n+1)`
-/

namespace A182917.P1889364556677503956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001164 (n + 1) * A001164 (n + 1) : ℚ) / (A144618 (n + 1) : ℚ)

end

end A182917.P1889364556677503956

/-! ## A182917.P5637640248821887047

`∏[A004526(A154268(n))]`
-/

namespace A182917.P5637640248821887047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A154268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A182917.P5637640248821887047

/-!
# A182918: Denominators of the swinging Bernoulli number b_n.

The programs for A182918, there is no canonical definition to state claims against.
-/

/-! ## A182918.P13029792646177765880

`ceil(A227830(n)/A001405(n))`
-/

namespace A182918.P13029792646177765880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A227830 n : ℚ) / (A001405 n : ℚ)⌉

end

end A182918.P13029792646177765880

/-! ## A182918.P5250481041202480120

`ceil(A227830(n)/A056040(n))`
-/

namespace A182918.P5250481041202480120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A227830 n : ℚ) / (A056040 n : ℚ)⌉

end

end A182918.P5250481041202480120

/-!
# A182920: Denominators of an asymptotic series for the factorial function.

The programs for A182920, there is no canonical definition to state claims against.
-/

/-! ## A182920.P16914950325260888402

`A182913(n)/A133181(A182900(n))`
-/

namespace A182920.P16914950325260888402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182913 n : ℚ) / (A133181 (A182900 n).toNat : ℚ)

end

end A182920.P16914950325260888402

/-!
# A182921: Sum of exponents in prime-power factorization of the swinging factorial (A056040) n$ = n!/floor(n/2)!^2; also bigomega(n$).

The programs for A182921, the canonical program `A182921.P272631166531236110` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182921 has offset 0).

The definition of A182921 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182921.P3422678302058749801

`∑[(∑{e}[n+1, #]-1)/(-1)^n+1]-((∑{e}[n+1, #]-1)/(-1)^n+1)`
-/

namespace A182921.P3422678302058749801
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ) - 1 : ℚ) / ((-1) ^ n : ℚ) + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((((∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p : ℕ) : ℤ) - 1 : ℚ) / ((-1) ^ n : ℚ) + 1)

end

end A182921.P3422678302058749801

namespace A182921

/-- `∑[(∑{e}[n+1, #]-1)/(-1)^n+1]-((∑{e}[n+1, #]-1)/(-1)^n+1)` -/
def P3422678302058749801.Spec : Prop :=
  ∀ n, P3422678302058749801.a n = (A182921 n : ℚ)

end A182921

/-! ## A182921.P4697571483321940190

`∑[A317531(floor(acot(n)+n))]`
-/

namespace A182921.P4697571483321940190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317531 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182921.P4697571483321940190

namespace A182921

/-- `∑[A317531(floor(acot(n)+n))]` -/
def P4697571483321940190.Spec : Prop :=
  ∀ n, P4697571483321940190.a n = A182921 n

end A182921

/-! ## A182921.P272631166531236110

`A317531(n)+a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A182921

/-- `A317531(n)+a(n-1)` -/
def P272631166531236110.Spec : Prop :=
  ∀ n, P272631166531236110.a n = A182921 n

theorem P272631166531236110.correct : P272631166531236110.Spec := by
  intro n
  simp only [A182921]

end A182921

/-! ## A182921.P4655942715756196722

`∑[A317531(round(sqrt(n²+1)))]`
-/

namespace A182921.P4655942715756196722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317531 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182921.P4655942715756196722

namespace A182921

/-- `∑[A317531(round(sqrt(n²+1)))]` -/
def P4655942715756196722.Spec : Prop :=
  ∀ n, P4655942715756196722.a n = A182921 n

end A182921

/-! ## A182921.P13708168143358933739

`∑[A317531(abs(1-n)+1)]-1`
-/

namespace A182921.P13708168143358933739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317531 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A182921.P13708168143358933739

namespace A182921

/-- `∑[A317531(abs(1-n)+1)]-1` -/
def P13708168143358933739.Spec : Prop :=
  ∀ n, P13708168143358933739.a n = A182921 n

end A182921

/-! ## A182921.P14449485362239793335

`abs(∑[A317531(A028310(n))])`
-/

namespace A182921.P14449485362239793335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317531 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A182921.P14449485362239793335

namespace A182921

/-- `abs(∑[A317531(A028310(n))])` -/
def P14449485362239793335.Spec : Prop :=
  ∀ n, P14449485362239793335.a n = A182921 n

end A182921

/-!
# A182922: a(n) = n! / A055773(n).

The programs for A182922, the canonical program `A182922.P12836266675832290144` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182922 has offset 0).

The definition of A182922 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055773, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A182922.P12836266675832290144

`n!/A055773(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A182922

/-- `n!/A055773(n)` -/
def P12836266675832290144.Spec : Prop :=
  ∀ n, P12836266675832290144.a n = (A182922 n : ℚ)

end A182922

/-! ## A182922.P17588360278142225087

`A049614(n)*A300951(n)`
-/

namespace A182922.P17588360278142225087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049614 n * A300951 n

end

end A182922.P17588360278142225087

namespace A182922

/-- `A049614(n)*A300951(n)` -/
def P17588360278142225087.Spec : Prop :=
  ∀ n, P17588360278142225087.a n = A182922 n

end A182922

/-! ## A182922.P17504319410077839310

`A180064(n)*A182923(n)`
-/

namespace A182922.P17504319410077839310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180064 n * A182923 n

end

end A182922.P17504319410077839310

namespace A182922

/-- `A180064(n)*A182923(n)` -/
def P17504319410077839310.Spec : Prop :=
  ∀ n, P17504319410077839310.a n = A182922 n

end A182922

/-! ## A182922.P7478244344844167115

`A081123(n)²*A182923(n)`
-/

namespace A182922.P7478244344844167115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 n ^ 2 * A182923 n

end

end A182922.P7478244344844167115

namespace A182922

/-- `A081123(n)²*A182923(n)` -/
def P7478244344844167115.Spec : Prop :=
  ∀ n, P7478244344844167115.a n = A182922 n

end A182922

/-! ## A182922.P8276572039449339157

`A195504(n+1)²*A370971(n+1)`
-/

namespace A182922.P8276572039449339157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195504 (n + 1) ^ 2 * A370971 (n + 1)

end

end A182922.P8276572039449339157

namespace A182922

/-- `A195504(n+1)²*A370971(n+1)` -/
def P8276572039449339157.Spec : Prop :=
  ∀ n, P8276572039449339157.a n = A182922 n

end A182922

/-! ## A182922.P4842981435921955949

`A001044(A004526(n))*A182923(n)`
-/

namespace A182922.P4842981435921955949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001044 (A004526 n).toNat * A182923 n

end

end A182922.P4842981435921955949

namespace A182922

/-- `A001044(A004526(n))*A182923(n)` -/
def P4842981435921955949.Spec : Prop :=
  ∀ n, P4842981435921955949.a n = A182922 n

end A182922

/-! ## A182922.P6291258976286882063

`A034386(n)/A055773(n)*A049614(n)`
-/

namespace A182922.P6291258976286882063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 n : ℚ) / (A055773 n : ℚ) * (A049614 n : ℚ)

end

end A182922.P6291258976286882063

namespace A182922

/-- `A034386(n)/A055773(n)*A049614(n)` -/
def P6291258976286882063.Spec : Prop :=
  ∀ n, P6291258976286882063.a n = (A182922 n : ℚ)

end A182922

/-! ## A182922.P7835660857005133463

`A056040(n)/A055773(n)*A180064(n)`
-/

namespace A182922.P7835660857005133463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 n : ℚ) / (A055773 n : ℚ) * (A180064 n : ℚ)

end

end A182922.P7835660857005133463

namespace A182922

/-- `A056040(n)/A055773(n)*A180064(n)` -/
def P7835660857005133463.Spec : Prop :=
  ∀ n, P7835660857005133463.a n = (A182922 n : ℚ)

end A182922

/-! ## A182922.P18412658973992913187

`A180064(n)/A193477(n)*A180064(n)`
-/

namespace A182922.P18412658973992913187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180064 n : ℚ) / (A193477 n : ℚ) * (A180064 n : ℚ)

end

end A182922.P18412658973992913187

namespace A182922

/-- `A180064(n)/A193477(n)*A180064(n)` -/
def P18412658973992913187.Spec : Prop :=
  ∀ n, P18412658973992913187.a n = (A182922 n : ℚ)

end A182922

/-! ## A182922.P12685577148499307263

`A000142(n)/A055773(n)`
-/

namespace A182922.P12685577148499307263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A055773 n : ℚ)

end

end A182922.P12685577148499307263

namespace A182922

/-- `A000142(n)/A055773(n)` -/
def P12685577148499307263.Spec : Prop :=
  ∀ n, P12685577148499307263.a n = (A182922 n : ℚ)

end A182922

/-!
# A182923: a(n) = n$ / A055773(n), where n$ denotes the swinging factorial (A056040).

The programs for A182923, the canonical program `A182923.P17549914405111909947` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182923 has offset 0).

The definition of A182923 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182923.P17549914405111909947

`A056040(n)/A055773(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A182923

/-- `A056040(n)/A055773(n)` -/
def P17549914405111909947.Spec : Prop :=
  ∀ n, P17549914405111909947.a n = (A182923 n : ℚ)

end A182923

/-! ## A182923.P2379407061566105435

`∑[char[2*n]]*A057977(n)/A055773(n)`
-/

namespace A182923.P2379407061566105435
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A057977 n : ℚ) / (A055773 n : ℚ)

end

end A182923.P2379407061566105435

namespace A182923

/-- `∑[char[2*n]]*A057977(n)/A055773(n)` -/
def P2379407061566105435.Spec : Prop :=
  ∀ n, P2379407061566105435.a n = (A182923 n : ℚ)

end A182923

/-! ## A182923.P12193705102922199590

`(A189911(n)-A212303(n))/A055773(n)`
-/

namespace A182923.P12193705102922199590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189911 n - A212303 n : ℚ) / (A055773 n : ℚ)

end

end A182923.P12193705102922199590

namespace A182923

/-- `(A189911(n)-A212303(n))/A055773(n)` -/
def P12193705102922199590.Spec : Prop :=
  ∀ n, P12193705102922199590.a n = (A182923 n : ℚ)

end A182923

/-! ## A182923.P578161336403895504

`gcd(A049614(n), A056040(n))`
-/

namespace A182923.P578161336403895504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049614 n) (A056040 n)

end

end A182923.P578161336403895504

namespace A182923

/-- `gcd(A049614(n), A056040(n))` -/
def P578161336403895504.Spec : Prop :=
  ∀ n, (P578161336403895504.a n : ℤ) = A182923 n

end A182923

/-! ## A182923.P3912870365255819805

`A180064(n)/A193477(n)`
-/

namespace A182923.P3912870365255819805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180064 n : ℚ) / (A193477 n : ℚ)

end

end A182923.P3912870365255819805

namespace A182923

/-- `A180064(n)/A193477(n)` -/
def P3912870365255819805.Spec : Prop :=
  ∀ n, P3912870365255819805.a n = (A182923 n : ℚ)

end A182923

/-! ## A182923.P11688516738539531976

`A182922(n)/A180064(n)`
-/

namespace A182923.P11688516738539531976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182922 n : ℚ) / (A180064 n : ℚ)

end

end A182923.P11688516738539531976

namespace A182923

/-- `A182922(n)/A180064(n)` -/
def P11688516738539531976.Spec : Prop :=
  ∀ n, P11688516738539531976.a n = (A182923 n : ℚ)

end A182923

/-! ## A182923.P5994965788403566506

`A000142(n)/(A055773(n)*A180064(n))`
-/

namespace A182923.P5994965788403566506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A055773 n * A180064 n : ℚ)

end

end A182923.P5994965788403566506

namespace A182923

/-- `A000142(n)/(A055773(n)*A180064(n))` -/
def P5994965788403566506.Spec : Prop :=
  ∀ n, P5994965788403566506.a n = (A182923 n : ℚ)

end A182923

/-! ## A182923.P1878682612156213478

`A056040(n)/A000142(n)*A182922(n)`
-/

namespace A182923.P1878682612156213478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 n : ℚ) / (A000142 n : ℚ) * (A182922 n : ℚ)

end

end A182923.P1878682612156213478

namespace A182923

/-- `A056040(n)/A000142(n)*A182922(n)` -/
def P1878682612156213478.Spec : Prop :=
  ∀ n, P1878682612156213478.a n = (A182923 n : ℚ)

end A182923

/-! ## A182923.P715599441092884819

`A182073(A000096(n))/A055773(n)`
-/

namespace A182923.P715599441092884819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182073 (A000096 n).toNat : ℚ) / (A055773 n : ℚ)

end

end A182923.P715599441092884819

namespace A182923

/-- `A182073(A000096(n))/A055773(n)` -/
def P715599441092884819.Spec : Prop :=
  ∀ n, P715599441092884819.a n = (A182923 n : ℚ)

end A182923

/-!
# A182924: 

The programs for A182924, there is no canonical definition to state claims against.
-/

/-! ## A182924.P18393741708541944174

`A090210(∑[n+5]+5)`
-/

namespace A182924.P18393741708541944174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090210 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A182924.P18393741708541944174

/-!
# A182925: Generalized vertical Bell numbers of order 3.

The programs for A182925, there is no canonical definition to state claims against.
-/

/-! ## A182925.P14625203521516038084

`A090210(∑[n+4]+2)`
-/

namespace A182925.P14625203521516038084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090210 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A182925.P14625203521516038084

/-!
# A182926: Row sums of absolute values of A182928.

The programs for A182926, there is no canonical definition to state claims against.
-/

/-! ## A182926.P7271609897972668299

`A239015(A271654(n+1))+A000142(n)`
-/

namespace A182926.P7271609897972668299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239015 (A271654 (n + 1)).toNat + A000142 n

end

end A182926.P7271609897972668299

/-! ## A182926.P6111261340684057683

`A344917(A246006(n))+A006973(n+1)`
-/

namespace A182926.P6111261340684057683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344917 (A246006 n).toNat + A006973 (n + 1)

end

end A182926.P6111261340684057683

/-! ## A182926.P4917706488149937346

`A344917(A342318(n))+A006973(n+1)`
-/

namespace A182926.P4917706488149937346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344917 (A342318 n).toNat + A006973 (n + 1)

end

end A182926.P4917706488149937346

/-!
# A182928: Triangular array read by rows: [T(n,k),k=1..tau(n)] = [-n!/(d*(-(n/d)!)^d), d|n].

The programs for A182928, there is no canonical definition to state claims against.
-/

/-! ## A182928.P3822183557895308354

`A127671(eq[1, A103921(n)])`
-/

namespace A182928.P3822183557895308354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127671 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182928.P3822183557895308354

/-! ## A182928.P18379716964776536476

`A127671(eq[ceil(acot(n)), A048996(n)])`
-/

namespace A182928.P18379716964776536476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127671 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A182928.P18379716964776536476

/-! ## A182928.P7513020310129512550

`A127671(eq[A048996(n), A054977(n)])`
-/

namespace A182928.P7513020310129512550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048996 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127671 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A182928.P7513020310129512550

/-! ## A182928.P9061391612191447664

`A127671(eq[A048996(n), A057427(n)])`
-/

namespace A182928.P9061391612191447664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048996 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127671 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A182928.P9061391612191447664

/-!
# A182929: The rows of the binomial triangle reduced to balanced ternary lists encoded as decimal numbers.

The programs for A182929, there is no canonical definition to state claims against.
-/

/-! ## A182929.P16920132803985202263

`A017213(n)%A007738(A005030(n))`
-/

namespace A182929.P16920132803985202263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017213 n) (A007738 (A005030 n).toNat)

end

end A182929.P16920132803985202263

/-! ## A182929.P3925226768634650518

`A134027(A084972(n+1))%A085000(n+1)`
-/

namespace A182929.P3925226768634650518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134027 (A084972 (n + 1)).toNat) (A085000 (n + 1))

end

end A182929.P3925226768634650518

/-! ## A182929.P3118504066710622049

`A207376(A216632(2*(n+2)))%A007613(n)`
-/

namespace A182929.P3118504066710622049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207376 (A216632 (2 * (n + 2))).toNat) (A007613 n)

end

end A182929.P3118504066710622049

/-!
# A182930: Triangle read by rows: Number of set partitions of {1,2,..,n} such that |k| is a block and no block |m| with m < k exists, (1 <= n, 1 <= k <= n).

The programs for A182930, there is no canonical definition to state claims against.
-/

/-! ## A182930.P11472743017421030360

`A106436(A061579(n))`
-/

namespace A182930.P11472743017421030360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 (A061579 n).toNat

end

end A182930.P11472743017421030360

/-! ## A182930.P8909839387247683267

`A106436(A114327(n)+n)`
-/

namespace A182930.P8909839387247683267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 (A114327 n + (n : ℤ)).toNat

end

end A182930.P8909839387247683267

/-! ## A182930.P540213142970047335

`A106436(∑[A198954(n)-1])`
-/

namespace A182930.P540213142970047335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A182930.P540213142970047335

/-! ## A182930.P7143241970809358294

`A106436(A038722(n+1)-1)`
-/

namespace A182930.P7143241970809358294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 (A038722 (n + 1) - 1).toNat

end

end A182930.P7143241970809358294

/-! ## A182930.P373386954368634662

`A106436(A093995(n+1)-(n+1))`
-/

namespace A182930.P373386954368634662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A182930.P373386954368634662

/-! ## A182930.P8065741332250953442

`A106436(A057944(n)+A025581(n))`
-/

namespace A182930.P8065741332250953442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 (A057944 n + A025581 n).toNat

end

end A182930.P8065741332250953442

/-! ## A182930.P7566565538319615946

`A106436(A260196(n)+A038722(n+1))`
-/

namespace A182930.P7566565538319615946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 (A260196 n + A038722 (n + 1)).toNat

end

end A182930.P7566565538319615946

/-!
# A182931: Generalized Bell numbers; square array read by ascending antidiagonals, A(n, k) for n >= 0 and k >= 1.

The programs for A182931, there is no canonical definition to state claims against.
-/

/-! ## A182931.P8016747415358068924

`A293024(∑[2*n]%comp[∑[n]])`
-/

namespace A182931.P8016747415358068924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293024 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A182931.P8016747415358068924

/-! ## A182931.P9542419589676742821

`A293024(∑[char[∑[n]]]²-(n+1))`
-/

namespace A182931.P9542419589676742821
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293024 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A182931.P9542419589676742821

/-! ## A182931.P15873998729031030388

`and(-1, A293024(A061579(n)))`
-/

namespace A182931.P15873998729031030388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A293024 (A061579 n).toNat)

end

end A182931.P15873998729031030388

/-! ## A182931.P11847408417897612545

`A274835(n)*A293024(A061579(n))`
-/

namespace A182931.P11847408417897612545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274835 n * A293024 (A061579 n).toNat

end

end A182931.P11847408417897612545

/-! ## A182931.P12481985531229132175

`A275069(n)*A293024(A061579(n))`
-/

namespace A182931.P12481985531229132175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275069 n * A293024 (A061579 n).toNat

end

end A182931.P12481985531229132175

/-! ## A182931.P839193527651258078

`A293024(A061579(n))%A017644(n)`
-/

namespace A182931.P839193527651258078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293024 (A061579 n).toNat) (A017644 n)

end

end A182931.P839193527651258078

/-! ## A182931.P15666166790958236834

`or(A000007(n), A293024(A061579(n)))`
-/

namespace A182931.P15666166790958236834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A293024 (A061579 n).toNat)

end

end A182931.P15666166790958236834

/-! ## A182931.P3763280523684129394

`A014963(6*(n+1))*A293024(A061579(n))`
-/

namespace A182931.P3763280523684129394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A293024 (A061579 n).toNat

end

end A182931.P3763280523684129394

/-! ## A182931.P2833406390750012562

`A293024(A061579(n))-∑{e}[A000040(n+1), #]+1`
-/

namespace A182931.P2833406390750012562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293024 (A061579 n).toNat - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) + 1

end

end A182931.P2833406390750012562

/-! ## A182931.P16039816222017234012

`A293024(A293024(n+1))*A293024(A038722(n+2))`
-/

namespace A182931.P16039816222017234012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293024 (A293024 (n + 1)).toNat * A293024 (A038722 (n + 2)).toNat

end

end A182931.P16039816222017234012

/-!
# A182932: Generalized Bell numbers, row 3 of A182933.

The programs for A182932, there is no canonical definition to state claims against.
-/

/-! ## A182932.P16059869567097093442

`record[char[∑[n]]*A182933(n+3)]`
-/

namespace A182932.P16059869567097093442
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) * A182933 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182932.P16059869567097093442

/-! ## A182932.P8804400632543083028

`A182933(eq[3, n-C(∑[char[∑[n]]], 2)])`
-/

namespace A182932.P8804400632543083028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182933 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182932.P8804400632543083028

/-!
# A182934: Generalized Bell numbers, column 2 of A182933.

The programs for A182934, there is no canonical definition to state claims against.
-/

/-! ## A182934.P15635279988229773201

`A182933(∑[n+3])`
-/

namespace A182934.P15635279988229773201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182933 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182934.P15635279988229773201

/-! ## A182934.P351227364340561067

`record[A182933(Δ[A175822(n)])]`
-/

namespace A182934.P351227364340561067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175822 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182933 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182934.P351227364340561067

/-! ## A182934.P6415958451538648762

`A182933(A141214(n))+char[7]`
-/

namespace A182934.P6415958451538648762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182933 (A141214 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A182934.P6415958451538648762

/-!
# A182936: Greatest common divisor of the proper divisors of n, 0 if there are none.

The programs for A182936, the canonical program `A182936.P4233504524226139086` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182936 has offset 1).

The definition of A182936 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020500, A061397, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A182936.P4233504524226139086

`A020500(n+1)-A061397(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A182936

/-- `A020500(n+1)-A061397(n+1)` -/
def P4233504524226139086.Spec : Prop :=
  ∀ n, P4233504524226139086.a n = A182936 (n + 1)

theorem P4233504524226139086.correct : P4233504524226139086.Spec := by
  intro n
  simp only [A182936, Nat.add_sub_cancel]

end A182936

/-! ## A182936.P10868241491455767755

`A014963(n+1)%(n+1)`
-/

namespace A182936.P10868241491455767755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014963 (n + 1)) (n + 1 : ℤ)

end

end A182936.P10868241491455767755

namespace A182936

/-- `A014963(n+1)%(n+1)` -/
def P10868241491455767755.Spec : Prop :=
  ∀ n, P10868241491455767755.a n = A182936 (n + 1)

end A182936

/-! ## A182936.P16642480943896291654

`A020500(n+1)%(n+1)`
-/

namespace A182936.P16642480943896291654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020500 (n + 1)) (n + 1 : ℤ)

end

end A182936.P16642480943896291654

namespace A182936

/-- `A020500(n+1)%(n+1)` -/
def P16642480943896291654.Spec : Prop :=
  ∀ n, P16642480943896291654.a n = A182936 (n + 1)

end A182936

/-! ## A182936.P16290795207632100389

`A089026(∏{p}[n+1, #])%(n+1)`
-/

namespace A182936.P16290795207632100389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089026 (∏ p ∈ Nat.primeFactors (f1 n), p)) (n + 1 : ℤ)

end

end A182936.P16290795207632100389

namespace A182936

/-- `A089026(∏{p}[n+1, #])%(n+1)` -/
def P16290795207632100389.Spec : Prop :=
  ∀ n, P16290795207632100389.a n = A182936 (n + 1)

end A182936

/-! ## A182936.P14009035601642320806

`((n+1)/A048671(n+1))%(n+1)`
-/

namespace A182936.P14009035601642320806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A048671 (n + 1) : ℚ))) (n + 1 : ℤ)

end

end A182936.P14009035601642320806

namespace A182936

/-- `((n+1)/A048671(n+1))%(n+1)` -/
def P14009035601642320806.Spec : Prop :=
  ∀ n, P14009035601642320806.a n = A182936 (n + 1)

end A182936

/-! ## A182936.P614047388783208862

`(A166260(∏{p}[n+1, #])+1)%(n+1)`
-/

namespace A182936.P614047388783208862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166260 (∏ p ∈ Nat.primeFactors (f1 n), p) + 1) (n + 1 : ℤ)

end

end A182936.P614047388783208862

namespace A182936

/-- `(A166260(∏{p}[n+1, #])+1)%(n+1)` -/
def P614047388783208862.Spec : Prop :=
  ∀ n, P614047388783208862.a n = A182936 (n + 1)

end A182936

/-! ## A182936.P7455215187895412922

`A020500(A005451(n+1))`
-/

namespace A182936.P7455215187895412922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (A005451 (n + 1)).toNat

end

end A182936.P7455215187895412922

namespace A182936

/-- `A020500(A005451(n+1))` -/
def P7455215187895412922.Spec : Prop :=
  ∀ n, P7455215187895412922.a n = A182936 (n + 1)

end A182936

/-! ## A182936.P9768197673467928176

`A020500(A048671(n+1))`
-/

namespace A182936.P9768197673467928176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (A048671 (n + 1)).toNat

end

end A182936.P9768197673467928176

namespace A182936

/-- `A020500(A048671(n+1))` -/
def P9768197673467928176.Spec : Prop :=
  ∀ n, P9768197673467928176.a n = A182936 (n + 1)

end A182936

/-! ## A182936.P10057388207888639687

`A020500(A144907(n+1))`
-/

namespace A182936.P10057388207888639687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (A144907 (n + 1)).toNat

end

end A182936.P10057388207888639687

namespace A182936

/-- `A020500(A144907(n+1))` -/
def P10057388207888639687.Spec : Prop :=
  ∀ n, P10057388207888639687.a n = A182936 (n + 1)

end A182936

/-! ## A182936.P15784220553630575422

`A020500(A334085(n+1))`
-/

namespace A182936.P15784220553630575422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (A334085 (n + 1)).toNat

end

end A182936.P15784220553630575422

namespace A182936

/-- `A020500(A334085(n+1))` -/
def P15784220553630575422.Spec : Prop :=
  ∀ n, P15784220553630575422.a n = A182936 (n + 1)

end A182936

/-! ## A182936.P17260060799394647725

`A005171(n+1)*A020500(n+1)`
-/

namespace A182936.P17260060799394647725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A020500 (n + 1)

end

end A182936.P17260060799394647725

namespace A182936

/-- `A005171(n+1)*A020500(n+1)` -/
def P17260060799394647725.Spec : Prop :=
  ∀ n, P17260060799394647725.a n = A182936 (n + 1)

end A182936

/-! ## A182936.P6894805728668428240

`A014963(n+1)*A066247(n+1)`
-/

namespace A182936.P6894805728668428240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) * A066247 (n + 1)

end

end A182936.P6894805728668428240

namespace A182936

/-- `A014963(n+1)*A066247(n+1)` -/
def P6894805728668428240.Spec : Prop :=
  ∀ n, P6894805728668428240.a n = A182936 (n + 1)

end A182936

/-! ## A182936.P3525354132098564434

`A020500(n+1)*A066247(n+1)`
-/

namespace A182936.P3525354132098564434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (n + 1) * A066247 (n + 1)

end

end A182936.P3525354132098564434

namespace A182936

/-- `A020500(n+1)*A066247(n+1)` -/
def P3525354132098564434.Spec : Prop :=
  ∀ n, P3525354132098564434.a n = A182936 (n + 1)

end A182936

/-! ## A182936.P12011267862617780382

`A020500((n+1)/A014963(n+1))`
-/

namespace A182936.P12011267862617780382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A014963 (n + 1) : ℚ))).toNat

end

end A182936.P12011267862617780382

namespace A182936

/-- `A020500((n+1)/A014963(n+1))` -/
def P12011267862617780382.Spec : Prop :=
  ∀ n, P12011267862617780382.a n = A182936 (n + 1)

end A182936

/-! ## A182936.P17473267798649847294

`A020500(A140651(n+1)/(n+1))`
-/

namespace A182936.P17473267798649847294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (SequenceMachineLib.roundAway ((A140651 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A182936.P17473267798649847294

namespace A182936

/-- `A020500(A140651(n+1)/(n+1))` -/
def P17473267798649847294.Spec : Prop :=
  ∀ n, P17473267798649847294.a n = A182936 (n + 1)

end A182936

/-! ## A182936.P11836612243930289003

`A006530(A100994(n+1))%(n+1)`
-/

namespace A182936.P11836612243930289003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A100994 (n + 1)).toNat) (n + 1 : ℤ)

end

end A182936.P11836612243930289003

namespace A182936

/-- `A006530(A100994(n+1))%(n+1)` -/
def P11836612243930289003.Spec : Prop :=
  ∀ n, P11836612243930289003.a n = A182936 (n + 1)

end A182936

/-! ## A182936.P13005034006522450895

`A133790(n+1)%A057723(n+1)`
-/

namespace A182936.P13005034006522450895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133790 (n + 1)) (A057723 (n + 1))

end

end A182936.P13005034006522450895

namespace A182936

/-- `A133790(n+1)%A057723(n+1)` -/
def P13005034006522450895.Spec : Prop :=
  ∀ n, P13005034006522450895.a n = A182936 (n + 1)

end A182936

/-! ## A182936.P13172603151440686351

`A342257(n+1)%A028233(n+1)`
-/

namespace A182936.P13172603151440686351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342257 (n + 1)) (A028233 (n + 1))

end

end A182936.P13172603151440686351

namespace A182936

/-- `A342257(n+1)%A028233(n+1)` -/
def P13172603151440686351.Spec : Prop :=
  ∀ n, P13172603151440686351.a n = A182936 (n + 1)

end A182936

/-! ## A182936.P14385771929837266280

`gcd(A061376(n+1), A079872(n+1))`
-/

namespace A182936.P14385771929837266280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061376 (n + 1)) (A079872 (n + 1))

end

end A182936.P14385771929837266280

namespace A182936

/-- `gcd(A061376(n+1), A079872(n+1))` -/
def P14385771929837266280.Spec : Prop :=
  ∀ n, (P14385771929837266280.a n : ℤ) = A182936 (n + 1)

end A182936

/-! ## A182936.P9150054692555464997

`(1-A010051(n+1))*A020500(n+1)`
-/

namespace A182936.P9150054692555464997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010051 (n + 1)) * A020500 (n + 1)

end

end A182936.P9150054692555464997

namespace A182936

/-- `(1-A010051(n+1))*A020500(n+1)` -/
def P9150054692555464997.Spec : Prop :=
  ∀ n, P9150054692555464997.a n = A182936 (n + 1)

end A182936

/-!
# A182937: Triangle in which n-th row lists all integer partitions of n, in order of traversing the periphery of the Fenner-Loizou tree in the clockwise sense.

The programs for A182937, there is no canonical definition to state claims against.
-/

/-! ## A182937.P17377168151617543235

`A173997(A211992(n+1)^A047050(n))`
-/

namespace A182937.P17377168151617543235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173997 (SequenceMachineLib.roundAway ((A211992 (n + 1) : ℚ) ^ (A047050 n : ℤ))).toNat

end

end A182937.P17377168151617543235

/-! ## A182937.P7134807368653462075

`A211992(n+1)^A026792(floor(sqrt((n+1)^6+3)))`
-/

namespace A182937.P7134807368653462075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211992 (n + 1) : ℚ) ^ (A026792 (Nat.sqrt ((n + 1) ^ 6 + 3)) : ℤ)

end

end A182937.P7134807368653462075

/-! ## A182937.P737331105997242280

`A211992(n+1)^A010172(A004126(n))`
-/

namespace A182937.P737331105997242280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211992 (n + 1) : ℚ) ^ (A010172 (A004126 n).toNat : ℤ)

end

end A182937.P737331105997242280

/-! ## A182937.P5913541387488492889

`A211992(n+1)^A003137(A096334(n))`
-/

namespace A182937.P5913541387488492889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211992 (n + 1) : ℚ) ^ (A003137 (A096334 n).toNat : ℤ)

end

end A182937.P5913541387488492889

/-! ## A182937.P11983930063992763635

`A025482(A211992(n+1)^A099803(n))`
-/

namespace A182937.P11983930063992763635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025482 (SequenceMachineLib.roundAway ((A211992 (n + 1) : ℚ) ^ (A099803 n : ℤ))).toNat

end

end A182937.P11983930063992763635

/-!
# A182938: If n = Product (p_j^e_j) then a(n) = Product (binomial(p_j, e_j)).

The programs for A182938, the canonical program `A182938.P11321347124679234139` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182938 has offset 1).

The definition of A182938 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182938.P11321347124679234139

`∏{p}[n+1, C(#, val(n+1, #))]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A182938

/-- `∏{p}[n+1, C(#, val(n+1, #))]` -/
def P11321347124679234139.Spec : Prop :=
  ∀ n, (P11321347124679234139.a n : ℤ) = A182938 (n + 1)

theorem P11321347124679234139.correct : P11321347124679234139.Spec := by
  intro n
  simp only [A182938, Nat.add_sub_cancel]

end A182938

/-! ## A182938.P4289826607764712960

`abs(A329445(n+1))`
-/

namespace A182938.P4289826607764712960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A329445 (n + 1)|

end

end A182938.P4289826607764712960

namespace A182938

/-- `abs(A329445(n+1))` -/
def P4289826607764712960.Spec : Prop :=
  ∀ n, P4289826607764712960.a n = A182938 (n + 1)

end A182938

/-! ## A182938.P11866473141378734841

`gcd(A000038(n), A329445(n+1))`
-/

namespace A182938.P11866473141378734841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A329445 (n + 1))

end

end A182938.P11866473141378734841

namespace A182938

/-- `gcd(A000038(n), A329445(n+1))` -/
def P11866473141378734841.Spec : Prop :=
  ∀ n, (P11866473141378734841.a n : ℤ) = A182938 (n + 1)

end A182938

/-! ## A182938.P13879122603009732873

`lcm(A020985(n), A329445(n+1))`
-/

namespace A182938.P13879122603009732873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A329445 (n + 1))

end

end A182938.P13879122603009732873

namespace A182938

/-- `lcm(A020985(n), A329445(n+1))` -/
def P13879122603009732873.Spec : Prop :=
  ∀ n, (P13879122603009732873.a n : ℤ) = A182938 (n + 1)

end A182938

/-! ## A182938.P16309371720740902596

`∑{d}[A329445(n+1), A000010(#)]`
-/

namespace A182938.P16309371720740902596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A182938.P16309371720740902596

namespace A182938

/-- `∑{d}[A329445(n+1), A000010(#)]` -/
def P16309371720740902596.Spec : Prop :=
  ∀ n, P16309371720740902596.a n = A182938 (n + 1)

end A182938

/-! ## A182938.P10175936251319177054

`A008836(n+1)*A329445(n+1)`
-/

namespace A182938.P10175936251319177054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A329445 (n + 1)

end

end A182938.P10175936251319177054

namespace A182938

/-- `A008836(n+1)*A329445(n+1)` -/
def P10175936251319177054.Spec : Prop :=
  ∀ n, P10175936251319177054.a n = A182938 (n + 1)

end A182938

/-! ## A182938.P8856747617914108580

`(-1)^A001222(n+1)*A329445(n+1)`
-/

namespace A182938.P8856747617914108580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A329445 (n + 1) : ℚ)

end

end A182938.P8856747617914108580

namespace A182938

/-- `(-1)^A001222(n+1)*A329445(n+1)` -/
def P8856747617914108580.Spec : Prop :=
  ∀ n, P8856747617914108580.a n = (A182938 (n + 1) : ℚ)

end A182938

/-! ## A182938.P7711041829313113275

`(A002819(n+1)-A002819(n))*A329445(n+1)`
-/

namespace A182938.P7711041829313113275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002819 (n + 1) - A002819 n) * A329445 (n + 1)

end

end A182938.P7711041829313113275

namespace A182938

/-- `(A002819(n+1)-A002819(n))*A329445(n+1)` -/
def P7711041829313113275.Spec : Prop :=
  ∀ n, P7711041829313113275.a n = A182938 (n + 1)

end A182938

/-! ## A182938.P5892321847462827773

`sqrt(A008683(16*(n+1))+A329445(n+1)²)`
-/

namespace A182938.P5892321847462827773
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008683 (16 * (n + 1)) + A329445 (n + 1) ^ 2 : ℝ)

end

end A182938.P5892321847462827773

namespace A182938

/-- `sqrt(A008683(16*(n+1))+A329445(n+1)²)` -/
def P5892321847462827773.Spec : Prop :=
  ∀ n, P5892321847462827773.a n = (A182938 (n + 1) : ℝ)

end A182938

/-! ## A182938.P6282912495832697916

`A000196(A329445(n+1)²)`
-/

namespace A182938.P6282912495832697916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A329445 (n + 1) ^ 2).toNat

end

end A182938.P6282912495832697916

namespace A182938

/-- `A000196(A329445(n+1)²)` -/
def P6282912495832697916.Spec : Prop :=
  ∀ n, P6282912495832697916.a n = A182938 (n + 1)

end A182938

/-!
# A182941: a(n) = sum of divisors of A094348(n).

The programs for A182941, there is no canonical definition to state claims against.
-/

/-! ## A182941.P897009936955634737

`A000203(A094348(n+1))`
-/

namespace A182941.P897009936955634737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A094348 (n + 1)).toNat

end

end A182941.P897009936955634737

/-! ## A182941.P4170890296216114681

`A326065(2*A094348(n+1))`
-/

namespace A182941.P4170890296216114681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (2 * A094348 (n + 1)).toNat

end

end A182941.P4170890296216114681

/-! ## A182941.P17635858903538661111

`A057640(A094348(n+1))-A181852(n+1)`
-/

namespace A182941.P17635858903538661111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057640 (A094348 (n + 1)).toNat - A181852 (n + 1)

end

end A182941.P17635858903538661111

/-! ## A182941.P17411530354773205893

`A295422(A141551(n+1))`
-/

namespace A182941.P17411530354773205893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295422 (A141551 (n + 1)).toNat

end

end A182941.P17411530354773205893

/-! ## A182941.P12314268119054728873

`A295422(A181804(n+1))`
-/

namespace A182941.P12314268119054728873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295422 (A181804 (n + 1)).toNat

end

end A182941.P12314268119054728873

/-!
# A182942: Ranks of primes when all odd prime powers p^j, for j>=1, are jointly ranked.

The programs for A182942, there is no canonical definition to state claims against.
-/

/-! ## A182942.P2054155755815478742

`A327247(p?[2*n+1])`
-/

namespace A182942.P2054155755815478742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327247 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A182942.P2054155755815478742

/-! ## A182942.P11087237159285398196

`A025548(A006254(n+1))`
-/

namespace A182942.P11087237159285398196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025548 (A006254 (n + 1)).toNat

end

end A182942.P11087237159285398196

/-! ## A182942.P12790110780223471041

`A327247(A065091(n+1))`
-/

namespace A182942.P12790110780223471041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327247 (A065091 (n + 1)).toNat

end

end A182942.P12790110780223471041

/-! ## A182942.P2340044209915757985

`A327247(A135731(n+1))`
-/

namespace A182942.P2340044209915757985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327247 (A135731 (n + 1)).toNat

end

end A182942.P2340044209915757985

/-! ## A182942.P1117371203322619865

`A025548(A111333(n+2))`
-/

namespace A182942.P1117371203322619865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025548 (A111333 (n + 2)).toNat

end

end A182942.P1117371203322619865

/-! ## A182942.P3601574756429767802

`A025548(A130291(n+2))`
-/

namespace A182942.P3601574756429767802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025548 (A130291 (n + 2)).toNat

end

end A182942.P3601574756429767802

/-! ## A182942.P11943042316467534324

`A327247(A000040(n+2))`
-/

namespace A182942.P11943042316467534324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327247 (A000040 (n + 2)).toNat

end

end A182942.P11943042316467534324

/-! ## A182942.P14456587240300314742

`A327247(A006005(n+2))`
-/

namespace A182942.P14456587240300314742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327247 (A006005 (n + 2)).toNat

end

end A182942.P14456587240300314742

/-! ## A182942.P9401257410872373737

`A327247(A008864(n+2))`
-/

namespace A182942.P9401257410872373737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327247 (A008864 (n + 2)).toNat

end

end A182942.P9401257410872373737

/-! ## A182942.P10686674074574332954

`A327247(A055670(n+2))`
-/

namespace A182942.P10686674074574332954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327247 (A055670 (n + 2)).toNat

end

end A182942.P10686674074574332954

/-!
# A182943: Ranks of composites when all odd prime powers p^j, for j>=1, are jointly ranked.

The programs for A182943, there is no canonical definition to state claims against.
-/

/-! ## A182943.P9479527148272451185

`lt[A089026(A061345(n)), A170893(n)]`
-/

namespace A182943.P9479527148272451185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (A061345 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A182943.P9479527148272451185

/-!
# A182944: Square array A(i,j), i >= 1, j >= 1, of prime powers prime(i)^j, by descending antidiagonals.

The programs for A182944, the canonical program `A182944.P10822648229596895612` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182944 has offset 1).

The definition of A182944 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2643 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182944.P10822648229596895612

`A000040(1-C(∑[char[∑[n]]], 2)+n)^(C(comp[∑[n]]-n, 2)-n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A182944

/-- `A000040(1-C(∑[char[∑[n]]], 2)+n)^(C(comp[∑[n]]-n, 2)-n)` -/
def P10822648229596895612.Spec : Prop :=
  ∀ n, P10822648229596895612.a n = (A182944 (n + 1) : ℚ)

end A182944

/-! ## A182944.P129068664722346350

`A000040(1-(C(∑[char[∑[n]]], 2)-n))^(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A182944.P129068664722346350
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
  (A000040 (1 - ((Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - (n : ℤ))).toNat : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ)

end

end A182944.P129068664722346350

namespace A182944

/-- `A000040(1-(C(∑[char[∑[n]]], 2)-n))^(C(comp[∑[n]]-n, 2)-n)` -/
def P129068664722346350.Spec : Prop :=
  ∀ n, P129068664722346350.a n = (A182944 (n + 1) : ℚ)

end A182944

/-! ## A182944.P17097080212365211558

`A037126(n+1)^A004736(n+1)`
-/

namespace A182944.P17097080212365211558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037126 (n + 1) : ℚ) ^ (A004736 (n + 1) : ℤ)

end

end A182944.P17097080212365211558

namespace A182944

/-- `A037126(n+1)^A004736(n+1)` -/
def P17097080212365211558.Spec : Prop :=
  ∀ n, P17097080212365211558.a n = (A182944 (n + 1) : ℚ)

end A182944

/-! ## A182944.P7129465194903672991

`A037126(n+1)^(A025581(n)+1)`
-/

namespace A182944.P7129465194903672991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037126 (n + 1) : ℚ) ^ (A025581 n + 1 : ℤ)

end

end A182944.P7129465194903672991

namespace A182944

/-- `A037126(n+1)^(A025581(n)+1)` -/
def P7129465194903672991.Spec : Prop :=
  ∀ n, P7129465194903672991.a n = (A182944 (n + 1) : ℚ)

end A182944

/-! ## A182944.P11103179175076924591

`A000040(A002260(n+1))^A004736(n+1)`
-/

namespace A182944.P11103179175076924591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (A002260 (n + 1)).toNat : ℚ) ^ (A004736 (n + 1) : ℤ)

end

end A182944.P11103179175076924591

namespace A182944

/-- `A000040(A002260(n+1))^A004736(n+1)` -/
def P11103179175076924591.Spec : Prop :=
  ∀ n, P11103179175076924591.a n = (A182944 (n + 1) : ℚ)

end A182944

/-! ## A182944.P6093444811047122343

`A182945(∑[char[∑[n]]]²-n)`
-/

namespace A182944.P6093444811047122343
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182945 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A182944.P6093444811047122343

namespace A182944

/-- `A182945(∑[char[∑[n]]]²-n)` -/
def P6093444811047122343.Spec : Prop :=
  ∀ n, P6093444811047122343.a n = A182944 (n + 1)

end A182944

/-! ## A182944.P1993440412996595132

`A324395(A130328(n))`
-/

namespace A182944.P1993440412996595132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324395 (A130328 n).toNat

end

end A182944.P1993440412996595132

namespace A182944

/-- `A324395(A130328(n))` -/
def P1993440412996595132.Spec : Prop :=
  ∀ n, P1993440412996595132.a n = A182944 (n + 1)

end A182944

/-! ## A182944.P2300219542254337171

`A324395(A204985(n+1)/2)`
-/

namespace A182944.P2300219542254337171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324395 (SequenceMachineLib.roundAway ((A204985 (n + 1) : ℚ) / 2)).toNat

end

end A182944.P2300219542254337171

namespace A182944

/-- `A324395(A204985(n+1)/2)` -/
def P2300219542254337171.Spec : Prop :=
  ∀ n, P2300219542254337171.a n = A182944 (n + 1)

end A182944

/-! ## A182944.P13658284851124507765

`A163511(A099627(n))`
-/

namespace A182944.P13658284851124507765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A099627 n).toNat

end

end A182944.P13658284851124507765

namespace A182944

/-- `A163511(A099627(n))` -/
def P13658284851124507765.Spec : Prop :=
  ∀ n, P13658284851124507765.a n = A182944 (n + 1)

end A182944

/-! ## A182944.P17270832786636023161

`A163511(∑[A000010(2^(n-C(∑[char[∑[n]]], 2)))])`
-/

namespace A182944.P17270832786636023161
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A182944.P17270832786636023161

namespace A182944

/-- `A163511(∑[A000010(2^(n-C(∑[char[∑[n]]], 2)))])` -/
def P17270832786636023161.Spec : Prop :=
  ∀ n, P17270832786636023161.a n = A182944 (n + 1)

end A182944

/-!
# A182945: Array of prime powers p^j, as transpose of A182944.

The programs for A182945, the canonical program `A182945.P12591486644408387893` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182945 has offset 1).

The definition of A182945 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2682 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182945.P12591486644408387893

`A000040(A004736(n+1))^A002260(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A182945

/-- `A000040(A004736(n+1))^A002260(n+1)` -/
def P12591486644408387893.Spec : Prop :=
  ∀ n, P12591486644408387893.a n = (A182945 (n + 1) : ℚ)

end A182945

/-! ## A182945.P18129450412045576353

`A000040(A004736(n+1))^(A002262(n)+1)`
-/

namespace A182945.P18129450412045576353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (A004736 (n + 1)).toNat : ℚ) ^ (A002262 n + 1 : ℤ)

end

end A182945.P18129450412045576353

namespace A182945

/-- `A000040(A004736(n+1))^(A002262(n)+1)` -/
def P18129450412045576353.Spec : Prop :=
  ∀ n, P18129450412045576353.a n = (A182945 (n + 1) : ℚ)

end A182945

/-! ## A182945.P3813776234763963408

`A000040(A025581(n)+1)^A002260(n+1)`
-/

namespace A182945.P3813776234763963408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (A025581 n + 1).toNat : ℚ) ^ (A002260 (n + 1) : ℤ)

end

end A182945.P3813776234763963408

namespace A182945

/-- `A000040(A025581(n)+1)^A002260(n+1)` -/
def P3813776234763963408.Spec : Prop :=
  ∀ n, P3813776234763963408.a n = (A182945 (n + 1) : ℚ)

end A182945

/-! ## A182945.P14599877747053395794

`A000040(A025581(n)+1)^(A002262(n)+1)`
-/

namespace A182945.P14599877747053395794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (A025581 n + 1).toNat : ℚ) ^ (A002262 n + 1 : ℤ)

end

end A182945.P14599877747053395794

namespace A182945

/-- `A000040(A025581(n)+1)^(A002262(n)+1)` -/
def P14599877747053395794.Spec : Prop :=
  ∀ n, P14599877747053395794.a n = (A182945 (n + 1) : ℚ)

end A182945

/-! ## A182945.P1634158758257921783

`A008578(A004736(n+1)+1)^A002260(n+1)`
-/

namespace A182945.P1634158758257921783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008578 (A004736 (n + 1) + 1).toNat : ℚ) ^ (A002260 (n + 1) : ℤ)

end

end A182945.P1634158758257921783

namespace A182945

/-- `A008578(A004736(n+1)+1)^A002260(n+1)` -/
def P1634158758257921783.Spec : Prop :=
  ∀ n, P1634158758257921783.a n = (A182945 (n + 1) : ℚ)

end A182945

/-! ## A182945.P17528186171674729351

`A000040(A057555(2*(n+1)))^A002260(n+1)`
-/

namespace A182945.P17528186171674729351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (A057555 (2 * (n + 1))).toNat : ℚ) ^ (A002260 (n + 1) : ℤ)

end

end A182945.P17528186171674729351

namespace A182945

/-- `A000040(A057555(2*(n+1)))^A002260(n+1)` -/
def P17528186171674729351.Spec : Prop :=
  ∀ n, P17528186171674729351.a n = (A182945 (n + 1) : ℚ)

end A182945

/-! ## A182945.P4686431081933151462

`A000040(A057555(2*(n+1)))^(A002262(n)+1)`
-/

namespace A182945.P4686431081933151462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (A057555 (2 * (n + 1))).toNat : ℚ) ^ (A002262 n + 1 : ℤ)

end

end A182945.P4686431081933151462

namespace A182945

/-- `A000040(A057555(2*(n+1)))^(A002262(n)+1)` -/
def P4686431081933151462.Spec : Prop :=
  ∀ n, P4686431081933151462.a n = (A182945 (n + 1) : ℚ)

end A182945

/-! ## A182945.P7318542694209795159

`A000040(A057554(2*(n+1))+1)^A002260(n+1)`
-/

namespace A182945.P7318542694209795159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (A057554 (2 * (n + 1)) + 1).toNat : ℚ) ^ (A002260 (n + 1) : ℤ)

end

end A182945.P7318542694209795159

namespace A182945

/-- `A000040(A057554(2*(n+1))+1)^A002260(n+1)` -/
def P7318542694209795159.Spec : Prop :=
  ∀ n, P7318542694209795159.a n = (A182945 (n + 1) : ℚ)

end A182945

/-! ## A182945.P11374892202501128343

`A000040(A057555(2*(n+1)))^ceil(A158405(n+1)/2)`
-/

namespace A182945.P11374892202501128343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (A057555 (2 * (n + 1))).toNat : ℚ) ^ (⌈(A158405 (n + 1) : ℚ) / 2⌉ : ℤ)

end

end A182945.P11374892202501128343

namespace A182945

/-- `A000040(A057555(2*(n+1)))^ceil(A158405(n+1)/2)` -/
def P11374892202501128343.Spec : Prop :=
  ∀ n, P11374892202501128343.a n = (A182945 (n + 1) : ℚ)

end A182945

/-! ## A182945.P1097787297499848924

`A000040(A057555(2*(n+1)))^(A057554(2*n+1)+1)`
-/

namespace A182945.P1097787297499848924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (A057555 (2 * (n + 1))).toNat : ℚ) ^ (A057554 (2 * n + 1) + 1 : ℤ)

end

end A182945.P1097787297499848924

namespace A182945

/-- `A000040(A057555(2*(n+1)))^(A057554(2*n+1)+1)` -/
def P1097787297499848924.Spec : Prop :=
  ∀ n, P1097787297499848924.a n = (A182945 (n + 1) : ℚ)

end A182945

/-! ## A182945.P17458210918212852711

`A000040(A057555(2*(n+1)))^(A057555(2*n+1)%(n+2))`
-/

namespace A182945.P17458210918212852711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (A057555 (2 * (n + 1))).toNat : ℚ) ^ (Int.tmod (A057555 (2 * n + 1)) (n + 2 : ℤ) : ℤ)

end

end A182945.P17458210918212852711

namespace A182945

/-- `A000040(A057555(2*(n+1)))^(A057555(2*n+1)%(n+2))` -/
def P17458210918212852711.Spec : Prop :=
  ∀ n, P17458210918212852711.a n = (A182945 (n + 1) : ℚ)

end A182945

/-! ## A182945.P12671275258190450088

`A000040(A002260(A038722(n+1)))^A002260(n+1)`
-/

namespace A182945.P12671275258190450088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (A002260 (A038722 (n + 1)).toNat).toNat : ℚ) ^ (A002260 (n + 1) : ℤ)

end

end A182945.P12671275258190450088

namespace A182945

/-- `A000040(A002260(A038722(n+1)))^A002260(n+1)` -/
def P12671275258190450088.Spec : Prop :=
  ∀ n, P12671275258190450088.a n = (A182945 (n + 1) : ℚ)

end A182945

/-! ## A182945.P15298203676502366666

`A182944(A038722(n+1))`
-/

namespace A182945.P15298203676502366666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182944 (A038722 (n + 1)).toNat

end

end A182945.P15298203676502366666

namespace A182945

/-- `A182944(A038722(n+1))` -/
def P15298203676502366666.Spec : Prop :=
  ∀ n, P15298203676502366666.a n = A182945 (n + 1)

end A182945

/-! ## A182945.P5649791264419453133

`A324395(A089633(n)+1)`
-/

namespace A182945.P5649791264419453133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324395 (A089633 n + 1).toNat

end

end A182945.P5649791264419453133

namespace A182945

/-- `A324395(A089633(n)+1)` -/
def P5649791264419453133.Spec : Prop :=
  ∀ n, P5649791264419453133.a n = A182945 (n + 1)

end A182945

/-! ## A182945.P15991534858223030214

`A324395(A023758(n+2))`
-/

namespace A182945.P15991534858223030214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324395 (A023758 (n + 2)).toNat

end

end A182945.P15991534858223030214

namespace A182945

/-- `A324395(A023758(n+2))` -/
def P15991534858223030214.Spec : Prop :=
  ∀ n, P15991534858223030214.a n = A182945 (n + 1)

end A182945

/-! ## A182945.P15410541950700001877

`A253565(A099627(n))`
-/

namespace A182945.P15410541950700001877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253565 (A099627 n).toNat

end

end A182945.P15410541950700001877

namespace A182945

/-- `A253565(A099627(n))` -/
def P15410541950700001877.Spec : Prop :=
  ∀ n, P15410541950700001877.a n = A182945 (n + 1)

end A182945

/-!
# A182946: Array of odd prime powers p^j, where j>=1, by antidiagonals.

The programs for A182946, there is no canonical definition to state claims against.
-/

/-! ## A182946.P11039501222027372570

`A182944(comp[∑[n]]+1)`
-/

namespace A182946.P11039501222027372570
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182944 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A182946.P11039501222027372570

/-! ## A182946.P13298011608746515378

`A182945(2*(C(comp[∑[n]]-n, 2)-n)+n)`
-/

namespace A182946.P13298011608746515378
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182945 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) + (n : ℤ)).toNat

end

end A182946.P13298011608746515378

/-! ## A182946.P1182808301839864749

`A065091(1-C(∑[char[∑[n]]], 2)+n)^(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A182946.P1182808301839864749
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
  (A065091 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ)

end

end A182946.P1182808301839864749

/-! ## A182946.P10544888043600634469

`A245072(1-C(∑[char[∑[n]]], 2)+n)^(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A182946.P10544888043600634469
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
  (A245072 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ)

end

end A182946.P10544888043600634469

/-! ## A182946.P6566955058793348207

`A163511(A209492(n+1))`
-/

namespace A182946.P6566955058793348207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A209492 (n + 1)).toNat

end

end A182946.P6566955058793348207

/-!
# A182947: Number of complete sphere stacks on a triangular base with side length n.

The programs for A182947, there is no canonical definition to state claims against.
-/

/-! ## A182947.P9989868960397547642

`A060119(A259794(n))`
-/

namespace A182947.P9989868960397547642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060119 (A259794 n).toNat

end

end A182947.P9989868960397547642

/-! ## A182947.P4953790190451544570

`A303787(A183609(n))`
-/

namespace A182947.P4953790190451544570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303787 (A183609 n).toNat

end

end A182947.P4953790190451544570

/-!
# A182948: Number of complete sphere stacks on a rhombic base with side lengths n.

The programs for A182948, there is no canonical definition to state claims against.
-/

/-! ## A182948.P17332014256195670026

`A289509(A054247(n))-A005418(n+1)`
-/

namespace A182948.P17332014256195670026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289509 (A054247 n).toNat - A005418 (n + 1)

end

end A182948.P17332014256195670026

/-!
# A182949: Joint-rank array of the numbers (3*i+1)*3^j, where i>=0, j>=0, by antidiagonals.

The programs for A182949, there is no canonical definition to state claims against.
-/

/-! ## A182949.P1947008427091179849

`A191449(n+1)+A191450(n+1)-A182950(n+1)`
-/

namespace A182949.P1947008427091179849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191449 (n + 1) + (A191450 (n + 1) - A182950 (n + 1))

end

end A182949.P1947008427091179849

/-! ## A182949.P10868092088159585700

`A189674(A182828(n+1)+1)`
-/

namespace A182949.P10868092088159585700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189674 (A182828 (n + 1) + 1).toNat

end

end A182949.P10868092088159585700

/-! ## A182949.P10382303989675135885

`A189674(A182830(n+1)+1-A140303(n))`
-/

namespace A182949.P10382303989675135885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189674 (A182830 (n + 1) + (1 - A140303 n)).toNat

end

end A182949.P10382303989675135885

/-! ## A182949.P6632374727282908142

`A182828(n+1)-A189641(A182828(n+1)+1)`
-/

namespace A182949.P6632374727282908142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182828 (n + 1) - A189641 (A182828 (n + 1) + 1).toNat

end

end A182949.P6632374727282908142

/-! ## A182949.P5544352173284047452

`A182830(n+1)-(A189672(A182828(n+1))+A140303(n))`
-/

namespace A182949.P5544352173284047452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182830 (n + 1) - (A189672 (A182828 (n + 1)).toNat + A140303 n)

end

end A182949.P5544352173284047452

/-!
# A182950: Joint-rank array of the numbers (3*i+2)*3^j, where i>=0, j>=0, by antidiagonals.

The programs for A182950, there is no canonical definition to state claims against.
-/

/-! ## A182950.P17222920572746281186

`A189672(A182830(n+1))`
-/

namespace A182950.P17222920572746281186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189672 (A182830 (n + 1)).toNat

end

end A182950.P17222920572746281186

/-! ## A182950.P14417575281182816935

`A189641(A182830(n+1)+1)`
-/

namespace A182950.P14417575281182816935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189641 (A182830 (n + 1) + 1).toNat

end

end A182950.P14417575281182816935

/-! ## A182950.P2611019564794853976

`A189672(A182828(n+1)+A140303(n))`
-/

namespace A182950.P2611019564794853976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189672 (A182828 (n + 1) + A140303 n).toNat

end

end A182950.P2611019564794853976

/-! ## A182950.P1321876892426478992

`A189641(A182828(n+1)+A140303(n)+1)`
-/

namespace A182950.P1321876892426478992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189641 (A182828 (n + 1) + (A140303 n + 1)).toNat

end

end A182950.P1321876892426478992

/-! ## A182950.P14130804291515779691

`A182830(n+1)-A189674(A182830(n+1)+1)`
-/

namespace A182950.P14130804291515779691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182830 (n + 1) - A189674 (A182830 (n + 1) + 1).toNat

end

end A182950.P14130804291515779691

/-!
# A182951: G.f.: 1/(1-x) = Sum_{n>=0} a(n)*x^n/(1+x)^(n^2+n).

The programs for A182951, there is no canonical definition to state claims against.
-/

/-! ## A182951.P11661890948037308118

`A052382(A058104(n))`
-/

namespace A182951.P11661890948037308118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (A058104 n).toNat

end

end A182951.P11661890948037308118

/-! ## A182951.P6772357533768402177

`A087875(A201627(n))`
-/

namespace A182951.P6772357533768402177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087875 (A201627 n).toNat

end

end A182951.P6772357533768402177

/-!
# A182952: G.f.: 1/(1-x) = Sum_{n>=0} a(n)*x^n/(1+x)^(n*(3*n-1)/2).

The programs for A182952, there is no canonical definition to state claims against.
-/

/-! ## A182952.P13018927159742760319

`A008620(∑[∑[A052851(n)]])`
-/

namespace A182952.P13018927159742760319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052851 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A182952.P13018927159742760319

/-! ## A182952.P6688588323834052822

`A351958(A121539(n*a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A182952.P6688588323834052822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A351958 (A121539 ((n : ℤ) * a (n - 1)).toNat).toNat

end

end A182952.P6688588323834052822

/-!
# A182953: G.f. satisfies: A(x) = 1 + x*A(x) * A( x*A(x) )^3.

The programs for A182953, there is no canonical definition to state claims against.
-/

/-! ## A182953.P8602124664062221125

`A105025(A060908(n))`
-/

namespace A182953.P8602124664062221125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105025 (A060908 n).toNat

end

end A182953.P8602124664062221125

/-! ## A182953.P11430690687577104855

`A221222(A000108(n))+A061358(n)`
-/

namespace A182953.P11430690687577104855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221222 (A000108 n).toNat + A061358 n

end

end A182953.P11430690687577104855

/-!
# A182954: G.f. satisfies: A(x) = 1 + x*A(x) * A( x*A(x) )^4.

The programs for A182954, there is no canonical definition to state claims against.
-/

/-! ## A182954.P1447645960289784214

`A096273(A128318(n))+A000142(n)`
-/

namespace A182954.P1447645960289784214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096273 (A128318 n).toNat + A000142 n

end

end A182954.P1447645960289784214

/-! ## A182954.P202603603068289884

`A008619(A003578(n)-A001206(n))`
-/

namespace A182954.P202603603068289884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A003578 n - A001206 n).toNat

end

end A182954.P202603603068289884

/-!
# A182955: G.f. satisfies: A(x) = 1 + x*A(x) * A( x*A(x) )^5.

The programs for A182955, there is no canonical definition to state claims against.
-/

/-! ## A182955.P14394090743272500297

`A154771(A000169(n+1)-A099012(n))`
-/

namespace A182955.P14394090743272500297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154771 (A000169 (n + 1) - A099012 n).toNat

end

end A182955.P14394090743272500297

/-!
# A182956: G.f.: 1/(1-x) = Sum_{n>=0} a(n)*x^n/(1+x)^(n*(3*n+1)/2).

The programs for A182956, there is no canonical definition to state claims against.
-/

/-! ## A182956.P4165900685099151722

`xor(A108993(n), A125688(A099071(n+1)))`
-/

namespace A182956.P4165900685099151722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A108993 n) (A125688 (A099071 (n + 1)).toNat)

end

end A182956.P4165900685099151722

/-! ## A182956.P13450365179419453939

`A146694(A153663(n+1))*A153691(n+1)`
-/

namespace A182956.P13450365179419453939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146694 (A153663 (n + 1)).toNat * A153691 (n + 1)

end

end A182956.P13450365179419453939

/-!
# A182957: G.f.: A(x) = x/Series_Reversion(x*G(x)) where G(x) = Sum_{n>=0} n^n*x^n.

The programs for A182957, there is no canonical definition to state claims against.
-/

/-! ## A182957.P3590061258946600465

`A108599(A036717(n)+A000312(n))`
-/

namespace A182957.P3590061258946600465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108599 (A036717 n + A000312 n).toNat

end

end A182957.P3590061258946600465

/-! ## A182957.P9483768828633929220

`A209305(n)+A002487(A051117(n))`
-/

namespace A182957.P9483768828633929220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209305 n + A002487 (A051117 n).toNat

end

end A182957.P9483768828633929220

/-!
# A182958: G.f.: A(x) = x/Series_Reversion(x*G(x)) where G(x) = Sum_{n>=0} n!^2*x^n.

The programs for A182958, there is no canonical definition to state claims against.
-/

/-! ## A182958.P4593890414004535271

`A006870(lt[∏{e}[n+1, #+1], 3])`
-/

namespace A182958.P4593890414004535271
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006870 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)

end

end A182958.P4593890414004535271

/-!
# A182959: Expansion of o.g.f. 2*(1+x)^2/(1-2*x+sqrt(1-8*x)).

The programs for A182959, there is no canonical definition to state claims against.
-/

/-! ## A182959.P725650402436368487

`A042948(A052701(n)+record[A110510(n)])`
-/

namespace A182959.P725650402436368487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110510 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A052701 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A182959.P725650402436368487

/-! ## A182959.P11144384663026235865

`A042948(A052701(n+1)+A052701(n))`
-/

namespace A182959.P11144384663026235865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A052701 (n + 1) + A052701 n).toNat

end

end A182959.P11144384663026235865

/-!
# A182961: Triangle, read by rows, where terms in row n equal the partial sums of row n-1 with 1's inserted at positions [0,n,2n-1,3n-3,4n-6,5n-10,...,n(n+1)/2-1] for n>0, with T(0,0)=1.

The programs for A182961, there is no canonical definition to state claims against.
-/

/-! ## A182961.P18176654217249014106

`A109672(∑[A171275(n^(n%2))])`
-/

namespace A182961.P18176654217249014106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109672 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A182961.P18176654217249014106

/-! ## A182961.P13149111108033708830

`A194446((A026741(n)+A008486(n))²)`
-/

namespace A182961.P13149111108033708830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194446 ((A026741 n + A008486 n) ^ 2).toNat

end

end A182961.P13149111108033708830

/-! ## A182961.P9204406707676629540

`A146291(A037255(n)+9)`
-/

namespace A182961.P9204406707676629540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146291 (A037255 n + 9).toNat

end

end A182961.P9204406707676629540

/-! ## A182961.P2996738457269932913

`gcd(A187224(n+1), A309213(A219207(n)))`
-/

namespace A182961.P2996738457269932913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A187224 (n + 1)) (A309213 (A219207 n).toNat)

end

end A182961.P2996738457269932913

/-! ## A182961.P1651575443022560047

`gcd(A058320(A035618(n+1)), A353417(n+1))`
-/

namespace A182961.P1651575443022560047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A058320 (A035618 (n + 1)).toNat) (A353417 (n + 1))

end

end A182961.P1651575443022560047

/-!
# A182962: E.g.f. satisfies: A(x) = exp( x/(1 - x*A'(x)/A(x)) ).

The programs for A182962, there is no canonical definition to state claims against.
-/

/-! ## A182962.P6900130959588914313

`A373162(a(n-1))-1` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A182962.P6900130959588914313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A373162 (a (n - 1)).toNat - 1

end

end A182962.P6900130959588914313

/-!
# A182963: G.f.: A(x) = exp( Sum_{n>=1} A183235(n)*x^n/n ) where A183235 is the sums of the cubes of multinomial coefficients.

The programs for A182963, there is no canonical definition to state claims against.
-/

/-! ## A182963.P3908456354051506819

`A005942(A355073(n))/2`
-/

namespace A182963.P3908456354051506819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005942 (A355073 n).toNat : ℚ) / 2

end

end A182963.P3908456354051506819

/-!
# A182964: G.f.: x = Sum_{n>=1} a(n)*G_n(x)^n where G_n(x) is the n-th iteration of (x-x^2).

The programs for A182964, there is no canonical definition to state claims against.
-/

/-! ## A182964.P1705999807550459893

`A007095(∑[A001409(n)])`
-/

namespace A182964.P1705999807550459893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A182964.P1705999807550459893

/-! ## A182964.P4113853428485548385

`A247161(A331937(n+1)-∑[n])`
-/

namespace A182964.P4113853428485548385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247161 (A331937 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A182964.P4113853428485548385

/-!
# A182965: E.g.f.: A(x) = Product_{n>=1} (1 + 2*x^n/n)^n.

The programs for A182965, there is no canonical definition to state claims against.
-/

/-! ## A182965.P13961451741788446091

`∏{digits}[A109812(a(n-1)+12)², #]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A182965.P13961451741788446091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n f1 =>
  A109812 (f1 (n - 1) + 12).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A182965.P13961451741788446091

/-! ## A182965.P2519994498299204992

`n!*A334299(A303813(n))`
-/

namespace A182965.P2519994498299204992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A334299 (A303813 n).toNat

end

end A182965.P2519994498299204992

/-!
# A182966: E.g.f.: A(x) = Product_{n>=1} (1 + 3*x^n/n)^n.

The programs for A182966, there is no canonical definition to state claims against.
-/

/-! ## A182966.P12756697188798311842

`A166048(A329662(n)+1)`
-/

namespace A182966.P12756697188798311842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166048 (A329662 n + 1).toNat

end

end A182966.P12756697188798311842

/-!
# A182967: E.g.f.: A(x) = Product_{n>=1} (1 + 4*x^n/n)^n.

The programs for A182967, there is no canonical definition to state claims against.
-/

/-! ## A182967.P11979418635470460793

`A000010(A036493(n)+A000891(n))`
-/

namespace A182967.P11979418635470460793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A036493 n + A000891 n).toNat

end

end A182967.P11979418635470460793

/-! ## A182967.P2028178233374630924

`A140434(A054426(n+1)+A023001(n))`
-/

namespace A182967.P2028178233374630924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140434 (A054426 (n + 1) + A023001 n).toNat

end

end A182967.P2028178233374630924

/-!
# A182968: G.f.: A(x) = Product_{n>=1} 1/(1 - G_n(x)^n) where G(x) = x+x^2 and G_n(x) denotes the n-th iteration of G(x): G_n(x) = G_{n-1}(G(x)) with G_0(x)=x.

The programs for A182968, there is no canonical definition to state claims against.
-/

/-! ## A182968.P9925734431071176854

`A103221((n+1)*A231179(n))`
-/

namespace A182968.P9925734431071176854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 ((n + 1 : ℤ) * A231179 n).toNat

end

end A182968.P9925734431071176854

/-! ## A182968.P5313660152454764045

`A040027(n)+A005078(A222014(n))`
-/

namespace A182968.P5313660152454764045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040027 n + A005078 (A222014 n).toNat

end

end A182968.P5313660152454764045

/-! ## A182968.P11261297850566787685

`A103221(A150877(n)+A058331(n))`
-/

namespace A182968.P11261297850566787685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A150877 n + A058331 n).toNat

end

end A182968.P11261297850566787685

/-!
# A182969: G.f. satisfies: A(x) = 1 + x*A(x)^3*A(x*A(x)).

The programs for A182969, there is no canonical definition to state claims against.
-/

/-! ## A182969.P1071441796598060215

`A285727(A027329(n))+A000698(n)`
-/

namespace A182969.P1071441796598060215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285727 (A027329 n).toNat + A000698 n

end

end A182969.P1071441796598060215

/-! ## A182969.P15813634794343759475

`A011371(A355720(n)+A004211(n))`
-/

namespace A182969.P15813634794343759475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A355720 n + A004211 n).toNat

end

end A182969.P15813634794343759475

/-!
# A182970: G.f.: A(x) = Product_{n>=1} 1/(1 - A_n(x)^n) where A_n(x) denotes the n-th iteration of A(x): A_n(x) = A_{n-1}(A(x)) with A_0(x)=x.

The programs for A182970, there is no canonical definition to state claims against.
-/

/-! ## A182970.P14723631229666245812

`A277676(n*a(n-1))-1` with `a(0)=1`
-/

namespace A182970.P14723631229666245812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A277676 ((n : ℤ) * a (n - 1)).toNat - 1

end

end A182970.P14723631229666245812

/-! ## A182970.P13662688951754905928

`A248183(∑[A007808(n)])`
-/

namespace A182970.P13662688951754905928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007808 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248183 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A182970.P13662688951754905928

/-!
# A182972: Numerators of positive rationals < 1 arranged by increasing sum of numerator and denominator then by increasing numerator.

The programs for A182972, the canonical program `A182972.P12481118658854817198` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182972 has offset 1).

The definition of A182972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182972.P9179635428180464833

`A038567(2*(n+1))-A182973(n+1)`
-/

namespace A182972.P9179635428180464833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (2 * (n + 1)) - A182973 (n + 1)

end

end A182972.P9179635428180464833

namespace A182972

/-- `A038567(2*(n+1))-A182973(n+1)` -/
def P9179635428180464833.Spec : Prop :=
  ∀ n, P9179635428180464833.a n = A182972 (n + 1)

theorem P9179635428180464833.correct : P9179635428180464833.Spec := by
  intro n
  simp only [A182972, Nat.add_sub_cancel, A182972.P9179635428180464833.a, A182972.P12481118658854817198.f1, A182972.P12481118658854817198.f2, A182972.P12481118658854817198.a, A020652, A020652.P12873781580618070316.a, A020653, A020653.P13896194492571762582.a, A038567, A038567.P2197162168153652474.a, A182973, A182973.P15964617675620395256.a, A002260, A002260.P769748059679640451.a, A166527, A166527.P3407768485719253100.f1, A166527.P3407768485719253100.f2, A166527.P3407768485719253100.a, A169581, A169581.P5880074655837136645.f1, A169581.P5880074655837136645.f2, A169581.P5880074655837136645.a, A002262, A002262.P12129691700837801527.a, A025581, A025581.P420762180635059694.a, A077478, A077478.P13653691619814893632.f1, A077478.P13653691619814893632.a, A003989, A003989.P4304575530733865990.a, A004736, A004736.P10337537277358081527.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A182972

/-! ## A182972.P10947081229885265393

`A038569(4*n+3)-A182973(n+1)`
-/

namespace A182972.P10947081229885265393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 (4 * n + 3) - A182973 (n + 1)

end

end A182972.P10947081229885265393

namespace A182972

/-- `A038569(4*n+3)-A182973(n+1)` -/
def P10947081229885265393.Spec : Prop :=
  ∀ n, P10947081229885265393.a n = A182972 (n + 1)

end A182972

/-! ## A182972.P10394525361548703683

`A038567(A005408(n+1))%A182973(n+1)`
-/

namespace A182972.P10394525361548703683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038567 (A005408 (n + 1)).toNat) (A182973 (n + 1))

end

end A182972.P10394525361548703683

namespace A182972

/-- `A038567(A005408(n+1))%A182973(n+1)` -/
def P10394525361548703683.Spec : Prop :=
  ∀ n, P10394525361548703683.a n = A182972 (n + 1)

end A182972

/-! ## A182972.P3789691236443228806

`A038567(A005843(n+1))%A182973(n+1)`
-/

namespace A182972.P3789691236443228806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038567 (A005843 (n + 1)).toNat) (A182973 (n + 1))

end

end A182972.P3789691236443228806

namespace A182972

/-- `A038567(A005843(n+1))%A182973(n+1)` -/
def P3789691236443228806.Spec : Prop :=
  ∀ n, P3789691236443228806.a n = A182972 (n + 1)

end A182972

/-! ## A182972.P12481118658854817198

`A020652(lt[A020652(n+1), A020653(n+1)]+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A182972

/-- `A020652(lt[A020652(n+1), A020653(n+1)]+1)` -/
def P12481118658854817198.Spec : Prop :=
  ∀ n, P12481118658854817198.a n = A182972 (n + 1)

theorem P12481118658854817198.correct : P12481118658854817198.Spec := by
  intro n
  simp only [A182972, Nat.add_sub_cancel]

end A182972

/-! ## A182972.P15476239866409612275

`A038566(lt[A038566(n+1), A020653(n+1)]+2)`
-/

namespace A182972.P15476239866409612275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2)

end

end A182972.P15476239866409612275

namespace A182972

/-- `A038566(lt[A038566(n+1), A020653(n+1)]+2)` -/
def P15476239866409612275.Spec : Prop :=
  ∀ n, P15476239866409612275.a n = A182972 (n + 1)

end A182972

/-! ## A182972.P5120878787184937676

`A020652(2*(n+1))+A020653(2*(n+1))-A182973(n+1)`
-/

namespace A182972.P5120878787184937676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020652 (2 * (n + 1)) + (A020653 (2 * (n + 1)) - A182973 (n + 1))

end

end A182972.P5120878787184937676

namespace A182972

/-- `A020652(2*(n+1))+A020653(2*(n+1))-A182973(n+1)` -/
def P5120878787184937676.Spec : Prop :=
  ∀ n, P5120878787184937676.a n = A182972 (n + 1)

end A182972

/-! ## A182972.P10265357252196726752

`A366191(2*n+5)`
-/

namespace A182972.P10265357252196726752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366191 (2 * n + 5)

end

end A182972.P10265357252196726752

namespace A182972

/-- `A366191(2*n+5)` -/
def P10265357252196726752.Spec : Prop :=
  ∀ n, P10265357252196726752.a n = A182972 (n + 1)

end A182972

/-! ## A182972.P1337334585389443504

`A002260(lt[(n+1)², A061036(n+1)])`
-/

namespace A182972.P1337334585389443504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A182972.P1337334585389443504

namespace A182972

/-- `A002260(lt[(n+1)², A061036(n+1)])` -/
def P1337334585389443504.Spec : Prop :=
  ∀ n, P1337334585389443504.a n = A182972 (n + 1)

end A182972

/-! ## A182972.P7286099833386496205

`A002262(lt[(n+1)², A061036(n+1)])`
-/

namespace A182972.P7286099833386496205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A182972.P7286099833386496205

namespace A182972

/-- `A002262(lt[(n+1)², A061036(n+1)])` -/
def P7286099833386496205.Spec : Prop :=
  ∀ n, P7286099833386496205.a n = A182972 (n + 1)

end A182972

/-! ## A182972.P9506896854872745990

`A226314(lt[A226314(n+1), A167192(n+1)]+1)`
-/

namespace A182972.P9506896854872745990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226314 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A182972.P9506896854872745990

namespace A182972

/-- `A226314(lt[A226314(n+1), A167192(n+1)]+1)` -/
def P9506896854872745990.Spec : Prop :=
  ∀ n, P9506896854872745990.a n = A182972 (n + 1)

end A182972

/-!
# A182973: Denominators of positive rationals < 1 arranged by increasing sum of numerator and denominator then by increasing numerator.

The programs for A182973, the canonical program `A182973.P15964617675620395256` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182973 has offset 1).

The definition of A182973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182973.P15964617675620395256

`A038567(2*(n+1))-A182972(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A182973

/-- `A038567(2*(n+1))-A182972(n+1)` -/
def P15964617675620395256.Spec : Prop :=
  ∀ n, P15964617675620395256.a n = A182973 (n + 1)

theorem P15964617675620395256.correct : P15964617675620395256.Spec := by
  intro n
  simp only [A182973, Nat.add_sub_cancel]

end A182973

/-! ## A182973.P176491363378366128

`A038569(4*n+3)-A182972(n+1)`
-/

namespace A182973.P176491363378366128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 (4 * n + 3) - A182972 (n + 1)

end

end A182973.P176491363378366128

namespace A182973

/-- `A038569(4*n+3)-A182972(n+1)` -/
def P176491363378366128.Spec : Prop :=
  ∀ n, P176491363378366128.a n = A182973 (n + 1)

end A182973

/-! ## A182973.P13750752692688460560

`A002264(A336756(n+1))-A182972(n+1)`
-/

namespace A182973.P13750752692688460560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A336756 (n + 1)).toNat - A182972 (n + 1)

end

end A182973.P13750752692688460560

namespace A182973

/-- `A002264(A336756(n+1))-A182972(n+1)` -/
def P13750752692688460560.Spec : Prop :=
  ∀ n, P13750752692688460560.a n = A182973 (n + 1)

end A182973

/-! ## A182973.P8296088271376300952

`A020653(lt[A020652(n+1), A020653(n+1)]+1)`
-/

namespace A182973.P8296088271376300952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020653 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A182973.P8296088271376300952

namespace A182973

/-- `A020653(lt[A020652(n+1), A020653(n+1)]+1)` -/
def P8296088271376300952.Spec : Prop :=
  ∀ n, P8296088271376300952.a n = A182973 (n + 1)

end A182973

/-! ## A182973.P13210630988236219098

`A020653(lt[A038566(n+1), A020653(n+1)]+1)`
-/

namespace A182973.P13210630988236219098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020653 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A182973.P13210630988236219098

namespace A182973

/-- `A020653(lt[A038566(n+1), A020653(n+1)]+1)` -/
def P13210630988236219098.Spec : Prop :=
  ∀ n, P13210630988236219098.a n = A182973 (n + 1)

end A182973

/-! ## A182973.P11975739443571934685

`A366191(2*(n+3))`
-/

namespace A182973.P11975739443571934685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366191 (2 * (n + 3))

end

end A182973.P11975739443571934685

namespace A182973

/-- `A366191(2*(n+3))` -/
def P11975739443571934685.Spec : Prop :=
  ∀ n, P11975739443571934685.a n = A182973 (n + 1)

end A182973

/-! ## A182973.P14994649329637230842

`A025581(lt[A226314(n+1), A167192(n+1)])`
-/

namespace A182973.P14994649329637230842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A182973.P14994649329637230842

namespace A182973

/-- `A025581(lt[A226314(n+1), A167192(n+1)])` -/
def P14994649329637230842.Spec : Prop :=
  ∀ n, P14994649329637230842.a n = A182973 (n + 1)

end A182973

/-! ## A182973.P8471955646836871202

`A167192(lt[A226314(n+1), A167192(n+1)]+1)`
-/

namespace A182973.P8471955646836871202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167192 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A182973.P8471955646836871202

namespace A182973

/-- `A167192(lt[A226314(n+1), A167192(n+1)]+1)` -/
def P8471955646836871202.Spec : Prop :=
  ∀ n, P8471955646836871202.a n = A182973 (n + 1)

end A182973

/-! ## A182973.P8383275563953906238

`A354459(n+1)+1-A182972(n+1)`
-/

namespace A182973.P8383275563953906238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354459 (n + 1) + (1 - A182972 (n + 1))

end

end A182973.P8383275563953906238

namespace A182973

/-- `A354459(n+1)+1-A182972(n+1)` -/
def P8383275563953906238.Spec : Prop :=
  ∀ n, P8383275563953906238.a n = A182973 (n + 1)

end A182973

/-! ## A182973.P490884329296197374

`A038567(2*(n+1))-A333856(n+3)`
-/

namespace A182973.P490884329296197374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (2 * (n + 1)) - A333856 (n + 3)

end

end A182973.P490884329296197374

namespace A182973

/-- `A038567(2*(n+1))-A333856(n+3)` -/
def P490884329296197374.Spec : Prop :=
  ∀ n, P490884329296197374.a n = A182973 (n + 1)

end A182973

/-!
# A182974: Numbers n for which A020652(n)/A038567(n) = A182972(n)/A182973(n).

The programs for A182974, there is no canonical definition to state claims against.
-/

/-! ## A182974.P4963187972588345988

`A151706(A132164(n))+A098871(n)`
-/

namespace A182974.P4963187972588345988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151706 (A132164 n).toNat + A098871 n

end

end A182974.P4963187972588345988

/-!
# A182975: Numerators of fractions with the same position in A020652/A038567 and A182972/A182973.

The programs for A182975, there is no canonical definition to state claims against.
-/

/-! ## A182975.P6475287104672293883

`A097508(A182976(n+1)+1)`
-/

namespace A182975.P6475287104672293883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (A182976 (n + 1) + 1).toNat

end

end A182975.P6475287104672293883

/-! ## A182975.P2371919425092991231

`A020652(A182974(n+1))`
-/

namespace A182975.P2371919425092991231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020652 (A182974 (n + 1)).toNat

end

end A182975.P2371919425092991231

/-! ## A182975.P16741380494562792819

`A038566(A182974(n+1)+1)`
-/

namespace A182975.P16741380494562792819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (A182974 (n + 1) + 1).toNat

end

end A182975.P16741380494562792819

/-! ## A182975.P16749978874537919931

`A182976(n+1)-A020653(A182974(n+1))`
-/

namespace A182975.P16749978874537919931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182976 (n + 1) - A020653 (A182974 (n + 1)).toNat

end

end A182975.P16749978874537919931

/-!
# A182976: Denominators of fractions with the same position in A020652/A038567 and A182972/A182973.

The programs for A182976, there is no canonical definition to state claims against.
-/

/-! ## A182976.P7891245125392255242

`A038567(A182974(n+1))`
-/

namespace A182976.P7891245125392255242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A182974 (n + 1)).toNat

end

end A182976.P7891245125392255242

/-! ## A182976.P7221847792243276615

`A182975(n+1)+A020653(A182974(n+1))`
-/

namespace A182976.P7221847792243276615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182975 (n + 1) + A020653 (A182974 (n + 1)).toNat

end

end A182976.P7221847792243276615

/-! ## A182976.P14363317934761641434

`A038566(A182974(n+1)+1)+A020653(A182974(n+1))`
-/

namespace A182976.P14363317934761641434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (A182974 (n + 1) + 1).toNat + A020653 (A182974 (n + 1)).toNat

end

end A182976.P14363317934761641434

/-! ## A182976.P11303746909016593473

`A038568(2*A182974(n+1))`
-/

namespace A182976.P11303746909016593473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 (2 * A182974 (n + 1)).toNat

end

end A182976.P11303746909016593473

/-!
# A182977: Total number of parts that are neither the smallest part nor the largest part in all partitions of n.

The programs for A182977, there is no canonical definition to state claims against.
-/

/-! ## A182977.P3049958050159077863

`A182984(n)-A182629(n)`
-/

namespace A182977.P3049958050159077863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182984 n - A182629 n

end

end A182977.P3049958050159077863

/-! ## A182977.P5257825110911451578

`A248333(A293642(n))`
-/

namespace A182977.P5257825110911451578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248333 (A293642 n).toNat

end

end A182977.P5257825110911451578

/-! ## A182977.P6963645332472480075

`A337682(A114736(n)+A024793(n+1))`
-/

namespace A182977.P6963645332472480075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337682 (A114736 n + A024793 (n + 1)).toNat

end

end A182977.P6963645332472480075

/-! ## A182977.P1006871023568312440

`A097089(xor(A001678(n), A046080(n+1)))`
-/

namespace A182977.P1006871023568312440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097089 (Int.xor (A001678 n) (A046080 (n + 1))).toNat

end

end A182977.P1006871023568312440

/-! ## A182977.P17865611210311278477

`A097089(or(A001678(n), A323239(3*n+2)))`
-/

namespace A182977.P17865611210311278477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097089 (Int.lor (A001678 n) (A323239 (3 * n + 2))).toNat

end

end A182977.P17865611210311278477

/-!
# A182978: Total number of parts that are the smallest part or the largest part in all partitions of n.

The programs for A182978, there is no canonical definition to state claims against.
-/

/-! ## A182978.P2676864396329595913

`A006128(n+1)-A182977(n+1)`
-/

namespace A182978.P2676864396329595913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - A182977 (n + 1)

end

end A182978.P2676864396329595913

/-! ## A182978.P2234172537710435836

`A268191(n+1)+Δ[A196039(n)]`
-/

namespace A182978.P2234172537710435836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268191 (n + 1) + (f1 (n + 1) - f1 n)

end

end A182978.P2234172537710435836

/-! ## A182978.P18075982699616092253

`A182629(n+1)+A092269(n+1)`
-/

namespace A182978.P18075982699616092253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182629 (n + 1) + A092269 (n + 1)

end

end A182978.P18075982699616092253

/-! ## A182978.P12486810994775341217

`A268191(n+1)+A046746(n+1)`
-/

namespace A182978.P12486810994775341217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268191 (n + 1) + A046746 (n + 1)

end

end A182978.P12486810994775341217

/-! ## A182978.P7405731448282973926

`∑[A138137(n+1)-Δ[A182977(n)]]`
-/

namespace A182978.P7405731448282973926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182977 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182978.P7405731448282973926

/-! ## A182978.P15696998764437785540

`A046746(n+1)+A116686(n+1)-A182977(n+1)`
-/

namespace A182978.P15696998764437785540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046746 (n + 1) + (A116686 (n + 1) - A182977 (n + 1))

end

end A182978.P15696998764437785540

/-! ## A182978.P699981368339264478

`A000203(n+1)+A220477(n+1)-A182977(n+1)`
-/

namespace A182978.P699981368339264478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A220477 (n + 1) - A182977 (n + 1))

end

end A182978.P699981368339264478

/-! ## A182978.P5642008148050956485

`A092269(n+1)+A220477(n+1)-A116686(n+1)`
-/

namespace A182978.P5642008148050956485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092269 (n + 1) + (A220477 (n + 1) - A116686 (n + 1))

end

end A182978.P5642008148050956485

/-! ## A182978.P287660872136693788

`A092269(n+1)+A182984(n+1)-A182977(n+1)`
-/

namespace A182978.P287660872136693788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092269 (n + 1) + (A182984 (n + 1) - A182977 (n + 1))

end

end A182978.P287660872136693788

/-!
# A182979: Fermi-Dirac representation of n. Let n have factorization p1^(2^e1) * p2^(2^e2) * ... * pr^(2^er), where each factor is in A050376. The number n is represented by a binary string that indicates which terms of A050376 appear in the factorization of n.

The programs for A182979, there is no canonical definition to state claims against.
-/

/-! ## A182979.P7660026740042105102

`A007088(A052331(n+1))`
-/

namespace A182979.P7660026740042105102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A052331 (n + 1)).toNat

end

end A182979.P7660026740042105102

/-! ## A182979.P9112089943163413448

`A054841(A160102(n+1))`
-/

namespace A182979.P9112089943163413448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (A160102 (n + 1)).toNat

end

end A182979.P9112089943163413448

/-! ## A182979.P9565279869826943595

`A007088(A064358(n+1)-1)`
-/

namespace A182979.P9565279869826943595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A064358 (n + 1) - 1).toNat

end

end A182979.P9565279869826943595

/-! ## A182979.P10648815074913345565

`A007088(∑{p}[A160102(n+1), A048675(#)])`
-/

namespace A182979.P10648815074913345565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p).toNat

end

end A182979.P10648815074913345565

/-! ## A182979.P12958202008012245448

`A007088(∑{p}[A160102(n+1), A087207(#)])`
-/

namespace A182979.P12958202008012245448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A087207 p).toNat

end

end A182979.P12958202008012245448

/-!
# A182980: Version "mirror" of the modular table of partitions of A135010. Triangle read by rows: row n lists the parts of the last section of the set of partitions of n.

The programs for A182980, there is no canonical definition to state claims against.
-/

/-! ## A182980.P9801120313987114586

`A015053(A135010(n+1)^A126717(n))`
-/

namespace A182980.P9801120313987114586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (SequenceMachineLib.roundAway ((A135010 (n + 1) : ℚ) ^ (A126717 n : ℤ))).toNat

end

end A182980.P9801120313987114586

/-! ## A182980.P45548702738845220

`A015053(A138138(n+1)^A126717(n))`
-/

namespace A182980.P45548702738845220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (SequenceMachineLib.roundAway ((A138138 (n + 1) : ℚ) ^ (A126717 n : ℤ))).toNat

end

end A182980.P45548702738845220

/-! ## A182980.P4290123070072744261

`A015053(A207377(n+1)^A126717(n))`
-/

namespace A182980.P4290123070072744261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (SequenceMachineLib.roundAway ((A207377 (n + 1) : ℚ) ^ (A126717 n : ℤ))).toNat

end

end A182980.P4290123070072744261

/-! ## A182980.P5503322165570137685

`A015053(A206438(n+1)^A050873(n+1))`
-/

namespace A182980.P5503322165570137685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (SequenceMachineLib.roundAway ((A206438 (n + 1) : ℚ) ^ (A050873 (n + 1) : ℤ))).toNat

end

end A182980.P5503322165570137685

/-! ## A182980.P418674580683879132

`gcd(A201062(A119620(n)), A206438(n+1))`
-/

namespace A182980.P418674580683879132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A201062 (A119620 n).toNat) (A206438 (n + 1))

end

end A182980.P418674580683879132

/-!
# A182984: Total number of parts that are not the smallest part in all partitions of n.

The programs for A182984, there is no canonical definition to state claims against.
-/

/-! ## A182984.P2460289666729055995

`A182977(n)+A182629(n)`
-/

namespace A182984.P2460289666729055995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182977 n + A182629 n

end

end A182984.P2460289666729055995

/-! ## A182984.P2435308709222195412

`A096541(n)-A195820(A028310(n))`
-/

namespace A182984.P2435308709222195412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096541 n - A195820 (A028310 n).toNat

end

end A182984.P2435308709222195412

/-! ## A182984.P17048008050500265068

`A096541(n)-A195820(A065033(2*n))`
-/

namespace A182984.P17048008050500265068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096541 n - A195820 (A065033 (2 * n)).toNat

end

end A182984.P17048008050500265068

/-! ## A182984.P14449218615052235883

`A284870(n)-(A339011(n)+A195820(A028310(n)))`
-/

namespace A182984.P14449218615052235883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284870 n - (A339011 n + A195820 (A028310 n).toNat)

end

end A182984.P14449218615052235883

/-! ## A182984.P15436319424516206520

`A220477(A233583(n+1))-A268191(A028310(n))`
-/

namespace A182984.P15436319424516206520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220477 (A233583 (n + 1)).toNat - A268191 (A028310 n).toNat

end

end A182984.P15436319424516206520

/-! ## A182984.P13499495744699758769

`A046746(n)+A182977(n)-A319083(A000124(n))`
-/

namespace A182984.P13499495744699758769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046746 n + (A182977 n - A319083 (A000124 n).toNat)

end

end A182984.P13499495744699758769

/-!
# A182985: Largest part of the n-th row of the table version "mirror" of the modular table of partitions of A135010 and A182980.

The programs for A182985, there is no canonical definition to state claims against.
-/

/-! ## A182985.P10358826987582911715

`A001222(A052937(n)+A030107(n))`
-/

namespace A182985.P10358826987582911715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A052937 n + A030107 n).toNat

end

end A182985.P10358826987582911715

/-! ## A182985.P6066065693653474018

`A001222(A255693(n)+A052937(n))`
-/

namespace A182985.P6066065693653474018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A255693 n + A052937 n).toNat

end

end A182985.P6066065693653474018

/-! ## A182985.P13739542199914668577

`A001222(A319725(n)+A052937(n))`
-/

namespace A182985.P13739542199914668577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A319725 n + A052937 n).toNat

end

end A182985.P13739542199914668577

/-!
# A182986: Zero together with the prime numbers (A000040).

The programs for A182986, the canonical program `A182986.P2625431067462217415` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182986 has offset 1).

The definition of A182986 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182986.P17168188734676663114

`∑{d}[n, A007444(#)]`
-/

namespace A182986.P17168188734676663114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007444 d

end

end A182986.P17168188734676663114

namespace A182986

/-- `∑{d}[n, A007444(#)]` -/
def P17168188734676663114.Spec : Prop :=
  ∀ n, P17168188734676663114.a n = A182986 (n + 1)

end A182986

/-! ## A182986.P14663390224452996340

`A299763(n+1)-1`
-/

namespace A182986.P14663390224452996340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 1) - 1

end

end A182986.P14663390224452996340

namespace A182986

/-- `A299763(n+1)-1` -/
def P14663390224452996340.Spec : Prop :=
  ∀ n, P14663390224452996340.a n = A182986 (n + 1)

theorem P14663390224452996340.correct : P14663390224452996340.Spec := by
  intro n
  simp only [A182986, Nat.add_sub_cancel, A182986.P14663390224452996340.a, A182986.P2625431067462217415.a, A054541, A054541.P347795157194570387.a, A299763, A299763.P9872008477996207838.a, A046930, A046930.P1162450832993365803.f1, A046930.P1162450832993365803.a, A011974, A011974.P2665693327137284562.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A182986

/-! ## A182986.P13776101181016589850

`∑{d}[n+1, A143444(#)]`
-/

namespace A182986.P13776101181016589850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A143444 d

end

end A182986.P13776101181016589850

namespace A182986

/-- `∑{d}[n+1, A143444(#)]` -/
def P13776101181016589850.Spec : Prop :=
  ∀ n, P13776101181016589850.a n = A182986 (n + 1)

end A182986

/-! ## A182986.P10407953615144014588

`∑{p}[A008578(n+1), #]`
-/

namespace A182986.P10407953615144014588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A182986.P10407953615144014588

namespace A182986

/-- `∑{p}[A008578(n+1), #]` -/
def P10407953615144014588.Spec : Prop :=
  ∀ n, (P10407953615144014588.a n : ℤ) = A182986 (n + 1)

end A182986

/-! ## A182986.P2625431067462217415

`A054541(n)+a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A182986

/-- `A054541(n)+a(n-1)` -/
def P2625431067462217415.Spec : Prop :=
  ∀ n, P2625431067462217415.a n = A182986 (n + 1)

theorem P2625431067462217415.correct : P2625431067462217415.Spec := by
  intro n
  simp only [A182986, Nat.add_sub_cancel]

end A182986

/-! ## A182986.P3081282671930878212

`A000040(a(and(2, n²))+n)` with `a(0)=0`
-/

namespace A182986.P3081282671930878212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000040 (a (Nat.land 2 (n ^ 2)) + (n : ℤ)).toNat

end

end A182986.P3081282671930878212

namespace A182986

/-- `A000040(a(and(2, n²))+n)` -/
def P3081282671930878212.Spec : Prop :=
  ∀ n, P3081282671930878212.a n = A182986 (n + 1)

end A182986

/-! ## A182986.P2784082735676504483

`A000040(n-a(and(2, n²)))` with `a(0)=0`
-/

namespace A182986.P2784082735676504483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000040 ((n : ℤ) - a (Nat.land 2 (n ^ 2))).toNat

end

end A182986.P2784082735676504483

namespace A182986

/-- `A000040(n-a(and(2, n²)))` -/
def P2784082735676504483.Spec : Prop :=
  ∀ n, P2784082735676504483.a n = A182986 (n + 1)

end A182986

/-! ## A182986.P125289256550841714

`Δ[A036439(C(2, n+2)+n)]`
-/

namespace A182986.P125289256550841714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (Nat.choose 2 (n + 2) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182986.P125289256550841714

namespace A182986

/-- `Δ[A036439(C(2, n+2)+n)]` -/
def P125289256550841714.Spec : Prop :=
  ∀ n, P125289256550841714.a n = A182986 (n + 1)

end A182986

/-! ## A182986.P6592711840075193989

`A000040(a(C(2, n+2))+n)` with `a(0)=0`
-/

namespace A182986.P6592711840075193989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000040 (a (Nat.choose 2 (n + 2)) + (n : ℤ)).toNat

end

end A182986.P6592711840075193989

namespace A182986

/-- `A000040(a(C(2, n+2))+n)` -/
def P6592711840075193989.Spec : Prop :=
  ∀ n, P6592711840075193989.a n = A182986 (n + 1)

end A182986

/-! ## A182986.P18225704700855263469

`A000040(gcd(n, n*a(n-1)))` with `a(0)=0`
-/

namespace A182986.P18225704700855263469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000040 (Int.gcd (n : ℤ) ((n : ℤ) * a (n - 1)))

end

end A182986.P18225704700855263469

namespace A182986

/-- `A000040(gcd(n, n*a(n-1)))` -/
def P18225704700855263469.Spec : Prop :=
  ∀ n, P18225704700855263469.a n = A182986 (n + 1)

end A182986

/-! ## A182986.P1101913677356950695

`A000040(n-a(C(n-1, n)))` with `a(0)=0`
-/

namespace A182986.P1101913677356950695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000040 ((n : ℤ) - a (Nat.choose ((n : ℤ) - 1).toNat n)).toNat

end

end A182986.P1101913677356950695

namespace A182986

/-- `A000040(n-a(C(n-1, n)))` -/
def P1101913677356950695.Spec : Prop :=
  ∀ n, P1101913677356950695.a n = A182986 (n + 1)

end A182986

/-! ## A182986.P9262944341368626861

`A000040(a(floor(1/(n+1)))+n)` with `a(0)=0`
-/

namespace A182986.P9262944341368626861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000040 (a ⌊1 / (n + 1 : ℚ)⌋.toNat + (n : ℤ)).toNat

end

end A182986.P9262944341368626861

namespace A182986

/-- `A000040(a(floor(1/(n+1)))+n)` -/
def P9262944341368626861.Spec : Prop :=
  ∀ n, P9262944341368626861.a n = A182986 (n + 1)

end A182986

/-! ## A182986.P1282177631016155231

`A028815(n)-A054977(n)`
-/

namespace A182986.P1282177631016155231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n - A054977 n

end

end A182986.P1282177631016155231

namespace A182986

/-- `A028815(n)-A054977(n)` -/
def P1282177631016155231.Spec : Prop :=
  ∀ n, P1282177631016155231.a n = A182986 (n + 1)

end A182986

/-! ## A182986.P4931980838109209189

`A254667(n)+A073170(n+1)`
-/

namespace A182986.P4931980838109209189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n + A073170 (n + 1)

end

end A182986.P4931980838109209189

namespace A182986

/-- `A254667(n)+A073170(n+1)` -/
def P4931980838109209189.Spec : Prop :=
  ∀ n, P4931980838109209189.a n = A182986 (n + 1)

end A182986

/-! ## A182986.P10500410397518194143

`A008578(n+1)-A000007(n)`
-/

namespace A182986.P10500410397518194143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - A000007 n

end

end A182986.P10500410397518194143

namespace A182986

/-- `A008578(n+1)-A000007(n)` -/
def P10500410397518194143.Spec : Prop :=
  ∀ n, P10500410397518194143.a n = A182986 (n + 1)

end A182986

/-! ## A182986.P11966337622833129268

`A006005(n+1)-A075526(n)`
-/

namespace A182986.P11966337622833129268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) - A075526 n

end

end A182986.P11966337622833129268

namespace A182986

/-- `A006005(n+1)-A075526(n)` -/
def P11966337622833129268.Spec : Prop :=
  ∀ n, P11966337622833129268.a n = A182986 (n + 1)

end A182986

/-! ## A182986.P7609164213832129192

`A045344(n+1)-A075527(n)`
-/

namespace A182986.P7609164213832129192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1) - A075527 n

end

end A182986.P7609164213832129192

namespace A182986

/-- `A045344(n+1)-A075527(n)` -/
def P7609164213832129192.Spec : Prop :=
  ∀ n, P7609164213832129192.a n = A182986 (n + 1)

end A182986

/-! ## A182986.P1318102378740563709

`A008578(n+1)*A057427(n)`
-/

namespace A182986.P1318102378740563709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A057427 n

end

end A182986.P1318102378740563709

namespace A182986

/-- `A008578(n+1)*A057427(n)` -/
def P1318102378740563709.Spec : Prop :=
  ∀ n, P1318102378740563709.a n = A182986 (n + 1)

end A182986

/-! ## A182986.P10505836553074302913

`A008578(n+1)%A000132(n)`
-/

namespace A182986.P10505836553074302913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 1)) (A000132 n)

end

end A182986.P10505836553074302913

namespace A182986

/-- `A008578(n+1)%A000132(n)` -/
def P10505836553074302913.Spec : Prop :=
  ∀ n, P10505836553074302913.a n = A182986 (n + 1)

end A182986

/-! ## A182986.P11657547168312318235

`∪[A016986(n), A000040(n+1)]`
-/

namespace A182986.P11657547168312318235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016986 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A182986.P11657547168312318235

namespace A182986

/-- `∪[A016986(n), A000040(n+1)]` -/
def P11657547168312318235.Spec : Prop :=
  ∀ n, (P11657547168312318235.a n : ℤ) = A182986 (n + 1)

end A182986

/-!
# A182987: Least a + b such that a*b = A002110(n), the product of the first n primes, where a, b are positive integers.

The programs for A182987, there is no canonical definition to state claims against.
-/

/-! ## A182987.P11813304223141434908

`p?[A173631(n)]`
-/

namespace A182987.P11813304223141434908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182987.P11813304223141434908

/-! ## A182987.P9920697832869112291

`A173631(n^(∑{digits}[n, 10^#]%9))`
-/

namespace A182987.P9920697832869112291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173631 (n ^ (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum % 9))

end

end A182987.P9920697832869112291

/-! ## A182987.P16282229026459133796

`A151800(A173631(n)-1)`
-/

namespace A182987.P16282229026459133796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A173631 n - 1).toNat

end

end A182987.P16282229026459133796

/-! ## A182987.P10755880349097337918

`A006530(2*A173631(n))`
-/

namespace A182987.P10755880349097337918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A173631 n).toNat

end

end A182987.P10755880349097337918

/-!
# A182988: The number of dominance pairs of integer partitions of n according to either/or dominance order, where dominance between two partitions x and y means that x is majorized by y or y is majorized by x.

The programs for A182988, there is no canonical definition to state claims against.
-/

/-! ## A182988.P14668649526529487426

`A001255(n)-A248476(A028310(n))`
-/

namespace A182988.P14668649526529487426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001255 n - A248476 (A028310 n).toNat

end

end A182988.P14668649526529487426

/-! ## A182988.P14389013985722744761

`A001255(n)-A248476(A233583(n+1))`
-/

namespace A182988.P14389013985722744761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001255 n - A248476 (A233583 (n + 1)).toNat

end

end A182988.P14389013985722744761

/-! ## A182988.P11509695583329577155

`A000041(n)²-A248476(A233583(n+1))`
-/

namespace A182988.P11509695583329577155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n ^ 2 - A248476 (A233583 (n + 1)).toNat

end

end A182988.P11509695583329577155

/-! ## A182988.P1086608097705164120

`2*A318396(n)-A000041(n)`
-/

namespace A182988.P1086608097705164120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A318396 n - A000041 n

end

end A182988.P1086608097705164120

/-! ## A182988.P12635649168894829096

`2*A318396(n)-∑[A002865(n)]`
-/

namespace A182988.P12635649168894829096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A318396 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182988.P12635649168894829096

/-!
# A182989: Partial sums of A182731.

The programs for A182989, there is no canonical definition to state claims against.
-/

/-! ## A182989.P7629151156787243871

`∑[or(A025870(n), A182731(n+1))]`
-/

namespace A182989.P7629151156787243871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025870 n) (A182731 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182989.P7629151156787243871

/-! ## A182989.P8424843104367581514

`∑[or(A182731(n+1), A260649(n+1))]`
-/

namespace A182989.P8424843104367581514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A182731 (n + 1)) (A260649 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182989.P8424843104367581514

/-! ## A182989.P4900255780169800041

`∑[or(A212125(n+81), A260649(n+1))]`
-/

namespace A182989.P4900255780169800041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A212125 (n + 81)) (A260649 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182989.P4900255780169800041

/-! ## A182989.P907994718125264390

`∑[A182731(A043320(n+1))]`
-/

namespace A182989.P907994718125264390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182731 (A043320 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182989.P907994718125264390

/-! ## A182989.P4472275415751293127

`∑[A182731(A187829(n+1))]`
-/

namespace A182989.P4472275415751293127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182731 (A187829 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182989.P4472275415751293127

/-!
# A182991: Numbers with property that their divisors are odd, even, odd, even, and so on.

The programs for A182991, there is no canonical definition to state claims against.
-/

/-! ## A182991.P12520900637476481620

`record[gcd(2, A054429(n+1))*A053626(n+1)]`
-/

namespace A182991.P12520900637476481620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A054429 (n + 1)) : ℤ) * A053626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182991.P12520900637476481620

/-! ## A182991.P5356393799225497234

`record[A053626(n+1)*A237271(A020639(n+1))]`
-/

namespace A182991.P5356393799225497234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053626 (n + 1) * A237271 (A020639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182991.P5356393799225497234

/-! ## A182991.P10825088578044985009

`∩[A111284(n+1), A392467(n+1)]`
-/

namespace A182991.P10825088578044985009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182991.P10825088578044985009

/-! ## A182991.P5844349234554587995

`∩[A139544(n+1), A392467(n+1)]`
-/

namespace A182991.P5844349234554587995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182991.P5844349234554587995

/-! ## A182991.P10621844084012342848

`∩[A111284(n+1), A348577(n+1)]`
-/

namespace A182991.P10621844084012342848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182991.P10621844084012342848

/-! ## A182991.P5185190180140355370

`eq[n, A026741(A058359(n+1))]+1`
-/

namespace A182991.P5185190180140355370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A058359 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A182991.P5185190180140355370

/-! ## A182991.P6755795891447276055

`eq[A058359(n+1), A317311(n)]+1`
-/

namespace A182991.P6755795891447276055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317311 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A182991.P6755795891447276055

/-! ## A182991.P4611141106963025294

`record[gcd(A058359(n+1)+1, A014681(n))]`
-/

namespace A182991.P4611141106963025294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A058359 (n + 1) + 1) (A014681 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182991.P4611141106963025294

/-! ## A182991.P2369029083288029574

`eq[A000593(n+1), A071324(n+1)]+1`
-/

namespace A182991.P2369029083288029574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071324 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A182991.P2369029083288029574

/-! ## A182991.P12407403892373449218

`record[xor(3-A094572(n+1), A058359(n+1))]`
-/

namespace A182991.P12407403892373449218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (3 - A094572 (n + 1)) (A058359 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182991.P12407403892373449218

/-!
# A182992: Number of parts of the n-th subshell of the head of the last section of the set of partitions of any even integer >= 2n.

The programs for A182992, there is no canonical definition to state claims against.
-/

/-! ## A182992.P1095877250081711413

`Δ[A182734(n)]`
-/

namespace A182992.P1095877250081711413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182734 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182992.P1095877250081711413

/-! ## A182992.P3825240552498369299

`Δ[A138135(round(1/acot(n))+n)]`
-/

namespace A182992.P3825240552498369299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138135 (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182992.P3825240552498369299

/-! ## A182992.P7360145692486004085

`Δ[A138135(floor(3/acot(n))-n)]`
-/

namespace A182992.P7360145692486004085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138135 (⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182992.P7360145692486004085

/-! ## A182992.P15516523520919875735

`Δ[A138135(comp[2*(n+1)]+1)]`
-/

namespace A182992.P15516523520919875735
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138135 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182992.P15516523520919875735

/-! ## A182992.P17022153963176473661

`Δ[record[A138135(n+1)/gcd(2, n)]]`
-/

namespace A182992.P17022153963176473661
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138135 (n + 1) : ℚ) / (Nat.gcd 2 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182992.P17022153963176473661

/-!
# A182993: Number of parts of the n-th subshell of the head of the last section of the set of partitions of any odd integer >= 2n+1.

The programs for A182993, there is no canonical definition to state claims against.
-/

/-! ## A182993.P4971140238884175714

`A138135(2*(n+1)+1)-A138135(2*(n+1)-1)`
-/

namespace A182993.P4971140238884175714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138135 (2 * (n + 1) + 1) - A138135 (2 * (n + 1) - 1)

end

end A182993.P4971140238884175714

/-! ## A182993.P1373908244953090533

`Δ[A182735(n)]`
-/

namespace A182993.P1373908244953090533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182993.P1373908244953090533

/-! ## A182993.P13680195937349297608

`Δ[A138135(Δ[n²])]`
-/

namespace A182993.P13680195937349297608
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138135 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182993.P13680195937349297608

/-! ## A182993.P8204117099538008606

`abs(Δ[A138135(2*n+1)])`
-/

namespace A182993.P8204117099538008606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138135 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A182993.P8204117099538008606

/-! ## A182993.P4253262348925123982

`Δ[record[A138135(n^(n%2))]]`
-/

namespace A182993.P4253262348925123982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138135 (n ^ (n % 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182993.P4253262348925123982

/-!
# A182994: Sum of all parts of the n-th subshell of the head of the last section of the set of partitions of any even integer >= 2n.

The programs for A182994, there is no canonical definition to state claims against.
-/

/-! ## A182994.P9323068909254569721

`Δ[A182736(n)]`
-/

namespace A182994.P9323068909254569721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182994.P9323068909254569721

/-! ## A182994.P3429271931699036149

`Δ[2*n*A182746(n)]`
-/

namespace A182994.P3429271931699036149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A182746 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182994.P3429271931699036149

/-! ## A182994.P6139434045272312343

`Δ[2*n*Δ[A182716(n)]]`
-/

namespace A182994.P6139434045272312343
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182716 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * (f2 (n + 1) - f2 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182994.P6139434045272312343

/-! ## A182994.P13451891866043942287

`Δ[2*n*A002865(2*n)]`
-/

namespace A182994.P13451891866043942287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A002865 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182994.P13451891866043942287

/-! ## A182994.P6253779652097478453

`Δ[A138880(round(1/acot(n))+n)]`
-/

namespace A182994.P6253779652097478453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138880 (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182994.P6253779652097478453

/-!
# A182995: Sum of parts of the n-th subsection of the head of the last section of the set of partitions of any odd integer >= 2n+1.

The programs for A182995, there is no canonical definition to state claims against.
-/

/-! ## A182995.P8239431429383715223

`A138880(2*(n+1)+1)-A138880(2*(n+1)-1)`
-/

namespace A182995.P8239431429383715223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138880 (2 * (n + 1) + 1) - A138880 (2 * (n + 1) - 1)

end

end A182995.P8239431429383715223

/-! ## A182995.P14526008284076201212

`Δ[A182737(n)]`
-/

namespace A182995.P14526008284076201212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182737 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182995.P14526008284076201212

/-! ## A182995.P15894636752145414697

`Δ[A138880(Δ[n²])]`
-/

namespace A182995.P15894636752145414697
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138880 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182995.P15894636752145414697

/-! ## A182995.P8675421110058114792

`Δ[Δ[n²]*A182747(n)]`
-/

namespace A182995.P8675421110058114792
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) * A182747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182995.P8675421110058114792

/-! ## A182995.P10766396572335109308

`abs(Δ[A138880(2*n+1)])`
-/

namespace A182995.P10766396572335109308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138880 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A182995.P10766396572335109308

/-!
# A182996: Numbers congruent to 2 (mod 4) that are not in A182991.

The programs for A182996, there is no canonical definition to state claims against.
-/

/-! ## A182996.P3702360816288527946

`2*A090196(n+1)`
-/

namespace A182996.P3702360816288527946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090196 (n + 1)

end

end A182996.P3702360816288527946

/-! ## A182996.P9147886023948377424

`record[lcm(2, A060700(n+1))]`
-/

namespace A182996.P9147886023948377424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A060700 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182996.P9147886023948377424

/-! ## A182996.P2492515633909734347

`∩[4*n+2, A010814(n+1)]`
-/

namespace A182996.P2492515633909734347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182996.P2492515633909734347

/-! ## A182996.P14303222614645650053

`∩[4*n+1, A136000(n+1)]+1`
-/

namespace A182996.P14303222614645650053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A182996.P14303222614645650053

/-! ## A182996.P5706175633455058083

`2*∩[2*n+1, A005279(n+1)]`
-/

namespace A182996.P5706175633455058083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182996.P5706175633455058083

/-! ## A182996.P8494314661206241272

`lt[0, A024155((n+1)%or(2, n))]+1`
-/

namespace A182996.P8494314661206241272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 ((n + 1) % Nat.lor 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A182996.P8494314661206241272

/-! ## A182996.P14101201360683393038

`A004277(A090196(n+1))`
-/

namespace A182996.P14101201360683393038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A090196 (n + 1)).toNat

end

end A182996.P14101201360683393038

/-! ## A182996.P11786680161514186395

`record[A009531(A010814(n+3))]`
-/

namespace A182996.P11786680161514186395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A010814 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182996.P11786680161514186395

/-! ## A182996.P12264828883228926605

`A103517(A090196(n+1)-1)`
-/

namespace A182996.P12264828883228926605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A090196 (n + 1) - 1).toNat

end

end A182996.P12264828883228926605

/-! ## A182996.P9513737838875279871

`A001281(lcm(4, A090196(n+1)))`
-/

namespace A182996.P9513737838875279871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (Int.lcm 4 (A090196 (n + 1)))

end

end A182996.P9513737838875279871

