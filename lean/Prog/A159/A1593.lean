import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C011
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C002
import Seq.B005.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C013
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A159302: Numbers k such that the number of factors on both sides of the equation k + (k+1) = 2k+1 is the same.

The programs for A159302, the canonical program `A159302.P6188150767410829118` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159302 has offset 1).

The definition of A159302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159302.P6188150767410829118

`eq[A076191(2*(n+1)), A252736(n+2)]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A159302

/-- `eq[A076191(2*(n+1)), A252736(n+2)]+1` -/
def P6188150767410829118.Spec : Prop :=
  ∀ n, (P6188150767410829118.a n : ℤ) = A159302 (n + 1)

theorem P6188150767410829118.correct : P6188150767410829118.Spec := by
  intro n
  simp only [A159302, Nat.add_sub_cancel]

end A159302

/-! ## A159302.P5669636825437858923

`eq[A076191(A004277(n)), A252736(n+1)]`
-/

namespace A159302.P5669636825437858923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076191 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A159302.P5669636825437858923

namespace A159302

/-- `eq[A076191(A004277(n)), A252736(n+1)]` -/
def P5669636825437858923.Spec : Prop :=
  ∀ n, (P5669636825437858923.a n : ℤ) = A159302 (n + 1)

end A159302

/-!
# A159303: a(n) is the least L^1-norm of a square integer matrix of determinant n. The L^1-norm of the matrix M=(m_i,j) is by definition sum(i,j) |m_i,j|.

The programs for A159303, there is no canonical definition to state claims against.
-/

/-! ## A159303.P4599801215897392946

`A008622(A006530(n+1))+A005245(n+1)`
-/

namespace A159303.P4599801215897392946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008622 (A006530 (n + 1)).toNat + A005245 (n + 1)

end

end A159303.P4599801215897392946

/-! ## A159303.P18182023036365462000

`A008622(A065330(n+1))+A005245(n+1)`
-/

namespace A159303.P18182023036365462000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008622 (A065330 (n + 1)).toNat + A005245 (n + 1)

end

end A159303.P18182023036365462000

/-! ## A159303.P16899678940744754000

`A061373(n+1)+A002265(A061395(n+1))`
-/

namespace A159303.P16899678940744754000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061373 (n + 1) + A002265 (A061395 (n + 1)).toNat

end

end A159303.P16899678940744754000

/-! ## A159303.P10431829550168427453

`A061373(n+1)+A008622(A065330(n+1))`
-/

namespace A159303.P10431829550168427453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061373 (n + 1) + A008622 (A065330 (n + 1)).toNat

end

end A159303.P10431829550168427453

/-! ## A159303.P1338397526366046818

`A054899(A117366(n+1))+A005245(n+1)`
-/

namespace A159303.P1338397526366046818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A117366 (n + 1)).toNat + A005245 (n + 1)

end

end A159303.P1338397526366046818

/-!
# A159305: Sequence of happy tribonacci numbers.

The programs for A159305, there is no canonical definition to state claims against.
-/

/-! ## A159305.P763840873820128881

`A000073(A127817(n+1)+A109962(n))`
-/

namespace A159305.P763840873820128881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A127817 (n + 1) + A109962 n).toNat

end

end A159305.P763840873820128881

/-!
# A159307: Numerator of Hermite(n, 3/11).

The programs for A159307, the canonical program `A159307.P715674527857339656` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159307 has offset 0).

The definition of A159307 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159307.P715674527857339656

`6*a(n-1)-242*(n-1)*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159307

/-- `6*a(n-1)-242*(n-1)*a(n-2)` -/
def P715674527857339656.Spec : Prop :=
  ∀ n, P715674527857339656.a n = A159307 n

theorem P715674527857339656.correct : P715674527857339656.Spec := by
  intro n
  simp only [A159307]

end A159307

/-!
# A159308: G.f.: A(x) = exp( Sum_{n>=1} (1 + sigma(n)*x)^n * x^n/n ).

The programs for A159308, there is no canonical definition to state claims against.
-/

/-! ## A159308.P5966781273808137411

`floor(sqrt(A277196(floor((ϕ^n)²))))`
-/

namespace A159308.P5966781273808137411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A277196 ⌊(Real.goldenRatio ^ n) ^ 2⌋.toNat)

end

end A159308.P5966781273808137411

/-! ## A159308.P9114722056987735807

`a(n-2)*A001222((n+2)!)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A159308.P9114722056987735807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 2) * A001222 (Nat.factorial (n + 2))

end

end A159308.P9114722056987735807

/-! ## A159308.P18210538240218242515

`a(n-2)*A001222(∏[n+2])` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A159308.P18210538240218242515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 2) * A001222 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A159308.P18210538240218242515

/-!
# A159309: L.g.f.: Sum_{n>=1} a(n)*x^n/n = Sum_{n>=1} (1 + sigma(n)*x)^n * x^n/n.

The programs for A159309, there is no canonical definition to state claims against.
-/

/-! ## A159309.P9338615743842558832

`A184616(n)+A130988(A184175(n+2))`
-/

namespace A159309.P9338615743842558832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184616 n + A130988 (A184175 (n + 2)).toNat

end

end A159309.P9338615743842558832

/-!
# A159310: G.f.: Product_{n>=1} (1 + a(n)*x^n/n!) = Sum_{n>=0} (n+1)^(n-1)*x^n/n! = LambertW(-x)/(-x).

The programs for A159310, there is no canonical definition to state claims against.
-/

/-! ## A159310.P10025172280569661261

`A176589(∑[lcm(n, a(n-1))])` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A159310.P10025172280569661261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  Nat.lcm n (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176589 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A159310.P10025172280569661261

/-!
# A159311: G.f. A(x) satisfies: Sum_{n>=0} n!*x^n/A(x)^n = 1/(1-x).

The programs for A159311, there is no canonical definition to state claims against.
-/

/-! ## A159311.P6611861140005136246

`A008621(A200718(n)+A002449(n))`
-/

namespace A159311.P6611861140005136246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A200718 n + A002449 n).toNat

end

end A159311.P6611861140005136246

/-! ## A159311.P6468625155799612623

`A335441(n)+A054861(A014307(n))`
-/

namespace A159311.P6468625155799612623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335441 n + A054861 (A014307 n).toNat

end

end A159311.P6468625155799612623

/-! ## A159311.P9432595841922534785

`A007457(A148040(n)*A148078(n)+1)`
-/

namespace A159311.P9432595841922534785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007457 (A148040 n * A148078 n + 1).toNat

end

end A159311.P9432595841922534785

/-!
# A159312: Logarithm derivative of the g.f. of A159311 such that a(n) = (n-1)*A159311(n) + 1.

The programs for A159312, there is no canonical definition to state claims against.
-/

/-! ## A159312.P218462114051285067

`n*A159311(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A159312.P218462114051285067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A159311 (n + 1) + 1

end

end A159312.P218462114051285067

/-! ## A159312.P11379022969014826507

`A133259(n*A159311(n+1))`
-/

namespace A159312.P11379022969014826507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133259 ((n : ℤ) * A159311 (n + 1)).toNat

end

end A159312.P11379022969014826507

/-!
# A159313: G.f.: 1/Product_{n>=1} (1 - a(n)*x^n/n!) = Sum_{n>=0} (n+1)^(n-1)*x^n/n!.

The programs for A159313, there is no canonical definition to state claims against.
-/

/-! ## A159313.P10463131128275492758

`∏{p}[A318580(n)², #]`
-/

namespace A159313.P10463131128275492758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318580 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A159313.P10463131128275492758

/-!
# A159314: Rectangular array, read by antidiagonals, where row e.g.f.s, R(n,x), satisfy: d/dx log( R(n,x) ) = R(n+1,x)^(2^n) with R(n,0) = 1; that is, the logarithmic derivative of the e.g.f. of row n equals the e.g.f. of row n+1 to the 2^n power, for n>=0.

The programs for A159314, there is no canonical definition to state claims against.
-/

/-! ## A159314.P2728959722738624353

`A077337(A111528(n)%A141214(2*n+1))`
-/

namespace A159314.P2728959722738624353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077337 (Int.tmod (A111528 n) (A141214 (2 * n + 1))).toNat

end

end A159314.P2728959722738624353

/-! ## A159314.P3713211869443687679

`A185255(2*(n+1))+A084937(A111528(n))`
-/

namespace A159314.P3713211869443687679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (2 * (n + 1)) + A084937 (A111528 n).toNat

end

end A159314.P3713211869443687679

/-!
# A159315: E.g.f. satisfies: d/dx log(A(x)) = A(2*x)^(1/2).

The programs for A159315, there is no canonical definition to state claims against.
-/

/-! ## A159315.P3122298485226976027

`A159314(∑[n]+n)`
-/

namespace A159315.P3122298485226976027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159314 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A159315.P3122298485226976027

/-! ## A159315.P2255220939955431391

`A159314(A000096(n))+char[9]`
-/

namespace A159315.P2255220939955431391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159314 (A000096 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A159315.P2255220939955431391

/-! ## A159315.P17136265734957818082

`A185255(n)+A159314(A000096(n))`
-/

namespace A159315.P17136265734957818082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 n + A159314 (A000096 n).toNat

end

end A159315.P17136265734957818082

/-! ## A159315.P14183497779707352796

`A185284(n)+A159314(A000096(n))`
-/

namespace A159315.P14183497779707352796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A159314 (A000096 n).toNat

end

end A159315.P14183497779707352796

/-! ## A159315.P12147302014779017954

`A043568(n)*A159314(A000096(n))`
-/

namespace A159315.P12147302014779017954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 n * A159314 (A000096 n).toNat

end

end A159315.P12147302014779017954

/-!
# A159316: E.g.f. A(x) satisfies: d/dx log(A(x)) = A(2*x)^2.

The programs for A159316, there is no canonical definition to state claims against.
-/

/-! ## A159316.P6603427563487020176

`A159314(∑[n+3])`
-/

namespace A159316.P6603427563487020176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159314 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A159316.P6603427563487020176

/-! ## A159316.P7252440336936755108

`or(1, A159314(A141214(n)))`
-/

namespace A159316.P7252440336936755108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A159314 (A141214 n).toNat)

end

end A159316.P7252440336936755108

/-! ## A159316.P7295975869943136249

`A185255(n)+A159314(A141214(n))`
-/

namespace A159316.P7295975869943136249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 n + A159314 (A141214 n).toNat

end

end A159316.P7295975869943136249

/-!
# A159317: a(n)/2^(n^2) is the coefficient of x^n/n! in F(x)^(1/2^n) where F(x) is the e.g.f. of A159315.

The programs for A159317, there is no canonical definition to state claims against.
-/

/-! ## A159317.P13883283377609364004

`A159314(∑[4*n])`
-/

namespace A159317.P13883283377609364004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159314 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A159317.P13883283377609364004

/-!
# A159320: G.f.: A(x) = exp( Sum_{n>=1} (1 + C(2n-1,n-1)*x)^n * x^n/n ).

The programs for A159320, there is no canonical definition to state claims against.
-/

/-! ## A159320.P12987113481307229922

`A358055(A100249(n))`
-/

namespace A159320.P12987113481307229922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358055 (A100249 n).toNat

end

end A159320.P12987113481307229922

/-! ## A159320.P5687196253274940669

`A364346(xor(2, 2^n))`
-/

namespace A159320.P5687196253274940669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364346 (Nat.xor 2 (2 ^ n))

end

end A159320.P5687196253274940669

/-!
# A159321: L.g.f.: Sum_{n>=1} a(n)*x^n/n = Sum_{n>=1} (1 + C(2n-1,n-1)*x)^n * x^n/n.

The programs for A159321, there is no canonical definition to state claims against.
-/

/-! ## A159321.P13665202265601331768

`A117566(A080241(n+1))`
-/

namespace A159321.P13665202265601331768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117566 (A080241 (n + 1)).toNat

end

end A159321.P13665202265601331768

/-!
# A159322: G.f.: A(x) = Sum_{n>=0} log(1+x + 2^n*x^2)^n/n!.

The programs for A159322, there is no canonical definition to state claims against.
-/

/-! ## A159322.P15880332338070216409

`A290103(A149316(n)+A137753(n+1))`
-/

namespace A159322.P15880332338070216409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A149316 n + A137753 (n + 1)).toNat

end

end A159322.P15880332338070216409

/-!
# A159324: n! times the average number of comparisons required by an insertion sort of n (distinct) elements.

The programs for A159324, the canonical program `A159324.P14653545983242416296` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159324 has offset 0).

The definition of A159324 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159324.P11858221798807826590

`a(n-1)*n+n!*(n+1)/2-(n-1)!` with `a(0)=0`
-/

namespace A159324.P11858221798807826590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) * (n : ℚ) + (Nat.factorial n * (n + 1) : ℚ) / 2 - (Nat.factorial ((n : ℤ) - 1).toNat : ℚ)

end

end A159324.P11858221798807826590

namespace A159324

/-- `a(n-1)*n+n!*(n+1)/2-(n-1)!` -/
def P11858221798807826590.Spec : Prop :=
  ∀ n, P11858221798807826590.a n = (A159324 n : ℚ)

end A159324

/-! ## A159324.P14653545983242416296

`A138772(n+1)-A000254(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A159324

/-- `A138772(n+1)-A000254(n)` -/
def P14653545983242416296.Spec : Prop :=
  ∀ n, P14653545983242416296.a n = A159324 n

theorem P14653545983242416296.correct : P14653545983242416296.Spec := by
  intro n
  simp only [A159324]

end A159324

/-! ## A159324.P16239322736143985528

`A006595(n)-A000774(n)`
-/

namespace A159324.P16239322736143985528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006595 n - A000774 n

end

end A159324.P16239322736143985528

namespace A159324

/-- `A006595(n)-A000774(n)` -/
def P16239322736143985528.Spec : Prop :=
  ∀ n, P16239322736143985528.a n = A159324 n

end A159324

/-! ## A159324.P16423165747179293227

`A138772(n+1)-abs(A081048(n))`
-/

namespace A159324.P16423165747179293227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138772 (n + 1) - |A081048 n|

end

end A159324.P16423165747179293227

namespace A159324

/-- `A138772(n+1)-abs(A081048(n))` -/
def P16423165747179293227.Spec : Prop :=
  ∀ n, P16423165747179293227.a n = A159324 n

end A159324

/-! ## A159324.P14476578683300170772

`A138772(n+1)-(A000774(n)-n!)`
-/

namespace A159324.P14476578683300170772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138772 (n + 1) - (A000774 n - (Nat.factorial n : ℤ))

end

end A159324.P14476578683300170772

namespace A159324

/-- `A138772(n+1)-(A000774(n)-n!)` -/
def P14476578683300170772.Spec : Prop :=
  ∀ n, P14476578683300170772.a n = A159324 n

theorem P14476578683300170772.correct : P14476578683300170772.Spec := by
  intro n
  simp only [A159324, Nat.add_sub_cancel, A159324.P14476578683300170772.a, A159324.P14653545983242416296.a, A000254, A000254.P9428527937712228311.a, A000774, A000774.P2466986371641539534.a, A138772, A138772.P4391643693529965235.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A159324

/-! ## A159324.P14917187919420842991

`A138772(n+1)-(n!-A081047(n))`
-/

namespace A159324.P14917187919420842991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138772 (n + 1) - ((Nat.factorial n : ℤ) - A081047 n)

end

end A159324.P14917187919420842991

namespace A159324

/-- `A138772(n+1)-(n!-A081047(n))` -/
def P14917187919420842991.Spec : Prop :=
  ∀ n, P14917187919420842991.a n = A159324 n

end A159324

/-! ## A159324.P12624269300655166976

`ceil(acot(n))*A138772(n+1)-A052517(n+1)/2`
-/

namespace A159324.P12624269300655166976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈SequenceMachineLib.acot (n : ℝ)⌉ * A138772 (n + 1) : ℚ) - (A052517 (n + 1) : ℚ) / 2

end

end A159324.P12624269300655166976

namespace A159324

/-- `ceil(acot(n))*A138772(n+1)-A052517(n+1)/2` -/
def P12624269300655166976.Spec : Prop :=
  ∀ n, P12624269300655166976.a n = (A159324 n : ℚ)

end A159324

/-! ## A159324.P1435076161512372920

`A067318(A028310(n))+A001809(n)`
-/

namespace A159324.P1435076161512372920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067318 (A028310 n).toNat + A001809 n

end

end A159324.P1435076161512372920

namespace A159324

/-- `A067318(A028310(n))+A001809(n)` -/
def P1435076161512372920.Spec : Prop :=
  ∀ n, P1435076161512372920.a n = A159324 n

end A159324

/-! ## A159324.P11054315425868206163

`A212395(n)-A067318(A028310(n))`
-/

namespace A159324.P11054315425868206163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212395 n - A067318 (A028310 n).toNat

end

end A159324.P11054315425868206163

namespace A159324

/-- `A212395(n)-A067318(A028310(n))` -/
def P11054315425868206163.Spec : Prop :=
  ∀ n, P11054315425868206163.a n = A159324 n

end A159324

/-! ## A159324.P3585296687786780209

`A001563(n)+A001809(n)-A000254(n)`
-/

namespace A159324.P3585296687786780209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 n + (A001809 n - A000254 n)

end

end A159324.P3585296687786780209

namespace A159324

/-- `A001563(n)+A001809(n)-A000254(n)` -/
def P3585296687786780209.Spec : Prop :=
  ∀ n, P3585296687786780209.a n = A159324 n

end A159324

/-!
# A159325: Median number of comparisons used by insertion sort on n (distinct) elements.

The programs for A159325, there is no canonical definition to state claims against.
-/

/-! ## A159325.P1467902203764713717

`round(∑[sqrt(floor((n/2)²+n))])`
-/

namespace A159325.P1467902203764713717
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (⌊((n : ℚ) / 2) ^ 2 + (n : ℚ)⌋ : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A159325.P1467902203764713717

/-! ## A159325.P47354562936772120

`ceil(∑[(∑[n]+n)*acot(n+1)])`
-/

namespace A159325.P47354562936772120
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j + n : ℕ) : ℝ) * SequenceMachineLib.acot (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A159325.P47354562936772120

/-! ## A159325.P6750942756025277740

`-floor(∑[(1-∑[n+1])*acot(n+1)])`
-/

namespace A159325.P6750942756025277740
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℝ) * SequenceMachineLib.acot (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A159325.P6750942756025277740

/-! ## A159325.P15643035946775156282

`∑[ceil((A001222(or(1, n))+n)/2)]`
-/

namespace A159325.P15643035946775156282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001222 (Nat.lor 1 n) + (n : ℤ) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159325.P15643035946775156282

/-!
# A159326: Numerator of Hermite(n, 4/11).

The programs for A159326, the canonical program `A159326.P13469250851493496997` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159326 has offset 0).

The definition of A159326 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159326.P13469250851493496997

`8*a(n-1)-242*(n-1)*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159326

/-- `8*a(n-1)-242*(n-1)*a(n-2)` -/
def P13469250851493496997.Spec : Prop :=
  ∀ n, P13469250851493496997.a n = A159326 n

theorem P13469250851493496997.correct : P13469250851493496997.Spec := by
  intro n
  simp only [A159326]

end A159326

/-!
# A159327: Numerator of Hermite(n, 5/11).

The programs for A159327, the canonical program `A159327.P1456418773280727240` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159327 has offset 0).

The definition of A159327 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159327.P1456418773280727240

`10*a(n-1)-242*(n-1)*a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159327

/-- `10*a(n-1)-242*(n-1)*a(n-2)` -/
def P1456418773280727240.Spec : Prop :=
  ∀ n, P1456418773280727240.a n = A159327 n

theorem P1456418773280727240.correct : P1456418773280727240.Spec := by
  intro n
  simp only [A159327]

end A159327

/-!
# A159328: Transform of 1 by the T_{1,1} transformation (see link).

The programs for A159328, the canonical program `A159328.P6853743607200588841` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159328 has offset 0).

The definition of A159328 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159328.P6853743607200588841

`2*A034943(n+2)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A159328

/-- `2*A034943(n+2)` -/
def P6853743607200588841.Spec : Prop :=
  ∀ n, P6853743607200588841.a n = A159328 n

theorem P6853743607200588841.correct : P6853743607200588841.Spec := by
  intro n
  simp only [A159328]

end A159328

/-! ## A159328.P7825245710676218266

`ogf((2-2x+2x^2)/(1-3x+2x^2-x^3))`
-/

namespace A159328.P7825245710676218266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, 2] [1, -3, 2, -1] n

end

end A159328.P7825245710676218266

namespace A159328

/-- `ogf((2-2x+2x^2)/(1-3x+2x^2-x^3))` -/
def P7825245710676218266.Spec : Prop :=
  ∀ n, P7825245710676218266.a n = A159328 n

end A159328

/-! ## A159328.P7063528835891304307

`2*A181984(n)`
-/

namespace A159328.P7063528835891304307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181984 n

end

end A159328.P7063528835891304307

namespace A159328

/-- `2*A181984(n)` -/
def P7063528835891304307.Spec : Prop :=
  ∀ n, P7063528835891304307.a n = A159328 n

end A159328

/-! ## A159328.P18336830612103678429

`2*Δ[A052921(n)]`
-/

namespace A159328.P18336830612103678429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A159328.P18336830612103678429

namespace A159328

/-- `2*Δ[A052921(n)]` -/
def P18336830612103678429.Spec : Prop :=
  ∀ n, P18336830612103678429.a n = A159328 n

end A159328

/-! ## A159328.P17960381071637850453

`A068924(3*(n+1))`
-/

namespace A159328.P17960381071637850453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068924 (3 * (n + 1))

end

end A159328.P17960381071637850453

namespace A159328

/-- `A068924(3*(n+1))` -/
def P17960381071637850453.Spec : Prop :=
  ∀ n, P17960381071637850453.a n = A159328 n

end A159328

/-! ## A159328.P3399230091420221690

`A291289(3*(n+2))`
-/

namespace A159328.P3399230091420221690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291289 (3 * (n + 2))

end

end A159328.P3399230091420221690

namespace A159328

/-- `A291289(3*(n+2))` -/
def P3399230091420221690.Spec : Prop :=
  ∀ n, P3399230091420221690.a n = A159328 n

end A159328

/-! ## A159328.P10839387276911134282

`2*Δ[A329244(n+1)]`
-/

namespace A159328.P10839387276911134282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A159328.P10839387276911134282

namespace A159328

/-- `2*Δ[A329244(n+1)]` -/
def P10839387276911134282.Spec : Prop :=
  ∀ n, P10839387276911134282.a n = A159328 n

end A159328

/-! ## A159328.P5185433320890552105

`2*A182097(3*(n+1))`
-/

namespace A159328.P5185433320890552105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A182097 (3 * (n + 1))

end

end A159328.P5185433320890552105

namespace A159328

/-- `2*A182097(3*(n+1))` -/
def P5185433320890552105.Spec : Prop :=
  ∀ n, P5185433320890552105.a n = A159328 n

end A159328

/-! ## A159328.P10245260429465605784

`2*A000931(3*(n+2))`
-/

namespace A159328.P10245260429465605784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000931 (3 * (n + 2))

end

end A159328.P10245260429465605784

namespace A159328

/-- `2*A000931(3*(n+2))` -/
def P10245260429465605784.Spec : Prop :=
  ∀ n, P10245260429465605784.a n = A159328 n

end A159328

/-! ## A159328.P12342588063382399256

`2*A134816(3*n+2)`
-/

namespace A159328.P12342588063382399256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134816 (3 * n + 2)

end

end A159328.P12342588063382399256

namespace A159328

/-- `2*A134816(3*n+2)` -/
def P12342588063382399256.Spec : Prop :=
  ∀ n, P12342588063382399256.a n = A159328 n

end A159328

/-! ## A159328.P17378991037478528942

`2*A127682(A016933(n))`
-/

namespace A159328.P17378991037478528942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127682 (A016933 n).toNat

end

end A159328.P17378991037478528942

namespace A159328

/-- `2*A127682(A016933(n))` -/
def P17378991037478528942.Spec : Prop :=
  ∀ n, P17378991037478528942.a n = A159328 n

end A159328

/-! ## A159328.P17767077110147332855

`2*A127682(A016969(n))`
-/

namespace A159328.P17767077110147332855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127682 (A016969 n).toNat

end

end A159328.P17767077110147332855

namespace A159328

/-- `2*A127682(A016969(n))` -/
def P17767077110147332855.Spec : Prop :=
  ∀ n, P17767077110147332855.a n = A159328 n

end A159328

/-! ## A159328.P6908768584197370151

`∑[2*A134816(A008486(n))]`
-/

namespace A159328.P6908768584197370151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134816 (A008486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159328.P6908768584197370151

namespace A159328

/-- `∑[2*A134816(A008486(n))]` -/
def P6908768584197370151.Spec : Prop :=
  ∀ n, P6908768584197370151.a n = A159328 n

end A159328

/-! ## A159328.P13789282416002101386

`2*A127682(A016957(n)+1)`
-/

namespace A159328.P13789282416002101386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127682 (A016957 n + 1).toNat

end

end A159328.P13789282416002101386

namespace A159328

/-- `2*A127682(A016957(n)+1)` -/
def P13789282416002101386.Spec : Prop :=
  ∀ n, P13789282416002101386.a n = A159328 n

end A159328

/-! ## A159328.P18080117541227614850

`2*A078027(A112414(n)+1)`
-/

namespace A159328.P18080117541227614850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078027 (A112414 n + 1).toNat

end

end A159328.P18080117541227614850

namespace A159328

/-- `2*A078027(A112414(n)+1)` -/
def P18080117541227614850.Spec : Prop :=
  ∀ n, P18080117541227614850.a n = A159328 n

end A159328

/-! ## A159328.P14854695336907806637

`2*A133034(A112414(n+1))`
-/

namespace A159328.P14854695336907806637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133034 (A112414 (n + 1)).toNat

end

end A159328.P14854695336907806637

namespace A159328

/-- `2*A133034(A112414(n+1))` -/
def P14854695336907806637.Spec : Prop :=
  ∀ n, P14854695336907806637.a n = A159328 n

end A159328

/-! ## A159328.P9614505640342198567

`A097550(n)+A034943(n+1)`
-/

namespace A159328.P9614505640342198567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097550 n + A034943 (n + 1)

end

end A159328.P9614505640342198567

namespace A159328

/-- `A097550(n)+A034943(n+1)` -/
def P9614505640342198567.Spec : Prop :=
  ∀ n, P9614505640342198567.a n = A159328 n

end A159328

/-! ## A159328.P15358034365148858605

`A181984(n)+A034943(n+2)`
-/

namespace A159328.P15358034365148858605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 n + A034943 (n + 2)

end

end A159328.P15358034365148858605

namespace A159328

/-- `A181984(n)+A034943(n+2)` -/
def P15358034365148858605.Spec : Prop :=
  ∀ n, P15358034365148858605.a n = A159328 n

theorem P15358034365148858605.correct : P15358034365148858605.Spec := by
  intro n
  simp only [A159328, Nat.add_sub_cancel, A159328.P15358034365148858605.a, A159328.P6853743607200588841.a, A034943, A034943.P7979161656748620110.a, A181984, A181984.P13479675070080437777.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A159328

/-! ## A159328.P401574324649281031

`2*(A159329(n)-A159336(n))`
-/

namespace A159328.P401574324649281031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A159329 n - A159336 n)

end

end A159328.P401574324649281031

namespace A159328

/-- `2*(A159329(n)-A159336(n))` -/
def P401574324649281031.Spec : Prop :=
  ∀ n, P401574324649281031.a n = A159328 n

end A159328

/-! ## A159328.P14613811630993353397

`2*(A159330(n)-A159337(n))`
-/

namespace A159328.P14613811630993353397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A159330 n - A159337 n)

end

end A159328.P14613811630993353397

namespace A159328

/-- `2*(A159330(n)-A159337(n))` -/
def P14613811630993353397.Spec : Prop :=
  ∀ n, P14613811630993353397.a n = A159328 n

end A159328

/-!
# A159329: Transform of the finite sequence (1, 0, -1) by the T_{1,1} transformation (see link).

The programs for A159329, the canonical program `A159329.P3710613267588612533` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159329 has offset 0).

The definition of A159329 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159329.P12453220821871767599

`ogf((2-2x+x^2+2x^3-x^4)/(1-3x+2x^2-x^3))`
-/

namespace A159329.P12453220821871767599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, 1, 2, -1] [1, -3, 2, -1] n

end

end A159329.P12453220821871767599

namespace A159329

/-- `ogf((2-2x+x^2+2x^3-x^4)/(1-3x+2x^2-x^3))` -/
def P12453220821871767599.Spec : Prop :=
  ∀ n, P12453220821871767599.a n = A159329 n

end A159329

/-! ## A159329.P3710613267588612533

`A159347(n)+A097550(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A159329

/-- `A159347(n)+A097550(n)` -/
def P3710613267588612533.Spec : Prop :=
  ∀ n, P3710613267588612533.a n = A159329 n

theorem P3710613267588612533.correct : P3710613267588612533.Spec := by
  intro n
  simp only [A159329]

end A159329

/-! ## A159329.P4555875372977446544

`A181984(n)+A159336(n)`
-/

namespace A159329.P4555875372977446544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 n + A159336 n

end

end A159329.P4555875372977446544

namespace A159329

/-- `A181984(n)+A159336(n)` -/
def P4555875372977446544.Spec : Prop :=
  ∀ n, P4555875372977446544.a n = A159329 n

end A159329

/-! ## A159329.P16794517637217206356

`A159336(n)+A034943(n+2)`
-/

namespace A159329.P16794517637217206356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159336 n + A034943 (n + 2)

end

end A159329.P16794517637217206356

namespace A159329

/-- `A159336(n)+A034943(n+2)` -/
def P16794517637217206356.Spec : Prop :=
  ∀ n, P16794517637217206356.a n = A159329 n

end A159329

/-! ## A159329.P4381948469332404200

`A159336(n)+A159328(n)/2`
-/

namespace A159329.P4381948469332404200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159336 n : ℚ) + (A159328 n : ℚ) / 2

end

end A159329.P4381948469332404200

namespace A159329

/-- `A159336(n)+A159328(n)/2` -/
def P4381948469332404200.Spec : Prop :=
  ∀ n, P4381948469332404200.a n = (A159329 n : ℚ)

end A159329

/-! ## A159329.P5951769494382714522

`A159340(n)+Δ[A034943(n+1)]`
-/

namespace A159329.P5951769494382714522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159340 n + (f1 (n + 1) - f1 n)

end

end A159329.P5951769494382714522

namespace A159329

/-- `A159340(n)+Δ[A034943(n+1)]` -/
def P5951769494382714522.Spec : Prop :=
  ∀ n, P5951769494382714522.a n = A159329 n

end A159329

/-! ## A159329.P12642592885446638623

`A052921(n+1)+A159347(n)-A034943(n)`
-/

namespace A159329.P12642592885446638623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 (n + 1) + (A159347 n - A034943 n)

end

end A159329.P12642592885446638623

namespace A159329

/-- `A052921(n+1)+A159347(n)-A034943(n)` -/
def P12642592885446638623.Spec : Prop :=
  ∀ n, P12642592885446638623.a n = A159329 n

end A159329

/-! ## A159329.P3928162161644205170

`A052921(n+1)+A159336(n)-A052921(n)`
-/

namespace A159329.P3928162161644205170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 (n + 1) + (A159336 n - A052921 n)

end

end A159329.P3928162161644205170

namespace A159329

/-- `A052921(n+1)+A159336(n)-A052921(n)` -/
def P3928162161644205170.Spec : Prop :=
  ∀ n, P3928162161644205170.a n = A159329 n

end A159329

/-! ## A159329.P6858824767441828786

`A136302(n+1)+A159347(n)-A095263(n+1)`
-/

namespace A159329.P6858824767441828786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136302 (n + 1) + (A159347 n - A095263 (n + 1))

end

end A159329.P6858824767441828786

namespace A159329

/-- `A136302(n+1)+A159347(n)-A095263(n+1)` -/
def P6858824767441828786.Spec : Prop :=
  ∀ n, P6858824767441828786.a n = A159329 n

end A159329

/-! ## A159329.P8296376012464218505

`A097550(n+1)+A159340(n)-A095263(n+2)`
-/

namespace A159329.P8296376012464218505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097550 (n + 1) + (A159340 n - A095263 (n + 2))

end

end A159329.P8296376012464218505

namespace A159329

/-- `A097550(n+1)+A159340(n)-A095263(n+2)` -/
def P8296376012464218505.Spec : Prop :=
  ∀ n, P8296376012464218505.a n = A159329 n

end A159329

/-!
# A159330: Transform of the finite sequence (1, 0, -1, 0, 1) by the T_{1,1} transformation (see link).

The programs for A159330, the canonical program `A159330.P300977842450147509` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159330 has offset 0).

The definition of A159330 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159330.P300977842450147509

`3*a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=2, a(1)=4, a(2)=9, a(3)=23, a(4)=55, a(5)=126, a(6)=292`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159330

/-- `3*a(n-1)-2*a(n-2)+a(n-3)` -/
def P300977842450147509.Spec : Prop :=
  ∀ n, P300977842450147509.a n = A159330 n

theorem P300977842450147509.correct : P300977842450147509.Spec := by
  intro n
  simp only [A159330]

end A159330

/-! ## A159330.P1222323186008313820

`A159348(n)+A097550(n)`
-/

namespace A159330.P1222323186008313820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159348 n + A097550 n

end

end A159330.P1222323186008313820

namespace A159330

/-- `A159348(n)+A097550(n)` -/
def P1222323186008313820.Spec : Prop :=
  ∀ n, P1222323186008313820.a n = A159330 n

end A159330

/-! ## A159330.P142526021688716949

`A181984(n)+A159337(n)`
-/

namespace A159330.P142526021688716949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 n + A159337 n

end

end A159330.P142526021688716949

namespace A159330

/-- `A181984(n)+A159337(n)` -/
def P142526021688716949.Spec : Prop :=
  ∀ n, P142526021688716949.a n = A159330 n

end A159330

/-! ## A159330.P15379844629490840004

`A159337(n)+Δ[A052921(n)]`
-/

namespace A159330.P15379844629490840004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159337 n + (f1 (n + 1) - f1 n)

end

end A159330.P15379844629490840004

namespace A159330

/-- `A159337(n)+Δ[A052921(n)]` -/
def P15379844629490840004.Spec : Prop :=
  ∀ n, P15379844629490840004.a n = A159330 n

end A159330

/-! ## A159330.P13681953755892082381

`A159337(n)+A034943(n+2)`
-/

namespace A159330.P13681953755892082381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159337 n + A034943 (n + 2)

end

end A159330.P13681953755892082381

namespace A159330

/-- `A159337(n)+A034943(n+2)` -/
def P13681953755892082381.Spec : Prop :=
  ∀ n, P13681953755892082381.a n = A159330 n

end A159330

/-! ## A159330.P3299958243850783533

`A159341(n)+Δ[A034943(n+1)]`
-/

namespace A159330.P3299958243850783533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159341 n + (f1 (n + 1) - f1 n)

end

end A159330.P3299958243850783533

namespace A159330

/-- `A159341(n)+Δ[A034943(n+1)]` -/
def P3299958243850783533.Spec : Prop :=
  ∀ n, P3299958243850783533.a n = A159330 n

end A159330

/-! ## A159330.P12835249765302493543

`A052921(n+1)+A159348(n)-A034943(n)`
-/

namespace A159330.P12835249765302493543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 (n + 1) + (A159348 n - A034943 n)

end

end A159330.P12835249765302493543

namespace A159330

/-- `A052921(n+1)+A159348(n)-A034943(n)` -/
def P12835249765302493543.Spec : Prop :=
  ∀ n, P12835249765302493543.a n = A159330 n

end A159330

/-! ## A159330.P1566493135738213286

`A136302(n+1)+A159348(n)-A095263(n+1)`
-/

namespace A159330.P1566493135738213286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136302 (n + 1) + (A159348 n - A095263 (n + 1))

end

end A159330.P1566493135738213286

namespace A159330

/-- `A136302(n+1)+A159348(n)-A095263(n+1)` -/
def P1566493135738213286.Spec : Prop :=
  ∀ n, P1566493135738213286.a n = A159330 n

end A159330

/-! ## A159330.P3528317957909820939

`A097550(n+1)+A159341(n)-A095263(n+2)`
-/

namespace A159330.P3528317957909820939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097550 (n + 1) + (A159341 n - A095263 (n + 2))

end

end A159330.P3528317957909820939

namespace A159330

/-- `A097550(n+1)+A159341(n)-A095263(n+2)` -/
def P3528317957909820939.Spec : Prop :=
  ∀ n, P3528317957909820939.a n = A159330 n

end A159330

/-!
# A159331: Transform of the finite sequence (1, 0, -1, 0, 1, 0, -1) by the T_{1,1} transform (see link).

The programs for A159331, the canonical program `A159331.P2025219793887168336` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159331 has offset 0).

The definition of A159331 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159331.P2025219793887168336

`A159349(n)+A097550(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A159331

/-- `A159349(n)+A097550(n)` -/
def P2025219793887168336.Spec : Prop :=
  ∀ n, P2025219793887168336.a n = A159331 n

theorem P2025219793887168336.correct : P2025219793887168336.Spec := by
  intro n
  simp only [A159331]

end A159331

/-! ## A159331.P6531914214203825843

`A159349(n)+A084338(A016777(n))`
-/

namespace A159331.P6531914214203825843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159349 n + A084338 (A016777 n).toNat

end

end A159331.P6531914214203825843

namespace A159331

/-- `A159349(n)+A084338(A016777(n))` -/
def P6531914214203825843.Spec : Prop :=
  ∀ n, P6531914214203825843.a n = A159331 n

end A159331

/-! ## A159331.P7722931660644710871

`A159330(n)+A159337(n)-A159338(n)`
-/

namespace A159331.P7722931660644710871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159330 n + (A159337 n - A159338 n)

end

end A159331.P7722931660644710871

namespace A159331

/-- `A159330(n)+A159337(n)-A159338(n)` -/
def P7722931660644710871.Spec : Prop :=
  ∀ n, P7722931660644710871.a n = A159331 n

end A159331

/-! ## A159331.P4475860037994494102

`A159329(n)+A159349(n)-A159347(n)`
-/

namespace A159331.P4475860037994494102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159329 n + (A159349 n - A159347 n)

end

end A159331.P4475860037994494102

namespace A159331

/-- `A159329(n)+A159349(n)-A159347(n)` -/
def P4475860037994494102.Spec : Prop :=
  ∀ n, P4475860037994494102.a n = A159331 n

theorem P4475860037994494102.correct : P4475860037994494102.Spec := by
  intro n
  simp only [A159331, Nat.add_sub_cancel, A159331.P4475860037994494102.a, A159331.P2025219793887168336.a, A097550, A097550.P2845546144587948553.a, A159329, A159329.P3710613267588612533.a, A159347, A159347.P5324079294090841476.a, A159349, A159349.P16127559482196554441.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A159331

/-! ## A159331.P16578868237924177742

`A159334(n)+A159349(n)-A159350(n)`
-/

namespace A159331.P16578868237924177742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159334 n + (A159349 n - A159350 n)

end

end A159331.P16578868237924177742

namespace A159331

/-- `A159334(n)+A159349(n)-A159350(n)` -/
def P16578868237924177742.Spec : Prop :=
  ∀ n, P16578868237924177742.a n = A159331 n

theorem P16578868237924177742.correct : P16578868237924177742.Spec := by
  intro n
  simp only [A159331, Nat.add_sub_cancel, A159331.P16578868237924177742.a, A159331.P2025219793887168336.a, A097550, A097550.P2845546144587948553.a, A159334, A159334.P11728449618279607625.a, A159349, A159349.P16127559482196554441.a, A159350, A159350.P8992939901403246150.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A159331

/-! ## A159331.P7050197418364429928

`A052921(n+1)+A159349(n)-A034943(n)`
-/

namespace A159331.P7050197418364429928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 (n + 1) + (A159349 n - A034943 n)

end

end A159331.P7050197418364429928

namespace A159331

/-- `A052921(n+1)+A159349(n)-A034943(n)` -/
def P7050197418364429928.Spec : Prop :=
  ∀ n, P7050197418364429928.a n = A159331 n

end A159331

/-! ## A159331.P16089407253142426904

`A136302(n+1)+A159349(n)-A095263(n+1)`
-/

namespace A159331.P16089407253142426904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136302 (n + 1) + (A159349 n - A095263 (n + 1))

end

end A159331.P16089407253142426904

namespace A159331

/-- `A136302(n+1)+A159349(n)-A095263(n+1)` -/
def P16089407253142426904.Spec : Prop :=
  ∀ n, P16089407253142426904.a n = A159331 n

end A159331

/-!
# A159333: Roman factorial of n.

The programs for A159333, there is no canonical definition to state claims against.
-/

/-! ## A159333.P9124754621086799533

`∏[or(n-2, C(2, n))]`
-/

namespace A159333.P9124754621086799533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - 2) (Nat.choose 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A159333.P9124754621086799533

/-! ## A159333.P2316149880703294482

`∏[or(n-2, floor(acot(n-2)))]`
-/

namespace A159333.P2316149880703294482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - 2) ⌊SequenceMachineLib.acot ((n : ℤ) - 2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A159333.P2316149880703294482

/-! ## A159333.P15608296086227029373

`∏[or(n-2, round(acot(n-1)))]`
-/

namespace A159333.P15608296086227029373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - 2) (SequenceMachineLib.roundAway (SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A159333.P15608296086227029373

/-! ## A159333.P1377621892184760819

`floor(n-atan(n))!-floor(acot(n)²)`
-/

namespace A159333.P1377621892184760819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A159333.P1377621892184760819

/-! ## A159333.P4204051943557937563

`(n-2)*a(n-1)` with `a(0)=-1, a(1)=1, a(2)=1`
-/

namespace A159333.P4204051943557937563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 1, 1] fun n a =>
  ((n : ℤ) - 2) * a (n - 1)

end

end A159333.P4204051943557937563

/-! ## A159333.P11151781406815060345

`abs(2-n)!-C(3, (n+1)²)`
-/

namespace A159333.P11151781406815060345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial |2 - (n : ℤ)|.toNat : ℤ) - (Nat.choose 3 ((n + 1) ^ 2) : ℤ)

end

end A159333.P11151781406815060345

/-! ## A159333.P17611245109706339223

`∏[C(2, (1-n)²)!+n-3]`
-/

namespace A159333.P17611245109706339223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.choose 2 ((1 - (n : ℤ)) ^ 2).toNat) : ℤ) + ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A159333.P17611245109706339223

/-! ## A159333.P3219758911293824864

`Δ[a(n-1)+(n-3)!]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A159333.P3219758911293824864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 1) + Nat.factorial ((n : ℤ) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A159333.P3219758911293824864

/-! ## A159333.P3933267355968893618

`a(n-1)/(n-2)^(-1)` with `a(0)=-1, a(1)=1, a(2)=1`
-/

namespace A159333.P3933267355968893618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [-1, 1, 1] fun n a =>
  a (n - 1) / ((n : ℤ) - 2 : ℚ) ^ (-1 : ℤ)

end

end A159333.P3933267355968893618

/-! ## A159333.P17155421343411084010

`∏[val(2*n+1, n+3)+n-2]/2`
-/

namespace A159333.P17155421343411084010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (2 * n + 1) (n + 3) : ℤ) + ((n : ℤ) - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A159333.P17155421343411084010

/-!
# A159334: Transform of A056594 by the T_{1,1} transformation (see link).

The programs for A159334, the canonical program `A159334.P11728449618279607625` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159334 has offset 0).

The definition of A159334 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159334.P11728449618279607625

`A159350(n)+A097550(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A159334

/-- `A159350(n)+A097550(n)` -/
def P11728449618279607625.Spec : Prop :=
  ∀ n, P11728449618279607625.a n = A159334 n

theorem P11728449618279607625.correct : P11728449618279607625.Spec := by
  intro n
  simp only [A159334]

end A159334

/-! ## A159334.P8456753301986186581

`A181984(n)+A159339(n)`
-/

namespace A159334.P8456753301986186581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 n + A159339 n

end

end A159334.P8456753301986186581

namespace A159334

/-- `A181984(n)+A159339(n)` -/
def P8456753301986186581.Spec : Prop :=
  ∀ n, P8456753301986186581.a n = A159334 n

end A159334

/-! ## A159334.P8093929148011682452

`A159339(n)+Δ[A052921(n)]`
-/

namespace A159334.P8093929148011682452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159339 n + (f1 (n + 1) - f1 n)

end

end A159334.P8093929148011682452

namespace A159334

/-- `A159339(n)+Δ[A052921(n)]` -/
def P8093929148011682452.Spec : Prop :=
  ∀ n, P8093929148011682452.a n = A159334 n

end A159334

/-! ## A159334.P4818785512088874293

`A159339(n)+A034943(n+2)`
-/

namespace A159334.P4818785512088874293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159339 n + A034943 (n + 2)

end

end A159334.P4818785512088874293

namespace A159334

/-- `A159339(n)+A034943(n+2)` -/
def P4818785512088874293.Spec : Prop :=
  ∀ n, P4818785512088874293.a n = A159334 n

end A159334

/-! ## A159334.P17966419076838985318

`A159343(n)+Δ[Δ[A329244(n)]]`
-/

namespace A159334.P17966419076838985318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329244 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159343 n + (f1 (n + 1) - f1 n)

end

end A159334.P17966419076838985318

namespace A159334

/-- `A159343(n)+Δ[Δ[A329244(n)]]` -/
def P17966419076838985318.Spec : Prop :=
  ∀ n, P17966419076838985318.a n = A159334 n

end A159334

/-! ## A159334.P14576455724493354909

`A159339(n)+Δ[A329244(n+1)]`
-/

namespace A159334.P14576455724493354909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159339 n + (f1 (n + 1) - f1 n)

end

end A159334.P14576455724493354909

namespace A159334

/-- `A159339(n)+Δ[A329244(n+1)]` -/
def P14576455724493354909.Spec : Prop :=
  ∀ n, P14576455724493354909.a n = A159334 n

end A159334

/-! ## A159334.P15244618844569392801

`A159350(n)+A084338(A016777(n))`
-/

namespace A159334.P15244618844569392801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159350 n + A084338 (A016777 n).toNat

end

end A159334.P15244618844569392801

namespace A159334

/-- `A159350(n)+A084338(A016777(n))` -/
def P15244618844569392801.Spec : Prop :=
  ∀ n, P15244618844569392801.a n = A159334 n

end A159334

/-! ## A159334.P15688765481775593891

`A159339(n)+A134816(A016789(n))`
-/

namespace A159334.P15688765481775593891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159339 n + A134816 (A016789 n).toNat

end

end A159334.P15688765481775593891

namespace A159334

/-- `A159339(n)+A134816(A016789(n))` -/
def P15688765481775593891.Spec : Prop :=
  ∀ n, P15688765481775593891.a n = A159334 n

end A159334

/-! ## A159334.P5927904121540376699

`A182097(A008585(n+1))+A159339(n)`
-/

namespace A159334.P5927904121540376699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (A008585 (n + 1)).toNat + A159339 n

end

end A159334.P5927904121540376699

namespace A159334

/-- `A182097(A008585(n+1))+A159339(n)` -/
def P5927904121540376699.Spec : Prop :=
  ∀ n, P5927904121540376699.a n = A159334 n

end A159334

/-! ## A159334.P1026913854535287736

`A182097(A008585(n)+1)+A159343(n)`
-/

namespace A159334.P1026913854535287736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (A008585 n + 1).toNat + A159343 n

end

end A159334.P1026913854535287736

namespace A159334

/-- `A182097(A008585(n)+1)+A159343(n)` -/
def P1026913854535287736.Spec : Prop :=
  ∀ n, P1026913854535287736.a n = A159334 n

end A159334

/-! ## A159334.P7691997473715006690

`A159330(n)+A159350(n)-A159348(n)`
-/

namespace A159334.P7691997473715006690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159330 n + (A159350 n - A159348 n)

end

end A159334.P7691997473715006690

namespace A159334

/-- `A159330(n)+A159350(n)-A159348(n)` -/
def P7691997473715006690.Spec : Prop :=
  ∀ n, P7691997473715006690.a n = A159334 n

end A159334

/-! ## A159334.P17677376079989015258

`A052921(n+1)+A159350(n)-A034943(n)`
-/

namespace A159334.P17677376079989015258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 (n + 1) + (A159350 n - A034943 n)

end

end A159334.P17677376079989015258

namespace A159334

/-- `A052921(n+1)+A159350(n)-A034943(n)` -/
def P17677376079989015258.Spec : Prop :=
  ∀ n, P17677376079989015258.a n = A159334 n

end A159334

/-! ## A159334.P15367468096196164574

`A052921(n+1)+A159339(n)-A052921(n)`
-/

namespace A159334.P15367468096196164574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 (n + 1) + (A159339 n - A052921 n)

end

end A159334.P15367468096196164574

namespace A159334

/-- `A052921(n+1)+A159339(n)-A052921(n)` -/
def P15367468096196164574.Spec : Prop :=
  ∀ n, P15367468096196164574.a n = A159334 n

end A159334

/-! ## A159334.P3506643171378983875

`A136302(n+1)+A159350(n)-A095263(n+1)`
-/

namespace A159334.P3506643171378983875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136302 (n + 1) + (A159350 n - A095263 (n + 1))

end

end A159334.P3506643171378983875

namespace A159334

/-- `A136302(n+1)+A159350(n)-A095263(n+1)` -/
def P3506643171378983875.Spec : Prop :=
  ∀ n, P3506643171378983875.a n = A159334 n

end A159334

/-!
# A159335: Triangle read by rows: numerator of n/binomial(n,m).

The programs for A159335, the canonical program `A159335.P1359279721979551656` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159335 has offset 0).

The definition of A159335 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159335.P1359279721979551656

`row(n)/gcd(row(n), C(row(n), col(n)))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159335

/-- `row(n)/gcd(row(n), C(row(n), col(n)))` -/
def P1359279721979551656.Spec : Prop :=
  ∀ n, P1359279721979551656.a n = (A159335 n : ℚ)

end A159335

/-! ## A159335.P4567446689233847705

`A003056(n)/gcd(A003056(n), A130595(n))`
-/

namespace A159335.P4567446689233847705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 n : ℚ) / (Int.gcd (A003056 n) (A130595 n) : ℚ)

end

end A159335.P4567446689233847705

namespace A159335

/-- `A003056(n)/gcd(A003056(n), A130595(n))` -/
def P4567446689233847705.Spec : Prop :=
  ∀ n, P4567446689233847705.a n = (A159335 n : ℚ)

end A159335

/-! ## A159335.P3722900265735576578

`lcm(A003056(n), A007318(n))/A007318(n)`
-/

namespace A159335.P3722900265735576578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A003056 n) (A007318 n) : ℚ) / (A007318 n : ℚ)

end

end A159335.P3722900265735576578

namespace A159335

/-- `lcm(A003056(n), A007318(n))/A007318(n)` -/
def P3722900265735576578.Spec : Prop :=
  ∀ n, P3722900265735576578.a n = (A159335 n : ℚ)

end A159335

/-! ## A159335.P5793474877957705541

`lcm(A029635(n), A051162(n))/A029635(n)`
-/

namespace A159335.P5793474877957705541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A029635 n) (A051162 n) : ℚ) / (A029635 n : ℚ)

end

end A159335.P5793474877957705541

namespace A159335

/-- `lcm(A029635(n), A051162(n))/A029635(n)` -/
def P5793474877957705541.Spec : Prop :=
  ∀ n, P5793474877957705541.a n = (A159335 n : ℚ)

end A159335

/-! ## A159335.P13181354518454349499

`lcm(A107711(n), A109004(n))/A107711(n)`
-/

namespace A159335.P13181354518454349499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A107711 n) (A109004 n) : ℚ) / (A107711 n : ℚ)

end

end A159335.P13181354518454349499

namespace A159335

/-- `lcm(A107711(n), A109004(n))/A107711(n)` -/
def P13181354518454349499.Spec : Prop :=
  ∀ n, P13181354518454349499.a n = (A159335 n : ℚ)

end A159335

/-! ## A159335.P7701747326352464953

`A003056(n)/gcd(A007318(n), A003056(n+1))`
-/

namespace A159335.P7701747326352464953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 n : ℚ) / (Int.gcd (A007318 n) (A003056 (n + 1)) : ℚ)

end

end A159335.P7701747326352464953

namespace A159335

/-- `A003056(n)/gcd(A007318(n), A003056(n+1))` -/
def P7701747326352464953.Spec : Prop :=
  ∀ n, P7701747326352464953.a n = (A159335 n : ℚ)

end A159335

/-! ## A159335.P6915003004026009078

`A109004(n)/A107711(n)*A165661(n)`
-/

namespace A159335.P6915003004026009078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109004 n : ℚ) / (A107711 n : ℚ) * (A165661 n : ℚ)

end

end A159335.P6915003004026009078

namespace A159335

/-- `A109004(n)/A107711(n)*A165661(n)` -/
def P6915003004026009078.Spec : Prop :=
  ∀ n, P6915003004026009078.a n = (A159335 n : ℚ)

end A159335

/-! ## A159335.P3002967451696366286

`ceil(A109004(n)/A165661(A107711(n)))`
-/

namespace A159335.P3002967451696366286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A109004 n : ℚ) / (A165661 (A107711 n).toNat : ℚ)⌉

end

end A159335.P3002967451696366286

namespace A159335

/-- `ceil(A109004(n)/A165661(A107711(n)))` -/
def P3002967451696366286.Spec : Prop :=
  ∀ n, P3002967451696366286.a n = A159335 n

end A159335

/-!
# A159336: Transform of the finite sequence (1, 0, -1) by the T_{1,0} transformation (see link).

The programs for A159336, the canonical program `A159336.P9357405427531420992` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159336 has offset 0).

The definition of A159336 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159336.P9357405427531420992

`3*a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=11, a(4)=26`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159336

/-- `3*a(n-1)-2*a(n-2)+a(n-3)` -/
def P9357405427531420992.Spec : Prop :=
  ∀ n, P9357405427531420992.a n = A159336 n

theorem P9357405427531420992.correct : P9357405427531420992.Spec := by
  intro n
  simp only [A159336]

end A159336

/-! ## A159336.P15536850156010068753

`ogf((1-x+2x^3-x^4)/(1-3x+2x^2-x^3))`
-/

namespace A159336.P15536850156010068753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, 2, -1] [1, -3, 2, -1] n

end

end A159336.P15536850156010068753

namespace A159336

/-- `ogf((1-x+2x^3-x^4)/(1-3x+2x^2-x^3))` -/
def P15536850156010068753.Spec : Prop :=
  ∀ n, P15536850156010068753.a n = A159336 n

end A159336

/-! ## A159336.P10918625600535713426

`A159347(n)+Δ[A034943(n+1)]`
-/

namespace A159336.P10918625600535713426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159347 n + (f1 (n + 1) - f1 n)

end

end A159336.P10918625600535713426

namespace A159336

/-- `A159347(n)+Δ[A034943(n+1)]` -/
def P10918625600535713426.Spec : Prop :=
  ∀ n, P10918625600535713426.a n = A159336 n

end A159336

/-! ## A159336.P16293486259098082169

`A052921(n)+A159347(n)-A034943(n)`
-/

namespace A159336.P16293486259098082169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 n + (A159347 n - A034943 n)

end

end A159336.P16293486259098082169

namespace A159336

/-- `A052921(n)+A159347(n)-A034943(n)` -/
def P16293486259098082169.Spec : Prop :=
  ∀ n, P16293486259098082169.a n = A159336 n

end A159336

/-! ## A159336.P16154825890661151467

`A159329(n)-A181984(n)`
-/

namespace A159336.P16154825890661151467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159329 n - A181984 n

end

end A159336.P16154825890661151467

namespace A159336

/-- `A159329(n)-A181984(n)` -/
def P16154825890661151467.Spec : Prop :=
  ∀ n, P16154825890661151467.a n = A159336 n

end A159336

/-! ## A159336.P6396188305542775682

`A159340(n)-A034943(n+1)`
-/

namespace A159336.P6396188305542775682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159340 n - A034943 (n + 1)

end

end A159336.P6396188305542775682

namespace A159336

/-- `A159340(n)-A034943(n+1)` -/
def P6396188305542775682.Spec : Prop :=
  ∀ n, P6396188305542775682.a n = A159336 n

end A159336

/-! ## A159336.P3197351515648867341

`A159329(n)-A034943(n+2)`
-/

namespace A159336.P3197351515648867341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159329 n - A034943 (n + 2)

end

end A159336.P3197351515648867341

namespace A159336

/-- `A159329(n)-A034943(n+2)` -/
def P3197351515648867341.Spec : Prop :=
  ∀ n, P3197351515648867341.a n = A159336 n

end A159336

/-! ## A159336.P17237768108215866016

`A159329(n)-A159328(n)/2`
-/

namespace A159336.P17237768108215866016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159329 n : ℚ) - (A159328 n : ℚ) / 2

end

end A159336.P17237768108215866016

namespace A159336

/-- `A159329(n)-A159328(n)/2` -/
def P17237768108215866016.Spec : Prop :=
  ∀ n, P17237768108215866016.a n = (A159336 n : ℚ)

end A159336

/-! ## A159336.P17746312540798778662

`A159340(n)-A000931(3*(n+1))`
-/

namespace A159336.P17746312540798778662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159340 n - A000931 (3 * (n + 1))

end

end A159336.P17746312540798778662

namespace A159336

/-- `A159340(n)-A000931(3*(n+1))` -/
def P17746312540798778662.Spec : Prop :=
  ∀ n, P17746312540798778662.a n = A159336 n

end A159336

/-! ## A159336.P7446141174922106119

`A137531(n)+A159347(n)-A095263(n+1)`
-/

namespace A159336.P7446141174922106119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137531 n + (A159347 n - A095263 (n + 1))

end

end A159336.P7446141174922106119

namespace A159336

/-- `A137531(n)+A159347(n)-A095263(n+1)` -/
def P7446141174922106119.Spec : Prop :=
  ∀ n, P7446141174922106119.a n = A159336 n

end A159336

/-! ## A159336.P4161982295990401937

`A136302(n+1)-A159348(n+2)`
-/

namespace A159336.P4161982295990401937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136302 (n + 1) - A159348 (n + 2)

end

end A159336.P4161982295990401937

namespace A159336

/-- `A136302(n+1)-A159348(n+2)` -/
def P4161982295990401937.Spec : Prop :=
  ∀ n, P4161982295990401937.a n = A159336 n

end A159336

/-! ## A159336.P17478565940271739902

`A097550(n+1)+A159347(n)-A095263(n+2)`
-/

namespace A159336.P17478565940271739902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097550 (n + 1) + (A159347 n - A095263 (n + 2))

end

end A159336.P17478565940271739902

namespace A159336

/-- `A097550(n+1)+A159347(n)-A095263(n+2)` -/
def P17478565940271739902.Spec : Prop :=
  ∀ n, P17478565940271739902.a n = A159336 n

end A159336

/-!
# A159337: Transform of the finite sequence (1, 0, -1, 0, 1) by the T_{1,0} transformation (see link).

The programs for A159337, the canonical program `A159337.P944649391294957107` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159337 has offset 0).

The definition of A159337 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159337.P944649391294957107

`3*a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=11, a(4)=27, a(5)=61, a(6)=141`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159337

/-- `3*a(n-1)-2*a(n-2)+a(n-3)` -/
def P944649391294957107.Spec : Prop :=
  ∀ n, P944649391294957107.a n = A159337 n

theorem P944649391294957107.correct : P944649391294957107.Spec := by
  intro n
  simp only [A159337]

end A159337

/-! ## A159337.P9003320853845246333

`A052921(n)+A159348(n)-A034943(n)`
-/

namespace A159337.P9003320853845246333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 n + (A159348 n - A034943 n)

end

end A159337.P9003320853845246333

namespace A159337

/-- `A052921(n)+A159348(n)-A034943(n)` -/
def P9003320853845246333.Spec : Prop :=
  ∀ n, P9003320853845246333.a n = A159337 n

end A159337

/-! ## A159337.P2969638158720951893

`A159330(n)-A181984(n)`
-/

namespace A159337.P2969638158720951893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159330 n - A181984 n

end

end A159337.P2969638158720951893

namespace A159337

/-- `A159330(n)-A181984(n)` -/
def P2969638158720951893.Spec : Prop :=
  ∀ n, P2969638158720951893.a n = A159337 n

end A159337

/-! ## A159337.P7715923078720988712

`A159341(n)-A034943(n+1)`
-/

namespace A159337.P7715923078720988712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159341 n - A034943 (n + 1)

end

end A159337.P7715923078720988712

namespace A159337

/-- `A159341(n)-A034943(n+1)` -/
def P7715923078720988712.Spec : Prop :=
  ∀ n, P7715923078720988712.a n = A159337 n

end A159337

/-! ## A159337.P4526198152764888290

`A159330(n)-A034943(n+2)`
-/

namespace A159337.P4526198152764888290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159330 n - A034943 (n + 2)

end

end A159337.P4526198152764888290

namespace A159337

/-- `A159330(n)-A034943(n+2)` -/
def P4526198152764888290.Spec : Prop :=
  ∀ n, P4526198152764888290.a n = A159337 n

end A159337

/-! ## A159337.P9187218610752501023

`A159330(n)-A159328(n)/2`
-/

namespace A159337.P9187218610752501023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159330 n : ℚ) - (A159328 n : ℚ) / 2

end

end A159337.P9187218610752501023

namespace A159337

/-- `A159330(n)-A159328(n)/2` -/
def P9187218610752501023.Spec : Prop :=
  ∀ n, P9187218610752501023.a n = (A159337 n : ℚ)

end A159337

/-! ## A159337.P5691758410890990748

`A159341(n)-A000931(3*(n+1))`
-/

namespace A159337.P5691758410890990748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159341 n - A000931 (3 * (n + 1))

end

end A159337.P5691758410890990748

namespace A159337

/-- `A159341(n)-A000931(3*(n+1))` -/
def P5691758410890990748.Spec : Prop :=
  ∀ n, P5691758410890990748.a n = A159337 n

end A159337

/-! ## A159337.P4952557141320302100

`A137531(n)+A159348(n)-A095263(n+1)`
-/

namespace A159337.P4952557141320302100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137531 n + (A159348 n - A095263 (n + 1))

end

end A159337.P4952557141320302100

namespace A159337

/-- `A137531(n)+A159348(n)-A095263(n+1)` -/
def P4952557141320302100.Spec : Prop :=
  ∀ n, P4952557141320302100.a n = A159337 n

end A159337

/-! ## A159337.P13763044831973923586

`A097550(n+1)+A159348(n)-A095263(n+2)`
-/

namespace A159337.P13763044831973923586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097550 (n + 1) + (A159348 n - A095263 (n + 2))

end

end A159337.P13763044831973923586

namespace A159337

/-- `A097550(n+1)+A159348(n)-A095263(n+2)` -/
def P13763044831973923586.Spec : Prop :=
  ∀ n, P13763044831973923586.a n = A159337 n

end A159337

/-!
# A159338: Transform of the finite sequence (1, 0, -1, 0, 1, 0, -1) by the T_{1,0} transformation (see link).

The programs for A159338, the canonical program `A159338.P13354069107468320638` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159338 has offset 0).

The definition of A159338 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159338.P13354069107468320638

`3*a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=11, a(4)=27, a(5)=61, a(6)=140, a(7)=327, a(8)=761`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159338

/-- `3*a(n-1)-2*a(n-2)+a(n-3)` -/
def P13354069107468320638.Spec : Prop :=
  ∀ n, P13354069107468320638.a n = A159338 n

theorem P13354069107468320638.correct : P13354069107468320638.Spec := by
  intro n
  simp only [A159338]

end A159338

/-! ## A159338.P4114969657478569853

`A159337(n)+A159348(n)-A159349(n)`
-/

namespace A159338.P4114969657478569853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159337 n + (A159348 n - A159349 n)

end

end A159338.P4114969657478569853

namespace A159338

/-- `A159337(n)+A159348(n)-A159349(n)` -/
def P4114969657478569853.Spec : Prop :=
  ∀ n, P4114969657478569853.a n = A159338 n

end A159338

/-! ## A159338.P15446559208758581289

`A159330(n)+A159337(n)-A159331(n)`
-/

namespace A159338.P15446559208758581289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159330 n + (A159337 n - A159331 n)

end

end A159338.P15446559208758581289

namespace A159338

/-- `A159330(n)+A159337(n)-A159331(n)` -/
def P15446559208758581289.Spec : Prop :=
  ∀ n, P15446559208758581289.a n = A159338 n

end A159338

/-! ## A159338.P7042097345994625309

`A159330(n)+A159348(n)-A159342(n)`
-/

namespace A159338.P7042097345994625309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159330 n + (A159348 n - A159342 n)

end

end A159338.P7042097345994625309

namespace A159338

/-- `A159330(n)+A159348(n)-A159342(n)` -/
def P7042097345994625309.Spec : Prop :=
  ∀ n, P7042097345994625309.a n = A159338 n

end A159338

/-! ## A159338.P14468281543226855351

`A159337(n)+A159341(n)-A159342(n)`
-/

namespace A159338.P14468281543226855351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159337 n + (A159341 n - A159342 n)

end

end A159338.P14468281543226855351

namespace A159338

/-- `A159337(n)+A159341(n)-A159342(n)` -/
def P14468281543226855351.Spec : Prop :=
  ∀ n, P14468281543226855351.a n = A159338 n

end A159338

/-! ## A159338.P9820368559879147998

`A181984(n)-A159331(n)%A159337(n)`
-/

namespace A159338.P9820368559879147998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 n - Int.tmod (A159331 n) (A159337 n)

end

end A159338.P9820368559879147998

namespace A159338

/-- `A181984(n)-A159331(n)%A159337(n)` -/
def P9820368559879147998.Spec : Prop :=
  ∀ n, P9820368559879147998.a n = A159338 n

end A159338

/-!
# A159339: Transform of A056594 by the T_{1,0} transformation (see link).

The programs for A159339, the canonical program `A159339.P7728178462153315611` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159339 has offset 0).

The definition of A159339 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159339.P7728178462153315611

`3*a(n-1)-3*a(n-2)+4*a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=11, a(4)=27`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159339

/-- `3*a(n-1)-3*a(n-2)+4*a(n-3)-2*a(n-4)+a(n-5)` -/
def P7728178462153315611.Spec : Prop :=
  ∀ n, P7728178462153315611.a n = A159339 n

theorem P7728178462153315611.correct : P7728178462153315611.Spec := by
  intro n
  simp only [A159339]

end A159339

/-! ## A159339.P16897792214450670988

`A182097(A016777(n))+A159350(n)`
-/

namespace A159339.P16897792214450670988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (A016777 n).toNat + A159350 n

end

end A159339.P16897792214450670988

namespace A159339

/-- `A182097(A016777(n))+A159350(n)` -/
def P16897792214450670988.Spec : Prop :=
  ∀ n, P16897792214450670988.a n = A159339 n

end A159339

/-! ## A159339.P6952028852482417343

`A052921(n)+A159350(n)-A034943(n)`
-/

namespace A159339.P6952028852482417343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 n + (A159350 n - A034943 n)

end

end A159339.P6952028852482417343

namespace A159339

/-- `A052921(n)+A159350(n)-A034943(n)` -/
def P6952028852482417343.Spec : Prop :=
  ∀ n, P6952028852482417343.a n = A159339 n

end A159339

/-! ## A159339.P834923377282460732

`A159334(n)-A181984(n)`
-/

namespace A159339.P834923377282460732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159334 n - A181984 n

end

end A159339.P834923377282460732

namespace A159339

/-- `A159334(n)-A181984(n)` -/
def P834923377282460732.Spec : Prop :=
  ∀ n, P834923377282460732.a n = A159339 n

end A159339

/-! ## A159339.P11507668085350803109

`A159334(n)-Δ[A052921(n)]`
-/

namespace A159339.P11507668085350803109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159334 n - (f1 (n + 1) - f1 n)

end

end A159339.P11507668085350803109

namespace A159339

/-- `A159334(n)-Δ[A052921(n)]` -/
def P11507668085350803109.Spec : Prop :=
  ∀ n, P11507668085350803109.a n = A159339 n

end A159339

/-! ## A159339.P12893141810742141760

`A159343(n)-Δ[A329244(n)]`
-/

namespace A159339.P12893141810742141760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159343 n - (f1 (n + 1) - f1 n)

end

end A159339.P12893141810742141760

namespace A159339

/-- `A159343(n)-Δ[A329244(n)]` -/
def P12893141810742141760.Spec : Prop :=
  ∀ n, P12893141810742141760.a n = A159339 n

end A159339

/-! ## A159339.P9188447549174406283

`A159343(n)-A034943(n+1)`
-/

namespace A159339.P9188447549174406283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159343 n - A034943 (n + 1)

end

end A159339.P9188447549174406283

namespace A159339

/-- `A159343(n)-A034943(n+1)` -/
def P9188447549174406283.Spec : Prop :=
  ∀ n, P9188447549174406283.a n = A159339 n

end A159339

/-! ## A159339.P16156531916254875295

`A159334(n)-A034943(n+2)`
-/

namespace A159339.P16156531916254875295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159334 n - A034943 (n + 2)

end

end A159339.P16156531916254875295

namespace A159339

/-- `A159334(n)-A034943(n+2)` -/
def P16156531916254875295.Spec : Prop :=
  ∀ n, P16156531916254875295.a n = A159339 n

end A159339

/-! ## A159339.P15639109341027997158

`A159334(n)-A159328(n)/2`
-/

namespace A159339.P15639109341027997158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159334 n : ℚ) - (A159328 n : ℚ) / 2

end

end A159339.P15639109341027997158

namespace A159339

/-- `A159334(n)-A159328(n)/2` -/
def P15639109341027997158.Spec : Prop :=
  ∀ n, P15639109341027997158.a n = (A159339 n : ℚ)

end A159339

/-! ## A159339.P9862429991074660639

`A159343(n)-A182097(A008585(n))`
-/

namespace A159339.P9862429991074660639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159343 n - A182097 (A008585 n).toNat

end

end A159339.P9862429991074660639

namespace A159339

/-- `A159343(n)-A182097(A008585(n))` -/
def P9862429991074660639.Spec : Prop :=
  ∀ n, P9862429991074660639.a n = A159339 n

end A159339

/-! ## A159339.P17538906859712161545

`A159334(n)-A182097(A016777(n)+2)`
-/

namespace A159339.P17538906859712161545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159334 n - A182097 (A016777 n + 2).toNat

end

end A159339.P17538906859712161545

namespace A159339

/-- `A159334(n)-A182097(A016777(n)+2)` -/
def P17538906859712161545.Spec : Prop :=
  ∀ n, P17538906859712161545.a n = A159339 n

end A159339

/-! ## A159339.P7488364500749916557

`A137531(n)+A159350(n)-A095263(n+1)`
-/

namespace A159339.P7488364500749916557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137531 n + (A159350 n - A095263 (n + 1))

end

end A159339.P7488364500749916557

namespace A159339

/-- `A137531(n)+A159350(n)-A095263(n+1)` -/
def P7488364500749916557.Spec : Prop :=
  ∀ n, P7488364500749916557.a n = A159339 n

end A159339

/-! ## A159339.P12852659742816187970

`A136302(n+1)-A159350(n+2)`
-/

namespace A159339.P12852659742816187970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136302 (n + 1) - A159350 (n + 2)

end

end A159339.P12852659742816187970

namespace A159339

/-- `A136302(n+1)-A159350(n+2)` -/
def P12852659742816187970.Spec : Prop :=
  ∀ n, P12852659742816187970.a n = A159339 n

end A159339

/-!
# A159340: Transform of the finite sequence (1, 0, -1) by the T_{0,1} transformation (see link).

The programs for A159340, the canonical program `A159340.P13718353209864072402` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159340 has offset 0).

The definition of A159340 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159340.P13718353209864072402

`3*a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=2, a(1)=3, a(2)=6, a(3)=16, a(4)=38`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159340

/-- `3*a(n-1)-2*a(n-2)+a(n-3)` -/
def P13718353209864072402.Spec : Prop :=
  ∀ n, P13718353209864072402.a n = A159340 n

theorem P13718353209864072402.correct : P13718353209864072402.Spec := by
  intro n
  simp only [A159340]

end A159340

/-! ## A159340.P10076946834239231067

`ogf((2-3x+x^2+2x^3-x^4)/(1-3x+2x^2-x^3))`
-/

namespace A159340.P10076946834239231067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3, 1, 2, -1] [1, -3, 2, -1] n

end

end A159340.P10076946834239231067

namespace A159340

/-- `ogf((2-3x+x^2+2x^3-x^4)/(1-3x+2x^2-x^3))` -/
def P10076946834239231067.Spec : Prop :=
  ∀ n, P10076946834239231067.a n = A159340 n

end A159340

/-! ## A159340.P7139269023819241503

`A181984(n)+A159347(n)`
-/

namespace A159340.P7139269023819241503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 n + A159347 n

end

end A159340.P7139269023819241503

namespace A159340

/-- `A181984(n)+A159347(n)` -/
def P7139269023819241503.Spec : Prop :=
  ∀ n, P7139269023819241503.a n = A159340 n

end A159340

/-! ## A159340.P1168695224901818327

`A159336(n)+A034943(n+1)`
-/

namespace A159340.P1168695224901818327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159336 n + A034943 (n + 1)

end

end A159340.P1168695224901818327

namespace A159340

/-- `A159336(n)+A034943(n+1)` -/
def P1168695224901818327.Spec : Prop :=
  ∀ n, P1168695224901818327.a n = A159340 n

end A159340

/-! ## A159340.P6041559852342406702

`A159347(n)+A034943(n+2)`
-/

namespace A159340.P6041559852342406702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159347 n + A034943 (n + 2)

end

end A159340.P6041559852342406702

namespace A159340

/-- `A159347(n)+A034943(n+2)` -/
def P6041559852342406702.Spec : Prop :=
  ∀ n, P6041559852342406702.a n = A159340 n

end A159340

/-! ## A159340.P16813939285553723792

`A159347(n)+A159328(n)/2`
-/

namespace A159340.P16813939285553723792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159347 n : ℚ) + (A159328 n : ℚ) / 2

end

end A159340.P16813939285553723792

namespace A159340

/-- `A159347(n)+A159328(n)/2` -/
def P16813939285553723792.Spec : Prop :=
  ∀ n, P16813939285553723792.a n = (A159340 n : ℚ)

end A159340

/-! ## A159340.P2717798720356385708

`A159329(n)-Δ[A034943(n+1)]`
-/

namespace A159340.P2717798720356385708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159329 n - (f1 (n + 1) - f1 n)

end

end A159340.P2717798720356385708

namespace A159340

/-- `A159329(n)-Δ[A034943(n+1)]` -/
def P2717798720356385708.Spec : Prop :=
  ∀ n, P2717798720356385708.a n = A159340 n

end A159340

/-! ## A159340.P12922268667519760381

`A052921(n+1)+A159347(n)-A052921(n)`
-/

namespace A159340.P12922268667519760381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 (n + 1) + (A159347 n - A052921 n)

end

end A159340.P12922268667519760381

namespace A159340

/-- `A052921(n+1)+A159347(n)-A052921(n)` -/
def P12922268667519760381.Spec : Prop :=
  ∀ n, P12922268667519760381.a n = A159340 n

end A159340

/-! ## A159340.P13181687635590329901

`A136305(n)+A159347(n)-A136302(n+1)`
-/

namespace A159340.P13181687635590329901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136305 n + (A159347 n - A136302 (n + 1))

end

end A159340.P13181687635590329901

namespace A159340

/-- `A136305(n)+A159347(n)-A136302(n+1)` -/
def P13181687635590329901.Spec : Prop :=
  ∀ n, P13181687635590329901.a n = A159340 n

end A159340

/-! ## A159340.P7500118122553156813

`A136302(n+1)+A159347(n)-A137531(n)`
-/

namespace A159340.P7500118122553156813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136302 (n + 1) + (A159347 n - A137531 n)

end

end A159340.P7500118122553156813

namespace A159340

/-- `A136302(n+1)+A159347(n)-A137531(n)` -/
def P7500118122553156813.Spec : Prop :=
  ∀ n, P7500118122553156813.a n = A159340 n

end A159340

/-!
# A159341: Transform of the finite sequence (1, 0, -1, 0, 1) by the T_{0,1} transformation (see link).

The programs for A159341, the canonical program `A159341.P11794738980592991836` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159341 has offset 0).

The definition of A159341 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159341.P11794738980592991836

`3*a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=2, a(1)=3, a(2)=6, a(3)=16, a(4)=39, a(5)=89, a(6)=206`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159341

/-- `3*a(n-1)-2*a(n-2)+a(n-3)` -/
def P11794738980592991836.Spec : Prop :=
  ∀ n, P11794738980592991836.a n = A159341 n

theorem P11794738980592991836.correct : P11794738980592991836.Spec := by
  intro n
  simp only [A159341]

end A159341

/-! ## A159341.P17580495392159314346

`A181984(n)+A159348(n)`
-/

namespace A159341.P17580495392159314346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 n + A159348 n

end

end A159341.P17580495392159314346

namespace A159341

/-- `A181984(n)+A159348(n)` -/
def P17580495392159314346.Spec : Prop :=
  ∀ n, P17580495392159314346.a n = A159341 n

end A159341

/-! ## A159341.P11632705056505790193

`A159337(n)+A034943(n+1)`
-/

namespace A159341.P11632705056505790193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159337 n + A034943 (n + 1)

end

end A159341.P11632705056505790193

namespace A159341

/-- `A159337(n)+A034943(n+1)` -/
def P11632705056505790193.Spec : Prop :=
  ∀ n, P11632705056505790193.a n = A159341 n

end A159341

/-! ## A159341.P14793209255980069258

`A159348(n)+A034943(n+2)`
-/

namespace A159341.P14793209255980069258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159348 n + A034943 (n + 2)

end

end A159341.P14793209255980069258

namespace A159341

/-- `A159348(n)+A034943(n+2)` -/
def P14793209255980069258.Spec : Prop :=
  ∀ n, P14793209255980069258.a n = A159341 n

end A159341

/-! ## A159341.P11233380069966909214

`A159330(n)-Δ[A034943(n+1)]`
-/

namespace A159341.P11233380069966909214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159330 n - (f1 (n + 1) - f1 n)

end

end A159341.P11233380069966909214

namespace A159341

/-- `A159330(n)-Δ[A034943(n+1)]` -/
def P11233380069966909214.Spec : Prop :=
  ∀ n, P11233380069966909214.a n = A159341 n

end A159341

/-! ## A159341.P12757295153540105974

`A159337(n)+Δ[A000931(3*n+2)]`
-/

namespace A159341.P12757295153540105974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159337 n + (f1 (n + 1) - f1 n)

end

end A159341.P12757295153540105974

namespace A159341

/-- `A159337(n)+Δ[A000931(3*n+2)]` -/
def P12757295153540105974.Spec : Prop :=
  ∀ n, P12757295153540105974.a n = A159341 n

end A159341

/-! ## A159341.P17229610488775218904

`A052921(n+1)+A159348(n)-A052921(n)`
-/

namespace A159341.P17229610488775218904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 (n + 1) + (A159348 n - A052921 n)

end

end A159341.P17229610488775218904

namespace A159341

/-- `A052921(n+1)+A159348(n)-A052921(n)` -/
def P17229610488775218904.Spec : Prop :=
  ∀ n, P17229610488775218904.a n = A159341 n

end A159341

/-! ## A159341.P18203771258374605324

`A136302(n+1)+A159348(n)-A137531(n)`
-/

namespace A159341.P18203771258374605324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136302 (n + 1) + (A159348 n - A137531 n)

end

end A159341.P18203771258374605324

namespace A159341

/-- `A136302(n+1)+A159348(n)-A137531(n)` -/
def P18203771258374605324.Spec : Prop :=
  ∀ n, P18203771258374605324.a n = A159341 n

end A159341

/-!
# A159342: Transform of the finite sequence (1, 0, -1, 0, 1, 0, -1) by the T_{0,1} transform (see link).

The programs for A159342, the canonical program `A159342.P4932538038691876782` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159342 has offset 0).

The definition of A159342 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159342.P4932538038691876782

`A181984(n)+A159349(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A159342

/-- `A181984(n)+A159349(n)` -/
def P4932538038691876782.Spec : Prop :=
  ∀ n, P4932538038691876782.a n = A159342 n

theorem P4932538038691876782.correct : P4932538038691876782.Spec := by
  intro n
  simp only [A159342]

end A159342

/-! ## A159342.P1778728107973835108

`A159349(n)+Δ[A052921(n)]`
-/

namespace A159342.P1778728107973835108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159349 n + (f1 (n + 1) - f1 n)

end

end A159342.P1778728107973835108

namespace A159342

/-- `A159349(n)+Δ[A052921(n)]` -/
def P1778728107973835108.Spec : Prop :=
  ∀ n, P1778728107973835108.a n = A159342 n

end A159342

/-! ## A159342.P15623091301049214375

`A159349(n)+A034943(n+2)`
-/

namespace A159342.P15623091301049214375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159349 n + A034943 (n + 2)

end

end A159342.P15623091301049214375

namespace A159342

/-- `A159349(n)+A034943(n+2)` -/
def P15623091301049214375.Spec : Prop :=
  ∀ n, P15623091301049214375.a n = A159342 n

theorem P15623091301049214375.correct : P15623091301049214375.Spec := by
  intro n
  simp only [A159342, Nat.add_sub_cancel, A159342.P15623091301049214375.a, A159342.P4932538038691876782.a, A034943, A034943.P7979161656748620110.a, A159349, A159349.P16127559482196554441.a, A181984, A181984.P13479675070080437777.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A159342

/-! ## A159342.P3615966001666529105

`A159331(n)-Δ[A034943(n+1)]`
-/

namespace A159342.P3615966001666529105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159331 n - (f1 (n + 1) - f1 n)

end

end A159342.P3615966001666529105

namespace A159342

/-- `A159331(n)-Δ[A034943(n+1)]` -/
def P3615966001666529105.Spec : Prop :=
  ∀ n, P3615966001666529105.a n = A159342 n

end A159342

/-! ## A159342.P14747276058771576201

`A159349(n)+A134816(A016789(n))`
-/

namespace A159342.P14747276058771576201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159349 n + A134816 (A016789 n).toNat

end

end A159342.P14747276058771576201

namespace A159342

/-- `A159349(n)+A134816(A016789(n))` -/
def P14747276058771576201.Spec : Prop :=
  ∀ n, P14747276058771576201.a n = A159342 n

end A159342

/-! ## A159342.P12503350571519372418

`A159331(n)-A182097(A016777(n))`
-/

namespace A159342.P12503350571519372418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159331 n - A182097 (A016777 n).toNat

end

end A159342.P12503350571519372418

namespace A159342

/-- `A159331(n)-A182097(A016777(n))` -/
def P12503350571519372418.Spec : Prop :=
  ∀ n, P12503350571519372418.a n = A159342 n

end A159342

/-! ## A159342.P13111964710148683906

`A159349(n)+∑[A134816(A008486(n))]`
-/

namespace A159342.P13111964710148683906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (A008486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159349 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159342.P13111964710148683906

namespace A159342

/-- `A159349(n)+∑[A134816(A008486(n))]` -/
def P13111964710148683906.Spec : Prop :=
  ∀ n, P13111964710148683906.a n = A159342 n

end A159342

/-! ## A159342.P5612285029975409112

`A159349(n)+A134816(A008486(n)+2)`
-/

namespace A159342.P5612285029975409112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159349 n + A134816 (A008486 n + 2).toNat

end

end A159342.P5612285029975409112

namespace A159342

/-- `A159349(n)+A134816(A008486(n)+2)` -/
def P5612285029975409112.Spec : Prop :=
  ∀ n, P5612285029975409112.a n = A159342 n

end A159342

/-! ## A159342.P8620909673701548337

`A034943(n)+A159331(n)-A052921(n)`
-/

namespace A159342.P8620909673701548337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 n + (A159331 n - A052921 n)

end

end A159342.P8620909673701548337

namespace A159342

/-- `A034943(n)+A159331(n)-A052921(n)` -/
def P8620909673701548337.Spec : Prop :=
  ∀ n, P8620909673701548337.a n = A159342 n

end A159342

/-! ## A159342.P14224001704076356212

`A159337(n)+A159341(n)-A159338(n)`
-/

namespace A159342.P14224001704076356212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159337 n + (A159341 n - A159338 n)

end

end A159342.P14224001704076356212

namespace A159342

/-- `A159337(n)+A159341(n)-A159338(n)` -/
def P14224001704076356212.Spec : Prop :=
  ∀ n, P14224001704076356212.a n = A159342 n

end A159342

/-! ## A159342.P16340638622497595260

`A159340(n)+A159349(n)-A159347(n)`
-/

namespace A159342.P16340638622497595260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159340 n + (A159349 n - A159347 n)

end

end A159342.P16340638622497595260

namespace A159342

/-- `A159340(n)+A159349(n)-A159347(n)` -/
def P16340638622497595260.Spec : Prop :=
  ∀ n, P16340638622497595260.a n = A159342 n

end A159342

/-! ## A159342.P17227633756957579297

`A052921(n+1)+A159349(n)-A052921(n)`
-/

namespace A159342.P17227633756957579297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 (n + 1) + (A159349 n - A052921 n)

end

end A159342.P17227633756957579297

namespace A159342

/-- `A052921(n+1)+A159349(n)-A052921(n)` -/
def P17227633756957579297.Spec : Prop :=
  ∀ n, P17227633756957579297.a n = A159342 n

end A159342

/-! ## A159342.P15905566717607760875

`A136302(n+1)+A159349(n)-A137531(n)`
-/

namespace A159342.P15905566717607760875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136302 (n + 1) + (A159349 n - A137531 n)

end

end A159342.P15905566717607760875

namespace A159342

/-- `A136302(n+1)+A159349(n)-A137531(n)` -/
def P15905566717607760875.Spec : Prop :=
  ∀ n, P15905566717607760875.a n = A159342 n

end A159342

/-!
# A159343: Transform of A056594 by the T_{0,1} transformation (see link).

The programs for A159343, the canonical program `A159343.P10155575138305738409` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159343 has offset 0).

The definition of A159343 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159343.P10155575138305738409

`3*a(n-1)-3*a(n-2)+4*a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=2, a(1)=3, a(2)=6, a(3)=16, a(4)=39`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159343

/-- `3*a(n-1)-3*a(n-2)+4*a(n-3)-2*a(n-4)+a(n-5)` -/
def P10155575138305738409.Spec : Prop :=
  ∀ n, P10155575138305738409.a n = A159343 n

theorem P10155575138305738409.correct : P10155575138305738409.Spec := by
  intro n
  simp only [A159343]

end A159343

/-! ## A159343.P5240785411794852250

`A181984(n)+A159350(n)`
-/

namespace A159343.P5240785411794852250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 n + A159350 n

end

end A159343.P5240785411794852250

namespace A159343

/-- `A181984(n)+A159350(n)` -/
def P5240785411794852250.Spec : Prop :=
  ∀ n, P5240785411794852250.a n = A159343 n

end A159343

/-! ## A159343.P18142978012713295333

`A159350(n)+Δ[A052921(n)]`
-/

namespace A159343.P18142978012713295333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159350 n + (f1 (n + 1) - f1 n)

end

end A159343.P18142978012713295333

namespace A159343

/-- `A159350(n)+Δ[A052921(n)]` -/
def P18142978012713295333.Spec : Prop :=
  ∀ n, P18142978012713295333.a n = A159343 n

end A159343

/-! ## A159343.P11755693297190293773

`A159339(n)+Δ[A329244(n)]`
-/

namespace A159343.P11755693297190293773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159339 n + (f1 (n + 1) - f1 n)

end

end A159343.P11755693297190293773

namespace A159343

/-- `A159339(n)+Δ[A329244(n)]` -/
def P11755693297190293773.Spec : Prop :=
  ∀ n, P11755693297190293773.a n = A159343 n

end A159343

/-! ## A159343.P5587782949791210620

`A159339(n)+A034943(n+1)`
-/

namespace A159343.P5587782949791210620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159339 n + A034943 (n + 1)

end

end A159343.P5587782949791210620

namespace A159343

/-- `A159339(n)+A034943(n+1)` -/
def P5587782949791210620.Spec : Prop :=
  ∀ n, P5587782949791210620.a n = A159343 n

end A159343

/-! ## A159343.P1100332686669506403

`A159350(n)+A034943(n+2)`
-/

namespace A159343.P1100332686669506403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159350 n + A034943 (n + 2)

end

end A159343.P1100332686669506403

namespace A159343

/-- `A159350(n)+A034943(n+2)` -/
def P1100332686669506403.Spec : Prop :=
  ∀ n, P1100332686669506403.a n = A159343 n

end A159343

/-! ## A159343.P8760294756264769774

`A159350(n)+A134816(A016789(n))`
-/

namespace A159343.P8760294756264769774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159350 n + A134816 (A016789 n).toNat

end

end A159343.P8760294756264769774

namespace A159343

/-- `A159350(n)+A134816(A016789(n))` -/
def P8760294756264769774.Spec : Prop :=
  ∀ n, P8760294756264769774.a n = A159343 n

end A159343

/-! ## A159343.P10052878333820628026

`A182097(A008585(n))+A159339(n)`
-/

namespace A159343.P10052878333820628026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (A008585 n).toNat + A159339 n

end

end A159343.P10052878333820628026

namespace A159343

/-- `A182097(A008585(n))+A159339(n)` -/
def P10052878333820628026.Spec : Prop :=
  ∀ n, P10052878333820628026.a n = A159343 n

end A159343

/-! ## A159343.P10473770146270051474

`A159334(n)-A182097(A016777(n))`
-/

namespace A159343.P10473770146270051474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159334 n - A182097 (A016777 n).toNat

end

end A159343.P10473770146270051474

namespace A159343

/-- `A159334(n)-A182097(A016777(n))` -/
def P10473770146270051474.Spec : Prop :=
  ∀ n, P10473770146270051474.a n = A159343 n

end A159343

/-! ## A159343.P5963016500095402699

`A159350(n)+∑[A134816(A008486(n))]`
-/

namespace A159343.P5963016500095402699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (A008486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159350 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159343.P5963016500095402699

namespace A159343

/-- `A159350(n)+∑[A134816(A008486(n))]` -/
def P5963016500095402699.Spec : Prop :=
  ∀ n, P5963016500095402699.a n = A159343 n

end A159343

/-! ## A159343.P16071151422310534475

`A159350(n)+A134816(A008486(n)+2)`
-/

namespace A159343.P16071151422310534475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159350 n + A134816 (A008486 n + 2).toNat

end

end A159343.P16071151422310534475

namespace A159343

/-- `A159350(n)+A134816(A008486(n)+2)` -/
def P16071151422310534475.Spec : Prop :=
  ∀ n, P16071151422310534475.a n = A159343 n

end A159343

/-! ## A159343.P6478970986949323470

`A182097(A016777(n)+2)+A159350(n)`
-/

namespace A159343.P6478970986949323470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (A016777 n + 2).toNat + A159350 n

end

end A159343.P6478970986949323470

namespace A159343

/-- `A182097(A016777(n)+2)+A159350(n)` -/
def P6478970986949323470.Spec : Prop :=
  ∀ n, P6478970986949323470.a n = A159343 n

end A159343

/-! ## A159343.P5185968115018912728

`A034943(n)+A159334(n)-A052921(n)`
-/

namespace A159343.P5185968115018912728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 n + (A159334 n - A052921 n)

end

end A159343.P5185968115018912728

namespace A159343

/-- `A034943(n)+A159334(n)-A052921(n)` -/
def P5185968115018912728.Spec : Prop :=
  ∀ n, P5185968115018912728.a n = A159343 n

end A159343

/-! ## A159343.P16611518821483418273

`A052921(n+1)+A159350(n)-A052921(n)`
-/

namespace A159343.P16611518821483418273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 (n + 1) + (A159350 n - A052921 n)

end

end A159343.P16611518821483418273

namespace A159343

/-- `A052921(n+1)+A159350(n)-A052921(n)` -/
def P16611518821483418273.Spec : Prop :=
  ∀ n, P16611518821483418273.a n = A159343 n

end A159343

/-! ## A159343.P14416413542770408552

`A052921(n+1)+A159339(n)-A095263(n+1)`
-/

namespace A159343.P14416413542770408552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 (n + 1) + (A159339 n - A095263 (n + 1))

end

end A159343.P14416413542770408552

namespace A159343

/-- `A052921(n+1)+A159339(n)-A095263(n+1)` -/
def P14416413542770408552.Spec : Prop :=
  ∀ n, P14416413542770408552.a n = A159343 n

end A159343

/-!
# A159345: a(n) is the number of digits in the decimal expansion of Pi needed to contain a repeated n-digit substring.

The programs for A159345, there is no canonical definition to state claims against.
-/

/-! ## A159345.P12441566990131112141

`A134914(A000595(n))*A153183(3*n+1)`
-/

namespace A159345.P12441566990131112141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134914 (A000595 n).toNat * A153183 (3 * n + 1)

end

end A159345.P12441566990131112141

/-!
# A159346: Triangle read by rows: every third term of every third row of A008292.

The programs for A159346, there is no canonical definition to state claims against.
-/

/-! ## A159346.P16541285857819121780

`A344393(A359301(n+1))`
-/

namespace A159346.P16541285857819121780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344393 (A359301 (n + 1)).toNat

end

end A159346.P16541285857819121780

/-! ## A159346.P10143508904899405205

`A008292(A000720(2*(n+2))^2^floor(n/4))`
-/

namespace A159346.P10143508904899405205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (SequenceMachineLib.roundAway ((A000720 (2 * (n + 2)) : ℝ) ^ ((2 : ℚ) ^ (⌊(n : ℚ) / 4⌋ : ℤ) : ℝ))).toNat

end

end A159346.P10143508904899405205

/-! ## A159346.P115894011423416725

`A008292(A223256(∑[(n+1)/2^val(n+1, 2)]))`
-/

namespace A159346.P115894011423416725
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A223256 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A159346.P115894011423416725

/-! ## A159346.P10575452952196254463

`A008292(A139047(n)^A334209(n+1))`
-/

namespace A159346.P10575452952196254463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (SequenceMachineLib.roundAway ((A139047 n : ℚ) ^ (A334209 (n + 1) : ℤ))).toNat

end

end A159346.P10575452952196254463

/-!
# A159347: Transform of the finite sequence (1, 0, -1) by the T_{0,0} transformation.

The programs for A159347, the canonical program `A159347.P5324079294090841476` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159347 has offset 0).

The definition of A159347 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159347.P5324079294090841476

`3*a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4, a(4)=10`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159347

/-- `3*a(n-1)-2*a(n-2)+a(n-3)` -/
def P5324079294090841476.Spec : Prop :=
  ∀ n, P5324079294090841476.a n = A159347 n

theorem P5324079294090841476.correct : P5324079294090841476.Spec := by
  intro n
  simp only [A159347]

end A159347

/-! ## A159347.P17645003562120497701

`ogf((1-2x+2x^3-x^4)/(1-3x+2x^2-x^3))`
-/

namespace A159347.P17645003562120497701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 0, 2, -1] [1, -3, 2, -1] n

end

end A159347.P17645003562120497701

namespace A159347

/-- `ogf((1-2x+2x^3-x^4)/(1-3x+2x^2-x^3))` -/
def P17645003562120497701.Spec : Prop :=
  ∀ n, P17645003562120497701.a n = A159347 n

end A159347

/-! ## A159347.P12560603768839932341

`A137531(floor(n*(n/(n+1))²))`
-/

namespace A159347.P12560603768839932341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137531 ⌊(n : ℚ) * ((n : ℚ) / (n + 1 : ℚ)) ^ 2⌋.toNat

end

end A159347.P12560603768839932341

namespace A159347

/-- `A137531(floor(n*(n/(n+1))²))` -/
def P12560603768839932341.Spec : Prop :=
  ∀ n, P12560603768839932341.a n = A159347 n

end A159347

/-! ## A159347.P9103497129211433194

`A137584(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A159347.P9103497129211433194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A137584 (n - 2) + a (n - 1)

end

end A159347.P9103497129211433194

namespace A159347

/-- `A137584(n-2)+a(n-1)` -/
def P9103497129211433194.Spec : Prop :=
  ∀ n, P9103497129211433194.a n = A159347 n

end A159347

/-! ## A159347.P12378909876842805533

`A159336(n)-Δ[A034943(n+1)]`
-/

namespace A159347.P12378909876842805533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159336 n - (f1 (n + 1) - f1 n)

end

end A159347.P12378909876842805533

namespace A159347

/-- `A159336(n)-Δ[A034943(n+1)]` -/
def P12378909876842805533.Spec : Prop :=
  ∀ n, P12378909876842805533.a n = A159347 n

end A159347

/-! ## A159347.P6681119785741843207

`A034943(n)+A159336(n)-A052921(n)`
-/

namespace A159347.P6681119785741843207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 n + (A159336 n - A052921 n)

end

end A159347.P6681119785741843207

namespace A159347

/-- `A034943(n)+A159336(n)-A052921(n)` -/
def P6681119785741843207.Spec : Prop :=
  ∀ n, P6681119785741843207.a n = A159347 n

end A159347

/-! ## A159347.P10241933081206373149

`A159329(n)-A097550(n)`
-/

namespace A159347.P10241933081206373149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159329 n - A097550 n

end

end A159347.P10241933081206373149

namespace A159347

/-- `A159329(n)-A097550(n)` -/
def P10241933081206373149.Spec : Prop :=
  ∀ n, P10241933081206373149.a n = A159347 n

theorem P10241933081206373149.correct : P10241933081206373149.Spec := by
  intro n
  simp only [A159347, Nat.add_sub_cancel, A159347.P10241933081206373149.a, A159347.P5324079294090841476.a, A097550, A097550.P2845546144587948553.a, A159329, A159329.P3710613267588612533.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A159347

/-! ## A159347.P193463278031807916

`A159340(n)-A181984(n)`
-/

namespace A159347.P193463278031807916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159340 n - A181984 n

end

end A159347.P193463278031807916

namespace A159347

/-- `A159340(n)-A181984(n)` -/
def P193463278031807916.Spec : Prop :=
  ∀ n, P193463278031807916.a n = A159347 n

end A159347

/-! ## A159347.P16622135986625594290

`A159340(n)-A034943(n+2)`
-/

namespace A159347.P16622135986625594290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159340 n - A034943 (n + 2)

end

end A159347.P16622135986625594290

namespace A159347

/-- `A159340(n)-A034943(n+2)` -/
def P16622135986625594290.Spec : Prop :=
  ∀ n, P16622135986625594290.a n = A159347 n

end A159347

/-! ## A159347.P7925972657995702387

`A034943(n+3)-A159348(n+2)`
-/

namespace A159347.P7925972657995702387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 (n + 3) - A159348 (n + 2)

end

end A159347.P7925972657995702387

namespace A159347

/-- `A034943(n+3)-A159348(n+2)` -/
def P7925972657995702387.Spec : Prop :=
  ∀ n, P7925972657995702387.a n = A159347 n

end A159347

/-! ## A159347.P6474175879214309456

`A034943(n+1)+A159329(n)-A159328(n)`
-/

namespace A159347.P6474175879214309456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 (n + 1) + (A159329 n - A159328 n)

end

end A159347.P6474175879214309456

namespace A159347

/-- `A034943(n+1)+A159329(n)-A159328(n)` -/
def P6474175879214309456.Spec : Prop :=
  ∀ n, P6474175879214309456.a n = A159347 n

end A159347

/-! ## A159347.P13648170962758848025

`A181984(n+2)-A159337(n+2)`
-/

namespace A159347.P13648170962758848025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 (n + 2) - A159337 (n + 2)

end

end A159347.P13648170962758848025

namespace A159347

/-- `A181984(n+2)-A159337(n+2)` -/
def P13648170962758848025.Spec : Prop :=
  ∀ n, P13648170962758848025.a n = A159347 n

end A159347

/-! ## A159347.P5553553232128150990

`A136302(n+1)+A159340(n)-A136305(n)`
-/

namespace A159347.P5553553232128150990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136302 (n + 1) + (A159340 n - A136305 n)

end

end A159347.P5553553232128150990

namespace A159347

/-- `A136302(n+1)+A159340(n)-A136305(n)` -/
def P5553553232128150990.Spec : Prop :=
  ∀ n, P5553553232128150990.a n = A159347 n

end A159347

/-! ## A159347.P10956223082413319255

`A095263(n+2)+A159336(n)-A097550(n+1)`
-/

namespace A159347.P10956223082413319255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095263 (n + 2) + (A159336 n - A097550 (n + 1))

end

end A159347.P10956223082413319255

namespace A159347

/-- `A095263(n+2)+A159336(n)-A097550(n+1)` -/
def P10956223082413319255.Spec : Prop :=
  ∀ n, P10956223082413319255.a n = A159347 n

end A159347

/-! ## A159347.P15568613944319682586

`A159328(n+2)-A159330(n+2)`
-/

namespace A159347.P15568613944319682586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159328 (n + 2) - A159330 (n + 2)

end

end A159347.P15568613944319682586

namespace A159347

/-- `A159328(n+2)-A159330(n+2)` -/
def P15568613944319682586.Spec : Prop :=
  ∀ n, P15568613944319682586.a n = A159347 n

end A159347

/-! ## A159347.P10621585727784966854

`A135364(n+3)-A159341(n+2)`
-/

namespace A159347.P10621585727784966854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135364 (n + 3) - A159341 (n + 2)

end

end A159347.P10621585727784966854

namespace A159347

/-- `A135364(n+3)-A159341(n+2)` -/
def P10621585727784966854.Spec : Prop :=
  ∀ n, P10621585727784966854.a n = A159347 n

end A159347

/-!
# A159348: Transform of the finite sequence (1, 0, -1, 0, 1) by the T_{0,0} transform (see link).

The programs for A159348, the canonical program `A159348.P12820908986681061517` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159348 has offset 0).

The definition of A159348 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159348.P12820908986681061517

`3*a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4, a(4)=11, a(5)=24, a(6)=55`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159348

/-- `3*a(n-1)-2*a(n-2)+a(n-3)` -/
def P12820908986681061517.Spec : Prop :=
  ∀ n, P12820908986681061517.a n = A159348 n

theorem P12820908986681061517.correct : P12820908986681061517.Spec := by
  intro n
  simp only [A159348]

end A159348

/-! ## A159348.P18203324999673926115

`A159330(n)-A097550(n)`
-/

namespace A159348.P18203324999673926115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159330 n - A097550 n

end

end A159348.P18203324999673926115

namespace A159348

/-- `A159330(n)-A097550(n)` -/
def P18203324999673926115.Spec : Prop :=
  ∀ n, P18203324999673926115.a n = A159348 n

end A159348

/-! ## A159348.P15976858420049881677

`A159341(n)-A181984(n)`
-/

namespace A159348.P15976858420049881677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159341 n - A181984 n

end

end A159348.P15976858420049881677

namespace A159348

/-- `A159341(n)-A181984(n)` -/
def P15976858420049881677.Spec : Prop :=
  ∀ n, P15976858420049881677.a n = A159348 n

end A159348

/-! ## A159348.P4441764735128654246

`A159341(n)-A034943(n+2)`
-/

namespace A159348.P4441764735128654246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159341 n - A034943 (n + 2)

end

end A159348.P4441764735128654246

namespace A159348

/-- `A159341(n)-A034943(n+2)` -/
def P4441764735128654246.Spec : Prop :=
  ∀ n, P4441764735128654246.a n = A159348 n

end A159348

/-! ## A159348.P856139358968477680

`A034943(n+1)+A159330(n)-A159328(n)`
-/

namespace A159348.P856139358968477680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 (n + 1) + (A159330 n - A159328 n)

end

end A159348.P856139358968477680

namespace A159348

/-- `A034943(n+1)+A159330(n)-A159328(n)` -/
def P856139358968477680.Spec : Prop :=
  ∀ n, P856139358968477680.a n = A159348 n

end A159348

/-! ## A159348.P3874012043524576223

`A181984(n+2)-A159338(n+2)`
-/

namespace A159348.P3874012043524576223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 (n + 2) - A159338 (n + 2)

end

end A159348.P3874012043524576223

namespace A159348

/-- `A181984(n+2)-A159338(n+2)` -/
def P3874012043524576223.Spec : Prop :=
  ∀ n, P3874012043524576223.a n = A159348 n

end A159348

/-!
# A159349: Transform of the finite sequence (1, 0, -1, 0, 1, 0, -1) by the T_{0,0} transformation (see link).

The programs for A159349, the canonical program `A159349.P16127559482196554441` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159349 has offset 0).

The definition of A159349 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159349.P16127559482196554441

`3*a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4, a(4)=11, a(5)=24, a(6)=56, a(7)=129, a(8)=300`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159349

/-- `3*a(n-1)-2*a(n-2)+a(n-3)` -/
def P16127559482196554441.Spec : Prop :=
  ∀ n, P16127559482196554441.a n = A159349 n

theorem P16127559482196554441.correct : P16127559482196554441.Spec := by
  intro n
  simp only [A159349]

end A159349

/-! ## A159349.P6361420645013375407

`A159331(n)-A097550(n)`
-/

namespace A159349.P6361420645013375407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159331 n - A097550 n

end

end A159349.P6361420645013375407

namespace A159349

/-- `A159331(n)-A097550(n)` -/
def P6361420645013375407.Spec : Prop :=
  ∀ n, P6361420645013375407.a n = A159349 n

theorem P6361420645013375407.correct : P6361420645013375407.Spec := by
  intro n
  simp only [A159349, Nat.add_sub_cancel, A159349.P6361420645013375407.a, A159349.P16127559482196554441.a, A097550, A097550.P2845546144587948553.a, A159331, A159331.P2025219793887168336.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A159349

/-! ## A159349.P6233890620070399597

`A159342(n)-A181984(n)`
-/

namespace A159349.P6233890620070399597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159342 n - A181984 n

end

end A159349.P6233890620070399597

namespace A159349

/-- `A159342(n)-A181984(n)` -/
def P6233890620070399597.Spec : Prop :=
  ∀ n, P6233890620070399597.a n = A159349 n

theorem P6233890620070399597.correct : P6233890620070399597.Spec := by
  intro n
  simp only [A159349, Nat.add_sub_cancel, A159349.P6233890620070399597.a, A159349.P16127559482196554441.a, A159342, A159342.P4932538038691876782.a, A181984, A181984.P13479675070080437777.a, A034943, A034943.P7979161656748620110.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A159349

/-! ## A159349.P9031396183368737135

`A159342(n)-A034943(n+2)`
-/

namespace A159349.P9031396183368737135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159342 n - A034943 (n + 2)

end

end A159349.P9031396183368737135

namespace A159349

/-- `A159342(n)-A034943(n+2)` -/
def P9031396183368737135.Spec : Prop :=
  ∀ n, P9031396183368737135.a n = A159349 n

theorem P9031396183368737135.correct : P9031396183368737135.Spec := by
  intro n
  simp only [A159349, Nat.add_sub_cancel, A159349.P9031396183368737135.a, A159349.P16127559482196554441.a, A034943, A034943.P7979161656748620110.a, A159342, A159342.P4932538038691876782.a, A181984, A181984.P13479675070080437777.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A159349

/-! ## A159349.P13069133015848169000

`A159342(n)-A134816(A016789(n))`
-/

namespace A159349.P13069133015848169000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159342 n - A134816 (A016789 n).toNat

end

end A159349.P13069133015848169000

namespace A159349

/-- `A159342(n)-A134816(A016789(n))` -/
def P13069133015848169000.Spec : Prop :=
  ∀ n, P13069133015848169000.a n = A159349 n

end A159349

/-! ## A159349.P6409807093185809460

`A034943(n+1)+A159331(n)-A159328(n)`
-/

namespace A159349.P6409807093185809460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 (n + 1) + (A159331 n - A159328 n)

end

end A159349.P6409807093185809460

namespace A159349

/-- `A034943(n+1)+A159331(n)-A159328(n)` -/
def P6409807093185809460.Spec : Prop :=
  ∀ n, P6409807093185809460.a n = A159349 n

end A159349

/-! ## A159349.P758854489594524750

`A159331(n)-Δ[A034943(n+1)]-A181984(n)`
-/

namespace A159349.P758854489594524750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159331 n - (f1 (n + 1) - f1 n) - A181984 n

end

end A159349.P758854489594524750

namespace A159349

/-- `A159331(n)-Δ[A034943(n+1)]-A181984(n)` -/
def P758854489594524750.Spec : Prop :=
  ∀ n, P758854489594524750.a n = A159349 n

end A159349

/-! ## A159349.P12892733816335278286

`A159331(n)-A182097(A016777(n))-A181984(n)`
-/

namespace A159349.P12892733816335278286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159331 n - A182097 (A016777 n).toNat - A181984 n

end

end A159349.P12892733816335278286

namespace A159349

/-- `A159331(n)-A182097(A016777(n))-A181984(n)` -/
def P12892733816335278286.Spec : Prop :=
  ∀ n, P12892733816335278286.a n = A159349 n

end A159349

/-! ## A159349.P253754205338280734

`A034943(n)+A159331(n)-A052921(n)-A181984(n)`
-/

namespace A159349.P253754205338280734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 n + (A159331 n - A052921 n) - A181984 n

end

end A159349.P253754205338280734

namespace A159349

/-- `A034943(n)+A159331(n)-A052921(n)-A181984(n)` -/
def P253754205338280734.Spec : Prop :=
  ∀ n, P253754205338280734.a n = A159349 n

end A159349

/-!
# A159350: Transform of A056594 by the T_{0,0} transformation (see link).

The programs for A159350, the canonical program `A159350.P8992939901403246150` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159350 has offset 0).

The definition of A159350 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159350.P8992939901403246150

`3*a(n-1)-3*a(n-2)+4*a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4, a(4)=11`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159350

/-- `3*a(n-1)-3*a(n-2)+4*a(n-3)-2*a(n-4)+a(n-5)` -/
def P8992939901403246150.Spec : Prop :=
  ∀ n, P8992939901403246150.a n = A159350 n

theorem P8992939901403246150.correct : P8992939901403246150.Spec := by
  intro n
  simp only [A159350]

end A159350

/-! ## A159350.P8013292901270709621

`A159334(n)-A097550(n)`
-/

namespace A159350.P8013292901270709621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159334 n - A097550 n

end

end A159350.P8013292901270709621

namespace A159350

/-- `A159334(n)-A097550(n)` -/
def P8013292901270709621.Spec : Prop :=
  ∀ n, P8013292901270709621.a n = A159350 n

theorem P8013292901270709621.correct : P8013292901270709621.Spec := by
  intro n
  simp only [A159350, Nat.add_sub_cancel, A159350.P8013292901270709621.a, A159350.P8992939901403246150.a, A097550, A097550.P2845546144587948553.a, A159334, A159334.P11728449618279607625.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A159350

/-! ## A159350.P14658061938681185741

`A159343(n)-A181984(n)`
-/

namespace A159350.P14658061938681185741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159343 n - A181984 n

end

end A159350.P14658061938681185741

namespace A159350

/-- `A159343(n)-A181984(n)` -/
def P14658061938681185741.Spec : Prop :=
  ∀ n, P14658061938681185741.a n = A159350 n

end A159350

/-! ## A159350.P12560105905827510096

`A159339(n)-Δ[Δ[A329244(n)]]`
-/

namespace A159350.P12560105905827510096
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329244 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159339 n - (f1 (n + 1) - f1 n)

end

end A159350.P12560105905827510096

namespace A159350

/-- `A159339(n)-Δ[Δ[A329244(n)]]` -/
def P12560105905827510096.Spec : Prop :=
  ∀ n, P12560105905827510096.a n = A159350 n

end A159350

/-! ## A159350.P17129983551233095228

`A052921(n)+A159339(n)-A095263(n+1)`
-/

namespace A159350.P17129983551233095228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 n + (A159339 n - A095263 (n + 1))

end

end A159350.P17129983551233095228

namespace A159350

/-- `A052921(n)+A159339(n)-A095263(n+1)` -/
def P17129983551233095228.Spec : Prop :=
  ∀ n, P17129983551233095228.a n = A159350 n

end A159350

/-! ## A159350.P10687381242768752858

`A034943(n+1)+A159334(n)-A159328(n)`
-/

namespace A159350.P10687381242768752858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 (n + 1) + (A159334 n - A159328 n)

end

end A159350.P10687381242768752858

namespace A159350

/-- `A034943(n+1)+A159334(n)-A159328(n)` -/
def P10687381242768752858.Spec : Prop :=
  ∀ n, P10687381242768752858.a n = A159350 n

end A159350

/-! ## A159350.P91182713575241955

`A181984(n+2)-A159339(n+2)`
-/

namespace A159350.P91182713575241955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 (n + 2) - A159339 (n + 2)

end

end A159350.P91182713575241955

namespace A159350

/-- `A181984(n+2)-A159339(n+2)` -/
def P91182713575241955.Spec : Prop :=
  ∀ n, P91182713575241955.a n = A159350 n

end A159350

/-! ## A159350.P9869202976470584197

`A159328(n+2)-A159334(n+2)`
-/

namespace A159350.P9869202976470584197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159328 (n + 2) - A159334 (n + 2)

end

end A159350.P9869202976470584197

namespace A159350

/-- `A159328(n+2)-A159334(n+2)` -/
def P9869202976470584197.Spec : Prop :=
  ∀ n, P9869202976470584197.a n = A159350 n

end A159350

/-!
# A159351: Smallest prime of the form a^2 + b^2 with 0 < a < b such that a + b = 2n+1.

The programs for A159351, there is no canonical definition to state claims against.
-/

/-! ## A159351.P2775683066692424206

`p?[A281229(n+3)]`
-/

namespace A159351.P2775683066692424206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281229 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A159351.P2775683066692424206

/-! ## A159351.P17583073957539976733

`A281229(2*n+3)`
-/

namespace A159351.P17583073957539976733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281229 (2 * n + 3)

end

end A159351.P17583073957539976733

/-! ## A159351.P13951541320766342862

`p?[A014963(A281229(Δ[n²]))]`
-/

namespace A159351.P13951541320766342862
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A281229 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A159351.P13951541320766342862

/-! ## A159351.P3359072231283402980

`A033677(A281229(n+3+n))`
-/

namespace A159351.P3359072231283402980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A281229 (n + 3 + n)).toNat

end

end A159351.P3359072231283402980

/-!
# A159352: Primes of the form "1 [0]_n 3" - with zeros between 1 and 3.

The programs for A159352, there is no canonical definition to state claims against.
-/

/-! ## A159352.P3001780165886807545

`A216179(A049054(n+1))`
-/

namespace A159352.P3001780165886807545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216179 (A049054 (n + 1)).toNat

end

end A159352.P3001780165886807545

/-! ## A159352.P10779735660318555571

`∩[A116106(n+1), A073914(n)]`
-/

namespace A159352.P10779735660318555571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073914 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159352.P10779735660318555571

/-! ## A159352.P18106534459092520270

`∩[A062339(n+1), A088265(n+1)]`
-/

namespace A159352.P18106534459092520270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159352.P18106534459092520270

/-!
# A159353: a(n) = the smallest positive integer such that a(n)*(2^n - 2) is a multiple of n.

The programs for A159353, the canonical program `A159353.P2127071173178032878` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159353 has offset 1).

The definition of A159353 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159353.P2127071173178032878

`ceil(A244149(n+1)/2)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A159353

/-- `ceil(A244149(n+1)/2)` -/
def P2127071173178032878.Spec : Prop :=
  ∀ n, P2127071173178032878.a n = A159353 (n + 1)

theorem P2127071173178032878.correct : P2127071173178032878.Spec := by
  intro n
  simp only [A159353, Nat.add_sub_cancel]

end A159353

/-! ## A159353.P8698215727120012093

`(n+1)/A214606(n+1)`
-/

namespace A159353.P8698215727120012093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A214606 (n + 1) : ℚ)

end

end A159353.P8698215727120012093

namespace A159353

/-- `(n+1)/A214606(n+1)` -/
def P8698215727120012093.Spec : Prop :=
  ∀ n, P8698215727120012093.a n = (A159353 (n + 1) : ℚ)

end A159353

/-! ## A159353.P10286433207181805915

`tan(acot(A214606(n+1)))*A000027(n+1)`
-/

namespace A159353.P10286433207181805915
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (SequenceMachineLib.acot (A214606 (n + 1) : ℝ)) * (A000027 (n + 1) : ℝ)

end

end A159353.P10286433207181805915

namespace A159353

/-- `tan(acot(A214606(n+1)))*A000027(n+1)` -/
def P10286433207181805915.Spec : Prop :=
  ∀ n, P10286433207181805915.a n = (A159353 (n + 1) : ℝ)

end A159353

/-! ## A159353.P11117866338567912999

`A000463(A244149(n+1))`
-/

namespace A159353.P11117866338567912999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A244149 (n + 1)).toNat

end

end A159353.P11117866338567912999

namespace A159353

/-- `A000463(A244149(n+1))` -/
def P11117866338567912999.Spec : Prop :=
  ∀ n, P11117866338567912999.a n = A159353 (n + 1)

end A159353

/-! ## A159353.P9783933883733274621

`(n+1)/gcd(n+1, 1-∑[2^n])`
-/

namespace A159353.P9783933883733274621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) : ℚ)

end

end A159353.P9783933883733274621

namespace A159353

/-- `(n+1)/gcd(n+1, 1-∑[2^n])` -/
def P9783933883733274621.Spec : Prop :=
  ∀ n, P9783933883733274621.a n = (A159353 (n + 1) : ℚ)

end A159353

/-! ## A159353.P6925938918530862369

`lcm(n+1, A083706(n))/A083706(n)`
-/

namespace A159353.P6925938918530862369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A083706 n) : ℚ) / (A083706 n : ℚ)

end

end A159353.P6925938918530862369

namespace A159353

/-- `lcm(n+1, A083706(n))/A083706(n)` -/
def P6925938918530862369.Spec : Prop :=
  ∀ n, P6925938918530862369.a n = (A159353 (n + 1) : ℚ)

end A159353

/-! ## A159353.P12227258073529647299

`tan(acot(A214606(n+1)))*A269391(A269392(n+1))`
-/

namespace A159353.P12227258073529647299
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (SequenceMachineLib.acot (A214606 (n + 1) : ℝ)) * (A269391 (A269392 (n + 1)).toNat : ℝ)

end

end A159353.P12227258073529647299

namespace A159353

/-- `tan(acot(A214606(n+1)))*A269391(A269392(n+1))` -/
def P12227258073529647299.Spec : Prop :=
  ∀ n, P12227258073529647299.a n = (A159353 (n + 1) : ℝ)

end A159353

/-! ## A159353.P18215461112516978936

`A051537(A214606(n+1)+∑[n])`
-/

namespace A159353.P18215461112516978936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A214606 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A159353.P18215461112516978936

namespace A159353

/-- `A051537(A214606(n+1)+∑[n])` -/
def P18215461112516978936.Spec : Prop :=
  ∀ n, P18215461112516978936.a n = A159353 (n + 1)

end A159353

/-! ## A159353.P2393268402523341861

`A010766(A214606(n+1)+A000217(n))`
-/

namespace A159353.P2393268402523341861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A214606 (n + 1) + A000217 n).toNat

end

end A159353.P2393268402523341861

namespace A159353

/-- `A010766(A214606(n+1)+A000217(n))` -/
def P2393268402523341861.Spec : Prop :=
  ∀ n, P2393268402523341861.a n = A159353 (n + 1)

end A159353

/-! ## A159353.P227780383024273877

`A054531(A214606(n+1)+A000217(n))`
-/

namespace A159353.P227780383024273877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A214606 (n + 1) + A000217 n).toNat

end

end A159353.P227780383024273877

namespace A159353

/-- `A054531(A214606(n+1)+A000217(n))` -/
def P227780383024273877.Spec : Prop :=
  ∀ n, P227780383024273877.a n = A159353 (n + 1)

end A159353

/-! ## A159353.P8485310088918768321

`A126988(A214606(n+1)+A000217(n))`
-/

namespace A159353.P8485310088918768321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A214606 (n + 1) + A000217 n).toNat

end

end A159353.P8485310088918768321

namespace A159353

/-- `A126988(A214606(n+1)+A000217(n))` -/
def P8485310088918768321.Spec : Prop :=
  ∀ n, P8485310088918768321.a n = A159353 (n + 1)

end A159353

/-!
# A159355: Number of n X n arrays of squares of integers summing to 4.

The programs for A159355, the canonical program `A159355.P13745875119866861617` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159355 has offset 2).

The definition of A159355 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159355.P16005117182100368689

`C((n+2)², 4)+(n+2)²`
-/

namespace A159355.P16005117182100368689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 2) ^ 2) 4 + (n + 2) ^ 2

end

end A159355.P16005117182100368689

namespace A159355

/-- `C((n+2)², 4)+(n+2)²` -/
def P16005117182100368689.Spec : Prop :=
  ∀ n, (P16005117182100368689.a n : ℤ) = A159355 (n + 2)

end A159355

/-! ## A159355.P13745875119866861617

`A014626((n+2)²)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A159355

/-- `A014626((n+2)²)` -/
def P13745875119866861617.Spec : Prop :=
  ∀ n, P13745875119866861617.a n = A159355 (n + 2)

theorem P13745875119866861617.correct : P13745875119866861617.Spec := by
  intro n
  simp only [A159355, Nat.add_sub_cancel]

end A159355

/-! ## A159355.P4615660636849598740

`(n+2)²*((n+2)²+1)*((n+2)^4-7*(n+2)²+18)/24`
-/

namespace A159355.P4615660636849598740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℚ) * (((n + 2) ^ 2 + 1 : ℚ) * ((((n + 2) ^ 4 : ℤ) - (7 * (n + 2) ^ 2 : ℤ) + 18 : ℚ) / 24))

end

end A159355.P4615660636849598740

namespace A159355

/-- `(n+2)²*((n+2)²+1)*((n+2)^4-7*(n+2)²+18)/24` -/
def P4615660636849598740.Spec : Prop :=
  ∀ n, P4615660636849598740.a n = (A159355 (n + 2) : ℚ)

end A159355

/-! ## A159355.P13987439097583829581

`A189345(n+2)+(n+2)²`
-/

namespace A159355.P13987439097583829581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189345 (n + 2) + ((n + 2) ^ 2 : ℤ)

end

end A159355.P13987439097583829581

namespace A159355

/-- `A189345(n+2)+(n+2)²` -/
def P13987439097583829581.Spec : Prop :=
  ∀ n, P13987439097583829581.a n = A159355 (n + 2)

end A159355

/-! ## A159355.P162589523678081424

`A000290(n+2)+C(A000290(n+2), 4)`
-/

namespace A159355.P162589523678081424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 2) + (Nat.choose (A000290 (n + 2)).toNat 4 : ℤ)

end

end A159355.P162589523678081424

namespace A159355

/-- `A000290(n+2)+C(A000290(n+2), 4)` -/
def P162589523678081424.Spec : Prop :=
  ∀ n, P162589523678081424.a n = A159355 (n + 2)

end A159355

/-! ## A159355.P13645713541245303896

`A002620(2*(n+2))+C(A002620(2*(n+2)), 4)`
-/

namespace A159355.P13645713541245303896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * (n + 2)) + (Nat.choose (A002620 (2 * (n + 2))).toNat 4 : ℤ)

end

end A159355.P13645713541245303896

namespace A159355

/-- `A002620(2*(n+2))+C(A002620(2*(n+2)), 4)` -/
def P13645713541245303896.Spec : Prop :=
  ∀ n, P13645713541245303896.a n = A159355 (n + 2)

end A159355

/-! ## A159355.P14642440583262508236

`record[A014626((2-n)²)]`
-/

namespace A159355.P14642440583262508236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014626 ((2 - (n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159355.P14642440583262508236

namespace A159355

/-- `record[A014626((2-n)²)]` -/
def P14642440583262508236.Spec : Prop :=
  ∀ n, P14642440583262508236.a n = A159355 (n + 2)

end A159355

/-! ## A159355.P15794606485063407708

`A051743(A028872(n+2))+3`
-/

namespace A159355.P15794606485063407708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051743 (A028872 (n + 2)).toNat + 3

end

end A159355.P15794606485063407708

namespace A159355

/-- `A051743(A028872(n+2))+3` -/
def P15794606485063407708.Spec : Prop :=
  ∀ n, P15794606485063407708.a n = A159355 (n + 2)

end A159355

/-! ## A159355.P16065953631272575733

`A000332((n+2)²)+(n+2)²`
-/

namespace A159355.P16065953631272575733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 ((n + 2) ^ 2) + ((n + 2) ^ 2 : ℤ)

end

end A159355.P16065953631272575733

namespace A159355

/-- `A000332((n+2)²)+(n+2)²` -/
def P16065953631272575733.Spec : Prop :=
  ∀ n, P16065953631272575733.a n = A159355 (n + 2)

end A159355

/-!
# A159359: Number of n X n arrays of squares of integers summing to 5.

The programs for A159359, the canonical program `A159359.P12270773126886665978` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159359 has offset 2).

The definition of A159359 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159359.P12270773126886665978

`(n+2)²*((n+2)²-1)+C((n+2)², 5)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159359

/-- `(n+2)²*((n+2)²-1)+C((n+2)², 5)` -/
def P12270773126886665978.Spec : Prop :=
  ∀ n, P12270773126886665978.a n = A159359 (n + 2)

theorem P12270773126886665978.correct : P12270773126886665978.Spec := by
  intro n
  simp only [A159359, Nat.add_sub_cancel]

end A159359

/-! ## A159359.P10474013570582850618

`(n+2)²*((n+2)²-1)*((n+2)²+2)*((n+2)^4-11*(n+2)²+48)/120`
-/

namespace A159359.P10474013570582850618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ 2 : ℤ) * (((n + 2) ^ 2 : ℤ) - 1) * ((n + 2) ^ 2 + 2 : ℤ) * (((n + 2) ^ 4 : ℤ) - (11 * (n + 2) ^ 2 : ℤ) + 48) : ℚ) / 120

end

end A159359.P10474013570582850618

namespace A159359

/-- `(n+2)²*((n+2)²-1)*((n+2)²+2)*((n+2)^4-11*(n+2)²+48)/120` -/
def P10474013570582850618.Spec : Prop :=
  ∀ n, P10474013570582850618.a n = (A159359 (n + 2) : ℚ)

theorem P10474013570582850618.correct : P10474013570582850618.Spec := by
  intro n
  simp only [A159359, Nat.add_sub_cancel, A159359.P10474013570582850618.a, A159359.P12270773126886665978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A159359

/-!
# A159363: Number of n X n arrays of squares of integers summing to 6.

The programs for A159363, the canonical program `A159363.P292750350967785171` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159363 has offset 2).

The definition of A159363 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159363.P292750350967785171

`(n+2)²*C((n+2)²-1, 2)+C((n+2)², 6)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159363

/-- `(n+2)²*C((n+2)²-1, 2)+C((n+2)², 6)` -/
def P292750350967785171.Spec : Prop :=
  ∀ n, (P292750350967785171.a n : ℤ) = A159363 (n + 2)

theorem P292750350967785171.correct : P292750350967785171.Spec := by
  intro n
  simp only [A159363, Nat.add_sub_cancel]

end A159363

