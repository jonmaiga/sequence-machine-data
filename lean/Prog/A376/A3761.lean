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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C044
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B003.C006
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
# A376100: Expansion of e.g.f. -LambertW(-x / (1 - 2*x)).

The programs for A376100, there is no canonical definition to state claims against.
-/

/-! ## A376100.P13103588206445020689

`n*A051889(n^(n+1))`
-/

namespace A376100.P13103588206445020689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A051889 (n ^ (n + 1))

end

end A376100.P13103588206445020689

/-!
# A376101: Expansion of e.g.f. -LambertW(-x / (1 - 3*x)).

The programs for A376101, there is no canonical definition to state claims against.
-/

/-! ## A376101.P1692160795803219146

`n*A093848(A001833(n))`
-/

namespace A376101.P1692160795803219146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A093848 (A001833 n).toNat

end

end A376101.P1692160795803219146

/-!
# A376102: Array read by ascending antidiagonals: A(n,k) = k*2^(n+1) + 1.

The programs for A376102, the canonical program `A376102.P17624402572150807187` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376102 has offset 0).

The definition of A376102 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A376102.P17624402572150807187

`col(n)*2^(row(n)-col(n)+1)+1`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A376102

/-- `col(n)*2^(row(n)-col(n)+1)+1` -/
def P17624402572150807187.Spec : Prop :=
  ∀ n, P17624402572150807187.a n = (A376102 n : ℚ)

end A376102

/-! ## A376102.P7934808550246650049

`1+col(n)*2^(row(n)-col(n)+1)`
-/

namespace A376102.P7934808550246650049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + (SequenceMachineLib.triCol n : ℚ) * (2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 : ℤ)

end

end A376102.P7934808550246650049

namespace A376102

/-- `1+col(n)*2^(row(n)-col(n)+1)` -/
def P7934808550246650049.Spec : Prop :=
  ∀ n, P7934808550246650049.a n = (A376102 n : ℚ)

end A376102

/-! ## A376102.P5296559543741715473

`A288870(n)-A130321(n)`
-/

namespace A376102.P5296559543741715473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288870 n - A130321 n

end

end A376102.P5296559543741715473

namespace A376102

/-- `A288870(n)-A130321(n)` -/
def P5296559543741715473.Spec : Prop :=
  ∀ n, P5296559543741715473.a n = A376102 n

end A376102

/-! ## A376102.P4282865106765194781

`A054582(n)+1-A130321(n)`
-/

namespace A376102.P4282865106765194781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 n + (1 - A130321 n)

end

end A376102.P4282865106765194781

namespace A376102

/-- `A054582(n)+1-A130321(n)` -/
def P4282865106765194781.Spec : Prop :=
  ∀ n, P4282865106765194781.a n = A376102 n

end A376102

/-! ## A376102.P15137999051176263609

`and(A054582(n), A089633(n))+1`
-/

namespace A376102.P15137999051176263609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054582 n) (A089633 n) + 1

end

end A376102.P15137999051176263609

namespace A376102

/-- `and(A054582(n), A089633(n))+1` -/
def P15137999051176263609.Spec : Prop :=
  ∀ n, P15137999051176263609.a n = A376102 n

end A376102

/-! ## A376102.P4689694689371392940

`A002262(n)*A090988(n+1)+1`
-/

namespace A376102.P4689694689371392940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A090988 (n + 1) + 1

end

end A376102.P4689694689371392940

namespace A376102

/-- `A002262(n)*A090988(n+1)+1` -/
def P4689694689371392940.Spec : Prop :=
  ∀ n, P4689694689371392940.a n = A376102 n

end A376102

/-! ## A376102.P10344504651070459795

`2*2^A025581(n)*A002262(n)+1`
-/

namespace A376102.P10344504651070459795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((2 : ℚ) ^ (A025581 n : ℤ) * (A002262 n : ℚ)) + 1

end

end A376102.P10344504651070459795

namespace A376102

/-- `2*2^A025581(n)*A002262(n)+1` -/
def P10344504651070459795.Spec : Prop :=
  ∀ n, P10344504651070459795.a n = (A376102 n : ℚ)

end A376102

/-! ## A376102.P10937101473465798886

`A129760(A054582(n))+1`
-/

namespace A376102.P10937101473465798886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A054582 n).toNat + 1

end

end A376102.P10937101473465798886

namespace A376102

/-- `A129760(A054582(n))+1` -/
def P10937101473465798886.Spec : Prop :=
  ∀ n, P10937101473465798886.a n = A376102 n

end A376102

/-! ## A376102.P4197174192021147173

`A054582(n)-A004524(A130330(n))`
-/

namespace A376102.P4197174192021147173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 n - A004524 (A130330 n).toNat

end

end A376102.P4197174192021147173

namespace A376102

/-- `A054582(n)-A004524(A130330(n))` -/
def P4197174192021147173.Spec : Prop :=
  ∀ n, P4197174192021147173.a n = A376102 n

end A376102

/-! ## A376102.P10177304185445026509

`A303548(A224195(n+1))+A002262(n)`
-/

namespace A376102.P10177304185445026509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303548 (A224195 (n + 1)).toNat + A002262 n

end

end A376102.P10177304185445026509

namespace A376102

/-- `A303548(A224195(n+1))+A002262(n)` -/
def P10177304185445026509.Spec : Prop :=
  ∀ n, P10177304185445026509.a n = A376102 n

end A376102

/-!
# A376104: Expansion of e.g.f. -LambertW(-2*x / (1 + x))/2.

The programs for A376104, there is no canonical definition to state claims against.
-/

/-! ## A376104.P7560740587075303820

`A062790(∑[ceil(2^∑[n]/2)])`
-/

namespace A376104.P7560740587075303820
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 ^ (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062790 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A376104.P7560740587075303820

/-!
# A376105: Expansion of e.g.f. -LambertW(-3*x / (1 + x))/3.

The programs for A376105, there is no canonical definition to state claims against.
-/

/-! ## A376105.P3019818477841017763

`A361214(n)%A361194(n)`
-/

namespace A376105.P3019818477841017763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361214 n) (A361194 n)

end

end A376105.P3019818477841017763

/-!
# A376106: Expansion of e.g.f. LambertW(x / (1 - 2*x)).

The programs for A376106, there is no canonical definition to state claims against.
-/

/-! ## A376106.P8030304395211935178

`n*A277061(A003319(n))`
-/

namespace A376106.P8030304395211935178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A277061 (A003319 n).toNat

end

end A376106.P8030304395211935178

/-! ## A376106.P2441706159346248973

`n*A339400(A001710(n))`
-/

namespace A376106.P2441706159346248973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A339400 (A001710 n).toNat

end

end A376106.P2441706159346248973

/-!
# A376107: Expansion of e.g.f. LambertW(x / (1 - 3*x)).

The programs for A376107, there is no canonical definition to state claims against.
-/

/-! ## A376107.P13289182153389481678

`n*A326774(n!)`
-/

namespace A376107.P13289182153389481678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A326774 (Nat.factorial n)

end

end A376107.P13289182153389481678

/-!
# A376108: Non-Leonardo numbers.

The programs for A376108, there is no canonical definition to state claims against.
-/

/-! ## A376108.P7847697691512684908

`comp[ceil(ϕ*a(n-1))]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A376108.P7847697691512684908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  ⌈Real.goldenRatio * (f1 (n - 1) : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A376108.P7847697691512684908

/-! ## A376108.P18286616666155378227

`comp[or(1, round(ϕ*a(n-1)))]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A376108.P18286616666155378227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  Int.lor 1 (SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A376108.P18286616666155378227

/-! ## A376108.P1580784864993384417

`comp[round(ϕ*a(n-1))]-1` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A376108.P1580784864993384417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 4] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 1

end

end A376108.P1580784864993384417

/-! ## A376108.P939202657220122282

`comp[or(1, a(n-1)+a(n-2))]` with `a(0)=0, a(1)=0`
-/

namespace A376108.P939202657220122282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  Nat.lor 1 (f1 (n - 1) + f1 (n - 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A376108.P939202657220122282

/-! ## A376108.P17330247932630302046

`comp[a(n-1)+a(n-2)+1]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A376108.P17330247932630302046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A376108.P17330247932630302046

/-! ## A376108.P13162865555278569507

`comp[or(1, 2-(4/2-a(n-1)-a(n-2)))]` with `a(0)=1, a(1)=0`
-/

namespace A376108.P13162865555278569507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  Int.lor 1 (SequenceMachineLib.roundAway (2 - ((4 : ℚ) / 2 - (f1 (n - 1) : ℚ) - (f1 (n - 2) : ℚ))))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A376108.P13162865555278569507

/-! ## A376108.P15287733418645055023

`comp[A006355(n)-1]`
-/

namespace A376108.P15287733418645055023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A376108.P15287733418645055023

/-! ## A376108.P3930213688542639474

`comp[A055389(n)-1]`
-/

namespace A376108.P3930213688542639474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055389 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A376108.P3930213688542639474

/-! ## A376108.P15599564768066524571

`comp[A336662(n)-1]`
-/

namespace A376108.P15599564768066524571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336662 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A376108.P15599564768066524571

/-! ## A376108.P6227915218704951171

`comp[A163733(n+1)-1]`
-/

namespace A376108.P6227915218704951171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163733 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A376108.P6227915218704951171

/-!
# A376109: a(n) is the length of the longest arithmetic progression ending at n consisting of numbers with the same number of prime factors as n, counted with multiplicity.

The programs for A376109, there is no canonical definition to state claims against.
-/

/-! ## A376109.P3643066396508470404

`A179751(A061395(2*(n+1))%A325694(2*n+1))`
-/

namespace A376109.P3643066396508470404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179751 (Int.tmod (A061395 (2 * (n + 1))) (A325694 (2 * n + 1))).toNat

end

end A376109.P3643066396508470404

/-! ## A376109.P15515509699193088714

`∑{e}[A006530(A132314(n+1))+1, #]`
-/

namespace A376109.P15515509699193088714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A132314 (n + 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A376109.P15515509699193088714

/-! ## A376109.P10658611254328053299

`∑{e}[A006530(n+1)+1, #]%A162200(3*(n+1))`
-/

namespace A376109.P10658611254328053299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) (A162200 (3 * (n + 1)))

end

end A376109.P10658611254328053299

/-! ## A376109.P12553740089296503238

`A043537((n+1)/2^val(n+1, 2)*A373948(3*n+2))`
-/

namespace A376109.P12553740089296503238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) * (A373948 (3 * n + 2) : ℚ))).toNat

end

end A376109.P12553740089296503238

/-! ## A376109.P4273648109415144080

`A259143(A389775(n+1))`
-/

namespace A376109.P4273648109415144080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259143 (A389775 (n + 1)).toNat

end

end A376109.P4273648109415144080

/-!
# A376110: Number of permutations of {1,2,...,n} that are non-self-overlapping as Hertzsprung patterns; also called non-extendible.

The programs for A376110, there is no canonical definition to state claims against.
-/

/-! ## A376110.P18444551431317426836

`A139036(A150178(n))`
-/

namespace A376110.P18444551431317426836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139036 (A150178 n).toNat

end

end A376110.P18444551431317426836

/-! ## A376110.P6567085196972409856

`xor(1, A068307(A111533(n)))`
-/

namespace A376110.P6567085196972409856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A068307 (A111533 n).toNat)

end

end A376110.P6567085196972409856

/-!
# A376111: a(0) = 1; a(n) = Sum_{k=1..n} (2^k-1) * a(k-1) * a(n-k).

The programs for A376111, there is no canonical definition to state claims against.
-/

/-! ## A376111.P1721610849622245745

`A351595(∑[n²+1])`
-/

namespace A376111.P1721610849622245745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351595 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A376111.P1721610849622245745

/-!
# A376112: a(0) = 1; a(n) = (1/2) * Sum_{k=1..n} (3^k-1) * a(k-1) * a(n-k).

The programs for A376112, there is no canonical definition to state claims against.
-/

/-! ## A376112.P5843125819943857427

`A277680(A121677(n)²)`
-/

namespace A376112.P5843125819943857427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277680 (A121677 n ^ 2).toNat

end

end A376112.P5843125819943857427

/-!
# A376114: Refactorable numbers that are twice a square.

The programs for A376114, there is no canonical definition to state claims against.
-/

/-! ## A376114.P11473841330973342290

`A181795(n+1)/2`
-/

namespace A376114.P11473841330973342290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181795 (n + 1) : ℚ) / 2

end

end A376114.P11473841330973342290

/-! ## A376114.P11849333418507430141

`2*A181687(n+1)²`
-/

namespace A376114.P11849333418507430141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181687 (n + 1) ^ 2

end

end A376114.P11849333418507430141

/-! ## A376114.P12376004926805118310

`A001105(A181687(n+1))`
-/

namespace A376114.P12376004926805118310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (A181687 (n + 1)).toNat

end

end A376114.P12376004926805118310

/-! ## A376114.P2765910619504623367

`A000982(sqrt(A181795(n+1)))`
-/

namespace A376114.P2765910619504623367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (SequenceMachineLib.roundAway (Real.sqrt (A181795 (n + 1) : ℝ))).toNat

end

end A376114.P2765910619504623367

/-! ## A376114.P12175354933317435957

`∩[A033950(n+1), A001105(n)]`
-/

namespace A376114.P12175354933317435957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376114.P12175354933317435957

/-! ## A376114.P13858683500958063199

`∩[A057265(n+1), A000982(n)]`
-/

namespace A376114.P13858683500958063199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376114.P13858683500958063199

/-! ## A376114.P7861178434515000972

`∩[A057265(n+1), A001105(n)]`
-/

namespace A376114.P7861178434515000972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376114.P7861178434515000972

/-! ## A376114.P7444147119394387995

`∩[A057265(n+1), A213037(n)]`
-/

namespace A376114.P7444147119394387995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213037 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376114.P7444147119394387995

/-! ## A376114.P17279502041235153074

`∩[A057265(n+1), A247375(n)]`
-/

namespace A376114.P17279502041235153074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247375 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376114.P17279502041235153074

/-! ## A376114.P1514123600155536268

`∩[A028982(n+1), A057265(n+1)]`
-/

namespace A376114.P1514123600155536268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376114.P1514123600155536268

/-!
# A376116: Number of times the root fires in a chip-firing game starting with 2n chips placed at the root on an infinite binary tree with a loop at the root.

The programs for A376116, the canonical program `A376116.P15301336638265797168` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376116 has offset 1).

The definition of A376116 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A376116.P15301336638265797168

`2*(n+1)-A000120(n+1)-A070939(n+1)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A376116

/-- `2*(n+1)-A000120(n+1)-A070939(n+1)` -/
def P15301336638265797168.Spec : Prop :=
  ∀ n, P15301336638265797168.a n = A376116 (n + 1)

theorem P15301336638265797168.correct : P15301336638265797168.Spec := by
  intro n
  simp only [A376116, Nat.add_sub_cancel]

end A376116

/-! ## A376116.P16227653923895432177

`a(floor((n-1)/2))+n` with `a(0)=0`
-/

namespace A376116.P16227653923895432177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + n

end

end A376116.P16227653923895432177

namespace A376116

/-- `a(floor((n-1)/2))+n` -/
def P16227653923895432177.Spec : Prop :=
  ∀ n, (P16227653923895432177.a n : ℤ) = A376116 (n + 1)

end A376116

/-! ## A376116.P8536149478383010936

`∑[A091090(n)]-1`
-/

namespace A376116.P8536149478383010936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A376116.P8536149478383010936

namespace A376116

/-- `∑[A091090(n)]-1` -/
def P8536149478383010936.Spec : Prop :=
  ∀ n, P8536149478383010936.a n = A376116 (n + 1)

end A376116

/-! ## A376116.P16961037769011614920

`∑[log2(A135517(n))]+n`
-/

namespace A376116.P16961037769011614920
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A135517 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)

end

end A376116.P16961037769011614920

namespace A376116

/-- `∑[log2(A135517(n))]+n` -/
def P16961037769011614920.Spec : Prop :=
  ∀ n, P16961037769011614920.a n = (A376116 (n + 1) : ℝ)

end A376116

/-! ## A376116.P2212946324895410687

`2*n-A014701(n+1)`
-/

namespace A376116.P2212946324895410687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A014701 (n + 1)

end

end A376116.P2212946324895410687

namespace A376116

/-- `2*n-A014701(n+1)` -/
def P2212946324895410687.Spec : Prop :=
  ∀ n, P2212946324895410687.a n = A376116 (n + 1)

theorem P2212946324895410687.correct : P2212946324895410687.Spec := by
  intro n
  simp only [A376116, Nat.add_sub_cancel, A376116.P2212946324895410687.a, A376116.P15301336638265797168.a, A000120, A000120.P2816527436160941581.a, A014701, A014701.P12214863752987612616.a, A070939, A070939.P14677302147902843740.a, A005187, A005187.P3874015513960485494.a, A056792, A056792.P13266386025487519892.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A376116

/-! ## A376116.P10106553954112990468

`Δ[n²]-A056792(n+1)`
-/

namespace A376116.P10106553954112990468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A056792 (n + 1)

end

end A376116.P10106553954112990468

namespace A376116

/-- `Δ[n²]-A056792(n+1)` -/
def P10106553954112990468.Spec : Prop :=
  ∀ n, P10106553954112990468.a n = A376116 (n + 1)

theorem P10106553954112990468.correct : P10106553954112990468.Spec := by
  intro n
  simp only [A376116, Nat.add_sub_cancel, A376116.P10106553954112990468.f1, A376116.P10106553954112990468.a, A376116.P15301336638265797168.a, A000120, A000120.P2816527436160941581.a, A056792, A056792.P13266386025487519892.a, A070939, A070939.P14677302147902843740.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A376116

/-! ## A376116.P11507681740669299510

`2*(n+1)-A056791(n+1)`
-/

namespace A376116.P11507681740669299510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A056791 (n + 1)

end

end A376116.P11507681740669299510

namespace A376116

/-- `2*(n+1)-A056791(n+1)` -/
def P11507681740669299510.Spec : Prop :=
  ∀ n, P11507681740669299510.a n = A376116 (n + 1)

theorem P11507681740669299510.correct : P11507681740669299510.Spec := by
  intro n
  simp only [A376116, Nat.add_sub_cancel, A376116.P11507681740669299510.a, A376116.P15301336638265797168.a, A000120, A000120.P2816527436160941581.a, A056791, A056791.P10588008937732959129.a, A070939, A070939.P14677302147902843740.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A376116

/-! ## A376116.P12306116480369565982

`A005187(n)-A119387(n)`
-/

namespace A376116.P12306116480369565982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n - A119387 n

end

end A376116.P12306116480369565982

namespace A376116

/-- `A005187(n)-A119387(n)` -/
def P12306116480369565982.Spec : Prop :=
  ∀ n, P12306116480369565982.a n = A376116 (n + 1)

end A376116

/-! ## A376116.P9636531346658597736

`A101925(n)-A070940(n+1)`
-/

namespace A376116.P9636531346658597736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101925 n - A070940 (n + 1)

end

end A376116.P9636531346658597736

namespace A376116

/-- `A101925(n)-A070940(n+1)` -/
def P9636531346658597736.Spec : Prop :=
  ∀ n, P9636531346658597736.a n = A376116 (n + 1)

end A376116

/-! ## A376116.P11149797287351889181

`A283208(n)-A000523(n+1)`
-/

namespace A376116.P11149797287351889181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283208 n - A000523 (n + 1)

end

end A376116.P11149797287351889181

namespace A376116

/-- `A283208(n)-A000523(n+1)` -/
def P11149797287351889181.Spec : Prop :=
  ∀ n, P11149797287351889181.a n = A376116 (n + 1)

end A376116

/-! ## A376116.P7257649810027804074

`A001855(n+1)-A373709(n)`
-/

namespace A376116.P7257649810027804074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001855 (n + 1) - A373709 n

end

end A376116.P7257649810027804074

namespace A376116

/-- `A001855(n+1)-A373709(n)` -/
def P7257649810027804074.Spec : Prop :=
  ∀ n, P7257649810027804074.a n = A376116 (n + 1)

end A376116

/-! ## A376116.P14185648102353912794

`A050487(n+1)-A117123(n+1)`
-/

namespace A376116.P14185648102353912794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050487 (n + 1) - A117123 (n + 1)

end

end A376116.P14185648102353912794

namespace A376116

/-- `A050487(n+1)-A117123(n+1)` -/
def P14185648102353912794.Spec : Prop :=
  ∀ n, P14185648102353912794.a n = A376116 (n + 1)

end A376116

/-! ## A376116.P14273353353774513527

`A005187(n+1)+A083652(n)-A083652(n+1)`
-/

namespace A376116.P14273353353774513527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n + 1) + (A083652 n - A083652 (n + 1))

end

end A376116.P14273353353774513527

namespace A376116

/-- `A005187(n+1)+A083652(n)-A083652(n+1)` -/
def P14273353353774513527.Spec : Prop :=
  ∀ n, P14273353353774513527.a n = A376116 (n + 1)

end A376116

/-! ## A376116.P2002840246678556414

`A001855(n+1)+A011371(n+1)-A061168(n+1)`
-/

namespace A376116.P2002840246678556414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001855 (n + 1) + (A011371 (n + 1) - A061168 (n + 1))

end

end A376116.P2002840246678556414

namespace A376116

/-- `A001855(n+1)+A011371(n+1)-A061168(n+1)` -/
def P2002840246678556414.Spec : Prop :=
  ∀ n, P2002840246678556414.a n = A376116 (n + 1)

end A376116

/-! ## A376116.P2018856762423935235

`A011371(n+1)+A011371(n+1)-A080791(n+1)`
-/

namespace A376116.P2018856762423935235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (n + 1) + (A011371 (n + 1) - A080791 (n + 1))

end

end A376116.P2018856762423935235

namespace A376116

/-- `A011371(n+1)+A011371(n+1)-A080791(n+1)` -/
def P2018856762423935235.Spec : Prop :=
  ∀ n, P2018856762423935235.a n = A376116 (n + 1)

end A376116

/-! ## A376116.P6079438531905812799

`A011371(n+1)+A050487(n+1)-A049039(n+1)`
-/

namespace A376116.P6079438531905812799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (n + 1) + (A050487 (n + 1) - A049039 (n + 1))

end

end A376116.P6079438531905812799

namespace A376116

/-- `A011371(n+1)+A050487(n+1)-A049039(n+1)` -/
def P6079438531905812799.Spec : Prop :=
  ∀ n, P6079438531905812799.a n = A376116 (n + 1)

end A376116

/-! ## A376116.P8587446240747884705

`A005187(n+1)-A070939(n+1)`
-/

namespace A376116.P8587446240747884705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n + 1) - A070939 (n + 1)

end

end A376116.P8587446240747884705

namespace A376116

/-- `A005187(n+1)-A070939(n+1)` -/
def P8587446240747884705.Spec : Prop :=
  ∀ n, P8587446240747884705.a n = A376116 (n + 1)

theorem P8587446240747884705.correct : P8587446240747884705.Spec := by
  intro n
  simp only [A376116, Nat.add_sub_cancel, A376116.P8587446240747884705.a, A376116.P15301336638265797168.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, A070939, A070939.P14677302147902843740.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A376116

/-! ## A376116.P4335271170958569737

`A101925(n+1)-A070941(n+1)`
-/

namespace A376116.P4335271170958569737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101925 (n + 1) - A070941 (n + 1)

end

end A376116.P4335271170958569737

namespace A376116

/-- `A101925(n+1)-A070941(n+1)` -/
def P4335271170958569737.Spec : Prop :=
  ∀ n, P4335271170958569737.a n = A376116 (n + 1)

end A376116

/-! ## A376116.P11647036877968051219

`A005187(n+1)-A029837(n+2)`
-/

namespace A376116.P11647036877968051219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n + 1) - A029837 (n + 2)

end

end A376116.P11647036877968051219

namespace A376116

/-- `A005187(n+1)-A029837(n+2)` -/
def P11647036877968051219.Spec : Prop :=
  ∀ n, P11647036877968051219.a n = A376116 (n + 1)

end A376116

/-! ## A376116.P6376008823494162028

`A005187(n+1)-(A283982(n+1)+A280700(n+1))`
-/

namespace A376116.P6376008823494162028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n + 1) - (A283982 (n + 1) + A280700 (n + 1))

end

end A376116.P6376008823494162028

namespace A376116

/-- `A005187(n+1)-(A283982(n+1)+A280700(n+1))` -/
def P6376008823494162028.Spec : Prop :=
  ∀ n, P6376008823494162028.a n = A376116 (n + 1)

end A376116

/-!
# A376119: Abundant numbers that are perfect powers.

The programs for A376119, there is no canonical definition to state claims against.
-/

/-! ## A376119.P16534770126452657935

`∩[A131605(n+1), A363169(n+1)]`
-/

namespace A376119.P16534770126452657935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376119.P16534770126452657935

/-! ## A376119.P9128895089240667878

`∩[A363169(n+1), A377702(n+1)]`
-/

namespace A376119.P9128895089240667878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376119.P9128895089240667878

/-! ## A376119.P6233149801171147392

`∩[A001597(n+1), A363169(n+1)]`
-/

namespace A376119.P6233149801171147392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376119.P6233149801171147392

/-! ## A376119.P14187612358178470250

`filter[A001597(n+1), A294936(#)]`
-/

namespace A376119.P14187612358178470250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294936 (f1 j).toNat = 1) n)

end

end A376119.P14187612358178470250

/-! ## A376119.P9724496553878531988

`filter[A131605(n+1), A294936(#)]`
-/

namespace A376119.P9724496553878531988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294936 (f1 j).toNat = 1) n)

end

end A376119.P9724496553878531988

/-! ## A376119.P3211318743452740017

`filter[A377702(n+1), A294936(#)]`
-/

namespace A376119.P3211318743452740017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294936 (f1 j).toNat = 1) n)

end

end A376119.P3211318743452740017

/-! ## A376119.P14109118971062364736

`filter[A396856(n+1), A294936(#)]`
-/

namespace A376119.P14109118971062364736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294936 (f1 j).toNat = 1) n)

end

end A376119.P14109118971062364736

/-! ## A376119.P13228842482390963239

`filter[A377702(n+1), A378550(#)]`
-/

namespace A376119.P13228842482390963239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378550 (f1 j).toNat = 1) n)

end

end A376119.P13228842482390963239

/-! ## A376119.P14783817089688246109

`filter[A131605(n+2), A378550(#)]`
-/

namespace A376119.P14783817089688246109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378550 (f1 j).toNat = 1) n)

end

end A376119.P14783817089688246109

/-!
# A376120: Refactorable numbers that are perfect powers.

The programs for A376120, there is no canonical definition to state claims against.
-/

/-! ## A376120.P7771122438939683090

`∩[A001597(n+1), A322797(n+1)]`
-/

namespace A376120.P7771122438939683090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376120.P7771122438939683090

/-! ## A376120.P14772941050668025494

`∩[A001597(n+1), A033950(n+1)]`
-/

namespace A376120.P14772941050668025494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376120.P14772941050668025494

/-! ## A376120.P6642167496408277015

`∩[A001597(n+1), A036762(n+1)*A039819(n+1)]`
-/

namespace A376120.P6642167496408277015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036762 (n + 1) * A039819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376120.P6642167496408277015

/-! ## A376120.P4380309700927468676

`∩[A322797(n+1), A396856(n+1)]`
-/

namespace A376120.P4380309700927468676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376120.P4380309700927468676

/-! ## A376120.P9182600687694181626

`filter[A001597(n+1), A336040(#)]`
-/

namespace A376120.P9182600687694181626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n)

end

end A376120.P9182600687694181626

/-!
# A376122: Abundance of primitive abundant numbers.

The programs for A376122, there is no canonical definition to state claims against.
-/

/-! ## A376122.P10579144585457740823

`A033880(A071395(n+1))`
-/

namespace A376122.P10579144585457740823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (A071395 (n + 1)).toNat

end

end A376122.P10579144585457740823

/-! ## A376122.P3797277525585262181

`A318679(∩[A006039(n+1), A091191(n+1)])`
-/

namespace A376122.P3797277525585262181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318679 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A376122.P3797277525585262181

/-! ## A376122.P8002808205452497896

`A318679(∩[A006039(n+1), A198471(n+1)])`
-/

namespace A376122.P8002808205452497896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198471 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318679 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A376122.P8002808205452497896

/-! ## A376122.P6690615842306202917

`A318679(∪[A071395(n+1), A283418(n+1)])`
-/

namespace A376122.P6690615842306202917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283418 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318679 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A376122.P6690615842306202917

/-!
# A376123: E.g.f. A(x) satisfies A(x) = x * exp(A(x)) * (1 + 2*A(x)).

The programs for A376123, there is no canonical definition to state claims against.
-/

/-! ## A376123.P11775676611608807897

`A391233(A294425(n+1))`
-/

namespace A376123.P11775676611608807897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391233 (A294425 (n + 1)).toNat

end

end A376123.P11775676611608807897

/-!
# A376124: E.g.f. A(x) satisfies A(x) = x * exp(A(x)) * (1 + 3*A(x)).

The programs for A376124, there is no canonical definition to state claims against.
-/

/-! ## A376124.P1716191226946884439

`A054861(A390105(n))+n`
-/

namespace A376124.P1716191226946884439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (A390105 n).toNat + (n : ℤ)

end

end A376124.P1716191226946884439

/-!
# A376125: a(n) = 1 + Sum_{k=0..n-1} (2*k+1) * a(k) * a(n-k-1).

The programs for A376125, there is no canonical definition to state claims against.
-/

/-! ## A376125.P5255889506113318772

`A069609(a(n-2)+lcm(2, a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A376125.P5255889506113318772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A069609 (a (n - 2) + (Int.lcm 2 (a (n - 1)) : ℤ)).toNat

end

end A376125.P5255889506113318772

/-!
# A376126: a(n) = 1 + Sum_{k=0..n-1} (k+1)^2 * a(k) * a(n-k-1).

The programs for A376126, there is no canonical definition to state claims against.
-/

/-! ## A376126.P6978627201752730920

`A165477(n)+A004709(A392734(n))`
-/

namespace A376126.P6978627201752730920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165477 n + A004709 (A392734 n).toNat

end

end A376126.P6978627201752730920

/-!
# A376131: Total number of times all nodes fire in a chip-firing game starting with 2n chips at the root on an infinite binary tree with a loop at the root.

The programs for A376131, the canonical program `A376131.P331097049803313439` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376131 has offset 1).

The definition of A376131 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376131.P331097049803313439

`∑[A376132(n+1)]-A376132(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A376131

/-- `∑[A376132(n+1)]-A376132(n+1)` -/
def P331097049803313439.Spec : Prop :=
  ∀ n, P331097049803313439.a n = A376131 (n + 1)

theorem P331097049803313439.correct : P331097049803313439.Spec := by
  intro n
  simp only [A376131, Nat.add_sub_cancel]

end A376131

/-! ## A376131.P12392009152145035940

`lt[n, A301275(A080905(2*n+1))]`
-/

namespace A376131.P12392009152145035940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301275 (A080905 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A376131.P12392009152145035940

namespace A376131

/-- `lt[n, A301275(A080905(2*n+1))]` -/
def P12392009152145035940.Spec : Prop :=
  ∀ n, (P12392009152145035940.a n : ℤ) = A376131 (n + 1)

end A376131

/-! ## A376131.P15149617636832021843

`lt[A080859(n), A052562(A080905(2*n+1))]`
-/

namespace A376131.P15149617636832021843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080859 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052562 (A080905 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376131.P15149617636832021843

namespace A376131

/-- `lt[A080859(n), A052562(A080905(2*n+1))]` -/
def P15149617636832021843.Spec : Prop :=
  ∀ n, (P15149617636832021843.a n : ℤ) = A376131 (n + 1)

end A376131

/-! ## A376131.P17793430224956953284

`lt[A000040(n+1), A024451(A080905(2*n+1))]`
-/

namespace A376131.P17793430224956953284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024451 (A080905 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376131.P17793430224956953284

namespace A376131

/-- `lt[A000040(n+1), A024451(A080905(2*n+1))]` -/
def P17793430224956953284.Spec : Prop :=
  ∀ n, (P17793430224956953284.a n : ℤ) = A376131 (n + 1)

end A376131

/-! ## A376131.P9013939136833347102

`lt[A054770(n+1), A024451(A080905(2*n+1))]`
-/

namespace A376131.P9013939136833347102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024451 (A080905 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376131.P9013939136833347102

namespace A376131

/-- `lt[A054770(n+1), A024451(A080905(2*n+1))]` -/
def P9013939136833347102.Spec : Prop :=
  ∀ n, (P9013939136833347102.a n : ℤ) = A376131 (n + 1)

end A376131

/-!
# A376132: First differences of A376131.

The programs for A376132, the canonical program `A376132.P3293630522299707843` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376132 has offset 1).

The definition of A376132 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A376132.P3293630522299707843

`A000295(A376116(n+2)-A376116(n+1)+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A376132

/-- `A000295(A376116(n+2)-A376116(n+1)+1)` -/
def P3293630522299707843.Spec : Prop :=
  ∀ n, P3293630522299707843.a n = A376132 (n + 1)

theorem P3293630522299707843.correct : P3293630522299707843.Spec := by
  intro n
  simp only [A376132, Nat.add_sub_cancel]

end A376132

/-! ## A376132.P1894708292244409781

`A005187(A135521(n+1))`
-/

namespace A376132.P1894708292244409781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A135521 (n + 1)).toNat

end

end A376132.P1894708292244409781

namespace A376132

/-- `A005187(A135521(n+1))` -/
def P1894708292244409781.Spec : Prop :=
  ∀ n, P1894708292244409781.a n = A376132 (n + 1)

end A376132

/-! ## A376132.P3635355708975486224

`A007429(A135517(n+1))`
-/

namespace A376132.P3635355708975486224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (A135517 (n + 1)).toNat

end

end A376132.P3635355708975486224

namespace A376132

/-- `A007429(A135517(n+1))` -/
def P3635355708975486224.Spec : Prop :=
  ∀ n, P3635355708975486224.a n = A376132 (n + 1)

end A376132

/-! ## A376132.P18411733551682019722

`A000295(A091090(n+1)+1)`
-/

namespace A376132.P18411733551682019722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 (A091090 (n + 1) + 1).toNat

end

end A376132.P18411733551682019722

namespace A376132

/-- `A000295(A091090(n+1)+1)` -/
def P18411733551682019722.Spec : Prop :=
  ∀ n, P18411733551682019722.a n = A376132 (n + 1)

theorem P18411733551682019722.correct : P18411733551682019722.Spec := by
  intro n
  simp only [A376132, Nat.add_sub_cancel, A376132.P18411733551682019722.a, A376132.P3293630522299707843.a, A000295, A000295.P9955939544913215267.a, A091090, A091090.P18330635638829780680.a, A376116, A376116.P15301336638265797168.a, A000120, A000120.P2816527436160941581.a, A070939, A070939.P14677302147902843740.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A376132

/-! ## A376132.P7526716140927562382

`A065608(A135521(n+1)+1)`
-/

namespace A376132.P7526716140927562382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (A135521 (n + 1) + 1).toNat

end

end A376132.P7526716140927562382

namespace A376132

/-- `A065608(A135521(n+1)+1)` -/
def P7526716140927562382.Spec : Prop :=
  ∀ n, P7526716140927562382.a n = A376132 (n + 1)

end A376132

/-! ## A376132.P17970213803088875324

`A376116(A135521(n+1)+1)`
-/

namespace A376132.P17970213803088875324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376116 (A135521 (n + 1) + 1).toNat

end

end A376132.P17970213803088875324

namespace A376132

/-- `A376116(A135521(n+1)+1)` -/
def P17970213803088875324.Spec : Prop :=
  ∀ n, P17970213803088875324.a n = A376132 (n + 1)

end A376132

/-! ## A376132.P6389620513848996197

`A376116(2*A135517(n+1))`
-/

namespace A376132.P6389620513848996197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376116 (2 * A135517 (n + 1)).toNat

end

end A376132.P6389620513848996197

namespace A376132

/-- `A376116(2*A135517(n+1))` -/
def P6389620513848996197.Spec : Prop :=
  ∀ n, P6389620513848996197.a n = A376132 (n + 1)

end A376132

/-! ## A376132.P4514597566571032662

`A135521(n+1)+A135521(n+1)-A091090(n+1)`
-/

namespace A376132.P4514597566571032662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135521 (n + 1) + A135521 (n + 1) - A091090 (n + 1)

end

end A376132.P4514597566571032662

namespace A376132

/-- `A135521(n+1)+A135521(n+1)-A091090(n+1)` -/
def P4514597566571032662.Spec : Prop :=
  ∀ n, P4514597566571032662.a n = A376132 (n + 1)

end A376132

/-! ## A376132.P8157389534871842318

`Δ[A376131(n+1)]`
-/

namespace A376132.P8157389534871842318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376132.P8157389534871842318

namespace A376132

/-- `Δ[A376131(n+1)]` -/
def P8157389534871842318.Spec : Prop :=
  ∀ n, P8157389534871842318.a n = A376132 (n + 1)

end A376132

/-! ## A376132.P15221961654444288218

`A376131(n+2)-A376131(n+1)`
-/

namespace A376132.P15221961654444288218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376131 (n + 2) - A376131 (n + 1)

end

end A376132.P15221961654444288218

namespace A376132

/-- `A376131(n+2)-A376131(n+1)` -/
def P15221961654444288218.Spec : Prop :=
  ∀ n, P15221961654444288218.a n = A376132 (n + 1)

end A376132

/-! ## A376132.P12132451206775561607

`A011371(2*A135521(n+1))`
-/

namespace A376132.P12132451206775561607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (2 * A135521 (n + 1)).toNat

end

end A376132.P12132451206775561607

namespace A376132

/-- `A011371(2*A135521(n+1))` -/
def P12132451206775561607.Spec : Prop :=
  ∀ n, P12132451206775561607.a n = A376132 (n + 1)

end A376132

/-!
# A376133: Triangle T read by rows: T(n, 1) = (2*n*n - 4*n + 7 + (-1)^n) / 4 and T(n, k) = T(n, k-1) + (-1)^k * 2 * (n+1-k) for k >= 2.

The programs for A376133, there is no canonical definition to state claims against.
-/

/-! ## A376133.P4015067308427615749

`A074147(A057027(n+1))`
-/

namespace A376133.P4015067308427615749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074147 (A057027 (n + 1)).toNat

end

end A376133.P4015067308427615749

/-! ## A376133.P4427090128363615064

`A109857(A059399(n+1))`
-/

namespace A376133.P4427090128363615064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109857 (A059399 (n + 1)).toNat

end

end A376133.P4427090128363615064

/-!
# A376134: a(0) = 1; a(n) = Sum_{k=0..n-1} (-1)^k * (k+1) * a(k) * a(n-k-1).

The programs for A376134, there is no canonical definition to state claims against.
-/

/-! ## A376134.P15402955992014703160

`A047679(A048143(n))-A051129(2*(n+1))`
-/

namespace A376134.P15402955992014703160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047679 (A048143 n).toNat - A051129 (2 * (n + 1))

end

end A376134.P15402955992014703160

/-!
# A376138: a(n) is the smallest k such that n = ab + cd with 1 <= a,b,c,d <= k.

The programs for A376138, there is no canonical definition to state claims against.
-/

/-! ## A376138.P16760857974867443523

`A043537(A276156(3*n+1)+A035513(n+5))`
-/

namespace A376138.P16760857974867443523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A276156 (3 * n + 1) + A035513 (n + 5)).toNat

end

end A376138.P16760857974867443523

/-! ## A376138.P18151153356272610950

`A178489(A006073(3*(n+1))*A064413(n+4))`
-/

namespace A376138.P18151153356272610950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 (A006073 (3 * (n + 1)) * A064413 (n + 4)).toNat

end

end A376138.P18151153356272610950

/-! ## A376138.P17435039740922429568

`A160093(∑[∑[A000041(n)+3]+3])`
-/

namespace A376138.P17435039740922429568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160093 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A376138.P17435039740922429568

/-! ## A376138.P9921181149436138049

`A160093(A090552(3*(n+1))-A159637(n))`
-/

namespace A376138.P9921181149436138049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160093 (A090552 (3 * (n + 1)) - A159637 n).toNat

end

end A376138.P9921181149436138049

/-! ## A376138.P4502853225970424115

`A043538(A123857(n+2))`
-/

namespace A376138.P4502853225970424115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043538 (A123857 (n + 2)).toNat

end

end A376138.P4502853225970424115

/-!
# A376139: a(n) = (-1)^A051903(n).

The programs for A376139, the canonical program `A376139.P13428466626577619161` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376139 has offset 1).

The definition of A376139 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A376139.P13428466626577619161

`(-1)^A051903(n+1)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A376139

/-- `(-1)^A051903(n+1)` -/
def P13428466626577619161.Spec : Prop :=
  ∀ n, P13428466626577619161.a n = (A376139 (n + 1) : ℚ)

end A376139

/-! ## A376139.P637424621958504991

`1-abs(a((n+1)/∏{p}[n+1, #]-1)+1)` with `a(0)=1`
-/

namespace A376139.P637424621958504991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - |a (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) - 1)).toNat + 1|

end

end A376139.P637424621958504991

namespace A376139

/-- `1-abs(a((n+1)/∏{p}[n+1, #]-1)+1)` -/
def P637424621958504991.Spec : Prop :=
  ∀ n, P637424621958504991.a n = A376139 (n + 1)

end A376139

/-! ## A376139.P455085732538795673

`1-dr(a((n+1)/∏{p}[n+1, #]-1)+1)` with `a(0)=1`
-/

namespace A376139.P455085732538795673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (SequenceMachineLib.digitalRoot (a (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) - 1)).toNat + 1) : ℤ)

end

end A376139.P455085732538795673

namespace A376139

/-- `1-dr(a((n+1)/∏{p}[n+1, #]-1)+1)` -/
def P455085732538795673.Spec : Prop :=
  ∀ n, P455085732538795673.a n = A376139 (n + 1)

end A376139

/-! ## A376139.P10902744483248718949

`1-2*A381955(n+1)`
-/

namespace A376139.P10902744483248718949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A381955 (n + 1)

end

end A376139.P10902744483248718949

namespace A376139

/-- `1-2*A381955(n+1)` -/
def P10902744483248718949.Spec : Prop :=
  ∀ n, P10902744483248718949.a n = A376139 (n + 1)

end A376139

/-! ## A376139.P15094573060621692041

`A062157(A067132(n+1))`
-/

namespace A376139.P15094573060621692041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A067132 (n + 1)).toNat

end

end A376139.P15094573060621692041

namespace A376139

/-- `A062157(A067132(n+1))` -/
def P15094573060621692041.Spec : Prop :=
  ∀ n, P15094573060621692041.a n = A376139 (n + 1)

end A376139

/-! ## A376139.P18440674326433175302

`A008836(A238745(n+1))`
-/

namespace A376139.P18440674326433175302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A238745 (n + 1)).toNat

end

end A376139.P18440674326433175302

namespace A376139

/-- `A008836(A238745(n+1))` -/
def P18440674326433175302.Spec : Prop :=
  ∀ n, P18440674326433175302.a n = A376139 (n + 1)

end A376139

/-! ## A376139.P11892884728956877262

`A011582(A328400(n+1))`
-/

namespace A376139.P11892884728956877262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011582 (A328400 (n + 1)).toNat

end

end A376139.P11892884728956877262

namespace A376139

/-- `A011582(A328400(n+1))` -/
def P11892884728956877262.Spec : Prop :=
  ∀ n, P11892884728956877262.a n = A376139 (n + 1)

end A376139

/-! ## A376139.P1335533249419599346

`A062157(A327527(n+1))`
-/

namespace A376139.P1335533249419599346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A327527 (n + 1)).toNat

end

end A376139.P1335533249419599346

namespace A376139

/-- `A062157(A327527(n+1))` -/
def P1335533249419599346.Spec : Prop :=
  ∀ n, P1335533249419599346.a n = A376139 (n + 1)

end A376139

/-! ## A376139.P8658880022220614888

`A056594(2*A051903(n+1))`
-/

namespace A376139.P8658880022220614888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * A051903 (n + 1)).toNat

end

end A376139.P8658880022220614888

namespace A376139

/-- `A056594(2*A051903(n+1))` -/
def P8658880022220614888.Spec : Prop :=
  ∀ n, P8658880022220614888.a n = A376139 (n + 1)

end A376139

/-! ## A376139.P18383638478118995585

`A011585(A359600(n+1))`
-/

namespace A376139.P18383638478118995585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011585 (A359600 (n + 1)).toNat

end

end A376139.P18383638478118995585

namespace A376139

/-- `A011585(A359600(n+1))` -/
def P18383638478118995585.Spec : Prop :=
  ∀ n, P18383638478118995585.a n = A376139 (n + 1)

end A376139

/-! ## A376139.P2804454004214837541

`A056594(A051903((n+1)²))`
-/

namespace A376139.P2804454004214837541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A051903 ((n + 1) ^ 2)).toNat

end

end A376139.P2804454004214837541

namespace A376139

/-- `A056594(A051903((n+1)²))` -/
def P2804454004214837541.Spec : Prop :=
  ∀ n, P2804454004214837541.a n = A376139 (n + 1)

end A376139

/-! ## A376139.P6654800554846803034

`A008836(A304180(n+1))`
-/

namespace A376139.P6654800554846803034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A304180 (n + 1)).toNat

end

end A376139.P6654800554846803034

namespace A376139

/-- `A008836(A304180(n+1))` -/
def P6654800554846803034.Spec : Prop :=
  ∀ n, P6654800554846803034.a n = A376139 (n + 1)

end A376139

/-!
# A376140: The number of divisors of n whose prime factorization has maximum exponent that is smaller than the maximum exponent in the prime factorization of n.

The programs for A376140, there is no canonical definition to state claims against.
-/

/-! ## A376140.P17497675890339733244

`∏{e}[n+1, #]*A001221(A048767(n+1))`
-/

namespace A376140.P17497675890339733244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) * A001221 (A048767 (n + 1)).toNat

end

end A376140.P17497675890339733244

/-! ## A376140.P15989876918014050653

`A001221(A048767(n+1))*A005361(n+1)`
-/

namespace A376140.P15989876918014050653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A048767 (n + 1)).toNat * A005361 (n + 1)

end

end A376140.P15989876918014050653

/-! ## A376140.P4921813425813666249

`A071625(n+1)*A227349(A156552(n+1))`
-/

namespace A376140.P4921813425813666249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (n + 1) * A227349 (A156552 (n + 1)).toNat

end

end A376140.P4921813425813666249

/-!
# A376141: The maximum exponent in the prime factorization of the numbers k such that k and k+1 have the same maximum exponent in their prime factorization.

The programs for A376141, the canonical program `A376141.P3226871347673056162` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376141 has offset 1).

The definition of A376141 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A369020, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A376141.P3226871347673056162

`A051903(A369020(n+1))`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A376141

/-- `A051903(A369020(n+1))` -/
def P3226871347673056162.Spec : Prop :=
  ∀ n, P3226871347673056162.a n = A376141 (n + 1)

theorem P3226871347673056162.correct : P3226871347673056162.Spec := by
  intro n
  simp only [A376141, Nat.add_sub_cancel]

end A376141

/-! ## A376141.P15604868765512452507

`A051903(eq[A051903(n+1), A051903(n+2)]+1)`
-/

namespace A376141.P15604868765512452507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A376141.P15604868765512452507

namespace A376141

/-- `A051903(eq[A051903(n+1), A051903(n+2)]+1)` -/
def P15604868765512452507.Spec : Prop :=
  ∀ n, P15604868765512452507.a n = A376141 (n + 1)

end A376141

/-! ## A376141.P7330061326195004633

`A316364(A162247(A293627(A162247(2*n+1))))`
-/

namespace A376141.P7330061326195004633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316364 (A162247 (A293627 (A162247 (2 * n + 1)).toNat).toNat).toNat

end

end A376141.P7330061326195004633

namespace A376141

/-- `A316364(A162247(A293627(A162247(2*n+1))))` -/
def P7330061326195004633.Spec : Prop :=
  ∀ n, P7330061326195004633.a n = A376141 (n + 1)

end A376141

/-! ## A376141.P1465739196554486519

`A360683(and(A100254(2*n+5), A360670(n)))`
-/

namespace A376141.P1465739196554486519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360683 (Int.land (A100254 (2 * n + 5)) (A360670 n)).toNat

end

end A376141.P1465739196554486519

namespace A376141

/-- `A360683(and(A100254(2*n+5), A360670(n)))` -/
def P1465739196554486519.Spec : Prop :=
  ∀ n, P1465739196554486519.a n = A376141 (n + 1)

end A376141

/-! ## A376141.P7953609667775705913

`gcd(A057197(A335259(n+5)), A335234(n+1))`
-/

namespace A376141.P7953609667775705913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057197 (A335259 (n + 5)).toNat) (A335234 (n + 1))

end

end A376141.P7953609667775705913

namespace A376141

/-- `gcd(A057197(A335259(n+5)), A335234(n+1))` -/
def P7953609667775705913.Spec : Prop :=
  ∀ n, (P7953609667775705913.a n : ℤ) = A376141 (n + 1)

end A376141

/-!
# A376142: Nonsquarefree numbers whose prime factorization has a maximum exponent that is odd.

The programs for A376142, the canonical program `A376142.P17307456728762235189` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376142 has offset 1).

The definition of A376142 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1162 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376142.P17307456728762235189

`filter[A013929(n+1), A381955(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A376142

/-- `filter[A013929(n+1), A381955(#)]` -/
def P17307456728762235189.Spec : Prop :=
  ∀ n, P17307456728762235189.a n = A376142 (n + 1)

theorem P17307456728762235189.correct : P17307456728762235189.Spec := by
  intro n
  simp only [A376142, Nat.add_sub_cancel]

end A376142

/-! ## A376142.P12124921825537671034

`filter[A046099(n+1), A381955(#)]`
-/

namespace A376142.P12124921825537671034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381955 (f1 j).toNat = 1) n)

end

end A376142.P12124921825537671034

namespace A376142

/-- `filter[A046099(n+1), A381955(#)]` -/
def P12124921825537671034.Spec : Prop :=
  ∀ n, P12124921825537671034.a n = A376142 (n + 1)

end A376142

/-! ## A376142.P2763878646934644386

`filter[A046790(n+1), A381955(#)]`
-/

namespace A376142.P2763878646934644386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381955 (f1 j).toNat = 1) n)

end

end A376142.P2763878646934644386

namespace A376142

/-- `filter[A046790(n+1), A381955(#)]` -/
def P2763878646934644386.Spec : Prop :=
  ∀ n, P2763878646934644386.a n = A376142 (n + 1)

end A376142

/-! ## A376142.P11849810179808073452

`filter[A048108(n+1), A381955(#)]`
-/

namespace A376142.P11849810179808073452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381955 (f1 j).toNat = 1) n)

end

end A376142.P11849810179808073452

namespace A376142

/-- `filter[A048108(n+1), A381955(#)]` -/
def P11849810179808073452.Spec : Prop :=
  ∀ n, P11849810179808073452.a n = A376142 (n + 1)

end A376142

/-! ## A376142.P7424918434665999102

`filter[A049199(n+1), A381955(#)]`
-/

namespace A376142.P7424918434665999102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381955 (f1 j).toNat = 1) n)

end

end A376142.P7424918434665999102

namespace A376142

/-- `filter[A049199(n+1), A381955(#)]` -/
def P7424918434665999102.Spec : Prop :=
  ∀ n, P7424918434665999102.a n = A376142 (n + 1)

end A376142

/-! ## A376142.P1151129579866625251

`filter[A051144(n+1), A381955(#)]`
-/

namespace A376142.P1151129579866625251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381955 (f1 j).toNat = 1) n)

end

end A376142.P1151129579866625251

namespace A376142

/-- `filter[A051144(n+1), A381955(#)]` -/
def P1151129579866625251.Spec : Prop :=
  ∀ n, P1151129579866625251.a n = A376142 (n + 1)

end A376142

/-! ## A376142.P14981331490390610058

`filter[A060476(n+1), A381955(#)]`
-/

namespace A376142.P14981331490390610058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381955 (f1 j).toNat = 1) n)

end

end A376142.P14981331490390610058

namespace A376142

/-- `filter[A060476(n+1), A381955(#)]` -/
def P14981331490390610058.Spec : Prop :=
  ∀ n, P14981331490390610058.a n = A376142 (n + 1)

end A376142

/-! ## A376142.P12694572663200889906

`filter[A062171(n+1), A381955(#)]`
-/

namespace A376142.P12694572663200889906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381955 (f1 j).toNat = 1) n)

end

end A376142.P12694572663200889906

namespace A376142

/-- `filter[A062171(n+1), A381955(#)]` -/
def P12694572663200889906.Spec : Prop :=
  ∀ n, P12694572663200889906.a n = A376142 (n + 1)

end A376142

/-! ## A376142.P3755175409460756951

`filter[A080756(n+1), A381955(#)]`
-/

namespace A376142.P3755175409460756951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381955 (f1 j).toNat = 1) n)

end

end A376142.P3755175409460756951

namespace A376142

/-- `filter[A080756(n+1), A381955(#)]` -/
def P3755175409460756951.Spec : Prop :=
  ∀ n, P3755175409460756951.a n = A376142 (n + 1)

end A376142

/-! ## A376142.P4490753042329938588

`filter[A162966(n+1), A381955(#)]`
-/

namespace A376142.P4490753042329938588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381955 (f1 j).toNat = 1) n)

end

end A376142.P4490753042329938588

namespace A376142

/-- `filter[A162966(n+1), A381955(#)]` -/
def P4490753042329938588.Spec : Prop :=
  ∀ n, P4490753042329938588.a n = A376142 (n + 1)

end A376142

/-! ## A376142.P1137808553200861759

`filter[A274141(n+1), A381955(#)]`
-/

namespace A376142.P1137808553200861759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381955 (f1 j).toNat = 1) n)

end

end A376142.P1137808553200861759

namespace A376142

/-- `filter[A274141(n+1), A381955(#)]` -/
def P1137808553200861759.Spec : Prop :=
  ∀ n, P1137808553200861759.a n = A376142 (n + 1)

end A376142

/-! ## A376142.P15783033046646391768

`filter[A075378(2*n+1), A381955(#)]`
-/

namespace A376142.P15783033046646391768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075378 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381955 (f1 j).toNat = 1) n)

end

end A376142.P15783033046646391768

namespace A376142

/-- `filter[A075378(2*n+1), A381955(#)]` -/
def P15783033046646391768.Spec : Prop :=
  ∀ n, P15783033046646391768.a n = A376142 (n + 1)

end A376142

/-! ## A376142.P4718948964426242779

`filter[A088610(2*(n+1)), A381955(#)]`
-/

namespace A376142.P4718948964426242779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381955 (f1 j).toNat = 1) n)

end

end A376142.P4718948964426242779

namespace A376142

/-- `filter[A088610(2*(n+1)), A381955(#)]` -/
def P4718948964426242779.Spec : Prop :=
  ∀ n, P4718948964426242779.a n = A376142 (n + 1)

end A376142

/-! ## A376142.P6243438779675663633

`filter[A299117(n+1), A381955(#)]`
-/

namespace A376142.P6243438779675663633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381955 (f1 j).toNat = 1) n)

end

end A376142.P6243438779675663633

namespace A376142

/-- `filter[A299117(n+1), A381955(#)]` -/
def P6243438779675663633.Spec : Prop :=
  ∀ n, P6243438779675663633.a n = A376142 (n + 1)

end A376142

/-! ## A376142.P15772674836924924022

`filter[A225353(n+1), A381955(#)]`
-/

namespace A376142.P15772674836924924022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381955 (f1 j).toNat = 1) n)

end

end A376142.P15772674836924924022

namespace A376142

/-- `filter[A225353(n+1), A381955(#)]` -/
def P15772674836924924022.Spec : Prop :=
  ∀ n, P15772674836924924022.a n = A376142 (n + 1)

end A376142

/-! ## A376142.P8206958775068930953

`filter[A088613(n+1), A381955(#)]`
-/

namespace A376142.P8206958775068930953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381955 (f1 j).toNat = 1) n)

end

end A376142.P8206958775068930953

namespace A376142

/-- `filter[A088613(n+1), A381955(#)]` -/
def P8206958775068930953.Spec : Prop :=
  ∀ n, P8206958775068930953.a n = A376142 (n + 1)

end A376142

/-!
# A376145: E.g.f. satisfies A(x) = exp( x * (1+x)^3 * A(x) ).

The programs for A376145, the canonical program `A376145.P5819761923437424847` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376145 has offset 0).

The definition of A376145 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A376145.P5819761923437424847

`n!*∑{#}[n, (#+1)^(#-1)*C(3*#, n-#)/#!]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A376145

/-- `n!*∑{#}[n, (#+1)^(#-1)*C(3*#, n-#)/#!]` -/
def P5819761923437424847.Spec : Prop :=
  ∀ n, P5819761923437424847.a n = (A376145 n : ℚ)

end A376145

/-!
# A376146: E.g.f. satisfies A(x) = exp( x * (1+x)^4 * A(x) ).

The programs for A376146, there is no canonical definition to state claims against.
-/

/-! ## A376146.P14718725642999087591

`A070548(A156132(n)+n)`
-/

namespace A376146.P14718725642999087591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070548 (A156132 n + (n : ℤ)).toNat

end

end A376146.P14718725642999087591

/-!
# A376148: Number of nodes after the n-th unfolding of a single vertex (see comments for definition).

The programs for A376148, there is no canonical definition to state claims against.
-/

/-! ## A376148.P10810107795459924193

`A326447(A281866(n+6))+A198896(n)`
-/

namespace A376148.P10810107795459924193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326447 (A281866 (n + 6)).toNat + A198896 n

end

end A376148.P10810107795459924193

/-!
# A376151: TARDIS numbers: the sum of the first and last digits of the decimal expansion is less than the sum of the middle digits.

The programs for A376151, there is no canonical definition to state claims against.
-/

/-! ## A376151.P11991410823392476364

`lt[A353906(n+1), 0]+1`
-/

namespace A376151.P11991410823392476364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353906 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A376151.P11991410823392476364

/-! ## A376151.P13491484034836073277

`lt[n%10, A283001(floor(n/10))]`
-/

namespace A376151.P13491484034836073277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283001 ⌊(n : ℚ) / 10⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A376151.P13491484034836073277

/-! ## A376151.P10215704340697887139

`lt[n, A193581(A355224(n))]`
-/

namespace A376151.P10215704340697887139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 (A355224 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A376151.P10215704340697887139

/-! ## A376151.P5890989119985103111

`filter[A194429(n+1), A145568(#)]`
-/

namespace A376151.P5890989119985103111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A376151.P5890989119985103111

/-! ## A376151.P14764865096519338716

`lt[A004086(n)+n, A355224(n)]`
-/

namespace A376151.P14764865096519338716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355224 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376151.P14764865096519338716

/-! ## A376151.P9060744202355457727

`∩[A160542(n+1), A194429(n+1)]`
-/

namespace A376151.P9060744202355457727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376151.P9060744202355457727

/-! ## A376151.P14160129973999282196

`lt[A004086(n), A355224(n)-A182324(n)]`
-/

namespace A376151.P14160129973999282196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355224 n - A182324 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376151.P14160129973999282196

/-!
# A376154: Numbers that are not the sum of the nonprime divisors of k for any k.

The programs for A376154, the canonical program `A376154.P4336669941809621595` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376154 has offset 1).

The definition of A376154 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376154.P4336669941809621595

`comp[A000203(n+1)-A008472(n+1)]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A376154

/-- `comp[A000203(n+1)-A008472(n+1)]` -/
def P4336669941809621595.Spec : Prop :=
  ∀ n, (P4336669941809621595.a n : ℤ) = A376154 (n + 1)

theorem P4336669941809621595.correct : P4336669941809621595.Spec := by
  intro n
  simp only [A376154, Nat.add_sub_cancel]

end A376154

/-! ## A376154.P10888386204301755628

`comp[A023890(n+1)]`
-/

namespace A376154.P10888386204301755628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A376154.P10888386204301755628

namespace A376154

/-- `comp[A023890(n+1)]` -/
def P10888386204301755628.Spec : Prop :=
  ∀ n, (P10888386204301755628.a n : ℤ) = A376154 (n + 1)

end A376154

/-! ## A376154.P5532687006141354776

`comp[A280292(n+1)+A086665(n+1)]`
-/

namespace A376154.P5532687006141354776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280292 (n + 1) + A086665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A376154.P5532687006141354776

namespace A376154

/-- `comp[A280292(n+1)+A086665(n+1)]` -/
def P5532687006141354776.Spec : Prop :=
  ∀ n, (P5532687006141354776.a n : ℤ) = A376154 (n + 1)

end A376154

/-! ## A376154.P17008439430832257544

`eq[0, char[A023890(n+4)]]`
-/

namespace A376154.P17008439430832257544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (n + 4)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376154.P17008439430832257544

namespace A376154

/-- `eq[0, char[A023890(n+4)]]` -/
def P17008439430832257544.Spec : Prop :=
  ∀ n, (P17008439430832257544.a n : ℤ) = A376154 (n + 1)

end A376154

/-! ## A376154.P11884459854895893907

`lt[char[∑{d}[n+1, #]-∑{p}[n+1, #]], 1]`
-/

namespace A376154.P11884459854895893907
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f4 n), p : ℕ) : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f5 j) n

end

end A376154.P11884459854895893907

namespace A376154

/-- `lt[char[∑{d}[n+1, #]-∑{p}[n+1, #]], 1]` -/
def P11884459854895893907.Spec : Prop :=
  ∀ n, (P11884459854895893907.a n : ℤ) = A376154 (n + 1)

end A376154

/-!
# A376155: Number of prime knots with 10 or fewer crossings whose mosaic number is n.

The programs for A376155, there is no canonical definition to state claims against.
-/

/-! ## A376155.P15959451073961162412

`and(A211641(n), A274750(n+1))`
-/

namespace A376155.P15959451073961162412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A211641 n) (A274750 (n + 1))

end

end A376155.P15959451073961162412

/-! ## A376155.P18271179566914176889

`and(∑[A035593(n)], A063948(n+1))`
-/

namespace A376155.P18271179566914176889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035593 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A063948 (n + 1))

end

end A376155.P18271179566914176889

/-!
# A376156: a(n) is the least number that is the sum of the nonprime divisors of k for exactly n different k.

The programs for A376156, there is no canonical definition to state claims against.
-/

/-! ## A376156.P10425162871226032374

`A365877(A078841(n)+2)`
-/

namespace A376156.P10425162871226032374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365877 (A078841 n + 2).toNat

end

end A376156.P10425162871226032374

/-!
# A376157: Numbers k such that the sum of the digits of k equals the sum of its prime factors plus the sum of the multiplicities of each prime factor.

The programs for A376157, there is no canonical definition to state claims against.
-/

/-! ## A376157.P12552570916522643386

`A227356(n+1)+A194366(A227371(n+1))`
-/

namespace A376157.P12552570916522643386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227356 (n + 1) + A194366 (A227371 (n + 1)).toNat

end

end A376157.P12552570916522643386

/-!
# A376158: Numbers k having two prime divisors p < q such that p! <= k <= q!.

The programs for A376158, there is no canonical definition to state claims against.
-/

/-! ## A376158.P6219254074076263794

`A359870(n+2)%Δ[A062305(3*n+4)]`
-/

namespace A376158.P6219254074076263794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062305 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359870 (n + 2)) (f1 (n + 1) - f1 n)

end

end A376158.P6219254074076263794

/-! ## A376158.P6273713474969125830

`A024619(lt[A271462(n), A281305(n)])`
-/

namespace A376158.P6273713474969125830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271462 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A376158.P6273713474969125830

/-! ## A376158.P8478362942979478154

`lt[A007875(A088298(2*n+3)), A231813(n)]`
-/

namespace A376158.P8478362942979478154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (A088298 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376158.P8478362942979478154

/-! ## A376158.P17686857966625364740

`A362980(lt[A362956(3*n+2), A362938(n+3)])`
-/

namespace A376158.P17686857966625364740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362956 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362938 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362980 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A376158.P17686857966625364740

/-!
# A376159: G.f. satisfies A(x) = 1 / ((1-x)^3 - x*A(x)).

The programs for A376159, the canonical program `A376159.P7006855927687194035` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376159 has offset 0).

The definition of A376159 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A376159.P7006855927687194035

`∑{#}[n, C(n+5*#+2, n-#)*C(2*#, #)/(#+1)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A376159

/-- `∑{#}[n, C(n+5*#+2, n-#)*C(2*#, #)/(#+1)]` -/
def P7006855927687194035.Spec : Prop :=
  ∀ n, P7006855927687194035.a n = (A376159 n : ℚ)

end A376159

/-!
# A376160: G.f. satisfies A(x) = 1 / ((1-x)^3 - x*A(x)^3).

The programs for A376160, the canonical program `A376160.P17873867077576180023` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376160 has offset 0).

The definition of A376160 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A376160.P17873867077576180023

`∑{#}[n, C(n+11*#+2, n-#)*C(4*#, #)/(3*#+1)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A376160

/-- `∑{#}[n, C(n+11*#+2, n-#)*C(4*#, #)/(3*#+1)]` -/
def P17873867077576180023.Spec : Prop :=
  ∀ n, P17873867077576180023.a n = (A376160 n : ℚ)

end A376160

/-!
# A376161: Number of support Tau-tilting modules for some algebras.

The programs for A376161, the canonical program `A376161.P5653477694830852408` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376161 has offset 0).

The definition of A376161 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A376161.P5653477694830852408

`A007054(n)*(3*n+2)/2`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A376161

/-- `A007054(n)*(3*n+2)/2` -/
def P5653477694830852408.Spec : Prop :=
  ∀ n, P5653477694830852408.a n = (A376161 n : ℚ)

end A376161

/-! ## A376161.P7287919746223980697

`A329533(n)/(n+1)`
-/

namespace A376161.P7287919746223980697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329533 n : ℚ) / (n + 1 : ℚ)

end

end A376161.P7287919746223980697

namespace A376161

/-- `A329533(n)/(n+1)` -/
def P7287919746223980697.Spec : Prop :=
  ∀ n, P7287919746223980697.a n = (A376161 n : ℚ)

end A376161

/-! ## A376161.P14698600696215842567

`A000108(n)*(9*n+6)/(n+2)`
-/

namespace A376161.P14698600696215842567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n * (9 * n + 6 : ℤ) : ℚ) / (n + 2 : ℚ)

end

end A376161.P14698600696215842567

namespace A376161

/-- `A000108(n)*(9*n+6)/(n+2)` -/
def P14698600696215842567.Spec : Prop :=
  ∀ n, P14698600696215842567.a n = (A376161 n : ℚ)

end A376161

/-! ## A376161.P1480746333665184731

`3*(3*n+2)*C(2*n+4, n+2)/(4*(2*n+1)*(2*n+3))`
-/

namespace A376161.P1480746333665184731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * (3 * n + 2) * Nat.choose (2 * n + 4) (n + 2) : ℚ) / (4 * (2 * n + 1) * (2 * n + 3) : ℚ)

end

end A376161.P1480746333665184731

namespace A376161

/-- `3*(3*n+2)*C(2*n+4, n+2)/(4*(2*n+1)*(2*n+3))` -/
def P1480746333665184731.Spec : Prop :=
  ∀ n, P1480746333665184731.a n = (A376161 n : ℚ)

end A376161

/-! ## A376161.P2583097852846762443

`6*A023999(n+1)/(n+2)!`
-/

namespace A376161.P2583097852846762443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 * A023999 (n + 1) : ℚ) / (Nat.factorial (n + 2) : ℚ)

end

end A376161.P2583097852846762443

namespace A376161

/-- `6*A023999(n+1)/(n+2)!` -/
def P2583097852846762443.Spec : Prop :=
  ∀ n, P2583097852846762443.a n = (A376161 n : ℚ)

end A376161

/-! ## A376161.P15624007317724621740

`A038629(n)+A000245(n)`
-/

namespace A376161.P15624007317724621740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038629 n + A000245 n

end

end A376161.P15624007317724621740

namespace A376161

/-- `A038629(n)+A000245(n)` -/
def P15624007317724621740.Spec : Prop :=
  ∀ n, P15624007317724621740.a n = A376161 n

end A376161

/-! ## A376161.P3431005917822741668

`A005807(n)+A000108(n+1)`
-/

namespace A376161.P3431005917822741668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005807 n + A000108 (n + 1)

end

end A376161.P3431005917822741668

namespace A376161

/-- `A005807(n)+A000108(n+1)` -/
def P3431005917822741668.Spec : Prop :=
  ∀ n, P3431005917822741668.a n = A376161 n

end A376161

/-! ## A376161.P1886048676565605604

`A068875(n+1)+A000108(n)`
-/

namespace A376161.P1886048676565605604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 (n + 1) + A000108 n

end

end A376161.P1886048676565605604

namespace A376161

/-- `A068875(n+1)+A000108(n)` -/
def P1886048676565605604.Spec : Prop :=
  ∀ n, P1886048676565605604.a n = A376161 n

end A376161

/-! ## A376161.P8071033007425114951

`A262543(n+2)+A000108(n)`
-/

namespace A376161.P8071033007425114951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262543 (n + 2) + A000108 n

end

end A376161.P8071033007425114951

namespace A376161

/-- `A262543(n+2)+A000108(n)` -/
def P8071033007425114951.Spec : Prop :=
  ∀ n, P8071033007425114951.a n = A376161 n

end A376161

/-! ## A376161.P4146495256772151564

`A000108(n)-A002420(n+2)`
-/

namespace A376161.P4146495256772151564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A002420 (n + 2)

end

end A376161.P4146495256772151564

namespace A376161

/-- `A000108(n)-A002420(n+2)` -/
def P4146495256772151564.Spec : Prop :=
  ∀ n, P4146495256772151564.a n = A376161 n

end A376161

/-! ## A376161.P5948637693084797781

`A005807(n)-A115140(n+2)`
-/

namespace A376161.P5948637693084797781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005807 n - A115140 (n + 2)

end

end A376161.P5948637693084797781

namespace A376161

/-- `A005807(n)-A115140(n+2)` -/
def P5948637693084797781.Spec : Prop :=
  ∀ n, P5948637693084797781.a n = A376161 n

end A376161

/-! ## A376161.P13666245779378082747

`2*A005807(n)-A000108(n)`
-/

namespace A376161.P13666245779378082747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005807 n - A000108 n

end

end A376161.P13666245779378082747

namespace A376161

/-- `2*A005807(n)-A000108(n)` -/
def P13666245779378082747.Spec : Prop :=
  ∀ n, P13666245779378082747.a n = A376161 n

end A376161

/-! ## A376161.P11724930588572271759

`A167422(n+1)+A000108(n+1)`
-/

namespace A376161.P11724930588572271759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167422 (n + 1) + A000108 (n + 1)

end

end A376161.P11724930588572271759

namespace A376161

/-- `A167422(n+1)+A000108(n+1)` -/
def P11724930588572271759.Spec : Prop :=
  ∀ n, P11724930588572271759.a n = A376161 n

end A376161

/-! ## A376161.P16828799018652621431

`A120588(n+1)+A068875(n+1)`
-/

namespace A376161.P16828799018652621431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1) + A068875 (n + 1)

end

end A376161.P16828799018652621431

namespace A376161

/-- `A120588(n+1)+A068875(n+1)` -/
def P16828799018652621431.Spec : Prop :=
  ∀ n, P16828799018652621431.a n = A376161 n

end A376161

/-! ## A376161.P15099349129016506405

`A289450(n+1)+A014137(n+1)`
-/

namespace A376161.P15099349129016506405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289450 (n + 1) + A014137 (n + 1)

end

end A376161.P15099349129016506405

namespace A376161

/-- `A289450(n+1)+A014137(n+1)` -/
def P15099349129016506405.Spec : Prop :=
  ∀ n, P15099349129016506405.a n = A376161 n

end A376161

/-! ## A376161.P4658823207209668568

`A220902(n+2)+A120009(n+1)`
-/

namespace A376161.P4658823207209668568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220902 (n + 2) + A120009 (n + 1)

end

end A376161.P4658823207209668568

namespace A376161

/-- `A220902(n+2)+A120009(n+1)` -/
def P4658823207209668568.Spec : Prop :=
  ∀ n, P4658823207209668568.a n = A376161 n

end A376161

/-! ## A376161.P15928858854316451819

`A000782(n+1)+2*A000108(n)`
-/

namespace A376161.P15928858854316451819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000782 (n + 1) + 2 * A000108 n

end

end A376161.P15928858854316451819

namespace A376161

/-- `A000782(n+1)+2*A000108(n)` -/
def P15928858854316451819.Spec : Prop :=
  ∀ n, P15928858854316451819.a n = A376161 n

end A376161

/-! ## A376161.P16368867476855700373

`A068875(n+1)+A028304(2*n)`
-/

namespace A376161.P16368867476855700373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 (n + 1) + A028304 (2 * n)

end

end A376161.P16368867476855700373

namespace A376161

/-- `A068875(n+1)+A028304(2*n)` -/
def P16368867476855700373.Spec : Prop :=
  ∀ n, P16368867476855700373.a n = A376161 n

end A376161

/-! ## A376161.P11159357926922195829

`A104722(2*n+1)+A000108(n)`
-/

namespace A376161.P11159357926922195829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104722 (2 * n + 1) + A000108 n

end

end A376161.P11159357926922195829

namespace A376161

/-- `A104722(2*n+1)+A000108(n)` -/
def P11159357926922195829.Spec : Prop :=
  ∀ n, P11159357926922195829.a n = A376161 n

end A376161

/-!
# A376162: Number of ordered partitions of S={(i,j):1 <= i , j <= n} where for every i and j the pairs (i+1,j) and (i,j+1) are in a later part than the part containing the pair (i,j), and the pairs (i,j), (j,i) are in the same part.

The programs for A376162, there is no canonical definition to state claims against.
-/

/-! ## A376162.P10506374848282971680

`A383981(A014271(n))`
-/

namespace A376162.P10506374848282971680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383981 (A014271 n).toNat

end

end A376162.P10506374848282971680

/-!
# A376163: Positions of adjacent non-prime-powers (inclusive, so 1 is a prime-power) differing by 1.

The programs for A376163, there is no canonical definition to state claims against.
-/

/-! ## A376163.P1838365168860374427

`A375713(n+1)-1`
-/

namespace A376163.P1838365168860374427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375713 (n + 1) - 1

end

end A376163.P1838365168860374427

/-! ## A376163.P8632228584214548815

`eq[1, A375708(n+1)]`
-/

namespace A376163.P8632228584214548815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375708 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376163.P8632228584214548815

/-! ## A376163.P12019758957309118058

`comp[∑[A093555(n+1)]]`
-/

namespace A376163.P12019758957309118058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093555 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A376163.P12019758957309118058

/-! ## A376163.P12189948454275865040

`comp[record[A322841(n+1)]]`
-/

namespace A376163.P12189948454275865040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322841 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A376163.P12189948454275865040

/-! ## A376163.P1508823420864439438

`∑[A373672(n+1)]-1`
-/

namespace A376163.P1508823420864439438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A376163.P1508823420864439438

/-! ## A376163.P9494500183610576253

`comp[A375928(n+1)-1]`
-/

namespace A376163.P9494500183610576253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375928 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A376163.P9494500183610576253

/-! ## A376163.P10987936619962018172

`comp[A181062(n+1)-n]`
-/

namespace A376163.P10987936619962018172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A376163.P10987936619962018172

/-! ## A376163.P8919016793307605241

`comp[∑[∑[A376596(n+1)]]]`
-/

namespace A376163.P8919016793307605241
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A376163.P8919016793307605241

/-! ## A376163.P7728706917777131171

`comp[∑[A057820(n+1)-1]]`
-/

namespace A376163.P7728706917777131171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A376163.P7728706917777131171

/-!
# A376164: Maximum of the n-th maximal run of nonsquarefree numbers (increasing by 1 at a time).

The programs for A376164, the canonical program `A376164.P7708879350905486662` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376164 has offset 1).

The definition of A376164 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376164.P7708879350905486662

`eq[1, A081221(n+1)]+1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A376164

/-- `eq[1, A081221(n+1)]+1` -/
def P7708879350905486662.Spec : Prop :=
  ∀ n, (P7708879350905486662.a n : ℤ) = A376164 (n + 1)

theorem P7708879350905486662.correct : P7708879350905486662.Spec := by
  intro n
  simp only [A376164, Nat.add_sub_cancel]

end A376164

/-! ## A376164.P9633293229623041647

`A373415(n+1)+A053797(n+1)`
-/

namespace A376164.P9633293229623041647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373415 (n + 1) + A053797 (n + 1)

end

end A376164.P9633293229623041647

namespace A376164

/-- `A373415(n+1)+A053797(n+1)` -/
def P9633293229623041647.Spec : Prop :=
  ∀ n, P9633293229623041647.a n = A376164 (n + 1)

end A376164

/-! ## A376164.P10270108022299219650

`A072284(n+2)-1`
-/

namespace A376164.P10270108022299219650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072284 (n + 2) - 1

end

end A376164.P10270108022299219650

namespace A376164

/-- `A072284(n+2)-1` -/
def P10270108022299219650.Spec : Prop :=
  ∀ n, P10270108022299219650.a n = A376164 (n + 1)

end A376164

/-! ## A376164.P18383804044125974511

`∑[abs(Δ[A072284(n+1)])]`
-/

namespace A376164.P18383804044125974511
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072284 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376164.P18383804044125974511

namespace A376164

/-- `∑[abs(Δ[A072284(n+1)])]` -/
def P18383804044125974511.Spec : Prop :=
  ∀ n, P18383804044125974511.a n = A376164 (n + 1)

end A376164

/-! ## A376164.P14270728825868744288

`A162902(2*n+3)-1`
-/

namespace A376164.P14270728825868744288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162902 (2 * n + 3) - 1

end

end A376164.P14270728825868744288

namespace A376164

/-- `A162902(2*n+3)-1` -/
def P14270728825868744288.Spec : Prop :=
  ∀ n, P14270728825868744288.a n = A376164 (n + 1)

end A376164

/-! ## A376164.P6331494899381902345

`eq[2, A072909(n+1)]+2`
-/

namespace A376164.P6331494899381902345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072909 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A376164.P6331494899381902345

namespace A376164

/-- `eq[2, A072909(n+1)]+2` -/
def P6331494899381902345.Spec : Prop :=
  ∀ n, (P6331494899381902345.a n : ℤ) = A376164 (n + 1)

end A376164

/-! ## A376164.P11190391431936424484

`A067535(A053806(n+1))-1`
-/

namespace A376164.P11190391431936424484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067535 (A053806 (n + 1)).toNat - 1

end

end A376164.P11190391431936424484

namespace A376164

/-- `A067535(A053806(n+1))-1` -/
def P11190391431936424484.Spec : Prop :=
  ∀ n, P11190391431936424484.a n = A376164 (n + 1)

end A376164

/-! ## A376164.P5205339583871317248

`eq[A249442(n), A318650(n+1)]`
-/

namespace A376164.P5205339583871317248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318650 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376164.P5205339583871317248

namespace A376164

/-- `eq[A249442(n), A318650(n+1)]` -/
def P5205339583871317248.Spec : Prop :=
  ∀ n, (P5205339583871317248.a n : ℤ) = A376164 (n + 1)

end A376164

/-! ## A376164.P8610647713611559518

`eq[A249442(n), A347119(n+1)]`
-/

namespace A376164.P8610647713611559518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347119 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376164.P8610647713611559518

namespace A376164

/-- `eq[A249442(n), A347119(n+1)]` -/
def P8610647713611559518.Spec : Prop :=
  ∀ n, (P8610647713611559518.a n : ℤ) = A376164 (n + 1)

end A376164

/-! ## A376164.P5158258648272596501

`A070321(A053806(n+1))+A053797(n+1)`
-/

namespace A376164.P5158258648272596501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070321 (A053806 (n + 1)).toNat + A053797 (n + 1)

end

end A376164.P5158258648272596501

namespace A376164

/-- `A070321(A053806(n+1))+A053797(n+1)` -/
def P5158258648272596501.Spec : Prop :=
  ∀ n, P5158258648272596501.a n = A376164 (n + 1)

end A376164

/-! ## A376164.P914709282735799205

`A010848(A072284(n+2))`
-/

namespace A376164.P914709282735799205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010848 (A072284 (n + 2)).toNat

end

end A376164.P914709282735799205

namespace A376164

/-- `A010848(A072284(n+2))` -/
def P914709282735799205.Spec : Prop :=
  ∀ n, P914709282735799205.a n = A376164 (n + 1)

end A376164

/-! ## A376164.P11292937575921431605

`A378033(A373415(n+2))`
-/

namespace A376164.P11292937575921431605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378033 (A373415 (n + 2)).toNat

end

end A376164.P11292937575921431605

namespace A376164

/-- `A378033(A373415(n+2))` -/
def P11292937575921431605.Spec : Prop :=
  ∀ n, P11292937575921431605.a n = A376164 (n + 1)

end A376164

/-! ## A376164.P1361394910711609268

`eq[A057627(n+1), A105587(n)]`
-/

namespace A376164.P1361394910711609268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105587 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376164.P1361394910711609268

namespace A376164

/-- `eq[A057627(n+1), A105587(n)]` -/
def P1361394910711609268.Spec : Prop :=
  ∀ n, (P1361394910711609268.a n : ℤ) = A376164 (n + 1)

end A376164

/-! ## A376164.P10130006472927658471

`eq[A061538(n+1), A249442(n)]`
-/

namespace A376164.P10130006472927658471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376164.P10130006472927658471

namespace A376164

/-- `eq[A061538(n+1), A249442(n)]` -/
def P10130006472927658471.Spec : Prop :=
  ∀ n, (P10130006472927658471.a n : ℤ) = A376164 (n + 1)

end A376164

/-! ## A376164.P5310710099011379399

`eq[A105570(n), A378033(n+1)]`
-/

namespace A376164.P5310710099011379399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378033 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376164.P5310710099011379399

namespace A376164

/-- `eq[A105570(n), A378033(n+1)]` -/
def P5310710099011379399.Spec : Prop :=
  ∀ n, (P5310710099011379399.a n : ℤ) = A376164 (n + 1)

end A376164

/-! ## A376164.P9349153864935170226

`eq[A249442(n), A285328(n+1)]`
-/

namespace A376164.P9349153864935170226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285328 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376164.P9349153864935170226

namespace A376164

/-- `eq[A249442(n), A285328(n+1)]` -/
def P9349153864935170226.Spec : Prop :=
  ∀ n, (P9349153864935170226.a n : ℤ) = A376164 (n + 1)

end A376164

/-! ## A376164.P7730807921848944045

`eq[A249442(n), A344300(n+1)]`
-/

namespace A376164.P7730807921848944045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344300 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376164.P7730807921848944045

namespace A376164

/-- `eq[A249442(n), A344300(n+1)]` -/
def P7730807921848944045.Spec : Prop :=
  ∀ n, (P7730807921848944045.a n : ℤ) = A376164 (n + 1)

end A376164

/-! ## A376164.P1983444961794390587

`eq[A249442(n), A351307(n+1)]`
-/

namespace A376164.P1983444961794390587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351307 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376164.P1983444961794390587

namespace A376164

/-- `eq[A249442(n), A351307(n+1)]` -/
def P1983444961794390587.Spec : Prop :=
  ∀ n, (P1983444961794390587.a n : ℤ) = A376164 (n + 1)

end A376164

/-! ## A376164.P14253050223488314838

`eq[A249442(n), A351308(n+1)]`
-/

namespace A376164.P14253050223488314838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351308 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376164.P14253050223488314838

namespace A376164

/-- `eq[A249442(n), A351308(n+1)]` -/
def P14253050223488314838.Spec : Prop :=
  ∀ n, (P14253050223488314838.a n : ℤ) = A376164 (n + 1)

end A376164

/-! ## A376164.P2311093038755580922

`eq[A249442(n), A351309(n+1)]`
-/

namespace A376164.P2311093038755580922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351309 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376164.P2311093038755580922

namespace A376164

/-- `eq[A249442(n), A351309(n+1)]` -/
def P2311093038755580922.Spec : Prop :=
  ∀ n, (P2311093038755580922.a n : ℤ) = A376164 (n + 1)

end A376164

/-!
# A376167: Square array read by antidiagonals: T(n,k) = smallest r such that every n X k binary matrix with r ones contains a 2 X 2 submatrix of ones, with n, k >= 2.

The programs for A376167, there is no canonical definition to state claims against.
-/

/-! ## A376167.P7111570717485971034

`A400558(n+1)+1`
-/

namespace A376167.P7111570717485971034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400558 (n + 1) + 1

end

end A376167.P7111570717485971034

/-! ## A376167.P347416986815692722

`A020725(A400558(n+1))`
-/

namespace A376167.P347416986815692722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A400558 (n + 1)).toNat

end

end A376167.P347416986815692722

/-! ## A376167.P18320799977241485002

`A000005(3^A204002(n+1))`
-/

namespace A376167.P18320799977241485002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A204002 (n + 1) : ℤ))).toNat

end

end A376167.P18320799977241485002

/-! ## A376167.P4082649157346579919

`A000523(A250432(n+1)+A162826(n+1))`
-/

namespace A376167.P4082649157346579919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A250432 (n + 1) + A162826 (n + 1)).toNat

end

end A376167.P4082649157346579919

/-! ## A376167.P16041786882696330821

`A325169(A000040(n+1))+A204002(n+1)`
-/

namespace A376167.P16041786882696330821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325169 (A000040 (n + 1)).toNat + A204002 (n + 1)

end

end A376167.P16041786882696330821

/-!
# A376169: Row sums of A376168.

The programs for A376169, the canonical program `A376169.P10505771806800860813` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376169 has offset 1).

The definition of A376169 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376169.P10505771806800860813

`2*∑{d}[(n+1)², n+1+#]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A376169

/-- `2*∑{d}[(n+1)², n+1+#]` -/
def P10505771806800860813.Spec : Prop :=
  ∀ n, (P10505771806800860813.a n : ℤ) = A376169 (n + 1)

theorem P10505771806800860813.correct : P10505771806800860813.Spec := by
  intro n
  simp only [A376169, Nat.add_sub_cancel]

end A376169

/-! ## A376169.P6911436868753840589

`∑{d}[∑[2*n+1], 2*(n+1+#)]`
-/

namespace A376169.P6911436868753840589
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), 2 * (n + 1 + d)

end

end A376169.P6911436868753840589

namespace A376169

/-- `∑{d}[∑[2*n+1], 2*(n+1+#)]` -/
def P6911436868753840589.Spec : Prop :=
  ∀ n, (P6911436868753840589.a n : ℤ) = A376169 (n + 1)

end A376169

/-!
# A376170: Powerful numbers whose prime factorization has an even maximum exponent.

The programs for A376170, the canonical program `A376170.P4489844541037532386` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376170 has offset 1).

The definition of A376170 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376170.P10892373642728084243

`∩[A001694(n+1), A368714(n+1)]`
-/

namespace A376170.P10892373642728084243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376170.P10892373642728084243

namespace A376170

/-- `∩[A001694(n+1), A368714(n+1)]` -/
def P10892373642728084243.Spec : Prop :=
  ∀ n, (P10892373642728084243.a n : ℤ) = A376170 (n + 1)

end A376170

/-! ## A376170.P4047787675133970870

`∩[A368714(n+1), A377821(n+1)]`
-/

namespace A376170.P4047787675133970870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376170.P4047787675133970870

namespace A376170

/-- `∩[A368714(n+1), A377821(n+1)]` -/
def P4047787675133970870.Spec : Prop :=
  ∀ n, (P4047787675133970870.a n : ℤ) = A376170 (n + 1)

end A376170

/-! ## A376170.P4489844541037532386

`filter[A368714(n+1), A112526(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A376170

/-- `filter[A368714(n+1), A112526(#)]` -/
def P4489844541037532386.Spec : Prop :=
  ∀ n, P4489844541037532386.a n = A376170 (n + 1)

theorem P4489844541037532386.correct : P4489844541037532386.Spec := by
  intro n
  simp only [A376170, Nat.add_sub_cancel]

end A376170

/-!
# A376171: Powerful numbers whose prime factorization has an odd maximum exponent.

The programs for A376171, there is no canonical definition to state claims against.
-/

/-! ## A376171.P4493131278451712376

`∩[A001694(n+1), A376142(n+1)]`
-/

namespace A376171.P4493131278451712376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376171.P4493131278451712376

/-! ## A376171.P3652801495028521471

`∩[A102834(n+1), A376142(n+1)]`
-/

namespace A376171.P3652801495028521471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376171.P3652801495028521471

/-! ## A376171.P11173391267416535438

`∩[A320966(n+1), A376142(n+1)]`
-/

namespace A376171.P11173391267416535438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376171.P11173391267416535438

/-! ## A376171.P449746189212552923

`∩[A224866(n+1)-1, A376142(n+1)]`
-/

namespace A376171.P449746189212552923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224866 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376171.P449746189212552923

/-! ## A376171.P10704564927765545597

`∩[A376142(n+1), A076446(n)+a(n-1)]` with `a(0)=1`
-/

namespace A376171.P10704564927765545597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A076446 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376171.P10704564927765545597

/-! ## A376171.P6218859093792539132

`∩[A376142(n+1), A393924(n+1)]`
-/

namespace A376171.P6218859093792539132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376171.P6218859093792539132

/-! ## A376171.P10053886979640972741

`filter[A001694(n+1), A381955(#)]`
-/

namespace A376171.P10053886979640972741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381955 (f1 j).toNat = 1) n)

end

end A376171.P10053886979640972741

/-! ## A376171.P1916261179902528654

`filter[A102834(n+1), A381955(#)]`
-/

namespace A376171.P1916261179902528654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381955 (f1 j).toNat = 1) n)

end

end A376171.P1916261179902528654

/-! ## A376171.P12198998114386683200

`filter[A376142(n+1), A112526(#)]`
-/

namespace A376171.P12198998114386683200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A376171.P12198998114386683200

/-!
# A376172: Numbers whose prime factorization has an even minimum exponent.

The programs for A376172, there is no canonical definition to state claims against.
-/

/-! ## A376172.P17915514129874334835

`lt[A051904((n+1)²)%4, 1]+1`
-/

namespace A376172.P17915514129874334835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051904 ((n + 1) ^ 2)) 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A376172.P17915514129874334835

/-! ## A376172.P12245145755318065327

`filter[A304231(n+1), A112526(#)]`
-/

namespace A376172.P12245145755318065327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A376172.P12245145755318065327

/-! ## A376172.P18124145380541242987

`∩[A001694(n+1), A304231(n+1)]`
-/

namespace A376172.P18124145380541242987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376172.P18124145380541242987

/-! ## A376172.P16848828307660211675

`∩[A304231(n+1), A353485(n+1)]`
-/

namespace A376172.P16848828307660211675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376172.P16848828307660211675

/-! ## A376172.P3023267654551219403

`∩[A304231(n+1), A377821(n+1)]`
-/

namespace A376172.P3023267654551219403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376172.P3023267654551219403

/-!
# A376173: Numbers whose prime factorization has an odd minimum exponent that is larger than 1.

The programs for A376173, there is no canonical definition to state claims against.
-/

/-! ## A376173.P642996764343327840

`∩[A036966(n+1), A362591(n+1)]`
-/

namespace A376173.P642996764343327840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376173.P642996764343327840

/-!
# A376174: E.g.f. A(x) satisfies A'(x) = 1 + A(x)*A'(x)^4.

The programs for A376174, there is no canonical definition to state claims against.
-/

/-! ## A376174.P12495541075062339211

`A168550(or(A089178(n), A120974(n)))`
-/

namespace A376174.P12495541075062339211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168550 (Int.lor (A089178 n) (A120974 n)).toNat

end

end A376174.P12495541075062339211

/-!
# A376175: E.g.f. A(x) satisfies A'(x) = 1 + A(x)*A'(x)^3.

The programs for A376175, there is no canonical definition to state claims against.
-/

/-! ## A376175.P10702316838039715472

`A294734(A360344(n))`
-/

namespace A376175.P10702316838039715472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294734 (A360344 n).toNat

end

end A376175.P10702316838039715472

/-!
# A376176: G.f. A(x) satisfies x = A( x - A(x)^4/x^2 ).

The programs for A376176, there is no canonical definition to state claims against.
-/

/-! ## A376176.P1547879586236129957

`A384621(∑[n+1]+n)`
-/

namespace A376176.P1547879586236129957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384621 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A376176.P1547879586236129957

/-!
# A376180: Triangle read by rows (blocks). Each row consists of a permutation of the numbers of its constituents. The length of row number n is the n-th pentagonal number n(3n-1)/2 = A000326(n); see Comments.

The programs for A376180, there is no canonical definition to state claims against.
-/

/-! ## A376180.P17205026503432331600

`A376796(∑[n]+1)`
-/

namespace A376180.P17205026503432331600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376796 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A376180.P17205026503432331600

/-! ## A376180.P14598407938255702350

`A376276(A167614(n+1))`
-/

namespace A376180.P14598407938255702350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376276 (A167614 (n + 1)).toNat

end

end A376180.P14598407938255702350

/-! ## A376180.P17004335962598166555

`A376276(A179865(n+3)+3)`
-/

namespace A376180.P17004335962598166555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376276 (A179865 (n + 3) + 3).toNat

end

end A376180.P17004335962598166555

/-! ## A376180.P2875835290243000015

`A376276(A000217(n+3)-n)`
-/

namespace A376180.P2875835290243000015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376276 (A000217 (n + 3) - (n : ℤ)).toNat

end

end A376180.P2875835290243000015

/-!
# A376181: Array read by antidiagonals: Start from 1 and thereafter add gnomons of terms for each t >= 2 with width a(t-1).

The programs for A376181, there is no canonical definition to state claims against.
-/

/-! ## A376181.P10136007855435148016

`A366989(3^A051125(n+1))`
-/

namespace A376181.P10136007855435148016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366989 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A051125 (n + 1) : ℤ))).toNat

end

end A376181.P10136007855435148016

/-! ## A376181.P2675216830029574763

`A001221(A051125(n+1)!)+1`
-/

namespace A376181.P2675216830029574763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A051125 (n + 1)).toNat) + 1

end

end A376181.P2675216830029574763

/-! ## A376181.P13686476020639746112

`A000267(A344835(n)%A096366(n+1))`
-/

namespace A376181.P13686476020639746112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (Int.tmod (A344835 n) (A096366 (n + 1))).toNat

end

end A376181.P13686476020639746112

/-! ## A376181.P6264684459282913627

`A106494(2^A087061(n))`
-/

namespace A376181.P6264684459282913627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106494 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A087061 n : ℤ))).toNat

end

end A376181.P6264684459282913627

/-! ## A376181.P17578341211658756124

`A257993(A221438(n+1))`
-/

namespace A376181.P17578341211658756124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (A221438 (n + 1)).toNat

end

end A376181.P17578341211658756124

/-!
# A376182: Triangle T read by rows: T(n, k) = (2*n^2 + 4*n + 1 - (-1)^n) / 4 - (1 + (-1)^k) * (n - k) - k.

The programs for A376182, there is no canonical definition to state claims against.
-/

/-! ## A376182.P16903972759140113672

`A097284(A194900(n+1))`
-/

namespace A376182.P16903972759140113672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097284 (A194900 (n + 1)).toNat

end

end A376182.P16903972759140113672

/-!
# A376185: a(n) = denominator of the sum S(n) defined in A376062.

The programs for A376185, there is no canonical definition to state claims against.
-/

/-! ## A376185.P6651122996719999148

`a(n-1)+(a(n-1)/2)²` with `a(0)=12`
-/

namespace A376185.P6651122996719999148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [12] fun n a =>
  a (n - 1) + (a (n - 1) / 2) ^ 2

end

end A376185.P6651122996719999148

/-! ## A376185.P11949806262290612132

`4*A004168(n)`
-/

namespace A376185.P11949806262290612132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A004168 n

end

end A376185.P11949806262290612132

/-!
# A376186: a(n) = denominator of the sum S(n) defined in A376184.

The programs for A376186, there is no canonical definition to state claims against.
-/

/-! ## A376186.P2548373489669425771

`a(n-1)*A376184(n+1)` with `a(0)=8`
-/

namespace A376186.P2548373489669425771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) * A376184 (n + 1)

end

end A376186.P2548373489669425771

/-!
# A376187: For a line L in the plane, let C(L) denote the number of prime points [k, prime(k)] on L, and let M(L) denote the maximum prime(k) for any of these points; a(n) = minimum M(L) over all lines with C(L) = n, or -1 if there is no such line.

The programs for A376187, there is no canonical definition to state claims against.
-/

/-! ## A376187.P16981654910732141307

`A105792(A056606(n+1))`
-/

namespace A376187.P16981654910732141307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105792 (A056606 (n + 1)).toNat

end

end A376187.P16981654910732141307

/-! ## A376187.P9247484957407199444

`A319333(floor(sqrt(A218684(n+3))))`
-/

namespace A376187.P9247484957407199444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319333 (Int.sqrt (A218684 (n + 3))).toNat

end

end A376187.P9247484957407199444

/-!
# A376191: Indices of prime terms in A375564, and also the index where the n-th prime appears.

The programs for A376191, there is no canonical definition to state claims against.
-/

/-! ## A376191.P5241289491483307631

`A376189(A000040(n+1))`
-/

namespace A376191.P5241289491483307631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376189 (A000040 (n + 1)).toNat

end

end A376191.P5241289491483307631

/-! ## A376191.P8882563318594100295

`A376189(A008578(n+2))`
-/

namespace A376191.P8882563318594100295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376189 (A008578 (n + 2)).toNat

end

end A376191.P8882563318594100295

/-! ## A376191.P11412625869162171279

`A376189(A182986(n+2))`
-/

namespace A376191.P11412625869162171279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376189 (A182986 (n + 2)).toNat

end

end A376191.P11412625869162171279

/-! ## A376191.P2057463123625613083

`A376189(eq[1, A003415(n)])`
-/

namespace A376191.P2057463123625613083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376189 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A376191.P2057463123625613083

/-! ## A376191.P16110510293710513369

`A376189(eq[1, A032741(n)])`
-/

namespace A376191.P16110510293710513369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376189 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A376191.P16110510293710513369

/-!
# A376192: Indices n where a run of primes begins in A375564.

The programs for A376192, there is no canonical definition to state claims against.
-/

/-! ## A376192.P9668045717988680373

`A376196(n+1)+1-A376195(n+1)`
-/

namespace A376192.P9668045717988680373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376196 (n + 1) + (1 - A376195 (n + 1))

end

end A376192.P9668045717988680373

/-! ## A376192.P11432854555210201389

`A376189(A376193(n+1))`
-/

namespace A376192.P11432854555210201389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376189 (A376193 (n + 1)).toNat

end

end A376192.P11432854555210201389

/-!
# A376193: Primes that begin a run of consecutive primes in A375564.

The programs for A376193, there is no canonical definition to state claims against.
-/

/-! ## A376193.P815524113885644376

`A376194(3*a(n-1))` with `a(0)=2`
-/

namespace A376193.P815524113885644376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A376194 (3 * a (n - 1)).toNat

end

end A376193.P815524113885644376

/-! ## A376193.P14321490456080960350

`A376194(A003203(n))`
-/

namespace A376193.P14321490456080960350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376194 (A003203 n).toNat

end

end A376193.P14321490456080960350

/-! ## A376193.P4671587554761294923

`A376194(A029580(n))`
-/

namespace A376193.P4671587554761294923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376194 (A029580 n).toNat

end

end A376193.P4671587554761294923

/-! ## A376193.P290555343791649456

`A376194(A033484(n))`
-/

namespace A376193.P290555343791649456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376194 (A033484 n).toNat

end

end A376193.P290555343791649456

/-! ## A376193.P8122423940496023429

`A376194(A049016(n))`
-/

namespace A376193.P8122423940496023429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376194 (A049016 n).toNat

end

end A376193.P8122423940496023429

/-!
# A376195: Length of n-th run of consecutive primes in A375564.

The programs for A376195, there is no canonical definition to state claims against.
-/

/-! ## A376195.P13298829098059897921

`A376196(n+1)+1-A376192(n+1)`
-/

namespace A376195.P13298829098059897921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376196 (n + 1) + 1 - A376192 (n + 1)

end

end A376195.P13298829098059897921

/-! ## A376195.P12881624612666726474

`Δ[A000720(A376193(n+1))]`
-/

namespace A376195.P12881624612666726474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A376193 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376195.P12881624612666726474

/-!
# A376196: Index in A375564 where n-th group of successive primes ends.

The programs for A376196, there is no canonical definition to state claims against.
-/

/-! ## A376196.P2605880238005520772

`A376189(A376197(n+1))`
-/

namespace A376196.P2605880238005520772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376189 (A376197 (n + 1)).toNat

end

end A376196.P2605880238005520772

/-! ## A376196.P4583208989209976843

`A376191(∑[A376195(n+1)])`
-/

namespace A376196.P4583208989209976843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376191 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A376196.P4583208989209976843

/-!
# A376197: Last prime in n-th run of successive primes in A375564.

The programs for A376197, there is no canonical definition to state claims against.
-/

/-! ## A376197.P12806338062118211184

`A000040(∑[A376195(n+1)])`
-/

namespace A376197.P12806338062118211184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A376197.P12806338062118211184

/-! ## A376197.P9355009740067868505

`A065769(A376193(n+2))`
-/

namespace A376197.P9355009740067868505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065769 (A376193 (n + 2)).toNat

end

end A376197.P9355009740067868505

/-! ## A376197.P9409651491716107767

`A349122(A376193(n+2)-A000007(n))`
-/

namespace A376197.P9409651491716107767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349122 (A376193 (n + 2) - A000007 n).toNat

end

end A376197.P9409651491716107767

/-! ## A376197.P467180870111229868

`A349122(A376193(n+2)%A072760(n+1))`
-/

namespace A376197.P467180870111229868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349122 (Int.tmod (A376193 (n + 2)) (A072760 (n + 1))).toNat

end

end A376197.P467180870111229868

