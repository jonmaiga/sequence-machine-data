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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
# A151611: a(1) = 4; for n >= 1, a(n+1) = 4 + binomial(a(n), 2).

The programs for A151611, there is no canonical definition to state claims against.
-/

/-! ## A151611.P12593588313158965024

`C(a(n-1), 2)+4` with `a(0)=4`
-/

namespace A151611.P12593588313158965024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.choose (a (n - 1)) 2 + 4

end

end A151611.P12593588313158965024

/-! ## A151611.P8363132567131797958

`(a(n-1)²-a(n-1))/2+4` with `a(0)=4`
-/

namespace A151611.P8363132567131797958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  (a (n - 1) ^ 2 - a (n - 1)) / 2 + 4

end

end A151611.P8363132567131797958

/-! ## A151611.P17724306546301653528

`(a(n-1)-1)/2*a(n-1)+4` with `a(0)=4`
-/

namespace A151611.P17724306546301653528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  (a (n - 1) - 1) / 2 * a (n - 1) + 4

end

end A151611.P17724306546301653528

/-! ## A151611.P6389805265848932077

`4-(1-a(n-1))/2*a(n-1)` with `a(0)=4`
-/

namespace A151611.P6389805265848932077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  4 - (1 - a (n - 1)) / 2 * a (n - 1)

end

end A151611.P6389805265848932077

/-!
# A151612: Values of k arising in A160518: numbers k such that (2*k^3 - 1, 2*k^3 + 1) are twin primes.

The programs for A151612, there is no canonical definition to state claims against.
-/

/-! ## A151612.P11454218862361568458

`∩[A168550(n+1), A214289(n+1)]`
-/

namespace A151612.P11454218862361568458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151612.P11454218862361568458

/-!
# A151613: Consider a permutation K = (k(1),k(2),...,k(A000005(n))) of the positive divisors of n. Consider the partial sums S = Sum_{j=1..m} k(j), 1 <= m <= A000005(n). Then a(n) is the maximum number, for any permutation K, of partial sums S that are coprime to n.

The programs for A151613, there is no canonical definition to state claims against.
-/

/-! ## A151613.P15994024287185772940

`A267866(A339612(n+1))+A069157(n+1)`
-/

namespace A151613.P15994024287185772940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267866 (A339612 (n + 1)).toNat + A069157 (n + 1)

end

end A151613.P15994024287185772940

/-! ## A151613.P13926627875950285740

`A344589(n+1)+A336834(A344592(n+1))`
-/

namespace A151613.P13926627875950285740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344589 (n + 1) + A336834 (A344592 (n + 1)).toNat

end

end A151613.P13926627875950285740

/-! ## A151613.P17767260993688111777

`A085082(n+1)-A151763(A125951(n+1))`
-/

namespace A151613.P17767260993688111777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085082 (n + 1) - A151763 (A125951 (n + 1)).toNat

end

end A151613.P17767260993688111777

/-! ## A151613.P3407466065445841158

`A267866(A220909(n)/2)+A069157(n+1)`
-/

namespace A151613.P3407466065445841158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267866 (SequenceMachineLib.roundAway ((A220909 n : ℚ) / 2)).toNat + A069157 (n + 1)

end

end A151613.P3407466065445841158

/-! ## A151613.P4337046311483355510

`xor(A010051(A222436(n+5)), A073093(n+1))`
-/

namespace A151613.P4337046311483355510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010051 (A222436 (n + 5)).toNat) (A073093 (n + 1))

end

end A151613.P4337046311483355510

/-!
# A151616: Row sums of A118354.

The programs for A151616, there is no canonical definition to state claims against.
-/

/-! ## A151616.P2237649299475994056

`A008621(n!*∑[n]+1-ceil(2^(n-1)))`
-/

namespace A151616.P2237649299475994056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (((Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j) + 1 : ℕ) : ℤ) - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉).toNat

end

end A151616.P2237649299475994056

/-! ## A151616.P14427409106804537288

`A106466(n!*∑[n]+1-ceil(2^(n-1)))`
-/

namespace A151616.P14427409106804537288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106466 (((Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j) + 1 : ℕ) : ℤ) - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉).toNat

end

end A151616.P14427409106804537288

/-!
# A151617: Row sums of A153521.

The programs for A151617, there is no canonical definition to state claims against.
-/

/-! ## A151617.P13772026730235751730

`∏[p?[xor(n, a(n-1)-n)]]` with `a(0)=2, a(1)=11`
-/

namespace A151617.P13772026730235751730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 11] fun n f2 =>
  Int.xor (n : ℤ) (f2 (n - 1) - (n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A151617.P13772026730235751730

/-!
# A151619: Weight distribution of [256,29,96] extended binary primitive BCH (or XBCH) code.

The programs for A151619, there is no canonical definition to state claims against.
-/

/-! ## A151619.P2791602245465735173

`A293018(A288972(n)%A064610(n+1))`
-/

namespace A151619.P2791602245465735173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293018 (Int.tmod (A288972 n) (A064610 (n + 1))).toNat

end

end A151619.P2791602245465735173

/-! ## A151619.P12888323863766745775

`A293018(A146575(n+1)%A064610(n+1))`
-/

namespace A151619.P12888323863766745775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293018 (Int.tmod (A146575 (n + 1)) (A064610 (n + 1))).toNat

end

end A151619.P12888323863766745775

/-!
# A151620: Weight distribution of [256,37,92] extended binary primitive BCH (or XBCH) code.

The programs for A151620, there is no canonical definition to state claims against.
-/

/-! ## A151620.P5999713027332850790

`A151878(A004274(2*n+1))+A151878(4*n)`
-/

namespace A151620.P5999713027332850790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 (A004274 (2 * n + 1)).toNat + A151878 (4 * n)

end

end A151620.P5999713027332850790

/-! ## A151620.P16230373710045831526

`A151878(A131098(n+1))+A151878(A008586(n))`
-/

namespace A151620.P16230373710045831526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 (A131098 (n + 1)).toNat + A151878 (A008586 n).toNat

end

end A151620.P16230373710045831526

/-! ## A151620.P4633835882245255755

`A007913(n+1)*A151660(A126290(n))`
-/

namespace A151620.P4633835882245255755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A151660 (A126290 n).toNat

end

end A151620.P4633835882245255755

/-! ## A151620.P8650886204416554887

`A007318(n+3)*A151660(A126290(n))`
-/

namespace A151620.P8650886204416554887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 3) * A151660 (A126290 n).toNat

end

end A151620.P8650886204416554887

/-! ## A151620.P15713453442292547496

`A000005(A000010(n+2))*A151660(A126290(n))`
-/

namespace A151620.P15713453442292547496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000010 (n + 2)).toNat * A151660 (A126290 n).toNat

end

end A151620.P15713453442292547496

/-!
# A151621: Weight distribution of [256,45,88] extended binary primitive BCH (or XBCH) code.

The programs for A151621, there is no canonical definition to state claims against.
-/

/-! ## A151621.P12047373597355115872

`A151622(2*n)`
-/

namespace A151621.P12047373597355115872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 (2 * n)

end

end A151621.P12047373597355115872

/-! ## A151621.P11550032664885714971

`and(-3, A151622(A005843(n)))`
-/

namespace A151621.P11550032664885714971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A151622 (A005843 n).toNat)

end

end A151621.P11550032664885714971

/-! ## A151621.P8166454308469300508

`floor(A151622(A004277(n))+acot(n))`
-/

namespace A151621.P8166454308469300508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A151622 (A004277 n).toNat : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A151621.P8166454308469300508

/-! ## A151621.P5912653591626348050

`A151622(A004277(n))+A000007(n)`
-/

namespace A151621.P5912653591626348050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 (A004277 n).toNat + A000007 n

end

end A151621.P5912653591626348050

/-! ## A151621.P17179047979048632118

`A151622(A004277(n))+A151622(n)`
-/

namespace A151621.P17179047979048632118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 (A004277 n).toNat + A151622 n

end

end A151621.P17179047979048632118

/-!
# A151622: Weight distribution of [256,47,86] extended binary primitive BCH (or XBCH) code.

The programs for A151622, there is no canonical definition to state claims against.
-/

/-! ## A151622.P3109349280035678046

`A151933(record[abs(xor(1, n-2))])+A151933(2*n)`
-/

namespace A151622.P3109349280035678046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 ((n : ℤ) - 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A151933 (2 * n)

end

end A151622.P3109349280035678046

/-! ## A151622.P17925708997998867041

`A151933(2*n)+A151933(record[A029579(n)])`
-/

namespace A151622.P17925708997998867041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 (2 * n) + A151933 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A151622.P17925708997998867041

/-! ## A151622.P9288633102554954009

`A151933(2*n)+A151933(A004274(n+1))`
-/

namespace A151622.P9288633102554954009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 (2 * n) + A151933 (A004274 (n + 1)).toNat

end

end A151622.P9288633102554954009

/-! ## A151622.P8371838299281394312

`A151933(2*n)+A151933(A004280(n+1))`
-/

namespace A151622.P8371838299281394312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 (2 * n) + A151933 (A004280 (n + 1)).toNat

end

end A151622.P8371838299281394312

/-! ## A151622.P17132074472018737275

`A151933(2*n)+A151933(A004281(n+1))`
-/

namespace A151622.P17132074472018737275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 (2 * n) + A151933 (A004281 (n + 1)).toNat

end

end A151622.P17132074472018737275

/-!
# A151623: Weight distribution of [256,55,64] extended binary primitive BCH (or XBCH) code.

The programs for A151623, there is no canonical definition to state claims against.
-/

/-! ## A151623.P13271924757124491524

`A151934(2*n)+A151934(A004280(n+1))`
-/

namespace A151623.P13271924757124491524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151934 (2 * n) + A151934 (A004280 (n + 1)).toNat

end

end A151623.P13271924757124491524

/-! ## A151623.P1579338118568993237

`A151934(2*n)+A151934(A004281(n+1))`
-/

namespace A151623.P1579338118568993237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151934 (2 * n) + A151934 (A004281 (n + 1)).toNat

end

end A151623.P1579338118568993237

/-! ## A151623.P16601826433431440159

`A151660(xor(n^(n%2), ∏{p}[n+1, #*val(n+1, #)]))`
-/

namespace A151623.P16601826433431440159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151660 (Nat.xor (n ^ (n % 2)) (∏ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p))

end

end A151623.P16601826433431440159

/-! ## A151623.P16010566699096779049

`C(A151660(n), A028920(n)!)`
-/

namespace A151623.P16010566699096779049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A151660 n).toNat (Nat.factorial (A028920 n).toNat)

end

end A151623.P16010566699096779049

/-! ## A151623.P15255414529784698284

`C(A151660(n), A086767(n)!)`
-/

namespace A151623.P15255414529784698284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A151660 n).toNat (Nat.factorial (A086767 n).toNat)

end

end A151623.P15255414529784698284

/-!
# A151624: Number of permutations of 2 indistinguishable copies of 1..n with exactly 2 adjacent element pairs in decreasing order.

The programs for A151624, the canonical program `A151624.P4252746170593615957` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151624 has offset 1).

The definition of A151624 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151624.P4252746170593615957

`6^(n+1)-(2*(n+1)+1)*3^(n+1)+(n+1)*(2*(n+1)+1)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A151624

/-- `6^(n+1)-(2*(n+1)+1)*3^(n+1)+(n+1)*(2*(n+1)+1)` -/
def P4252746170593615957.Spec : Prop :=
  ∀ n, P4252746170593615957.a n = A151624 (n + 1)

theorem P4252746170593615957.correct : P4252746170593615957.Spec := by
  intro n
  simp only [A151624, Nat.add_sub_cancel]

end A151624

/-!
# A151625: Number of permutations of 2 indistinguishable copies of 1..n with exactly 3 adjacent element pairs in decreasing order.

The programs for A151625, there is no canonical definition to state claims against.
-/

/-! ## A151625.P8581064940254499344

`A154283(A087475(n))-A087049(A152494(n+1))`
-/

namespace A151625.P8581064940254499344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154283 (A087475 n).toNat - A087049 (A152494 (n + 1)).toNat

end

end A151625.P8581064940254499344

/-!
# A151627: Number of permutations of 2 indistinguishable copies of 1..n with exactly 5 adjacent element pairs in decreasing order.

The programs for A151627, there is no canonical definition to state claims against.
-/

/-! ## A151627.P17388612159914676400

`A353451(A014505(n)+2)`
-/

namespace A151627.P17388612159914676400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353451 (A014505 n + 2).toNat

end

end A151627.P17388612159914676400

/-!
# A151628: Number of permutations of 2 indistinguishable copies of 1..n with exactly 6 adjacent element pairs in decreasing order.

The programs for A151628, there is no canonical definition to state claims against.
-/

/-! ## A151628.P16898354697083111871

`A219666(C(record[xor(n, 2*n)+1], 13))`
-/

namespace A151628.P16898354697083111871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219666 (Nat.choose (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 13)

end

end A151628.P16898354697083111871

/-!
# A151630: Number of permutations of 2 indistinguishable copies of 1..n with exactly 8 adjacent element pairs in decreasing order.

The programs for A151630, there is no canonical definition to state claims against.
-/

/-! ## A151630.P15763462101205749170

`A151624(A051240(n))`
-/

namespace A151630.P15763462101205749170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151624 (A051240 n).toNat

end

end A151630.P15763462101205749170

/-! ## A151630.P13274135322959579036

`A151624(A049856(n)!)`
-/

namespace A151630.P13274135322959579036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151624 (Nat.factorial (A049856 n).toNat)

end

end A151630.P13274135322959579036

/-!
# A151632: Number of permutations of 3 indistinguishable copies of 1..n with exactly 2 adjacent element pairs in decreasing order.

The programs for A151632, the canonical program `A151632.P8005264565305265464` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151632 has offset 1).

The definition of A151632 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151632.P8005264565305265464

`10^(n+1)-(3*(n+1)+1)*4^(n+1)+3*(n+1)*(3*(n+1)+1)/2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A151632

/-- `10^(n+1)-(3*(n+1)+1)*4^(n+1)+3*(n+1)*(3*(n+1)+1)/2` -/
def P8005264565305265464.Spec : Prop :=
  ∀ n, P8005264565305265464.a n = (A151632 (n + 1) : ℚ)

end A151632

/-!
# A151636: Number of permutations of 3 indistinguishable copies of 1..n with exactly 6 adjacent element pairs in decreasing order.

The programs for A151636, there is no canonical definition to state claims against.
-/

/-! ## A151636.P3060831736666186354

`A174266(A106984(n+1))%A241842(2*n+3)`
-/

namespace A151636.P3060831736666186354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174266 (A106984 (n + 1)).toNat) (A241842 (2 * n + 3))

end

end A151636.P3060831736666186354

/-!
# A151639: Number of permutations of 3 indistinguishable copies of 1..n with exactly 9 adjacent element pairs in decreasing order.

The programs for A151639, there is no canonical definition to state claims against.
-/

/-! ## A151639.P1919448605444541910

`A151633(A184240(C(2*n, n)))`
-/

namespace A151639.P1919448605444541910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151633 (A184240 (Nat.choose (2 * n) n)).toNat

end

end A151639.P1919448605444541910

/-!
# A151640: Number of permutations of 4 indistinguishable copies of 1..n with exactly 2 adjacent element pairs in decreasing order.

The programs for A151640, the canonical program `A151640.P6105211994563394791` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151640 has offset 1).

The definition of A151640 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151640.P6105211994563394791

`15^(n+1)-(4*(n+1)+1)*5^(n+1)+2*(n+1)*(4*(n+1)+1)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A151640

/-- `15^(n+1)-(4*(n+1)+1)*5^(n+1)+2*(n+1)*(4*(n+1)+1)` -/
def P6105211994563394791.Spec : Prop :=
  ∀ n, P6105211994563394791.a n = A151640 (n + 1)

theorem P6105211994563394791.correct : P6105211994563394791.Spec := by
  intro n
  simp only [A151640, Nat.add_sub_cancel]

end A151640

/-!
# A151647: Number of permutations of 5 indistinguishable copies of 1..n with exactly 2 adjacent element pairs in decreasing order.

The programs for A151647, the canonical program `A151647.P14797964563736485906` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151647 has offset 1).

The definition of A151647 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151647.P14797964563736485906

`21^(n+1)-(5*(n+1)+1)*6^(n+1)+5*(n+1)*(5*(n+1)+1)/2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A151647

/-- `21^(n+1)-(5*(n+1)+1)*6^(n+1)+5*(n+1)*(5*(n+1)+1)/2` -/
def P14797964563736485906.Spec : Prop :=
  ∀ n, P14797964563736485906.a n = (A151647 (n + 1) : ℚ)

end A151647

/-!
# A151651: Number of permutations of 6 indistinguishable copies of 1..n with exactly 2 adjacent element pairs in decreasing order.

The programs for A151651, the canonical program `A151651.P5678623882238220178` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151651 has offset 1).

The definition of A151651 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151651.P5678623882238220178

`28^(n+1)-(6*(n+1)+1)*7^(n+1)+3*(n+1)*(6*(n+1)+1)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A151651

/-- `28^(n+1)-(6*(n+1)+1)*7^(n+1)+3*(n+1)*(6*(n+1)+1)` -/
def P5678623882238220178.Spec : Prop :=
  ∀ n, P5678623882238220178.a n = A151651 (n + 1)

theorem P5678623882238220178.correct : P5678623882238220178.Spec := by
  intro n
  simp only [A151651, Nat.add_sub_cancel]

end A151651

/-!
# A151656: Number of permutations of 7 indistinguishable copies of 1..n with exactly 2 adjacent element pairs in decreasing order.

The programs for A151656, the canonical program `A151656.P4160280279126442219` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151656 has offset 1).

The definition of A151656 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151656.P4160280279126442219

`36^(n+1)-(7*(n+1)+1)*8^(n+1)+7*(n+1)*(7*(n+1)+1)/2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A151656

/-- `36^(n+1)-(7*(n+1)+1)*8^(n+1)+7*(n+1)*(7*(n+1)+1)/2` -/
def P4160280279126442219.Spec : Prop :=
  ∀ n, P4160280279126442219.a n = (A151656 (n + 1) : ℚ)

end A151656

/-!
# A151658: Number of permutations of 8 indistinguishable copies of 1..n with exactly 2 adjacent element pairs in decreasing order.

The programs for A151658, the canonical program `A151658.P7853633605197631592` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151658 has offset 1).

The definition of A151658 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151658.P7853633605197631592

`45^(n+1)-(8*(n+1)+1)*9^(n+1)+4*(n+1)*(8*(n+1)+1)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A151658

/-- `45^(n+1)-(8*(n+1)+1)*9^(n+1)+4*(n+1)*(8*(n+1)+1)` -/
def P7853633605197631592.Spec : Prop :=
  ∀ n, P7853633605197631592.a n = A151658 (n + 1)

theorem P7853633605197631592.correct : P7853633605197631592.Spec := by
  intro n
  simp only [A151658, Nat.add_sub_cancel]

end A151658

/-!
# A151660: Weight distribution of [256,63,64] extended binary primitive BCH (or XBCH) code.

The programs for A151660, there is no canonical definition to state claims against.
-/

/-! ## A151660.P13831111356325169449

`A151935(2*n)+A151935(A004280(n+1))`
-/

namespace A151660.P13831111356325169449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151935 (2 * n) + A151935 (A004280 (n + 1)).toNat

end

end A151660.P13831111356325169449

/-! ## A151660.P13299438745785562923

`A151935(A004273(n))+A151935(A004277(n))`
-/

namespace A151660.P13299438745785562923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151935 (A004273 n).toNat + A151935 (A004277 n).toNat

end

end A151660.P13299438745785562923

/-!
# A151661: Exponents in g.f. Product_{k>=2} (1 - x^{F_k}) where F_k are the Fibonacci numbers.

The programs for A151661, there is no canonical definition to state claims against.
-/

/-! ## A151661.P13668545972313120718

`comp[A329003(n+1)]`
-/

namespace A151661.P13668545972313120718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A151661.P13668545972313120718

/-! ## A151661.P11566743199180148912

`lt[0, abs(A093996(n))]`
-/

namespace A151661.P11566743199180148912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A093996 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A151661.P11566743199180148912

/-! ## A151661.P16344078828700574814

`lt[0, A000119(n)%2]`
-/

namespace A151661.P16344078828700574814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000119 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A151661.P16344078828700574814

/-! ## A151661.P12413130212886119628

`eq[1, and(1, A239002(floor(ϕ*(n+1))-1))]`
-/

namespace A151661.P12413130212886119628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A239002 (⌊Real.goldenRatio * (n + 1 : ℝ)⌋ - 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A151661.P12413130212886119628

/-! ## A151661.P16832741763569196291

`eq[0, A007814(A000119(n))]`
-/

namespace A151661.P16832741763569196291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000119 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A151661.P16832741763569196291

/-! ## A151661.P16516358127271600755

`eq[1, A001511(A000119(n)²)]`
-/

namespace A151661.P16516358127271600755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A000119 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A151661.P16516358127271600755

/-! ## A151661.P18295742837022634700

`eq[1, A006519(A000119(n)²)]`
-/

namespace A151661.P18295742837022634700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A000119 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A151661.P18295742837022634700

/-! ## A151661.P16407885162737669064

`eq[2, A000034(A000119(n)²)]`
-/

namespace A151661.P16407885162737669064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A000119 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A151661.P16407885162737669064

/-! ## A151661.P7330509391433887151

`eq[2, A020639(A000119(n)+1)]`
-/

namespace A151661.P7330509391433887151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000119 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A151661.P7330509391433887151

/-! ## A151661.P1037669076422785791

`lt[2, A020639(A000119(n)+2)]`
-/

namespace A151661.P1037669076422785791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000119 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A151661.P1037669076422785791

/-!
# A151662: The first of three Hofstadter parents-child sequences of Thomas Stoll.

The programs for A151662, there is no canonical definition to state claims against.
-/

/-! ## A151662.P6954497797616611892

`n-A151663(a(n-1))` with `a(0)=1`
-/

namespace A151662.P6954497797616611892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - A151663 (a (n - 1)).toNat

end

end A151662.P6954497797616611892

/-! ## A151662.P12231429313339124301

`n-A229942(a(n-1)²+1)` with `a(0)=1`
-/

namespace A151662.P12231429313339124301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - A229942 (a (n - 1) ^ 2 + 1).toNat

end

end A151662.P12231429313339124301

/-! ## A151662.P2344322115011573278

`A010892(A217725(n+1))+A004396(n)`
-/

namespace A151662.P2344322115011573278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A217725 (n + 1)).toNat + A004396 n

end

end A151662.P2344322115011573278

/-! ## A151662.P14960092387456532180

`A194640(n)+A010892(A217725(n+1))`
-/

namespace A151662.P14960092387456532180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 n + A010892 (A217725 (n + 1)).toNat

end

end A151662.P14960092387456532180

/-! ## A151662.P9001068425544152095

`A000120(A290213(n)-A290223(n+1))`
-/

namespace A151662.P9001068425544152095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A290213 n - A290223 (n + 1)).toNat

end

end A151662.P9001068425544152095

/-!
# A151663: The second of three Hofstadter parents-child sequences of Thomas Stoll.

The programs for A151663, there is no canonical definition to state claims against.
-/

/-! ## A151663.P843791182405828582

`n-A151664(a(n-1))` with `a(0)=0`
-/

namespace A151663.P843791182405828582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - A151664 (a (n - 1)).toNat

end

end A151663.P843791182405828582

/-! ## A151663.P4550469985047557814

`A000120(A001255(n)-A341279(n))`
-/

namespace A151663.P4550469985047557814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A001255 n - A341279 n).toNat

end

end A151663.P4550469985047557814

/-! ## A151663.P5165493475765579818

`n-A001222(abs(A351771(n)))`
-/

namespace A151663.P5165493475765579818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001222 |A351771 n|.toNat

end

end A151663.P5165493475765579818

/-! ## A151663.P3414213277316676620

`A033099(eq[1, A033103(n+1)])`
-/

namespace A151663.P3414213277316676620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033099 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A151663.P3414213277316676620

/-! ## A151663.P4654030805511050153

`A007895(A354788(2*n)+A243348(2*n+1))`
-/

namespace A151663.P4654030805511050153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A354788 (2 * n) + A243348 (2 * n + 1)).toNat

end

end A151663.P4654030805511050153

/-!
# A151664: The third of three Hofstadter parents-child sequences of Thomas Stoll.

The programs for A151664, there is no canonical definition to state claims against.
-/

/-! ## A151664.P2428603534569196277

`n-A151662(a(n-1))` with `a(0)=0`
-/

namespace A151664.P2428603534569196277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - A151662 (a (n - 1)).toNat

end

end A151664.P2428603534569196277

/-!
# A151665: G.f.: Product_{k>=0} (1 + 3*x^(4^k)).

The programs for A151665, the canonical program `A151665.P7749028135867019320` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151665 has offset 0).

The definition of A151665 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151665.P8035159118755252439

`A151669(n)^log2(3)`
-/

namespace A151665.P8035159118755252439
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A151669 n : ℝ) ^ (Real.logb 2 (3 : ℝ))

end

end A151665.P8035159118755252439

namespace A151665

/-- `A151669(n)^log2(3)` -/
def P8035159118755252439.Spec : Prop :=
  ∀ n, P8035159118755252439.a n = (A151665 n : ℝ)

end A151665

/-! ## A151665.P7749028135867019320

`A006046(A151669(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A151665

/-- `A006046(A151669(n))` -/
def P7749028135867019320.Spec : Prop :=
  ∀ n, P7749028135867019320.a n = A151665 n

theorem P7749028135867019320.correct : P7749028135867019320.Spec := by
  intro n
  simp only [A151665]

end A151665

/-! ## A151665.P12946081542291380594

`A006046(sqrt(A151673(n)))`
-/

namespace A151665.P12946081542291380594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (SequenceMachineLib.roundAway (Real.sqrt (A151673 n : ℝ))).toNat

end

end A151665.P12946081542291380594

namespace A151665

/-- `A006046(sqrt(A151673(n)))` -/
def P12946081542291380594.Spec : Prop :=
  ∀ n, P12946081542291380594.a n = A151665 n

end A151665

/-! ## A151665.P12199842293879263908

`A005836(A151669(n)+1)`
-/

namespace A151665.P12199842293879263908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A151669 n + 1).toNat

end

end A151665.P12199842293879263908

namespace A151665

/-- `A005836(A151669(n)+1)` -/
def P12199842293879263908.Spec : Prop :=
  ∀ n, P12199842293879263908.a n = A151665 n

end A151665

/-! ## A151665.P15305413919656588509

`A082575(A151669(n)+1)`
-/

namespace A151665.P15305413919656588509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082575 (A151669 n + 1).toNat

end

end A151665.P15305413919656588509

namespace A151665

/-- `A082575(A151669(n)+1)` -/
def P15305413919656588509.Spec : Prop :=
  ∀ n, P15305413919656588509.a n = A151665 n

end A151665

/-! ## A151665.P9393731856169719146

`A048883(n)*A151666(n)`
-/

namespace A151665.P9393731856169719146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n * A151666 n

end

end A151665.P9393731856169719146

namespace A151665

/-- `A048883(n)*A151666(n)` -/
def P9393731856169719146.Spec : Prop :=
  ∀ n, P9393731856169719146.a n = A151665 n

end A151665

/-! ## A151665.P13182661581204575079

`A071053(n)*A151666(n)`
-/

namespace A151665.P13182661581204575079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071053 n * A151666 n

end

end A151665.P13182661581204575079

namespace A151665

/-- `A071053(n)*A151666(n)` -/
def P13182661581204575079.Spec : Prop :=
  ∀ n, P13182661581204575079.a n = A151665 n

end A151665

/-! ## A151665.P9372617760464285621

`A134661(n)*A151666(n)`
-/

namespace A151665.P9372617760464285621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134661 n * A151666 n

end

end A151665.P9372617760464285621

namespace A151665

/-- `A134661(n)*A151666(n)` -/
def P9372617760464285621.Spec : Prop :=
  ∀ n, P9372617760464285621.a n = A151665 n

end A151665

/-! ## A151665.P1654048437309239654

`A151666(n)*A246011(n)`
-/

namespace A151665.P1654048437309239654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151666 n * A246011 n

end

end A151665.P1654048437309239654

namespace A151665

/-- `A151666(n)*A246011(n)` -/
def P1654048437309239654.Spec : Prop :=
  ∀ n, P1654048437309239654.a n = A151665 n

end A151665

/-! ## A151665.P6055801995162671200

`∑{d}[A151669(n), A003968(#)]`
-/

namespace A151665.P6055801995162671200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151669 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003968 d

end

end A151665.P6055801995162671200

namespace A151665

/-- `∑{d}[A151669(n), A003968(#)]` -/
def P6055801995162671200.Spec : Prop :=
  ∀ n, P6055801995162671200.a n = A151665 n

end A151665

/-! ## A151665.P11637118337739568201

`char[A000695(n)]*A048883(n)`
-/

namespace A151665.P11637118337739568201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A048883 n

end

end A151665.P11637118337739568201

namespace A151665

/-- `char[A000695(n)]*A048883(n)` -/
def P11637118337739568201.Spec : Prop :=
  ∀ n, P11637118337739568201.a n = A151665 n

end A151665

/-! ## A151665.P10624548660343132307

`char[A000695(n)]*A071053(n)`
-/

namespace A151665.P10624548660343132307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A071053 n

end

end A151665.P10624548660343132307

namespace A151665

/-- `char[A000695(n)]*A071053(n)` -/
def P10624548660343132307.Spec : Prop :=
  ∀ n, P10624548660343132307.a n = A151665 n

end A151665

/-! ## A151665.P9914217495638546694

`(A001316(n)*A151666(n))^log2(3)`
-/

namespace A151665.P9914217495638546694
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A001316 n * A151666 n : ℝ) ^ (Real.logb 2 (3 : ℝ))

end

end A151665.P9914217495638546694

namespace A151665

/-- `(A001316(n)*A151666(n))^log2(3)` -/
def P9914217495638546694.Spec : Prop :=
  ∀ n, P9914217495638546694.a n = (A151665 n : ℝ)

end A151665

/-! ## A151665.P5616252560776361517

`A006046(A001316(n)*A151666(n))`
-/

namespace A151665.P5616252560776361517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (A001316 n * A151666 n).toNat

end

end A151665.P5616252560776361517

namespace A151665

/-- `A006046(A001316(n)*A151666(n))` -/
def P5616252560776361517.Spec : Prop :=
  ∀ n, P5616252560776361517.a n = A151665 n

end A151665

/-! ## A151665.P14906595781732281825

`A000120(A151669(n))*A048883(n)`
-/

namespace A151665.P14906595781732281825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A151669 n).toNat * A048883 n

end

end A151665.P14906595781732281825

namespace A151665

/-- `A000120(A151669(n))*A048883(n)` -/
def P14906595781732281825.Spec : Prop :=
  ∀ n, P14906595781732281825.a n = A151665 n

end A151665

/-! ## A151665.P11645674008916880574

`A006046(A151673(n)/A001316(n))`
-/

namespace A151665.P11645674008916880574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (SequenceMachineLib.roundAway ((A151673 n : ℚ) / (A001316 n : ℚ))).toNat

end

end A151665.P11645674008916880574

namespace A151665

/-- `A006046(A151673(n)/A001316(n))` -/
def P11645674008916880574.Spec : Prop :=
  ∀ n, P11645674008916880574.a n = A151665 n

end A151665

/-! ## A151665.P14713738105621175843

`∏{digits}[A007284(n), A007284(A138805(#))]`
-/

namespace A151665.P14713738105621175843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007284 (A138805 x).toNat).prod

end

end A151665.P14713738105621175843

namespace A151665

/-- `∏{digits}[A007284(n), A007284(A138805(#))]` -/
def P14713738105621175843.Spec : Prop :=
  ∀ n, P14713738105621175843.a n = A151665 n

end A151665

/-! ## A151665.P4660211144750283847

`∏{digits}[A007284(n), A007284(A208274(#))]`
-/

namespace A151665.P4660211144750283847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007284 (A208274 x).toNat).prod

end

end A151665.P4660211144750283847

namespace A151665

/-- `∏{digits}[A007284(n), A007284(A208274(#))]` -/
def P4660211144750283847.Spec : Prop :=
  ∀ n, P4660211144750283847.a n = A151665 n

end A151665

/-! ## A151665.P14937683565126389702

`∏{digits}[A007284(n), A007284(A317641(#))]`
-/

namespace A151665.P14937683565126389702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007284 (A317641 x).toNat).prod

end

end A151665.P14937683565126389702

namespace A151665

/-- `∏{digits}[A007284(n), A007284(A317641(#))]` -/
def P14937683565126389702.Spec : Prop :=
  ∀ n, P14937683565126389702.a n = A151665 n

end A151665

/-! ## A151665.P11165468170774568855

`A048883(n)/A001316(n)*A151669(n)`
-/

namespace A151665.P11165468170774568855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048883 n : ℚ) / (A001316 n : ℚ) * (A151669 n : ℚ)

end

end A151665.P11165468170774568855

namespace A151665

/-- `A048883(n)/A001316(n)*A151669(n)` -/
def P11165468170774568855.Spec : Prop :=
  ∀ n, P11165468170774568855.a n = (A151665 n : ℚ)

end A151665

/-!
# A151666: Number of partitions of n into distinct powers of 4.

The programs for A151666, the canonical program `A151666.P1623333586014949659` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151666 has offset 0).

The definition of A151666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151666.P8275146629732503766

`char[∑[round(and(n, -n)²/6)]]`
-/

namespace A151666.P8275146629732503766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.land (n : ℤ) (-(n : ℤ)) ^ 2 : ℚ) / 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A151666.P8275146629732503766

namespace A151666

/-- `char[∑[round(and(n, -n)²/6)]]` -/
def P8275146629732503766.Spec : Prop :=
  ∀ n, (P8275146629732503766.a n : ℤ) = A151666 n

end A151666

/-! ## A151666.P10171692140601018854

`char[n-2*a(floor(n/2))]` with `a(0)=0`
-/

namespace A151666.P10171692140601018854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) - 2 * f1 ⌊(n : ℚ) / 2⌋.toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A151666.P10171692140601018854

namespace A151666

/-- `char[n-2*a(floor(n/2))]` -/
def P10171692140601018854.Spec : Prop :=
  ∀ n, (P10171692140601018854.a n : ℤ) = A151666 n

end A151666

/-! ## A151666.P1623333586014949659

`a(floor(n/4))-a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A151666

/-- `a(floor(n/4))-a(n-2)` -/
def P1623333586014949659.Spec : Prop :=
  ∀ n, P1623333586014949659.a n = A151666 n

theorem P1623333586014949659.correct : P1623333586014949659.Spec := by
  intro n
  simp only [A151666]

end A151666

/-! ## A151666.P2556360241667301842

`char[xor(n, 2*a(floor(n/2)))]` with `a(0)=1, a(1)=1`
-/

namespace A151666.P2556360241667301842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  Nat.xor n (2 * f1 ⌊(n : ℚ) / 2⌋.toNat)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A151666.P2556360241667301842

namespace A151666

/-- `char[xor(n, 2*a(floor(n/2)))]` -/
def P2556360241667301842.Spec : Prop :=
  ∀ n, (P2556360241667301842.a n : ℤ) = A151666 n

end A151666

/-! ## A151666.P1056849070583040390

`char[a(and(n, n-1))+and(n, -n)²]` with `a(0)=0`
-/

namespace A151666.P1056849070583040390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + Int.land (n : ℤ) (-(n : ℤ)) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A151666.P1056849070583040390

namespace A151666

/-- `char[a(and(n, n-1))+and(n, -n)²]` -/
def P1056849070583040390.Spec : Prop :=
  ∀ n, (P1056849070583040390.a n : ℤ) = A151666 n

end A151666

/-! ## A151666.P14397726145936593999

`char[A000695(n)]`
-/

namespace A151666.P14397726145936593999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A151666.P14397726145936593999

namespace A151666

/-- `char[A000695(n)]` -/
def P14397726145936593999.Spec : Prop :=
  ∀ n, (P14397726145936593999.a n : ℤ) = A151666 n

end A151666

/-! ## A151666.P8733852177232467318

`char[A063694(n)]`
-/

namespace A151666.P8733852177232467318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063694 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A151666.P8733852177232467318

namespace A151666

/-- `char[A063694(n)]` -/
def P8733852177232467318.Spec : Prop :=
  ∀ n, (P8733852177232467318.a n : ℤ) = A151666 n

end A151666

/-! ## A151666.P1013170538223073110

`char[A115637(n)]`
-/

namespace A151666.P1013170538223073110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115637 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A151666.P1013170538223073110

namespace A151666

/-- `char[A115637(n)]` -/
def P1013170538223073110.Spec : Prop :=
  ∀ n, (P1013170538223073110.a n : ℤ) = A151666 n

end A151666

/-! ## A151666.P8117562321767309260

`A073707(n)%2`
-/

namespace A151666.P8117562321767309260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073707 n) 2

end

end A151666.P8117562321767309260

namespace A151666

/-- `A073707(n)%2` -/
def P8117562321767309260.Spec : Prop :=
  ∀ n, P8117562321767309260.a n = A151666 n

end A151666

/-! ## A151666.P761759317824398766

`A151665(n)%2`
-/

namespace A151666.P761759317824398766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151665 n) 2

end

end A151666.P761759317824398766

namespace A151666

/-- `A151665(n)%2` -/
def P761759317824398766.Spec : Prop :=
  ∀ n, P761759317824398766.a n = A151666 n

end A151666

/-! ## A151666.P8223157949775594763

`A271410(n)%2`
-/

namespace A151666.P8223157949775594763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271410 n) 2

end

end A151666.P8223157949775594763

namespace A151666

/-- `A271410(n)%2` -/
def P8223157949775594763.Spec : Prop :=
  ∀ n, P8223157949775594763.a n = A151666 n

end A151666

/-! ## A151666.P10981686573621351723

`A151673(n)%3`
-/

namespace A151666.P10981686573621351723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151673 n) 3

end

end A151666.P10981686573621351723

namespace A151666

/-- `A151673(n)%3` -/
def P10981686573621351723.Spec : Prop :=
  ∀ n, P10981686573621351723.a n = A151666 n

end A151666

/-! ## A151666.P18078859874916566149

`and(1, A321327(n))`
-/

namespace A151666.P18078859874916566149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A321327 n)

end

end A151666.P18078859874916566149

namespace A151666

/-- `and(1, A321327(n))` -/
def P18078859874916566149.Spec : Prop :=
  ∀ n, P18078859874916566149.a n = A151666 n

end A151666

/-! ## A151666.P4255202834357952780

`C(n, A005351(n))`
-/

namespace A151666.P4255202834357952780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A005351 n).toNat

end

end A151666.P4255202834357952780

namespace A151666

/-- `C(n, A005351(n))` -/
def P4255202834357952780.Spec : Prop :=
  ∀ n, (P4255202834357952780.a n : ℤ) = A151666 n

end A151666

/-! ## A151666.P11693688150802127302

`C(A380110(n), n)`
-/

namespace A151666.P11693688150802127302
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A380110 n).toNat n

end

end A151666.P11693688150802127302

namespace A151666

/-- `C(A380110(n), n)` -/
def P11693688150802127302.Spec : Prop :=
  ∀ n, (P11693688150802127302.a n : ℤ) = A151666 n

end A151666

/-! ## A151666.P7889185877947151542

`char[A054238(∑[n])]`
-/

namespace A151666.P7889185877947151542
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054238 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A151666.P7889185877947151542

namespace A151666

/-- `char[A054238(∑[n])]` -/
def P7889185877947151542.Spec : Prop :=
  ∀ n, (P7889185877947151542.a n : ℤ) = A151666 n

end A151666

/-! ## A151666.P9732921285642402316

`char[∑[A115638(n)]]`
-/

namespace A151666.P9732921285642402316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115638 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A151666.P9732921285642402316

namespace A151666

/-- `char[∑[A115638(n)]]` -/
def P9732921285642402316.Spec : Prop :=
  ∀ n, (P9732921285642402316.a n : ℤ) = A151666 n

end A151666

/-! ## A151666.P3069958238422196950

`char[record[A053985(n)]]`
-/

namespace A151666.P3069958238422196950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A151666.P3069958238422196950

namespace A151666

/-- `char[record[A053985(n)]]` -/
def P3069958238422196950.Spec : Prop :=
  ∀ n, (P3069958238422196950.a n : ℤ) = A151666 n

end A151666

/-! ## A151666.P2230390868073739414

`char[record[A338248(n)]]`
-/

namespace A151666.P2230390868073739414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338248 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A151666.P2230390868073739414

namespace A151666

/-- `char[record[A338248(n)]]` -/
def P2230390868073739414.Spec : Prop :=
  ∀ n, (P2230390868073739414.a n : ℤ) = A151666 n

end A151666

/-!
# A151667: Number of partitions of n into distinct powers of 5.

The programs for A151667, the canonical program `A151667.P15819438536939067945` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151667 has offset 0).

The definition of A151667 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151667.P15819438536939067945

`char[A033042(n)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A151667

/-- `char[A033042(n)]` -/
def P15819438536939067945.Spec : Prop :=
  ∀ n, (P15819438536939067945.a n : ℤ) = A151667 n

theorem P15819438536939067945.correct : P15819438536939067945.Spec := by
  intro n
  simp only [A151667]

end A151667

/-! ## A151667.P10802836791498466806

`A151671(n)%2`
-/

namespace A151667.P10802836791498466806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151671 n) 2

end

end A151667.P10802836791498466806

namespace A151667

/-- `A151671(n)%2` -/
def P10802836791498466806.Spec : Prop :=
  ∀ n, P10802836791498466806.a n = A151667 n

end A151667

/-! ## A151667.P15008599801775560363

`A151674(n)%3`
-/

namespace A151667.P15008599801775560363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151674 n) 3

end

end A151667.P15008599801775560363

namespace A151667

/-- `A151674(n)%3` -/
def P15008599801775560363.Spec : Prop :=
  ∀ n, P15008599801775560363.a n = A151667 n

end A151667

/-! ## A151667.P16968505872324261598

`A151670(n)²%3`
-/

namespace A151667.P16968505872324261598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151670 n ^ 2) 3

end

end A151667.P16968505872324261598

namespace A151667

/-- `A151670(n)²%3` -/
def P16968505872324261598.Spec : Prop :=
  ∀ n, P16968505872324261598.a n = A151667 n

end A151667

/-! ## A151667.P17394677434891889434

`A000035(A151671(n))`
-/

namespace A151667.P17394677434891889434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A151671 n).toNat

end

end A151667.P17394677434891889434

namespace A151667

/-- `A000035(A151671(n))` -/
def P17394677434891889434.Spec : Prop :=
  ∀ n, P17394677434891889434.a n = A151667 n

end A151667

/-! ## A151667.P12887407396078518307

`A000120(A151670(n))`
-/

namespace A151667.P12887407396078518307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A151670 n).toNat

end

end A151667.P12887407396078518307

namespace A151667

/-- `A000120(A151670(n))` -/
def P12887407396078518307.Spec : Prop :=
  ∀ n, P12887407396078518307.a n = A151667 n

end A151667

/-! ## A151667.P12820241795913336673

`A000120(A151674(n))`
-/

namespace A151667.P12820241795913336673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A151674 n).toNat

end

end A151667.P12820241795913336673

namespace A151667

/-- `A000120(A151674(n))` -/
def P12820241795913336673.Spec : Prop :=
  ∀ n, P12820241795913336673.a n = A151667 n

end A151667

/-! ## A151667.P1167561865325392321

`A113052(A319653(n))`
-/

namespace A151667.P1167561865325392321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113052 (A319653 n).toNat

end

end A151667.P1167561865325392321

namespace A151667

/-- `A113052(A319653(n))` -/
def P1167561865325392321.Spec : Prop :=
  ∀ n, P1167561865325392321.a n = A151667 n

end A151667

/-! ## A151667.P9017361496546850193

`A010060(2*A151674(n))`
-/

namespace A151667.P9017361496546850193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (2 * A151674 n).toNat

end

end A151667.P9017361496546850193

namespace A151667

/-- `A010060(2*A151674(n))` -/
def P9017361496546850193.Spec : Prop :=
  ∀ n, P9017361496546850193.a n = A151667 n

end A151667

/-! ## A151667.P6015254596211731982

`A261366(2*A151674(n))`
-/

namespace A151667.P6015254596211731982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261366 (2 * A151674 n).toNat

end

end A151667.P6015254596211731982

namespace A151667

/-- `A261366(2*A151674(n))` -/
def P6015254596211731982.Spec : Prop :=
  ∀ n, P6015254596211731982.a n = A151667 n

end A151667

/-! ## A151667.P14643261731306161696

`A270803(2*A151674(n))`
-/

namespace A151667.P14643261731306161696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270803 (2 * A151674 n).toNat

end

end A151667.P14643261731306161696

namespace A151667

/-- `A270803(2*A151674(n))` -/
def P14643261731306161696.Spec : Prop :=
  ∀ n, P14643261731306161696.a n = A151667 n

end A151667

/-! ## A151667.P4921493133710507854

`A077042(C(2, A151671(n)))`
-/

namespace A151667.P4921493133710507854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (Nat.choose 2 (A151671 n).toNat)

end

end A151667.P4921493133710507854

namespace A151667

/-- `A077042(C(2, A151671(n)))` -/
def P4921493133710507854.Spec : Prop :=
  ∀ n, P4921493133710507854.a n = A151667 n

end A151667

/-! ## A151667.P6734774607984606595

`A151702(C(2, A151671(n)))`
-/

namespace A151667.P6734774607984606595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 (Nat.choose 2 (A151671 n).toNat)

end

end A151667.P6734774607984606595

namespace A151667

/-- `A151702(C(2, A151671(n)))` -/
def P6734774607984606595.Spec : Prop :=
  ∀ n, P6734774607984606595.a n = A151667 n

end A151667

/-! ## A151667.P17495957425913566803

`A341856(C(2, A151671(n)))`
-/

namespace A151667.P17495957425913566803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341856 (Nat.choose 2 (A151671 n).toNat)

end

end A151667.P17495957425913566803

namespace A151667

/-- `A341856(C(2, A151671(n)))` -/
def P17495957425913566803.Spec : Prop :=
  ∀ n, P17495957425913566803.a n = A151667 n

end A151667

/-! ## A151667.P12338607558140902500

`A151692(C(4, A151671(n)))`
-/

namespace A151667.P12338607558140902500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151692 (Nat.choose 4 (A151671 n).toNat)

end

end A151667.P12338607558140902500

namespace A151667

/-- `A151692(C(4, A151671(n)))` -/
def P12338607558140902500.Spec : Prop :=
  ∀ n, P12338607558140902500.a n = A151667 n

end A151667

/-! ## A151667.P16158109391259123525

`A151670(n)/A194459(n)`
-/

namespace A151667.P16158109391259123525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151670 n : ℚ) / (A194459 n : ℚ)

end

end A151667.P16158109391259123525

namespace A151667

/-- `A151670(n)/A194459(n)` -/
def P16158109391259123525.Spec : Prop :=
  ∀ n, P16158109391259123525.a n = (A151667 n : ℚ)

end A151667

/-! ## A151667.P15988507336535946398

`A151670(n)/A385825(n)`
-/

namespace A151667.P15988507336535946398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151670 n : ℚ) / (A385825 n : ℚ)

end

end A151667.P15988507336535946398

namespace A151667

/-- `A151670(n)/A385825(n)` -/
def P15988507336535946398.Spec : Prop :=
  ∀ n, P15988507336535946398.a n = (A151667 n : ℚ)

end A151667

/-! ## A151667.P8417619526951898404

`gcd(A151670(n), A151671(n))`
-/

namespace A151667.P8417619526951898404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151670 n) (A151671 n)

end

end A151667.P8417619526951898404

namespace A151667

/-- `gcd(A151670(n), A151671(n))` -/
def P8417619526951898404.Spec : Prop :=
  ∀ n, (P8417619526951898404.a n : ℤ) = A151667 n

end A151667

/-! ## A151667.P10364886176455895944

`and(A006466(n), A151671(n))`
-/

namespace A151667.P10364886176455895944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006466 n) (A151671 n)

end

end A151667.P10364886176455895944

namespace A151667

/-- `and(A006466(n), A151671(n))` -/
def P10364886176455895944.Spec : Prop :=
  ∀ n, P10364886176455895944.a n = A151667 n

end A151667

/-!
# A151668: G.f.: Product_{k>=0} (1 + 2*x^(3^k)).

The programs for A151668, the canonical program `A151668.P5934042210554537885` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151668 has offset 0).

The definition of A151668 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151668.P5934042210554537885

`a(floor(n/3))*a(n%3)` with `a(0)=1, a(1)=2, a(2)=0`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A151668

/-- `a(floor(n/3))*a(n%3)` -/
def P5934042210554537885.Spec : Prop :=
  ∀ n, (P5934042210554537885.a n : ℤ) = A151668 n

theorem P5934042210554537885.correct : P5934042210554537885.Spec := by
  intro n
  simp only [A151668]

end A151668

/-! ## A151668.P6673237464061150709

`sqrt(A151672(n))`
-/

namespace A151668.P6673237464061150709
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A151672 n : ℝ)

end

end A151668.P6673237464061150709

namespace A151668

/-- `sqrt(A151672(n))` -/
def P6673237464061150709.Spec : Prop :=
  ∀ n, P6673237464061150709.a n = (A151668 n : ℝ)

end A151668

/-! ## A151668.P18257394869244592618

`∏{digits}[A072998(n), #]`
-/

namespace A151668.P18257394869244592618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072998 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A151668.P18257394869244592618

namespace A151668

/-- `∏{digits}[A072998(n), #]` -/
def P18257394869244592618.Spec : Prop :=
  ∀ n, (P18257394869244592618.a n : ℤ) = A151668 n

end A151668

/-! ## A151668.P12719957419255866316

`a(floor(n/3))*∑[A061347(n+1)]` with `a(0)=1`
-/

namespace A151668.P12719957419255866316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 3⌋.toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A151668.P12719957419255866316

namespace A151668

/-- `a(floor(n/3))*∑[A061347(n+1)]` -/
def P12719957419255866316.Spec : Prop :=
  ∀ n, P12719957419255866316.a n = A151668 n

end A151668

/-! ## A151668.P5458903476103143803

`A048298(A006047(n))`
-/

namespace A151668.P5458903476103143803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (A006047 n).toNat

end

end A151668.P5458903476103143803

namespace A151668

/-- `A048298(A006047(n))` -/
def P5458903476103143803.Spec : Prop :=
  ∀ n, P5458903476103143803.a n = A151668 n

end A151668

/-! ## A151668.P11316370179578595163

`A006047(n)*A039966(n)`
-/

namespace A151668.P11316370179578595163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 n * A039966 n

end

end A151668.P11316370179578595163

namespace A151668

/-- `A006047(n)*A039966(n)` -/
def P11316370179578595163.Spec : Prop :=
  ∀ n, P11316370179578595163.a n = A151668 n

end A151668

/-! ## A151668.P18210599825765758828

`A039966(n)*A051638(n)`
-/

namespace A151668.P18210599825765758828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 n * A051638 n

end

end A151668.P18210599825765758828

namespace A151668

/-- `A039966(n)*A051638(n)` -/
def P18210599825765758828.Spec : Prop :=
  ∀ n, P18210599825765758828.a n = A151668 n

end A151668

/-! ## A151668.P10379011190084825427

`A039966(n)*A120880(n)`
-/

namespace A151668.P10379011190084825427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 n * A120880 n

end

end A151668.P10379011190084825427

namespace A151668

/-- `A039966(n)*A120880(n)` -/
def P10379011190084825427.Spec : Prop :=
  ∀ n, P10379011190084825427.a n = A151668 n

end A151668

/-! ## A151668.P14592345846725240423

`A039966(n)*A206424(n)`
-/

namespace A151668.P14592345846725240423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 n * A206424 n

end

end A151668.P14592345846725240423

namespace A151668

/-- `A039966(n)*A206424(n)` -/
def P14592345846725240423.Spec : Prop :=
  ∀ n, P14592345846725240423.a n = A151668 n

end A151668

/-! ## A151668.P7420513833965376064

`A039966(n)*A385859(n)`
-/

namespace A151668.P7420513833965376064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 n * A385859 n

end

end A151668.P7420513833965376064

namespace A151668

/-- `A039966(n)*A385859(n)` -/
def P7420513833965376064.Spec : Prop :=
  ∀ n, P7420513833965376064.a n = A151668 n

end A151668

/-! ## A151668.P17382102108013324492

`A151672(n)/A006047(n)`
-/

namespace A151668.P17382102108013324492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151672 n : ℚ) / (A006047 n : ℚ)

end

end A151668.P17382102108013324492

namespace A151668

/-- `A151672(n)/A006047(n)` -/
def P17382102108013324492.Spec : Prop :=
  ∀ n, P17382102108013324492.a n = (A151668 n : ℚ)

end A151668

/-! ## A151668.P10340416596282868997

`A151672(n)/A051638(n)`
-/

namespace A151668.P10340416596282868997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151672 n : ℚ) / (A051638 n : ℚ)

end

end A151668.P10340416596282868997

namespace A151668

/-- `A151672(n)/A051638(n)` -/
def P10340416596282868997.Spec : Prop :=
  ∀ n, P10340416596282868997.a n = (A151668 n : ℚ)

end A151668

/-! ## A151668.P3167272461274249506

`A151672(n)/A120880(n)`
-/

namespace A151668.P3167272461274249506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151672 n : ℚ) / (A120880 n : ℚ)

end

end A151668.P3167272461274249506

namespace A151668

/-- `A151672(n)/A120880(n)` -/
def P3167272461274249506.Spec : Prop :=
  ∀ n, P3167272461274249506.a n = (A151668 n : ℚ)

end A151668

/-! ## A151668.P7747232358967263591

`A151672(n)/A206424(n)`
-/

namespace A151668.P7747232358967263591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151672 n : ℚ) / (A206424 n : ℚ)

end

end A151668.P7747232358967263591

namespace A151668

/-- `A151672(n)/A206424(n)` -/
def P7747232358967263591.Spec : Prop :=
  ∀ n, P7747232358967263591.a n = (A151668 n : ℚ)

end A151668

/-! ## A151668.P10742133156369136127

`A151672(n)/A385859(n)`
-/

namespace A151668.P10742133156369136127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151672 n : ℚ) / (A385859 n : ℚ)

end

end A151668.P10742133156369136127

namespace A151668

/-- `A151672(n)/A385859(n)` -/
def P10742133156369136127.Spec : Prop :=
  ∀ n, P10742133156369136127.a n = (A151668 n : ℚ)

end A151668

/-! ## A151668.P12768537679918341977

`lcm(A006047(n), A006996(n))`
-/

namespace A151668.P12768537679918341977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006047 n) (A006996 n)

end

end A151668.P12768537679918341977

namespace A151668

/-- `lcm(A006047(n), A006996(n))` -/
def P12768537679918341977.Spec : Prop :=
  ∀ n, (P12768537679918341977.a n : ℤ) = A151668 n

end A151668

/-! ## A151668.P12620870065465214061

`lcm(A051638(n), A092037(n))`
-/

namespace A151668.P12620870065465214061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051638 n) (A092037 n)

end

end A151668.P12620870065465214061

namespace A151668

/-- `lcm(A051638(n), A092037(n))` -/
def P12620870065465214061.Spec : Prop :=
  ∀ n, (P12620870065465214061.a n : ℤ) = A151668 n

end A151668

/-! ## A151668.P3575990515599931333

`∏{digits}[A007089(n), A000122(#)]`
-/

namespace A151668.P3575990515599931333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000122 x).prod

end

end A151668.P3575990515599931333

namespace A151668

/-- `∏{digits}[A007089(n), A000122(#)]` -/
def P3575990515599931333.Spec : Prop :=
  ∀ n, P3575990515599931333.a n = A151668 n

end A151668

/-! ## A151668.P434177349124505921

`∏{digits}[A007089(n), A006996(#)]`
-/

namespace A151668.P434177349124505921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A006996 x).prod

end

end A151668.P434177349124505921

namespace A151668

/-- `∏{digits}[A007089(n), A006996(#)]` -/
def P434177349124505921.Spec : Prop :=
  ∀ n, P434177349124505921.a n = A151668 n

end A151668

/-! ## A151668.P5527894957988057649

`∏{digits}[A007089(n), A033716(#)]`
-/

namespace A151668.P5527894957988057649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A033716 x).prod

end

end A151668.P5527894957988057649

namespace A151668

/-- `∏{digits}[A007089(n), A033716(#)]` -/
def P5527894957988057649.Spec : Prop :=
  ∀ n, P5527894957988057649.a n = A151668 n

end A151668

/-!
# A151669: G.f.: Product_{k>=0} (1 + 2*x^(4^k)).

The programs for A151669, the canonical program `A151669.P3956910495585048482` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151669 has offset 0).

The definition of A151669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151669.P9691817157977021938

`sqrt(A151673(n))`
-/

namespace A151669.P9691817157977021938
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A151673 n : ℝ)

end

end A151669.P9691817157977021938

namespace A151669

/-- `sqrt(A151673(n))` -/
def P9691817157977021938.Spec : Prop :=
  ∀ n, P9691817157977021938.a n = (A151669 n : ℝ)

end A151669

/-! ## A151669.P3994758768854391908

`∏{digits}[A007090(n), C(2, #²)]`
-/

namespace A151669.P3994758768854391908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.choose 2 (x ^ 2)).prod

end

end A151669.P3994758768854391908

namespace A151669

/-- `∏{digits}[A007090(n), C(2, #²)]` -/
def P3994758768854391908.Spec : Prop :=
  ∀ n, (P3994758768854391908.a n : ℤ) = A151669 n

end A151669

/-! ## A151669.P277843455115651762

`A234840(A151665(n))`
-/

namespace A151669.P277843455115651762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234840 (A151665 n).toNat

end

end A151669.P277843455115651762

namespace A151669

/-- `A234840(A151665(n))` -/
def P277843455115651762.Spec : Prop :=
  ∀ n, P277843455115651762.a n = A151669 n

end A151669

/-! ## A151669.P231848592893670281

`A295989(A151665(n)+1)`
-/

namespace A151669.P231848592893670281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295989 (A151665 n + 1).toNat

end

end A151669.P231848592893670281

namespace A151669

/-- `A295989(A151665(n)+1)` -/
def P231848592893670281.Spec : Prop :=
  ∀ n, P231848592893670281.a n = A151669 n

end A151669

/-! ## A151669.P10848700876276922060

`A289831(2*A151665(n))`
-/

namespace A151669.P10848700876276922060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (2 * A151665 n).toNat

end

end A151669.P10848700876276922060

namespace A151669

/-- `A289831(2*A151665(n))` -/
def P10848700876276922060.Spec : Prop :=
  ∀ n, P10848700876276922060.a n = A151669 n

end A151669

/-! ## A151669.P3956910495585048482

`A001316(n)*A151666(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A151669

/-- `A001316(n)*A151666(n)` -/
def P3956910495585048482.Spec : Prop :=
  ∀ n, P3956910495585048482.a n = A151669 n

theorem P3956910495585048482.correct : P3956910495585048482.Spec := by
  intro n
  simp only [A151669]

end A151669

/-! ## A151669.P13029980785221284954

`A106737(n)*A151666(n)`
-/

namespace A151669.P13029980785221284954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 n * A151666 n

end

end A151669.P13029980785221284954

namespace A151669

/-- `A106737(n)*A151666(n)` -/
def P13029980785221284954.Spec : Prop :=
  ∀ n, P13029980785221284954.a n = A151669 n

end A151669

/-! ## A151669.P12347023897308942530

`A151666(n)*A245564(n)`
-/

namespace A151669.P12347023897308942530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151666 n * A245564 n

end

end A151669.P12347023897308942530

namespace A151669

/-- `A151666(n)*A245564(n)` -/
def P12347023897308942530.Spec : Prop :=
  ∀ n, P12347023897308942530.a n = A151669 n

end A151669

/-! ## A151669.P14135051311748864732

`A151666(n)*A245565(n)`
-/

namespace A151669.P14135051311748864732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151666 n * A245565 n

end

end A151669.P14135051311748864732

namespace A151669

/-- `A151666(n)*A245565(n)` -/
def P14135051311748864732.Spec : Prop :=
  ∀ n, P14135051311748864732.a n = A151669 n

end A151669

/-! ## A151669.P947148015961467348

`A151666(n)*A246029(n)`
-/

namespace A151669.P947148015961467348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151666 n * A246029 n

end

end A151669.P947148015961467348

namespace A151669

/-- `A151666(n)*A246029(n)` -/
def P947148015961467348.Spec : Prop :=
  ∀ n, P947148015961467348.a n = A151669 n

end A151669

/-! ## A151669.P1820788231058314602

`A151666(n)*A268444(n)`
-/

namespace A151669.P1820788231058314602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151666 n * A268444 n

end

end A151669.P1820788231058314602

namespace A151669

/-- `A151666(n)*A268444(n)` -/
def P1820788231058314602.Spec : Prop :=
  ∀ n, P1820788231058314602.a n = A151669 n

end A151669

/-! ## A151669.P6904064944968364096

`A151666(n)*A270438(n)`
-/

namespace A151669.P6904064944968364096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151666 n * A270438 n

end

end A151669.P6904064944968364096

namespace A151669

/-- `A151666(n)*A270438(n)` -/
def P6904064944968364096.Spec : Prop :=
  ∀ n, P6904064944968364096.a n = A151669 n

end A151669

/-! ## A151669.P11574328351999425094

`A151666(n)*A277561(n)`
-/

namespace A151669.P11574328351999425094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151666 n * A277561 n

end

end A151669.P11574328351999425094

namespace A151669

/-- `A151666(n)*A277561(n)` -/
def P11574328351999425094.Spec : Prop :=
  ∀ n, P11574328351999425094.a n = A151669 n

end A151669

/-! ## A151669.P4827041698974643340

`A151666(n)*A278159(n)`
-/

namespace A151669.P4827041698974643340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151666 n * A278159 n

end

end A151669.P4827041698974643340

namespace A151669

/-- `A151666(n)*A278159(n)` -/
def P4827041698974643340.Spec : Prop :=
  ∀ n, P4827041698974643340.a n = A151669 n

end A151669

/-! ## A151669.P16562382925670781963

`A151666(n)*A286575(n)`
-/

namespace A151669.P16562382925670781963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151666 n * A286575 n

end

end A151669.P16562382925670781963

namespace A151669

/-- `A151666(n)*A286575(n)` -/
def P16562382925670781963.Spec : Prop :=
  ∀ n, P16562382925670781963.a n = A151669 n

end A151669

/-! ## A151669.P4188345231133162332

`A151666(n)*A380122(n)`
-/

namespace A151669.P4188345231133162332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151666 n * A380122 n

end

end A151669.P4188345231133162332

namespace A151669

/-- `A151666(n)*A380122(n)` -/
def P4188345231133162332.Spec : Prop :=
  ∀ n, P4188345231133162332.a n = A151669 n

end A151669

/-! ## A151669.P16372022631708676864

`A151673(n)/A001316(n)`
-/

namespace A151669.P16372022631708676864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151673 n : ℚ) / (A001316 n : ℚ)

end

end A151669.P16372022631708676864

namespace A151669

/-- `A151673(n)/A001316(n)` -/
def P16372022631708676864.Spec : Prop :=
  ∀ n, P16372022631708676864.a n = (A151669 n : ℚ)

end A151669

/-! ## A151669.P14814272504244174935

`A151673(n)/A106737(n)`
-/

namespace A151669.P14814272504244174935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151673 n : ℚ) / (A106737 n : ℚ)

end

end A151669.P14814272504244174935

namespace A151669

/-- `A151673(n)/A106737(n)` -/
def P14814272504244174935.Spec : Prop :=
  ∀ n, P14814272504244174935.a n = (A151669 n : ℚ)

end A151669

/-! ## A151669.P13305654057150907931

`A151673(n)/A268444(n)`
-/

namespace A151669.P13305654057150907931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151673 n : ℚ) / (A268444 n : ℚ)

end

end A151669.P13305654057150907931

namespace A151669

/-- `A151673(n)/A268444(n)` -/
def P13305654057150907931.Spec : Prop :=
  ∀ n, P13305654057150907931.a n = (A151669 n : ℚ)

end A151669

/-! ## A151669.P9600926240239730137

`∏{digits}[A007090(n), A000122(#)]`
-/

namespace A151669.P9600926240239730137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000122 x).prod

end

end A151669.P9600926240239730137

namespace A151669

/-- `∏{digits}[A007090(n), A000122(#)]` -/
def P9600926240239730137.Spec : Prop :=
  ∀ n, P9600926240239730137.a n = A151669 n

end A151669

/-!
# A151670: G.f.: Product_{k>=0} (1 + 2*x^(5^k)).

The programs for A151670, the canonical program `A151670.P12086214931527312146` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151670 has offset 0).

The definition of A151670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151670.P9212482998312234790

`sqrt(A151674(n))`
-/

namespace A151670.P9212482998312234790
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A151674 n : ℝ)

end

end A151670.P9212482998312234790

namespace A151670

/-- `sqrt(A151674(n))` -/
def P9212482998312234790.Spec : Prop :=
  ∀ n, P9212482998312234790.a n = (A151670 n : ℝ)

end A151670

/-! ## A151670.P12086214931527312146

`A061392(A151671(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A151670

/-- `A061392(A151671(n))` -/
def P12086214931527312146.Spec : Prop :=
  ∀ n, P12086214931527312146.a n = A151670 n

theorem P12086214931527312146.correct : P12086214931527312146.Spec := by
  intro n
  simp only [A151670]

end A151670

/-! ## A151670.P13474445769946413591

`A088226(A151674(n)+2)`
-/

namespace A151670.P13474445769946413591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A151674 n + 2).toNat

end

end A151670.P13474445769946413591

namespace A151670

/-- `A088226(A151674(n)+2)` -/
def P13474445769946413591.Spec : Prop :=
  ∀ n, P13474445769946413591.a n = A151670 n

end A151670

/-! ## A151670.P4528349633239029982

`A002262(2*A151674(n))`
-/

namespace A151670.P4528349633239029982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (2 * A151674 n).toNat

end

end A151670.P4528349633239029982

namespace A151670

/-- `A002262(2*A151674(n))` -/
def P4528349633239029982.Spec : Prop :=
  ∀ n, P4528349633239029982.a n = A151670 n

end A151670

/-! ## A151670.P7316147438655253888

`A151667(n)*A194459(n)`
-/

namespace A151670.P7316147438655253888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151667 n * A194459 n

end

end A151670.P7316147438655253888

namespace A151670

/-- `A151667(n)*A194459(n)` -/
def P7316147438655253888.Spec : Prop :=
  ∀ n, P7316147438655253888.a n = A151670 n

end A151670

/-! ## A151670.P17750264908621417278

`A151667(n)*A385825(n)`
-/

namespace A151670.P17750264908621417278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151667 n * A385825 n

end

end A151670.P17750264908621417278

namespace A151670

/-- `A151667(n)*A385825(n)` -/
def P17750264908621417278.Spec : Prop :=
  ∀ n, P17750264908621417278.a n = A151670 n

end A151670

/-! ## A151670.P3171200824542504414

`A151674(n)/A194459(n)`
-/

namespace A151670.P3171200824542504414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151674 n : ℚ) / (A194459 n : ℚ)

end

end A151670.P3171200824542504414

namespace A151670

/-- `A151674(n)/A194459(n)` -/
def P3171200824542504414.Spec : Prop :=
  ∀ n, P3171200824542504414.a n = (A151670 n : ℚ)

end A151670

/-! ## A151670.P12689365876158573620

`A151674(n)/A385825(n)`
-/

namespace A151670.P12689365876158573620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151674 n : ℚ) / (A385825 n : ℚ)

end

end A151670.P12689365876158573620

namespace A151670

/-- `A151674(n)/A385825(n)` -/
def P12689365876158573620.Spec : Prop :=
  ∀ n, P12689365876158573620.a n = (A151670 n : ℚ)

end A151670

/-! ## A151670.P9274678231380026704

`∏{digits}[A007091(n), A130706(#)]`
-/

namespace A151670.P9274678231380026704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A130706 x).prod

end

end A151670.P9274678231380026704

namespace A151670

/-- `∏{digits}[A007091(n), A130706(#)]` -/
def P9274678231380026704.Spec : Prop :=
  ∀ n, P9274678231380026704.a n = A151670 n

end A151670

/-! ## A151670.P9109556670208670512

`∏{digits}[A007091(n), A204531(#)]`
-/

namespace A151670.P9109556670208670512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A204531 x).prod

end

end A151670.P9109556670208670512

namespace A151670

/-- `∏{digits}[A007091(n), A204531(#)]` -/
def P9109556670208670512.Spec : Prop :=
  ∀ n, P9109556670208670512.a n = A151670 n

end A151670

/-! ## A151670.P18157382653824159760

`A119353(A151671(n)+1)-1`
-/

namespace A151670.P18157382653824159760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119353 (A151671 n + 1).toNat - 1

end

end A151670.P18157382653824159760

namespace A151670

/-- `A119353(A151671(n)+1)-1` -/
def P18157382653824159760.Spec : Prop :=
  ∀ n, P18157382653824159760.a n = A151670 n

end A151670

/-! ## A151670.P10001211413830326923

`A119353(2*A151671(n)-A151671(n))`
-/

namespace A151670.P10001211413830326923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119353 (2 * A151671 n - A151671 n).toNat

end

end A151670.P10001211413830326923

namespace A151670

/-- `A119353(2*A151671(n)-A151671(n))` -/
def P10001211413830326923.Spec : Prop :=
  ∀ n, P10001211413830326923.a n = A151670 n

end A151670

/-! ## A151670.P2995405026706070418

`A004981(n)%10`
-/

namespace A151670.P2995405026706070418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004981 n) 10

end

end A151670.P2995405026706070418

namespace A151670

/-- `A004981(n)%10` -/
def P2995405026706070418.Spec : Prop :=
  ∀ n, P2995405026706070418.a n = A151670 n

end A151670

/-! ## A151670.P10323558401122059786

`A002487(A151671(n²)+A151671(n))`
-/

namespace A151670.P10323558401122059786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A151671 (n ^ 2) + A151671 n).toNat

end

end A151670.P10323558401122059786

namespace A151670

/-- `A002487(A151671(n²)+A151671(n))` -/
def P10323558401122059786.Spec : Prop :=
  ∀ n, P10323558401122059786.a n = A151670 n

end A151670

/-!
# A151671: G.f.: Product_{k >= 0} (1 + 3*x^(5^k)).

The programs for A151671, the canonical program `A151671.P17873054757354392525` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151671 has offset 0).

The definition of A151671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151671.P12506329369411691780

`A151670(n)^log2(3)`
-/

namespace A151671.P12506329369411691780
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A151670 n : ℝ) ^ (Real.logb 2 (3 : ℝ))

end

end A151671.P12506329369411691780

namespace A151671

/-- `A151670(n)^log2(3)` -/
def P12506329369411691780.Spec : Prop :=
  ∀ n, P12506329369411691780.a n = (A151671 n : ℝ)

end A151671

/-! ## A151671.P4772838222917605301

`A006046(A151670(n))`
-/

namespace A151671.P4772838222917605301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (A151670 n).toNat

end

end A151671.P4772838222917605301

namespace A151671

/-- `A006046(A151670(n))` -/
def P4772838222917605301.Spec : Prop :=
  ∀ n, P4772838222917605301.a n = A151671 n

end A151671

/-! ## A151671.P2875830709424058223

`A006046(sqrt(A151674(n)))`
-/

namespace A151671.P2875830709424058223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (SequenceMachineLib.roundAway (Real.sqrt (A151674 n : ℝ))).toNat

end

end A151671.P2875830709424058223

namespace A151671

/-- `A006046(sqrt(A151674(n)))` -/
def P2875830709424058223.Spec : Prop :=
  ∀ n, P2875830709424058223.a n = A151671 n

end A151671

/-! ## A151671.P7337242325460446110

`A005836(A151670(n)+1)`
-/

namespace A151671.P7337242325460446110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A151670 n + 1).toNat

end

end A151671.P7337242325460446110

namespace A151671

/-- `A005836(A151670(n)+1)` -/
def P7337242325460446110.Spec : Prop :=
  ∀ n, P7337242325460446110.a n = A151671 n

end A151671

/-! ## A151671.P17359670822417442325

`A119353(A151674(n)+1)-1`
-/

namespace A151671.P17359670822417442325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119353 (A151674 n + 1).toNat - 1

end

end A151671.P17359670822417442325

namespace A151671

/-- `A119353(A151674(n)+1)-1` -/
def P17359670822417442325.Spec : Prop :=
  ∀ n, P17359670822417442325.a n = A151671 n

end A151671

/-! ## A151671.P1107124619684841381

`A119353(2*A151674(n))/2`
-/

namespace A151671.P1107124619684841381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119353 (2 * A151674 n).toNat : ℚ) / 2

end

end A151671.P1107124619684841381

namespace A151671

/-- `A119353(2*A151674(n))/2` -/
def P1107124619684841381.Spec : Prop :=
  ∀ n, P1107124619684841381.a n = (A151671 n : ℚ)

end A151671

/-! ## A151671.P5058153918715614753

`A006046(A151667(n)*A194459(n))`
-/

namespace A151671.P5058153918715614753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (A151667 n * A194459 n).toNat

end

end A151671.P5058153918715614753

namespace A151671

/-- `A006046(A151667(n)*A194459(n))` -/
def P5058153918715614753.Spec : Prop :=
  ∀ n, P5058153918715614753.a n = A151671 n

end A151671

/-! ## A151671.P17873054757354392525

`A048883(A215088(n))*A151667(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A151671

/-- `A048883(A215088(n))*A151667(n)` -/
def P17873054757354392525.Spec : Prop :=
  ∀ n, P17873054757354392525.a n = A151671 n

theorem P17873054757354392525.correct : P17873054757354392525.Spec := by
  intro n
  simp only [A151671]

end A151671

/-! ## A151671.P11085761460600180257

`∏{digits}[A007091(n), A117980(A004515(#))]`
-/

namespace A151671.P11085761460600180257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A117980 (A004515 x).toNat).prod

end

end A151671.P11085761460600180257

namespace A151671

/-- `∏{digits}[A007091(n), A117980(A004515(#))]` -/
def P11085761460600180257.Spec : Prop :=
  ∀ n, P11085761460600180257.a n = A151671 n

end A151671

/-! ## A151671.P18222271707389832936

`A151667(n)*A194459(A004515(n*A151667(n)))`
-/

namespace A151671.P18222271707389832936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151667 n * A194459 (A004515 ((n : ℤ) * A151667 n).toNat).toNat

end

end A151671.P18222271707389832936

namespace A151671

/-- `A151667(n)*A194459(A004515(n*A151667(n)))` -/
def P18222271707389832936.Spec : Prop :=
  ∀ n, P18222271707389832936.a n = A151671 n

end A151671

/-! ## A151671.P16696651048656061283

`A151667(n)*A194459(A004515(n))`
-/

namespace A151671.P16696651048656061283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151667 n * A194459 (A004515 n).toNat

end

end A151671.P16696651048656061283

namespace A151671

/-- `A151667(n)*A194459(A004515(n))` -/
def P16696651048656061283.Spec : Prop :=
  ∀ n, P16696651048656061283.a n = A151671 n

end A151671

/-! ## A151671.P6144244890392845436

`A084681(A194459(2*n))`
-/

namespace A151671.P6144244890392845436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084681 (A194459 (2 * n)).toNat

end

end A151671.P6144244890392845436

namespace A151671

/-- `A084681(A194459(2*n))` -/
def P6144244890392845436.Spec : Prop :=
  ∀ n, P6144244890392845436.a n = A151671 n

end A151671

/-! ## A151671.P11399641433786882452

`A151667(n)*A194459(2*n)`
-/

namespace A151671.P11399641433786882452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151667 n * A194459 (2 * n)

end

end A151671.P11399641433786882452

namespace A151671

/-- `A151667(n)*A194459(2*n)` -/
def P11399641433786882452.Spec : Prop :=
  ∀ n, P11399641433786882452.a n = A151671 n

end A151671

/-! ## A151671.P3364295724139774891

`∏{digits}[A007091(2*n), A117980(#)]`
-/

namespace A151671.P3364295724139774891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A117980 x).prod

end

end A151671.P3364295724139774891

namespace A151671

/-- `∏{digits}[A007091(2*n), A117980(#)]` -/
def P3364295724139774891.Spec : Prop :=
  ∀ n, P3364295724139774891.a n = A151671 n

end A151671

/-! ## A151671.P18075567453669795859

`A117980(A037468(2*n))`
-/

namespace A151671.P18075567453669795859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117980 (A037468 (2 * n)).toNat

end

end A151671.P18075567453669795859

namespace A151671

/-- `A117980(A037468(2*n))` -/
def P18075567453669795859.Spec : Prop :=
  ∀ n, P18075567453669795859.a n = A151671 n

end A151671

/-!
# A151672: G.f.: Product_{k>=0} (1 + 4*x^(3^k)).

The programs for A151672, the canonical program `A151672.P7047860861079958099` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151672 has offset 0).

The definition of A151672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151672.P7047860861079958099

`a(floor(n/3))*a(n%3)` with `a(0)=1, a(1)=4, a(2)=0`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A151672

/-- `a(floor(n/3))*a(n%3)` -/
def P7047860861079958099.Spec : Prop :=
  ∀ n, (P7047860861079958099.a n : ℤ) = A151672 n

theorem P7047860861079958099.correct : P7047860861079958099.Spec := by
  intro n
  simp only [A151672]

end A151672

/-! ## A151672.P16995289722476930997

`A151668(n)²`
-/

namespace A151672.P16995289722476930997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151668 n ^ 2

end

end A151672.P16995289722476930997

namespace A151672

/-- `A151668(n)²` -/
def P16995289722476930997.Spec : Prop :=
  ∀ n, P16995289722476930997.a n = A151672 n

end A151672

/-! ## A151672.P13903447946798592462

`∏{digits}[A072998(n), #²]`
-/

namespace A151672.P13903447946798592462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072998 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).prod

end

end A151672.P13903447946798592462

namespace A151672

/-- `∏{digits}[A072998(n), #²]` -/
def P13903447946798592462.Spec : Prop :=
  ∀ n, (P13903447946798592462.a n : ℤ) = A151672 n

end A151672

/-! ## A151672.P14059358166450673834

`A002620(2*A151668(n))`
-/

namespace A151672.P14059358166450673834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A151668 n).toNat

end

end A151672.P14059358166450673834

namespace A151672

/-- `A002620(2*A151668(n))` -/
def P14059358166450673834.Spec : Prop :=
  ∀ n, P14059358166450673834.a n = A151672 n

end A151672

/-! ## A151672.P10569202133652191458

`A006047(n)*A151668(n)`
-/

namespace A151672.P10569202133652191458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 n * A151668 n

end

end A151672.P10569202133652191458

namespace A151672

/-- `A006047(n)*A151668(n)` -/
def P10569202133652191458.Spec : Prop :=
  ∀ n, P10569202133652191458.a n = A151672 n

end A151672

/-! ## A151672.P16605272709814761166

`A051638(n)*A151668(n)`
-/

namespace A151672.P16605272709814761166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051638 n * A151668 n

end

end A151672.P16605272709814761166

namespace A151672

/-- `A051638(n)*A151668(n)` -/
def P16605272709814761166.Spec : Prop :=
  ∀ n, P16605272709814761166.a n = A151672 n

end A151672

/-! ## A151672.P9085936894181253795

`A120880(n)*A151668(n)`
-/

namespace A151672.P9085936894181253795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 n * A151668 n

end

end A151672.P9085936894181253795

namespace A151672

/-- `A120880(n)*A151668(n)` -/
def P9085936894181253795.Spec : Prop :=
  ∀ n, P9085936894181253795.a n = A151672 n

end A151672

/-! ## A151672.P14809995307033408376

`A151668(n)*A206424(n)`
-/

namespace A151672.P14809995307033408376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151668 n * A206424 n

end

end A151672.P14809995307033408376

namespace A151672

/-- `A151668(n)*A206424(n)` -/
def P14809995307033408376.Spec : Prop :=
  ∀ n, P14809995307033408376.a n = A151672 n

end A151672

/-! ## A151672.P13881749724370678641

`A151668(n)*A385859(n)`
-/

namespace A151672.P13881749724370678641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151668 n * A385859 n

end

end A151672.P13881749724370678641

namespace A151672

/-- `A151668(n)*A385859(n)` -/
def P13881749724370678641.Spec : Prop :=
  ∀ n, P13881749724370678641.a n = A151672 n

end A151672

/-! ## A151672.P7782032899242147678

`(A006047(n)*A039966(n))²`
-/

namespace A151672.P7782032899242147678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006047 n * A039966 n) ^ 2

end

end A151672.P7782032899242147678

namespace A151672

/-- `(A006047(n)*A039966(n))²` -/
def P7782032899242147678.Spec : Prop :=
  ∀ n, P7782032899242147678.a n = A151672 n

end A151672

/-! ## A151672.P11618568139778969621

`(A039966(n)*A051638(n))²`
-/

namespace A151672.P11618568139778969621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039966 n * A051638 n) ^ 2

end

end A151672.P11618568139778969621

namespace A151672

/-- `(A039966(n)*A051638(n))²` -/
def P11618568139778969621.Spec : Prop :=
  ∀ n, P11618568139778969621.a n = A151672 n

end A151672

/-! ## A151672.P17966182419649691125

`(A039966(n)*A120880(n))²`
-/

namespace A151672.P17966182419649691125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039966 n * A120880 n) ^ 2

end

end A151672.P17966182419649691125

namespace A151672

/-- `(A039966(n)*A120880(n))²` -/
def P17966182419649691125.Spec : Prop :=
  ∀ n, P17966182419649691125.a n = A151672 n

end A151672

/-! ## A151672.P2017871474886131190

`(A039966(n)*A206424(n))²`
-/

namespace A151672.P2017871474886131190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039966 n * A206424 n) ^ 2

end

end A151672.P2017871474886131190

namespace A151672

/-- `(A039966(n)*A206424(n))²` -/
def P2017871474886131190.Spec : Prop :=
  ∀ n, P2017871474886131190.a n = A151672 n

end A151672

/-! ## A151672.P14336665798343528573

`lcm(A006047(n), A006996(n))²`
-/

namespace A151672.P14336665798343528573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006047 n) (A006996 n) ^ 2

end

end A151672.P14336665798343528573

namespace A151672

/-- `lcm(A006047(n), A006996(n))²` -/
def P14336665798343528573.Spec : Prop :=
  ∀ n, (P14336665798343528573.a n : ℤ) = A151672 n

end A151672

/-! ## A151672.P17176655884567806152

`lcm(A051638(n), A092037(n))²`
-/

namespace A151672.P17176655884567806152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051638 n) (A092037 n) ^ 2

end

end A151672.P17176655884567806152

namespace A151672

/-- `lcm(A051638(n), A092037(n))²` -/
def P17176655884567806152.Spec : Prop :=
  ∀ n, (P17176655884567806152.a n : ℤ) = A151672 n

end A151672

/-! ## A151672.P7159425832157818073

`∏{digits}[A007089(n), A000122(#)²]`
-/

namespace A151672.P7159425832157818073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000122 x ^ 2).prod

end

end A151672.P7159425832157818073

namespace A151672

/-- `∏{digits}[A007089(n), A000122(#)²]` -/
def P7159425832157818073.Spec : Prop :=
  ∀ n, P7159425832157818073.a n = A151672 n

end A151672

/-! ## A151672.P2586430062434394418

`∏{digits}[A007089(n), A006996(#)²]`
-/

namespace A151672.P2586430062434394418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A006996 x ^ 2).prod

end

end A151672.P2586430062434394418

namespace A151672

/-- `∏{digits}[A007089(n), A006996(#)²]` -/
def P2586430062434394418.Spec : Prop :=
  ∀ n, P2586430062434394418.a n = A151672 n

end A151672

/-! ## A151672.P1720508505241306180

`∏{digits}[A007089(n), A033716(#)²]`
-/

namespace A151672.P1720508505241306180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A033716 x ^ 2).prod

end

end A151672.P1720508505241306180

namespace A151672

/-- `∏{digits}[A007089(n), A033716(#)²]` -/
def P1720508505241306180.Spec : Prop :=
  ∀ n, P1720508505241306180.a n = A151672 n

end A151672

/-! ## A151672.P4598391050095192613

`lcm(A092037(n)², A120880(n)²)`
-/

namespace A151672.P4598391050095192613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A092037 n ^ 2) (A120880 n ^ 2)

end

end A151672.P4598391050095192613

namespace A151672

/-- `lcm(A092037(n)², A120880(n)²)` -/
def P4598391050095192613.Spec : Prop :=
  ∀ n, (P4598391050095192613.a n : ℤ) = A151672 n

end A151672

/-!
# A151673: G.f.: Product_{k>=0} (1 + 4*x^(4^k)).

The programs for A151673, the canonical program `A151673.P12118802834766587725` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151673 has offset 0).

The definition of A151673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151673.P12118802834766587725

`A151669(n)²`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A151673

/-- `A151669(n)²` -/
def P12118802834766587725.Spec : Prop :=
  ∀ n, P12118802834766587725.a n = A151673 n

theorem P12118802834766587725.correct : P12118802834766587725.Spec := by
  intro n
  simp only [A151673]

end A151673

/-! ## A151673.P6310360623635718621

`A006288(A151665(n))`
-/

namespace A151673.P6310360623635718621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006288 (A151665 n).toNat

end

end A151673.P6310360623635718621

namespace A151673

/-- `A006288(A151665(n))` -/
def P6310360623635718621.Spec : Prop :=
  ∀ n, P6310360623635718621.a n = A151673 n

end A151673

/-! ## A151673.P3641970008877465709

`A023713(A151665(n)+1)`
-/

namespace A151673.P3641970008877465709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (A151665 n + 1).toNat

end

end A151673.P3641970008877465709

namespace A151673

/-- `A023713(A151665(n)+1)` -/
def P3641970008877465709.Spec : Prop :=
  ∀ n, P3641970008877465709.a n = A151673 n

end A151673

/-! ## A151673.P16455315176266146349

`A002620(2*A151669(n))`
-/

namespace A151673.P16455315176266146349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A151669 n).toNat

end

end A151673.P16455315176266146349

namespace A151673

/-- `A002620(2*A151669(n))` -/
def P16455315176266146349.Spec : Prop :=
  ∀ n, P16455315176266146349.a n = A151673 n

end A151673

/-! ## A151673.P5329675427822421570

`A004652(2*A151669(n))`
-/

namespace A151673.P5329675427822421570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (2 * A151669 n).toNat

end

end A151673.P5329675427822421570

namespace A151673

/-- `A004652(2*A151669(n))` -/
def P5329675427822421570.Spec : Prop :=
  ∀ n, P5329675427822421570.a n = A151673 n

end A151673

/-! ## A151673.P13396578909411876383

`A001316(n)*A151669(n)`
-/

namespace A151673.P13396578909411876383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A151669 n

end

end A151673.P13396578909411876383

namespace A151673

/-- `A001316(n)*A151669(n)` -/
def P13396578909411876383.Spec : Prop :=
  ∀ n, P13396578909411876383.a n = A151673 n

end A151673

/-! ## A151673.P7758482434275184111

`A102376(n)*A151666(n)`
-/

namespace A151673.P7758482434275184111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 n * A151666 n

end

end A151673.P7758482434275184111

namespace A151673

/-- `A102376(n)*A151666(n)` -/
def P7758482434275184111.Spec : Prop :=
  ∀ n, P7758482434275184111.a n = A151673 n

end A151673

/-! ## A151673.P12263998212768666500

`A106737(n)*A151669(n)`
-/

namespace A151673.P12263998212768666500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 n * A151669 n

end

end A151673.P12263998212768666500

namespace A151673

/-- `A106737(n)*A151669(n)` -/
def P12263998212768666500.Spec : Prop :=
  ∀ n, P12263998212768666500.a n = A151673 n

end A151673

/-! ## A151673.P15837671058115313044

`A134660(n)*A151666(n)`
-/

namespace A151673.P15837671058115313044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134660 n * A151666 n

end

end A151673.P15837671058115313044

namespace A151673

/-- `A134660(n)*A151666(n)` -/
def P15837671058115313044.Spec : Prop :=
  ∀ n, P15837671058115313044.a n = A151673 n

end A151673

/-! ## A151673.P13595424189609672766

`A151669(n)*A245564(n)`
-/

namespace A151673.P13595424189609672766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151669 n * A245564 n

end

end A151673.P13595424189609672766

namespace A151673

/-- `A151669(n)*A245564(n)` -/
def P13595424189609672766.Spec : Prop :=
  ∀ n, P13595424189609672766.a n = A151673 n

end A151673

/-! ## A151673.P3853438945950975781

`A151669(n)*A245565(n)`
-/

namespace A151673.P3853438945950975781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151669 n * A245565 n

end

end A151673.P3853438945950975781

namespace A151673

/-- `A151669(n)*A245565(n)` -/
def P3853438945950975781.Spec : Prop :=
  ∀ n, P3853438945950975781.a n = A151673 n

end A151673

/-! ## A151673.P9369468661370610695

`A151669(n)*A246029(n)`
-/

namespace A151673.P9369468661370610695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151669 n * A246029 n

end

end A151673.P9369468661370610695

namespace A151673

/-- `A151669(n)*A246029(n)` -/
def P9369468661370610695.Spec : Prop :=
  ∀ n, P9369468661370610695.a n = A151673 n

end A151673

/-! ## A151673.P5995728493260100966

`A151666(n)*A253064(n)`
-/

namespace A151673.P5995728493260100966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151666 n * A253064 n

end

end A151673.P5995728493260100966

namespace A151673

/-- `A151666(n)*A253064(n)` -/
def P5995728493260100966.Spec : Prop :=
  ∀ n, P5995728493260100966.a n = A151673 n

end A151673

/-! ## A151673.P3303680012525388345

`A151666(n)*A255297(n)`
-/

namespace A151673.P3303680012525388345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151666 n * A255297 n

end

end A151673.P3303680012525388345

namespace A151673

/-- `A151666(n)*A255297(n)` -/
def P3303680012525388345.Spec : Prop :=
  ∀ n, P3303680012525388345.a n = A151673 n

end A151673

/-! ## A151673.P17555892562381204095

`A151666(n)*A255298(n)`
-/

namespace A151673.P17555892562381204095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151666 n * A255298 n

end

end A151673.P17555892562381204095

namespace A151673

/-- `A151666(n)*A255298(n)` -/
def P17555892562381204095.Spec : Prop :=
  ∀ n, P17555892562381204095.a n = A151673 n

end A151673

/-! ## A151673.P7242828459307762552

`A151666(n)*A255300(n)`
-/

namespace A151673.P7242828459307762552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151666 n * A255300 n

end

end A151673.P7242828459307762552

namespace A151673

/-- `A151666(n)*A255300(n)` -/
def P7242828459307762552.Spec : Prop :=
  ∀ n, P7242828459307762552.a n = A151673 n

end A151673

/-! ## A151673.P12562730770940060069

`A151666(n)*A255302(n)`
-/

namespace A151673.P12562730770940060069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151666 n * A255302 n

end

end A151673.P12562730770940060069

namespace A151673

/-- `A151666(n)*A255302(n)` -/
def P12562730770940060069.Spec : Prop :=
  ∀ n, P12562730770940060069.a n = A151673 n

end A151673

/-! ## A151673.P2424499968950818679

`A151669(n)*A268444(n)`
-/

namespace A151673.P2424499968950818679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151669 n * A268444 n

end

end A151673.P2424499968950818679

namespace A151673

/-- `A151669(n)*A268444(n)` -/
def P2424499968950818679.Spec : Prop :=
  ∀ n, P2424499968950818679.a n = A151673 n

end A151673

/-! ## A151673.P7850079100954392785

`A151669(n)*A270438(n)`
-/

namespace A151673.P7850079100954392785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151669 n * A270438 n

end

end A151673.P7850079100954392785

namespace A151673

/-- `A151669(n)*A270438(n)` -/
def P7850079100954392785.Spec : Prop :=
  ∀ n, P7850079100954392785.a n = A151673 n

end A151673

/-! ## A151673.P14944280824202993778

`A151669(n)*A277561(n)`
-/

namespace A151673.P14944280824202993778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151669 n * A277561 n

end

end A151673.P14944280824202993778

namespace A151673

/-- `A151669(n)*A277561(n)` -/
def P14944280824202993778.Spec : Prop :=
  ∀ n, P14944280824202993778.a n = A151673 n

end A151673

/-!
# A151674: G.f.: Product_{k >= 0} (1 + 4*x^(5^k)).

The programs for A151674, the canonical program `A151674.P15988754925228505936` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151674 has offset 0).

The definition of A151674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151674.P13094868014987832253

`A151670(n)²`
-/

namespace A151674.P13094868014987832253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151670 n ^ 2

end

end A151674.P13094868014987832253

namespace A151674

/-- `A151670(n)²` -/
def P13094868014987832253.Spec : Prop :=
  ∀ n, P13094868014987832253.a n = A151674 n

end A151674

/-! ## A151674.P15988754925228505936

`A006288(A151671(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A151674

/-- `A006288(A151671(n))` -/
def P15988754925228505936.Spec : Prop :=
  ∀ n, P15988754925228505936.a n = A151674 n

theorem P15988754925228505936.correct : P15988754925228505936.Spec := by
  intro n
  simp only [A151674]

end A151674

/-! ## A151674.P7255381840246554360

`A002620(2*A151670(n))`
-/

namespace A151674.P7255381840246554360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A151670 n).toNat

end

end A151674.P7255381840246554360

namespace A151674

/-- `A002620(2*A151670(n))` -/
def P7255381840246554360.Spec : Prop :=
  ∀ n, P7255381840246554360.a n = A151674 n

end A151674

/-! ## A151674.P3582742311584012992

`A151670(n)*A194459(n)`
-/

namespace A151674.P3582742311584012992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151670 n * A194459 n

end

end A151674.P3582742311584012992

namespace A151674

/-- `A151670(n)*A194459(n)` -/
def P3582742311584012992.Spec : Prop :=
  ∀ n, P3582742311584012992.a n = A151674 n

end A151674

/-! ## A151674.P3640580293491596263

`A151670(n)*A385825(n)`
-/

namespace A151674.P3640580293491596263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151670 n * A385825 n

end

end A151674.P3640580293491596263

namespace A151674

/-- `A151670(n)*A385825(n)` -/
def P3640580293491596263.Spec : Prop :=
  ∀ n, P3640580293491596263.a n = A151674 n

end A151674

/-! ## A151674.P822761413522172161

`A061392(2*A151671(n))²`
-/

namespace A151674.P822761413522172161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (2 * A151671 n).toNat ^ 2

end

end A151674.P822761413522172161

namespace A151674

/-- `A061392(2*A151671(n))²` -/
def P822761413522172161.Spec : Prop :=
  ∀ n, P822761413522172161.a n = A151674 n

end A151674

/-! ## A151674.P5145682788330880614

`(A151667(n)*A194459(n))²`
-/

namespace A151674.P5145682788330880614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A151667 n * A194459 n) ^ 2

end

end A151674.P5145682788330880614

namespace A151674

/-- `(A151667(n)*A194459(n))²` -/
def P5145682788330880614.Spec : Prop :=
  ∀ n, P5145682788330880614.a n = A151674 n

end A151674

/-! ## A151674.P3383893405338357888

`∏{digits}[A007091(n), A130706(#)²]`
-/

namespace A151674.P3383893405338357888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A130706 x ^ 2).prod

end

end A151674.P3383893405338357888

namespace A151674

/-- `∏{digits}[A007091(n), A130706(#)²]` -/
def P3383893405338357888.Spec : Prop :=
  ∀ n, P3383893405338357888.a n = A151674 n

end A151674

/-! ## A151674.P7063142572106283921

`∏{digits}[A007091(n), A204531(#)²]`
-/

namespace A151674.P7063142572106283921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A204531 x ^ 2).prod

end

end A151674.P7063142572106283921

namespace A151674

/-- `∏{digits}[A007091(n), A204531(#)²]` -/
def P7063142572106283921.Spec : Prop :=
  ∀ n, P7063142572106283921.a n = A151674 n

end A151674

/-! ## A151674.P17037418752357838270

`A151670(n)^A020639(2*(n+1))`
-/

namespace A151674.P17037418752357838270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151670 n : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A151674.P17037418752357838270

namespace A151674

/-- `A151670(n)^A020639(2*(n+1))` -/
def P17037418752357838270.Spec : Prop :=
  ∀ n, P17037418752357838270.a n = (A151674 n : ℚ)

end A151674

/-! ## A151674.P4838924270230073033

`A151670(n)^ceil(atan(A025473(n+1)))`
-/

namespace A151674.P4838924270230073033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151670 n : ℚ) ^ (⌈Real.arctan (A025473 (n + 1) : ℝ)⌉ : ℤ)

end

end A151674.P4838924270230073033

namespace A151674

/-- `A151670(n)^ceil(atan(A025473(n+1)))` -/
def P4838924270230073033.Spec : Prop :=
  ∀ n, P4838924270230073033.a n = (A151674 n : ℚ)

end A151674

/-! ## A151674.P6367490286006454062

`A151670(n)^ceil(atan(A016969(n)+n))`
-/

namespace A151674.P6367490286006454062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151670 n : ℚ) ^ (⌈Real.arctan (A016969 n + (n : ℤ) : ℝ)⌉ : ℤ)

end

end A151674.P6367490286006454062

namespace A151674

/-- `A151670(n)^ceil(atan(A016969(n)+n))` -/
def P6367490286006454062.Spec : Prop :=
  ∀ n, P6367490286006454062.a n = (A151674 n : ℚ)

end A151674

/-! ## A151674.P608912636542380720

`A000695(A151667(n)*A151670(n))`
-/

namespace A151674.P608912636542380720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A151667 n * A151670 n).toNat

end

end A151674.P608912636542380720

namespace A151674

/-- `A000695(A151667(n)*A151670(n))` -/
def P608912636542380720.Spec : Prop :=
  ∀ n, P608912636542380720.a n = A151674 n

end A151674

/-! ## A151674.P15307612415298774982

`A102376(A215088(n))*A151667(n)`
-/

namespace A151674.P15307612415298774982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 (A215088 n).toNat * A151667 n

end

end A151674.P15307612415298774982

namespace A151674

/-- `A102376(A215088(n))*A151667(n)` -/
def P15307612415298774982.Spec : Prop :=
  ∀ n, P15307612415298774982.a n = A151674 n

end A151674

/-! ## A151674.P8717115858009111139

`A151670(n)^A014963(A001316(n))`
-/

namespace A151674.P8717115858009111139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151670 n : ℚ) ^ (A014963 (A001316 n).toNat : ℤ)

end

end A151674.P8717115858009111139

namespace A151674

/-- `A151670(n)^A014963(A001316(n))` -/
def P8717115858009111139.Spec : Prop :=
  ∀ n, P8717115858009111139.a n = (A151674 n : ℚ)

end A151674

/-! ## A151674.P5672067831592784441

`A151670(n)^A000005(A020483(n))`
-/

namespace A151674.P5672067831592784441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151670 n : ℚ) ^ (A000005 (A020483 n).toNat : ℤ)

end

end A151674.P5672067831592784441

namespace A151674

/-- `A151670(n)^A000005(A020483(n))` -/
def P5672067831592784441.Spec : Prop :=
  ∀ n, P5672067831592784441.a n = (A151674 n : ℚ)

end A151674

/-! ## A151674.P6373540327945199296

`A151670(n)^A151668(A151671(n))`
-/

namespace A151674.P6373540327945199296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151670 n : ℚ) ^ (A151668 (A151671 n).toNat : ℤ)

end

end A151674.P6373540327945199296

namespace A151674

/-- `A151670(n)^A151668(A151671(n))` -/
def P6373540327945199296.Spec : Prop :=
  ∀ n, P6373540327945199296.a n = (A151674 n : ℚ)

end A151674

/-! ## A151674.P3401201014113808235

`A151670(n*A151667(n))*A151670(n)`
-/

namespace A151674.P3401201014113808235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151670 ((n : ℤ) * A151667 n).toNat * A151670 n

end

end A151674.P3401201014113808235

namespace A151674

/-- `A151670(n*A151667(n))*A151670(n)` -/
def P3401201014113808235.Spec : Prop :=
  ∀ n, P3401201014113808235.a n = A151674 n

end A151674

/-! ## A151674.P10486628925417767676

`A151670(n)^A000005(sqrt(A001248(n+1)))`
-/

namespace A151674.P10486628925417767676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151670 n : ℚ) ^ (A000005 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat : ℤ)

end

end A151674.P10486628925417767676

namespace A151674

/-- `A151670(n)^A000005(sqrt(A001248(n+1)))` -/
def P10486628925417767676.Spec : Prop :=
  ∀ n, P10486628925417767676.a n = (A151674 n : ℚ)

end A151674

/-!
# A151675: Row sums of A154685.

The programs for A151675, the canonical program `A151675.P3600609076066140792` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151675 has offset 1).

The definition of A151675 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151675.P5974112467903516137

`(n+1)*(2*(n+1)²+5*(n+1)+9)/2`
-/

namespace A151675.P5974112467903516137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((2 * (n + 1) ^ 2 + 5 * (n + 1) + 9 : ℚ) / 2)

end

end A151675.P5974112467903516137

namespace A151675

/-- `(n+1)*(2*(n+1)²+5*(n+1)+9)/2` -/
def P5974112467903516137.Spec : Prop :=
  ∀ n, P5974112467903516137.a n = (A151675 (n + 1) : ℚ)

theorem P5974112467903516137.correct : P5974112467903516137.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A151675, Nat.add_sub_cancel, A151675.P5974112467903516137.a, A151675.P3600609076066140792.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A151675, Nat.add_sub_cancel, A151675.P5974112467903516137.a, A151675.P3600609076066140792.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A151675

/-! ## A151675.P3600609076066140792

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=8, a(1)=27, a(2)=63, a(3)=122`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A151675

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P3600609076066140792.Spec : Prop :=
  ∀ n, P3600609076066140792.a n = A151675 (n + 1)

theorem P3600609076066140792.correct : P3600609076066140792.Spec := by
  intro n
  simp only [A151675, Nat.add_sub_cancel]

end A151675

/-! ## A151675.P5143683179764668149

`A162261(n+1)+8*(n+1)`
-/

namespace A151675.P5143683179764668149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162261 (n + 1) + (8 * (n + 1) : ℤ)

end

end A151675.P5143683179764668149

namespace A151675

/-- `A162261(n+1)+8*(n+1)` -/
def P5143683179764668149.Spec : Prop :=
  ∀ n, P5143683179764668149.a n = A151675 (n + 1)

end A151675

/-! ## A151675.P14704393519255644683

`(n+2)^3-C(n, 2)`
-/

namespace A151675.P14704393519255644683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 3 : ℤ) - (Nat.choose n 2 : ℤ)

end

end A151675.P14704393519255644683

namespace A151675

/-- `(n+2)^3-C(n, 2)` -/
def P14704393519255644683.Spec : Prop :=
  ∀ n, P14704393519255644683.a n = A151675 (n + 1)

end A151675

/-! ## A151675.P12696670941544190399

`abs(∑[∑[a(n-1)+6]])` with `a(0)=8, a(1)=11`
-/

namespace A151675.P12696670941544190399
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [8, 11] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151675.P12696670941544190399

namespace A151675

/-- `abs(∑[∑[a(n-1)+6]])` -/
def P12696670941544190399.Spec : Prop :=
  ∀ n, (P12696670941544190399.a n : ℤ) = A151675 (n + 1)

end A151675

/-! ## A151675.P5623294661452133329

`∑[a(n-1)+5]+(n+1)^3` with `a(0)=7`
-/

namespace A151675.P5623294661452133329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) ^ 3

end

end A151675.P5623294661452133329

namespace A151675

/-- `∑[a(n-1)+5]+(n+1)^3` -/
def P5623294661452133329.Spec : Prop :=
  ∀ n, (P5623294661452133329.a n : ℤ) = A151675 (n + 1)

end A151675

/-! ## A151675.P15988230772533824633

`A162264(n+1)+1+n`
-/

namespace A151675.P15988230772533824633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162264 (n + 1) + 1 + (n : ℤ)

end

end A151675.P15988230772533824633

namespace A151675

/-- `A162264(n+1)+1+n` -/
def P15988230772533824633.Spec : Prop :=
  ∀ n, P15988230772533824633.a n = A151675 (n + 1)

end A151675

/-! ## A151675.P7295672207354322524

`A162263(n+1)-(n+1)`
-/

namespace A151675.P7295672207354322524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162263 (n + 1) - (n + 1 : ℤ)

end

end A151675.P7295672207354322524

namespace A151675

/-- `A162263(n+1)-(n+1)` -/
def P7295672207354322524.Spec : Prop :=
  ∀ n, P7295672207354322524.a n = A151675 (n + 1)

end A151675

/-! ## A151675.P17446096596994088734

`(n+2)^3-A161680(n)`
-/

namespace A151675.P17446096596994088734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 3 : ℤ) - A161680 n

end

end A151675.P17446096596994088734

namespace A151675

/-- `(n+2)^3-A161680(n)` -/
def P17446096596994088734.Spec : Prop :=
  ∀ n, P17446096596994088734.a n = A151675 (n + 1)

end A151675

/-! ## A151675.P2248421278592463876

`A162267(n+1)+2*(n+1)`
-/

namespace A151675.P2248421278592463876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162267 (n + 1) + (2 * (n + 1) : ℤ)

end

end A151675.P2248421278592463876

namespace A151675

/-- `A162267(n+1)+2*(n+1)` -/
def P2248421278592463876.Spec : Prop :=
  ∀ n, P2248421278592463876.a n = A151675 (n + 1)

end A151675

/-! ## A151675.P5713111568693214240

`A162254(n+1)+4*(n+1)`
-/

namespace A151675.P5713111568693214240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162254 (n + 1) + (4 * (n + 1) : ℤ)

end

end A151675.P5713111568693214240

namespace A151675

/-- `A162254(n+1)+4*(n+1)` -/
def P5713111568693214240.Spec : Prop :=
  ∀ n, P5713111568693214240.a n = A151675 (n + 1)

end A151675

/-! ## A151675.P8621800677984578421

`A144640(n+1)+5*(n+1)`
-/

namespace A151675.P8621800677984578421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144640 (n + 1) + (5 * (n + 1) : ℤ)

end

end A151675.P8621800677984578421

namespace A151675

/-- `A144640(n+1)+5*(n+1)` -/
def P8621800677984578421.Spec : Prop :=
  ∀ n, P8621800677984578421.a n = A151675 (n + 1)

end A151675

/-! ## A151675.P17841842491408147203

`(n+2)^3+n-A000217(n)`
-/

namespace A151675.P17841842491408147203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 3 : ℤ) + ((n : ℤ) - A000217 n)

end

end A151675.P17841842491408147203

namespace A151675

/-- `(n+2)^3+n-A000217(n)` -/
def P17841842491408147203.Spec : Prop :=
  ∀ n, P17841842491408147203.a n = A151675 (n + 1)

end A151675

/-! ## A151675.P12374125224357074960

`A224141(n+1)+∑[(n+1)²]`
-/

namespace A151675.P12374125224357074960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224141 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A151675.P12374125224357074960

namespace A151675

/-- `A224141(n+1)+∑[(n+1)²]` -/
def P12374125224357074960.Spec : Prop :=
  ∀ n, P12374125224357074960.a n = A151675 (n + 1)

end A151675

/-! ## A151675.P13534695830006077799

`∑[∑[A016969(n)]+2]+n+1`
-/

namespace A151675.P13534695830006077799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A151675.P13534695830006077799

namespace A151675

/-- `∑[∑[A016969(n)]+2]+n+1` -/
def P13534695830006077799.Spec : Prop :=
  ∀ n, P13534695830006077799.a n = A151675 (n + 1)

end A151675

/-! ## A151675.P14837394713669112420

`(2*n+1)*(A000217(n+2)+2)+3`
-/

namespace A151675.P14837394713669112420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (A000217 (n + 2) + 2) + 3

end

end A151675.P14837394713669112420

namespace A151675

/-- `(2*n+1)*(A000217(n+2)+2)+3` -/
def P14837394713669112420.Spec : Prop :=
  ∀ n, P14837394713669112420.a n = A151675 (n + 1)

end A151675

/-! ## A151675.P1043775503116726377

`A163655(n)+A106648(n)`
-/

namespace A151675.P1043775503116726377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163655 n + A106648 n

end

end A151675.P1043775503116726377

namespace A151675

/-- `A163655(n)+A106648(n)` -/
def P1043775503116726377.Spec : Prop :=
  ∀ n, P1043775503116726377.a n = A151675 (n + 1)

end A151675

/-! ## A151675.P11611444749800504814

`A179436(n)+A100109(n+1)`
-/

namespace A151675.P11611444749800504814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179436 n + A100109 (n + 1)

end

end A151675.P11611444749800504814

namespace A151675

/-- `A179436(n)+A100109(n+1)` -/
def P11611444749800504814.Spec : Prop :=
  ∀ n, P11611444749800504814.a n = A151675 (n + 1)

end A151675

/-! ## A151675.P5948526617392949190

`A000439(n+1)-A055417(n)`
-/

namespace A151675.P5948526617392949190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000439 (n + 1) - A055417 n

end

end A151675.P5948526617392949190

namespace A151675

/-- `A000439(n+1)-A055417(n)` -/
def P5948526617392949190.Spec : Prop :=
  ∀ n, P5948526617392949190.a n = A151675 (n + 1)

end A151675

/-! ## A151675.P1545044969892001563

`A188377(n+3)+A052905(n)`
-/

namespace A151675.P1545044969892001563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188377 (n + 3) + A052905 n

end

end A151675.P1545044969892001563

namespace A151675

/-- `A188377(n+3)+A052905(n)` -/
def P1545044969892001563.Spec : Prop :=
  ∀ n, P1545044969892001563.a n = A151675 (n + 1)

end A151675

/-!
# A151676: Let c(n) = x^(2^n-1)*(1-x^(2^n)), g(n) = 1 + x^(2^n-1) + x^(2^n), h(n) = Product_{i=1..n} g(i); then use g.f. Sum_{n>=1} c(n)/h(n).

The programs for A151676, there is no canonical definition to state claims against.
-/

/-! ## A151676.P9320555310206531089

`C(2, n²)-A151684(n)`
-/

namespace A151676.P9320555310206531089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n ^ 2) : ℤ) - A151684 n

end

end A151676.P9320555310206531089

/-! ## A151676.P6244685442579402874

`A130706(n)-A151684(n)`
-/

namespace A151676.P6244685442579402874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n - A151684 n

end

end A151676.P6244685442579402874

/-! ## A151676.P5026879692214955484

`A134824(n)*A151684(n)`
-/

namespace A151676.P5026879692214955484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 n * A151684 n

end

end A151676.P5026879692214955484

/-! ## A151676.P8041874838634151245

`A105348(n²)-A151684(n)`
-/

namespace A151676.P8041874838634151245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105348 (n ^ 2) - A151684 n

end

end A151676.P8041874838634151245

/-! ## A151676.P5661014547226331793

`A134824(n²)-A151684(n)+1`
-/

namespace A151676.P5661014547226331793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n ^ 2) - A151684 n + 1

end

end A151676.P5661014547226331793

/-! ## A151676.P16473349345070374960

`A033749(A003817(n))-A151684(n)`
-/

namespace A151676.P16473349345070374960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033749 (A003817 n).toNat - A151684 n

end

end A151676.P16473349345070374960

/-! ## A151676.P1263661401014567152

`A062157(A002088(n))*A151684(n)`
-/

namespace A151676.P1263661401014567152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A002088 n).toNat * A151684 n

end

end A151676.P1263661401014567152

/-! ## A151676.P10419669778563583701

`A346773(A008578(n+1))-A151684(n)`
-/

namespace A151676.P10419669778563583701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346773 (A008578 (n + 1)).toNat - A151684 n

end

end A151676.P10419669778563583701

/-! ## A151676.P5769831956063496497

`and(-A151684(n), A134824(A056239(n+1)))`
-/

namespace A151676.P5769831956063496497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A151684 n) (A134824 (A056239 (n + 1)).toNat)

end

end A151676.P5769831956063496497

/-! ## A151676.P2754923507861229394

`and(-A151684(n), A134824(A064097(n+1)))`
-/

namespace A151676.P2754923507861229394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A151684 n) (A134824 (A064097 (n + 1)).toNat)

end

end A151676.P2754923507861229394

/-!
# A151677: a(n) = sum_{k >= 0} binomial(3*wt(n+k),k), where wt() = A000120().

The programs for A151677, there is no canonical definition to state claims against.
-/

/-! ## A151677.P324275814659118575

`A151680(3*n+1)+1`
-/

namespace A151677.P324275814659118575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151680 (3 * n + 1) + 1

end

end A151677.P324275814659118575

/-! ## A151677.P14064882615203448224

`A118977(A004760(3*(n+1)))`
-/

namespace A151677.P14064882615203448224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 (A004760 (3 * (n + 1))).toNat

end

end A151677.P14064882615203448224

/-! ## A151677.P11241319111680086263

`A118977(A004755(3*n+1))`
-/

namespace A151677.P11241319111680086263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 (A004755 (3 * n + 1)).toNat

end

end A151677.P11241319111680086263

/-! ## A151677.P14616951533035653506

`A118977(A004757(3*n+1))`
-/

namespace A151677.P14616951533035653506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 (A004757 (3 * n + 1)).toNat

end

end A151677.P14616951533035653506

/-! ## A151677.P4210497043069208361

`A118977(A206332(3*n+2))`
-/

namespace A151677.P4210497043069208361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 (A206332 (3 * n + 2)).toNat

end

end A151677.P4210497043069208361

/-! ## A151677.P10762219701460140797

`A118977(record[A038572(3*(n+1))])`
-/

namespace A151677.P10762219701460140797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A151677.P10762219701460140797

/-! ## A151677.P9060118385361577956

`A118977(A080565(2*n+1)-n)`
-/

namespace A151677.P9060118385361577956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 (A080565 (2 * n + 1) - (n : ℤ)).toNat

end

end A151677.P9060118385361577956

/-! ## A151677.P4038561249287032718

`A118977(A346304(2*n+1)-n)`
-/

namespace A151677.P4038561249287032718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 (A346304 (2 * n + 1) - (n : ℤ)).toNat

end

end A151677.P4038561249287032718

/-! ## A151677.P14580744823688232667

`A151553(3*n)+A151552(3*n)`
-/

namespace A151677.P14580744823688232667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151553 (3 * n) + A151552 (3 * n)

end

end A151677.P14580744823688232667

/-! ## A151677.P14297744633781226072

`A163267(3*n+2)-A163267(3*n)`
-/

namespace A151677.P14297744633781226072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163267 (3 * n + 2) - A163267 (3 * n)

end

end A151677.P14297744633781226072

/-!
# A151678: a(n) = sum_{k >= 0} binomial(wt(n+k),2*k), where wt() = A000120().

The programs for A151678, there is no canonical definition to state claims against.
-/

/-! ## A151678.P7664209938191951454

`A151552(2*n)`
-/

namespace A151678.P7664209938191951454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151552 (2 * n)

end

end A151678.P7664209938191951454

/-! ## A151678.P17467292605016553701

`A151554(2*n+1)-A151553(2*n+1)`
-/

namespace A151678.P17467292605016553701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151554 (2 * n + 1) - A151553 (2 * n + 1)

end

end A151678.P17467292605016553701

/-! ## A151678.P14335093589189877321

`A300948(A300948(A151552(n+n)))`
-/

namespace A151678.P14335093589189877321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300948 (A300948 (A151552 (n + n)).toNat).toNat

end

end A151678.P14335093589189877321

/-! ## A151678.P2369458285842585141

`A151553(2*n)-A151702(2*n+1)`
-/

namespace A151678.P2369458285842585141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151553 (2 * n) - A151702 (2 * n + 1)

end

end A151678.P2369458285842585141

/-! ## A151678.P3305895307569187290

`A118977(2*n+1)-A151843(2*n+1)`
-/

namespace A151678.P3305895307569187290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 (2 * n + 1) - A151843 (2 * n + 1)

end

end A151678.P3305895307569187290

/-! ## A151678.P4926917766296817141

`A151570(2*n+1)-A151847(2*n+1)`
-/

namespace A151678.P4926917766296817141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151570 (2 * n + 1) - A151847 (2 * n + 1)

end

end A151678.P4926917766296817141

/-! ## A151678.P6719344314726562529

`A151846(2*n+1)-A151848(2*n+1)`
-/

namespace A151678.P6719344314726562529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151846 (2 * n + 1) - A151848 (2 * n + 1)

end

end A151678.P6719344314726562529

/-! ## A151678.P9330274854563874608

`A005843(A118977(2*n+1))-A151845(2*n+1)`
-/

namespace A151678.P9330274854563874608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A118977 (2 * n + 1)).toNat - A151845 (2 * n + 1)

end

end A151678.P9330274854563874608

/-! ## A151678.P9033315187216638652

`A151702(2*(n+1))`
-/

namespace A151678.P9033315187216638652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 (2 * (n + 1))

end

end A151678.P9033315187216638652

/-! ## A151678.P15106213101398442808

`root(A151702(Δ[n²]+1), 2)²`
-/

namespace A151678.P15106213101398442808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A151702 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A151678.P15106213101398442808

/-! ## A151678.P14106159573514022700

`∑{d}[A151702(n+2+n), A000010(#)]`
-/

namespace A151678.P14106159573514022700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 (n + 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A151678.P14106159573514022700

/-! ## A151678.P11822599305290648974

`A118977(A206332(2*(n+1)))-A151553(2*n)`
-/

namespace A151678.P11822599305290648974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 (A206332 (2 * (n + 1))).toNat - A151553 (2 * n)

end

end A151678.P11822599305290648974

/-! ## A151678.P14579736243553203651

`A151714(A006257(n+1)-1)`
-/

namespace A151678.P14579736243553203651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151714 (A006257 (n + 1) - 1).toNat

end

end A151678.P14579736243553203651

/-! ## A151678.P1250608653241055652

`A151714(A053645(2*(n+1)))`
-/

namespace A151678.P1250608653241055652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151714 (A053645 (2 * (n + 1))).toNat

end

end A151678.P1250608653241055652

/-! ## A151678.P14269650431033223971

`A151714(xor(1, A006257(n+1)))`
-/

namespace A151678.P14269650431033223971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151714 (Int.xor 1 (A006257 (n + 1))).toNat

end

end A151678.P14269650431033223971

/-! ## A151678.P2375121152475940631

`A151714(A053641(2*(n+1))-1)`
-/

namespace A151678.P2375121152475940631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151714 (A053641 (2 * (n + 1)) - 1).toNat

end

end A151678.P2375121152475940631

/-!
# A151679: a(n) = sum_{k >= 0} binomial(2*wt(n+k),k), where wt() = A000120().

The programs for A151679, there is no canonical definition to state claims against.
-/

/-! ## A151679.P3101269171038825802

`Δ[A163267(2*n)]`
-/

namespace A151679.P3101269171038825802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163267 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151679.P3101269171038825802

/-! ## A151679.P16157073329537116822

`A151680(Δ[n²])+1`
-/

namespace A151679.P16157073329537116822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151680 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A151679.P16157073329537116822

/-! ## A151679.P12743367303298170178

`A118977(A080565(n+1))`
-/

namespace A151679.P12743367303298170178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 (A080565 (n + 1)).toNat

end

end A151679.P12743367303298170178

/-! ## A151679.P15553713882288434217

`A118977(A346304(n+1))`
-/

namespace A151679.P15553713882288434217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 (A346304 (n + 1)).toNat

end

end A151679.P15553713882288434217

/-! ## A151679.P7221999928125001179

`abs(Δ[A163267(A005843(n))])`
-/

namespace A151679.P7221999928125001179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163267 (A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A151679.P7221999928125001179

/-! ## A151679.P7175779819433870523

`A118977(A004757(Δ[n²]))`
-/

namespace A151679.P7175779819433870523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 (A004757 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A151679.P7175779819433870523

/-! ## A151679.P1648046815997421750

`A118977(A004755(2*n+1))`
-/

namespace A151679.P1648046815997421750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 (A004755 (2 * n + 1)).toNat

end

end A151679.P1648046815997421750

/-! ## A151679.P14469257931096265221

`A020725(A151680(2*n+1))`
-/

namespace A151679.P14469257931096265221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A151680 (2 * n + 1)).toNat

end

end A151679.P14469257931096265221

/-! ## A151679.P10477306860830236648

`A118977(A206332(2*(n+1)))`
-/

namespace A151679.P10477306860830236648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 (A206332 (2 * (n + 1))).toNat

end

end A151679.P10477306860830236648

/-! ## A151679.P735008725672714358

`A118977(A004760(2*n+3))`
-/

namespace A151679.P735008725672714358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 (A004760 (2 * n + 3)).toNat

end

end A151679.P735008725672714358

/-!
# A151680: a(n) = sum_{k >= 0} binomial(wt(n+k),k+1), where wt() = A000120().

The programs for A151680, there is no canonical definition to state claims against.
-/

/-! ## A151680.P1754608588794202632

`A151846(n)-(A151844(n)+1)`
-/

namespace A151680.P1754608588794202632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151846 n - (A151844 n + 1)

end

end A151680.P1754608588794202632

/-! ## A151680.P11044095075879832159

`A151850(n)-(A151848(n)+1)`
-/

namespace A151680.P11044095075879832159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151850 n - (A151848 n + 1)

end

end A151680.P11044095075879832159

/-! ## A151680.P6950958500030621941

`A118977(n)+Δ[A163267(n)]-1`
-/

namespace A151680.P6950958500030621941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 n + (f1 (n + 1) - f1 n - 1)

end

end A151680.P6950958500030621941

/-! ## A151680.P1863681138525350380

`A118977(A004760(n+2))-1`
-/

namespace A151680.P1863681138525350380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 (A004760 (n + 2)).toNat - 1

end

end A151680.P1863681138525350380

/-! ## A151680.P18290105698721751736

`A118977(A062383(n)+n)-1`
-/

namespace A151680.P18290105698721751736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 (A062383 n + (n : ℤ)).toNat - 1

end

end A151680.P18290105698721751736

/-! ## A151680.P17201558696167829665

`A118977(record[A038572(n+1)])-1`
-/

namespace A151680.P17201558696167829665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A151680.P17201558696167829665

/-! ## A151680.P16723014542626994303

`A118977(A038572(2*n+1))-1`
-/

namespace A151680.P16723014542626994303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 (A038572 (2 * n + 1)).toNat - 1

end

end A151680.P16723014542626994303

/-! ## A151680.P1200480295710907799

`A118977(A206332(n+1))-1`
-/

namespace A151680.P1200480295710907799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 (A206332 (n + 1)).toNat - 1

end

end A151680.P1200480295710907799

/-! ## A151680.P10301553955998925870

`A118977(A004755(n+1)-1)-1`
-/

namespace A151680.P10301553955998925870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 (A004755 (n + 1) - 1).toNat - 1

end

end A151680.P10301553955998925870

/-! ## A151680.P15443746685123977125

`Δ[A151714(n)]+A151848(n)-1`
-/

namespace A151680.P15443746685123977125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A151848 n - 1)

end

end A151680.P15443746685123977125

/-!
# A151681: a(n) = sum_{k >= 0, k even} binomial(wt(n+k),k+1), where wt() = A000120().

The programs for A151681, there is no canonical definition to state claims against.
-/

/-! ## A151681.P1823472947610987565

`A151678(A132196(n))`
-/

namespace A151681.P1823472947610987565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151678 (A132196 n).toNat

end

end A151681.P1823472947610987565

/-! ## A151681.P983158791479520280

`A151552(2*A132196(n))`
-/

namespace A151681.P983158791479520280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151552 (2 * A132196 n).toNat

end

end A151681.P983158791479520280

/-! ## A151681.P14445163878355508817

`A151702(2*A038572(n+2))`
-/

namespace A151681.P14445163878355508817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 (2 * A038572 (n + 2)).toNat

end

end A151681.P14445163878355508817

/-! ## A151681.P2661241826670171512

`A151702(2*A080542(n+2))`
-/

namespace A151681.P2661241826670171512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 (2 * A080542 (n + 2)).toNat

end

end A151681.P2661241826670171512

/-! ## A151681.P7367507154367311402

`A151702(A000034(n)^7+n+1)`
-/

namespace A151681.P7367507154367311402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 (A000034 n ^ 7 + (n + 1 : ℤ)).toNat

end

end A151681.P7367507154367311402

/-! ## A151681.P260907665653797622

`A151702(n*n%2+1)+A151552(n)`
-/

namespace A151681.P260907665653797622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 (n * (n % 2) + 1) + A151552 n

end

end A151681.P260907665653797622

/-! ## A151681.P7225584298415763916

`A151702(n*and(1, n)+1)+A151552(n)`
-/

namespace A151681.P7225584298415763916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 (n * Nat.land 1 n + 1) + A151552 n

end

end A151681.P7225584298415763916

/-! ## A151681.P4915276744319123837

`A118977(lt[xor(n, floor(n/2)), n])-A151682(n)`
-/

namespace A151681.P4915276744319123837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) - A151682 n

end

end A151681.P4915276744319123837

/-! ## A151681.P11029928277829727080

`A118977(lt[n, 2*and(n, 2*n)])-A151682(n)`
-/

namespace A151681.P11029928277829727080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) - A151682 n

end

end A151681.P11029928277829727080

/-! ## A151681.P13432059132018744093

`A151552(A132196(n)+A132196(n))`
-/

namespace A151681.P13432059132018744093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151552 (A132196 n + A132196 n).toNat

end

end A151681.P13432059132018744093

/-!
# A151682: a(n) = Sum_{k >= 0, k odd} binomial(wt(n+k),k+1), where wt() = A000120().

The programs for A151682, there is no canonical definition to state claims against.
-/

/-! ## A151682.P15198560935341252179

`A151553(A053641(n+1)-1)`
-/

namespace A151682.P15198560935341252179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151553 (A053641 (n + 1) - 1).toNat

end

end A151682.P15198560935341252179

/-! ## A151682.P17781379411134546097

`A151553(xor(1, A053641(n+1)))`
-/

namespace A151682.P17781379411134546097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151553 (Int.xor 1 (A053641 (n + 1))).toNat

end

end A151682.P17781379411134546097

/-! ## A151682.P2949050800988974408

`A151553(and(-2, A053641(n+1)))`
-/

namespace A151682.P2949050800988974408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151553 (Int.land (-2) (A053641 (n + 1))).toNat

end

end A151682.P2949050800988974408

/-! ## A151682.P6351872380036894681

`A151702(2*A080542(n+1)+1)`
-/

namespace A151682.P6351872380036894681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 (2 * A080542 (n + 1) + 1).toNat

end

end A151682.P6351872380036894681

/-! ## A151682.P15971857989161768982

`A151702((n+1)^log2(gcd(2, n)))+A151552(n)`
-/

namespace A151682.P15971857989161768982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 (SequenceMachineLib.roundAway ((n + 1 : ℝ) ^ (Real.logb 2 (Nat.gcd 2 n : ℝ)))).toNat + A151552 n

end

end A151682.P15971857989161768982

/-! ## A151682.P16396204009850429468

`∑{d}[8-a(n-1), A151552(n+1-A071364(#))]` with `a(0)=1, a(1)=1`
-/

namespace A151682.P16396204009850429468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  8 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A151552 ((n + 1 : ℤ) - A071364 d).toNat

end

end A151682.P16396204009850429468

/-! ## A151682.P16735722425322662214

`A151702(A005408(A080542(n+1)))`
-/

namespace A151682.P16735722425322662214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 (A005408 (A080542 (n + 1)).toNat).toNat

end

end A151682.P16735722425322662214

/-! ## A151682.P13417742359781850429

`A151702(A080542(n+1)+A080542(n+1)+1)`
-/

namespace A151682.P13417742359781850429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 (A080542 (n + 1) + (A080542 (n + 1) + 1)).toNat

end

end A151682.P13417742359781850429

/-! ## A151682.P11418263569937302942

`A118977(A004755(n+1))-A151681(n)`
-/

namespace A151682.P11418263569937302942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 (A004755 (n + 1)).toNat - A151681 n

end

end A151682.P11418263569937302942

/-! ## A151682.P8947082739890570607

`A118977(A004757(n+1))-A151681(n)`
-/

namespace A151682.P8947082739890570607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 (A004757 (n + 1)).toNat - A151681 n

end

end A151682.P8947082739890570607

/-!
# A151683: Irregular triangle read by rows: row n (n>=0) gives binomial(wt(n+k),k), k >= 0, up to the point where the terms are all zeros (wt() = A000120()).

The programs for A151683, there is no canonical definition to state claims against.
-/

/-! ## A151683.P12521651388423757069

`A007318(and(A135646(n+1), A260320(n+1)))`
-/

namespace A151683.P12521651388423757069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land (A135646 (n + 1)) (A260320 (n + 1))).toNat

end

end A151683.P12521651388423757069

/-! ## A151683.P10621325033433936312

`A309876(and(A135646(n+1), A260320(n+1)))`
-/

namespace A151683.P10621325033433936312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309876 (Int.land (A135646 (n + 1)) (A260320 (n + 1))).toNat

end

end A151683.P10621325033433936312

/-! ## A151683.P5531633751293914902

`A227349(A160947(n+1)%A075458(n+1))`
-/

namespace A151683.P5531633751293914902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 (Int.tmod (A160947 (n + 1)) (A075458 (n + 1))).toNat

end

end A151683.P5531633751293914902

/-! ## A151683.P7389904553242020896

`A124010(xor(A275169(2*(n+1)), A325552(n)))`
-/

namespace A151683.P7389904553242020896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (Int.xor (A275169 (2 * (n + 1))) (A325552 n)).toNat

end

end A151683.P7389904553242020896

/-! ## A151683.P9602160208243444507

`A371809(∑[A389618(2*n+2)]+1)`
-/

namespace A151683.P9602160208243444507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389618 (2 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371809 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A151683.P9602160208243444507

/-!
# A151684: Let c(n) = x^(2^n-1)*(1-x^(2^n)), g(n) = 1 + x^(2^n-1) + x^(2^n), h(n) = Product_{i=1..n} g(i); then use g.f. (1+2*x) - Sum_{n>=1} c(n)/h(n).

The programs for A151684, there is no canonical definition to state claims against.
-/

/-! ## A151684.P7195944189151068589

`C(2, n²)-A151676(n)`
-/

namespace A151684.P7195944189151068589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n ^ 2) : ℤ) - A151676 n

end

end A151684.P7195944189151068589

/-! ## A151684.P1439744448614767578

`-A151676(round(acot(n)+n))`
-/

namespace A151684.P1439744448614767578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A151676 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A151684.P1439744448614767578

/-! ## A151684.P2905063594021720509

`A130706(n)-A151676(n)`
-/

namespace A151684.P2905063594021720509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n - A151676 n

end

end A151684.P2905063594021720509

/-! ## A151684.P12317935618844180840

`-A151676(A233583(n+1))`
-/

namespace A151684.P12317935618844180840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A151676 (A233583 (n + 1)).toNat

end

end A151684.P12317935618844180840

/-! ## A151684.P9453918759420448093

`A105348(n²)-A151676(n)`
-/

namespace A151684.P9453918759420448093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105348 (n ^ 2) - A151676 n

end

end A151684.P9453918759420448093

/-! ## A151684.P3791807359163159803

`A000079(n)%4-A151676(n)`
-/

namespace A151684.P3791807359163159803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) 4 - A151676 n

end

end A151684.P3791807359163159803

/-! ## A151684.P3969161825939872518

`A008683(8*(n+1))-A151676(round(acot(n)+n))`
-/

namespace A151684.P3969161825939872518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (8 * (n + 1)) - A151676 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A151684.P3969161825939872518

/-! ## A151684.P13102014464092511527

`A033749(A003817(n))-A151676(n)`
-/

namespace A151684.P13102014464092511527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033749 (A003817 n).toNat - A151676 n

end

end A151684.P13102014464092511527

/-! ## A151684.P367996616871084800

`A077957(A019426(n))-A151676(n)`
-/

namespace A151684.P367996616871084800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (A019426 n).toNat - A151676 n

end

end A151684.P367996616871084800

/-! ## A151684.P10513682189740028371

`A000007(n)-A151676(A254667(n))`
-/

namespace A151684.P10513682189740028371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A151676 (A254667 n).toNat

end

end A151684.P10513682189740028371

/-!
# A151685: a(n) = Sum_{k >= 0} bin2(wt(n+k),k+1), where bin2(i,j) = A013609(i,j), wt(i) = A000120(i).

The programs for A151685, there is no canonical definition to state claims against.
-/

/-! ## A151685.P3187889459144800259

`A151689(n)+1`
-/

namespace A151685.P3187889459144800259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151689 n + 1

end

end A151685.P3187889459144800259

/-! ## A151685.P11569143215610266723

`2*A151690(n)+1`
-/

namespace A151685.P11569143215610266723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151690 n + 1

end

end A151685.P11569143215610266723

/-! ## A151685.P9083033090152904895

`A004442(A151689(n))`
-/

namespace A151685.P9083033090152904895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A151689 n).toNat

end

end A151685.P9083033090152904895

/-! ## A151685.P13926950900444878889

`A005408(A151690(n))`
-/

namespace A151685.P13926950900444878889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A151690 n).toNat

end

end A151685.P13926950900444878889

/-! ## A151685.P118357465205426105

`A004442(2*A151690(n))`
-/

namespace A151685.P118357465205426105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A151690 n).toNat

end

end A151685.P118357465205426105

/-! ## A151685.P992535711157008235

`A008619(2*A151689(n))`
-/

namespace A151685.P992535711157008235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A151689 n).toNat

end

end A151685.P992535711157008235

/-! ## A151685.P10591941254301724569

`A305897(4*A151690(n))`
-/

namespace A151685.P10591941254301724569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (4 * A151690 n).toNat

end

end A151685.P10591941254301724569

/-! ## A151685.P9032862970289655549

`xor(A151689(n), A262681(n))`
-/

namespace A151685.P9032862970289655549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A151689 n) (A262681 n)

end

end A151685.P9032862970289655549

/-! ## A151685.P751321316462009283

`xor(A151689(n), A361338(n))`
-/

namespace A151685.P751321316462009283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A151689 n) (A361338 n)

end

end A151685.P751321316462009283

/-! ## A151685.P2616287588654924474

`A004277(A151690(n)+1)-1`
-/

namespace A151685.P2616287588654924474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151690 n + 1).toNat - 1

end

end A151685.P2616287588654924474

/-!
# A151687: G.f.: x + x^2 * Product_{n>=0} (1 + x^(2^n-1) + x^(2^n)).

The programs for A151687, there is no canonical definition to state claims against.
-/

/-! ## A151687.P14286191577729243253

`A160573(abs(2-n))%(n+1)`
-/

namespace A151687.P14286191577729243253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160573 |2 - (n : ℤ)|.toNat) (n + 1 : ℤ)

end

end A151687.P14286191577729243253

/-! ## A151687.P2514146716002262646

`A118977(comp[2^floor(log2(n+1))+n])`
-/

namespace A151687.P2514146716002262646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.log 2 (n + 1) + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A151687.P2514146716002262646

/-! ## A151687.P9751973945058421158

`A118977(lt[xor(n, floor(n/2)), n+1])%((n+1)²-n²)`
-/

namespace A151687.P9751973945058421158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118977 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)) (((n + 1) ^ 2 : ℤ) - (n ^ 2 : ℤ))

end

end A151687.P9751973945058421158

/-! ## A151687.P18199786662503750725

`A118977(A004760(n+1))%41`
-/

namespace A151687.P18199786662503750725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118977 (A004760 (n + 1)).toNat) 41

end

end A151687.P18199786662503750725

/-! ## A151687.P7908317349617095257

`A160573(abs(A020639(4*a(n-1)+4)-n))` with `a(0)=0, a(1)=1`
-/

namespace A151687.P7908317349617095257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A160573 |A020639 (4 * a (n - 1) + 4).toNat - (n : ℤ)|.toNat

end

end A151687.P7908317349617095257

/-! ## A151687.P1340840437007831186

`A163267(n)-A163267(A289207(n))`
-/

namespace A151687.P1340840437007831186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163267 n - A163267 (A289207 n).toNat

end

end A151687.P1340840437007831186

/-! ## A151687.P12506962109577824874

`A118977(A028310(n)-1)+A118977(n)`
-/

namespace A151687.P12506962109577824874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 (A028310 n - 1).toNat + A118977 n

end

end A151687.P12506962109577824874

/-! ## A151687.P711075504747122567

`A054977(n)*A118977(A004760(n+1))`
-/

namespace A151687.P711075504747122567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A118977 (A004760 (n + 1)).toNat

end

end A151687.P711075504747122567

/-! ## A151687.P6278123311557249757

`lcm(A087960(n), A118977(A004760(n+1)))`
-/

namespace A151687.P6278123311557249757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A118977 (A004760 (n + 1)).toNat)

end

end A151687.P6278123311557249757

/-! ## A151687.P6933445312987810141

`A118977(A004760(n+1))/(A000032(C(n, n+2))-1)`
-/

namespace A151687.P6933445312987810141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118977 (A004760 (n + 1)).toNat : ℚ) / (A000032 (Nat.choose n (n + 2)) - 1 : ℚ)

end

end A151687.P6933445312987810141

/-!
# A151688: G.f.: Product_{n>=0} (1 + x^(2^n-1) + 2*x^(2^n)).

The programs for A151688, there is no canonical definition to state claims against.
-/

/-! ## A151688.P2997845165335553647

`2*A152980(n)`
-/

namespace A151688.P2997845165335553647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152980 n

end

end A151688.P2997845165335553647

/-! ## A151688.P3166265293742949090

`Δ[2*A153006(n)]`
-/

namespace A151688.P3166265293742949090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151688.P3166265293742949090

/-! ## A151688.P1357676692526015126

`Δ[A159795(n)/2]`
-/

namespace A151688.P1357676692526015126
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159795 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151688.P1357676692526015126

/-! ## A151688.P962693865828927635

`A151555(n)+A151550(n)`
-/

namespace A151688.P962693865828927635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151555 n + A151550 n

end

end A151688.P962693865828927635

/-! ## A151688.P11557286575105934393

`A139251(A004755(n+1))/2`
-/

namespace A151688.P11557286575105934393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139251 (A004755 (n + 1)).toNat : ℚ) / 2

end

end A151688.P11557286575105934393

/-! ## A151688.P4449691347122892825

`A139251(A004757(n+1))/2`
-/

namespace A151688.P4449691347122892825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139251 (A004757 (n + 1)).toNat : ℚ) / 2

end

end A151688.P4449691347122892825

/-! ## A151688.P15753669018982674626

`A139251(A206332(n+2))/2`
-/

namespace A151688.P15753669018982674626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139251 (A206332 (n + 2)).toNat : ℚ) / 2

end

end A151688.P15753669018982674626

/-! ## A151688.P11325000141380137811

`A153006(n+1)+A152980(n)-A153006(n)`
-/

namespace A151688.P11325000141380137811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 (n + 1) + (A152980 n - A153006 n)

end

end A151688.P11325000141380137811

/-! ## A151688.P7882670397345462798

`A139251(n+1)+A152998(n+1)-A152998(n)`
-/

namespace A151688.P7882670397345462798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (n + 1) + (A152998 (n + 1) - A152998 n)

end

end A151688.P7882670397345462798

/-! ## A151688.P17447178425325714968

`Δ[A159793(n)]`
-/

namespace A151688.P17447178425325714968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159793 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151688.P17447178425325714968

/-! ## A151688.P1117511693422739832

`Δ[A194811(n)/2]`
-/

namespace A151688.P1117511693422739832
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194811 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151688.P1117511693422739832

/-! ## A151688.P15802882178905636524

`A147646(n+1)/2`
-/

namespace A151688.P15802882178905636524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147646 (n + 1) : ℚ) / 2

end

end A151688.P15802882178905636524

/-! ## A151688.P18043700378301818337

`2/3*A159785(n+1)`
-/

namespace A151688.P18043700378301818337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A159785 (n + 1) : ℚ)

end

end A151688.P18043700378301818337

/-! ## A151688.P17618420245830103044

`2*(n+1-Δ[A153007(n)])`
-/

namespace A151688.P17618420245830103044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) - (f1 (n + 1) - f1 n))

end

end A151688.P17618420245830103044

/-! ## A151688.P7563408380251024584

`Δ[A159794(n)]-A152980(n)`
-/

namespace A151688.P7563408380251024584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A152980 n

end

end A151688.P7563408380251024584

/-! ## A151688.P5148392096177776008

`A159785(n+1)-A152980(n)`
-/

namespace A151688.P5148392096177776008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159785 (n + 1) - A152980 n

end

end A151688.P5148392096177776008

/-! ## A151688.P1013578880294020985

`A159793(n+1)-A159793(n)`
-/

namespace A151688.P1013578880294020985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159793 (n + 1) - A159793 n

end

end A151688.P1013578880294020985

/-! ## A151688.P190163382159950203

`A159785(n+1)-Δ[A153006(n)]`
-/

namespace A151688.P190163382159950203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159785 (n + 1) - (f1 (n + 1) - f1 n)

end

end A151688.P190163382159950203

/-! ## A151688.P2434290196435908078

`2*(A147646(n+1)-A159785(n+1))`
-/

namespace A151688.P2434290196435908078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A147646 (n + 1) - A159785 (n + 1))

end

end A151688.P2434290196435908078

/-! ## A151688.P713290448632706680

`A159794(n+1)-(A159794(n)+A152980(n))`
-/

namespace A151688.P713290448632706680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159794 (n + 1) - (A159794 n + A152980 n)

end

end A151688.P713290448632706680

/-!
# A151689: a(n) = sum_{k >= 1} 2^wt(k) * binomial(wt(n+k),k).

The programs for A151689, there is no canonical definition to state claims against.
-/

/-! ## A151689.P13318504423358963380

`A151685(n)-1`
-/

namespace A151689.P13318504423358963380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151685 n - 1

end

end A151689.P13318504423358963380

/-! ## A151689.P11502014304208833751

`2*A151690(n)`
-/

namespace A151689.P11502014304208833751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151690 n

end

end A151689.P11502014304208833751

/-! ## A151689.P2362832353060557369

`xor(1, A151685(n%(n+1)))`
-/

namespace A151689.P2362832353060557369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A151685 (n % (n + 1)))

end

end A151689.P2362832353060557369

/-! ## A151689.P15855798650993018139

`A004277(A151690(n))`
-/

namespace A151689.P15855798650993018139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151690 n).toNat

end

end A151689.P15855798650993018139

/-! ## A151689.P5608857376289002215

`A004442(A151685(n))`
-/

namespace A151689.P5608857376289002215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A151685 n).toNat

end

end A151689.P5608857376289002215

/-! ## A151689.P14399579640346677197

`A004524(2*A151685(n))`
-/

namespace A151689.P14399579640346677197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (2 * A151685 n).toNat

end

end A151689.P14399579640346677197

/-! ## A151689.P6635792422999650635

`xor(A151685(n), A262681(n))`
-/

namespace A151689.P6635792422999650635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A151685 n) (A262681 n)

end

end A151689.P6635792422999650635

/-! ## A151689.P8348546641066904596

`xor(A151685(n), A361338(n))`
-/

namespace A151689.P8348546641066904596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A151685 n) (A361338 n)

end

end A151689.P8348546641066904596

/-! ## A151689.P16712414977534730766

`and(A151685(n), A224077(n+1))`
-/

namespace A151689.P16712414977534730766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A151685 n) (A224077 (n + 1))

end

end A151689.P16712414977534730766

/-! ## A151689.P13229934871050993058

`xor(A133707(n+1), A151685(n))`
-/

namespace A151689.P13229934871050993058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A133707 (n + 1)) (A151685 n)

end

end A151689.P13229934871050993058

/-!
# A151690: A151689/2.

The programs for A151690, there is no canonical definition to state claims against.
-/

/-! ## A151690.P2629849637203611417

`∑[A151691(n)-A151852(n)]`
-/

namespace A151690.P2629849637203611417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151691 n - A151852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151690.P2629849637203611417

/-! ## A151690.P16857938643903685773

`∑[A151703(n+2)-A151852(n)]`
-/

namespace A151690.P16857938643903685773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151703 (n + 2) - A151852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151690.P16857938643903685773

/-! ## A151690.P621319009013613560

`floor((A151854(n+1)-A151856(n+1))/2)`
-/

namespace A151690.P621319009013613560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A151854 (n + 1) - A151856 (n + 1) : ℚ) / 2⌋

end

end A151690.P621319009013613560

/-! ## A151690.P10729168156313968897

`∑[A151856(n)-A008586(A151852(n))]`
-/

namespace A151690.P10729168156313968897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151856 n - A008586 (A151852 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151690.P10729168156313968897

/-! ## A151690.P310135473798336319

`∑[A151691(n)-A151851(A206332(n+1))]`
-/

namespace A151690.P310135473798336319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151691 n - A151851 (A206332 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151690.P310135473798336319

/-! ## A151690.P2226590702732519356

`∑[A151703(n+2)-A151851(A206332(n+1))]`
-/

namespace A151690.P2226590702732519356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151703 (n + 2) - A151851 (A206332 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151690.P2226590702732519356

/-! ## A151690.P7567966149201038179

`∑[A151691(n)-(A151856(n)-A151691(n))/3]`
-/

namespace A151690.P7567966149201038179
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151691 n : ℚ) - (A151856 n - A151691 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151690.P7567966149201038179

/-! ## A151690.P8531915630426971298

`∑[A151691(n)-(A151851(n)+2*A151851(n+1))]`
-/

namespace A151690.P8531915630426971298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151691 n - (A151851 n + 2 * A151851 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151690.P8531915630426971298

/-! ## A151690.P1966183608599658625

`A151689(n)/2`
-/

namespace A151690.P1966183608599658625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151689 n : ℚ) / 2

end

end A151690.P1966183608599658625

/-! ## A151690.P354753412092303809

`floor(A151685(n)/2)`
-/

namespace A151690.P354753412092303809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A151685 n : ℚ) / 2⌋

end

end A151690.P354753412092303809

/-!
# A151691: G.f.: Product_{k>=1} (1 + 2*x^(2^k-1) + x^(2^k)).

The programs for A151691, there is no canonical definition to state claims against.
-/

/-! ## A151691.P55852691028514630

`A151703(n+2)`
-/

namespace A151691.P55852691028514630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151703 (n + 2)

end

end A151691.P55852691028514630

/-! ## A151691.P16722238749673549770

`A151856(n)-3*A151852(n)`
-/

namespace A151691.P16722238749673549770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151856 n - 3 * A151852 n

end

end A151691.P16722238749673549770

/-! ## A151691.P11695725558418050538

`A151573(n+2)-A151572(n+2)`
-/

namespace A151691.P11695725558418050538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151573 (n + 2) - A151572 (n + 2)

end

end A151691.P11695725558418050538

/-! ## A151691.P1763031657264358729

`A151855(n+2)-A151851(n+2)`
-/

namespace A151691.P1763031657264358729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151855 (n + 2) - A151851 (n + 2)

end

end A151691.P1763031657264358729

/-! ## A151691.P9909021329410035246

`A151857(n+2)-A151853(n+2)`
-/

namespace A151691.P9909021329410035246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151857 (n + 2) - A151853 (n + 2)

end

end A151691.P9909021329410035246

/-! ## A151691.P12475475627957858322

`A151574(n+2)%A151572(n+2)`
-/

namespace A151691.P12475475627957858322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151574 (n + 2)) (A151572 (n + 2))

end

end A151691.P12475475627957858322

/-! ## A151691.P9327969282502323236

`A151574(A206332(n+1))%A151854(n)`
-/

namespace A151691.P9327969282502323236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151574 (A206332 (n + 1)).toNat) (A151854 n)

end

end A151691.P9327969282502323236

/-! ## A151691.P6158284866320151601

`A151573(n+2)-(A151574(n+2)-A151573(n+2))`
-/

namespace A151691.P6158284866320151601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151573 (n + 2) - (A151574 (n + 2) - A151573 (n + 2))

end

end A151691.P6158284866320151601

/-! ## A151691.P10021426182749208151

`A151703(A165754(A165754(n)))%A016789(n)`
-/

namespace A151691.P10021426182749208151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151703 (A165754 (A165754 n).toNat).toNat) (A016789 n)

end

end A151691.P10021426182749208151

/-!
# A151692: G.f.: Product_{k>=2} (1 + x^(2^k-1) + x^(2^k)).

The programs for A151692, there is no canonical definition to state claims against.
-/

/-! ## A151692.P6583019400732842680

`∑{e}[A180415(A170852(n)+1), #]`
-/

namespace A151692.P6583019400732842680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180415 (A170852 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A151692.P6583019400732842680

/-! ## A151692.P17510922454235188264

`A280750(xor(11, A170852(n)))`
-/

namespace A151692.P17510922454235188264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280750 (Int.xor 11 (A170852 n)).toNat

end

end A151692.P17510922454235188264

/-! ## A151692.P16809662331434066327

`A196564(A005132(A170852(n))²)`
-/

namespace A151692.P16809662331434066327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A005132 (A170852 n).toNat ^ 2).toNat

end

end A151692.P16809662331434066327

/-! ## A151692.P3827971849432520656

`A001222(A180415(A170852(n)+1))`
-/

namespace A151692.P3827971849432520656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A180415 (A170852 n + 1).toNat).toNat

end

end A151692.P3827971849432520656

/-! ## A151692.P15986982948145577180

`gcd(A170852(n), A276796(A170852(n)²))`
-/

namespace A151692.P15986982948145577180
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A170852 n) (A276796 (A170852 n ^ 2).toNat)

end

end A151692.P15986982948145577180

/-!
# A151694: G.f.: Product_{k>=1} (1 + 2*x^(2^k-1) + 2*x^(2^k)).

The programs for A151694, there is no canonical definition to state claims against.
-/

/-! ## A151694.P12887623012178858714

`(A151870(n+1)-A151872(n+1))/2`
-/

namespace A151694.P12887623012178858714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151870 (n + 1) - A151872 (n + 1) : ℚ) / 2

end

end A151694.P12887623012178858714

/-! ## A151694.P9391059647595053746

`A151870(C(n+1, n))%A151872(n+1)/2`
-/

namespace A151694.P9391059647595053746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A151870 (Nat.choose (n + 1) n)) (A151872 (n + 1)) : ℚ) / 2

end

end A151694.P9391059647595053746

/-! ## A151694.P5125033592602794867

`A004525(A151870(n+1)-A151872(n+1))`
-/

namespace A151694.P5125033592602794867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A151870 (n + 1) - A151872 (n + 1)).toNat

end

end A151694.P5125033592602794867

/-! ## A151694.P14080758837717848997

`A289441(A151870(n+1)-A151872(n+1))`
-/

namespace A151694.P14080758837717848997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289441 (A151870 (n + 1) - A151872 (n + 1)).toNat

end

end A151694.P14080758837717848997

/-! ## A151694.P10322020169434165742

`A004525(A151870(n+1)%A151872(n+1))`
-/

namespace A151694.P10322020169434165742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.tmod (A151870 (n + 1)) (A151872 (n + 1))).toNat

end

end A151694.P10322020169434165742

/-! ## A151694.P17682531377778838148

`A151870(A000027(n+1))%A151872(n+1)/2`
-/

namespace A151694.P17682531377778838148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A151870 (A000027 (n + 1)).toNat) (A151872 (n + 1)) : ℚ) / 2

end

end A151694.P17682531377778838148

/-!
# A151695: Weight distribution of [256,207,14] extended binary primitive BCH (or XBCH) code.

The programs for A151695, there is no canonical definition to state claims against.
-/

/-! ## A151695.P12112080549403315564

`A151936(2*n)+A151936(A004280(n+1))`
-/

namespace A151695.P12112080549403315564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151936 (2 * n) + A151936 (A004280 (n + 1)).toNat

end

end A151695.P12112080549403315564

