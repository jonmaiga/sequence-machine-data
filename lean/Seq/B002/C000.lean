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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
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

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A033550.P16297927663788686382

`A005248(n)-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033550.P16297927663788686382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 n - (n : ℤ)

end

end A033550.P16297927663788686382

noncomputable section

/-- A033550: a(n) = A005248(n) - n.

Offset 0, canonical program `A033550.P16297927663788686382`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A005248(n)-n` (program `A033550.P16297927663788686382`, by `A033550.P16297927663788686382.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A033550 (n : ℕ) : ℤ :=
  A033550.P16297927663788686382.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A005248(n)-n` (program `A033550.P16297927663788686382`, by `A033550.P16297927663788686382.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A033550.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A010060.P3080921269106500717

`A000035(A000120(n))`
-/

namespace A010060.P3080921269106500717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000120 n).toNat

end

end A010060.P3080921269106500717

noncomputable section

/-- A010060: Thue-Morse sequence: let A_k denote the first 2^k terms; then A_0 = 0 and for k >= 0, A_{k+1} = A_k B_k, where B_k is obtained from A_k by interchanging 0's and 1's.

Offset 0, canonical program `A010060.P3080921269106500717`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A010060.anchor (n : ℕ) : A010060 n = (((Nat.digits 2 n).sum % 2 : ℕ) : ℤ)` in `Proof.A010.A010060`. -/
def A010060 (n : ℕ) : ℤ :=
  A010060.P3080921269106500717.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A010060.anchor (n : ℕ) : A010060 n = (((Nat.digits 2 n).sum % 2 : ℕ) : ℤ)` in `Proof.A010.A010060`. -/
def A010060.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A027790.P17555155137142438999

`10*A040977(n)`
-/

namespace A027790.P17555155137142438999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A040977 n

end

end A027790.P17555155137142438999

noncomputable section

/-- A027790: a(n) = 10*(n+1)*binomial(n+3,5)/3.

Offset 2, canonical program `A027790.P17555155137142438999`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*(n+3)*C(n+5, 5)/3` (program `A027790.P15014112891343255123`, by `A027790.P15014112891343255123.correct`). Lean does not check the parsing of the name. -/
def A027790 (n : ℕ) : ℤ :=
  A027790.P17555155137142438999.a (n - 2)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*(n+3)*C(n+5, 5)/3` (program `A027790.P15014112891343255123`, by `A027790.P15014112891343255123.correct`). Lean does not check the parsing of the name. -/
def A027790.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A048881.P16567064232951496228

`A000120(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048881.P16567064232951496228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) - 1

end

end A048881.P16567064232951496228

noncomputable section

/-- A048881: a(n) = A000120(n+1) - 1 = wt(n+1) - 1.

Offset 0, canonical program `A048881.P16567064232951496228`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000120(n+1)-1` (program `A048881.P16567064232951496228`, by `A048881.P16567064232951496228.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A048881 (n : ℕ) : ℤ :=
  A048881.P16567064232951496228.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000120(n+1)-1` (program `A048881.P16567064232951496228`, by `A048881.P16567064232951496228.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A048881.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A000069.P1050670559813085717

`1/2*(4*n+1+(-1)^A000120(n))`
-/

namespace A000069.P1050670559813085717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((4 * n + 1 : ℚ) + (-1 : ℚ) ^ (A000120 n : ℤ))

end

end A000069.P1050670559813085717

noncomputable section

/-- A000069: Odious numbers: numbers with an odd number of 1's in their binary expansion.

Offset 1, canonical program `A000069.P1050670559813085717`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000069 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000069.P1050670559813085717.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000069.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000894.P14882200328801433490

`(n+1)*A000891(n)`
-/

namespace A000894.P14882200328801433490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000891 n

end

end A000894.P14882200328801433490

noncomputable section

/-- A000894: a(n) = (2*n)!*(2*n+1)! / ((n+1)! * n!^3).

Offset 0, canonical program `A000894.P14882200328801433490`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000894 (n : ℕ) : ℤ :=
  A000894.P14882200328801433490.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000894.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001316.P6850078358198232129

`2^A000120(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A001316.P6850078358198232129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000120 n : ℤ)

end

end A001316.P6850078358198232129

noncomputable section

/-- A001316: Gould's sequence: a(n) = Sum_{k=0..n} (binomial(n,k) mod 2); number of odd entries in row n of Pascal's triangle (A007318); a(n) = 2^A000120(n).

Offset 0, canonical program `A001316.P6850078358198232129`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001316 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A001316.P6850078358198232129.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001316.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001556.P2048726826330034795

`A001555(n)+A001019(n)`
-/

namespace A001556.P2048726826330034795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001555 n + A001019 n

end

end A001556.P2048726826330034795

noncomputable section

/-- A001556: a(n) = 1^n + 2^n + ... + 9^n.

Offset 0, canonical program `A001556.P2048726826330034795`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001556 (n : ℕ) : ℤ :=
  A001556.P2048726826330034795.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001556.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001713.P2493112064695772112

`A001712(n)+(n+5)*a(n-1)` with `a(0)=1`
-/

namespace A001713.P2493112064695772112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001712 n + (n + 5 : ℤ) * a (n - 1)

end

end A001713.P2493112064695772112

noncomputable section

/-- A001713: Generalized Stirling numbers, [n+6,6]_3.

Offset 0, canonical program `A001713.P2493112064695772112`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001713 (n : ℕ) : ℤ :=
  A001713.P2493112064695772112.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001713.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001718.P453844881199876727

`A001717(n)+(n+6)*a(n-1)` with `a(0)=1`
-/

namespace A001718.P453844881199876727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001717 n + (n + 6 : ℤ) * a (n - 1)

end

end A001718.P453844881199876727

noncomputable section

/-- A001718: Generalized Stirling numbers, [n+7,7]_4.

Offset 0, canonical program `A001718.P453844881199876727`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001718 (n : ℕ) : ℤ :=
  A001718.P453844881199876727.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001718.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001800.P4077882143259750461

`(n+1)*C(2*n+2, n+1)/2^A000120(n+2)`
-/

namespace A001800.P4077882143259750461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.choose (2 * n + 2) (n + 1) : ℚ) / (2 : ℚ) ^ (A000120 (n + 2) : ℤ)

end

end A001800.P4077882143259750461

noncomputable section

/-- A001800: Coefficients of Legendre polynomials.

Offset 0, canonical program `A001800.P4077882143259750461`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001800 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A001800.P4077882143259750461.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001800.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001803.P12627378217154944539

`(2*n+1)!/(n!²*2^A000120(n))`
-/

namespace A001803.P12627378217154944539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n + 1) : ℚ) / ((Nat.factorial n ^ 2 : ℚ) * (2 : ℚ) ^ (A000120 n : ℤ))

end

end A001803.P12627378217154944539

noncomputable section

/-- A001803: Numerators in expansion of (1 - x)^(-3/2).

Offset 0, canonical program `A001803.P12627378217154944539`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001803 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A001803.P12627378217154944539.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001803.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001966.P7022639990780230216

`A001965(n)+4*n+2`
-/

namespace A001966.P7022639990780230216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001965 n + (4 * n : ℤ) + 2

end

end A001966.P7022639990780230216

noncomputable section

/-- A001966: v-pile counts for the 4-Wythoff game with i=2.

Offset 0, canonical program `A001966.P7022639990780230216`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001966 (n : ℕ) : ℤ :=
  A001966.P7022639990780230216.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001966.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002941.P6570335642059118853

`2*a(n-1)-a(n-3)+A002940(n+1)+A002940(n)` with `a(0)=1, a(1)=7, a(2)=29`
-/

namespace A002941.P6570335642059118853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 29] fun n a =>
  2 * a (n - 1) - a (n - 3) + A002940 (n + 1) + A002940 n

end

end A002941.P6570335642059118853

noncomputable section

/-- A002941: Arrays of dumbbells.

Offset 1, canonical program `A002941.P6570335642059118853`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002941 (n : ℕ) : ℤ :=
  A002941.P6570335642059118853.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002941.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005592.P14150685278040946245

`A004146(n)+1`
-/

namespace A005592.P14150685278040946245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004146 n + 1

end

end A005592.P14150685278040946245

noncomputable section

/-- A005592: a(n) = F(2n+1) + F(2n-1) - 1.

Offset 0, canonical program `A005592.P14150685278040946245`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005592 (n : ℕ) : ℤ :=
  A005592.P14150685278040946245.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005592.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005811.P8696411420205566785

`A000120(A003188(n))`
-/

namespace A005811.P8696411420205566785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003188 n).toNat

end

end A005811.P8696411420205566785

noncomputable section

/-- A005811: Number of runs in binary expansion of n (n>0); number of 1's in Gray code for n.

Offset 0, canonical program `A005811.P8696411420205566785`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005811 (n : ℕ) : ℤ :=
  A005811.P8696411420205566785.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005811.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007069.P6367508747812777610

`A001951(A001951(n+1))`
-/

namespace A007069.P6367508747812777610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A001951 (n + 1)).toNat

end

end A007069.P6367508747812777610

noncomputable section

/-- A007069: First column of spectral array W(sqrt 2).

Offset 1, canonical program `A007069.P6367508747812777610`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007069 (n : ℕ) : ℤ :=
  A007069.P6367508747812777610.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007069.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007238.P4543630219130600266

`floor((3*(n+1)-1)/2)-A000120(n+1)`
-/

namespace A007238.P4543630219130600266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 * (n + 1) : ℤ) - 1 : ℚ) / 2⌋ - A000120 (n + 1)

end

end A007238.P4543630219130600266

noncomputable section

/-- A007238: Length of longest chain of subgroups in S_n.

Offset 1, canonical program `A007238.P4543630219130600266`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007238 (n : ℕ) : ℤ :=
  A007238.P4543630219130600266.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007238.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007407.P9917299019007364596

`A001044(n+1)/gcd(A001819(n+1), A001044(n+1))`
-/

namespace A007407.P9917299019007364596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001044 (n + 1) : ℚ) / (Int.gcd (A001819 (n + 1)) (A001044 (n + 1)) : ℚ)

end

end A007407.P9917299019007364596

noncomputable section

/-- A007407: a(n) = denominator of Sum_{k=1..n} 1/k^2.

Offset 1, canonical program `A007407.P9917299019007364596`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007407 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007407.P9917299019007364596.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007407.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007857.P12156564883507010954

`A007226(n)-A000108(n)`
-/

namespace A007857.P12156564883507010954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007226 n - A000108 n

end

end A007857.P12156564883507010954

noncomputable section

/-- A007857: Number of independent sets in rooted plane trees on n nodes.

Offset 1, canonical program `A007857.P12156564883507010954`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007857 (n : ℕ) : ℤ :=
  A007857.P12156564883507010954.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007857.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A008332.P8248868211495396359

`A000203(A006093(n+1))`
-/

namespace A008332.P8248868211495396359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A006093 (n + 1)).toNat

end

end A008332.P8248868211495396359

noncomputable section

/-- A008332: Sum of divisors of p-1, p prime.

Offset 1, canonical program `A008332.P8248868211495396359`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008332 (n : ℕ) : ℤ :=
  A008332.P8248868211495396359.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008332.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A008859.P14957720110934266118

`a(n-1)+A006261(n-1)` with `a(0)=1`
-/

namespace A008859.P14957720110934266118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A006261 (n - 1)

end

end A008859.P14957720110934266118

noncomputable section

/-- A008859: a(n) = Sum_{k=0..6} binomial(n,k).

Offset 0, canonical program `A008859.P14957720110934266118`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008859 (n : ℕ) : ℤ :=
  A008859.P14957720110934266118.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008859.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A008888.P18166674682599614551

`A001065(a(n-1))` with `a(0)=138`
-/

namespace A008888.P18166674682599614551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [138] fun n a =>
  A001065 (a (n - 1)).toNat

end

end A008888.P18166674682599614551

noncomputable section

/-- A008888: Aliquot sequence starting at 138.

Offset 0, canonical program `A008888.P18166674682599614551`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008888 (n : ℕ) : ℤ :=
  A008888.P18166674682599614551.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008888.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A010796.P10607233907006146607

`2^n*A006472(n+2)`
-/

namespace A010796.P10607233907006146607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A006472 (n + 2)

end

end A010796.P10607233907006146607

noncomputable section

/-- A010796: a(n) = n!*(n+1)!/2.

Offset 1, canonical program `A010796.P10607233907006146607`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010796 (n : ℕ) : ℤ :=
  A010796.P10607233907006146607.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010796.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A010848.P2527659660694357650

`n+1-A003557(n+1)`
-/

namespace A010848.P2527659660694357650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A003557 (n + 1)

end

end A010848.P2527659660694357650

noncomputable section

/-- A010848: Number of numbers k <= n such that at least one prime factor of n is not a prime factor of k.

Offset 1, canonical program `A010848.P2527659660694357650`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010848 (n : ℕ) : ℤ :=
  A010848.P2527659660694357650.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010848.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A011373.P9885912058039155787

`A000120(A000045(n))`
-/

namespace A011373.P9885912058039155787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000045 n).toNat

end

end A011373.P9885912058039155787

noncomputable section

/-- A011373: Number of 1's in binary expansion of Fibonacci(n).

Offset 0, canonical program `A011373.P9885912058039155787`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A011373 (n : ℕ) : ℤ :=
  A011373.P9885912058039155787.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A011373.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014410.P12420516935091573692

`C(A003057(n+2), A004736(n+1))`
-/

namespace A014410.P12420516935091573692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003057 (n + 2)).toNat (A004736 (n + 1)).toNat

end

end A014410.P12420516935091573692

noncomputable section

/-- A014410: Elements in Pascal's triangle (by row) that are not 1.

Offset 2, canonical program `A014410.P12420516935091573692`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014410 (n : ℕ) : ℤ :=
  (A014410.P12420516935091573692.a (n - 2) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014410.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014499.P9770580101482900462

`A000120(A000040(n+1))`
-/

namespace A014499.P9770580101482900462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000040 (n + 1)).toNat

end

end A014499.P9770580101482900462

noncomputable section

/-- A014499: Number of 1's in binary representation of n-th prime.

Offset 1, canonical program `A014499.P9770580101482900462`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014499 (n : ℕ) : ℤ :=
  A014499.P9770580101482900462.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014499.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019560.P6308997098226011224

`A008412(2*n)`
-/

namespace A019560.P6308997098226011224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008412 (2 * n)

end

end A019560.P6308997098226011224

noncomputable section

/-- A019560: Coordination sequence for C_4 lattice.

Offset 0, canonical program `A019560.P6308997098226011224`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019560 (n : ℕ) : ℤ :=
  A019560.P6308997098226011224.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019560.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020717.P17284353324538551803

`A020706(n+1)`
-/

namespace A020717.P17284353324538551803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 (n + 1)

end

end A020717.P17284353324538551803

noncomputable section

/-- A020717: Pisot sequences L(6,9), E(6,9).

Offset 0, canonical program `A020717.P17284353324538551803`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020717 (n : ℕ) : ℤ :=
  A020717.P17284353324538551803.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020717.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022819.P904472946109126390

`floor(A006675(n)/A000142(n))`
-/

namespace A022819.P904472946109126390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006675 n : ℚ) / (A000142 n : ℚ)⌋

end

end A022819.P904472946109126390

noncomputable section

/-- A022819: a(n) = floor(1/(n-1) + 2/(n-2) + 3/(n-3) + ... + (n-1)/1).

Offset 0, canonical program `A022819.P904472946109126390`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022819 (n : ℕ) : ℤ :=
  A022819.P904472946109126390.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022819.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023416.P8124303482289229133

`A070939(n)-A000120(n)`
-/

namespace A023416.P8124303482289229133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n - A000120 n

end

end A023416.P8124303482289229133

noncomputable section

/-- A023416: Number of 0's in binary expansion of n.

Offset 0, canonical program `A023416.P8124303482289229133`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023416 (n : ℕ) : ℤ :=
  A023416.P8124303482289229133.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023416.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023531.P13036811505051547859

`A010054(n+1)`
-/

namespace A023531.P13036811505051547859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1)

end

end A023531.P13036811505051547859

noncomputable section

/-- A023531: a(n) = 1 if n is of the form m(m+3)/2, otherwise 0.

Offset 0, canonical program `A023531.P13036811505051547859`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023531 (n : ℕ) : ℤ :=
  A023531.P13036811505051547859.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023531.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A024203.P5902371013324500065

`floor(A024198(n+1)/(n+4)²)`
-/

namespace A024203.P5902371013324500065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024198 (n + 1) : ℚ) / ((n + 4) ^ 2 : ℚ)⌋

end

end A024203.P5902371013324500065

noncomputable section

/-- A024203: [ (4th elementary symmetric function of S(n))/(first elementary symmetric function of S(n)) ], where S(n) = {first n+3 odd positive integers}.

Offset 1, canonical program `A024203.P5902371013324500065`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024203 (n : ℕ) : ℤ :=
  A024203.P5902371013324500065.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024203.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A024205.P3824833347384216472

`floor(A024198(n+1)/A024196(n+3))`
-/

namespace A024205.P3824833347384216472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024198 (n + 1) : ℚ) / (A024196 (n + 3) : ℚ)⌋

end

end A024205.P3824833347384216472

noncomputable section

/-- A024205: [ (4th elementary symmetric function of S(n))/(2nd elementary symmetric function of S(n)) ], where S(n) = {first n+3 odd positive integers}.

Offset 1, canonical program `A024205.P3824833347384216472`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024205 (n : ℕ) : ℤ :=
  A024205.P3824833347384216472.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024205.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A024486.P14309275763816620096

`A006480(n)/(2*n+1)`
-/

namespace A024486.P14309275763816620096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006480 n : ℚ) / (2 * n + 1 : ℚ)

end

end A024486.P14309275763816620096

noncomputable section

/-- A024486: a(n) = (1/(2n+1))*Multinomial(3n; n,n,n).

Offset 0, canonical program `A024486.P14309275763816620096`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024486 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A024486.P14309275763816620096.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024486.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A024487.P10819537129561088428

`A006480(n+1)/(4*(n+1)+2)`
-/

namespace A024487.P10819537129561088428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006480 (n + 1) : ℚ) / (4 * (n + 1) + 2 : ℚ)

end

end A024487.P10819537129561088428

noncomputable section

/-- A024487: a(n) = (1/(4n+2))*M(3n; n,n,n).

Offset 1, canonical program `A024487.P10819537129561088428`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024487 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A024487.P10819537129561088428.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024487.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A024488.P3098859233003656087

`A006480(n+1)/(3*(n+1)-1)`
-/

namespace A024488.P3098859233003656087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006480 (n + 1) : ℚ) / ((3 * (n + 1) : ℤ) - 1 : ℚ)

end

end A024488.P3098859233003656087

noncomputable section

/-- A024488: a(n) = (1/(3n-1))*M(3n; n,n,n), where M(...) is a multinomial coefficient.

Offset 1, canonical program `A024488.P3098859233003656087`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024488 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A024488.P3098859233003656087.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024488.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A024675.P1773648843625354992

`A001043(n+2)/2`
-/

namespace A024675.P1773648843625354992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001043 (n + 2) : ℚ) / 2

end

end A024675.P1773648843625354992

noncomputable section

/-- A024675: Average of two consecutive odd primes.

Offset 1, canonical program `A024675.P1773648843625354992`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024675 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A024675.P1773648843625354992.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024675.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A024700.P4547345291719890790

`(A001248(n+3)-1)/3`
-/

namespace A024700.P4547345291719890790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 3) - 1 : ℚ) / 3

end

end A024700.P4547345291719890790

noncomputable section

/-- A024700: a(n) = (prime(n+2)^2 - 1)/3.

Offset 1, canonical program `A024700.P4547345291719890790`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024700 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A024700.P4547345291719890790.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024700.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A024702.P4190128006520251285

`(A001248(n+3)-1)/24`
-/

namespace A024702.P4190128006520251285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 3) - 1 : ℚ) / 24

end

end A024702.P4190128006520251285

noncomputable section

/-- A024702: a(n) = (prime(n)^2 - 1)/24.

Offset 3, canonical program `A024702.P4190128006520251285`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024702 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A024702.P4190128006520251285.a (n - 3))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024702.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A024916.P6070136297472608546

`A160664(n+1)-1`
-/

namespace A024916.P6070136297472608546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (n + 1) - 1

end

end A024916.P6070136297472608546

noncomputable section

/-- A024916: a(n) = Sum_{k=1..n} k*floor(n/k); also Sum_{k=1..n} sigma(k) where sigma(n) = sum of divisors of n (A000203).

Offset 1, canonical program `A024916.P6070136297472608546`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024916 (n : ℕ) : ℤ :=
  A024916.P6070136297472608546.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024916.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A025581.P420762180635059694

`A004736(n+1)-1`
-/

namespace A025581.P420762180635059694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - 1

end

end A025581.P420762180635059694

noncomputable section

/-- A025581: Triangle read by rows: T(n, k) = n-k, for 0 <= k <= n.

Offset 0, canonical program `A025581.P420762180635059694`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A025581 (n : ℕ) : ℤ :=
  A025581.P420762180635059694.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A025581.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A026012.P8146518293460492297

`A000245(n+1)-A000245(n)`
-/

namespace A026012.P8146518293460492297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 1) - A000245 n

end

end A026012.P8146518293460492297

noncomputable section

/-- A026012: Second differences of Catalan numbers A000108.

Offset 0, canonical program `A026012.P8146518293460492297`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026012 (n : ℕ) : ℤ :=
  A026012.P8146518293460492297.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026012.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A026759.P13760565404652770883

`A002212(n+1)-A000245(n)`
-/

namespace A026759.P13760565404652770883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 (n + 1) - A000245 n

end

end A026759.P13760565404652770883

noncomputable section

/-- A026759: a(n) = T(2n, n), T given by A026758.

Offset 0, canonical program `A026759.P13760565404652770883`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026759 (n : ℕ) : ℤ :=
  A026759.P13760565404652770883.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026759.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A026940.P12530646046903949845

`A002026(2*(n+1))/2`
-/

namespace A026940.P12530646046903949845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002026 (2 * (n + 1)) : ℚ) / 2

end

end A026940.P12530646046903949845

noncomputable section

/-- A026940: a(n) = Sum_{k=0..n-1} T(n,k) * T(n,k+1), with T given by A026300.

Offset 1, canonical program `A026940.P12530646046903949845`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026940 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A026940.P12530646046903949845.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026940.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A026945.P3909534042926224548

`A005043(2*n)+A005043(2*n+1)`
-/

namespace A026945.P3909534042926224548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 (2 * n) + A005043 (2 * n + 1)

end

end A026945.P3909534042926224548

noncomputable section

/-- A026945: A bisection of the Motzkin numbers A001006.

Offset 0, canonical program `A026945.P3909534042926224548`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026945 (n : ℕ) : ℤ :=
  A026945.P3909534042926224548.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026945.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027965.P18296804649105090244

`A008778(n)+2`
-/

namespace A027965.P18296804649105090244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n + 2

end

end A027965.P18296804649105090244

noncomputable section

/-- A027965: T(n, 2*n-3), T given by A027960.

Offset 2, canonical program `A027965.P18296804649105090244`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027965 (n : ℕ) : ℤ :=
  A027965.P18296804649105090244.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027965.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A030640.P18319959155777590497

`(-1)^floor(n/2)*A026741(n+1)`
-/

namespace A030640.P18319959155777590497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (A026741 (n + 1) : ℚ)

end

end A030640.P18319959155777590497

noncomputable section

/-- A030640: Discriminant of lattice A_n of determinant n+1.

Offset 0, canonical program `A030640.P18319959155777590497`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030640 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A030640.P18319959155777590497.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030640.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A031166.P2833534787462873208

`A031131(n+1)+A031131(n+3)`
-/

namespace A031166.P2833534787462873208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 1) + A031131 (n + 3)

end

end A031166.P2833534787462873208

noncomputable section

/-- A031166: a(n) = prime(n+4) - prime(n).

Offset 1, canonical program `A031166.P2833534787462873208`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A031166 (n : ℕ) : ℤ :=
  A031166.P2833534787462873208.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A031166.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A031359.P2951281356129990427

`A001615(2*n+1)`
-/

namespace A031359.P2951281356129990427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (2 * n + 1)

end

end A031359.P2951281356129990427

noncomputable section

/-- A031359: Bisection of A001615.

Offset 1, canonical program `A031359.P2951281356129990427`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A031359 (n : ℕ) : ℤ :=
  A031359.P2951281356129990427.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A031359.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033196.P14820134467086878798

`(n+1)²*A001615(n+1)`
-/

namespace A033196.P14820134467086878798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A001615 (n + 1)

end

end A033196.P14820134467086878798

noncomputable section

/-- A033196: a(n) = n^3 * Product_{p|n, p prime} (1 + 1/p).

Offset 1, canonical program `A033196.P14820134467086878798`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033196 (n : ℕ) : ℤ :=
  A033196.P14820134467086878798.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033196.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033686.P10800342706131622131

`A144615(n)/3`
-/

namespace A033686.P10800342706131622131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144615 n : ℚ) / 3

end

end A033686.P10800342706131622131

noncomputable section

/-- A033686: One-ninth of theta series of A2[hole]^2.

Offset 0, canonical program `A033686.P10800342706131622131`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033686 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A033686.P10800342706131622131.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033686.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033880.P6005875780263802708

`A001065(n+1)-(n+1)`
-/

namespace A033880.P6005875780263802708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - (n + 1 : ℤ)

end

end A033880.P6005875780263802708

noncomputable section

/-- A033880: Abundance of n, or (sum of divisors of n) - 2n.

Offset 1, canonical program `A033880.P6005875780263802708`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033880 (n : ℕ) : ℤ :=
  A033880.P6005875780263802708.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033880.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034961.P9480249767911558173

`A001043(n+1)+A000040(n+3)`
-/

namespace A034961.P9480249767911558173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + A000040 (n + 3)

end

end A034961.P9480249767911558173

noncomputable section

/-- A034961: Sums of three consecutive primes.

Offset 1, canonical program `A034961.P9480249767911558173`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034961 (n : ℕ) : ℤ :=
  A034961.P9480249767911558173.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034961.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A035214.P16301326444238280714

`A010054(n)+1`
-/

namespace A035214.P16301326444238280714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + 1

end

end A035214.P16301326444238280714

noncomputable section

/-- A035214: 2 followed by a run of n 1's.

Offset 0, canonical program `A035214.P16301326444238280714`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035214 (n : ℕ) : ℤ :=
  A035214.P16301326444238280714.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035214.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A035336.P10076247278200850434

`A022342(A003622(n+1)+1)`
-/

namespace A035336.P10076247278200850434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (A003622 (n + 1) + 1).toNat

end

end A035336.P10076247278200850434

noncomputable section

/-- A035336: a(n) = 2*floor(n*phi) + n - 1, where phi = (1+sqrt(5))/2.

Offset 1, canonical program `A035336.P10076247278200850434`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035336 (n : ℕ) : ℤ :=
  A035336.P10076247278200850434.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035336.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036689.P7293150385208763651

`2*A008837(n+1)`
-/

namespace A036689.P7293150385208763651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008837 (n + 1)

end

end A036689.P7293150385208763651

noncomputable section

/-- A036689: Product of a prime and the previous number.

Offset 1, canonical program `A036689.P7293150385208763651`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036689 (n : ℕ) : ℤ :=
  A036689.P7293150385208763651.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036689.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036690.P4894927351784660474

`2*A034953(n+1)`
-/

namespace A036690.P4894927351784660474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034953 (n + 1)

end

end A036690.P4894927351784660474

noncomputable section

/-- A036690: Product of a prime and the following number.

Offset 1, canonical program `A036690.P4894927351784660474`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036690 (n : ℕ) : ℤ :=
  A036690.P4894927351784660474.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036690.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037165.P11474511069064839000

`A006094(n+1)-A001043(n+1)`
-/

namespace A037165.P11474511069064839000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) - A001043 (n + 1)

end

end A037165.P11474511069064839000

noncomputable section

/-- A037165: a(n) = prime(n)*prime(n+1) - prime(n) - prime(n+1).

Offset 1, canonical program `A037165.P11474511069064839000`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037165 (n : ℕ) : ℤ :=
  A037165.P11474511069064839000.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037165.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037168.P1217111255812181998

`2*A006093(n+1)`
-/

namespace A037168.P1217111255812181998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006093 (n + 1)

end

end A037168.P1217111255812181998

noncomputable section

/-- A037168: a(n) = 2*prime(n) - 2.

Offset 1, canonical program `A037168.P1217111255812181998`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037168 (n : ℕ) : ℤ :=
  A037168.P1217111255812181998.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037168.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038585.P5564166495363490604

`A002275(A000120(n+1))`
-/

namespace A038585.P5564166495363490604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (A000120 (n + 1)).toNat

end

end A038585.P5564166495363490604

noncomputable section

/-- A038585: Write n in binary, delete 0's.

Offset 1, canonical program `A038585.P5564166495363490604`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038585 (n : ℕ) : ℤ :=
  A038585.P5564166495363490604.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038585.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A044432.P5964800957522265017

`2*a(n-1)+A005614(n)` with `a(0)=1`
-/

namespace A044432.P5964800957522265017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A005614 n

end

end A044432.P5964800957522265017

noncomputable section

/-- A044432: a(n) is the number whose base-2 representation is d(0)d(1)...d(n), where d=A005614 (the infinite Fibonacci word).

Offset 0, canonical program `A044432.P5964800957522265017`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A044432 (n : ℕ) : ℤ :=
  A044432.P5964800957522265017.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A044432.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A045948.P12134323424524739817

`A003418(n+1)/A034386(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A045948.P12134323424524739817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 1) : ℚ) / (A034386 (n + 1) : ℚ)

end

end A045948.P12134323424524739817

noncomputable section

/-- A045948: a(n) = A003418(n)/A034386(n).

Offset 1, canonical program `A045948.P12134323424524739817`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045948 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A045948.P12134323424524739817.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045948.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046818.P4833358550115723064

`A000120(3*n+1)`
-/

namespace A046818.P4833358550115723064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (3 * n + 1)

end

end A046818.P4833358550115723064

noncomputable section

/-- A046818: Number of 1's in binary expansion of 3n+1.

Offset 0, canonical program `A046818.P4833358550115723064`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046818 (n : ℕ) : ℤ :=
  A046818.P4833358550115723064.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046818.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046820.P8521944609786113338

`A000120(5*n)`
-/

namespace A046820.P8521944609786113338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (5 * n)

end

end A046820.P8521944609786113338

noncomputable section

/-- A046820: Number of 1's in binary expansion of 5n.

Offset 0, canonical program `A046820.P8521944609786113338`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046820 (n : ℕ) : ℤ :=
  A046820.P8521944609786113338.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046820.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046885.P1063669167236759791

`(A046748(n+1)-5^n)/2`
-/

namespace A046885.P1063669167236759791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046748 (n + 1) - (5 ^ n : ℤ) : ℚ) / 2

end

end A046885.P1063669167236759791

noncomputable section

/-- A046885: Row sums of triangle A046658.

Offset 1, canonical program `A046885.P1063669167236759791`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046885 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A046885.P1063669167236759791.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046885.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048250.P6137918235727910070

`A001615(A007947(n+1))`
-/

namespace A048250.P6137918235727910070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A007947 (n + 1)).toNat

end

end A048250.P6137918235727910070

noncomputable section

/-- A048250: Sum of the squarefree divisors of n.

Offset 1, canonical program `A048250.P6137918235727910070`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048250 (n : ℕ) : ℤ :=
  A048250.P6137918235727910070.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048250.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049001.P16714800471455782698

`A001248(n+1)-2`
-/

namespace A049001.P16714800471455782698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - 2

end

end A049001.P16714800471455782698

noncomputable section

/-- A049001: a(n) = prime(n)^2 - 2.

Offset 1, canonical program `A049001.P16714800471455782698`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049001 (n : ℕ) : ℤ :=
  A049001.P16714800471455782698.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049001.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049090.P1203215937391654981

`A006450(A006450(n+1))`
-/

namespace A049090.P1203215937391654981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A006450 (n + 1)).toNat

end

end A049090.P1203215937391654981

noncomputable section

/-- A049090: Primes for which A049076 >= 4.

Offset 1, canonical program `A049090.P1203215937391654981`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049090 (n : ℕ) : ℤ :=
  A049090.P1203215937391654981.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049090.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049613.P4444371646384926939

`2*(n+3)-A007917(2*(n+3)-2)`
-/

namespace A049613.P4444371646384926939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 3) : ℤ) - A007917 (2 * (n + 3) - 2)

end

end A049613.P4444371646384926939

noncomputable section

/-- A049613: a(n) = 2n - (largest prime < 2n-2).

Offset 3, canonical program `A049613.P4444371646384926939`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049613 (n : ℕ) : ℤ :=
  A049613.P4444371646384926939.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049613.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049614.P5818696899068743169

`A000142(n)/A034386(n)`
-/

namespace A049614.P5818696899068743169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A034386 n : ℚ)

end

end A049614.P5818696899068743169

noncomputable section

/-- A049614: n! divided by its squarefree kernel.

Offset 0, canonical program `A049614.P5818696899068743169`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049614 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A049614.P5818696899068743169.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049614.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050476.P4852240921440524385

`A000984(n)+5*A001791(n)`
-/

namespace A050476.P4852240921440524385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + 5 * A001791 n

end

end A050476.P4852240921440524385

noncomputable section

/-- A050476: a(n) = C(n)*(6*n + 1) where C(n) = Catalan numbers (A000108).

Offset 0, canonical program `A050476.P4852240921440524385`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050476 (n : ℕ) : ℤ :=
  A050476.P4852240921440524385.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050476.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050477.P1271674813469624088

`A000984(n)+6*A001791(n)`
-/

namespace A050477.P1271674813469624088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + 6 * A001791 n

end

end A050477.P1271674813469624088

noncomputable section

/-- A050477: a(n) = C(n)*(7*n + 1) where C(n) = Catalan numbers (A000108).

Offset 0, canonical program `A050477.P1271674813469624088`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050477 (n : ℕ) : ℤ :=
  A050477.P1271674813469624088.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050477.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050478.P11948312383121739126

`A000984(n)+7*A001791(n)`
-/

namespace A050478.P11948312383121739126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + 7 * A001791 n

end

end A050478.P11948312383121739126

noncomputable section

/-- A050478: a(n) = C(n)*(8*n+1) where C(n) = Catalan numbers (A000108).

Offset 0, canonical program `A050478.P11948312383121739126`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050478 (n : ℕ) : ℤ :=
  A050478.P11948312383121739126.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050478.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050479.P17354006399765808413

`A000984(n)+8*A001791(n)`
-/

namespace A050479.P17354006399765808413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + 8 * A001791 n

end

end A050479.P17354006399765808413

noncomputable section

/-- A050479: a(n) = C(n)*(9*n + 1) where C(n) = Catalan numbers (A000108).

Offset 0, canonical program `A050479.P17354006399765808413`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050479 (n : ℕ) : ℤ :=
  A050479.P17354006399765808413.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050479.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050489.P16526552866551306306

`A000984(n)+9*A001791(n)`
-/

namespace A050489.P16526552866551306306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + 9 * A001791 n

end

end A050489.P16526552866551306306

noncomputable section

/-- A050489: a(n) = C(n)*(10*n + 1) where C(n) = Catalan numbers (A000108).

Offset 0, canonical program `A050489.P16526552866551306306`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050489 (n : ℕ) : ℤ :=
  A050489.P16526552866551306306.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050489.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050493.P3448081831434903334

`A000120(A000217(n))`
-/

namespace A050493.P3448081831434903334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000217 n).toNat

end

end A050493.P3448081831434903334

noncomputable section

/-- A050493: a(n) = sum of binary digits of n-th triangular number.

Offset 0, canonical program `A050493.P3448081831434903334`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050493 (n : ℕ) : ℤ :=
  A050493.P3448081831434903334.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050493.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051543.P13545436261029071682

`A025555(n+2)/A025555(n+1)`
-/

namespace A051543.P13545436261029071682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025555 (n + 2) : ℚ) / (A025555 (n + 1) : ℚ)

end

end A051543.P13545436261029071682

noncomputable section

/-- A051543: Quotients of consecutive values of lcm of first n triangular numbers (A000217).

Offset 1, canonical program `A051543.P13545436261029071682`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051543 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051543.P13545436261029071682.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051543.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000184.P18437926326760812806

`2*A029887(n)`
-/

namespace A000184.P18437926326760812806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029887 n

end

end A000184.P18437926326760812806

noncomputable section

/-- A000184: Number of genus 0 rooted maps with 3 faces with n vertices.

Offset 2, canonical program `A000184.P18437926326760812806`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000184 (n : ℕ) : ℤ :=
  A000184.P18437926326760812806.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000184.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000879.P11642258310759995278

`A000720(A001248(n+1))`
-/

namespace A000879.P11642258310759995278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001248 (n + 1)).toNat

end

end A000879.P11642258310759995278

noncomputable section

/-- A000879: Number of primes < prime(n)^2.

Offset 1, canonical program `A000879.P11642258310759995278`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000879 (n : ℕ) : ℤ :=
  A000879.P11642258310759995278.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000879.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000999.P15242886502305852120

`(2*A053824(n)-A053824(2*n))/4`
-/

namespace A000999.P15242886502305852120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A053824 n - A053824 (2 * n) : ℚ) / 4

end

end A000999.P15242886502305852120

noncomputable section

/-- A000999: 5-adic valuation of binomial(2*n,n): largest k such that 5^k divides binomial(2*n, n).

Offset 0, canonical program `A000999.P15242886502305852120`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000999 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000999.P15242886502305852120.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000999.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001855.P10537031409435003354

`A123753(n)-(n+1)`
-/

namespace A001855.P10537031409435003354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123753 n - (n + 1 : ℤ)

end

end A001855.P10537031409435003354

noncomputable section

/-- A001855: Sorting numbers: maximal number of comparisons for sorting n elements by binary insertion.

Offset 1, canonical program `A001855.P10537031409435003354`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001855 (n : ℕ) : ℤ :=
  A001855.P10537031409435003354.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001855.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001950.P13017366966482727782

`A003622(n+1)+1`
-/

namespace A001950.P13017366966482727782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1) + 1

end

end A001950.P13017366966482727782

noncomputable section

/-- A001950: Upper Wythoff sequence (a Beatty sequence): a(n) = floor(n*phi^2), where phi = (1+sqrt(5))/2.

Offset 1, canonical program `A001950.P13017366966482727782`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001950 (n : ℕ) : ℤ :=
  A001950.P13017366966482727782.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001950.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002131.P10234543156685478956

`(A000203(n+1)+A000593(n+1))/2`
-/

namespace A002131.P10234543156685478956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) + A000593 (n + 1) : ℚ) / 2

end

end A002131.P10234543156685478956

noncomputable section

/-- A002131: Sum of divisors d of n such that n/d is odd.

Offset 1, canonical program `A002131.P10234543156685478956`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002131 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A002131.P10234543156685478956.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002131.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002262.P12129691700837801527

`n-A057944(n)`
-/

namespace A002262.P12129691700837801527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A057944 n

end

end A002262.P12129691700837801527

noncomputable section

/-- A002262: Triangle read by rows: T(n,k) = k, 0 <= k <= n, in which row n lists the first n+1 nonnegative integers.

Offset 0, canonical program `A002262.P12129691700837801527`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002262 (n : ℕ) : ℤ :=
  A002262.P12129691700837801527.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002262.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002487.P6236436194084017932

`A000120(A168081(n))`
-/

namespace A002487.P6236436194084017932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A168081 n).toNat

end

end A002487.P6236436194084017932

noncomputable section

/-- A002487: Stern's diatomic series (or Stern-Brocot sequence): a(0) = 0, a(1) = 1; for n > 0: a(2*n) = a(n), a(2*n+1) = a(n) + a(n+1).

Offset 0, canonical program `A002487.P6236436194084017932`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002487 (n : ℕ) : ℤ :=
  A002487.P6236436194084017932.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002487.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002659.P10160211641234387559

`A074400(n+1)-1`
-/

namespace A002659.P10160211641234387559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) - 1

end

end A002659.P10160211641234387559

noncomputable section

/-- A002659: a(n) = 2*sigma(n) - 1.

Offset 1, canonical program `A002659.P10160211641234387559`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002659 (n : ℕ) : ℤ :=
  A002659.P10160211641234387559.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002659.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A003761.P174387184741111402

`3*A006238(n+1)*A001109(n+1)`
-/

namespace A003761.P174387184741111402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006238 (n + 1) * A001109 (n + 1)

end

end A003761.P174387184741111402

noncomputable section

/-- A003761: Number of spanning trees in D_4 X P_n.

Offset 1, canonical program `A003761.P174387184741111402`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003761 (n : ℕ) : ℤ :=
  A003761.P174387184741111402.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003761.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A004188.P5039121648678825611

`A000578(n)+A135503(n)`
-/

namespace A004188.P5039121648678825611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + A135503 n

end

end A004188.P5039121648678825611

noncomputable section

/-- A004188: a(n) = n*(3*n^2 - 1)/2.

Offset 0, canonical program `A004188.P5039121648678825611`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004188 (n : ℕ) : ℤ :=
  A004188.P5039121648678825611.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004188.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A004201.P3444704990256805059

`A004202(n+1)-A002024(n+1)`
-/

namespace A004201.P3444704990256805059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004202 (n + 1) - A002024 (n + 1)

end

end A004201.P3444704990256805059

noncomputable section

/-- A004201: Accept one, reject one, accept two, reject two, ...

Offset 1, canonical program `A004201.P3444704990256805059`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004201 (n : ℕ) : ℤ :=
  A004201.P3444704990256805059.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004201.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005097.P2146150579650678334

`A130290(n+2)`
-/

namespace A005097.P2146150579650678334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 2)

end

end A005097.P2146150579650678334

noncomputable section

/-- A005097: (Odd primes - 1)/2.

Offset 1, canonical program `A005097.P2146150579650678334`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005097 (n : ℕ) : ℤ :=
  A005097.P2146150579650678334.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005097.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005722.P552758404114209471

`A006093(n+1)²`
-/

namespace A005722.P552758404114209471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) ^ 2

end

end A005722.P552758404114209471

noncomputable section

/-- A005722: a(n) = (prime(n) - 1)^2.

Offset 1, canonical program `A005722.P552758404114209471`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005722 (n : ℕ) : ℤ :=
  A005722.P552758404114209471.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005722.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006013.P4079729848362006556

`A024485(n+1)/3`
-/

namespace A006013.P4079729848362006556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024485 (n + 1) : ℚ) / 3

end

end A006013.P4079729848362006556

noncomputable section

/-- A006013: a(n) = binomial(3*n+1,n)/(n+1).

Offset 0, canonical program `A006013.P4079729848362006556`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006013 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A006013.P4079729848362006556.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006013.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006244.P11194458159136341317

`(A007667(n+1)-1)/4`
-/

namespace A006244.P11194458159136341317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007667 (n + 1) - 1 : ℚ) / 4

end

end A006244.P11194458159136341317

noncomputable section

/-- A006244: Hexagonal numbers (A000384) which are also centered hexagonal numbers (A003215).

Offset 1, canonical program `A006244.P11194458159136341317`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006244 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A006244.P11194458159136341317.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006244.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006519.P10435570611646570274

`A171977(n+1)/2`
-/

namespace A006519.P10435570611646570274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171977 (n + 1) : ℚ) / 2

end

end A006519.P10435570611646570274

noncomputable section

/-- A006519: Highest power of 2 dividing n.

Offset 1, canonical program `A006519.P10435570611646570274`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006519 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A006519.P10435570611646570274.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006519.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007053.P11937930420977623127

`A060967(2*n)`
-/

namespace A007053.P11937930420977623127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060967 (2 * n)

end

end A007053.P11937930420977623127

noncomputable section

/-- A007053: Number of primes <= 2^n.

Offset 0, canonical program `A007053.P11937930420977623127`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007053 (n : ℕ) : ℤ :=
  A007053.P11937930420977623127.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007053.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007378.P6355740998360001155

`n+2+A060973(n+2)`
-/

namespace A007378.P6355740998360001155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) + A060973 (n + 2)

end

end A007378.P6355740998360001155

noncomputable section

/-- A007378: a(n), for n >= 2, is smallest positive integer which is consistent with sequence being monotonically increasing and satisfying a(a(n)) = 2n.

Offset 2, canonical program `A007378.P6355740998360001155`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007378 (n : ℕ) : ℤ :=
  A007378.P6355740998360001155.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007378.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007440.P17997219923662574142

`(-1)^n*A343773(n)`
-/

namespace A007440.P17997219923662574142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A343773 n

end

end A007440.P17997219923662574142

noncomputable section

/-- A007440: Reversion of g.f. for Fibonacci numbers 1, 1, 2, 3, 5, ....

Offset 1, canonical program `A007440.P17997219923662574142`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007440 (n : ℕ) : ℤ :=
  A007440.P17997219923662574142.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007440.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A008333.P5442699997753752084

`A000203(A008864(n+1))`
-/

namespace A008333.P5442699997753752084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A008864 (n + 1)).toNat

end

end A008333.P5442699997753752084

noncomputable section

/-- A008333: Sum of divisors of p+1, p prime.

Offset 1, canonical program `A008333.P5442699997753752084`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008333 (n : ℕ) : ℤ :=
  A008333.P5442699997753752084.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008333.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A009281.P16715583283193038702

`(-1)^n*A000387(n)+1`
-/

namespace A009281.P16715583283193038702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000387 n + 1

end

end A009281.P16715583283193038702

noncomputable section

/-- A009281: Expansion of e.g.f. exp(x)*cosh(log(1+x)).

Offset 0, canonical program `A009281.P16715583283193038702`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A009281 (n : ℕ) : ℤ :=
  A009281.P16715583283193038702.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A009281.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A016084.P14569315839070266625

`(18*(n+1)-9+(-1)^(n+1))/4+3*A128834(n+1)`
-/

namespace A016084.P14569315839070266625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((18 * (n + 1) : ℤ) - 9 + (-1) ^ (n + 1) : ℚ) / 4 + (3 * A128834 (n + 1) : ℚ)

end

end A016084.P14569315839070266625

noncomputable section

/-- A016084: a(n+1) = a(n) + its digital root.

Offset 1, canonical program `A016084.P14569315839070266625`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A016084 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A016084.P14569315839070266625.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A016084.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019445.P1138879738432013410

`(n+1)*A019446(n+1)`
-/

namespace A019445.P1138879738432013410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A019446 (n + 1)

end

end A019445.P1138879738432013410

noncomputable section

/-- A019445: Form a permutation of the positive integers, p_1, p_2, ..., such that the average of each initial segment is an integer, using the greedy algorithm to define p_n; sequence gives p_1 + ... + p_n.

Offset 1, canonical program `A019445.P1138879738432013410`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019445 (n : ℕ) : ℤ :=
  A019445.P1138879738432013410.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019445.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020900.P12967914466540950521

`A000720(A100484(n+1))`
-/

namespace A020900.P12967914466540950521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A100484 (n + 1)).toNat

end

end A020900.P12967914466540950521

noncomputable section

/-- A020900: Greatest k such that k-th prime < twice n-th prime.

Offset 1, canonical program `A020900.P12967914466540950521`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020900 (n : ℕ) : ℤ :=
  A020900.P12967914466540950521.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020900.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A025558.P5691983144712648619

`(n+1)*A002944(n+2)`
-/

namespace A025558.P5691983144712648619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002944 (n + 2)

end

end A025558.P5691983144712648619

noncomputable section

/-- A025558: a(n) = (n/(n+1)) * lcm(1,2,...,n+1).

Offset 1, canonical program `A025558.P5691983144712648619`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A025558 (n : ℕ) : ℤ :=
  A025558.P5691983144712648619.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A025558.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A030662.P11997165729521447290

`A115112(n+1)+1`
-/

namespace A030662.P11997165729521447290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115112 (n + 1) + 1

end

end A030662.P11997165729521447290

noncomputable section

/-- A030662: Number of combinations of n things from 1 to n at a time, with repeats allowed.

Offset 1, canonical program `A030662.P11997165729521447290`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030662 (n : ℕ) : ℤ :=
  A030662.P11997165729521447290.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030662.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034908.P16827673894086994239

`A084948(n+1)/2`
-/

namespace A034908.P16827673894086994239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084948 (n + 1) : ℚ) / 2

end

end A034908.P16827673894086994239

noncomputable section

/-- A034908: One half of octo-factorial numbers.

Offset 1, canonical program `A034908.P16827673894086994239`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034908 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A034908.P16827673894086994239.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034908.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A035604.P40572468847417807

`a(n-1)+A035603(n)+A035603(n-1)` with `a(0)=0`
-/

namespace A035604.P40572468847417807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A035603 n + A035603 (n - 1)

end

end A035604.P40572468847417807

noncomputable section

/-- A035604: Number of points of L1 norm 10 in cubic lattice Z^n.

Offset 0, canonical program `A035604.P40572468847417807`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035604 (n : ℕ) : ℤ :=
  A035604.P40572468847417807.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035604.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036918.P2075316134419150449

`2*(A038155(n+1)-A038155(n))`
-/

namespace A036918.P2075316134419150449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A038155 (n + 1) - A038155 n)

end

end A036918.P2075316134419150449

noncomputable section

/-- A036918: a(n) = floor(e*(n-1)*(n-1)!).

Offset 1, canonical program `A036918.P2075316134419150449`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036918 (n : ℕ) : ℤ :=
  A036918.P2075316134419150449.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036918.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037040.P6394171430064314896

`A038377(n)-1`
-/

namespace A037040.P6394171430064314896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038377 n - 1

end

end A037040.P6394171430064314896

noncomputable section

/-- A037040: Number of odd nonprimes < (2n+1)^2.

Offset 0, canonical program `A037040.P6394171430064314896`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037040 (n : ℕ) : ℤ :=
  A037040.P6394171430064314896.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037040.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038094.P10633907635004351992

`(n+3)*A103904(n+2)`
-/

namespace A038094.P10633907635004351992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A103904 (n + 2)

end

end A038094.P10633907635004351992

noncomputable section

/-- A038094: Number of rooted graphs on n labeled nodes where the root has degree 2.

Offset 3, canonical program `A038094.P10633907635004351992`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038094 (n : ℕ) : ℤ :=
  A038094.P10633907635004351992.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038094.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038183.P17650465038200368135

`A001317(2*n)`
-/

namespace A038183.P17650465038200368135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 (2 * n)

end

end A038183.P17650465038200368135

noncomputable section

/-- A038183: One-dimensional cellular automaton 'sigma-minus' (Rule 90): 000,001,010,011,100,101,110,111 -> 0,1,0,1,1,0,1,0.

Offset 0, canonical program `A038183.P17650465038200368135`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038183 (n : ℕ) : ℤ :=
  A038183.P17650465038200368135.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038183.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048619.P16767299098900104543

`A180000(n+1)/A152271(n)`
-/

namespace A048619.P16767299098900104543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180000 (n + 1) : ℚ) / (A152271 n : ℚ)

end

end A048619.P16767299098900104543

noncomputable section

/-- A048619: a(n) = LCM(binomial(n,0), ..., binomial(n,n)) / binomial(n,floor(n/2)).

Offset 0, canonical program `A048619.P16767299098900104543`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048619 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048619.P16767299098900104543.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048619.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048671.P10271734858964489763

`A003418(n)/A002944(n+1)`
-/

namespace A048671.P10271734858964489763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A002944 (n + 1) : ℚ)

end

end A048671.P10271734858964489763

noncomputable section

/-- A048671: a(n) is the least common multiple of the proper divisors of n.

Offset 1, canonical program `A048671.P10271734858964489763`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048671 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048671.P10271734858964489763.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048671.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048974.P12620924037349992420

`A065091(n+1)+2`
-/

namespace A048974.P12620924037349992420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + 2

end

end A048974.P12620924037349992420

noncomputable section

/-- A048974: Odd numbers that are the sum of 2 primes.

Offset 1, canonical program `A048974.P12620924037349992420`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048974 (n : ℕ) : ℤ :=
  A048974.P12620924037349992420.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048974.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A003451.P6940275346258853187

`A006584(n+3)-A027656(n)`
-/

namespace A003451.P6940275346258853187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006584 (n + 3) - A027656 n

end

end A003451.P6940275346258853187

noncomputable section

/-- A003451: Number of nonequivalent dissections of an n-gon into 3 polygons by nonintersecting diagonals up to rotation.

Offset 5, canonical program `A003451.P6940275346258853187`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003451 (n : ℕ) : ℤ :=
  A003451.P6940275346258853187.a (n - 5)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003451.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000430.P3476626595135912415

`∪[A000040(n+1), A001248(n+1)]`
-/

namespace A000430.P3476626595135912415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000430.P3476626595135912415

noncomputable section

/-- A000430: Primes and squares of primes.

Offset 1, canonical program `A000430.P3476626595135912415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000430 (n : ℕ) : ℤ :=
  (A000430.P3476626595135912415.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000704.P18194243516802683645

`A048099(round(acot(n)+n))+1`
-/

namespace A000704.P18194243516802683645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048099 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + 1

end

end A000704.P18194243516802683645

noncomputable section

/-- A000704: Number of degree-n even permutations of order dividing 2.

Offset 0, canonical program `A000704.P18194243516802683645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A000704 (n : ℕ) : ℤ :=
  A000704.P18194243516802683645.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A000704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000781.P9610192769601749282

`A000778(n)+2*A000245(n)`
-/

namespace A000781.P9610192769601749282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000778 n + 2 * A000245 n

end

end A000781.P9610192769601749282

noncomputable section

/-- A000781: a(n) = 3*Catalan(n) - Catalan(n-1) - 1.

Offset 1, canonical program `A000781.P9610192769601749282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A000781 (n : ℕ) : ℤ :=
  A000781.P9610192769601749282.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A000781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000912.P8618321589124851233

`2*A007123(n+1)-A063886(n)`
-/

namespace A000912.P8618321589124851233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007123 (n + 1) - A063886 n

end

end A000912.P8618321589124851233

noncomputable section

/-- A000912: Expansion of (sqrt(1-4x^2) - sqrt(1-4x))/(2x).

Offset 0, canonical program `A000912.P8618321589124851233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A000912 (n : ℕ) : ℤ :=
  A000912.P8618321589124851233.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A000912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001223.P5083310856331133973

`1+A046933(n+1)`
-/

namespace A001223.P5083310856331133973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A046933 (n + 1)

end

end A001223.P5083310856331133973

noncomputable section

/-- A001223: Prime gaps: differences between consecutive primes.

Offset 1, canonical program `A001223.P5083310856331133973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001223 (n : ℕ) : ℤ :=
  A001223.P5083310856331133973.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001300.P15797380405414889090

`A000064(floor(n/5))`
-/

namespace A001300.P15797380405414889090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000064 ⌊(n : ℚ) / 5⌋.toNat

end

end A001300.P15797380405414889090

noncomputable section

/-- A001300: Number of ways of making change for n cents using coins of 1, 5, 10, 25, 50 cents.

Offset 0, canonical program `A001300.P15797380405414889090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001300 (n : ℕ) : ℤ :=
  A001300.P15797380405414889090.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001301.P3059956819678304744

`A001299(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A001301.P3059956819678304744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A001299 n + a (n - 2)

end

end A001301.P3059956819678304744

noncomputable section

/-- A001301: Number of ways of making change for n cents using coins of 1, 2, 5, 10, 25 cents.

Offset 0, canonical program `A001301.P3059956819678304744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3821 terms. -/
def A001301 (n : ℕ) : ℤ :=
  A001301.P3059956819678304744.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3821 terms. -/
def A001301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001306.P13591141567475542763

`∑[A000064(A059995(n))*A079998(n)]`
-/

namespace A001306.P13591141567475542763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000064 (A059995 n).toNat * A079998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001306.P13591141567475542763

noncomputable section

/-- A001306: Number of ways of making change for n cents using coins of 1, 5, 10, 20, 50, 100 cents.

Offset 0, canonical program `A001306.P13591141567475542763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3830 terms. -/
def A001306 (n : ℕ) : ℤ :=
  A001306.P13591141567475542763.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3830 terms. -/
def A001306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001559.P3290663552833298120

`A001558(n+1)-A104629(n+1)`
-/

namespace A001559.P3290663552833298120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001558 (n + 1) - A104629 (n + 1)

end

end A001559.P3290663552833298120

noncomputable section

/-- A001559: a(0) = 1, a(1) = 4; thereafter a(n)*(2n + 10) - a(n-1)*(11n + 35) + a(n-2)*(8n + 2) + a(n-3)*(15n + 7) + a(n-4)*(4n - 2) = 0.

Offset 0, canonical program `A001559.P3290663552833298120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A001559 (n : ℕ) : ℤ :=
  A001559.P3290663552833298120.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A001559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001671.P524176182924743815

`A057427(n)+A000149(n)`
-/

namespace A001671.P524176182924743815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A000149 n

end

end A001671.P524176182924743815

noncomputable section

/-- A001671: Powers of e rounded up.

Offset 0, canonical program `A001671.P524176182924743815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. -/
def A001671 (n : ℕ) : ℤ :=
  A001671.P524176182924743815.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. -/
def A001671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001673.P15664192120311044095

`A057427(n)+A001672(n)`
-/

namespace A001673.P15664192120311044095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A001672 n

end

end A001673.P15664192120311044095

noncomputable section

/-- A001673: a(n) = ceiling(Pi^n).

Offset 0, canonical program `A001673.P15664192120311044095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. -/
def A001673 (n : ℕ) : ℤ :=
  A001673.P15664192120311044095.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. -/
def A001673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001698.P3959403905572157936

`A057427(n)+A001674(n)`
-/

namespace A001698.P3959403905572157936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A001674 n

end

end A001698.P3959403905572157936

noncomputable section

/-- A001698: a(n) = ceiling(sqrt( 2*Pi )^n).

Offset 0, canonical program `A001698.P3959403905572157936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A001698 (n : ℕ) : ℤ :=
  A001698.P3959403905572157936.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A001698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001841.P629893986257724125

`A242112(n)+2*A087811(n+1)`
-/

namespace A001841.P629893986257724125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242112 n + 2 * A087811 (n + 1)

end

end A001841.P629893986257724125

noncomputable section

/-- A001841: Related to Zarankiewicz's problem.

Offset 3, canonical program `A001841.P629893986257724125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001841 (n : ℕ) : ℤ :=
  A001841.P629893986257724125.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001925.P1594397707320357394

`∑[∑[∑[A023610(n)]]]`
-/

namespace A001925.P1594397707320357394
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023610 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001925.P1594397707320357394

noncomputable section

/-- A001925: From rook polynomials.

Offset 0, canonical program `A001925.P1594397707320357394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 461 terms. -/
def A001925 (n : ℕ) : ℤ :=
  A001925.P1594397707320357394.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 461 terms. -/
def A001925.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002547.P4051207743041525238

`A001008(n+1)/gcd(A001008(n+1), A145979(n))`
-/

namespace A002547.P4051207743041525238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001008 (n + 1) : ℚ) / (Int.gcd (A001008 (n + 1)) (A145979 n) : ℚ)

end

end A002547.P4051207743041525238

noncomputable section

/-- A002547: Numerator of the n-th harmonic number H(n) divided by (n+1); a(n) = A001008(n) / ((n+1)*A002805(n)).

Offset 1, canonical program `A002547.P4051207743041525238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A002547 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A002547.P4051207743041525238.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A002547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002938.P11008138429574408607

`abs(A077119(n+1))`
-/

namespace A002938.P11008138429574408607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077119 (n + 1)|

end

end A002938.P11008138429574408607

noncomputable section

/-- A002938: The minimal sequence from solving n^3 - m^2 = a(n).

Offset 1, canonical program `A002938.P11008138429574408607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A002938 (n : ℕ) : ℤ :=
  A002938.P11008138429574408607.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A002938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003312.P15694996587841724422

`A006999(n)+3`
-/

namespace A003312.P15694996587841724422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006999 n + 3

end

end A003312.P15694996587841724422

noncomputable section

/-- A003312: a(1) = 3; for n>0, a(n+1) = a(n) + floor((a(n)-1)/2).

Offset 1, canonical program `A003312.P15694996587841724422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 567 terms. -/
def A003312 (n : ℕ) : ℤ :=
  A003312.P15694996587841724422.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 567 terms. -/
def A003312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004080.P11497575846285057357

`record[A002387(A028242(n))-A000038(n)]`
-/

namespace A004080.P11497575846285057357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002387 (A028242 n).toNat - A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004080.P11497575846285057357

noncomputable section

/-- A004080: Least k such that H(k) >= n, where H(k) is the harmonic number Sum_{i=1..k} 1/i.

Offset 0, canonical program `A004080.P11497575846285057357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A004080 (n : ℕ) : ℤ :=
  A004080.P11497575846285057357.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A004080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004084.P5990171731736367185

`ceil(A004082(n+1)/2)`
-/

namespace A004084.P5990171731736367185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004082 (n + 1) : ℚ) / 2⌉

end

end A004084.P5990171731736367185

noncomputable section

/-- A004084: a(n) = n-th positive integer k such that tan(k-1) <= 0 and tan(k) > 0.

Offset 1, canonical program `A004084.P5990171731736367185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004084 (n : ℕ) : ℤ :=
  A004084.P5990171731736367185.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004398.P274541326575522069

`A004397(n+1)+A000045(n)`
-/

namespace A004398.P274541326575522069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004397 (n + 1) + A000045 n

end

end A004398.P274541326575522069

noncomputable section

/-- A004398: a(n) = Fibonacci(n+1) + prime(n).

Offset 1, canonical program `A004398.P274541326575522069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A004398 (n : ℕ) : ℤ :=
  A004398.P274541326575522069.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A004398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004494.P1693956114602232970

`A004493(A004482(n))`
-/

namespace A004494.P1693956114602232970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004493 (A004482 n).toNat

end

end A004494.P1693956114602232970

noncomputable section

/-- A004494: Tersum n + 5.

Offset 0, canonical program `A004494.P1693956114602232970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004494 (n : ℕ) : ℤ :=
  A004494.P1693956114602232970.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004497.P12311121835574932766

`A004496(A004482(n))`
-/

namespace A004497.P12311121835574932766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004496 (A004482 n).toNat

end

end A004497.P12311121835574932766

noncomputable section

/-- A004497: Tersum n + 8.

Offset 0, canonical program `A004497.P12311121835574932766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004497 (n : ℕ) : ℤ :=
  A004497.P12311121835574932766.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004541.P13526906007645996510

`A084188(2*n)%4`
-/

namespace A004541.P13526906007645996510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084188 (2 * n)) 4

end

end A004541.P13526906007645996510

noncomputable section

/-- A004541: Expansion of sqrt(2) in base 4.

Offset 1, canonical program `A004541.P13526906007645996510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A004541 (n : ℕ) : ℤ :=
  A004541.P13526906007645996510.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A004541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004545.P12399132687633140930

`and(7, A084188(3*n))`
-/

namespace A004545.P12399132687633140930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A084188 (3 * n))

end

end A004545.P12399132687633140930

noncomputable section

/-- A004545: Expansion of sqrt(2) in base 8.

Offset 1, canonical program `A004545.P12399132687633140930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A004545 (n : ℕ) : ℤ :=
  A004545.P12399132687633140930.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A004545.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004547.P3854672842645069455

`gcd(2, A293325(n))-1`
-/

namespace A004547.P3854672842645069455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A293325 n) : ℤ) - 1

end

end A004547.P3854672842645069455

noncomputable section

/-- A004547: Expansion of sqrt(3) in base 2.

Offset 1, canonical program `A004547.P3854672842645069455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A004547 (n : ℕ) : ℤ :=
  A004547.P3854672842645069455.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A004547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004571.P7483282977501291624

`A004569(2*n+3)+2*A004569(2*(n+1))`
-/

namespace A004571.P7483282977501291624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004569 (2 * n + 3) + 2 * A004569 (2 * (n + 1))

end

end A004571.P7483282977501291624

noncomputable section

/-- A004571: Expansion of sqrt(7) in base 4.

Offset 1, canonical program `A004571.P7483282977501291624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A004571 (n : ℕ) : ℤ :=
  A004571.P7483282977501291624.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A004571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004583.P1694518623339431495

`A017928(2*n+1)%8`
-/

namespace A004583.P1694518623339431495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017928 (2 * n + 1)) 8

end

end A004583.P1694518623339431495

noncomputable section

/-- A004583: Expansion of sqrt(8) in base 8.

Offset 1, canonical program `A004583.P1694518623339431495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A004583 (n : ℕ) : ℤ :=
  A004583.P1694518623339431495.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A004583.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004587.P16410296489562385656

`A004585(2*n+3)+2*A004585(2*(n+1))`
-/

namespace A004587.P16410296489562385656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004585 (2 * n + 3) + 2 * A004585 (2 * (n + 1))

end

end A004587.P16410296489562385656

noncomputable section

/-- A004587: Expansion of sqrt(10) in base 4.

Offset 1, canonical program `A004587.P16410296489562385656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A004587 (n : ℕ) : ℤ :=
  A004587.P16410296489562385656.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A004587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004593.P10915400110262315907

`A000045(and(2, A293337(n)-1))`
-/

namespace A004593.P10915400110262315907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land 2 (A293337 n - 1)).toNat

end

end A004593.P10915400110262315907

noncomputable section

/-- A004593: Expansion of e in base 2.

Offset 2, canonical program `A004593.P10915400110262315907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A004593 (n : ℕ) : ℤ :=
  A004593.P10915400110262315907.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A004593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004739.P530599446870545718

`A004737(A028391(n)+1)`
-/

namespace A004739.P530599446870545718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (A028391 n + 1).toNat

end

end A004739.P530599446870545718

noncomputable section

/-- A004739: Concatenation of sequences (1,2,2,...,n-1,n-1,n,n,n-1,n-1,...,2,2,1) for n >= 1.

Offset 1, canonical program `A004739.P530599446870545718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004739 (n : ℕ) : ℤ :=
  A004739.P530599446870545718.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005045.P7569671426427066010

`∑[A325691(n)+A026810(n+2)]`
-/

namespace A005045.P7569671426427066010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325691 n + A026810 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005045.P7569671426427066010

noncomputable section

/-- A005045: Number of restricted 3 X 3 matrices with row and column sums n.

Offset 0, canonical program `A005045.P7569671426427066010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1252 terms. -/
def A005045 (n : ℕ) : ℤ :=
  A005045.P7569671426427066010.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1252 terms. -/
def A005045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005351.P4664826526780043755

`A004514(lt[n, A088442(n)])-n`
-/

namespace A005351.P4664826526780043755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004514 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - (n : ℤ)

end

end A005351.P4664826526780043755

noncomputable section

/-- A005351: Base -2 representation for n regarded as base 2, then evaluated.

Offset 0, canonical program `A005351.P4664826526780043755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5462 terms. -/
def A005351 (n : ℕ) : ℤ :=
  A005351.P4664826526780043755.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5462 terms. -/
def A005351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005498.P10281591895793247956

`A002054(n+1)+A001791(∑[n]%(n+1))`
-/

namespace A005498.P10281591895793247956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002054 (n + 1) + A001791 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1))

end

end A005498.P10281591895793247956

noncomputable section

/-- A005498: Triangulations of the disk G_{2,n}.

Offset 0, canonical program `A005498.P10281591895793247956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A005498 (n : ℕ) : ℤ :=
  A005498.P10281591895793247956.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A005498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005554.P9832709042548983027

`A102071(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A005554.P9832709042548983027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A102071 (n - 1) + a (n - 1)

end

end A005554.P9832709042548983027

noncomputable section

/-- A005554: Sums of successive Motzkin numbers.

Offset 1, canonical program `A005554.P9832709042548983027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A005554 (n : ℕ) : ℤ :=
  A005554.P9832709042548983027.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A005554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005672.P8730404627455532594

`A028892(n)+Δ[A000045(n)]`
-/

namespace A005672.P8730404627455532594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028892 n + (f1 (n + 1) - f1 n)

end

end A005672.P8730404627455532594

noncomputable section

/-- A005672: a(n) = Fibonacci(n+1) - 2^floor(n/2).

Offset 0, canonical program `A005672.P8730404627455532594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A005672 (n : ℕ) : ℤ :=
  A005672.P8730404627455532594.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A005672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005817.P16626410066484048791

`A208355(n+1)*A208355(n)`
-/

namespace A005817.P16626410066484048791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (n + 1) * A208355 n

end

end A005817.P16626410066484048791

noncomputable section

/-- A005817: a(n) = C(floor(n/2 + 1/2))*C(floor(n/2 + 1)) where C(i) = Catalan numbers A000108.

Offset 0, canonical program `A005817.P16626410066484048791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A005817 (n : ℕ) : ℤ :=
  A005817.P16626410066484048791.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A005817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005968.P14781786617469582651

`and(∑[A056570(n)], -1)`
-/

namespace A005968.P14781786617469582651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A005968.P14781786617469582651

noncomputable section

/-- A005968: Sum of cubes of first n Fibonacci numbers.

Offset 0, canonical program `A005968.P14781786617469582651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A005968 (n : ℕ) : ℤ :=
  A005968.P14781786617469582651.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A005968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006079.P13941314535187319206

`lcm(2, A007123(n+1))-A001405(n)`
-/

namespace A006079.P13941314535187319206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A007123 (n + 1)) : ℤ) - A001405 n

end

end A006079.P13941314535187319206

noncomputable section

/-- A006079: Number of asymmetric planted projective plane trees with n+1 nodes; bracelets (reversible necklaces) with n black beads and n-1 white beads.

Offset 1, canonical program `A006079.P13941314535187319206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A006079 (n : ℕ) : ℤ :=
  A006079.P13941314535187319206.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A006079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006333.P758461644222166681

`∑[n+1]/3*∑[A006332(n)]`
-/

namespace A006333.P758461644222166681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006332 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3 * ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

end

end A006333.P758461644222166681

noncomputable section

/-- A006333: From the enumeration of corners.

Offset 0, canonical program `A006333.P758461644222166681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006333 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A006333.P758461644222166681.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006928.P15318589882780258543

`A000002(abs(1-n)+3)`
-/

namespace A006928.P15318589882780258543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (|1 - (n : ℤ)| + 3).toNat

end

end A006928.P15318589882780258543

noncomputable section

/-- A006928: a(n) = length of (n+1)st run, with initial terms 1, 2.

Offset 1, canonical program `A006928.P15318589882780258543`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006928 (n : ℕ) : ℤ :=
  A006928.P15318589882780258543.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007429.P3226404755406933578

`∑{d}[n+1, A001065(#)+#]`
-/

namespace A007429.P3226404755406933578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A001065 d + (d : ℤ))

end

end A007429.P3226404755406933578

noncomputable section

/-- A007429: Inverse Moebius transform applied twice to natural numbers.

Offset 1, canonical program `A007429.P3226404755406933578`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007429 (n : ℕ) : ℤ :=
  A007429.P3226404755406933578.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007595.P10207835623394486568

`A007123(n+2)-Δ[A001405(n)]`
-/

namespace A007595.P10207835623394486568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007123 (n + 2) - (f1 (n + 1) - f1 n)

end

end A007595.P10207835623394486568

noncomputable section

/-- A007595: a(n) = C_n / 2 if n is even or ( C_n + C_((n-1)/2) ) / 2 if n is odd, where C = Catalan numbers (A000108).

Offset 1, canonical program `A007595.P10207835623394486568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A007595 (n : ℕ) : ℤ :=
  A007595.P10207835623394486568.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A007595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007884.P8538330166122526266

`A001492(n)+A010873(n)%3`
-/

namespace A007884.P8538330166122526266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001492 n + Int.tmod (A010873 n) 3

end

end A007884.P8538330166122526266

noncomputable section

/-- A007884: Chimes made by clock striking quarter-hours.

Offset 0, canonical program `A007884.P8538330166122526266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007884 (n : ℕ) : ℤ :=
  A007884.P8538330166122526266.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007886.P6848228114351566746

`∑[A054243(abs(1-n))]`
-/

namespace A007886.P6848228114351566746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054243 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007886.P6848228114351566746

noncomputable section

/-- A007886: Number of cycles induced by iterating the Gray-coding of an n-bit number: a(n+1) = a(n) + 2^n/C_n, where C_n = least power of 2 >= n (C_n is the length of the cycle), with a(0) = 1.

Offset 0, canonical program `A007886.P6848228114351566746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A007886 (n : ℕ) : ℤ :=
  A007886.P6848228114351566746.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A007886.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007918.P9623913995348804173

`A000040(∑[char[A008864(n+1)]]+1)`
-/

namespace A007918.P9623913995348804173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A007918.P9623913995348804173

noncomputable section

/-- A007918: Least prime >= n (version 1 of the "next prime" function).

Offset 0, canonical program `A007918.P9623913995348804173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007918 (n : ℕ) : ℤ :=
  A007918.P9623913995348804173.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007958.P16980940167034855960

`2*comp[A007091(n)]`
-/

namespace A007958.P16980940167034855960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007958.P16980940167034855960

noncomputable section

/-- A007958: Even numbers with at least one odd digit.

Offset 1, canonical program `A007958.P16980940167034855960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007958 (n : ℕ) : ℤ :=
  (A007958.P16980940167034855960.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008255.P12648646354425310951

`A008000(n)+floor(n/3)*ceil(n/3)`
-/

namespace A008255.P12648646354425310951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 n + ⌊(n : ℚ) / 3⌋ * ⌈(n : ℚ) / 3⌉

end

end A008255.P12648646354425310951

noncomputable section

/-- A008255: Coordination sequence T2 for feldspar.

Offset 0, canonical program `A008255.P12648646354425310951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008255 (n : ℕ) : ℤ :=
  A008255.P12648646354425310951.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008259.P8640376944548637785

`floor(A008000(n)+n²/3)`
-/

namespace A008259.P8640376944548637785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008000 n : ℚ) + (n ^ 2 : ℚ) / 3⌋

end

end A008259.P8640376944548637785

noncomputable section

/-- A008259: Coordination sequence T2 for Moganite, also for BGB1.

Offset 0, canonical program `A008259.P8640376944548637785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008259 (n : ℕ) : ℤ :=
  A008259.P8640376944548637785.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008265.P14370154735591299047

`A008738(n)+A008013(n)`
-/

namespace A008265.P14370154735591299047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008738 n + A008013 n

end

end A008265.P14370154735591299047

noncomputable section

/-- A008265: Coordination sequence T1 for Zeolite Code ATO.

Offset 0, canonical program `A008265.P14370154735591299047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008265 (n : ℕ) : ℤ :=
  A008265.P14370154735591299047.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008356.P3162403411682594401

`∑[A008355(n)]`
-/

namespace A008356.P3162403411682594401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008356.P3162403411682594401

noncomputable section

/-- A008356: Crystal ball sequence for D_5 lattice.

Offset 0, canonical program `A008356.P3162403411682594401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008356 (n : ℕ) : ℤ :=
  A008356.P3162403411682594401.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008413.P448789103090804315

`A187756(n)+A005919(n)`
-/

namespace A008413.P448789103090804315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187756 n + A005919 n

end

end A008413.P448789103090804315

noncomputable section

/-- A008413: Coordination sequence for 5-dimensional cubic lattice.

Offset 0, canonical program `A008413.P448789103090804315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008413 (n : ℕ) : ℤ :=
  A008413.P448789103090804315.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008414.P48295776868654470

`A008412(n)+4*A069038(n)`
-/

namespace A008414.P48295776868654470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008412 n + 4 * A069038 n

end

end A008414.P48295776868654470

noncomputable section

/-- A008414: Coordination sequence for 6-dimensional cubic lattice.

Offset 0, canonical program `A008414.P48295776868654470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008414 (n : ℕ) : ℤ :=
  A008414.P48295776868654470.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008529.P13531353891507600582

`A008412(n)+n*((2*n)²+2)`
-/

namespace A008529.P13531353891507600582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008412 n + (n * ((2 * n) ^ 2 + 2) : ℤ)

end

end A008529.P13531353891507600582

noncomputable section

/-- A008529: Coordination sequence for 4-dimensional face-centered cubic orthogonal lattice.

Offset 0, canonical program `A008529.P13531353891507600582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008529 (n : ℕ) : ℤ :=
  A008529.P13531353891507600582.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008866.P1588034489108184244

`A273960(n+1)+A065091(n+1)`
-/

namespace A008866.P1588034489108184244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (n + 1) + A065091 (n + 1)

end

end A008866.P1588034489108184244

noncomputable section

/-- A008866: Prime(A052928(n+1)) + (-1)^n* prime(A109613(n)).

Offset 1, canonical program `A008866.P1588034489108184244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008866 (n : ℕ) : ℤ :=
  A008866.P1588034489108184244.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008875.P10416676355482975149

`A008874(n+2)`
-/

namespace A008875.P10416676355482975149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008874 (n + 2)

end

end A008875.P10416676355482975149

noncomputable section

/-- A008875: 3x+1 sequence starting at 95.

Offset 0, canonical program `A008875.P10416676355482975149`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008874, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008875 (n : ℕ) : ℤ :=
  A008875.P10416676355482975149.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008874, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008875.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A008967.P514633784673822211

`ceil(A004737(n+1)/2)`
-/

namespace A008967.P514633784673822211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004737 (n + 1) : ℚ) / 2⌉

end

end A008967.P514633784673822211

noncomputable section

/-- A008967: Coefficients of Gaussian polynomials q_binomial(n-2, 2). Also triangle of distribution of rank sums: Wilcoxon's statistic. Irregular triangle read by rows.

Offset 4, canonical program `A008967.P514633784673822211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008967 (n : ℕ) : ℤ :=
  A008967.P514633784673822211.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008975.P8745923045402742944

`C(A003056(n), A004736(n+1)-1)%10`
-/

namespace A008975.P8745923045402742944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A004736 (n + 1) - 1).toNat % 10

end

end A008975.P8745923045402742944

noncomputable section

/-- A008975: Triangle, read by rows, formed by reading Pascal's triangle (A007318) mod 10.

Offset 0, canonical program `A008975.P8745923045402742944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008975 (n : ℕ) : ℤ :=
  (A008975.P8745923045402742944.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A010010.P7255373925509877754

`ceil((A010022(n)+1)/2)`
-/

namespace A010010.P7255373925509877754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010022 n + 1 : ℚ) / 2⌉

end

end A010010.P7255373925509877754

noncomputable section

/-- A010010: a(0) = 1, a(n) = 20*n^2 + 2 for n>0.

Offset 0, canonical program `A010010.P7255373925509877754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A010010 (n : ℕ) : ℤ :=
  A010010.P7255373925509877754.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A010010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A010068.P5749664514502212165

`A053827(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A010068.P5749664514502212165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053827 (a (n - 1)).toNat + a (n - 1)

end

end A010068.P5749664514502212165

noncomputable section

/-- A010068: a(n+1) = a(n) + sum of digits in base 6 representation of a(n).

Offset 0, canonical program `A010068.P5749664514502212165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 862 terms. -/
def A010068 (n : ℕ) : ℤ :=
  A010068.P5749664514502212165.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 862 terms. -/
def A010068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A010783.P12753590747771486457

`floor(A002024(n+1)/A004736(n+1))`
-/

namespace A010783.P12753590747771486457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002024 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ)⌋

end

end A010783.P12753590747771486457

noncomputable section

/-- A010783: Triangle of numbers floor(n/(n-k)).

Offset 1, canonical program `A010783.P12753590747771486457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A010783 (n : ℕ) : ℤ :=
  A010783.P12753590747771486457.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A010783.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A010816.P9990213171636561186

`A374157(A198954(n))`
-/

namespace A010816.P9990213171636561186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374157 (A198954 n).toNat

end

end A010816.P9990213171636561186

noncomputable section

/-- A010816: Expansion of Product_{k>=1} (1 - x^k)^3.

Offset 0, canonical program `A010816.P9990213171636561186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A010816 (n : ℕ) : ℤ :=
  A010816.P9990213171636561186.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A010816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011757.P11703475201892443194

`A001248(n+1)-A123914(n+1)`
-/

namespace A011757.P11703475201892443194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A123914 (n + 1)

end

end A011757.P11703475201892443194

noncomputable section

/-- A011757: a(n) = prime(n^2).

Offset 1, canonical program `A011757.P11703475201892443194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011757 (n : ℕ) : ℤ :=
  A011757.P11703475201892443194.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011974.P2665693327137284562

`A001043(n%a(n-1))` with `a(0)=2`
-/

namespace A011974.P2665693327137284562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001043 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A011974.P2665693327137284562

noncomputable section

/-- A011974: 2 followed by the numbers that are the sum of 2 successive primes.

Offset 1, canonical program `A011974.P2665693327137284562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011974 (n : ℕ) : ℤ :=
  A011974.P2665693327137284562.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A012772.P17884064766285693171

`∑[A012493(n)]+1`
-/

namespace A012772.P17884064766285693171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012493 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A012772.P17884064766285693171

noncomputable section

/-- A012772: Take every 5th term of Padovan sequence A000931, beginning with the sixth term.

Offset 0, canonical program `A012772.P17884064766285693171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A012772 (n : ℕ) : ℤ :=
  A012772.P17884064766285693171.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A012772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A012880.P3724373885116586387

`A012864(n)-Δ[A012855(n)]`
-/

namespace A012880.P3724373885116586387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012855 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012864 n - (f1 (n + 1) - f1 n)

end

end A012880.P3724373885116586387

noncomputable section

/-- A012880: a(n+3) = 5*a(n+2)-4*a(n+1)+a(n).

Offset 0, canonical program `A012880.P3724373885116586387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A012880 (n : ℕ) : ℤ :=
  A012880.P3724373885116586387.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A012880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A012886.P59936076625362143

`A012866(n)+A012855(n+1)`
-/

namespace A012886.P59936076625362143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012866 n + A012855 (n + 1)

end

end A012886.P59936076625362143

noncomputable section

/-- A012886: a(n+3) = 5*a(n+2)-4*a(n+1)+a(n).

Offset 0, canonical program `A012886.P59936076625362143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A012886 (n : ℕ) : ℤ :=
  A012886.P59936076625362143.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A012886.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013635.P304812487331570754

`A007917(n+2)+3+n`
-/

namespace A013635.P304812487331570754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (n + 2) + 3 + (n : ℤ)

end

end A013635.P304812487331570754

noncomputable section

/-- A013635: a(n) = prevprime(n) + n.

Offset 3, canonical program `A013635.P304812487331570754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013635 (n : ℕ) : ℤ :=
  A013635.P304812487331570754.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013637.P7777134068398331679

`(n+3)*A007917(n+2)`
-/

namespace A013637.P7777134068398331679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A007917 (n + 2)

end

end A013637.P7777134068398331679

noncomputable section

/-- A013637: n*prevprime(n).

Offset 3, canonical program `A013637.P7777134068398331679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013637 (n : ℕ) : ℤ :=
  A013637.P7777134068398331679.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014045.P814894345440706175

`A014033(A004396(n))`
-/

namespace A014045.P814894345440706175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014033 (A004396 n).toNat

end

end A014045.P814894345440706175

noncomputable section

/-- A014045: Inverse of 36th cyclotomic polynomial.

Offset 0, canonical program `A014045.P814894345440706175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014045 (n : ℕ) : ℤ :=
  A014045.P814894345440706175.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014049.P6714396449392787227

`A014029(lcm(2, n)/2)`
-/

namespace A014049.P6714396449392787227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014029 (SequenceMachineLib.roundAway ((Nat.lcm 2 n : ℚ) / 2)).toNat

end

end A014049.P6714396449392787227

noncomputable section

/-- A014049: Inverse of 40th cyclotomic polynomial.

Offset 0, canonical program `A014049.P6714396449392787227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014049 (n : ℕ) : ℤ :=
  A014049.P6714396449392787227.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014051.P18181555456456612202

`A014030(n)*A033999(n)`
-/

namespace A014051.P18181555456456612202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014030 n * A033999 n

end

end A014051.P18181555456456612202

noncomputable section

/-- A014051: Inverse of 42nd cyclotomic polynomial.

Offset 0, canonical program `A014051.P18181555456456612202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014051 (n : ℕ) : ℤ :=
  A014051.P18181555456456612202.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014057.P17185432036105878235

`A014033(gcd(n, ∑[n]))`
-/

namespace A014057.P17185432036105878235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014033 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A014057.P17185432036105878235

noncomputable section

/-- A014057: Inverse of 48th cyclotomic polynomial.

Offset 0, canonical program `A014057.P17185432036105878235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014057 (n : ℕ) : ℤ :=
  A014057.P17185432036105878235.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014061.P12385080731141190968

`A014035(A026741(n)+A014035(n))`
-/

namespace A014061.P12385080731141190968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014035 (A026741 n + A014035 n).toNat

end

end A014061.P12385080731141190968

noncomputable section

/-- A014061: Inverse of 52nd cyclotomic polynomial.

Offset 0, canonical program `A014061.P12385080731141190968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014061 (n : ℕ) : ℤ :=
  A014061.P12385080731141190968.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014065.P13821590454930267756

`A014037(n/gcd(2, n))`
-/

namespace A014065.P13821590454930267756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014037 (SequenceMachineLib.roundAway ((n : ℚ) / (Nat.gcd 2 n : ℚ))).toNat

end

end A014065.P13821590454930267756

noncomputable section

/-- A014065: Inverse of 56th cyclotomic polynomial.

Offset 0, canonical program `A014065.P13821590454930267756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014065 (n : ℕ) : ℤ :=
  A014065.P13821590454930267756.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014143.P8732578122342877652

`∑[A014138(n+1)]`
-/

namespace A014143.P8732578122342877652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014143.P8732578122342877652

noncomputable section

/-- A014143: Partial sums of A014138.

Offset 0, canonical program `A014143.P8732578122342877652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A014143 (n : ℕ) : ℤ :=
  A014143.P8732578122342877652.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A014143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014150.P13025670573711070586

`∑[A014148(n+1)]`
-/

namespace A014150.P13025670573711070586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014150.P13025670573711070586

noncomputable section

/-- A014150: Apply partial sum operator thrice to primes.

Offset 1, canonical program `A014150.P13025670573711070586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014150 (n : ℕ) : ℤ :=
  A014150.P13025670573711070586.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014151.P8235036066763530423

`∑[A014140(n)]`
-/

namespace A014151.P8235036066763530423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014151.P8235036066763530423

noncomputable section

/-- A014151: Apply partial sum operator thrice to Catalan numbers.

Offset 0, canonical program `A014151.P8235036066763530423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A014151 (n : ℕ) : ℤ :=
  A014151.P8235036066763530423.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A014151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014173.P200820526183461542

`∑[A014172(n)]`
-/

namespace A014173.P200820526183461542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014172 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014173.P200820526183461542

noncomputable section

/-- A014173: Apply partial sum operator thrice to Stern's sequence.

Offset 0, canonical program `A014173.P200820526183461542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A014173 (n : ℕ) : ℤ :=
  A014173.P200820526183461542.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A014173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014263.P10138940668023476278

`2*A007091(n)`
-/

namespace A014263.P10138940668023476278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007091 n

end

end A014263.P10138940668023476278

noncomputable section

/-- A014263: Numbers that contain even digits only.

Offset 1, canonical program `A014263.P10138940668023476278`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007091, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014263 (n : ℕ) : ℤ :=
  A014263.P10138940668023476278.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007091, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014263.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014337.P14523043631557928292

`A014336(n)/6`
-/

namespace A014337.P14523043631557928292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014336 n : ℚ) / 6

end

end A014337.P14523043631557928292

noncomputable section

/-- A014337: Three-fold exponential convolution of Fibonacci numbers with themselves (divided by 6).

Offset 0, canonical program `A014337.P14523043631557928292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A014337 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A014337.P14523043631557928292.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A014337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014409.P7587171456424882811

`∑[A001859(n)]+A002620(n)²`
-/

namespace A014409.P7587171456424882811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A002620 n ^ 2

end

end A014409.P7587171456424882811

noncomputable section

/-- A014409: Number of inequivalent ways (mod D_4) a pair of checkers can be placed on an n X n board.

Offset 1, canonical program `A014409.P7587171456424882811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014409 (n : ℕ) : ℤ :=
  A014409.P7587171456424882811.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014532.P5823161043713431904

`A005717(n+3)-A002026(n+3)`
-/

namespace A014532.P5823161043713431904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005717 (n + 3) - A002026 (n + 3)

end

end A014532.P5823161043713431904

noncomputable section

/-- A014532: Form array in which n-th row is obtained by expanding (1+x+x^2)^n and taking the 3rd column from the center.

Offset 1, canonical program `A014532.P5823161043713431904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A014532 (n : ℕ) : ℤ :=
  A014532.P5823161043713431904.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A014532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014689.P3456970834266250440

`A006093(n+1)-n`
-/

namespace A014689.P3456970834266250440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - (n : ℤ)

end

end A014689.P3456970834266250440

noncomputable section

/-- A014689: a(n) = prime(n)-n, the number of nonprimes less than prime(n).

Offset 1, canonical program `A014689.P3456970834266250440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014689 (n : ℕ) : ℤ :=
  A014689.P3456970834266250440.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015868.P8293297095464121199

`A010054(A011583(n)+A000217(n))`
-/

namespace A015868.P8293297095464121199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A011583 n + A000217 n).toNat

end

end A015868.P8293297095464121199

noncomputable section

/-- A015868: Inverse of 1859th cyclotomic polynomial.

Offset 0, canonical program `A015868.P8293297095464121199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A015868 (n : ℕ) : ℤ :=
  A015868.P8293297095464121199.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A015868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015914.P16999400420647426476

`eq[A281006(n+1), A281006(n+7)]+1`
-/

namespace A015914.P16999400420647426476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281006 (n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A015914.P16999400420647426476

noncomputable section

/-- A015914: Numbers k such that sigma(k) + 6 = sigma(k+6).

Offset 1, canonical program `A015914.P16999400420647426476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1425 terms. -/
def A015914 (n : ℕ) : ℤ :=
  (A015914.P16999400420647426476.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1425 terms. -/
def A015914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A016168.P15478913577721105647

`A010054(∑[A079957((n+1)/∏{p}[n+1, #])])`
-/

namespace A016168.P15478913577721105647
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079957 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A016168.P15478913577721105647

noncomputable section

/-- A016168: Inverse of 2159th cyclotomic polynomial.

Offset 0, canonical program `A016168.P15478913577721105647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A016168 (n : ℕ) : ℤ :=
  A016168.P15478913577721105647.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A016168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017929.P8245764009525421864

`A017911(3*n)`
-/

namespace A017929.P8245764009525421864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017911 (3 * n)

end

end A017929.P8245764009525421864

noncomputable section

/-- A017929: Powers of sqrt(8) rounded to nearest integer.

Offset 0, canonical program `A017929.P8245764009525421864`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017911, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A017929 (n : ℕ) : ℤ :=
  A017929.P8245764009525421864.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017911, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A017929.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A018002.P8127039911767979249

`A017984(2*n)`
-/

namespace A018002.P8127039911767979249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017984 (2 * n)

end

end A018002.P8127039911767979249

noncomputable section

/-- A018002: Powers of cube root of 9 rounded up.

Offset 0, canonical program `A018002.P8127039911767979249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. -/
def A018002 (n : ℕ) : ℤ :=
  A018002.P8127039911767979249.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. -/
def A018002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018021.P7508653445478068740

`A017985(2*n)`
-/

namespace A018021.P7508653445478068740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017985 (2 * n)

end

end A018021.P7508653445478068740

noncomputable section

/-- A018021: Powers of cube root of 16 rounded down.

Offset 0, canonical program `A018021.P7508653445478068740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. -/
def A018021 (n : ℕ) : ℤ :=
  A018021.P7508653445478068740.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. -/
def A018021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018023.P2764851076062228804

`A017987(2*n)`
-/

namespace A018023.P2764851076062228804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017987 (2 * n)

end

end A018023.P2764851076062228804

noncomputable section

/-- A018023: Powers of cube root of 16 rounded up.

Offset 0, canonical program `A018023.P2764851076062228804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. -/
def A018023 (n : ℕ) : ℤ :=
  A018023.P2764851076062228804.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. -/
def A018023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018125.P8861796577936828116

`A018123(n)+A011558(n)`
-/

namespace A018125.P8861796577936828116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018123 n + A011558 n

end

end A018125.P8861796577936828116

noncomputable section

/-- A018125: Powers of fifth root of 4 rounded up.

Offset 0, canonical program `A018125.P8861796577936828116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 831 terms. -/
def A018125 (n : ℕ) : ℤ :=
  A018125.P8861796577936828116.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 831 terms. -/
def A018125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018134.P9317719804498158701

`A018132(n)+A011558(n)`
-/

namespace A018134.P9317719804498158701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018132 n + A011558 n

end

end A018134.P9317719804498158701

noncomputable section

/-- A018134: Powers of fifth root of 7 rounded up.

Offset 0, canonical program `A018134.P9317719804498158701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 592 terms. -/
def A018134 (n : ℕ) : ℤ :=
  A018134.P9317719804498158701.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 592 terms. -/
def A018134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018137.P15763535359869717710

`A018135(n)+A011558(n)`
-/

namespace A018137.P15763535359869717710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018135 n + A011558 n

end

end A018137.P15763535359869717710

noncomputable section

/-- A018137: Powers of fifth root of 8 rounded up.

Offset 0, canonical program `A018137.P15763535359869717710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 554 terms. -/
def A018137 (n : ℕ) : ℤ :=
  A018137.P15763535359869717710.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 554 terms. -/
def A018137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018143.P16710984044551120495

`A018141(n)+A011558(n)`
-/

namespace A018143.P16710984044551120495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018141 n + A011558 n

end

end A018143.P16710984044551120495

noncomputable section

/-- A018143: Powers of fifth root of 10 rounded up.

Offset 0, canonical program `A018143.P16710984044551120495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 501 terms. -/
def A018143 (n : ℕ) : ℤ :=
  A018143.P16710984044551120495.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 501 terms. -/
def A018143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018146.P17360370714240723720

`A018144(n)+A011558(n)`
-/

namespace A018146.P17360370714240723720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018144 n + A011558 n

end

end A018146.P17360370714240723720

noncomputable section

/-- A018146: Powers of fifth root of 11 rounded up.

Offset 0, canonical program `A018146.P17360370714240723720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A018146 (n : ℕ) : ℤ :=
  A018146.P17360370714240723720.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A018146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018152.P17244962921930450128

`ceil(A018151(2*n)/A018151(n))`
-/

namespace A018152.P17244962921930450128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018151 (2 * n) : ℚ) / (A018151 n : ℚ)⌉

end

end A018152.P17244962921930450128

noncomputable section

/-- A018152: Powers of fifth root of 13 rounded up.

Offset 0, canonical program `A018152.P17244962921930450128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. -/
def A018152 (n : ℕ) : ℤ :=
  A018152.P17244962921930450128.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. -/
def A018152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018164.P3391283248975529223

`A018162(n)+A011558(n)`
-/

namespace A018164.P3391283248975529223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018162 n + A011558 n

end

end A018164.P3391283248975529223

noncomputable section

/-- A018164: Powers of fifth root of 17 rounded up.

Offset 0, canonical program `A018164.P3391283248975529223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 407 terms. -/
def A018164 (n : ℕ) : ℤ :=
  A018164.P3391283248975529223.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 407 terms. -/
def A018164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018167.P16975993885813898639

`A018165(n)+A011558(n)`
-/

namespace A018167.P16975993885813898639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018165 n + A011558 n

end

end A018167.P16975993885813898639

noncomputable section

/-- A018167: Powers of fifth root of 18 rounded up.

Offset 0, canonical program `A018167.P16975993885813898639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 399 terms. -/
def A018167 (n : ℕ) : ℤ :=
  A018167.P16975993885813898639.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 399 terms. -/
def A018167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018170.P5132066639009175930

`A018168(n)+A011558(n)`
-/

namespace A018170.P5132066639009175930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018168 n + A011558 n

end

end A018170.P5132066639009175930

noncomputable section

/-- A018170: Powers of fifth root of 19 rounded up.

Offset 0, canonical program `A018170.P5132066639009175930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 392 terms. -/
def A018170 (n : ℕ) : ℤ :=
  A018170.P5132066639009175930.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 392 terms. -/
def A018170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018179.P8087356966683218819

`A018177(n)+A011558(n)`
-/

namespace A018179.P8087356966683218819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018177 n + A011558 n

end

end A018179.P8087356966683218819

noncomputable section

/-- A018179: Powers of fifth root of 22 rounded up.

Offset 0, canonical program `A018179.P8087356966683218819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 373 terms. -/
def A018179 (n : ℕ) : ℤ :=
  A018179.P8087356966683218819.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 373 terms. -/
def A018179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018182.P9553968348427495281

`ceil(sqrt(A018181(2*n)))`
-/

namespace A018182.P9553968348427495281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A018181 (2 * n) : ℝ)⌉

end

end A018182.P9553968348427495281

noncomputable section

/-- A018182: Powers of fifth root of 23 rounded up.

Offset 0, canonical program `A018182.P9553968348427495281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. -/
def A018182 (n : ℕ) : ℤ :=
  A018182.P9553968348427495281.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. -/
def A018182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018185.P5277193147444695055

`A018183(n)+A011558(n)`
-/

namespace A018185.P5277193147444695055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018183 n + A011558 n

end

end A018185.P5277193147444695055

noncomputable section

/-- A018185: Powers of fifth root of 24 rounded up.

Offset 0, canonical program `A018185.P5277193147444695055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 363 terms. -/
def A018185 (n : ℕ) : ℤ :=
  A018185.P5277193147444695055.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 363 terms. -/
def A018185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018210.P7682685719123910879

`gcd(∑[A005995(n)], A000038(n))`
-/

namespace A018210.P7682685719123910879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005995 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A018210.P7682685719123910879

noncomputable section

/-- A018210: Alkane (or paraffin) numbers l(9,n).

Offset 0, canonical program `A018210.P7682685719123910879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A018210 (n : ℕ) : ℤ :=
  (A018210.P7682685719123910879.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A018210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019463.P7413512839023386045

`A081123(n)+A019461(n)`
-/

namespace A019463.P7413512839023386045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 n + A019461 n

end

end A019463.P7413512839023386045

noncomputable section

/-- A019463: Add 1, multiply by 1, add 2, multiply by 2, etc., start with 1.

Offset 0, canonical program `A019463.P7413512839023386045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A019463 (n : ℕ) : ℤ :=
  A019463.P7413512839023386045.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A019463.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019594.P5449280343673325443

`A004956(n+1)-A019587(n+1)`
-/

namespace A019594.P5449280343673325443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (n + 1) - A019587 (n + 1)

end

end A019594.P5449280343673325443

noncomputable section

/-- A019594: Conway's "para-budding" sequence.

Offset 0, canonical program `A019594.P5449280343673325443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A019594 (n : ℕ) : ℤ :=
  A019594.P5449280343673325443.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A019594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020645.P1080551269528162408

`(A057427(n)+1)*A046699(2*n+1)`
-/

namespace A020645.P1080551269528162408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A046699 (2 * n + 1)

end

end A020645.P1080551269528162408

noncomputable section

/-- A020645: Least positive integer k for which 4^n divides k!.

Offset 0, canonical program `A020645.P1080551269528162408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020645 (n : ℕ) : ℤ :=
  A020645.P1080551269528162408.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020647.P14923650809166500119

`A004277(A046699(3*n+1)*A057427(n))`
-/

namespace A020647.P14923650809166500119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A046699 (3 * n + 1) * A057427 n).toNat

end

end A020647.P14923650809166500119

noncomputable section

/-- A020647: Least positive integer k for which 8^n divides k!.

Offset 0, canonical program `A020647.P14923650809166500119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A020647 (n : ℕ) : ℤ :=
  A020647.P14923650809166500119.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A020647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020912.P13580009353026341439

`ceil(A020909(n+1)/2)`
-/

namespace A020912.P13580009353026341439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020909 (n + 1) : ℚ) / 2⌉

end

end A020912.P13580009353026341439

noncomputable section

/-- A020912: Number of terms in base 4 representation of n-th Fibonacci number.

Offset 1, canonical program `A020912.P13580009353026341439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020912 (n : ℕ) : ℤ :=
  A020912.P13580009353026341439.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020913.P10754868390936482838

`A121902(xor(A025910(n), A167614(n+1)))`
-/

namespace A020913.P10754868390936482838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (Int.xor (A025910 n) (A167614 (n + 1))).toNat

end

end A020913.P10754868390936482838

noncomputable section

/-- A020913: Number of terms in base 5 representation of Fibonacci(n).

Offset 1, canonical program `A020913.P10754868390936482838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A020913 (n : ℕ) : ℤ :=
  A020913.P10754868390936482838.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A020913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020937.P3532935446380172557

`A000720(A272470(n+1))`
-/

namespace A020937.P3532935446380172557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A272470 (n + 1)).toNat

end

end A020937.P3532935446380172557

noncomputable section

/-- A020937: Greatest k such that (k-th prime) < (7 times n-th prime).

Offset 1, canonical program `A020937.P3532935446380172557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1676 terms. -/
def A020937 (n : ℕ) : ℤ :=
  A020937.P3532935446380172557.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1676 terms. -/
def A020937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020967.P5267154593635294162

`A184922(n+1)+A020965(n+1)`
-/

namespace A020967.P5267154593635294162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184922 (n + 1) + A020965 (n + 1)

end

end A020967.P5267154593635294162

noncomputable section

/-- A020967: a(n) = Sum_{k >=1} floor(n*sqrt(2)^(3-k)).

Offset 1, canonical program `A020967.P5267154593635294162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020967 (n : ℕ) : ℤ :=
  A020967.P5267154593635294162.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022303.P9265149570533791824

`A000002(n+5)`
-/

namespace A022303.P9265149570533791824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 5)

end

end A022303.P9265149570533791824

noncomputable section

/-- A022303: The sequence a of 1's and 2's starting with (1,2,1) such that a(n) is the length of the (n+2)nd run of a.

Offset 1, canonical program `A022303.P9265149570533791824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022303 (n : ℕ) : ℤ :=
  A022303.P9265149570533791824.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022416.P16872466725811465008

`A022415(n)+A048883(n)%6`
-/

namespace A022416.P16872466725811465008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022415 n + Int.tmod (A048883 n) 6

end

end A022416.P16872466725811465008

noncomputable section

/-- A022416: Kim-sums: "Kimberling sums" K_n + K_5.

Offset 0, canonical program `A022416.P16872466725811465008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022416 (n : ℕ) : ℤ :=
  A022416.P16872466725811465008.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022442.P624374322279820883

`6*n+3-A022441(n)`
-/

namespace A022442.P624374322279820883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 3 : ℤ) - A022441 n

end

end A022442.P624374322279820883

noncomputable section

/-- A022442: a(n) = c(n) + c(n-1) where c is the sequence of numbers not in a.

Offset 0, canonical program `A022442.P624374322279820883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022442 (n : ℕ) : ℤ :=
  A022442.P624374322279820883.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022462.P932014285812963198

`A152532(n+1)%A065091(n+1)`
-/

namespace A022462.P932014285812963198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152532 (n + 1)) (A065091 (n + 1))

end

end A022462.P932014285812963198

noncomputable section

/-- A022462: a(n) = prime(n)*prime(n+2) mod prime(n+1).

Offset 1, canonical program `A022462.P932014285812963198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022462 (n : ℕ) : ℤ :=
  A022462.P932014285812963198.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022758.P3596448552410962417

`A005099(n+1)+floor(p?[2*n+2*n+1]/4)`
-/

namespace A022758.P3596448552410962417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005099 (n + 1) + ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 4⌋

end

end A022758.P3596448552410962417

noncomputable section

/-- A022758: (n-th 4k+1 prime plus n-th 4k+3 prime)/4.

Offset 1, canonical program `A022758.P3596448552410962417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022758 (n : ℕ) : ℤ :=
  A022758.P3596448552410962417.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022764.P10146463565592433614

`A022763(n+1)/8`
-/

namespace A022764.P10146463565592433614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022763 (n + 1) : ℚ) / 8

end

end A022764.P10146463565592433614

noncomputable section

/-- A022764: (n-th 8k+3 prime plus n-th 8k+5 prime)/8.

Offset 1, canonical program `A022764.P10146463565592433614`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022763, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022764 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A022764.P10146463565592433614.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022763, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022764.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A022784.P14648871505611230013

`a(n-1)+A277644(n)+1` with `a(0)=1`
-/

namespace A022784.P14648871505611230013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A277644 n + 1)

end

end A022784.P14648871505611230013

noncomputable section

/-- A022784: Place where n-th 1 occurs in A023122.

Offset 1, canonical program `A022784.P14648871505611230013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3301 terms. -/
def A022784 (n : ℕ) : ℤ :=
  A022784.P14648871505611230013.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3301 terms. -/
def A022784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022797.P3696269492153289254

`A000040(n+1)+A018252(n+1)`
-/

namespace A022797.P3696269492153289254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A018252 (n + 1)

end

end A022797.P3696269492153289254

noncomputable section

/-- A022797: a(n) = n-th prime + n-th nonprime.

Offset 1, canonical program `A022797.P3696269492153289254`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022797 (n : ℕ) : ℤ :=
  A022797.P3696269492153289254.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022797.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A022800.P2504383713306654643

`A020695(n)+A020695(n)-A014242(n+1)`
-/

namespace A022800.P2504383713306654643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n + (A020695 n - A014242 (n + 1))

end

end A022800.P2504383713306654643

noncomputable section

/-- A022800: a(n) = F(n+2) + c(n) where F(k) is k-th Fibonacci number and c(n) is n-th number that is 1 or is a non-Fibonacci number.

Offset 1, canonical program `A022800.P2504383713306654643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A022800 (n : ℕ) : ℤ :=
  A022800.P2504383713306654643.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A022800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022809.P14696953660419613344

`A020701(n)+A020701(n)-A014251(n+1)`
-/

namespace A022809.P14696953660419613344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n + (A020701 n - A014251 (n + 1))

end

end A022809.P14696953660419613344

noncomputable section

/-- A022809: a(n) = F(n+3) + c(n) where F(k) is k-th Fibonacci number and c(n) is n-th number that is 1 or 2 or is not a Fibonacci number.

Offset 1, canonical program `A022809.P14696953660419613344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A022809 (n : ℕ) : ℤ :=
  A022809.P14696953660419613344.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A022809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023206.P13975797796772789515

`p?[A006254(n+2)-4]`
-/

namespace A023206.P13975797796772789515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 2) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023206.P13975797796772789515

noncomputable section

/-- A023206: Numbers m such that m and 2*m + 7 both prime.

Offset 1, canonical program `A023206.P13975797796772789515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 840 terms. -/
def A023206 (n : ℕ) : ℤ :=
  A023206.P13975797796772789515.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 840 terms. -/
def A023206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023495.P13551267996903774427

`A022802(n+2)`
-/

namespace A023495.P13551267996903774427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022802 (n + 2)

end

end A023495.P13551267996903774427

noncomputable section

/-- A023495: a(n) = b(n) + d(n), where b(n) = (n-th Lucas number > 3) and d(n) = (n-th non-Lucas number).

Offset 0, canonical program `A023495.P13551267996903774427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A023495 (n : ℕ) : ℤ :=
  A023495.P13551267996903774427.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A023495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023496.P2103762783943479263

`A022802(n+1)+A000045(n)`
-/

namespace A023496.P2103762783943479263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022802 (n + 1) + A000045 n

end

end A023496.P2103762783943479263

noncomputable section

/-- A023496: a(n) = b(n) + d(n), where b(n) = (n-th Fibonacci number > 2) and d(n) = (n-th number that is 1 or is not a Lucas number).

Offset 0, canonical program `A023496.P2103762783943479263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A023496 (n : ℕ) : ℤ :=
  A023496.P2103762783943479263.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A023496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023500.P6704142718453384351

`A023499(n)+A000045(n+1)`
-/

namespace A023500.P6704142718453384351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023499 n + A000045 (n + 1)

end

end A023500.P6704142718453384351

noncomputable section

/-- A023500: a(n) = b(n) + d(n), where b(n) = (n-th Fibonacci number > 1) and d(n) = (n-th number that is 1, 2, or 3, or is not a Lucas number).

Offset 0, canonical program `A023500.P6704142718453384351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A023500 (n : ℕ) : ℤ :=
  A023500.P6704142718453384351.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A023500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023501.P14554855581393115018

`A023499(n)+∑[A118658(n)]`
-/

namespace A023501.P14554855581393115018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023499 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023501.P14554855581393115018

noncomputable section

/-- A023501: a(n) = b(n) + d(n), where b(n) = (n-th Lucas number > 1) and d(n) = (n-th number that is 1, 2, or 3, or is not a Lucas number).

Offset 0, canonical program `A023501.P14554855581393115018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A023501 (n : ℕ) : ℤ :=
  A023501.P14554855581393115018.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A023501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023513.P8810578022243060434

`∑{p}[A008864(n+1), #]`
-/

namespace A023513.P8810578022243060434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023513.P8810578022243060434

noncomputable section

/-- A023513: a(n) = sum of distinct prime divisors of prime(n) + 1.

Offset 1, canonical program `A023513.P8810578022243060434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023513 (n : ℕ) : ℤ :=
  (A023513.P8810578022243060434.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023573.P15283443448773359350

`∑{p}[2-A006093(n+1), #]`
-/

namespace A023573.P15283443448773359350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A006093 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023573.P15283443448773359350

noncomputable section

/-- A023573: Sum of distinct prime divisors of prime(n)-3.

Offset 1, canonical program `A023573.P15283443448773359350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023573 (n : ℕ) : ℤ :=
  (A023573.P15283443448773359350.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023574.P4552984400050163207

`∑{e}[2-A006093(n+1), #]`
-/

namespace A023574.P4552984400050163207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A006093 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023574.P4552984400050163207

noncomputable section

/-- A023574: Sum of exponents in prime-power factorization of p(n)-3.

Offset 1, canonical program `A023574.P4552984400050163207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023574 (n : ℕ) : ℤ :=
  (A023574.P4552984400050163207.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023588.P14794205489687113627

`∑{e}[2*A006093(n+1)+1, #]`
-/

namespace A023588.P14794205489687113627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006093 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023588.P14794205489687113627

noncomputable section

/-- A023588: a(n) = sum of exponents in prime-power factorization of 2*prime(n)-1.

Offset 1, canonical program `A023588.P14794205489687113627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023588 (n : ℕ) : ℤ :=
  (A023588.P14794205489687113627.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023595.P11716259585214489517

`∑{e}[2*(A006093(n+1)+1)+1, #]`
-/

namespace A023595.P11716259585214489517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006093 (n + 1) + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023595.P11716259585214489517

noncomputable section

/-- A023595: a(n) = sum of exponents in prime-power factorization of 2*prime(n)+1.

Offset 1, canonical program `A023595.P11716259585214489517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023595 (n : ℕ) : ℤ :=
  (A023595.P11716259585214489517.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023612.P3484570344473562160

`A023611(n)+Δ[A014162(n)]`
-/

namespace A023612.P3484570344473562160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023611 n + (f1 (n + 1) - f1 n)

end

end A023612.P3484570344473562160

noncomputable section

/-- A023612: Convolution of Fibonacci numbers and A001950.

Offset 0, canonical program `A023612.P3484570344473562160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A023612 (n : ℕ) : ℤ :=
  A023612.P3484570344473562160.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A023612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023628.P2110802593740284488

`A023608(n+1)-p?[A001057(n)]`
-/

namespace A023628.P2110802593740284488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023608 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023628.P2110802593740284488

noncomputable section

/-- A023628: Convolution of (1, p(1), p(2), ...) and (F(2), F(3), F(4), ...).

Offset 1, canonical program `A023628.P2110802593740284488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A023628 (n : ℕ) : ℤ :=
  A023628.P2110802593740284488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A023628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023653.P8982485491075407413

`∑[Δ[A023611(n)]-A014675(n)]`
-/

namespace A023653.P8982485491075407413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023611 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A014675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023653.P8982485491075407413

noncomputable section

/-- A023653: Convolution of (F(2), F(3), F(4), ...) and A000201.

Offset 1, canonical program `A023653.P8982485491075407413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A023653 (n : ℕ) : ℤ :=
  A023653.P8982485491075407413.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A023653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023657.P7268910839977161681

`A023615(n+1)-A000040(n+2)`
-/

namespace A023657.P7268910839977161681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023615 (n + 1) - A000040 (n + 2)

end

end A023657.P7268910839977161681

noncomputable section

/-- A023657: Convolution of (F(2), F(3), F(4), ...) and primes.

Offset 1, canonical program `A023657.P7268910839977161681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A023657 (n : ℕ) : ℤ :=
  A023657.P7268910839977161681.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A023657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023658.P1215508874137078903

`∑[∑[A060143(n)+A003622(n+1)]]+(2*n)%2`
-/

namespace A023658.P1215508874137078903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 n + A003622 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((2 * n % 2 : ℕ) : ℤ)

end

end A023658.P1215508874137078903

noncomputable section

/-- A023658: Convolution of odd numbers and A000201.

Offset 1, canonical program `A023658.P1215508874137078903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023658 (n : ℕ) : ℤ :=
  A023658.P1215508874137078903.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023660.P2501000984400973498

`∑[∑[Δ[A023533(n)]²]+1]`
-/

namespace A023660.P2501000984400973498
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) - f3 n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023660.P2501000984400973498

noncomputable section

/-- A023660: Convolution of odd numbers and A023533.

Offset 1, canonical program `A023660.P2501000984400973498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023660 (n : ℕ) : ℤ :=
  A023660.P2501000984400973498.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023741.P5980700938535329966

`∩[A023692(n+1), A023699(n+1)]`
-/

namespace A023741.P5980700938535329966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023741.P5980700938535329966

noncomputable section

/-- A023741: Ternary expansion uses each positive digit just once.

Offset 1, canonical program `A023741.P5980700938535329966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A023741 (n : ℕ) : ℤ :=
  (A023741.P5980700938535329966.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A023741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023860.P8444578760860381817

`∑[A129361(n)]-A014286(A110654(n))`
-/

namespace A023860.P8444578760860381817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A014286 (A110654 n).toNat

end

end A023860.P8444578760860381817

noncomputable section

/-- A023860: a(n) = 1*t(n) + 2*t(n-1) + ... + k*t(n+1-k), where k=floor((n+1)/2), t = A000045 (Fibonacci numbers).

Offset 1, canonical program `A023860.P8444578760860381817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A023860 (n : ℕ) : ℤ :=
  A023860.P8444578760860381817.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A023860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024190.P671176225847773296

`A014616(n+1)-A065033(A103221(n))`
-/

namespace A024190.P671176225847773296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014616 (n + 1) - A065033 (A103221 n).toNat

end

end A024190.P671176225847773296

noncomputable section

/-- A024190: [ (2nd elementary symmetric function of 3,4,...,n+3)/(3+4+...+n+3) ].

Offset 1, canonical program `A024190.P671176225847773296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024190 (n : ℕ) : ℤ :=
  A024190.P671176225847773296.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024192.P4759035746116519592

`floor(A024185(n+1)/A055998(n+4))`
-/

namespace A024192.P4759035746116519592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024185 (n + 1) : ℚ) / (A055998 (n + 4) : ℚ)⌋

end

end A024192.P4759035746116519592

noncomputable section

/-- A024192: Integer part of (4th elementary symmetric function of 3,4,...,n+5)/(3+4+...+n+5).

Offset 1, canonical program `A024192.P4759035746116519592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A024192 (n : ℕ) : ℤ :=
  A024192.P4759035746116519592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A024192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024194.P15620669044121865782

`floor(A024185(n+1)/A024183(n+3))`
-/

namespace A024194.P15620669044121865782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024185 (n + 1) : ℚ) / (A024183 (n + 3) : ℚ)⌋

end

end A024194.P15620669044121865782

noncomputable section

/-- A024194: [ (4th elementary symmetric function of S(n))/(2nd elementary symmetric of S(n)) ], where S(n) = {3,4, ..., n+5}.

Offset 1, canonical program `A024194.P15620669044121865782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A024194 (n : ℕ) : ℤ :=
  A024194.P15620669044121865782.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A024194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024221.P8985371235332592130

`floor(A024214(n+1)/A000326(n+4))`
-/

namespace A024221.P8985371235332592130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024214 (n + 1) : ℚ) / (A000326 (n + 4) : ℚ)⌋

end

end A024221.P8985371235332592130

noncomputable section

/-- A024221: [ (4th elementary symmetric function of S(n))/(first elementary symmetric function of S(n)) ], where S(n) = {first n+3 positive integers congruent to 1 mod 3}.

Offset 1, canonical program `A024221.P8985371235332592130`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024214, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024221 (n : ℕ) : ℤ :=
  A024221.P8985371235332592130.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024214, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024221.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A024223.P3771646496982917147

`floor(A024214(n+1)/A024212(n+3))`
-/

namespace A024223.P3771646496982917147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024214 (n + 1) : ℚ) / (A024212 (n + 3) : ℚ)⌋

end

end A024223.P3771646496982917147

noncomputable section

/-- A024223: [ (4th elementary symmetric function of S(n))/(2nd elementary symmetric function of S(n)) ], where S(n) = {first n+3 positive integers congruent to 1 mod 3}.

Offset 1, canonical program `A024223.P3771646496982917147`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024214, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024223 (n : ℕ) : ℤ :=
  A024223.P3771646496982917147.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024214, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024223.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A024305.P9851003365253708199

`A023857(n+1)+∑[A008619(n)]`
-/

namespace A024305.P9851003365253708199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023857 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024305.P9851003365253708199

noncomputable section

/-- A024305: a(n) = 2*(n+1) + 3*n + ... + (k+1)*(n+2-k), where k = floor((n+1)/2).

Offset 1, canonical program `A024305.P9851003365253708199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024305 (n : ℕ) : ℤ :=
  A024305.P9851003365253708199.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024525.P3676493652697660217

`A001248(n)+a(n-1)` with `a(0)=1`
-/

namespace A024525.P3676493652697660217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001248 n + a (n - 1)

end

end A024525.P3676493652697660217

noncomputable section

/-- A024525: a(n) = 1^2 + prime(1)^2 + prime(2)^2 + ... + prime(n)^2.

Offset 0, canonical program `A024525.P3676493652697660217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024525 (n : ℕ) : ℤ :=
  A024525.P3676493652697660217.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024525.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024549.P15398664414193032257

`∑[A024548(n+1)]`
-/

namespace A024549.P15398664414193032257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024549.P15398664414193032257

noncomputable section

/-- A024549: Sum of [ 1/{k*sqrt(3)} ], k = 1,2,...,n, where {x} := x - [ x ].

Offset 1, canonical program `A024549.P15398664414193032257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024549 (n : ℕ) : ℤ :=
  A024549.P15398664414193032257.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024569.P1182552740229390554

`floor(A024568(n+1)/(n+1))`
-/

namespace A024569.P1182552740229390554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024568 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A024569.P1182552740229390554

noncomputable section

/-- A024569: [ 1/{n*r} ], where r = (1 + sqrt(5))/2 and {x} := x - [ x ].

Offset 1, canonical program `A024569.P1182552740229390554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024569 (n : ℕ) : ℤ :=
  A024569.P1182552740229390554.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024631.P17546350862177043467

`floor(A024648(A004277(n))/2)`
-/

namespace A024631.P17546350862177043467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024648 (A004277 n).toNat : ℚ) / 2⌋

end

end A024631.P17546350862177043467

noncomputable section

/-- A024631: n written in fractional base 4/3.

Offset 0, canonical program `A024631.P17546350862177043467`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A024631 (n : ℕ) : ℤ :=
  A024631.P17546350862177043467.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A024631.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024832.P14340368210108615725

`ceil(A024825(n+2)/4)`
-/

namespace A024832.P14340368210108615725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A024825 (n + 2) : ℚ) / 4⌉

end

end A024832.P14340368210108615725

noncomputable section

/-- A024832: Least m such that if r and s in {Pi/2 - atn(h): h = 1,2,...,n} satisfy r < s, then r < k/m < s for some integer k.

Offset 2, canonical program `A024832.P14340368210108615725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A024832 (n : ℕ) : ℤ :=
  A024832.P14340368210108615725.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A024832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024854.P13567153877183298793

`A023857(n+1)+A008805(n)`
-/

namespace A024854.P13567153877183298793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023857 (n + 1) + A008805 n

end

end A024854.P13567153877183298793

noncomputable section

/-- A024854: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n-k+1), where k = floor(n/2), s = (natural numbers), t = (natural numbers >= 3).

Offset 2, canonical program `A024854.P13567153877183298793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024854 (n : ℕ) : ℤ :=
  A024854.P13567153877183298793.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024998.P14380382889770153470

`Δ[A005773(n)-A005043(n)]`
-/

namespace A024998.P14380382889770153470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n - A005043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024998.P14380382889770153470

noncomputable section

/-- A024998: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is an integer, s(0) = 0, |s(i) - s(i-1)| = 1 for i = 1,2; |s(i) - s(i-1)| <= 1 for i >= 3, s(n) = 1. Also a(n) = T(n,n-1), where T is the array defined in A024996.

Offset 1, canonical program `A024998.P14380382889770153470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A024998 (n : ℕ) : ℤ :=
  A024998.P14380382889770153470.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A024998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025180.P7299662419470437156

`record[A005773(n)-A005043(n+1)]`
-/

namespace A025180.P7299662419470437156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n - A005043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025180.P7299662419470437156

noncomputable section

/-- A025180: a(n) = number of (s(0), s(1), ..., s(n)) such that s(i) is an integer, s(0) = 0, |s(1)| = 1, |s(i) - s(i-1)| <= 1 for i >= 2, s(n) = 2. Also a(n) = T(n,n-2), where T is the array defined in A025177.

Offset 2, canonical program `A025180.P7299662419470437156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A025180 (n : ℕ) : ℤ :=
  A025180.P7299662419470437156.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A025180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025237.P15797820771418730532

`A025235(n)/A374487(n)*A374488(n)`
-/

namespace A025237.P15797820771418730532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025235 n : ℚ) / (A374487 n : ℚ) * (A374488 n : ℚ)

end

end A025237.P15797820771418730532

noncomputable section

/-- A025237: Expansion of (1 -x -sqrt(1-2*x-11*x^2))/(6*x^2).

Offset 0, canonical program `A025237.P15797820771418730532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A025237 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A025237.P15797820771418730532.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A025237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025535.P13577828374207711061

`A001700(n)*A180000(2*n+1)`
-/

namespace A025535.P13577828374207711061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n * A180000 (2 * n + 1)

end

end A025535.P13577828374207711061

noncomputable section

/-- A025535: a(n) = (1/C(2n,0) - 1/C(2n,1) + ... + d/C(2n,2n))*L, where d = (-1)^2n, L = LCM{C(2n,0), C(2n,1),..., C(2n,2n)}.

Offset 0, canonical program `A025535.P13577828374207711061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A025535 (n : ℕ) : ℤ :=
  A025535.P13577828374207711061.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A025535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025565.P15020973864699713191

`(A057427(n)+1)*A005773(n)`
-/

namespace A025565.P15020973864699713191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A005773 n

end

end A025565.P15020973864699713191

noncomputable section

/-- A025565: a(n) = T(n,n-1), where T is array defined in A025564.

Offset 1, canonical program `A025565.P15020973864699713191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A025565 (n : ℕ) : ℤ :=
  A025565.P15020973864699713191.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A025565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025567.P10631985129384628250

`record[abs(A005773(n)-A005774(n))]`
-/

namespace A025567.P10631985129384628250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005773 n - A005774 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025567.P10631985129384628250

noncomputable section

/-- A025567: a(n) = T(n,n+1), where T is the array defined in A025564.

Offset 1, canonical program `A025567.P10631985129384628250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A025567 (n : ℕ) : ℤ :=
  A025567.P10631985129384628250.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A025567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025568.P11960037931394237519

`A005775(n+4)-A005774(n+2)`
-/

namespace A025568.P11960037931394237519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005775 (n + 4) - A005774 (n + 2)

end

end A025568.P11960037931394237519

noncomputable section

/-- A025568: a(n) = T(n,n+2) where T is the array defined in A025564.

Offset 1, canonical program `A025568.P11960037931394237519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A025568 (n : ℕ) : ℤ :=
  A025568.P11960037931394237519.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A025568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025734.P14576003427585486542

`∑[A020914(A004277(n))]-1`
-/

namespace A025734.P14576003427585486542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A025734.P14576003427585486542

noncomputable section

/-- A025734: Index of 9^n within the sequence of the numbers of the form 2^i*9^j.

Offset 0, canonical program `A025734.P14576003427585486542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025734 (n : ℕ) : ℤ :=
  A025734.P14576003427585486542.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025740.P9912005015493539794

`A022334(n)+∑[n]`
-/

namespace A025740.P9912005015493539794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022334 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A025740.P9912005015493539794

noncomputable section

/-- A025740: Index of 10^n within the sequence of the numbers of the form 2^i*10^j.

Offset 0, canonical program `A025740.P9912005015493539794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025740 (n : ℕ) : ℤ :=
  A025740.P9912005015493539794.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026010.P1065645250072885556

`A208976(n)+1-A208355(n)`
-/

namespace A026010.P1065645250072885556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208976 n + (1 - A208355 n)

end

end A026010.P1065645250072885556

noncomputable section

/-- A026010: a(n) = number of (s(0), s(1), ..., s(n)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| = 1 for i = 1,2,...,n and s(0) = 2. Also a(n) = sum of numbers in row n+1 of array T defined in A026009.

Offset 0, canonical program `A026010.P1065645250072885556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A026010 (n : ℕ) : ℤ :=
  A026010.P1065645250072885556.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A026010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026013.P4755213788874432283

`A002057(n)+A000588(n+1)`
-/

namespace A026013.P4755213788874432283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n + A000588 (n + 1)

end

end A026013.P4755213788874432283

noncomputable section

/-- A026013: a(n) = number of (s(0), s(1), ..., s(2n)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| = 1 for i = 1,2,...,n, s(0) = 2, s(2n) = 4. Also a(n) = T(2n,n-1), where T is the array defined in A026009.

Offset 1, canonical program `A026013.P4755213788874432283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A026013 (n : ℕ) : ℤ :=
  A026013.P4755213788874432283.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A026013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026014.P18116275856203812632

`Δ[A000588(n+2)]`
-/

namespace A026014.P18116275856203812632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000588 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026014.P18116275856203812632

noncomputable section

/-- A026014: a(n) = number of (s(0), s(1), ..., s(2n)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| = 1 for i = 1,2,...,n, s(0) = 2, s(2n) = 6. Also a(n) = T(2n,n-2), where T is the array defined in A026009.

Offset 2, canonical program `A026014.P18116275856203812632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A026014 (n : ℕ) : ℤ :=
  A026014.P18116275856203812632.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A026014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026015.P6215984727450645741

`Δ[A003518(n+3)-A000588(n+3)]`
-/

namespace A026015.P6215984727450645741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003518 (n + 3) - A000588 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026015.P6215984727450645741

noncomputable section

/-- A026015: a(n) = number of (s(0), s(1), ..., s(2n)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| = 1 for i = 1,2,...,n, s(0) = 2, s(2n) = 8. Also a(n) = T(2n,n-3), where T is the array defined in A026009.

Offset 3, canonical program `A026015.P6215984727450645741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A026015 (n : ℕ) : ℤ :=
  A026015.P6215984727450645741.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A026015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026017.P5054017065354438030

`A002057(n)+A000588(n+2)`
-/

namespace A026017.P5054017065354438030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n + A000588 (n + 2)

end

end A026017.P5054017065354438030

noncomputable section

/-- A026017: a(n) = number of (s(0), s(1), ..., s(2*n-1)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| = 1 for i = 1,2,...,n, s(0) = 2, s(2*n-1) = 5. Also a(n) = T(2*n-1,n-2), where T is the array defined in A026009.

Offset 2, canonical program `A026017.P5054017065354438030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A026017 (n : ℕ) : ℤ :=
  A026017.P5054017065354438030.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A026017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026021.P624873047912347274

`A026016(A065033(n))+Δ[A208355(n)]`
-/

namespace A026021.P624873047912347274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (A065033 n).toNat + (f1 (n + 1) - f1 n)

end

end A026021.P624873047912347274

noncomputable section

/-- A026021: a(n) = T(n, [n/2]), where T is the array defined in A026009.

Offset 0, canonical program `A026021.P624873047912347274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A026021 (n : ℕ) : ℤ :=
  A026021.P624873047912347274.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A026021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026023.P18349130492113411666

`A116385(n)+A001405(n+1)`
-/

namespace A026023.P18349130492113411666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116385 n + A001405 (n + 1)

end

end A026023.P18349130492113411666

noncomputable section

/-- A026023: a(n) = number of (s(0), s(1), ..., s(n)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| = 1 for i = 1,2,...,n and s(0) = 3. Also a(n) = Sum{T(n,k), k = 0,1,...,[ (n+3)/2 ]}, where T is defined in A026022.

Offset 0, canonical program `A026023.P18349130492113411666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A026023 (n : ℕ) : ℤ :=
  A026023.P18349130492113411666.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A026023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026058.P17231121501906867292

`A026054(n+3)+n+2-A026052(n+2)`
-/

namespace A026058.P17231121501906867292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3) + ((n + 2 : ℤ) - A026052 (n + 2))

end

end A026058.P17231121501906867292

noncomputable section

/-- A026058: a(n) = (d(n)-r(n))/2, where d = A026057 and r is the periodic sequence with fundamental period (0,0,1,0).

Offset 4, canonical program `A026058.P17231121501906867292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026058 (n : ℕ) : ℤ :=
  A026058.P17231121501906867292.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026122.P10047697498519479443

`Δ[A026107(n+2)]`
-/

namespace A026122.P10047697498519479443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026107 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026122.P10047697498519479443

noncomputable section

/-- A026122: a(n) is the number of (s(0),s(1),...,s(n)) such that every s(i) is a nonnegative integer, s(0) = 1, s(n) = 1, |s(1) - s(0)| = 1, |s(i) - s(i-1)| <= 1 for i >= 2. Also a(n) = T(n,n), where T is the array in A026120.

Offset 2, canonical program `A026122.P10047697498519479443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A026122 (n : ℕ) : ℤ :=
  A026122.P10047697498519479443.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A026122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026165.P12291563283285133402

`Δ[A005774(n)]`
-/

namespace A026165.P12291563283285133402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005774 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026165.P12291563283285133402

noncomputable section

/-- A026165: Number of (s(0), s(1), ..., s(n)) such that every s(i) is a nonnegative integer, s(0) = 2, |s(1) - s(0)| = 1, |s(i) - s(i-1)| <= 1 for i >= 2. Also sum of numbers in row n+1 of the array T in A026148.

Offset 0, canonical program `A026165.P12291563283285133402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A026165 (n : ℕ) : ℤ :=
  A026165.P12291563283285133402.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A026165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026180.P967544915775524490

`(A057427(n)+1)*A026179(n+1)`
-/

namespace A026180.P967544915775524490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A026179 (n + 1)

end

end A026180.P967544915775524490

noncomputable section

/-- A026180: a(n) = s(k), where k is the n-th number such that s(j)

Offset 1, canonical program `A026180.P967544915775524490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026180 (n : ℕ) : ℤ :=
  A026180.P967544915775524490.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026251.P7134416135270076079

`abs(1-A026250(n+1)+n)`
-/

namespace A026251.P7134416135270076079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A026250 (n + 1) + (n : ℤ)|

end

end A026251.P7134416135270076079

noncomputable section

/-- A026251: a(n) = |s(n) - n|, where s = A026250. Also a(n) = 2*t(n), where t = A026249.

Offset 1, canonical program `A026251.P7134416135270076079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026251 (n : ℕ) : ℤ :=
  A026251.P7134416135270076079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026252.P5150289340937340239

`A001951(n+1)+A001057(A001951(A001951(n+1)))`
-/

namespace A026252.P5150289340937340239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n + 1) + A001057 (A001951 (A001951 (n + 1)).toNat).toNat

end

end A026252.P5150289340937340239

noncomputable section

/-- A026252: a(n) = (1/2)*(s(n) + 1), where s(n) is the n-th odd number in A026250. Also a(n) = position of n in A026252.

Offset 1, canonical program `A026252.P5150289340937340239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A026252 (n : ℕ) : ℤ :=
  A026252.P5150289340937340239.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A026252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026253.P14152484696363189217

`A014682(A026250(2*(n+1)))`
-/

namespace A026253.P14152484696363189217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A026250 (2 * (n + 1))).toNat

end

end A026253.P14152484696363189217

noncomputable section

/-- A026253: a(n) = (1/2)*s(n), where s(n) is the n-th even number in A026250. Also a(n) = position of n in A026253.

Offset 1, canonical program `A026253.P14152484696363189217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A026253 (n : ℕ) : ℤ :=
  A026253.P14152484696363189217.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A026253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026288.P16717584627320479828

`Δ[A102071(n+2)%A102071(n+1)]`
-/

namespace A026288.P16717584627320479828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102071 (n + 2)) (A102071 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026288.P16717584627320479828

noncomputable section

/-- A026288: Number of (s(0), s(1), ..., s(n)) such that every s(i) is an integer, s(0) = 0, s(1) = 1, s(n) = 2, |s(i) - s(i-1)| <= 1 for i >= 2, |s(2) - s(1)| = 1, |s(3) - s(2)| = 1 if s(2) = 1. Also T(n,n-2), where T is the array in A026268.

Offset 2, canonical program `A026288.P16717584627320479828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A026288 (n : ℕ) : ℤ :=
  A026288.P16717584627320479828.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A026288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026343.P5692666688220806051

`eq[1, A087088(n+1)%2]+1`
-/

namespace A026343.P5692666688220806051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087088 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A026343.P5692666688220806051

noncomputable section

/-- A026343: Least k such that s(k) = n, where s = A026342.

Offset 1, canonical program `A026343.P5692666688220806051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026343 (n : ℕ) : ℤ :=
  (A026343.P5692666688220806051.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026377.P5720323990611058510

`A026375(n+2)-A002212(n+3)`
-/

namespace A026377.P5720323990611058510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026375 (n + 2) - A002212 (n + 3)

end

end A026377.P5720323990611058510

noncomputable section

/-- A026377: a(n) = number of integer strings s(0),...,s(n) counted by array T in A026374 that have s(n)=4; also a(n) = T(2n,n-2).

Offset 2, canonical program `A026377.P5720323990611058510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A026377 (n : ℕ) : ℤ :=
  A026377.P5720323990611058510.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A026377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026388.P5698085782588348674

`A026387(n)-A002212(n+1)`
-/

namespace A026388.P5698085782588348674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026387 n - A002212 (n + 1)

end

end A026388.P5698085782588348674

noncomputable section

/-- A026388: a(n) is the number of integer strings s(0),...,s(n) counted by array T in A026386 that have s(n)=2; also a(n) = T(2n,n-1).

Offset 1, canonical program `A026388.P5698085782588348674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A026388 (n : ℕ) : ℤ :=
  A026388.P5698085782588348674.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A026388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026389.P12442585239649590018

`A026387(n+1)-Δ[Δ[A007317(n+2)]]`
-/

namespace A026389.P12442585239649590018
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007317 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026387 (n + 1) - (f1 (n + 1) - f1 n)

end

end A026389.P12442585239649590018

noncomputable section

/-- A026389: a(n) = number of integer strings s(0),...,s(n) counted by array T in A026386 that have s(n)=4; also a(n) = T(2n,n-2).

Offset 2, canonical program `A026389.P12442585239649590018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A026389 (n : ℕ) : ℤ :=
  A026389.P12442585239649590018.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A026389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026491.P12269982715676672745

`A001468(A022290(n))+2*n`
-/

namespace A026491.P12269982715676672745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (A022290 n).toNat + (2 * n : ℤ)

end

end A026491.P12269982715676672745

noncomputable section

/-- A026491: a(n) = least k > a(n-1) such that A001285(k-1) = A001285(n-1) for n >= 1.

Offset 0, canonical program `A026491.P12269982715676672745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026491 (n : ℕ) : ℤ :=
  A026491.P12269982715676672745.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026609.P1056886591874448485

`Δ[A011655(A053735(n))]+1`
-/

namespace A026609.P1056886591874448485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A053735 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A026609.P1056886591874448485

noncomputable section

/-- A026609: a(n) = number of 3's between n-th 1 and (n+1)st 1 in A026600.

Offset 1, canonical program `A026609.P1056886591874448485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026609 (n : ℕ) : ℤ :=
  A026609.P1056886591874448485.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026616.P7774796732190663953

`A028329(n)-A000984((2*n)%(n+1))`
-/

namespace A026616.P7774796732190663953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028329 n - A000984 (2 * n % (n + 1))

end

end A026616.P7774796732190663953

noncomputable section

/-- A026616: a(n) = A026615(2*n, n).

Offset 0, canonical program `A026616.P7774796732190663953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A026616 (n : ℕ) : ℤ :=
  A026616.P7774796732190663953.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A026616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026630.P8169030177295979061

`A026619(n+1)-A014301(n+1)`
-/

namespace A026630.P8169030177295979061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026619 (n + 1) - A014301 (n + 1)

end

end A026630.P8169030177295979061

noncomputable section

/-- A026630: a(n) = A026626(2*n-1, n-1).

Offset 1, canonical program `A026630.P8169030177295979061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A026630 (n : ℕ) : ℤ :=
  A026630.P8169030177295979061.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A026630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026657.P4438392002932692461

`∑[A026655(n)]`
-/

namespace A026657.P4438392002932692461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026657.P4438392002932692461

noncomputable section

/-- A026657: a(n) = Sum_{i=0..n, j=0..n} A026648(i,j).

Offset 0, canonical program `A026657.P4438392002932692461`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 308 terms. -/
def A026657 (n : ℕ) : ℤ :=
  A026657.P4438392002932692461.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 308 terms. -/
def A026657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026927.P6487270754321091837

`∑[A008615(n)]-A026923(n+1)`
-/

namespace A026927.P6487270754321091837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A026923 (n + 1)

end

end A026927.P6487270754321091837

noncomputable section

/-- A026927: Number of partitions of n into an even number of parts, the greatest being 3; also, a(n+5) = number of partitions of n+2 into an odd number of parts, each <= 3.

Offset 1, canonical program `A026927.P6487270754321091837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026927 (n : ℕ) : ℤ :=
  A026927.P6487270754321091837.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027164.P11103221146335368802

`floor(Δ[A027153(n)/2])`
-/

namespace A027164.P11103221146335368802
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027153 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A027164.P11103221146335368802

noncomputable section

/-- A027164: a(n) = T(n,0) + T(n,1) + ... + T(n,n), T given by A027157.

Offset 0, canonical program `A027164.P11103221146335368802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 246 terms. -/
def A027164 (n : ℕ) : ℤ :=
  A027164.P11103221146335368802.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 246 terms. -/
def A027164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027305.P4063068465224588303

`A242172(n)-A093387(n+1)`
-/

namespace A027305.P4063068465224588303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242172 n - A093387 (n + 1)

end

end A027305.P4063068465224588303

noncomputable section

/-- A027305: a(n) = Sum_{k=0..floor((n+1)/2)} (k+1) * A008315(n, k).

Offset 0, canonical program `A027305.P4063068465224588303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A027305 (n : ℕ) : ℤ :=
  A027305.P4063068465224588303.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A027305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027414.P10695984215047308030

`∑{d}[n+1, A128834(#-A002265(#))]`
-/

namespace A027414.P10695984215047308030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A128834 ((d : ℤ) - A002265 d).toNat

end

end A027414.P10695984215047308030

noncomputable section

/-- A027414: G.f. for Moebius transform is x * (1 + x) / (1 + x^4).

Offset 1, canonical program `A027414.P10695984215047308030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A027414 (n : ℕ) : ℤ :=
  A027414.P10695984215047308030.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A027414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027451.P8818521852691643235

`A002944(n+1)²`
-/

namespace A027451.P8818521852691643235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002944 (n + 1) ^ 2

end

end A027451.P8818521852691643235

noncomputable section

/-- A027451: First diagonal of A027447.

Offset 1, canonical program `A027451.P8818521852691643235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A027451 (n : ℕ) : ℤ :=
  A027451.P8818521852691643235.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A027451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027452.P10262170508951782877

`A099946(n+2)²*A003215(n+1)`
-/

namespace A027452.P10262170508951782877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099946 (n + 2) ^ 2 * A003215 (n + 1)

end

end A027452.P10262170508951782877

noncomputable section

/-- A027452: Second diagonal of A027447.

Offset 2, canonical program `A027452.P10262170508951782877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A027452 (n : ℕ) : ℤ :=
  A027452.P10262170508951782877.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A027452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027558.P14500334055684397754

`2*A005674(n)`
-/

namespace A027558.P14500334055684397754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005674 n

end

end A027558.P14500334055684397754

noncomputable section

/-- A027558: Number of 3-unbalanced strings of length n (= 2^n - A027557(n)).

Offset 0, canonical program `A027558.P14500334055684397754`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005674, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027558 (n : ℕ) : ℤ :=
  A027558.P14500334055684397754.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005674, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027558.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A027611.P15639940923571817069

`lcm(n+1, A002805(n+1))/(n+1)`
-/

namespace A027611.P15639940923571817069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A002805 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A027611.P15639940923571817069

noncomputable section

/-- A027611: Denominator of n * n-th harmonic number.

Offset 1, canonical program `A027611.P15639940923571817069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A027611 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A027611.P15639940923571817069.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A027611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027836.P1844303588074329339

`(4*A069271(n))%A007228(n)`
-/

namespace A027836.P1844303588074329339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * A069271 n) (A007228 n)

end

end A027836.P1844303588074329339

noncomputable section

/-- A027836: Total number of vertices in all loopless rooted planar maps with n edges.

Offset 0, canonical program `A027836.P1844303588074329339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A027836 (n : ℕ) : ℤ :=
  A027836.P1844303588074329339.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A027836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027915.P5286031001483950181

`∑[A027914(n)]`
-/

namespace A027915.P5286031001483950181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027915.P5286031001483950181

noncomputable section

/-- A027915: a(n) = Sum_{0<=j<=i, 0<=i<=n} A027907(i, j).

Offset 0, canonical program `A027915.P5286031001483950181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A027915 (n : ℕ) : ℤ :=
  A027915.P5286031001483950181.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A027915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027930.P2607499071711366274

`∑[A027929(n+3)]`
-/

namespace A027930.P2607499071711366274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027929 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027930.P2607499071711366274

noncomputable section

/-- A027930: a(n) = T(n, 2*n-7), T given by A027926.

Offset 4, canonical program `A027930.P2607499071711366274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027930 (n : ℕ) : ℤ :=
  A027930.P2607499071711366274.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027969.P4311928240023189760

`∑[A027968(n+3)]+2`
-/

namespace A027969.P4311928240023189760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027968 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A027969.P4311928240023189760

noncomputable section

/-- A027969: a(n) = T(n, 2*n-7), T given by A027960.

Offset 4, canonical program `A027969.P4311928240023189760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027969 (n : ℕ) : ℤ :=
  A027969.P4311928240023189760.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027980.P5398295459808024036

`A027979(n+1)-A000204(n+2)²`
-/

namespace A027980.P5398295459808024036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027979 (n + 1) - A000204 (n + 2) ^ 2

end

end A027980.P5398295459808024036

noncomputable section

/-- A027980: a(n) = Sum_{k=0..n-1} T(n,k)*T(n,2n-k), T given by A027960.

Offset 0, canonical program `A027980.P5398295459808024036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A027980 (n : ℕ) : ℤ :=
  A027980.P5398295459808024036.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A027980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028283.P13523606839211364512

`A028270(n)+A028270(n)-A000984(n)`
-/

namespace A028283.P13523606839211364512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028270 n + (A028270 n - A000984 n)

end

end A028283.P13523606839211364512

noncomputable section

/-- A028283: Central elements in 4-Pascal triangle A028275 (by row).

Offset 0, canonical program `A028283.P13523606839211364512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A028283 (n : ℕ) : ℤ :=
  A028283.P13523606839211364512.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A028283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029116.P2286183440171770193

`∑[A025907(n)]`
-/

namespace A029116.P2286183440171770193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029116.P2286183440171770193

noncomputable section

/-- A029116: Expansion of 1/((1-x)(1-x^6)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029116.P2286183440171770193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029116 (n : ℕ) : ℤ :=
  A029116.P2286183440171770193.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029129.P9138012199681895200

`∑[A025920(n)]`
-/

namespace A029129.P9138012199681895200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029129.P9138012199681895200

noncomputable section

/-- A029129: Expansion of 1/((1-x)*(1-x^8)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A029129.P9138012199681895200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029129 (n : ℕ) : ℤ :=
  A029129.P9138012199681895200.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029133.P2070420607738981676

`∑[A025924(n)]`
-/

namespace A029133.P2070420607738981676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029133.P2070420607738981676

noncomputable section

/-- A029133: Expansion of 1/((1-x)(1-x^9)(1-x^10)(1-x^12)).

Offset 0, canonical program `A029133.P2070420607738981676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029133 (n : ℕ) : ℤ :=
  A029133.P2070420607738981676.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029232.P16177588645430596473

`A029123(n)-a(n-1)` with `a(0)=1`
-/

namespace A029232.P16177588645430596473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029123 n - a (n - 1)

end

end A029232.P16177588645430596473

noncomputable section

/-- A029232: Expansion of 1/((1-x^2)*(1-x^7)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A029232.P16177588645430596473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029232 (n : ℕ) : ℤ :=
  A029232.P16177588645430596473.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029237.P12458243396982577582

`A029128(n)-a(n-1)` with `a(0)=1`
-/

namespace A029237.P12458243396982577582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029128 n - a (n - 1)

end

end A029237.P12458243396982577582

noncomputable section

/-- A029237: Expansion of 1/((1-x^2)*(1-x^8)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A029237.P12458243396982577582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029237 (n : ℕ) : ℤ :=
  A029237.P12458243396982577582.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029305.P5923973588584456125

`A025907(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029305.P5923973588584456125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025907 n + a (n - 3)

end

end A029305.P5923973588584456125

noncomputable section

/-- A029305: Expansion of 1/((1-x^3)*(1-x^6)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029305.P5923973588584456125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029305 (n : ℕ) : ℤ :=
  A029305.P5923973588584456125.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029318.P9153013755735390018

`A025920(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029318.P9153013755735390018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025920 n + a (n - 3)

end

end A029318.P9153013755735390018

noncomputable section

/-- A029318: Expansion of 1/((1-x^3)*(1-x^8)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A029318.P9153013755735390018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029318 (n : ℕ) : ℤ :=
  A029318.P9153013755735390018.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029323.P5470347165269879992

`A025924(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029323.P5470347165269879992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025924 n + a (n - 3)

end

end A029323.P5470347165269879992

noncomputable section

/-- A029323: Expansion of 1/((1-x^3)*(1-x^9)*(1-x^10)*(1-x^12)).

Offset 0, canonical program `A029323.P5470347165269879992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029323 (n : ℕ) : ℤ :=
  A029323.P5470347165269879992.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029345.P12851957201810485159

`A029212(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029345.P12851957201810485159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029212 n - a (n - 2)

end

end A029345.P12851957201810485159

noncomputable section

/-- A029345: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^10)*(1-x^12)).

Offset 0, canonical program `A029345.P12851957201810485159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029345 (n : ℕ) : ℤ :=
  A029345.P12851957201810485159.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029356.P12624820882491703426

`A029223(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029356.P12624820882491703426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029223 n - a (n - 2)

end

end A029356.P12624820882491703426

noncomputable section

/-- A029356: Expansion of 1/((1-x^4)*(1-x^6)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A029356.P12624820882491703426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029356 (n : ℕ) : ℤ :=
  A029356.P12624820882491703426.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029362.P11804372412846034763

`A029229(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029362.P11804372412846034763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029229 n - a (n - 2)

end

end A029362.P11804372412846034763

noncomputable section

/-- A029362: Expansion of 1/((1-x^4)*(1-x^7)*(1-x^8)*(1-x^12)).

Offset 0, canonical program `A029362.P11804372412846034763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029362 (n : ℕ) : ℤ :=
  A029362.P11804372412846034763.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029364.P18119640240115564070

`A029231(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029364.P18119640240115564070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029231 n - a (n - 2)

end

end A029364.P18119640240115564070

noncomputable section

/-- A029364: Expansion of 1/((1-x^4)*(1-x^7)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A029364.P18119640240115564070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029364 (n : ℕ) : ℤ :=
  A029364.P18119640240115564070.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029389.P6952618262700460227

`A029288(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029389.P6952618262700460227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029288 n - a (n - 3)

end

end A029389.P6952618262700460227

noncomputable section

/-- A029389: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A029389.P6952618262700460227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029389 (n : ℕ) : ℤ :=
  A029389.P6952618262700460227.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029390.P9870324197793234391

`A029289(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029390.P9870324197793234391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029289 n - a (n - 3)

end

end A029390.P9870324197793234391

noncomputable section

/-- A029390: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A029390.P9870324197793234391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029390 (n : ℕ) : ℤ :=
  A029390.P9870324197793234391.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029391.P12825542684118861897

`A029290(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029391.P12825542684118861897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029290 n - a (n - 3)

end

end A029391.P12825542684118861897

noncomputable section

/-- A029391: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^10)*(1-x^12)).

Offset 0, canonical program `A029391.P12825542684118861897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029391 (n : ℕ) : ℤ :=
  A029391.P12825542684118861897.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029392.P14960122586233052703

`A029291(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029392.P14960122586233052703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029291 n - a (n - 3)

end

end A029392.P14960122586233052703

noncomputable section

/-- A029392: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029392.P14960122586233052703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029392 (n : ℕ) : ℤ :=
  A029392.P14960122586233052703.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029396.P16962163078031394161

`A029207(n+5)-A029229(n+5)`
-/

namespace A029396.P16962163078031394161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029207 (n + 5) - A029229 (n + 5)

end

end A029396.P16962163078031394161

noncomputable section

/-- A029396: Expansion of 1/((1-x^5)*(1-x^7)*(1-x^8)*(1-x^12)).

Offset 0, canonical program `A029396.P16962163078031394161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. -/
def A029396 (n : ℕ) : ℤ :=
  A029396.P16962163078031394161.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. -/
def A029396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029398.P4533888177158712386

`A025913(n)+A029209(n)-A029231(n)`
-/

namespace A029398.P4533888177158712386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025913 n + (A029209 n - A029231 n)

end

end A029398.P4533888177158712386

noncomputable section

/-- A029398: Expansion of 1/((1-x^5)*(1-x^7)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A029398.P4533888177158712386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029398 (n : ℕ) : ℤ :=
  A029398.P4533888177158712386.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029416.P8726267304708303081

`A029309(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029416.P8726267304708303081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029309 n - a (n - 3)

end

end A029416.P8726267304708303081

noncomputable section

/-- A029416: Expansion of 1/((1-x^6)(1-x^7)(1-x^8)(1-x^12)).

Offset 0, canonical program `A029416.P8726267304708303081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029416 (n : ℕ) : ℤ :=
  A029416.P8726267304708303081.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029417.P3771744636440757540

`A029310(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029417.P3771744636440757540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029310 n - a (n - 3)

end

end A029417.P3771744636440757540

noncomputable section

/-- A029417: Expansion of 1/((1-x^6)(1-x^7)(1-x^9)(1-x^10)).

Offset 0, canonical program `A029417.P3771744636440757540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029417 (n : ℕ) : ℤ :=
  A029417.P3771744636440757540.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029418.P10273884798273690927

`A029311(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029418.P10273884798273690927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029311 n - a (n - 3)

end

end A029418.P10273884798273690927

noncomputable section

/-- A029418: Expansion of 1/((1-x^6)(1-x^7)(1-x^9)(1-x^11)).

Offset 0, canonical program `A029418.P10273884798273690927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029418 (n : ℕ) : ℤ :=
  A029418.P10273884798273690927.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029419.P717126810226042508

`A029312(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029419.P717126810226042508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029312 n - a (n - 3)

end

end A029419.P717126810226042508

noncomputable section

/-- A029419: Expansion of 1/((1-x^6)(1-x^7)(1-x^9)(1-x^12)).

Offset 0, canonical program `A029419.P717126810226042508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029419 (n : ℕ) : ℤ :=
  A029419.P717126810226042508.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029423.P3269653636500518624

`A029316(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029423.P3269653636500518624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029316 n - a (n - 3)

end

end A029423.P3269653636500518624

noncomputable section

/-- A029423: Expansion of 1/((1-x^6)(1-x^8)(1-x^9)(1-x^10)).

Offset 0, canonical program `A029423.P3269653636500518624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029423 (n : ℕ) : ℤ :=
  A029423.P3269653636500518624.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029424.P3660127937913149376

`A029355(n)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0`
-/

namespace A029424.P3660127937913149376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0, 0] fun n a =>
  A029355 n - a (n - 4)

end

end A029424.P3660127937913149376

noncomputable section

/-- A029424: Expansion of 1/((1-x^6)(1-x^8)(1-x^9)(1-x^11)).

Offset 0, canonical program `A029424.P3660127937913149376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029424 (n : ℕ) : ℤ :=
  A029424.P3660127937913149376.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029760.P12701853743882014842

`A002457(n+1)-A000346(n+1)`
-/

namespace A029760.P12701853743882014842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 (n + 1) - A000346 (n + 1)

end

end A029760.P12701853743882014842

noncomputable section

/-- A029760: A sum with next-to-central binomial coefficients of even order, Catalan related.

Offset 0, canonical program `A029760.P12701853743882014842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A029760 (n : ℕ) : ℤ :=
  A029760.P12701853743882014842.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A029760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030003.P18069339711567580237

`C(A006254(n+1)-2, 3)`
-/

namespace A030003.P18069339711567580237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006254 (n + 1) - 2).toNat 3

end

end A030003.P18069339711567580237

noncomputable section

/-- A030003: a(n) = (prime(n)-3)*(prime(n)-5)*(prime(n)-7)/48.

Offset 2, canonical program `A030003.P18069339711567580237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030003 (n : ℕ) : ℤ :=
  (A030003.P18069339711567580237.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030004.P13726373812732240925

`C(A006254(n+1)-1, 3)`
-/

namespace A030004.P13726373812732240925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006254 (n + 1) - 1).toNat 3

end

end A030004.P13726373812732240925

noncomputable section

/-- A030004: a(n) = (prime(n) - 1)*(prime(n) - 3)*(prime(n) - 5)/48.

Offset 2, canonical program `A030004.P13726373812732240925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030004 (n : ℕ) : ℤ :=
  (A030004.P13726373812732240925.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030005.P1735916981970022674

`C(A006254(n+1)-1, 2)`
-/

namespace A030005.P1735916981970022674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006254 (n + 1) - 1).toNat 2

end

end A030005.P1735916981970022674

noncomputable section

/-- A030005: (prime(n)-1)(prime(n)-3)/8.

Offset 2, canonical program `A030005.P1735916981970022674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030005 (n : ℕ) : ℤ :=
  (A030005.P1735916981970022674.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030007.P3334370624716506054

`C(A006254(n+1)-2, 2)`
-/

namespace A030007.P3334370624716506054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006254 (n + 1) - 2).toNat 2

end

end A030007.P3334370624716506054

noncomputable section

/-- A030007: a(n) = (prime(n)-3)*(prime(n)-5)/8.

Offset 2, canonical program `A030007.P3334370624716506054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030007 (n : ℕ) : ℤ :=
  (A030007.P3334370624716506054.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031171.P2914572147434546876

`A000040(n+2)+A031170(n+2)-A000040(n+1)`
-/

namespace A031171.P2914572147434546876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) + (A031170 (n + 2) - A000040 (n + 1))

end

end A031171.P2914572147434546876

noncomputable section

/-- A031171: a(n) = prime(n+9) - prime(n).

Offset 1, canonical program `A031171.P2914572147434546876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A031171 (n : ℕ) : ℤ :=
  A031171.P2914572147434546876.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A031171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031336.P9356925525958720186

`A001748(3*(n+1))/3`
-/

namespace A031336.P9356925525958720186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (3 * (n + 1)) : ℚ) / 3

end

end A031336.P9356925525958720186

noncomputable section

/-- A031336: a(n) = prime(3*n).

Offset 1, canonical program `A031336.P9356925525958720186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A031336 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A031336.P9356925525958720186.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A031336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031343.P16180589133101354586

`A031338(2*(n+1))`
-/

namespace A031343.P16180589133101354586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031338 (2 * (n + 1))

end

end A031343.P16180589133101354586

noncomputable section

/-- A031343: a(n) = prime(10*n).

Offset 1, canonical program `A031343.P16180589133101354586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031343 (n : ℕ) : ℤ :=
  A031343.P16180589133101354586.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031369.P4071911669952117213

`A008347(3*n+1)+A008347(A016789(n))`
-/

namespace A031369.P4071911669952117213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 (3 * n + 1) + A008347 (A016789 n).toNat

end

end A031369.P4071911669952117213

noncomputable section

/-- A031369: a(n) = prime(3n-1).

Offset 1, canonical program `A031369.P4071911669952117213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031369 (n : ℕ) : ℤ :=
  A031369.P4071911669952117213.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031385.P17010987493874135659

`A001748(4*n+1)/3`
-/

namespace A031385.P17010987493874135659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (4 * n + 1) : ℚ) / 3

end

end A031385.P17010987493874135659

noncomputable section

/-- A031385: a(n) = prime(4*n-3).

Offset 1, canonical program `A031385.P17010987493874135659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031385 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A031385.P17010987493874135659.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031388.P16628275193740442082

`A001748(A017029(n))/3`
-/

namespace A031388.P16628275193740442082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A017029 n).toNat : ℚ) / 3

end

end A031388.P16628275193740442082

noncomputable section

/-- A031388: a(n) = prime(7*n-3).

Offset 1, canonical program `A031388.P16628275193740442082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2857 terms. -/
def A031388 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A031388.P16628275193740442082.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2857 terms. -/
def A031388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031452.P806854237752856273

`eq[A053735(n), A081604(n)]`
-/

namespace A031452.P806854237752856273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031452.P806854237752856273

noncomputable section

/-- A031452: Numbers whose base-3 representation has the same number of 0's as 2's.

Offset 1, canonical program `A031452.P806854237752856273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1756 terms. -/
def A031452 (n : ℕ) : ℤ :=
  (A031452.P806854237752856273.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1756 terms. -/
def A031452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031454.P1259300085302729579

`eq[A053735(n)+2, A081604(n)]`
-/

namespace A031454.P1259300085302729579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031454.P1259300085302729579

noncomputable section

/-- A031454: Numbers whose base-3 representation has 2 more 0's than 2's.

Offset 1, canonical program `A031454.P1259300085302729579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1198 terms. -/
def A031454 (n : ℕ) : ℤ :=
  (A031454.P1259300085302729579.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1198 terms. -/
def A031454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031455.P11485756920974938664

`eq[A053735(n)+3, A081604(n)]`
-/

namespace A031455.P11485756920974938664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031455.P11485756920974938664

noncomputable section

/-- A031455: Numbers whose base-3 representation has 3 more 0's than 2's.

Offset 1, canonical program `A031455.P11485756920974938664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 740 terms. -/
def A031455 (n : ℕ) : ℤ :=
  (A031455.P11485756920974938664.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 740 terms. -/
def A031455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031457.P3503844430823756382

`eq[A081604(n)+1, A053735(n)]`
-/

namespace A031457.P3503844430823756382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031457.P3503844430823756382

noncomputable section

/-- A031457: Numbers whose base-3 representation has one fewer 0 than 2's.

Offset 1, canonical program `A031457.P3503844430823756382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1604 terms. -/
def A031457 (n : ℕ) : ℤ :=
  (A031457.P3503844430823756382.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1604 terms. -/
def A031457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031458.P4865628708223611302

`eq[A081604(n)+2, A053735(n)]`
-/

namespace A031458.P4865628708223611302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031458.P4865628708223611302

noncomputable section

/-- A031458: Numbers whose base-3 representation has 2 fewer 0's than 2's.

Offset 1, canonical program `A031458.P4865628708223611302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1210 terms. -/
def A031458 (n : ℕ) : ℤ :=
  (A031458.P4865628708223611302.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1210 terms. -/
def A031458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031459.P7164562208403630870

`eq[A081604(n)+3, A053735(n)]`
-/

namespace A031459.P7164562208403630870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031459.P7164562208403630870

noncomputable section

/-- A031459: Numbers whose base-3 representation has 3 fewer 0's than 2's.

Offset 1, canonical program `A031459.P7164562208403630870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 749 terms. -/
def A031459 (n : ℕ) : ℤ :=
  (A031459.P7164562208403630870.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 749 terms. -/
def A031459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031467.P1411473748757651581

`eq[A000120(n), A070939(A000267(n))+1]`
-/

namespace A031467.P1411473748757651581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A000267 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031467.P1411473748757651581

noncomputable section

/-- A031467: Numbers whose base-4 representation has 2 fewer 0's than 3's.

Offset 1, canonical program `A031467.P1411473748757651581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1200 terms. -/
def A031467 (n : ℕ) : ℤ :=
  (A031467.P1411473748757651581.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1200 terms. -/
def A031467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031905.P1891284395022486736

`A031392(2*(n+1))`
-/

namespace A031905.P1891284395022486736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031392 (2 * (n + 1))

end

end A031905.P1891284395022486736

noncomputable section

/-- A031905: a(n) = prime(10*n - 4).

Offset 1, canonical program `A031905.P1891284395022486736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031905 (n : ℕ) : ℤ :=
  A031905.P1891284395022486736.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031907.P8365499788396387599

`A001748(7*n+2)/3`
-/

namespace A031907.P8365499788396387599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (7 * n + 2) : ℚ) / 3

end

end A031907.P8365499788396387599

noncomputable section

/-- A031907: a(n) = prime(7*n - 5).

Offset 1, canonical program `A031907.P8365499788396387599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2857 terms. -/
def A031907 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A031907.P8365499788396387599.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2857 terms. -/
def A031907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031910.P7697865253287413651

`A031338(Δ[n²])`
-/

namespace A031910.P7697865253287413651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031338 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A031910.P7697865253287413651

noncomputable section

/-- A031910: a(n) = prime(10*n - 5).

Offset 1, canonical program `A031910.P7697865253287413651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031910 (n : ℕ) : ℤ :=
  A031910.P7697865253287413651.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031911.P6172593155193525525

`A001748(7*n+1)/3`
-/

namespace A031911.P6172593155193525525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (7 * n + 1) : ℚ) / 3

end

end A031911.P6172593155193525525

noncomputable section

/-- A031911: a(n) = prime(7*n - 6).

Offset 1, canonical program `A031911.P6172593155193525525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2858 terms. -/
def A031911 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A031911.P6172593155193525525.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2858 terms. -/
def A031911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031920.P6425321281668606651

`A031392(Δ[n²])`
-/

namespace A031920.P6425321281668606651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031392 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A031920.P6425321281668606651

noncomputable section

/-- A031920: a(n) = prime(10*n-9).

Offset 1, canonical program `A031920.P6425321281668606651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031920 (n : ℕ) : ℤ :=
  A031920.P6425321281668606651.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032092.P17259365878144111399

`∑[∑[A023857(or(1, n))]]`
-/

namespace A032092.P17259365878144111399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023857 (Nat.lor 1 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032092.P17259365878144111399

noncomputable section

/-- A032092: Number of reversible strings with n-1 beads of 2 colors. 5 beads are black. String is not palindromic.

Offset 7, canonical program `A032092.P17259365878144111399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032092 (n : ℕ) : ℤ :=
  A032092.P17259365878144111399.a (n - 7)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032094.P1520495427252306651

`4*A031164(n)`
-/

namespace A032094.P1520495427252306651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A031164 n

end

end A032094.P1520495427252306651

noncomputable section

/-- A032094: Number of reversible strings with n-1 beads of 2 colors. 7 beads are black. String is not palindromic.

Offset 9, canonical program `A032094.P1520495427252306651`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031164, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A032094 (n : ℕ) : ℤ :=
  A032094.P1520495427252306651.a (n - 9)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031164, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A032094.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A032106.P17796953684831043289

`A182027(2*n+1)-A007123(n+1)`
-/

namespace A032106.P17796953684831043289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182027 (2 * n + 1) - A007123 (n + 1)

end

end A032106.P17796953684831043289

noncomputable section

/-- A032106: Number of reversible strings with n black beads and n-1 white beads. String is not palindromic.

Offset 1, canonical program `A032106.P17796953684831043289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A032106 (n : ℕ) : ℤ :=
  A032106.P17796953684831043289.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A032106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032180.P12612180409227209886

`120*A000770(n+6)`
-/

namespace A032180.P12612180409227209886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  120 * A000770 (n + 6)

end

end A032180.P12612180409227209886

noncomputable section

/-- A032180: Number of ways to partition n labeled elements into 6 pie slices.

Offset 6, canonical program `A032180.P12612180409227209886`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000770, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A032180 (n : ℕ) : ℤ :=
  A032180.P12612180409227209886.a (n - 6)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000770, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A032180.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A032512.P620740316216870869

`∑[A255270(n)]*A057427(n)`
-/

namespace A032512.P620740316216870869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057427 n

end

end A032512.P620740316216870869

noncomputable section

/-- A032512: Sum of the integer part of 4th roots of integers <= n.

Offset 0, canonical program `A032512.P620740316216870869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032512 (n : ℕ) : ℤ :=
  A032512.P620740316216870869.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032536.P9657526859708018741

`floor(A007089(n+1)/(n+1))`
-/

namespace A032536.P9657526859708018741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007089 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A032536.P9657526859708018741

noncomputable section

/-- A032536: Integer part of decimal 'base-3 looking' numbers divided by their actual base-3 values.

Offset 1, canonical program `A032536.P9657526859708018741`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A032536 (n : ℕ) : ℤ :=
  A032536.P9657526859708018741.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A032536.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A032539.P16837538316627881090

`floor(A007090(n+1)/(n+1))`
-/

namespace A032539.P16837538316627881090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007090 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A032539.P16837538316627881090

noncomputable section

/-- A032539: Integer part of decimal 'base-4 looking' numbers divided by their actual base-4 values.

Offset 1, canonical program `A032539.P16837538316627881090`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007090, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A032539 (n : ℕ) : ℤ :=
  A032539.P16837538316627881090.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007090, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A032539.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A032542.P17277057627315213532

`floor(A007091(n+1)/(n+1))`
-/

namespace A032542.P17277057627315213532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007091 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A032542.P17277057627315213532

noncomputable section

/-- A032542: Integer part of decimal 'base-5 looking' numbers divided by their actual base-5 values.

Offset 1, canonical program `A032542.P17277057627315213532`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007091, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A032542 (n : ℕ) : ℤ :=
  A032542.P17277057627315213532.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007091, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A032542.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A032794.P15494052535104857542

`A032770(A042968(n+1))`
-/

namespace A032794.P15494052535104857542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032770 (A042968 (n + 1)).toNat

end

end A032794.P15494052535104857542

noncomputable section

/-- A032794: Positive integers of the form n(n+1)(n+2)(n+3)(n+4)/(n+(n+1)+(n+2)+(n+3)+(n+4)) that are a multiple of n.

Offset 1, canonical program `A032794.P15494052535104857542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7500 terms. -/
def A032794 (n : ℕ) : ℤ :=
  A032794.P15494052535104857542.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7500 terms. -/
def A032794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033160.P14903934844071324041

`A004793(n+1)+1`
-/

namespace A033160.P14903934844071324041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (n + 1) + 1

end

end A033160.P14903934844071324041

noncomputable section

/-- A033160: Begins with (2, 4); avoids 3-term arithmetic progressions.

Offset 1, canonical program `A033160.P14903934844071324041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033160 (n : ℕ) : ℤ :=
  A033160.P14903934844071324041.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033287.P5066765549217672205

`A062357(n+1)+A001043(n+1)`
-/

namespace A033287.P5066765549217672205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062357 (n + 1) + A001043 (n + 1)

end

end A033287.P5066765549217672205

noncomputable section

/-- A033287: First differences of A033286.

Offset 0, canonical program `A033287.P5066765549217672205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033287 (n : ℕ) : ℤ :=
  A033287.P5066765549217672205.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033291.P13916502541116241249

`(1-A001840(A003056(n))+n)*∑[A010054(n)]`
-/

namespace A033291.P13916502541116241249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A001840 (A003056 n).toNat + (n : ℤ)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A033291.P13916502541116241249

noncomputable section

/-- A033291: A Connell-like sequence: take the first multiple of 1, the next 2 multiples of 2, the next 3 multiples of 3, etc.

Offset 1, canonical program `A033291.P13916502541116241249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033291 (n : ℕ) : ℤ :=
  A033291.P13916502541116241249.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033297.P2607627229482960068

`abs(∑[A168491(n+1)])`
-/

namespace A033297.P2607627229482960068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A033297.P2607627229482960068

noncomputable section

/-- A033297: Number of ordered rooted trees with n edges such that the rightmost leaf of each subtree is at even level. Equivalently, number of Dyck paths of semilength n with no return descents of odd length.

Offset 2, canonical program `A033297.P2607627229482960068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A033297 (n : ℕ) : ℤ :=
  A033297.P2607627229482960068.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A033297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034097.P4458000576878132596

`eq[1, A023961(n+1)]+1`
-/

namespace A034097.P4458000576878132596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A034097.P4458000576878132596

noncomputable section

/-- A034097: Fractional part of square root of a(n) starts with digit 1.

Offset 1, canonical program `A034097.P4458000576878132596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 990 terms. -/
def A034097 (n : ℕ) : ℤ :=
  (A034097.P4458000576878132596.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 990 terms. -/
def A034097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034100.P14856790414300655202

`eq[4, A023961(n+1)]+1`
-/

namespace A034100.P14856790414300655202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A034100.P14856790414300655202

noncomputable section

/-- A034100: Fractional part of square root of a(n) starts with digit 4.

Offset 1, canonical program `A034100.P14856790414300655202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1030 terms. -/
def A034100 (n : ℕ) : ℤ :=
  (A034100.P14856790414300655202.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1030 terms. -/
def A034100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034101.P14672097297852077103

`eq[5, A023961(n+1)]+1`
-/

namespace A034101.P14672097297852077103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A034101.P14672097297852077103

noncomputable section

/-- A034101: Numbers whose fractional part of square root starts with digit 5.

Offset 1, canonical program `A034101.P14672097297852077103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 970 terms. -/
def A034101 (n : ℕ) : ℤ :=
  (A034101.P14672097297852077103.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 970 terms. -/
def A034101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034105.P4830823344881872781

`eq[9, A023961(A028310(n))]`
-/

namespace A034105.P4830823344881872781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034105.P4830823344881872781

noncomputable section

/-- A034105: Numbers n such that fractional part of square root of n starts with digit 9.

Offset 1, canonical program `A034105.P4830823344881872781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 950 terms. -/
def A034105 (n : ℕ) : ℤ :=
  (A034105.P4830823344881872781.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 950 terms. -/
def A034105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034583.P7605703185313025077

`A034008(A034586(n+5))`
-/

namespace A034583.P7605703185313025077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A034586 (n + 5)).toNat

end

end A034583.P7605703185313025077

noncomputable section

/-- A034583: Dimension of an irreducible R-module for Clifford algebra Cl_n.

Offset 0, canonical program `A034583.P7605703185313025077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A034583 (n : ℕ) : ℤ :=
  A034583.P7605703185313025077.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A034583.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034742.P15572167906451431055

`∑{d}[n+1, A007427(#)*A034731((n+1)/#)]`
-/

namespace A034742.P15572167906451431055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A034731 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034742.P15572167906451431055

noncomputable section

/-- A034742: Dirichlet convolution of Moebius function mu(n) (A008683) with Catalan numbers (A000108).

Offset 1, canonical program `A034742.P15572167906451431055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A034742 (n : ℕ) : ℤ :=
  A034742.P15572167906451431055.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A034742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034754.P850414589168933379

`∑{d}[n+1, A007427(#)*A034753((n+1)/#)]`
-/

namespace A034754.P850414589168933379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A034753 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034754.P850414589168933379

noncomputable section

/-- A034754: Dirichlet convolution of 3^(n-1) with phi(n).

Offset 1, canonical program `A034754.P850414589168933379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A034754 (n : ℕ) : ℤ :=
  A034754.P850414589168933379.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A034754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034764.P3490427444608940755

`∑{d}[n+1, #*A034731((n+1)/#)]`
-/

namespace A034764.P3490427444608940755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A034731 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034764.P3490427444608940755

noncomputable section

/-- A034764: Dirichlet convolution of sigma(n) with Catalan numbers.

Offset 1, canonical program `A034764.P3490427444608940755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A034764 (n : ℕ) : ℤ :=
  A034764.P3490427444608940755.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A034764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034774.P12219374095223123193

`∑{d}[n+1, A034731(#)]`
-/

namespace A034774.P12219374095223123193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034731 d

end

end A034774.P12219374095223123193

noncomputable section

/-- A034774: Dirichlet convolution of d(n) (# of divisors) with Catalan numbers.

Offset 1, canonical program `A034774.P12219374095223123193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A034774 (n : ℕ) : ℤ :=
  A034774.P12219374095223123193.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A034774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035045.P17319593329754997436

`A005774(n+1)+A005774(n)`
-/

namespace A035045.P17319593329754997436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005774 (n + 1) + A005774 n

end

end A035045.P17319593329754997436

noncomputable section

/-- A035045: Inverse binomial transform of A002054.

Offset 0, canonical program `A035045.P17319593329754997436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A035045 (n : ℕ) : ℤ :=
  A035045.P17319593329754997436.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A035045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035158.P11043150127881693706

`A016040(A033270(n+1)+1)`
-/

namespace A035158.P11043150127881693706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016040 (A033270 (n + 1) + 1).toNat

end

end A035158.P11043150127881693706

noncomputable section

/-- A035158: Floor of the Chebyshev function theta(n): a(n) = floor(Sum_{primes p <= n} log(p)).

Offset 1, canonical program `A035158.P11043150127881693706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035158 (n : ℕ) : ℤ :=
  A035158.P11043150127881693706.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035180.P4525785097877172751

`∑{d}[n+1, A388072(#)]`
-/

namespace A035180.P4525785097877172751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A388072 d

end

end A035180.P4525785097877172751

noncomputable section

/-- A035180: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = -10.

Offset 1, canonical program `A035180.P4525785097877172751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035180 (n : ℕ) : ℤ :=
  A035180.P4525785097877172751.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035258.P15411384162313240861

`lt[1, A035199(n+1)+1]+1`
-/

namespace A035258.P15411384162313240861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035199 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A035258.P15411384162313240861

noncomputable section

/-- A035258: Positive integers of the form 2x^2+xy-2y^2 (discriminant 17).

Offset 1, canonical program `A035258.P15411384162313240861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2281 terms. -/
def A035258 (n : ℕ) : ℤ :=
  (A035258.P15411384162313240861.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2281 terms. -/
def A035258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036467.P9941389810136272924

`A008347(n)+(-1)^n`
-/

namespace A036467.P9941389810136272924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 n + (-1) ^ n

end

end A036467.P9941389810136272924

noncomputable section

/-- A036467: a(n) + a(n-1) = n-th prime.

Offset 0, canonical program `A036467.P9941389810136272924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036467 (n : ℕ) : ℤ :=
  A036467.P9941389810136272924.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036553.P11962901007563156616

`A006093(n+1)-A000040((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A036553.P11962901007563156616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A000040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A036553.P11962901007563156616

noncomputable section

/-- A036553: a(n) = phi(prime(n)) - prime(phi(n)).

Offset 1, canonical program `A036553.P11962901007563156616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036553 (n : ℕ) : ℤ :=
  A036553.P11962901007563156616.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036583.P6799421790634942612

`A036581(n)+1`
-/

namespace A036583.P6799421790634942612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036581 n + 1

end

end A036583.P6799421790634942612

noncomputable section

/-- A036583: Ternary Thue-Morse sequence: closed under a->abc, b->ac, c->b.

Offset 0, canonical program `A036583.P6799421790634942612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036583 (n : ℕ) : ℤ :=
  A036583.P6799421790634942612.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036583.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036584.P6783415784682243525

`3-A036581(n)`
-/

namespace A036584.P6783415784682243525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A036581 n

end

end A036584.P6783415784682243525

noncomputable section

/-- A036584: Ternary Thue-Morse sequence: closed under a->abc, b->ac, c->b.

Offset 0, canonical program `A036584.P6783415784682243525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036584 (n : ℕ) : ℤ :=
  A036584.P6783415784682243525.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036681.P10320585013589590924

`∑[A054455(n)+A006367(n)]`
-/

namespace A036681.P10320585013589590924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054455 n + A006367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036681.P10320585013589590924

noncomputable section

/-- A036681: T(n+2,2) with T as in A036355.

Offset 0, canonical program `A036681.P10320585013589590924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 457 terms. -/
def A036681 (n : ℕ) : ℤ :=
  A036681.P10320585013589590924.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 457 terms. -/
def A036681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036955.P16917858282918792280

`eq[1, ∑{e}[A007090(n), #]]`
-/

namespace A036955.P16917858282918792280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036955.P16917858282918792280

noncomputable section

/-- A036955: Numbers whose base-4 representation is the decimal representation of a prime.

Offset 1, canonical program `A036955.P16917858282918792280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A036955 (n : ℕ) : ℤ :=
  (A036955.P16917858282918792280.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A036955.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037166.P12337752897375453718

`A006094(n+1)-A000040(n+1)`
-/

namespace A037166.P12337752897375453718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) - A000040 (n + 1)

end

end A037166.P12337752897375453718

noncomputable section

/-- A037166: a(n) = prime(n)*prime(n+1) - prime(n).

Offset 1, canonical program `A037166.P12337752897375453718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037166 (n : ℕ) : ℤ :=
  A037166.P12337752897375453718.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037301.P11869485949752062609

`eq[0, A180017(n)]`
-/

namespace A037301.P11869485949752062609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180017 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037301.P11869485949752062609

noncomputable section

/-- A037301: Numbers whose base-2 and base-3 expansions have the same digit sum.

Offset 1, canonical program `A037301.P11869485949752062609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1290 terms. -/
def A037301 (n : ℕ) : ℤ :=
  (A037301.P11869485949752062609.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1290 terms. -/
def A037301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037303.P685693098012570098

`eq[A000120(n+1), A053824(n+1)]+1`
-/

namespace A037303.P685693098012570098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037303.P685693098012570098

noncomputable section

/-- A037303: Numbers whose base-2 and base-5 expansions have the same digit sum.

Offset 1, canonical program `A037303.P685693098012570098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 446 terms. -/
def A037303 (n : ℕ) : ℤ :=
  (A037303.P685693098012570098.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 446 terms. -/
def A037303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037304.P5664488790380280954

`eq[A000120(n+1), A053827(n+1)]+1`
-/

namespace A037304.P5664488790380280954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037304.P5664488790380280954

noncomputable section

/-- A037304: Numbers whose base-2 and base-6 expansions have the same digit sum.

Offset 1, canonical program `A037304.P5664488790380280954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. -/
def A037304 (n : ℕ) : ℤ :=
  (A037304.P5664488790380280954.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. -/
def A037304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037309.P12344798039398078842

`eq[A053735(n+1), A053737(n+1)]+1`
-/

namespace A037309.P12344798039398078842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037309.P12344798039398078842

noncomputable section

/-- A037309: Numbers whose base-3 and base-4 expansions have the same digit sum.

Offset 1, canonical program `A037309.P12344798039398078842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1082 terms. -/
def A037309 (n : ℕ) : ℤ :=
  (A037309.P12344798039398078842.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1082 terms. -/
def A037309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037310.P12962225180508801874

`eq[A053735(n+1), A053824(n+1)]+1`
-/

namespace A037310.P12962225180508801874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037310.P12962225180508801874

noncomputable section

/-- A037310: Numbers whose base-3 and base-5 expansions have the same digit sum.

Offset 1, canonical program `A037310.P12962225180508801874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1623 terms. -/
def A037310 (n : ℕ) : ℤ :=
  (A037310.P12962225180508801874.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1623 terms. -/
def A037310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037311.P3355334712798608875

`eq[A053735(n+1), A053827(n+1)]+1`
-/

namespace A037311.P3355334712798608875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037311.P3355334712798608875

noncomputable section

/-- A037311: Numbers whose base-3 and base-6 expansions have the same digit sum.

Offset 1, canonical program `A037311.P3355334712798608875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 677 terms. -/
def A037311 (n : ℕ) : ℤ :=
  (A037311.P3355334712798608875.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 677 terms. -/
def A037311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037316.P13942600705853120331

`eq[A053737(n+1), A053824(n+1)]+1`
-/

namespace A037316.P13942600705853120331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037316.P13942600705853120331

noncomputable section

/-- A037316: Numbers whose base-4 and base-5 expansions have the same digit sum.

Offset 1, canonical program `A037316.P13942600705853120331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 960 terms. -/
def A037316 (n : ℕ) : ℤ :=
  (A037316.P13942600705853120331.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 960 terms. -/
def A037316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037317.P4693827689343434067

`eq[A053737(n+1), A053827(n+1)]+1`
-/

namespace A037317.P4693827689343434067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037317.P4693827689343434067

noncomputable section

/-- A037317: Numbers whose base-4 and base-6 expansions have the same digit sum.

Offset 1, canonical program `A037317.P4693827689343434067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 793 terms. -/
def A037317 (n : ℕ) : ℤ :=
  (A037317.P4693827689343434067.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 793 terms. -/
def A037317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037322.P18336191087936191495

`eq[A053824(n+1), A053827(n+1)]+1`
-/

namespace A037322.P18336191087936191495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037322.P18336191087936191495

noncomputable section

/-- A037322: Numbers whose base-5 and base-6 expansions have the same digit sum.

Offset 1, canonical program `A037322.P18336191087936191495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 811 terms. -/
def A037322 (n : ℕ) : ℤ :=
  (A037322.P18336191087936191495.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 811 terms. -/
def A037322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037412.P10981224244522319325

`A033044(A057427(n)+eq[0, A036987(n)])`
-/

namespace A037412.P10981224244522319325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033044 (A057427 n + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)).toNat

end

end A037412.P10981224244522319325

noncomputable section

/-- A037412: Positive numbers having the same set of digits in base 2 and base 7.

Offset 1, canonical program `A037412.P10981224244522319325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9986 terms. -/
def A037412 (n : ℕ) : ℤ :=
  A037412.P10981224244522319325.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9986 terms. -/
def A037412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037414.P16486790926337239700

`A033046(record[xor(n, A036987(n))])`
-/

namespace A037414.P16486790926337239700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A036987 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033046 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037414.P16486790926337239700

noncomputable section

/-- A037414: Positive numbers having the same set of digits in base 2 and base 9.

Offset 1, canonical program `A037414.P16486790926337239700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9987 terms. -/
def A037414 (n : ℕ) : ℤ :=
  A037414.P16486790926337239700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9987 terms. -/
def A037414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037600.P10646715206021842611

`A037508(n+1)+A037532(n+1)-A037500(n+1)`
-/

namespace A037600.P10646715206021842611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037508 (n + 1) + (A037532 (n + 1) - A037500 (n + 1))

end

end A037600.P10646715206021842611

noncomputable section

/-- A037600: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,0.

Offset 1, canonical program `A037600.P10646715206021842611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A037600 (n : ℕ) : ℤ :=
  A037600.P10646715206021842611.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A037600.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037619.P18037895035531182528

`A037591(n+1)+A033141(n+1)`
-/

namespace A037619.P18037895035531182528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037591 (n + 1) + A033141 (n + 1)

end

end A037619.P18037895035531182528

noncomputable section

/-- A037619: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,3.

Offset 1, canonical program `A037619.P18037895035531182528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037619 (n : ℕ) : ℤ :=
  A037619.P18037895035531182528.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037621.P12244379371173673703

`A037500(n+1)+A033125(n+1)`
-/

namespace A037621.P12244379371173673703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037500 (n + 1) + A033125 (n + 1)

end

end A037621.P12244379371173673703

noncomputable section

/-- A037621: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,3.

Offset 1, canonical program `A037621.P12244379371173673703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037621 (n : ℕ) : ℤ :=
  A037621.P12244379371173673703.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037663.P5445139550158620446

`floor(A037607(n+2)/3)`
-/

namespace A037663.P5445139550158620446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A037607 (n + 2) : ℚ) / 3⌋

end

end A037663.P5445139550158620446

noncomputable section

/-- A037663: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 3,1,0.

Offset 1, canonical program `A037663.P5445139550158620446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037663 (n : ℕ) : ℤ :=
  A037663.P5445139550158620446.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037724.P16418418988540140447

`A037710(n+1)+A037717(n+1)-A037703(n+1)`
-/

namespace A037724.P16418418988540140447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037710 (n + 1) + (A037717 (n + 1) - A037703 (n + 1))

end

end A037724.P16418418988540140447

noncomputable section

/-- A037724: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,3,1.

Offset 1, canonical program `A037724.P16418418988540140447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037724 (n : ℕ) : ℤ :=
  A037724.P16418418988540140447.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037738.P15937105399732906321

`A037710(n+1)+A037717(n+1)-A037689(n+1)`
-/

namespace A037738.P15937105399732906321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037710 (n + 1) + (A037717 (n + 1) - A037689 (n + 1))

end

end A037738.P15937105399732906321

noncomputable section

/-- A037738: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,3,0.

Offset 1, canonical program `A037738.P15937105399732906321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037738 (n : ℕ) : ℤ :=
  A037738.P15937105399732906321.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037769.P7732214671664040176

`xor(A037713(n+1), A037748(n+1))`
-/

namespace A037769.P7732214671664040176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037713 (n + 1)) (A037748 (n + 1))

end

end A037769.P7732214671664040176

noncomputable section

/-- A037769: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,2,1.

Offset 1, canonical program `A037769.P7732214671664040176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037769 (n : ℕ) : ℤ :=
  A037769.P7732214671664040176.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037776.P8667975928553698006

`xor(A037485(n+1), A037755(n+1))`
-/

namespace A037776.P8667975928553698006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037485 (n + 1)) (A037755 (n + 1))

end

end A037776.P8667975928553698006

noncomputable section

/-- A037776: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 3,1,0,2.

Offset 1, canonical program `A037776.P8667975928553698006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037776 (n : ℕ) : ℤ :=
  A037776.P8667975928553698006.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037780.P9453459313132871688

`A037766(n+1)+A037787(n+1)-A037773(n+1)`
-/

namespace A037780.P9453459313132871688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037766 (n + 1) + (A037787 (n + 1) - A037773 (n + 1))

end

end A037780.P9453459313132871688

noncomputable section

/-- A037780: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 3,1,2,0.

Offset 1, canonical program `A037780.P9453459313132871688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037780 (n : ℕ) : ℤ :=
  A037780.P9453459313132871688.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037783.P4880165732964237302

`xor(A037699(n+1), A037755(n+1))`
-/

namespace A037783.P4880165732964237302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037699 (n + 1)) (A037755 (n + 1))

end

end A037783.P4880165732964237302

noncomputable section

/-- A037783: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 3,1,2,0.

Offset 1, canonical program `A037783.P4880165732964237302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037783 (n : ℕ) : ℤ :=
  A037783.P4880165732964237302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037783.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037789.P11196019509832016941

`A037754(n+1)+A037768(n+1)-A037740(n+1)`
-/

namespace A037789.P11196019509832016941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037754 (n + 1) + (A037768 (n + 1) - A037740 (n + 1))

end

end A037789.P11196019509832016941

noncomputable section

/-- A037789: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 3,2,0,1.

Offset 1, canonical program `A037789.P11196019509832016941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037789 (n : ℕ) : ℤ :=
  A037789.P11196019509832016941.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037790.P1988302017522656421

`xor(∑[A001018(n)], A037755(n+1))`
-/

namespace A037790.P1988302017522656421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A037755 (n + 1))

end

end A037790.P1988302017522656421

noncomputable section

/-- A037790: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 3,2,0,1.

Offset 1, canonical program `A037790.P1988302017522656421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037790 (n : ℕ) : ℤ :=
  A037790.P1988302017522656421.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037951.P17813764047485560527

`A001405(n)-A208355(n+1)`
-/

namespace A037951.P17813764047485560527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - A208355 (n + 1)

end

end A037951.P17813764047485560527

noncomputable section

/-- A037951: a(n) = binomial(n, floor((n-3)/2)).

Offset 0, canonical program `A037951.P17813764047485560527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A037951 (n : ℕ) : ℤ :=
  A037951.P17813764047485560527.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A037951.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037955.P15366265065769254851

`A001405(n)-A208355(n)`
-/

namespace A037955.P15366265065769254851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - A208355 n

end

end A037955.P15366265065769254851

noncomputable section

/-- A037955: a(n) = binomial(n, floor(n/2)-1).

Offset 0, canonical program `A037955.P15366265065769254851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A037955 (n : ℕ) : ℤ :=
  A037955.P15366265065769254851.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A037955.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037966.P12715331042476464578

`n*A037965(n)`
-/

namespace A037966.P12715331042476464578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A037965 n

end

end A037966.P12715331042476464578

noncomputable section

/-- A037966: a(n) = n^2*binomial(2*n-2, n-1).

Offset 0, canonical program `A037966.P12715331042476464578`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037965, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037966 (n : ℕ) : ℤ :=
  A037966.P12715331042476464578.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037965, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037966.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A037972.P11514362699655504355

`A000217(n)*A037965(n)`
-/

namespace A037972.P11514362699655504355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A037965 n

end

end A037972.P11514362699655504355

noncomputable section

/-- A037972: a(n) = n^2*(n+1)*binomial(2*n-2, n-1)/2.

Offset 0, canonical program `A037972.P11514362699655504355`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037965, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037972 (n : ℕ) : ℤ :=
  A037972.P11514362699655504355.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037965, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037972.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A038039.P16577234562836912527

`6*A034735(n+1)`
-/

namespace A038039.P16577234562836912527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A034735 (n + 1)

end

end A038039.P16577234562836912527

noncomputable section

/-- A038039: a(n) = Sum_{d|n} (2^d*3^(n/d)).

Offset 1, canonical program `A038039.P16577234562836912527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A038039 (n : ℕ) : ℤ :=
  A038039.P16577234562836912527.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A038039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038167.P550872894812317595

`∑[A027656(n)]-A079998(n)`
-/

namespace A038167.P550872894812317595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A079998 n

end

end A038167.P550872894812317595

noncomputable section

/-- A038167: G.f.: x*(1+3*x+x^2)/((1-x^2)^2*(1-x^5)).

Offset 0, canonical program `A038167.P550872894812317595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038167 (n : ℕ) : ℤ :=
  A038167.P550872894812317595.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038466.P7851219286122095135

`A005836(eq[4, A000120(n)]+1)`
-/

namespace A038466.P7851219286122095135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A038466.P7851219286122095135

noncomputable section

/-- A038466: Sums of 4 distinct powers of 3.

Offset 1, canonical program `A038466.P7851219286122095135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. -/
def A038466 (n : ℕ) : ℤ :=
  A038466.P7851219286122095135.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. -/
def A038466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038467.P6472635915818175104

`A005836(eq[5, A000120(n)]+1)`
-/

namespace A038467.P6472635915818175104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A038467.P6472635915818175104

noncomputable section

/-- A038467: Sums of 5 distinct powers of 3.

Offset 1, canonical program `A038467.P6472635915818175104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1613 terms. -/
def A038467 (n : ℕ) : ℤ :=
  A038467.P6472635915818175104.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1613 terms. -/
def A038467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038468.P6523177926742115925

`A005823(A023688(n+1)+1)/2`
-/

namespace A038468.P6523177926742115925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005823 (A023688 (n + 1) + 1).toNat : ℚ) / 2

end

end A038468.P6523177926742115925

noncomputable section

/-- A038468: Sums of 6 distinct powers of 3.

Offset 1, canonical program `A038468.P6523177926742115925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3003 terms. -/
def A038468 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A038468.P6523177926742115925.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3003 terms. -/
def A038468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038475.P12245144297015689144

`A033042(eq[3, A000120(n)])`
-/

namespace A038475.P12245144297015689144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038475.P12245144297015689144

noncomputable section

/-- A038475: Sums of 3 distinct powers of 5.

Offset 1, canonical program `A038475.P12245144297015689144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A038475 (n : ℕ) : ℤ :=
  A038475.P12245144297015689144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A038475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038476.P11127564204272978602

`A033042(eq[4, A000120(n)])`
-/

namespace A038476.P11127564204272978602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038476.P11127564204272978602

noncomputable section

/-- A038476: Sums of 4 distinct powers of 5.

Offset 1, canonical program `A038476.P11127564204272978602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. -/
def A038476 (n : ℕ) : ℤ :=
  A038476.P11127564204272978602.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. -/
def A038476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038477.P12275341054472483545

`A033042(eq[5, A000120(n)])`
-/

namespace A038477.P12275341054472483545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038477.P12275341054472483545

noncomputable section

/-- A038477: Sums of 5 distinct powers of 5.

Offset 1, canonical program `A038477.P12275341054472483545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1613 terms. -/
def A038477 (n : ℕ) : ℤ :=
  A038477.P12275341054472483545.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1613 terms. -/
def A038477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038485.P16633331726669583067

`A033045(eq[3, A000120(n)])`
-/

namespace A038485.P16633331726669583067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038485.P16633331726669583067

noncomputable section

/-- A038485: Sums of 3 distinct powers of 8.

Offset 1, canonical program `A038485.P16633331726669583067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A038485 (n : ℕ) : ℤ :=
  A038485.P16633331726669583067.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A038485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038488.P14566569382609313930

`A033046(eq[3, A000120(n)])`
-/

namespace A038488.P14566569382609313930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038488.P14566569382609313930

noncomputable section

/-- A038488: Sums of 3 distinct powers of 9.

Offset 1, canonical program `A038488.P14566569382609313930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A038488 (n : ℕ) : ℤ :=
  A038488.P14566569382609313930.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A038488.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038489.P9980985016651276539

`A033046(eq[4, A000120(n)])`
-/

namespace A038489.P9980985016651276539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038489.P9980985016651276539

noncomputable section

/-- A038489: Sums of 4 distinct powers of 9.

Offset 1, canonical program `A038489.P9980985016651276539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. -/
def A038489 (n : ℕ) : ℤ :=
  A038489.P9980985016651276539.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. -/
def A038489.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038493.P1122094137133693920

`A033048(eq[3, A000120(n)])`
-/

namespace A038493.P1122094137133693920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038493.P1122094137133693920

noncomputable section

/-- A038493: Sums of 3 distinct powers of 12.

Offset 1, canonical program `A038493.P1122094137133693920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A038493 (n : ℕ) : ℤ :=
  A038493.P1122094137133693920.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A038493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038570.P3791970673246993572

`A038554(A038554(n))`
-/

namespace A038570.P3791970673246993572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 (A038554 n).toNat

end

end A038570.P3791970673246993572

noncomputable section

/-- A038570: Second derivative of n.

Offset 0, canonical program `A038570.P3791970673246993572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038570 (n : ℕ) : ℤ :=
  A038570.P3791970673246993572.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038571.P3590139113610856527

`a(A038554(n))+1` with `a(0)=0`
-/

namespace A038571.P3590139113610856527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A038554 n).toNat + 1

end

end A038571.P3590139113610856527

noncomputable section

/-- A038571: Number of times n must be differentiated to reach 0.

Offset 0, canonical program `A038571.P3590139113610856527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038571 (n : ℕ) : ℤ :=
  (A038571.P3590139113610856527.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038602.P11841758182200453414

`8*4^n-A051960(n+1)`
-/

namespace A038602.P11841758182200453414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * 4 ^ n : ℤ) - A051960 (n + 1)

end

end A038602.P11841758182200453414

noncomputable section

/-- A038602: One half of convolution of central binomial coefficients A000984(n) with A000984(n+2), n >= 0.

Offset 0, canonical program `A038602.P11841758182200453414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A038602 (n : ℕ) : ℤ :=
  A038602.P11841758182200453414.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A038602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038702.P14376547553865120558

`A001043(n+1)²%A000040(n+1)`
-/

namespace A038702.P14376547553865120558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001043 (n + 1) ^ 2) (A000040 (n + 1))

end

end A038702.P14376547553865120558

noncomputable section

/-- A038702: a(n) = prime(n)^2 mod prime(n-1).

Offset 2, canonical program `A038702.P14376547553865120558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038702 (n : ℕ) : ℤ :=
  A038702.P14376547553865120558.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038733.P6887556614693278943

`∑[∑[A038732(n+3)]]`
-/

namespace A038733.P6887556614693278943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038732 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038733.P6887556614693278943

noncomputable section

/-- A038733: T(n,n-4), array T as in A038730.

Offset 4, canonical program `A038733.P6887556614693278943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A038733 (n : ℕ) : ℤ :=
  A038733.P6887556614693278943.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A038733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038740.P613190986859176741

`∑[A038732(n+3)]`
-/

namespace A038740.P613190986859176741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038732 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038740.P613190986859176741

noncomputable section

/-- A038740: a(n) = T(n,n-3), array T as in A038738.

Offset 3, canonical program `A038740.P613190986859176741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A038740 (n : ℕ) : ℤ :=
  A038740.P613190986859176741.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A038740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038890.P15470175569637615505

`p?[or(n+1, -A035199(n+1))]`
-/

namespace A038890.P15470175569637615505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-A035199 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038890.P15470175569637615505

noncomputable section

/-- A038890: Primes p such that 17 is not a square mod p.

Offset 1, canonical program `A038890.P15470175569637615505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 622 terms. -/
def A038890 (n : ℕ) : ℤ :=
  A038890.P15470175569637615505.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 622 terms. -/
def A038890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039660.P4420970072277421946

`∑[A045445(A065033(n))]`
-/

namespace A039660.P4420970072277421946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045445 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039660.P4420970072277421946

noncomputable section

/-- A039660: Related to enumeration of edge-rooted catafusenes.

Offset 1, canonical program `A039660.P4420970072277421946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 295 terms. -/
def A039660 (n : ℕ) : ℤ :=
  A039660.P4420970072277421946.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 295 terms. -/
def A039660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040164.P3745061718925245902

`A040163(A000040(n+1))`
-/

namespace A040164.P3745061718925245902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040163 (A000040 (n + 1)).toNat

end

end A040164.P3745061718925245902

noncomputable section

/-- A040164: |First digit - last digit| for n-th prime.

Offset 1, canonical program `A040164.P3745061718925245902`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A040163, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A040164 (n : ℕ) : ℤ :=
  A040164.P3745061718925245902.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A040163, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A040164.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A041126.P9338441565477157576

`gcd(2, n)*A041026(n)`
-/

namespace A041126.P9338441565477157576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041026 n

end

end A041126.P9338441565477157576

noncomputable section

/-- A041126: Numerators of continued fraction convergents to sqrt(72).

Offset 0, canonical program `A041126.P9338441565477157576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A041126 (n : ℕ) : ℤ :=
  A041126.P9338441565477157576.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A041126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A042298.P10529342092092574903

`gcd(5, A041048(n))*A041042(n)`
-/

namespace A042298.P10529342092092574903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 5 (A041048 n) : ℤ) * A041042 n

end

end A042298.P10529342092092574903

noncomputable section

/-- A042298: Numerators of continued fraction convergents to sqrt(675).

Offset 0, canonical program `A042298.P10529342092092574903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A042298 (n : ℕ) : ℤ :=
  A042298.P10529342092092574903.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A042298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A042941.P11785510614438003329

`A052780(n+2)-A029887(n)`
-/

namespace A042941.P11785510614438003329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052780 (n + 2) - A029887 n

end

end A042941.P11785510614438003329

noncomputable section

/-- A042941: Convolution of Catalan numbers A000108 with A038845.

Offset 0, canonical program `A042941.P11785510614438003329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A042941 (n : ℕ) : ℤ :=
  A042941.P11785510614438003329.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A042941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A042962.P10858511326811017970

`∑[A042951(n)]`
-/

namespace A042962.P10858511326811017970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A042962.P10858511326811017970

noncomputable section

/-- A042962: The sequence e when b=[ 1,0,1,0,1,0,1,0,... ].

Offset 0, canonical program `A042962.P10858511326811017970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042962 (n : ℕ) : ℤ :=
  A042962.P10858511326811017970.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A042974.P12868688629293397154

`C(2, C(2, A004736(n+1)))`
-/

namespace A042974.P12868688629293397154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.choose 2 (A004736 (n + 1)).toNat)

end

end A042974.P12868688629293397154

noncomputable section

/-- A042974: n 1's followed by a 2.

Offset 1, canonical program `A042974.P12868688629293397154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042974 (n : ℕ) : ℤ :=
  (A042974.P12868688629293397154.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043321.P12978046545193674839

`eq[1, A077267(n+1)]+1`
-/

namespace A043321.P12978046545193674839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A043321.P12978046545193674839

noncomputable section

/-- A043321: Numbers having one 0 in base 3.

Offset 1, canonical program `A043321.P12978046545193674839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1842 terms. -/
def A043321 (n : ℕ) : ℤ :=
  (A043321.P12978046545193674839.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1842 terms. -/
def A043321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043322.P8664074313883487690

`eq[2, A077267(n)]`
-/

namespace A043322.P8664074313883487690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043322.P8664074313883487690

noncomputable section

/-- A043322: Numbers having two 0's in base 3.

Offset 1, canonical program `A043322.P8664074313883487690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2859 terms. -/
def A043322 (n : ℕ) : ℤ :=
  (A043322.P8664074313883487690.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2859 terms. -/
def A043322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043323.P2093063513859892722

`eq[3, A077267(n)]`
-/

namespace A043323.P2093063513859892722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043323.P2093063513859892722

noncomputable section

/-- A043323: Numbers having three 0's in base 3.

Offset 1, canonical program `A043323.P2093063513859892722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2587 terms. -/
def A043323 (n : ℕ) : ℤ :=
  (A043323.P2093063513859892722.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2587 terms. -/
def A043323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043324.P7627907059545154542

`eq[4, A077267(n)]`
-/

namespace A043324.P7627907059545154542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043324.P7627907059545154542

noncomputable section

/-- A043324: Numbers having four 0's in base 3.

Offset 1, canonical program `A043324.P7627907059545154542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1479 terms. -/
def A043324 (n : ℕ) : ℤ :=
  (A043324.P7627907059545154542.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1479 terms. -/
def A043324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043548.P6626003684055450292

`A087811(A004277(n)-A055086(n))`
-/

namespace A043548.P6626003684055450292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (A004277 n - A055086 n).toNat

end

end A043548.P6626003684055450292

noncomputable section

/-- A043548: Least separator of first n Egyptian fractions; i.e., least k for which the integers floor(k/m) for m=1,2,...,n are distinct.

Offset 1, canonical program `A043548.P6626003684055450292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1687 terms. -/
def A043548 (n : ℕ) : ℤ :=
  A043548.P6626003684055450292.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1687 terms. -/
def A043548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043683.P1797186298449808662

`A043573(n+1)/2`
-/

namespace A043683.P1797186298449808662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043573 (n + 1) : ℚ) / 2

end

end A043683.P1797186298449808662

noncomputable section

/-- A043683: a(n) = (1/2)*(n-th number whose base-2 representation has exactly 6 runs).

Offset 1, canonical program `A043683.P1797186298449808662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043683 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A043683.P1797186298449808662.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043736.P4860904662440002957

`∩[2*n+1, A043721(n+1)]`
-/

namespace A043736.P4860904662440002957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043736.P4860904662440002957

noncomputable section

/-- A043736: Numbers whose number of runs in their base-2 representation is congruent to 3 mod 6.

Offset 1, canonical program `A043736.P4860904662440002957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5102 terms. -/
def A043736 (n : ℕ) : ℤ :=
  (A043736.P4860904662440002957.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5102 terms. -/
def A043736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044438.P5204322575316227369

`lt[A023713(n+1), A006288(n)%A023713(n+2)]`
-/

namespace A044438.P5204322575316227369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006288 n) (A023713 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044438.P5204322575316227369

noncomputable section

/-- A044438: Numbers n such that string 1,2 occurs in the base 3 representation of n but not of n+1.

Offset 1, canonical program `A044438.P5204322575316227369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 609 terms. -/
def A044438 (n : ℕ) : ℤ :=
  (A044438.P5204322575316227369.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 609 terms. -/
def A044438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044975.P9580616891766218747

`A005823(eq[3, A008687(n)])`
-/

namespace A044975.P9580616891766218747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044975.P9580616891766218747

noncomputable section

/-- A044975: Numbers whose base-3 representation contains exactly two 0's and no 1's.

Offset 1, canonical program `A044975.P9580616891766218747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A044975 (n : ℕ) : ℤ :=
  A044975.P9580616891766218747.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A044975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044980.P4515869477869152908

`A005823(eq[4, A008687(n)])`
-/

namespace A044980.P4515869477869152908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044980.P4515869477869152908

noncomputable section

/-- A044980: Numbers whose base-3 representation contains exactly three 0's and no 1's.

Offset 1, canonical program `A044980.P4515869477869152908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 718 terms. -/
def A044980 (n : ℕ) : ℤ :=
  A044980.P4515869477869152908.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 718 terms. -/
def A044980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045066.P6394012223862104434

`A023717(eq[1, A077267(n)])`
-/

namespace A045066.P6394012223862104434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045066.P6394012223862104434

noncomputable section

/-- A045066: Numbers whose base-4 representation contains exactly one 0 and no 3's.

Offset 1, canonical program `A045066.P6394012223862104434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1843 terms. -/
def A045066 (n : ℕ) : ℤ :=
  A045066.P6394012223862104434.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1843 terms. -/
def A045066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045086.P17864132043894525623

`A023709(A023692(n+1)+1)`
-/

namespace A045086.P17864132043894525623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (A023692 (n + 1) + 1).toNat

end

end A045086.P17864132043894525623

noncomputable section

/-- A045086: Numbers whose base-4 representation contains no 1's and exactly one 2.

Offset 1, canonical program `A045086.P17864132043894525623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1152 terms. -/
def A045086 (n : ℕ) : ℤ :=
  A045086.P17864132043894525623.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1152 terms. -/
def A045086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045090.P11088706688697243182

`A023713(A023692(n+1)+1)`
-/

namespace A045090.P11088706688697243182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (A023692 (n + 1) + 1).toNat

end

end A045090.P11088706688697243182

noncomputable section

/-- A045090: Numbers whose base-4 representation contains exactly one 1 and no 2's.

Offset 1, canonical program `A045090.P11088706688697243182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1152 terms. -/
def A045090 (n : ℕ) : ℤ :=
  A045090.P11088706688697243182.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1152 terms. -/
def A045090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045095.P15217836163504484556

`A023713(A023693(n+1)+1)`
-/

namespace A045095.P15217836163504484556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (A023693 (n + 1) + 1).toNat

end

end A045095.P15217836163504484556

noncomputable section

/-- A045095: Numbers whose base-4 representation contains exactly two 1's and no 2's.

Offset 1, canonical program `A045095.P15217836163504484556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2304 terms. -/
def A045095 (n : ℕ) : ℤ :=
  A045095.P15217836163504484556.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2304 terms. -/
def A045095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045111.P17883204334826938828

`A023709(A023700(n+1)+1)`
-/

namespace A045111.P17883204334826938828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (A023700 (n + 1) + 1).toNat

end

end A045111.P17883204334826938828

noncomputable section

/-- A045111: Numbers whose base-4 representation contains no 1's and exactly two 3's.

Offset 1, canonical program `A045111.P17883204334826938828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2880 terms. -/
def A045111 (n : ℕ) : ℤ :=
  A045111.P17883204334826938828.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2880 terms. -/
def A045111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045112.P14322503297143553076

`A023709(A023701(n+1)+1)`
-/

namespace A045112.P14322503297143553076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (A023701 (n + 1) + 1).toNat

end

end A045112.P14322503297143553076

noncomputable section

/-- A045112: Numbers whose base-4 representation contains no 1's and exactly three 3's.

Offset 1, canonical program `A045112.P14322503297143553076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2599 terms. -/
def A045112 (n : ℕ) : ℤ :=
  A045112.P14322503297143553076.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2599 terms. -/
def A045112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045114.P12965799165865166822

`A023717(A023692(n+1))`
-/

namespace A045114.P12965799165865166822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (A023692 (n + 1)).toNat

end

end A045114.P12965799165865166822

noncomputable section

/-- A045114: Numbers whose base-4 representation contains exactly one 1 and no 3's.

Offset 1, canonical program `A045114.P12965799165865166822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1152 terms. -/
def A045114 (n : ℕ) : ℤ :=
  A045114.P12965799165865166822.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1152 terms. -/
def A045114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045124.P1610314079926387521

`A023717(A023694(n+1))`
-/

namespace A045124.P1610314079926387521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (A023694 (n + 1)).toNat

end

end A045124.P1610314079926387521

noncomputable section

/-- A045124: Numbers whose base-4 representation contains exactly three 1's and no 3's.

Offset 1, canonical program `A045124.P1610314079926387521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2696 terms. -/
def A045124 (n : ℕ) : ℤ :=
  A045124.P1610314079926387521.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2696 terms. -/
def A045124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045134.P3283556967636376471

`A023713(A023699(n+1)+1)`
-/

namespace A045134.P3283556967636376471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (A023699 (n + 1) + 1).toNat

end

end A045134.P3283556967636376471

noncomputable section

/-- A045134: Numbers whose base-4 representation contains no 2's and exactly one 3.

Offset 1, canonical program `A045134.P3283556967636376471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1837 terms. -/
def A045134 (n : ℕ) : ℤ :=
  A045134.P3283556967636376471.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1837 terms. -/
def A045134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045136.P16542609465213325021

`A023713(A023701(n+1)+1)`
-/

namespace A045136.P16542609465213325021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (A023701 (n + 1) + 1).toNat

end

end A045136.P16542609465213325021

noncomputable section

/-- A045136: Numbers whose base-4 representation contains no 2's and exactly three 3's.

Offset 1, canonical program `A045136.P16542609465213325021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2599 terms. -/
def A045136 (n : ℕ) : ℤ :=
  A045136.P16542609465213325021.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2599 terms. -/
def A045136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045138.P13109970554052411139

`A023717(A023699(n+1))`
-/

namespace A045138.P13109970554052411139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (A023699 (n + 1)).toNat

end

end A045138.P13109970554052411139

noncomputable section

/-- A045138: Numbers whose base-4 representation contains exactly one 2 and no 3's.

Offset 1, canonical program `A045138.P13109970554052411139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1838 terms. -/
def A045138 (n : ℕ) : ℤ :=
  A045138.P13109970554052411139.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1838 terms. -/
def A045138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045139.P3460865892790876897

`∩[A023714(n+1), A023718(n+1)]`
-/

namespace A045139.P3460865892790876897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045139.P3460865892790876897

noncomputable section

/-- A045139: Numbers whose base-4 representation contains exactly one 2 and one 3.

Offset 1, canonical program `A045139.P3460865892790876897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2669 terms. -/
def A045139 (n : ℕ) : ℤ :=
  (A045139.P3460865892790876897.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2669 terms. -/
def A045139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045143.P2709884776078427861

`A023717(A023700(n+1))`
-/

namespace A045143.P2709884776078427861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (A023700 (n + 1)).toNat

end

end A045143.P2709884776078427861

noncomputable section

/-- A045143: Numbers whose base-4 representation contains exactly two 2's and no 3's.

Offset 1, canonical program `A045143.P2709884776078427861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2880 terms. -/
def A045143 (n : ℕ) : ℤ :=
  A045143.P2709884776078427861.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2880 terms. -/
def A045143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045144.P13758676442053423134

`∩[A023715(n+1), A023718(n+1)]`
-/

namespace A045144.P13758676442053423134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045144.P13758676442053423134

noncomputable section

/-- A045144: Numbers whose base-4 representation contains exactly two 2's and one 3.

Offset 1, canonical program `A045144.P13758676442053423134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3296 terms. -/
def A045144 (n : ℕ) : ℤ :=
  (A045144.P13758676442053423134.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3296 terms. -/
def A045144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045148.P17079126829677960024

`A023717(A023701(n+1))`
-/

namespace A045148.P17079126829677960024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (A023701 (n + 1)).toNat

end

end A045148.P17079126829677960024

noncomputable section

/-- A045148: Numbers whose base-4 representation contains exactly three 2's and no 3's.

Offset 1, canonical program `A045148.P17079126829677960024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2599 terms. -/
def A045148 (n : ℕ) : ℤ :=
  A045148.P17079126829677960024.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2599 terms. -/
def A045148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045622.P11433442131743350876

`A045543(n)+A045543(n)-A045530(n)`
-/

namespace A045622.P11433442131743350876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045543 n + (A045543 n - A045530 n)

end

end A045622.P11433442131743350876

noncomputable section

/-- A045622: Convolution of A000108 (Catalan numbers) with A045543.

Offset 1, canonical program `A045622.P11433442131743350876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A045622 (n : ℕ) : ℤ :=
  A045622.P11433442131743350876.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A045622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045635.P4073587291953969490

`Δ[A045445(n+1)-A039919(n+1)]-A045445(n+1)`
-/

namespace A045635.P4073587291953969490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045445 (n + 1) - A039919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A045445 (n + 1)

end

end A045635.P4073587291953969490

noncomputable section

/-- A045635: Catafusenes (see references for precise definition).

Offset 1, canonical program `A045635.P4073587291953969490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A045635 (n : ℕ) : ℤ :=
  A045635.P4073587291953969490.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A045635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045708.P4966505932698422722

`p?[A034843(n+1)]`
-/

namespace A045708.P4966505932698422722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045708.P4966505932698422722

noncomputable section

/-- A045708: Primes with first digit 2.

Offset 1, canonical program `A045708.P4966505932698422722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4299 terms. -/
def A045708 (n : ℕ) : ℤ :=
  A045708.P4966505932698422722.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4299 terms. -/
def A045708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045717.P14974844081395038994

`A034953(n+1)-∑[A000040(n+1)]`
-/

namespace A045717.P14974844081395038994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045717.P14974844081395038994

noncomputable section

/-- A045717: For each prime p take the sum of nonprimes < p.

Offset 1, canonical program `A045717.P14974844081395038994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045717 (n : ℕ) : ℤ :=
  A045717.P14974844081395038994.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045833.P12838744438603727675

`∑{d}[A091684(n), A102283(#)]`
-/

namespace A045833.P12838744438603727675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A102283 d

end

end A045833.P12838744438603727675

noncomputable section

/-- A045833: Expansion of eta(q^9)^3 / eta(q^3) in powers of q.

Offset 0, canonical program `A045833.P12838744438603727675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045833 (n : ℕ) : ℤ :=
  A045833.P12838744438603727675.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045890.P3522164862785645351

`Δ[Δ[A039919(A028310(n))]]`
-/

namespace A045890.P3522164862785645351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039919 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A045890.P3522164862785645351

noncomputable section

/-- A045890: Catafusenes (see reference for precise definition).

Offset 0, canonical program `A045890.P3522164862785645351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A045890 (n : ℕ) : ℤ :=
  A045890.P3522164862785645351.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A045890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045902.P1362283279913711618

`Δ[Δ[A045445(A028310(n))]]`
-/

namespace A045902.P1362283279913711618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045445 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A045902.P1362283279913711618

noncomputable section

/-- A045902: Catafusenes (see reference for precise definition).

Offset 0, canonical program `A045902.P1362283279913711618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A045902 (n : ℕ) : ℤ :=
  A045902.P1362283279913711618.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A045902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045975.P10197366877055002796

`∑[A109043(A002024(n+1))-A010054(n)]`
-/

namespace A045975.P10197366877055002796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 (A002024 (n + 1)).toNat - A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045975.P10197366877055002796

noncomputable section

/-- A045975: Take the first odd integer and multiple of 1, the next 2 even integers and multiples of 2, the next 3 odd integers and multiples of 3, the next 4 even integers and multiples of 4, ...

Offset 1, canonical program `A045975.P10197366877055002796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045975 (n : ℕ) : ℤ :=
  A045975.P10197366877055002796.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046646.P11064455806647030670

`(A057427(n)+1)*A001764(n)`
-/

namespace A046646.P11064455806647030670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A001764 n

end

end A046646.P11064455806647030670

noncomputable section

/-- A046646: a(n) = 2*binomial(3*n-3, n-1)/(2*n-1) for n >= 2, and a(1) = 1.

Offset 1, canonical program `A046646.P11064455806647030670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A046646 (n : ℕ) : ℤ :=
  A046646.P11064455806647030670.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A046646.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046864.P8515681666187092735

`A051885(A000040(n+1))`
-/

namespace A046864.P8515681666187092735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A000040 (n + 1)).toNat

end

end A046864.P8515681666187092735

noncomputable section

/-- A046864: Smallest number whose digits sum to n-th prime.

Offset 1, canonical program `A046864.P8515681666187092735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A046864 (n : ℕ) : ℤ :=
  A046864.P8515681666187092735.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A046864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046971.P1759314852335327146

`∏[char[A045716(n+1)-1]+1]`
-/

namespace A046971.P1759314852335327146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045716 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A046971.P1759314852335327146

noncomputable section

/-- A046971: Maximal value of number of unitary divisors (see A034444) for integers in binary order range of n.

Offset 1, canonical program `A046971.P1759314852335327146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3129 terms. -/
def A046971 (n : ℕ) : ℤ :=
  (A046971.P1759314852335327146.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3129 terms. -/
def A046971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047670.P11744031878755806296

`(A001848(n)+A001847(n+1))/2`
-/

namespace A047670.P11744031878755806296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001848 n + A001847 (n + 1) : ℚ) / 2

end

end A047670.P11744031878755806296

noncomputable section

/-- A047670: Row 6 of array in A047666.

Offset 1, canonical program `A047670.P11744031878755806296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A047670 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A047670.P11744031878755806296.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A047670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047755.P17216177778010743063

`(A001764(n)-A047749(n))/2`
-/

namespace A047755.P17216177778010743063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001764 n - A047749 n : ℚ) / 2

end

end A047755.P17216177778010743063

noncomputable section

/-- A047755: a(n) = A047752(12n+5).

Offset 0, canonical program `A047755.P17216177778010743063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A047755 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A047755.P17216177778010743063.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A047755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048152.P2833726449597687178

`(A004736(n+1)-1)²%A002024(n+1)`
-/

namespace A048152.P2833726449597687178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A004736 (n + 1) - 1) ^ 2) (A002024 (n + 1))

end

end A048152.P2833726449597687178

noncomputable section

/-- A048152: Triangular array T read by rows: T(n,k) = k^2 mod n, for 1 <= k <= n, n >= 1.

Offset 1, canonical program `A048152.P2833726449597687178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048152 (n : ℕ) : ℤ :=
  A048152.P2833726449597687178.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048633.P1441411904083909438

`gcd(A001405(n+1), A034386(n+1))`
-/

namespace A048633.P1441411904083909438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001405 (n + 1)) (A034386 (n + 1))

end

end A048633.P1441411904083909438

noncomputable section

/-- A048633: Largest squarefree number dividing n-th central binomial coefficient C(n,[ n/2 ]).

Offset 1, canonical program `A048633.P1441411904083909438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. -/
def A048633 (n : ℕ) : ℤ :=
  (A048633.P1441411904083909438.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. -/
def A048633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048733.P10785183318991941354

`A048730(n)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048733.P10785183318991941354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048730 n : ℚ) / 4

end

end A048733.P10785183318991941354

noncomputable section

/-- A048733: a(n) = A048730(n)/4.

Offset 0, canonical program `A048733.P10785183318991941354`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048730, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048733 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048733.P10785183318991941354.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048730, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048733.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049031.P15455535512012466543

`2*A000292(A057353(n))*A110655(n)`
-/

namespace A049031.P15455535512012466543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000292 (A057353 n).toNat * A110655 n)

end

end A049031.P15455535512012466543

noncomputable section

/-- A049031: Maximization of sums of cubes of integer differences (b_[ i ]-i)^3 over permutations {b_[ i ], for i-1,2,...,n} on first n integers.

Offset 1, canonical program `A049031.P15455535512012466543`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049031 (n : ℕ) : ℤ :=
  A049031.P15455535512012466543.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049032.P6256970175047943519

`A000292(A057353(n))*A110655(n)`
-/

namespace A049032.P6256970175047943519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A057353 n).toNat * A110655 n

end

end A049032.P6256970175047943519

noncomputable section

/-- A049032: A049031/2.

Offset 1, canonical program `A049032.P6256970175047943519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049032 (n : ℕ) : ℤ :=
  A049032.P6256970175047943519.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049078.P3999378590791680599

`A006450(A018252(n+1))`
-/

namespace A049078.P3999378590791680599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A018252 (n + 1)).toNat

end

end A049078.P3999378590791680599

noncomputable section

/-- A049078: Primes prime(k) for which A049076(k) = 2.

Offset 1, canonical program `A049078.P3999378590791680599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049078 (n : ℕ) : ℤ :=
  A049078.P3999378590791680599.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049098.P8844519897010937386

`p?[A013929(n+1)-1]`
-/

namespace A049098.P8844519897010937386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049098.P8844519897010937386

noncomputable section

/-- A049098: Primes p such that p+1 is divisible by a square.

Offset 1, canonical program `A049098.P8844519897010937386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049098 (n : ℕ) : ℤ :=
  A049098.P8844519897010937386.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049229.P12251038394700142042

`p?[A013929(n+1)+2]`
-/

namespace A049229.P12251038394700142042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049229.P12251038394700142042

noncomputable section

/-- A049229: Primes p such that p-2 is not squarefree.

Offset 1, canonical program `A049229.P12251038394700142042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5668 terms. -/
def A049229 (n : ℕ) : ℤ :=
  A049229.P12251038394700142042.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5668 terms. -/
def A049229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049232.P8046376036610074650

`p?[A013929(n+1)-2]`
-/

namespace A049232.P8046376036610074650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049232.P8046376036610074650

noncomputable section

/-- A049232: Primes p such that p+2 is divisible by a square.

Offset 1, canonical program `A049232.P8046376036610074650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5630 terms. -/
def A049232 (n : ℕ) : ℤ :=
  A049232.P8046376036610074650.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5630 terms. -/
def A049232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049296.P11557902124767277285

`Δ[A008364(n+1)]`
-/

namespace A049296.P11557902124767277285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049296.P11557902124767277285

noncomputable section

/-- A049296: First differences of A008364. Also first differences of reduced residue system (RRS) for 4th primorial number, A002110(4)=210.

Offset 1, canonical program `A049296.P11557902124767277285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A049296 (n : ℕ) : ℤ :=
  A049296.P11557902124767277285.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A049296.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049445.P7939714702885269085

`lt[lcm(n, A000120(n)), 2*n]`
-/

namespace A049445.P7939714702885269085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A000120 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A049445.P7939714702885269085

noncomputable section

/-- A049445: Numbers k with the property that the number of 1's in binary expansion of k (see A000120) divides k.

Offset 1, canonical program `A049445.P7939714702885269085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1764 terms. -/
def A049445 (n : ℕ) : ℤ :=
  (A049445.P7939714702885269085.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1764 terms. -/
def A049445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049491.P3427742740246822641

`p?[A065091(n+2)-A171442(n)]`
-/

namespace A049491.P3427742740246822641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 2) - A171442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049491.P3427742740246822641

noncomputable section

/-- A049491: Numbers k such that k and k+128 are both prime.

Offset 1, canonical program `A049491.P3427742740246822641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1250 terms. -/
def A049491 (n : ℕ) : ℤ :=
  A049491.P3427742740246822641.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1250 terms. -/
def A049491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049705.P11002765941806409636

`3-A000002(n+1)`
-/

namespace A049705.P11002765941806409636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A000002 (n + 1)

end

end A049705.P11002765941806409636

noncomputable section

/-- A049705: a(n)=3-k(n), where k=A000002=Kolakoski sequence; also the sequence of runlengths of a is k.

Offset 1, canonical program `A049705.P11002765941806409636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049705 (n : ℕ) : ℤ :=
  A049705.P11002765941806409636.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049798.P9252601489208202656

`∑[round(n/2)-A296955(n+2)]`
-/

namespace A049798.P9252601489208202656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / 2) - A296955 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049798.P9252601489208202656

noncomputable section

/-- A049798: a(n) = (1/2)*Sum_{k = 1..n} T(n,k), array T as in A049800.

Offset 1, canonical program `A049798.P9252601489208202656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049798 (n : ℕ) : ℤ :=
  A049798.P9252601489208202656.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050469.P17801092767341696516

`Δ[xor(n, floor(n/2))]*A050457(n+1)`
-/

namespace A050469.P17801092767341696516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A050457 (n + 1)

end

end A050469.P17801092767341696516

noncomputable section

/-- A050469: a(n) = Sum_{ d divides n, n/d=1 mod 4} d - Sum_{ d divides n, n/d=3 mod 4} d.

Offset 1, canonical program `A050469.P17801092767341696516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050469 (n : ℕ) : ℤ :=
  A050469.P17801092767341696516.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051123.P10788588402784793583

`A000045(n+2)-A051122(n)`
-/

namespace A051123.P10788588402784793583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) - A051122 n

end

end A051123.P10788588402784793583

noncomputable section

/-- A051123: a(n) = Fibonacci(n) OR Fibonacci(n+1).

Offset 0, canonical program `A051123.P10788588402784793583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A051123 (n : ℕ) : ℤ :=
  A051123.P10788588402784793583.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A051123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051276.P61944378441826423

`gcd(12, Δ[A034935(n)])`
-/

namespace A051276.P61944378441826423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034935 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 12 (f1 (n + 1) - f1 n)

end

end A051276.P61944378441826423

noncomputable section

/-- A051276: Nonzero coefficients in one of the 5-adic expansions of sqrt(-1).

Offset 0, canonical program `A051276.P61944378441826423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A051276 (n : ℕ) : ℤ :=
  (A051276.P61944378441826423.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A051276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051349.P2414547720400107792

`a(n-1)+A018252(n)` with `a(0)=0`
-/

namespace A051349.P2414547720400107792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A018252 n

end

end A051349.P2414547720400107792

noncomputable section

/-- A051349: Sum of first n nonprimes.

Offset 0, canonical program `A051349.P2414547720400107792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051349 (n : ℕ) : ℤ :=
  A051349.P2414547720400107792.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051541.P4009717404532660083

`(4*n+5)/gcd(4*n+5, A002944(n+1))`
-/

namespace A051541.P4009717404532660083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n + 5 : ℚ) / (Int.gcd (4 * n + 5 : ℤ) (A002944 (n + 1)) : ℚ)

end

end A051541.P4009717404532660083

noncomputable section

/-- A051541: Quotients of consecutive values of LCM {1, 5, 9, 13, 17, ..., (4n+1)}.

Offset 1, canonical program `A051541.P4009717404532660083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A051541 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051541.P4009717404532660083.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A051541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051803.P17294987635553116970

`eq[1, A051802(A051801(n))]`
-/

namespace A051803.P17294987635553116970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 (A051801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051803.P17294987635553116970

noncomputable section

/-- A051803: Numbers with nonzero multiplicative digital root 1.

Offset 1, canonical program `A051803.P17294987635553116970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A051803 (n : ℕ) : ℤ :=
  (A051803.P17294987635553116970.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A051803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051804.P929861666918418574

`eq[2, A051802(n)]`
-/

namespace A051804.P929861666918418574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051804.P929861666918418574

noncomputable section

/-- A051804: Numbers with nonzero multiplicative digital root 2.

Offset 1, canonical program `A051804.P929861666918418574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2613 terms. -/
def A051804 (n : ℕ) : ℤ :=
  (A051804.P929861666918418574.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2613 terms. -/
def A051804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051805.P10692238855703908079

`eq[3, A051802(n)]`
-/

namespace A051805.P10692238855703908079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051805.P10692238855703908079

noncomputable section

/-- A051805: Numbers with nonzero multiplicative digital root 3.

Offset 1, canonical program `A051805.P10692238855703908079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. -/
def A051805 (n : ℕ) : ℤ :=
  (A051805.P10692238855703908079.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. -/
def A051805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051806.P3686198131234600742

`eq[4, A051802(n)]`
-/

namespace A051806.P3686198131234600742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051806.P3686198131234600742

noncomputable section

/-- A051806: Numbers with nonzero multiplicative digital root 4.

Offset 1, canonical program `A051806.P3686198131234600742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 898 terms. -/
def A051806 (n : ℕ) : ℤ :=
  (A051806.P3686198131234600742.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 898 terms. -/
def A051806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051807.P4293244900954420581

`eq[5, A051802(n)]`
-/

namespace A051807.P4293244900954420581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051807.P4293244900954420581

noncomputable section

/-- A051807: Numbers with nonzero multiplicative digital root 5.

Offset 1, canonical program `A051807.P4293244900954420581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 488 terms. -/
def A051807 (n : ℕ) : ℤ :=
  (A051807.P4293244900954420581.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 488 terms. -/
def A051807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051808.P3656897858601393824

`eq[6, A051802(n)]`
-/

namespace A051808.P3656897858601393824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051808.P3656897858601393824

noncomputable section

/-- A051808: Numbers with nonzero multiplicative digital root 6.

Offset 1, canonical program `A051808.P3656897858601393824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2337 terms. -/
def A051808 (n : ℕ) : ℤ :=
  (A051808.P3656897858601393824.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2337 terms. -/
def A051808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000089.P6732950680245443794

`A350872(A026741(n+1))`
-/

namespace A000089.P6732950680245443794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350872 (A026741 (n + 1)).toNat

end

end A000089.P6732950680245443794

noncomputable section

/-- A000089: Number of solutions to x^2 + 1 == 0 (mod n).

Offset 1, canonical program `A000089.P6732950680245443794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000089 (n : ℕ) : ℤ :=
  A000089.P6732950680245443794.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000741.P6152185288410453869

`A161680(n)-A344574(n+1)`
-/

namespace A000741.P6152185288410453869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n - A344574 (n + 1)

end

end A000741.P6152185288410453869

noncomputable section

/-- A000741: Number of compositions of n into 3 ordered relatively prime parts.

Offset 1, canonical program `A000741.P6152185288410453869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000741 (n : ℕ) : ℤ :=
  A000741.P6152185288410453869.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001000.P11683531770071818407

`A033638(A083479(n)+1+n)+C(2, n+2)`
-/

namespace A001000.P11683531770071818407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (A083479 n + 1 + (n : ℤ)).toNat + (Nat.choose 2 (n + 2) : ℤ)

end

end A001000.P11683531770071818407

noncomputable section

/-- A001000: a(n) = least m such that if a/b < c/d where a,b,c,d are integers in [0,n], then a/b < k/m < c/d for some integer k.

Offset 1, canonical program `A001000.P11683531770071818407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5071 terms. -/
def A001000 (n : ℕ) : ℤ :=
  A001000.P11683531770071818407.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5071 terms. -/
def A001000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001363.P2082699172038580249

`A007089(A000040(n+1))`
-/

namespace A001363.P2082699172038580249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A000040 (n + 1)).toNat

end

end A001363.P2082699172038580249

noncomputable section

/-- A001363: Primes in ternary.

Offset 1, canonical program `A001363.P2082699172038580249`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001363 (n : ℕ) : ℤ :=
  A001363.P2082699172038580249.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001363.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A001401.P12728375563230237513

`A001400(n)+A026811(n)`
-/

namespace A001401.P12728375563230237513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 n + A026811 n

end

end A001401.P12728375563230237513

noncomputable section

/-- A001401: Number of partitions of n into at most 5 parts.

Offset 0, canonical program `A001401.P12728375563230237513`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026811, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001401 (n : ℕ) : ℤ :=
  A001401.P12728375563230237513.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026811, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001401.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A001738.P9569707976772813256

`A007089(A000290(n))`
-/

namespace A001738.P9569707976772813256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A000290 n).toNat

end

end A001738.P9569707976772813256

noncomputable section

/-- A001738: a(n) = n^2 written in base 3.

Offset 0, canonical program `A001738.P9569707976772813256`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001738 (n : ℕ) : ℤ :=
  A001738.P9569707976772813256.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001738.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A001739.P9226811658137719673

`A007090(A000290(n))`
-/

namespace A001739.P9226811658137719673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A000290 n).toNat

end

end A001739.P9226811658137719673

noncomputable section

/-- A001739: Squares written in base 4.

Offset 0, canonical program `A001739.P9226811658137719673`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007090, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001739 (n : ℕ) : ℤ :=
  A001739.P9226811658137719673.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007090, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001739.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A001740.P16160893690820092194

`A007091(A000290(n))`
-/

namespace A001740.P16160893690820092194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A000290 n).toNat

end

end A001740.P16160893690820092194

noncomputable section

/-- A001740: Squares written in base 5.

Offset 0, canonical program `A001740.P16160893690820092194`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007091, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001740 (n : ℕ) : ℤ :=
  A001740.P16160893690820092194.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007091, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001740.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A001745.P975196731566456235

`lt[0, A064692(n)]`
-/

namespace A001745.P975196731566456235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A001745.P975196731566456235

noncomputable section

/-- A001745: Numbers such that at least one digit contains a loop (version 2). Also called "holey" or "holy" numbers.

Offset 1, canonical program `A001745.P975196731566456235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001745 (n : ℕ) : ℤ :=
  (A001745.P975196731566456235.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001993.P18417217778146458521

`A213506(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A001993.P18417217778146458521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A213506 n + a (n - 2)

end

end A001993.P18417217778146458521

noncomputable section

/-- A001993: Number of two-rowed partitions of length 3.

Offset 0, canonical program `A001993.P18417217778146458521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001993 (n : ℕ) : ℤ :=
  A001993.P18417217778146458521.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002002.P13046393267194405166

`Δ[A047665(A003056(∑[n]-n))]`
-/

namespace A002002.P13046393267194405166
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047665 (A003056 (∑ j ∈ Finset.range (n + 1), f2 j - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002002.P13046393267194405166

noncomputable section

/-- A002002: a(n) = Sum_{k=0..n-1} binomial(n,k+1) * binomial(n+k,k).

Offset 0, canonical program `A002002.P13046393267194405166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A002002 (n : ℕ) : ℤ :=
  A002002.P13046393267194405166.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A002002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002191.P9732241169647202108

`eq[1, A175192(n+1)]+1`
-/

namespace A002191.P9732241169647202108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175192 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A002191.P9732241169647202108

noncomputable section

/-- A002191: Possible values for sum of divisors of n.

Offset 1, canonical program `A002191.P9732241169647202108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002191 (n : ℕ) : ℤ :=
  (A002191.P9732241169647202108.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002483.P17529204388127574909

`A000122(n)*A340944(n)`
-/

namespace A002483.P17529204388127574909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n * A340944 n

end

end A002483.P17529204388127574909

noncomputable section

/-- A002483: Expansion of Jacobi theta function {theta_1}'(q) in powers of q^(1/4).

Offset 0, canonical program `A002483.P17529204388127574909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002483 (n : ℕ) : ℤ :=
  A002483.P17529204388127574909.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002483.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002595.P16312294971091469907

`A046161(n)*A056617(n)`
-/

namespace A002595.P16312294971091469907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 n * A056617 n

end

end A002595.P16312294971091469907

noncomputable section

/-- A002595: Denominators of Taylor series expansion of arcsin(x). Also arises from arccos(x), arccsc(x), arcsec(x), arcsinh(x).

Offset 0, canonical program `A002595.P16312294971091469907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A002595 (n : ℕ) : ℤ :=
  A002595.P16312294971091469907.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A002595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002654.P11574922253888480122

`A001826(n+1)-A001842(n+1)`
-/

namespace A002654.P11574922253888480122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001826 (n + 1) - A001842 (n + 1)

end

end A002654.P11574922253888480122

noncomputable section

/-- A002654: Number of ways of writing n as a sum of at most two nonzero squares, where order matters; also (number of divisors of n of form 4m+1) - (number of divisors of form 4m+3).

Offset 1, canonical program `A002654.P11574922253888480122`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001826, A001842, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A002654 (n : ℕ) : ℤ :=
  A002654.P11574922253888480122.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001826, A001842, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A002654.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A002808.P8130888830651501259

`lt[0, A082023(n)]`
-/

namespace A002808.P8130888830651501259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A002808.P8130888830651501259

noncomputable section

/-- A002808: The composite numbers: numbers n of the form x*y for x > 1 and y > 1.

Offset 1, canonical program `A002808.P8130888830651501259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002808 (n : ℕ) : ℤ :=
  (A002808.P8130888830651501259.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002996.P4447293613268570062

`∑{d}[n+1, A007427(#)*A237670((n+1)/#)]`
-/

namespace A002996.P4447293613268570062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A237670 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A002996.P4447293613268570062

noncomputable section

/-- A002996: a(n) = Sum_{k|n} mu(k)*Catalan(n/k) (mu = Moebius function A008683).

Offset 1, canonical program `A002996.P4447293613268570062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A002996 (n : ℕ) : ℤ :=
  A002996.P4447293613268570062.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A002996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003165.P18392943898696329135

`A004526(n+1)-A000005(n+1)+1`
-/

namespace A003165.P18392943898696329135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) - A000005 (n + 1) + 1

end

end A003165.P18392943898696329135

noncomputable section

/-- A003165: a(n) = floor(n/2) + 1 - d(n), where d(n) is the number of divisors of n.

Offset 1, canonical program `A003165.P18392943898696329135`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003165 (n : ℕ) : ℤ :=
  A003165.P18392943898696329135.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003165.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A003601.P1376783723534109363

`eq[1, A245656(n+1)]+1`
-/

namespace A003601.P1376783723534109363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245656 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A003601.P1376783723534109363

noncomputable section

/-- A003601: Numbers j such that the average of the divisors of j is an integer: sigma_0(j) divides sigma_1(j). Alternatively, numbers j such that tau(j) (A000005(j)) divides sigma(j) (A000203(j)).

Offset 1, canonical program `A003601.P1376783723534109363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003601 (n : ℕ) : ℤ :=
  (A003601.P1376783723534109363.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003642.P14855717082008427332

`A000005(lcm(2, A089269(n+1))/2)`
-/

namespace A003642.P14855717082008427332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((Int.lcm 2 (A089269 (n + 1)) : ℚ) / 2)).toNat

end

end A003642.P14855717082008427332

noncomputable section

/-- A003642: Number of genera of imaginary quadratic field with discriminant -k, k = A191483(n).

Offset 1, canonical program `A003642.P14855717082008427332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003642 (n : ℕ) : ℤ :=
  A003642.P14855717082008427332.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004130.P4035814024961052107

`A004981(n)/A000079(A000120(n))`
-/

namespace A004130.P4035814024961052107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004981 n : ℚ) / (A000079 (A000120 n).toNat : ℚ)

end

end A004130.P4035814024961052107

noncomputable section

/-- A004130: Numerators in expansion of (1-x)^{-1/4}.

Offset 0, canonical program `A004130.P4035814024961052107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A004130 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A004130.P4035814024961052107.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A004130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004221.P6867410002021583751

`A004218(n+1)+A004219(n+1)-A004216(n+1)`
-/

namespace A004221.P6867410002021583751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 1) + (A004219 (n + 1) - A004216 (n + 1))

end

end A004221.P6867410002021583751

noncomputable section

/-- A004221: a(n) = ceiling(10*log_10(n)).

Offset 1, canonical program `A004221.P6867410002021583751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004221 (n : ℕ) : ℤ :=
  A004221.P6867410002021583751.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004268.P4371925752054289060

`A004270(n+1)-A043545(n)`
-/

namespace A004268.P4371925752054289060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004270 (n + 1) - A043545 n

end

end A004268.P4371925752054289060

noncomputable section

/-- A004268: a(n) = floor(10000*log_2(n)).

Offset 1, canonical program `A004268.P4371925752054289060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004268 (n : ℕ) : ℤ :=
  A004268.P4371925752054289060.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004430.P6447519531783021545

`ceil(sqrt(A169669(n)))%A016777(n²)`
-/

namespace A004430.P6447519531783021545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (A169669 n : ℝ)⌉ (A016777 (n ^ 2))

end

end A004430.P6447519531783021545

noncomputable section

/-- A004430: Geometric mean of digits of n (rounded up).

Offset 0, canonical program `A004430.P6447519531783021545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A004430 (n : ℕ) : ℤ :=
  A004430.P6447519531783021545.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A004430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004563.P10581778296416500836

`A004609(2*n+3)+2*A004609(2*(n+1))`
-/

namespace A004563.P10581778296416500836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004609 (2 * n + 3) + 2 * A004609 (2 * (n + 1))

end

end A004563.P10581778296416500836

noncomputable section

/-- A004563: Expansion of sqrt(6) in base 4.

Offset 1, canonical program `A004563.P10581778296416500836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A004563 (n : ℕ) : ℤ :=
  A004563.P10581778296416500836.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A004563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004633.P9102770555637317471

`A007089((n+1)^3)`
-/

namespace A004633.P9102770555637317471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 ((n + 1) ^ 3)

end

end A004633.P9102770555637317471

noncomputable section

/-- A004633: Cubes written in base 3.

Offset 1, canonical program `A004633.P9102770555637317471`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004633 (n : ℕ) : ℤ :=
  A004633.P9102770555637317471.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004633.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004634.P4824655262314359882

`A007090((n+1)^3)`
-/

namespace A004634.P4824655262314359882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 ((n + 1) ^ 3)

end

end A004634.P4824655262314359882

noncomputable section

/-- A004634: Cubes written in base 4.

Offset 1, canonical program `A004634.P4824655262314359882`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007090, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004634 (n : ℕ) : ℤ :=
  A004634.P4824655262314359882.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007090, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004634.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004635.P6720941365882696357

`A007091((n+1)^3)`
-/

namespace A004635.P6720941365882696357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 ((n + 1) ^ 3)

end

end A004635.P6720941365882696357

noncomputable section

/-- A004635: Cubes written in base 5.

Offset 1, canonical program `A004635.P6720941365882696357`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007091, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004635 (n : ℕ) : ℤ :=
  A004635.P6720941365882696357.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007091, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004635.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004678.P6275972245920334493

`A007090(A000040(n+1))`
-/

namespace A004678.P6275972245920334493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A000040 (n + 1)).toNat

end

end A004678.P6275972245920334493

noncomputable section

/-- A004678: Primes written in base 4.

Offset 1, canonical program `A004678.P6275972245920334493`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007090, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004678 (n : ℕ) : ℤ :=
  A004678.P6275972245920334493.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007090, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004678.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004679.P10561121472635893882

`A007091(A000040(n+1))`
-/

namespace A004679.P10561121472635893882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A000040 (n + 1)).toNat

end

end A004679.P10561121472635893882

noncomputable section

/-- A004679: Primes written in base 5.

Offset 1, canonical program `A004679.P10561121472635893882`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007091, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004679 (n : ℕ) : ℤ :=
  A004679.P10561121472635893882.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007091, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004679.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004709.P11605199300458361357

`eq[1, A113061(n+1)]+1`
-/

namespace A004709.P11605199300458361357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113061 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A004709.P11605199300458361357

noncomputable section

/-- A004709: Cubefree numbers: numbers that are not divisible by any cube > 1.

Offset 1, canonical program `A004709.P11605199300458361357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004709 (n : ℕ) : ℤ :=
  (A004709.P11605199300458361357.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004731.P16733994207931499197

`A380909(abs(1-n))`
-/

namespace A004731.P16733994207931499197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380909 |1 - (n : ℤ)|.toNat

end

end A004731.P16733994207931499197

noncomputable section

/-- A004731: a(0) = 1; thereafter a(n) = denominator of (n-2)!! / (n-1)!!.

Offset 0, canonical program `A004731.P16733994207931499197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A004731 (n : ℕ) : ℤ :=
  A004731.P16733994207931499197.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A004731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004745.P9326191156765535125

`eq[0, A334076(A334076(n))]`
-/

namespace A004745.P9326191156765535125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334076 (A334076 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004745.P9326191156765535125

noncomputable section

/-- A004745: Numbers whose binary expansion does not contain 001.

Offset 1, canonical program `A004745.P9326191156765535125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4164 terms. -/
def A004745 (n : ℕ) : ℤ :=
  (A004745.P9326191156765535125.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4164 terms. -/
def A004745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004751.P4013561618878621607

`eq[0, A036987(A334076(n))]`
-/

namespace A004751.P4013561618878621607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A334076 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004751.P4013561618878621607

noncomputable section

/-- A004751: Binary expansion contains 001.

Offset 1, canonical program `A004751.P4013561618878621607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004751 (n : ℕ) : ℤ :=
  (A004751.P4013561618878621607.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005071.P4242743647660035667

`∑{p}[n+1, A005070(#)²]`
-/

namespace A005071.P4242743647660035667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A005070 p ^ 2

end

end A005071.P4242743647660035667

noncomputable section

/-- A005071: Sum of squares of primes = 1 mod 3 dividing n.

Offset 1, canonical program `A005071.P4242743647660035667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005071 (n : ℕ) : ℤ :=
  A005071.P4242743647660035667.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005072.P4467141680536761599

`∑{p}[n+1, #*A005070(#)²]`
-/

namespace A005072.P4467141680536761599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℤ) * A005070 p ^ 2

end

end A005072.P4467141680536761599

noncomputable section

/-- A005072: Sum of cubes of primes = 1 mod 3 dividing n.

Offset 1, canonical program `A005072.P4467141680536761599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005072 (n : ℕ) : ℤ :=
  A005072.P4467141680536761599.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005073.P8293580605370363974

`∑{p}[n+1, A005070(#)²²]`
-/

namespace A005073.P8293580605370363974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (A005070 p ^ 2) ^ 2

end

end A005073.P8293580605370363974

noncomputable section

/-- A005073: Sum of 4th powers of primes = 1 mod 3 dividing n.

Offset 1, canonical program `A005073.P8293580605370363974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005073 (n : ℕ) : ℤ :=
  A005073.P8293580605370363974.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005124.P2963219177605090959

`floor(A186296(n+1)/4)`
-/

namespace A005124.P2963219177605090959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A186296 (n + 1) : ℚ) / 4⌋

end

end A005124.P2963219177605090959

noncomputable section

/-- A005124: Numbers k such that 8k + 3 is prime.

Offset 1, canonical program `A005124.P2963219177605090959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005124 (n : ℕ) : ℤ :=
  A005124.P2963219177605090959.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005381.P16334453365373976889

`eq[1, A323162(n+1)]+1`
-/

namespace A005381.P16334453365373976889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323162 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005381.P16334453365373976889

noncomputable section

/-- A005381: Numbers k such that k and k-1 are composite.

Offset 1, canonical program `A005381.P16334453365373976889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005381 (n : ℕ) : ℤ :=
  (A005381.P16334453365373976889.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005631.P7171786025637869171

`A135401(n+2)/A135401(n)*a(n-1)` with `a(0)=1`
-/

namespace A005631.P7171786025637869171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A135401 (n + 2) : ℚ) / (A135401 n : ℚ) * a (n - 1)

end

end A005631.P7171786025637869171

noncomputable section

/-- A005631: Bishops on a 2n+1 X 2n+1 board (see Robinson paper for details).

Offset 0, canonical program `A005631.P7171786025637869171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A005631 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A005631.P7171786025637869171.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A005631.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006049.P14504587564879316839

`eq[A001221(n+1), A001221(n+2)]+1`
-/

namespace A006049.P14504587564879316839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A006049.P14504587564879316839

noncomputable section

/-- A006049: Numbers k such that k and k+1 have the same number of distinct prime divisors.

Offset 1, canonical program `A006049.P14504587564879316839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006049 (n : ℕ) : ℤ :=
  (A006049.P14504587564879316839.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006218.P9218434490128439557

`a(n-1)+A000005(n)` with `a(0)=0`
-/

namespace A006218.P9218434490128439557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A000005 n

end

end A006218.P9218434490128439557

noncomputable section

/-- A006218: a(n) = Sum_{k=1..n} floor(n/k); also Sum_{k=1..n} d(k), where d = number of divisors (A000005); also number of solutions to x*y = z with 1 <= x,y,z <= n.

Offset 0, canonical program `A006218.P9218434490128439557`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A006218.anchor (n : ℕ) : A006218 n = ∑ k ∈ Finset.Icc 1 n, (ArithmeticFunction.sigma 0 k : ℤ)` in `Proof.A006.A006218`. -/
def A006218 (n : ℕ) : ℤ :=
  A006218.P9218434490128439557.a n

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A006218.anchor (n : ℕ) : A006218 n = ∑ k ∈ Finset.Icc 1 n, (ArithmeticFunction.sigma 0 k : ℤ)` in `Proof.A006.A006218`. -/
def A006218.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A006264.P1728145935528236585

`∑[(5*n+3)%A293668(n)]`
-/

namespace A006264.P1728145935528236585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 * n + 3 : ℤ) (A293668 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006264.P1728145935528236585

noncomputable section

/-- A006264: Diagonal length function.

Offset 0, canonical program `A006264.P1728145935528236585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006264 (n : ℕ) : ℤ :=
  A006264.P1728145935528236585.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006582.P15268451848719006347

`2*(∑[n+1]-A006581(n+2))`
-/

namespace A006582.P15268451848719006347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A006581 (n + 2))

end

end A006582.P15268451848719006347

noncomputable section

/-- A006582: a(n) = Sum_{k=1..n-1} k XOR n-k.

Offset 2, canonical program `A006582.P15268451848719006347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006582 (n : ℕ) : ℤ :=
  A006582.P15268451848719006347.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006582.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006583.P17089448504759645171

`∑[2*(n+1)]-A006581(n+2)`
-/

namespace A006583.P17089448504759645171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A006581 (n + 2)

end

end A006583.P17089448504759645171

noncomputable section

/-- A006583: a(n) = Sum_{k=1..n-1} (k OR n-k).

Offset 2, canonical program `A006583.P17089448504759645171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006583 (n : ℕ) : ℤ :=
  A006583.P17089448504759645171.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006583.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006590.P2074768882159636940

`a(n-1)+A000005(n)+1` with `a(0)=1`
-/

namespace A006590.P2074768882159636940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000005 n + 1

end

end A006590.P2074768882159636940

noncomputable section

/-- A006590: a(n) = Sum_{k=1..n} ceiling(n/k).

Offset 1, canonical program `A006590.P2074768882159636940`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006590 (n : ℕ) : ℤ :=
  A006590.P2074768882159636940.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006590.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007071.P9583933981391345506

`∑[A188374(n+1)]+n`
-/

namespace A007071.P9583933981391345506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A007071.P9583933981391345506

noncomputable section

/-- A007071: First row of 2-shuffle of spectral array W( sqrt 2 ).

Offset 1, canonical program `A007071.P9583933981391345506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007071 (n : ℕ) : ℤ :=
  A007071.P9583933981391345506.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007422.P2892307068334706217

`record[(n+1)*A354927(n+1)]`
-/

namespace A007422.P2892307068334706217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A354927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007422.P2892307068334706217

noncomputable section

/-- A007422: Multiplicatively perfect numbers j: product of divisors of j is j^2.

Offset 1, canonical program `A007422.P2892307068334706217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007422 (n : ℕ) : ℤ :=
  A007422.P2892307068334706217.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007428.P12532017655611739201

`∑{d}[n+1, A247343(#)]`
-/

namespace A007428.P12532017655611739201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A247343 d

end

end A007428.P12532017655611739201

noncomputable section

/-- A007428: Moebius transform applied thrice to sequence 1,0,0,0,....

Offset 1, canonical program `A007428.P12532017655611739201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007428 (n : ℕ) : ℤ :=
  A007428.P12532017655611739201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007435.P9180709624338983869

`A245282(n+1)-A108046(n+1)`
-/

namespace A007435.P9180709624338983869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245282 (n + 1) - A108046 (n + 1)

end

end A007435.P9180709624338983869

noncomputable section

/-- A007435: Inverse Moebius transform of Fibonacci numbers 1,1,2,3,5,8,...

Offset 1, canonical program `A007435.P9180709624338983869`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108046, A245282, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A007435 (n : ℕ) : ℤ :=
  A007435.P9180709624338983869.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108046, A245282, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A007435.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007444.P6945218340457660263

`∑{d}[n+1, A361707(#)]`
-/

namespace A007444.P6945218340457660263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A361707 d

end

end A007444.P6945218340457660263

noncomputable section

/-- A007444: Moebius transform of primes.

Offset 1, canonical program `A007444.P6945218340457660263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007444 (n : ℕ) : ℤ :=
  A007444.P6945218340457660263.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007503.P13484425310514315912

`A000005(n+1)+A000203(n+1)`
-/

namespace A007503.P13484425310514315912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A000203 (n + 1)

end

end A007503.P13484425310514315912

noncomputable section

/-- A007503: Number of subgroups of dihedral group: sigma(n) + d(n).

Offset 1, canonical program `A007503.P13484425310514315912`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007503 (n : ℕ) : ℤ :=
  A007503.P13484425310514315912.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007503.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007676.P3349414848293175676

`A113873(n+2)`
-/

namespace A007676.P3349414848293175676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113873 (n + 2)

end

end A007676.P3349414848293175676

noncomputable section

/-- A007676: Numerators of convergents to e.

Offset 0, canonical program `A007676.P3349414848293175676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A007676 (n : ℕ) : ℤ :=
  A007676.P3349414848293175676.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A007676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007677.P2199356504323934864

`A113874(n+2)`
-/

namespace A007677.P2199356504323934864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113874 (n + 2)

end

end A007677.P2199356504323934864

noncomputable section

/-- A007677: Denominators of convergents to e.

Offset 0, canonical program `A007677.P2199356504323934864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A007677 (n : ℕ) : ℤ :=
  A007677.P2199356504323934864.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A007677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007821.P9323765795172173596

`A000040(A018252(n+1))`
-/

namespace A007821.P9323765795172173596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A018252 (n + 1)).toNat

end

end A007821.P9323765795172173596

noncomputable section

/-- A007821: Primes p such that pi(p) is not prime.

Offset 1, canonical program `A007821.P9323765795172173596`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007821 (n : ℕ) : ℤ :=
  A007821.P9323765795172173596.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007821.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007851.P15050771373022439753

`A189176(n+1)-1`
-/

namespace A007851.P15050771373022439753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189176 (n + 1) - 1

end

end A007851.P15050771373022439753

noncomputable section

/-- A007851: Number of elements w of the Weyl group D(n) such that the roots sent negative by w span an Abelian subalgebra of the Lie algebra.

Offset 1, canonical program `A007851.P15050771373022439753`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A189176, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007851 (n : ℕ) : ℤ :=
  A007851.P15050771373022439753.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A189176, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007851.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007880.P277093750328925867

`A130659(n)+A001492(n)`
-/

namespace A007880.P277093750328925867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130659 n + A001492 n

end

end A007880.P277093750328925867

noncomputable section

/-- A007880: Westminster chimes at 15-minute intervals (1).

Offset 0, canonical program `A007880.P277093750328925867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007880 (n : ℕ) : ℤ :=
  A007880.P277093750328925867.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007921.P2826303110664531110

`eq[0, A370482(n+2)]`
-/

namespace A007921.P2826303110664531110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370482 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007921.P2826303110664531110

noncomputable section

/-- A007921: Numbers that are not the difference of two primes.

Offset 1, canonical program `A007921.P2826303110664531110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007921 (n : ℕ) : ℤ :=
  (A007921.P2826303110664531110.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007929.P17074030191121949086

`∩[2*n+1, A007928(n+1)]`
-/

namespace A007929.P17074030191121949086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007929.P17074030191121949086

noncomputable section

/-- A007929: Odd numbers containing an even digit.

Offset 1, canonical program `A007929.P17074030191121949086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4610 terms. -/
def A007929 (n : ℕ) : ℤ :=
  (A007929.P17074030191121949086.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4610 terms. -/
def A007929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007955.P14752630106558465512

`(n+1)^(A000005(n+1)/2)`
-/

namespace A007955.P14752630106558465512
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((A000005 (n + 1) : ℚ) / 2 : ℝ)

end

end A007955.P14752630106558465512

noncomputable section

/-- A007955: Product of divisors of n.

Offset 1, canonical program `A007955.P14752630106558465512`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007955 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007955.P14752630106558465512.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007955.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007983.P11551575728455360974

`A136185(n+1)-floor((n+1)/2)-1`
-/

namespace A007983.P11551575728455360974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136185 (n + 1) - ⌊(n + 1 : ℚ) / 2⌋ - 1

end

end A007983.P11551575728455360974

noncomputable section

/-- A007983: Number of non-Abelian metacyclic groups of order p^n (p odd).

Offset 1, canonical program `A007983.P11551575728455360974`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136185, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007983 (n : ℕ) : ℤ :=
  A007983.P11551575728455360974.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136185, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007983.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A008328.P3425095105082656605

`A000005(A006093(n+1))`
-/

namespace A008328.P3425095105082656605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006093 (n + 1)).toNat

end

end A008328.P3425095105082656605

noncomputable section

/-- A008328: Number of divisors of prime(n)-1.

Offset 1, canonical program `A008328.P3425095105082656605`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008328 (n : ℕ) : ℤ :=
  A008328.P3425095105082656605.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008328.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A008329.P18061230809908035593

`A000005(A008864(n+1))`
-/

namespace A008329.P18061230809908035593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008864 (n + 1)).toNat

end

end A008329.P18061230809908035593

noncomputable section

/-- A008329: Number of divisors of p+1, p prime.

Offset 1, canonical program `A008329.P18061230809908035593`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008329 (n : ℕ) : ℤ :=
  A008329.P18061230809908035593.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008329.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A008335.P9126335808444534877

`A001221(A008864(n+1))`
-/

namespace A008335.P9126335808444534877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A008864 (n + 1)).toNat

end

end A008335.P9126335808444534877

noncomputable section

/-- A008335: Number of distinct primes dividing p+1 as p runs through the primes.

Offset 1, canonical program `A008335.P9126335808444534877`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008335 (n : ℕ) : ℤ :=
  A008335.P9126335808444534877.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008335.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A008365.P2847380916215750219

`∩[A008364(n+1), A236204(n+1)]`
-/

namespace A008365.P2847380916215750219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008365.P2847380916215750219

noncomputable section

/-- A008365: 13-rough numbers: positive integers that have no prime factors less than 13.

Offset 1, canonical program `A008365.P2847380916215750219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6857 terms. -/
def A008365 (n : ℕ) : ℤ :=
  (A008365.P2847380916215750219.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6857 terms. -/
def A008365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008463.P8249291237443257325

`A000218(n+2)`
-/

namespace A008463.P8249291237443257325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000218 (n + 2)

end

end A008463.P8249291237443257325

noncomputable section

/-- A008463: Take sum of squares of digits of previous term; start with 9.

Offset 1, canonical program `A008463.P8249291237443257325`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008463 (n : ℕ) : ℤ :=
  A008463.P8249291237443257325.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008463.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A008492.P1506124131771397775

`A165618(n)+∑[A008491(A289207(n+1))]`
-/

namespace A008492.P1506124131771397775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008491 (A289207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165618 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008492.P1506124131771397775

noncomputable section

/-- A008492: Expansion of (1-x^10) / (1-x)^10.

Offset 0, canonical program `A008492.P1506124131771397775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A008492 (n : ℕ) : ℤ :=
  A008492.P1506124131771397775.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A008492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008528.P4328616448726392190

`A008530(n)+A244725(n)+n`
-/

namespace A008528.P4328616448726392190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008530 n + (A244725 n + (n : ℤ))

end

end A008528.P4328616448726392190

noncomputable section

/-- A008528: Coordination sequence for 4-dimensional RR-centered di-isohexagonal orthogonal lattice.

Offset 0, canonical program `A008528.P4328616448726392190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008528 (n : ℕ) : ℤ :=
  A008528.P4328616448726392190.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008578.P3639467937083264764

`A158611(n+2)`
-/

namespace A008578.P3639467937083264764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 2)

end

end A008578.P3639467937083264764

noncomputable section

/-- A008578: Prime numbers at the beginning of the 20th century (today 1 is no longer regarded as a prime).

Offset 1, canonical program `A008578.P3639467937083264764`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008578 (n : ℕ) : ℤ :=
  A008578.P3639467937083264764.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008578.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A008581.P17617564279450248385

`A266744(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A008581.P17617564279450248385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A266744 n + a (n - 2)

end

end A008581.P17617564279450248385

noncomputable section

/-- A008581: Molien series for 6-dimensional complex reflection group 4.U_4 (3) of order 2^9 .3^7 .5.7.

Offset 0, canonical program `A008581.P17617564279450248385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008581 (n : ℕ) : ℤ :=
  A008581.P17617564279450248385.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A009191.P6662661648928745988

`gcd(n+1, A000005(n+1))`
-/

namespace A009191.P6662661648928745988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000005 (n + 1))

end

end A009191.P6662661648928745988

noncomputable section

/-- A009191: a(n) = gcd(n, d(n)), where d(n) is the number of divisors of n (A000005).

Offset 1, canonical program `A009191.P6662661648928745988`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A009191 (n : ℕ) : ℤ :=
  (A009191.P6662661648928745988.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A009191.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A010051.P15078252821583414300

`A100995(n+1)-sqrt(A100995(n+1)*A193056(n+1))`
-/

namespace A010051.P15078252821583414300
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A100995 (n + 1) : ℝ) - Real.sqrt (A100995 (n + 1) * A193056 (n + 1) : ℝ)

end

end A010051.P15078252821583414300

noncomputable section

/-- A010051: Characteristic function of primes: 1 if n is prime, else 0.

Offset 1, canonical program `A010051.P15078252821583414300`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100995, A193056, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A010051 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A010051.P15078252821583414300.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100995, A193056, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A010051.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A010553.P11932377395426747626

`A000005(A000005(n+1))`
-/

namespace A010553.P11932377395426747626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (n + 1)).toNat

end

end A010553.P11932377395426747626

noncomputable section

/-- A010553: a(n) = tau(tau(n)).

Offset 1, canonical program `A010553.P11932377395426747626`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010553 (n : ℕ) : ℤ :=
  A010553.P11932377395426747626.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010553.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A010784.P2044816568036423859

`record[A320486(n)]`
-/

namespace A010784.P2044816568036423859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010784.P2044816568036423859

noncomputable section

/-- A010784: Numbers with distinct decimal digits.

Offset 1, canonical program `A010784.P2044816568036423859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5275 terms. -/
def A010784 (n : ℕ) : ℤ :=
  A010784.P2044816568036423859.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5275 terms. -/
def A010784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011666.P9056292157548002259

`A011673(A016897(n))`
-/

namespace A011666.P9056292157548002259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011673 (A016897 n).toNat

end

end A011666.P9056292157548002259

noncomputable section

/-- A011666: A binary m-sequence: expansion of reciprocal of x^6+x^5+x^4+x+1.

Offset 0, canonical program `A011666.P9056292157548002259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A011666 (n : ℕ) : ℤ :=
  A011666.P9056292157548002259.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A011666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011676.P13743426949965777935

`A011686(3*n+2)`
-/

namespace A011676.P13743426949965777935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011686 (3 * n + 2)

end

end A011676.P13743426949965777935

noncomputable section

/-- A011676: A binary m-sequence: expansion of reciprocal of x^7+x^6+x^4+x^2+1.

Offset 0, canonical program `A011676.P13743426949965777935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A011676 (n : ℕ) : ℤ :=
  A011676.P13743426949965777935.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A011676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011683.P10419445935259758250

`A011686(7*n)`
-/

namespace A011683.P10419445935259758250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011686 (7 * n)

end

end A011683.P10419445935259758250

noncomputable section

/-- A011683: A binary m-sequence: expansion of reciprocal of x^7+x^5+x^4+x^3+x^2+x+1.

Offset 0, canonical program `A011683.P10419445935259758250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A011683 (n : ℕ) : ℤ :=
  A011683.P10419445935259758250.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A011683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011687.P13750795114316336976

`A011675(A341016(n+1)-n)`
-/

namespace A011687.P13750795114316336976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011675 (A341016 (n + 1) - (n : ℤ)).toNat

end

end A011687.P13750795114316336976

noncomputable section

/-- A011687: A binary m-sequence: expansion of reciprocal of x^7 + x^6 + x^5 + x^4 + 1.

Offset 0, canonical program `A011687.P13750795114316336976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3338 terms. -/
def A011687 (n : ℕ) : ℤ :=
  A011687.P13750795114316336976.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3338 terms. -/
def A011687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013939.P14869873943907335378

`a(n-1)+A001221(n+1)` with `a(0)=0`
-/

namespace A013939.P14869873943907335378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A001221 (n + 1)

end

end A013939.P14869873943907335378

noncomputable section

/-- A013939: Partial sums of sequence A001221 (number of distinct primes dividing n).

Offset 1, canonical program `A013939.P14869873943907335378`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A013939 (n : ℕ) : ℤ :=
  A013939.P14869873943907335378.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A013939.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A013942.P4361914383121615099

`A091453(comp[n²])`
-/

namespace A013942.P4361914383121615099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A013942.P4361914383121615099

noncomputable section

/-- A013942: Triangle of numbers T(n,k) = floor(2n/k), k=1..2n, read by rows.

Offset 1, canonical program `A013942.P4361914383121615099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013942 (n : ℕ) : ℤ :=
  A013942.P4361914383121615099.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014022.P13529364460648374080

`A014035(n)*A033999(n)`
-/

namespace A014022.P13529364460648374080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014035 n * A033999 n

end

end A014022.P13529364460648374080

noncomputable section

/-- A014022: Inverse of 13th cyclotomic polynomial.

Offset 0, canonical program `A014022.P13529364460648374080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014022 (n : ℕ) : ℤ :=
  A014022.P13529364460648374080.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014076.P11944548580381270581

`eq[0, A370482(n)]`
-/

namespace A014076.P11944548580381270581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370482 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014076.P11944548580381270581

noncomputable section

/-- A014076: Odd nonprimes.

Offset 1, canonical program `A014076.P11944548580381270581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014076 (n : ℕ) : ℤ :=
  (A014076.P11944548580381270581.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014193.P553466698010306128

`A007423(n+1)+A006093(n+1)`
-/

namespace A014193.P553466698010306128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1) + A006093 (n + 1)

end

end A014193.P553466698010306128

noncomputable section

/-- A014193: n-th prime + mu(n).

Offset 1, canonical program `A014193.P553466698010306128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014193 (n : ℕ) : ℤ :=
  A014193.P553466698010306128.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014193.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014237.P11822810703592861988

`A000040(n+1)-A018252(n+1)`
-/

namespace A014237.P11822810703592861988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A018252 (n + 1)

end

end A014237.P11822810703592861988

noncomputable section

/-- A014237: a(n) = (n-th prime) - (n-th nonprime).

Offset 1, canonical program `A014237.P11822810703592861988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014237 (n : ℕ) : ℤ :=
  A014237.P11822810703592861988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014420.P10947574684232609405

`1+a(n-A081290(n))` with `a(0)=0`
-/

namespace A014420.P10947574684232609405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a ((n : ℤ) - A081290 n).toNat

end

end A014420.P10947574684232609405

noncomputable section

/-- A014420: Minimal number of Catalan numbers that sum to n.

Offset 0, canonical program `A014420.P10947574684232609405`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081290, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014420 (n : ℕ) : ℤ :=
  (A014420.P10947574684232609405.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081290, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014420.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014766.P15193863746706197252

`filter[A231960(n+3), A152822(#)]`
-/

namespace A014766.P15193863746706197252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231960 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A014766.P15193863746706197252

noncomputable section

/-- A014766: Numbers k such that the 3k shuffle group does not accomplish a perfect shuffle.

Offset 1, canonical program `A014766.P15193863746706197252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A014766 (n : ℕ) : ℤ :=
  A014766.P15193863746706197252.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A014766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014803.P6482634091243957279

`A015226(n)²`
-/

namespace A014803.P6482634091243957279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015226 n ^ 2

end

end A014803.P6482634091243957279

noncomputable section

/-- A014803: Squares of even hexagonal pyramidal numbers.

Offset 0, canonical program `A014803.P6482634091243957279`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A015226, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014803 (n : ℕ) : ℤ :=
  A014803.P6482634091243957279.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A015226, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014803.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A015650.P8611508311813970584

`∑[A117109(n+1)]`
-/

namespace A015650.P8611508311813970584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015650.P8611508311813970584

noncomputable section

/-- A015650: Number of ordered 5-tuples of integers from [ 1..n ] with no global factor.

Offset 1, canonical program `A015650.P8611508311813970584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A015650 (n : ℕ) : ℤ :=
  A015650.P8611508311813970584.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A015650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015651.P3676913124546127327

`∑[A117109(n+2)-A000292(n+2)]`
-/

namespace A015651.P3676913124546127327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117109 (n + 2) - A000292 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015651.P3676913124546127327

noncomputable section

/-- A015651: Number of ordered 5-tuples of integers from [ 2,n ] with no global factor.

Offset 2, canonical program `A015651.P3676913124546127327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. -/
def A015651 (n : ℕ) : ℤ :=
  A015651.P3676913124546127327.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. -/
def A015651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015995.P845519996712568226

`(2+A048785(n+1))/3`
-/

namespace A015995.P845519996712568226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + A048785 (n + 1) : ℚ) / 3

end

end A015995.P845519996712568226

noncomputable section

/-- A015995: a(n) = (tau(n^3)+2)/3.

Offset 1, canonical program `A015995.P845519996712568226`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048785, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A015995 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A015995.P845519996712568226.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048785, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A015995.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A015996.P15461774812698289129

`(A000005((n+1)^4)+3)/4`
-/

namespace A015996.P15461774812698289129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 ((n + 1) ^ 4) + 3 : ℚ) / 4

end

end A015996.P15461774812698289129

noncomputable section

/-- A015996: (tau(n^4) + 3)/4, where tau = A000005.

Offset 1, canonical program `A015996.P15461774812698289129`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A015996 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A015996.P15461774812698289129.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A015996.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A016006.P1904156013776657872

`A007095(A016005(n+1))%p?[A046691(n+2)]`
-/

namespace A016006.P1904156013776657872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A016005 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A016006.P1904156013776657872

noncomputable section

/-- A016006: a(n) = (tau(n^10)+9)/10.

Offset 1, canonical program `A016006.P1904156013776657872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A016006 (n : ℕ) : ℤ :=
  A016006.P1904156013776657872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A016006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A016008.P15707281332845573364

`ceil(A016001((n+1)²)/2)`
-/

namespace A016008.P15707281332845573364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A016001 ((n + 1) ^ 2) : ℚ) / 2⌉

end

end A016008.P15707281332845573364

noncomputable section

/-- A016008: a(n) = (tau(n^12)+11)/12.

Offset 1, canonical program `A016008.P15707281332845573364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A016008 (n : ℕ) : ℤ :=
  A016008.P15707281332845573364.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A016008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017670.P10675654441448400355

`(n+1)^3/gcd(A001158(n+1), A276634(n+1))`
-/

namespace A017670.P10675654441448400355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℚ) / (Int.gcd (A001158 (n + 1)) (A276634 (n + 1)) : ℚ)

end

end A017670.P10675654441448400355

noncomputable section

/-- A017670: Denominator of sum of -3rd powers of divisors of n.

Offset 1, canonical program `A017670.P10675654441448400355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A017670 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A017670.P10675654441448400355.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A017670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017671.P13542887879619195653

`A001159(n+1)/gcd(A001159(n+1), A279363(n+1))`
-/

namespace A017671.P13542887879619195653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001159 (n + 1) : ℚ) / (Int.gcd (A001159 (n + 1)) (A279363 (n + 1)) : ℚ)

end

end A017671.P13542887879619195653

noncomputable section

/-- A017671: Numerator of sum of -4th powers of divisors of n.

Offset 1, canonical program `A017671.P13542887879619195653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A017671 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A017671.P13542887879619195653.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A017671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017980.P8070788069916850451

`A017979(n+3)-A017979(n)`
-/

namespace A017980.P8070788069916850451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017979 (n + 3) - A017979 n

end

end A017980.P8070788069916850451

noncomputable section

/-- A017980: Powers of cube root of 2 rounded to nearest integer.

Offset 0, canonical program `A017980.P8070788069916850451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 994 terms. -/
def A017980 (n : ℕ) : ℤ :=
  A017980.P8070788069916850451.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 994 terms. -/
def A017980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018011.P15676345644571657576

`A018009(n)+A011655(n)`
-/

namespace A018011.P15676345644571657576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018009 n + A011655 n

end

end A018011.P15676345644571657576

noncomputable section

/-- A018011: Powers of cube root of 12 rounded up.

Offset 0, canonical program `A018011.P15676345644571657576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. -/
def A018011 (n : ℕ) : ℤ :=
  A018011.P15676345644571657576.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. -/
def A018011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018014.P17107100277226627898

`A018012(n)+n²%3`
-/

namespace A018014.P17107100277226627898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018012 n + ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A018014.P17107100277226627898

noncomputable section

/-- A018014: Powers of cube root of 13 rounded up.

Offset 0, canonical program `A018014.P17107100277226627898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 270 terms. -/
def A018014 (n : ℕ) : ℤ :=
  A018014.P17107100277226627898.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 270 terms. -/
def A018014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018040.P12584903542677254656

`round(22^(n/3))%A106257(n+1)`
-/

namespace A018040.P12584903542677254656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((22 : ℝ) ^ ((n : ℚ) / 3 : ℝ))) (A106257 (n + 1))

end

end A018040.P12584903542677254656

noncomputable section

/-- A018040: Powers of cube root of 22 rounded to nearest integer.

Offset 0, canonical program `A018040.P12584903542677254656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A018040 (n : ℕ) : ℤ :=
  A018040.P12584903542677254656.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A018040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018118.P2879102399695885870

`A018117(n+5)-A018117(n)`
-/

namespace A018118.P2879102399695885870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018117 (n + 5) - A018117 n

end

end A018118.P2879102399695885870

noncomputable section

/-- A018118: Powers of fifth root of 2 rounded to nearest integer.

Offset 0, canonical program `A018118.P2879102399695885870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1656 terms. -/
def A018118 (n : ℕ) : ℤ :=
  A018118.P2879102399695885870.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1656 terms. -/
def A018118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018119.P8742798569925089374

`A018117(n)+A011558(n)`
-/

namespace A018119.P8742798569925089374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018117 n + A011558 n

end

end A018119.P8742798569925089374

noncomputable section

/-- A018119: Powers of fifth root of 2 rounded up.

Offset 0, canonical program `A018119.P8742798569925089374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1661 terms. -/
def A018119 (n : ℕ) : ℤ :=
  A018119.P8742798569925089374.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1661 terms. -/
def A018119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018126.P18140258307609111398

`A018128(n)-A011558(n)`
-/

namespace A018126.P18140258307609111398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018128 n - A011558 n

end

end A018126.P18140258307609111398

noncomputable section

/-- A018126: Powers of fifth root of 5 rounded down.

Offset 0, canonical program `A018126.P18140258307609111398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 716 terms. -/
def A018126 (n : ℕ) : ℤ :=
  A018126.P18140258307609111398.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 716 terms. -/
def A018126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018138.P10780805456287121430

`A018140(n)-A011558(n)`
-/

namespace A018138.P10780805456287121430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018140 n - A011558 n

end

end A018138.P10780805456287121430

noncomputable section

/-- A018138: Powers of fifth root of 9 rounded down.

Offset 0, canonical program `A018138.P10780805456287121430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 524 terms. -/
def A018138 (n : ℕ) : ℤ :=
  A018138.P10780805456287121430.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 524 terms. -/
def A018138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018149.P13010487118839459935

`A018147(n)+A011558(n)`
-/

namespace A018149.P13010487118839459935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018147 n + A011558 n

end

end A018149.P13010487118839459935

noncomputable section

/-- A018149: Powers of fifth root of 12 rounded up.

Offset 0, canonical program `A018149.P13010487118839459935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A018149 (n : ℕ) : ℤ :=
  A018149.P13010487118839459935.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A018149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018155.P10237962941858563623

`A018153(n)+A011558(n)`
-/

namespace A018155.P10237962941858563623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018153 n + A011558 n

end

end A018155.P10237962941858563623

noncomputable section

/-- A018155: Powers of fifth root of 14 rounded up.

Offset 0, canonical program `A018155.P10237962941858563623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 437 terms. -/
def A018155 (n : ℕ) : ℤ :=
  A018155.P10237962941858563623.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 437 terms. -/
def A018155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018156.P7569426342522992677

`A018158(n)-A011558(n)`
-/

namespace A018156.P7569426342522992677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018158 n - A011558 n

end

end A018156.P7569426342522992677

noncomputable section

/-- A018156: Powers of fifth root of 15 rounded down.

Offset 0, canonical program `A018156.P7569426342522992677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 426 terms. -/
def A018156 (n : ℕ) : ℤ :=
  A018156.P7569426342522992677.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 426 terms. -/
def A018156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018176.P918138688999406290

`A018174(n)+A011558(n)`
-/

namespace A018176.P918138688999406290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018174 n + A011558 n

end

end A018176.P918138688999406290

noncomputable section

/-- A018176: Powers of fifth root of 21 rounded up.

Offset 0, canonical program `A018176.P918138688999406290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 379 terms. -/
def A018176 (n : ℕ) : ℤ :=
  A018176.P918138688999406290.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 379 terms. -/
def A018176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018211.P8561171215378061643

`4*A031164(n)-A032093(n+8)`
-/

namespace A018211.P8561171215378061643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A031164 n - A032093 (n + 8)

end

end A018211.P8561171215378061643

noncomputable section

/-- A018211: Alkane (or paraffin) numbers l(10,n).

Offset 0, canonical program `A018211.P8561171215378061643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A018211 (n : ℕ) : ℤ :=
  A018211.P8561171215378061643.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A018211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019467.P17540180294228994165

`A008486(eq[1, A039969(n)]+1)`
-/

namespace A019467.P17540180294228994165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A019467.P17540180294228994165

noncomputable section

/-- A019467: (n-2)nd Catalan number is congruent to n/3 mod n.

Offset 1, canonical program `A019467.P17540180294228994165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 383 terms. -/
def A019467 (n : ℕ) : ℤ :=
  A019467.P17540180294228994165.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 383 terms. -/
def A019467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019524.P15401352265773152237

`A007908(n+1)*(1+10^A058183(n+1))`
-/

namespace A019524.P15401352265773152237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007908 (n + 1) : ℚ) * (1 + (10 : ℚ) ^ (A058183 (n + 1) : ℤ))

end

end A019524.P15401352265773152237

noncomputable section

/-- A019524: Duplicate terms of A007908.

Offset 1, canonical program `A019524.P15401352265773152237`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058183, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A019524 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A019524.P15401352265773152237.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058183, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A019524.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A019550.P6938258972162787855

`A309809(n+1)-1`
-/

namespace A019550.P6938258972162787855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309809 (n + 1) - 1

end

end A019550.P6938258972162787855

noncomputable section

/-- A019550: a(n) is the concatenation of n and 2n.

Offset 1, canonical program `A019550.P6938258972162787855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A019550 (n : ℕ) : ℤ :=
  A019550.P6938258972162787855.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A019550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019552.P234428209897043585

`A248422(2*(n+1))/4+3*(n+1)`
-/

namespace A019552.P234428209897043585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248422 (2 * (n + 1)) : ℚ) / 4 + (3 * (n + 1) : ℚ)

end

end A019552.P234428209897043585

noncomputable section

/-- A019552: a(n) is the concatenation of n and 4n.

Offset 1, canonical program `A019552.P234428209897043585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A019552 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A019552.P234428209897043585.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A019552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020338.P4106658568687796505

`(n+1)*10^(A004216(n+1)+1)+n+1`
-/

namespace A020338.P4106658568687796505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (10 : ℚ) ^ (A004216 (n + 1) + 1 : ℤ) + (n + 1 : ℚ)

end

end A020338.P4106658568687796505

noncomputable section

/-- A020338: Doublets: base-10 representation is the juxtaposition of two identical strings.

Offset 1, canonical program `A020338.P4106658568687796505`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004216, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A020338 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A020338.P4106658568687796505.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004216, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A020338.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A020648.P9373385446498543105

`A007844(2*n)`
-/

namespace A020648.P9373385446498543105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007844 (2 * n)

end

end A020648.P9373385446498543105

noncomputable section

/-- A020648: Least positive integer k for which 9^n divides k!.

Offset 0, canonical program `A020648.P9373385446498543105`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A020648 (n : ℕ) : ℤ :=
  A020648.P9373385446498543105.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A020648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021409.P17093460775978934110

`A289207(A007095(2*n))%10`
-/

namespace A021409.P17093460775978934110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289207 (A007095 (2 * n)).toNat) 10

end

end A021409.P17093460775978934110

noncomputable section

/-- A021409: Decimal expansion of 1/405.

Offset 0, canonical program `A021409.P17093460775978934110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3281 terms. -/
def A021409 (n : ℕ) : ℤ :=
  A021409.P17093460775978934110.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3281 terms. -/
def A021409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022292.P4350502724997210221

`eq[A071054(n), A216345(n+1)]`
-/

namespace A022292.P4350502724997210221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022292.P4350502724997210221

noncomputable section

/-- A022292: Exactly half of first a(n) terms of Kolakoski sequence A000002 are 1's (not known to be infinite).

Offset 0, canonical program `A022292.P4350502724997210221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 659 terms. -/
def A022292 (n : ℕ) : ℤ :=
  (A022292.P4350502724997210221.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 659 terms. -/
def A022292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022762.P18043620693348096952

`A005123(n+1)+A005122(n+1)`
-/

namespace A022762.P18043620693348096952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005123 (n + 1) + A005122 (n + 1)

end

end A022762.P18043620693348096952

noncomputable section

/-- A022762: (n-th 8k+1 prime plus n-th 8k+7 prime)/8.

Offset 1, canonical program `A022762.P18043620693348096952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022762 (n : ℕ) : ℤ :=
  A022762.P18043620693348096952.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022806.P955735887301753164

`A022843(n+1)+A054385(n+1)`
-/

namespace A022806.P955735887301753164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (n + 1) + A054385 (n + 1)

end

end A022806.P955735887301753164

noncomputable section

/-- A022806: a(n) = B(n) + c(n) where B(n) is Beatty sequence [ n*e ] and c is the complement of B.

Offset 1, canonical program `A022806.P955735887301753164`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054385, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022806 (n : ℕ) : ℤ :=
  A022806.P955735887301753164.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054385, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022806.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A022810.P14713839583043034836

`A023499(n)+A020701(n)`
-/

namespace A022810.P14713839583043034836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023499 n + A020701 n

end

end A022810.P14713839583043034836

noncomputable section

/-- A022810: a(n) = L(n+2) + c(n) where L(k) is the k-th Lucas number and c(n) is the n-th number that is 1 or 3 or is not a Lucas number.

Offset 1, canonical program `A022810.P14713839583043034836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A022810 (n : ℕ) : ℤ :=
  A022810.P14713839583043034836.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A022810.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022879.P16818398562923498573

`A005614(n)*A159876(∑[A005614(n)])`
-/

namespace A022879.P16818398562923498573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 n * A159876 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A022879.P16818398562923498573

noncomputable section

/-- A022879: The number of numbers [ [ ix ]jx ] that equal n, where i >= 1, j >= 1 and x=(1+sqrt(5))/2. a(n)=0 iff n is in Beatty sequence A001950.

Offset 1, canonical program `A022879.P16818398562923498573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022879 (n : ℕ) : ℤ :=
  A022879.P16818398562923498573.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023163.P11434462362626889777

`eq[A002708(n+1), A014681(n)]+1`
-/

namespace A023163.P11434462362626889777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A023163.P11434462362626889777

noncomputable section

/-- A023163: Numbers k such that Fibonacci(k) == -2 (mod k).

Offset 1, canonical program `A023163.P11434462362626889777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A023163 (n : ℕ) : ℤ :=
  (A023163.P11434462362626889777.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A023163.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023173.P5299766691977123693

`eq[n, n*A002708(n+1)]+1`
-/

namespace A023173.P5299766691977123693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002708 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A023173.P5299766691977123693

noncomputable section

/-- A023173: Numbers k such that Fibonacci(k) == 1 (mod k).

Offset 1, canonical program `A023173.P5299766691977123693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 947 terms. -/
def A023173 (n : ℕ) : ℤ :=
  (A023173.P5299766691977123693.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 947 terms. -/
def A023173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023174.P10020655540075246063

`eq[2-A000038(n), A002708(n+1)]+1`
-/

namespace A023174.P10020655540075246063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002708 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A023174.P10020655540075246063

noncomputable section

/-- A023174: Numbers k such that Fibonacci(k) == 2 (mod k).

Offset 1, canonical program `A023174.P10020655540075246063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A023174 (n : ℕ) : ℤ :=
  (A023174.P10020655540075246063.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A023174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023176.P13506540630945294316

`record[gcd(n+1, 5-A002708(n+1))]`
-/

namespace A023176.P13506540630945294316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (5 - A002708 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023176.P13506540630945294316

noncomputable section

/-- A023176: Numbers k such that Fibonacci(k) == 5 (mod k).

Offset 1, canonical program `A023176.P13506540630945294316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. -/
def A023176 (n : ℕ) : ℤ :=
  (A023176.P13506540630945294316.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. -/
def A023176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023202.P11096894219968463901

`p?[A015915(n+1)]`
-/

namespace A023202.P11096894219968463901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023202.P11096894219968463901

noncomputable section

/-- A023202: Primes p such that p + 8 is also prime.

Offset 1, canonical program `A023202.P11096894219968463901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8242 terms. -/
def A023202 (n : ℕ) : ℤ :=
  A023202.P11096894219968463901.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8242 terms. -/
def A023202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023220.P13118839527709711084

`p?[A087505(n+1)-1]`
-/

namespace A023220.P13118839527709711084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087505 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023220.P13118839527709711084

noncomputable section

/-- A023220: Primes p such that 5*p + 8 is also prime.

Offset 1, canonical program `A023220.P13118839527709711084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1360 terms. -/
def A023220 (n : ℕ) : ℤ :=
  A023220.P13118839527709711084.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1360 terms. -/
def A023220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023235.P10290147567702551712

`floor(A136073(n+1)/9)`
-/

namespace A023235.P10290147567702551712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A136073 (n + 1) : ℚ) / 9⌋

end

end A023235.P10290147567702551712

noncomputable section

/-- A023235: Primes p such that 9*p + 8 is also prime.

Offset 1, canonical program `A023235.P10290147567702551712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023235 (n : ℕ) : ℤ :=
  A023235.P10290147567702551712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023240.P11335105020919164782

`floor(A055784(n+1)/10)`
-/

namespace A023240.P11335105020919164782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055784 (n + 1) : ℚ) / 10⌋

end

end A023240.P11335105020919164782

noncomputable section

/-- A023240: Primes p such that 10*p + 9 is also prime.

Offset 1, canonical program `A023240.P11335105020919164782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023240 (n : ℕ) : ℤ :=
  A023240.P11335105020919164782.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023256.P9214186173841082197

`p?[A263309(n+1)]`
-/

namespace A023256.P9214186173841082197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023256.P9214186173841082197

noncomputable section

/-- A023256: Primes that remain prime through 2 iterations of function f(x) = 6x + 1.

Offset 1, canonical program `A023256.P9214186173841082197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 793 terms. -/
def A023256 (n : ℕ) : ℤ :=
  A023256.P9214186173841082197.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 793 terms. -/
def A023256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023504.P16342308356438405673

`A051903(A006093(n+1))`
-/

namespace A023504.P16342308356438405673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A006093 (n + 1)).toNat

end

end A023504.P16342308356438405673

noncomputable section

/-- A023504: Maximum exponent in the prime factorization of prime(n) - 1.

Offset 1, canonical program `A023504.P16342308356438405673`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023504 (n : ℕ) : ℤ :=
  A023504.P16342308356438405673.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023504.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023510.P9489494763882677696

`A051903(A008864(n+1))`
-/

namespace A023510.P9489494763882677696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A008864 (n + 1)).toNat

end

end A023510.P9489494763882677696

noncomputable section

/-- A023510: Greatest exponent in prime-power factorization of prime(n) + 1.

Offset 1, canonical program `A023510.P9489494763882677696`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023510 (n : ℕ) : ℤ :=
  A023510.P9489494763882677696.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023510.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023534.P15990485128086430200

`eq[val(n+1, 2), A001221(n+1)]+1`
-/

namespace A023534.P15990485128086430200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A023534.P15990485128086430200

noncomputable section

/-- A023534: Numbers k such that the largest power of 2 dividing k equals 2^omega(k).

Offset 1, canonical program `A023534.P15990485128086430200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3399 terms. -/
def A023534 (n : ℕ) : ℤ :=
  (A023534.P15990485128086430200.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3399 terms. -/
def A023534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023536.P17768721522352995612

`-∑[∑[∑[A103452(n+1)]]]`
-/

namespace A023536.P17768721522352995612
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A023536.P17768721522352995612

noncomputable section

/-- A023536: Convolution of natural numbers with A023532.

Offset 1, canonical program `A023536.P17768721522352995612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023536 (n : ℕ) : ℤ :=
  A023536.P17768721522352995612.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023568.P14714875499586096405

`A157928(n)+A039737(n+1)`
-/

namespace A023568.P14714875499586096405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n + A039737 (n + 1)

end

end A023568.P14714875499586096405

noncomputable section

/-- A023568: Number of distinct prime divisors of prime(n)-3.

Offset 1, canonical program `A023568.P14714875499586096405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023568 (n : ℕ) : ℤ :=
  A023568.P14714875499586096405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023575.P6154463081137586051

`A001221(A113935(n+1))`
-/

namespace A023575.P6154463081137586051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A113935 (n + 1)).toNat

end

end A023575.P6154463081137586051

noncomputable section

/-- A023575: Number of distinct prime divisors of prime(n)+3.

Offset 1, canonical program `A023575.P6154463081137586051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A023575 (n : ℕ) : ℤ :=
  A023575.P6154463081137586051.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A023575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023719.P8815918029191661790

`eq[2, A139351(n-A292272(n))]`
-/

namespace A023719.P8815918029191661790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 ((n : ℤ) - A292272 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023719.P8815918029191661790

noncomputable section

/-- A023719: Numbers with exactly two 3's in their base 4 expansion.

Offset 1, canonical program `A023719.P8815918029191661790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5103 terms. -/
def A023719 (n : ℕ) : ℤ :=
  (A023719.P8815918029191661790.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5103 terms. -/
def A023719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023726.P14118374530120351635

`eq[1, A268643(A007091(n))]`
-/

namespace A023726.P14118374530120351635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023726.P14118374530120351635

noncomputable section

/-- A023726: Numbers with a single 1 in their base 5 expansion.

Offset 1, canonical program `A023726.P14118374530120351635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 257 terms. -/
def A023726 (n : ℕ) : ℤ :=
  (A023726.P14118374530120351635.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 257 terms. -/
def A023726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023806.P3856621330274670461

`comp[13*A008480(3*n+4)]`
-/

namespace A023806.P3856621330274670461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A008480 (3 * n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A023806.P3856621330274670461

noncomputable section

/-- A023806: Xenodromes: all digits in base 12 are different.

Offset 1, canonical program `A023806.P3856621330274670461`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A023806 (n : ℕ) : ℤ :=
  (A023806.P3856621330274670461.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A023806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023810.P2950296800096099102

`record[A106618(n)%A309002(n+1)]`
-/

namespace A023810.P2950296800096099102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106618 n) (A309002 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023810.P2950296800096099102

noncomputable section

/-- A023810: Xenodromes: all digits in base 16 are different.

Offset 1, canonical program `A023810.P2950296800096099102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A023810 (n : ℕ) : ℤ :=
  A023810.P2950296800096099102.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A023810.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023883.P3322065707026463707

`record[A018252(n+1)*A245656(A018252(n+1))]`
-/

namespace A023883.P3322065707026463707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) * A245656 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023883.P3322065707026463707

noncomputable section

/-- A023883: Nonprimes whose average of divisors is an integer.

Offset 1, canonical program `A023883.P3322065707026463707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023883 (n : ℕ) : ℤ :=
  A023883.P3322065707026463707.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024552.P1560158251074081305

`floor(A024568(2*(n+1))/2)`
-/

namespace A024552.P1560158251074081305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024568 (2 * (n + 1)) : ℚ) / 2⌋

end

end A024552.P1560158251074081305

noncomputable section

/-- A024552: a(n) = [ n/{n*sqrt(5)} ], where {x} := x - [ x ].

Offset 1, canonical program `A024552.P1560158251074081305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A024552 (n : ℕ) : ℤ :=
  A024552.P1560158251074081305.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A024552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024591.P8048384923733651491

`A024458(n+3)-A000045(n+3)`
-/

namespace A024591.P8048384923733651491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024458 (n + 3) - A000045 (n + 3)

end

end A024591.P8048384923733651491

noncomputable section

/-- A024591: a(n) = s(1)s(n) + s(2)s(n-1) + ... + s(k)s(n+1-k), where k = [ (n+1)/2 ], s = (F(2), F(3), ...).

Offset 1, canonical program `A024591.P8048384923733651491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A024591 (n : ℕ) : ℤ :=
  A024591.P8048384923733651491.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A024591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024895.P17027813078874753076

`A111223(n+1)+1`
-/

namespace A024895.P17027813078874753076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111223 (n + 1) + 1

end

end A024895.P17027813078874753076

noncomputable section

/-- A024895: Numbers k such that 5*k - 3 is prime.

Offset 1, canonical program `A024895.P17027813078874753076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024895 (n : ℕ) : ℤ :=
  A024895.P17027813078874753076.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024897.P4072693481099583505

`A111230(n+1)+2`
-/

namespace A024897.P4072693481099583505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111230 (n + 1) + 2

end

end A024897.P4072693481099583505

noncomputable section

/-- A024897: Numbers k such that 5*k + 4 is prime.

Offset 1, canonical program `A024897.P4072693481099583505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024897 (n : ℕ) : ℤ :=
  A024897.P4072693481099583505.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024897.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024900.P6856065008345106231

`floor(A045473(n+1)/7)`
-/

namespace A024900.P6856065008345106231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045473 (n + 1) : ℚ) / 7⌋

end

end A024900.P6856065008345106231

noncomputable section

/-- A024900: Numbers k such that 7*k + 6 is prime.

Offset 1, canonical program `A024900.P6856065008345106231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024900 (n : ℕ) : ℤ :=
  A024900.P6856065008345106231.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024902.P5738614250329261096

`floor(A045471(n+1)/7)`
-/

namespace A024902.P5738614250329261096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045471 (n + 1) : ℚ) / 7⌋

end

end A024902.P5738614250329261096

noncomputable section

/-- A024902: Numbers k such that 7*k + 4 is prime.

Offset 1, canonical program `A024902.P5738614250329261096`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024902 (n : ℕ) : ℤ :=
  A024902.P5738614250329261096.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025045.P4345398874468105076

`eq[and(2, A175851(n+1)), A237420(n)]`
-/

namespace A025045.P4345398874468105076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A175851 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025045.P4345398874468105076

noncomputable section

/-- A025045: a(n) not of form prime +- a(k), k < n.

Offset 1, canonical program `A025045.P4345398874468105076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2127 terms. -/
def A025045 (n : ℕ) : ℤ :=
  (A025045.P4345398874468105076.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2127 terms. -/
def A025045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025078.P9952779972674218111

`A001629(n+3)-A024458(n+2)`
-/

namespace A025078.P9952779972674218111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (n + 3) - A024458 (n + 2)

end

end A025078.P9952779972674218111

noncomputable section

/-- A025078: a(n) = s(1)s(n) + s(2)s(n-1) + ... + s(k)s(n-k+1), where k = [ n/2 ] and s = (Fibonacci numbers).

Offset 1, canonical program `A025078.P9952779972674218111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A025078 (n : ℕ) : ℤ :=
  A025078.P9952779972674218111.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A025078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025106.P14413199365891504528

`A024463(n+3)-(2*n+5)`
-/

namespace A025106.P14413199365891504528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024463 (n + 3) - (2 * n + 5 : ℤ)

end

end A025106.P14413199365891504528

noncomputable section

/-- A025106: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n-k+1), where k = [ n/2 ], s = (F(2), F(3), F(4), ...), t = (odd natural numbers).

Offset 1, canonical program `A025106.P14413199365891504528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 924 terms. -/
def A025106 (n : ℕ) : ℤ :=
  A025106.P14413199365891504528.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 924 terms. -/
def A025106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025156.P15023851928668983565

`eq[1, A032741(A013632(n)-1)]`
-/

namespace A025156.P15023851928668983565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A013632 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025156.P15023851928668983565

noncomputable section

/-- A025156: A prime number of consecutive composites follow n.

Offset 1, canonical program `A025156.P15023851928668983565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4125 terms. -/
def A025156 (n : ℕ) : ℤ :=
  (A025156.P15023851928668983565.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4125 terms. -/
def A025156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025231.P3025805724805601143

`A047891(n+1)+A000007(n)`
-/

namespace A025231.P3025805724805601143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047891 (n + 1) + A000007 n

end

end A025231.P3025805724805601143

noncomputable section

/-- A025231: a(n) = a(1)*a(n-1) + a(2)*a(n-2) + ...+ a(n-1)*a(1) for n >= 3, with initial terms 2,3.

Offset 1, canonical program `A025231.P3025805724805601143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A025231 (n : ℕ) : ℤ :=
  A025231.P3025805724805601143.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A025231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025705.P3415323721020212063

`∑[A210434(n)]`
-/

namespace A025705.P3415323721020212063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025705.P3415323721020212063

noncomputable section

/-- A025705: Index of 4^n within the sequence of the numbers of the form 4^i*10^j.

Offset 0, canonical program `A025705.P3415323721020212063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025705 (n : ℕ) : ℤ :=
  A025705.P3415323721020212063.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025707.P4187545652726333253

`∑[A000196(∑[A184732(n+1)])]`
-/

namespace A025707.P4187545652726333253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184732 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025707.P4187545652726333253

noncomputable section

/-- A025707: Index of 5^n within the sequence of the numbers of the form 5^i*6^j.

Offset 0, canonical program `A025707.P4187545652726333253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A025707 (n : ℕ) : ℤ :=
  A025707.P4187545652726333253.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A025707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025719.P9903689236373906164

`∑[A210436(n)]`
-/

namespace A025719.P9903689236373906164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210436 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025719.P9903689236373906164

noncomputable section

/-- A025719: Index of 6^n within the sequence of the numbers of the form 6^i*10^j.

Offset 0, canonical program `A025719.P9903689236373906164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025719 (n : ℕ) : ℤ :=
  A025719.P9903689236373906164.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026140.P6842947642768268072

`comp[A026227(n+2)-1]`
-/

namespace A026140.P6842947642768268072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026227 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A026140.P6842947642768268072

noncomputable section

/-- A026140: a(n) = (1/2)*(s(n) - 1), where s = A026139.

Offset 1, canonical program `A026140.P6842947642768268072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026140 (n : ℕ) : ℤ :=
  (A026140.P6842947642768268072.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026168.P3036345061496687448

`comp[A026227(n+2)]+1`
-/

namespace A026168.P3036345061496687448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026227 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A026168.P3036345061496687448

noncomputable section

/-- A026168: Numbers k such that A026166(j) < A026166(k) for all j < k.

Offset 1, canonical program `A026168.P3036345061496687448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026168 (n : ℕ) : ℤ :=
  (A026168.P3036345061496687448.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026225.P18152359124507789956

`comp[A026227(n+1)-1]`
-/

namespace A026225.P18152359124507789956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026227 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A026225.P18152359124507789956

noncomputable section

/-- A026225: Numbers of the form 3^i * (3k+1).

Offset 1, canonical program `A026225.P18152359124507789956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026225 (n : ℕ) : ℤ :=
  (A026225.P18152359124507789956.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026226.P8103483919858282648

`3*A026227(n+1)-2`
-/

namespace A026226.P8103483919858282648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A026227 (n + 1) - 2

end

end A026226.P8103483919858282648

noncomputable section

/-- A026226: Numbers k such that A026136(k) = A026166(k).

Offset 1, canonical program `A026226.P8103483919858282648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026226 (n : ℕ) : ℤ :=
  A026226.P8103483919858282648.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026249.P5299804575068387705

`ceil(abs(n+1-A026250(n+1))/2)`
-/

namespace A026249.P5299804575068387705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|(n + 1 : ℤ) - A026250 (n + 1)| : ℚ) / 2⌉

end

end A026249.P5299804575068387705

noncomputable section

/-- A026249: a(n) = j if n = [ j*sqrt(2) ], else a(n) = k if n = [ k*(2 + sqrt(2)) ].

Offset 1, canonical program `A026249.P5299804575068387705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026249 (n : ℕ) : ℤ :=
  A026249.P5299804575068387705.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026249.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026273.P13771585298488964922

`floor(A191403(n)/2)`
-/

namespace A026273.P13771585298488964922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A191403 n : ℚ) / 2⌋

end

end A026273.P13771585298488964922

noncomputable section

/-- A026273: a(n) = least k such that s(k) = n, where s = A026272.

Offset 1, canonical program `A026273.P13771585298488964922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026273 (n : ℕ) : ℤ :=
  A026273.P13771585298488964922.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026318.P11805155564372986449

`∩[A004082(n+1), A026319(n+1)]`
-/

namespace A026318.P11805155564372986449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026318.P11805155564372986449

noncomputable section

/-- A026318: a(n) = n-th nonnegative integer k satisfying sin(k) < cos(k) < sin(k+1).

Offset 1, canonical program `A026318.P11805155564372986449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A026318 (n : ℕ) : ℤ :=
  (A026318.P11805155564372986449.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A026318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026359.P3570022919299884675

`A057427(n)+A026367(A028310(n))`
-/

namespace A026359.P3570022919299884675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A026367 (A028310 n).toNat

end

end A026359.P3570022919299884675

noncomputable section

/-- A026359: a(n) = least k such that s(k) = n, where s = A026358.

Offset 1, canonical program `A026359.P3570022919299884675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026359 (n : ℕ) : ℤ :=
  A026359.P3570022919299884675.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026611.P12328329593331989993

`2-A026613(n+1)`
-/

namespace A026611.P12328329593331989993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A026613 (n + 1)

end

end A026611.P12328329593331989993

noncomputable section

/-- A026611: Number of 3's between n-th 2 and (n+1)st 2 in A026600.

Offset 1, canonical program `A026611.P12328329593331989993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026611 (n : ℕ) : ℤ :=
  A026611.P12328329593331989993.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026617.P650469128402918254

`A053369(n)-A071721(n)`
-/

namespace A026617.P650469128402918254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053369 n - A071721 n

end

end A026617.P650469128402918254

noncomputable section

/-- A026617: a(n) = A026615(2*n, n-1).

Offset 1, canonical program `A026617.P650469128402918254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A026617 (n : ℕ) : ℤ :=
  A026617.P650469128402918254.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A026617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026621.P9530929463673983980

`A001405(n)+Δ[A208976(A289207(n))]`
-/

namespace A026621.P9530929463673983980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208976 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n + (f1 (n + 1) - f1 n)

end

end A026621.P9530929463673983980

noncomputable section

/-- A026621: a(n) = A026615(n, floor(n/2)).

Offset 0, canonical program `A026621.P9530929463673983980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A026621 (n : ℕ) : ℤ :=
  A026621.P9530929463673983980.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A026621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027292.P9259008184868754031

`Δ[A095121(n)-A294175(n)]`
-/

namespace A027292.P9259008184868754031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n - A294175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027292.P9259008184868754031

noncomputable section

/-- A027292: a(n) = Sum_{k=0..m} (k+1) * A026009(n, m-k) where m = floor(n/2)+1.

Offset 0, canonical program `A027292.P9259008184868754031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A027292 (n : ℕ) : ℤ :=
  A027292.P9259008184868754031.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A027292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027423.P14066705804803784298

`A000005(A000142(n))`
-/

namespace A027423.P14066705804803784298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000142 n).toNat

end

end A027423.P14066705804803784298

noncomputable section

/-- A027423: Number of divisors of n!.

Offset 0, canonical program `A027423.P14066705804803784298`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027423 (n : ℕ) : ℤ :=
  A027423.P14066705804803784298.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027423.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027618.P2693083672505022831

`3*A047665(n)+1`
-/

namespace A027618.P2693083672505022831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A047665 n + 1

end

end A027618.P2693083672505022831

noncomputable section

/-- A027618: c(i,j) is cost of evaluation of edit distance of two strings with lengths i and j, when you use recursion (every call has a unit cost, other computations are free); sequence gives c(n,n).

Offset 0, canonical program `A027618.P2693083672505022831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A027618 (n : ℕ) : ℤ :=
  A027618.P2693083672505022831.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A027618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027844.P16318570825650020980

`∑{d}[n+1, #*A046524(#)]`
-/

namespace A027844.P16318570825650020980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A046524 d

end

end A027844.P16318570825650020980

noncomputable section

/-- A027844: Number of subgroups of index n of fundamental group of the non-orientable cycle bundle over the Klein bottle.

Offset 1, canonical program `A027844.P16318570825650020980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027844 (n : ℕ) : ℤ :=
  A027844.P16318570825650020980.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028609.P15696668425956349877

`A000032(floor(1/(n+1)))*A035179(A008574(n))`
-/

namespace A028609.P15696668425956349877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ⌊1 / (n + 1 : ℚ)⌋.toNat * A035179 (A008574 n).toNat

end

end A028609.P15696668425956349877

noncomputable section

/-- A028609: Expansion of (theta_3(z)*theta_3(11z) + theta_2(z)*theta_2(11z)).

Offset 0, canonical program `A028609.P15696668425956349877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A028609 (n : ℕ) : ℤ :=
  A028609.P15696668425956349877.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A028609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028725.P8918157640377848180

`Δ[A331574(abs(1-n))]`
-/

namespace A028725.P8918157640377848180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331574 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028725.P8918157640377848180

noncomputable section

/-- A028725: a(n) = floor(n/2) * floor((n-1)/2) * floor((n-2)/2) * floor((n-3)/2) * floor((n-4)/2) / 12.

Offset 0, canonical program `A028725.P8918157640377848180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028725 (n : ℕ) : ℤ :=
  A028725.P8918157640377848180.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029303.P996504278850235236

`A029311(n)+A029355(n)-A029363(n)`
-/

namespace A029303.P996504278850235236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029311 n + (A029355 n - A029363 n)

end

end A029303.P996504278850235236

noncomputable section

/-- A029303: Expansion of 1/((1-x^3)*(1-x^6)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A029303.P996504278850235236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029303 (n : ℕ) : ℤ :=
  A029303.P996504278850235236.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029346.P15441236893995981458

`A025875(n)+A029331(n)-A029358(n)`
-/

namespace A029346.P15441236893995981458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025875 n + (A029331 n - A029358 n)

end

end A029346.P15441236893995981458

noncomputable section

/-- A029346: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029346.P15441236893995981458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029346 (n : ℕ) : ℤ :=
  A029346.P15441236893995981458.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029435.P8450062844158075990

`A029124(n)+A029442(n)-A029128(n)`
-/

namespace A029435.P8450062844158075990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029124 n + (A029442 n - A029128 n)

end

end A029435.P8450062844158075990

noncomputable section

/-- A029435: Expansion of 1/((1-x^7)(1-x^8)(1-x^10)(1-x^11)).

Offset 0, canonical program `A029435.P8450062844158075990`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029435 (n : ℕ) : ℤ :=
  A029435.P8450062844158075990.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029714.P5145015103366028874

`∑[A007844(n)]`
-/

namespace A029714.P5145015103366028874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029714.P5145015103366028874

noncomputable section

/-- A029714: a(n) = Sum_{k divides 3^n} S(k), where S is the Kempner function A002034.

Offset 0, canonical program `A029714.P5145015103366028874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029714 (n : ℕ) : ℤ :=
  A029714.P5145015103366028874.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029759.P11279605090538466212

`A000984(n)+A000984(n)-A188622(n)`
-/

namespace A029759.P11279605090538466212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (A000984 n - A188622 n)

end

end A029759.P11279605090538466212

noncomputable section

/-- A029759: Number of permutations which are the union of an increasing and a decreasing subsequence.

Offset 0, canonical program `A029759.P11279605090538466212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A029759 (n : ℕ) : ℤ :=
  A029759.P11279605090538466212.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A029759.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029921.P10660007710439231407

`A085270(2*n)-A085270(n)`
-/

namespace A029921.P10660007710439231407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085270 (2 * n) - A085270 n

end

end A029921.P10660007710439231407

noncomputable section

/-- A029921: Convert n from miles to kilometers (km).

Offset 0, canonical program `A029921.P10660007710439231407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A029921 (n : ℕ) : ℤ :=
  A029921.P10660007710439231407.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A029921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030101.P16184294017372777612

`n-A055945(n)`
-/

namespace A030101.P16184294017372777612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055945 n

end

end A030101.P16184294017372777612

noncomputable section

/-- A030101: a(n) is the number produced when n is converted to binary digits, the binary digits are reversed and then converted back into a decimal number.

Offset 0, canonical program `A030101.P16184294017372777612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030101 (n : ℕ) : ℤ :=
  A030101.P16184294017372777612.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030173.P11040345326000713843

`eq[1, A370482(n+2)]`
-/

namespace A030173.P11040345326000713843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370482 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030173.P11040345326000713843

noncomputable section

/-- A030173: Differences p(i)-p(j) between primes, sorted in numerical order.

Offset 1, canonical program `A030173.P11040345326000713843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030173 (n : ℕ) : ℤ :=
  (A030173.P11040345326000713843.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030230.P8215349480315688712

`lt[A349431(n+1), 0]+1`
-/

namespace A030230.P8215349480315688712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349431 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A030230.P8215349480315688712

noncomputable section

/-- A030230: Numbers that have an odd number of distinct prime divisors.

Offset 1, canonical program `A030230.P8215349480315688712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030230 (n : ℕ) : ℤ :=
  (A030230.P8215349480315688712.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030626.P13020075489056266396

`eq[8, A000005(n+1)]+1`
-/

namespace A030626.P13020075489056266396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030626.P13020075489056266396

noncomputable section

/-- A030626: Numbers with exactly 8 divisors.

Offset 1, canonical program `A030626.P13020075489056266396`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030626 (n : ℕ) : ℤ :=
  (A030626.P13020075489056266396.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030630.P18236272023832021536

`eq[12, A000005(n+1)]+1`
-/

namespace A030630.P18236272023832021536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030630.P18236272023832021536

noncomputable section

/-- A030630: Numbers with 12 divisors.

Offset 1, canonical program `A030630.P18236272023832021536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5091 terms. -/
def A030630 (n : ℕ) : ℤ :=
  (A030630.P18236272023832021536.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5091 terms. -/
def A030630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030655.P11811847413903437405

`A001704(Δ[n²])`
-/

namespace A030655.P11811847413903437405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A030655.P11811847413903437405

noncomputable section

/-- A030655: Pair up the numbers.

Offset 1, canonical program `A030655.P11811847413903437405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030655 (n : ℕ) : ℤ :=
  A030655.P11811847413903437405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031466.P5427241902019165645

`∪[A031449(n+1), A031450(n+1)]`
-/

namespace A031466.P5427241902019165645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A031466.P5427241902019165645

noncomputable section

/-- A031466: Numbers whose base-4 representation has one fewer 0 than 3's.

Offset 1, canonical program `A031466.P5427241902019165645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031466 (n : ℕ) : ℤ :=
  (A031466.P5427241902019165645.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031969.P3085846202319853215

`lt[3, A055642(A320486(n))]`
-/

namespace A031969.P3085846202319853215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A320486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031969.P3085846202319853215

noncomputable section

/-- A031969: Numbers with exactly four distinct base-10 digits.

Offset 1, canonical program `A031969.P3085846202319853215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4536 terms. -/
def A031969 (n : ℕ) : ℤ :=
  (A031969.P3085846202319853215.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4536 terms. -/
def A031969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032089.P12573802574290399080

`A052959(n)-A102526(n)`
-/

namespace A032089.P12573802574290399080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052959 n - A102526 n

end

end A032089.P12573802574290399080

noncomputable section

/-- A032089: "BHK" (reversible, identity, unlabeled) transform of 1,0,1,0...(odds).

Offset 1, canonical program `A032089.P12573802574290399080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A032089 (n : ℕ) : ℤ :=
  A032089.P12573802574290399080.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A032089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032099.P9217517832218233789

`∑[A056014(n)+∑[A192352(n+1)]]`
-/

namespace A032099.P9217517832218233789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192352 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056014 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032099.P9217517832218233789

noncomputable section

/-- A032099: "BHK" (reversible, identity, unlabeled) transform of 1,2,3,4,...

Offset 1, canonical program `A032099.P9217517832218233789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A032099 (n : ℕ) : ℤ :=
  A032099.P9217517832218233789.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A032099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032806.P6530555208973634118

`floor(A147993(n+2)/2)`
-/

namespace A032806.P6530555208973634118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A147993 (n + 2) : ℚ) / 2⌋

end

end A032806.P6530555208973634118

noncomputable section

/-- A032806: Numbers whose set of base-6 digits is {2,3}.

Offset 1, canonical program `A032806.P6530555208973634118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A032806 (n : ℕ) : ℤ :=
  A032806.P6530555208973634118.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A032806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032943.P3501722432435064616

`record[abs(A073795(n+1))]`
-/

namespace A032943.P3501722432435064616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A073795 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032943.P3501722432435064616

noncomputable section

/-- A032943: Numbers whose base-8 representation Sum_{i=0..m} d(i)*8^(m-i) has d(i)=0 for all odd i.

Offset 1, canonical program `A032943.P3501722432435064616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. -/
def A032943 (n : ℕ) : ℤ :=
  A032943.P3501722432435064616.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. -/
def A032943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033273.P18420659424697249895

`A000005(n+1)-A001221(n+1)`
-/

namespace A033273.P18420659424697249895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A001221 (n + 1)

end

end A033273.P18420659424697249895

noncomputable section

/-- A033273: Number of nonprime divisors of n.

Offset 1, canonical program `A033273.P18420659424697249895`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033273 (n : ℕ) : ℤ :=
  A033273.P18420659424697249895.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033273.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A033557.P15478102425626913345

`A175851(n+2)+3+n`
-/

namespace A033557.P15478102425626913345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (n + 2) + 3 + (n : ℤ)

end

end A033557.P15478102425626913345

noncomputable section

/-- A033557: 2n - {largest prime < n}.

Offset 3, canonical program `A033557.P15478102425626913345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033557 (n : ℕ) : ℤ :=
  A033557.P15478102425626913345.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033683.P11546619599251774441

`A033684(n)*A000035(n)`
-/

namespace A033683.P11546619599251774441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033684 n * A000035 n

end

end A033683.P11546619599251774441

noncomputable section

/-- A033683: a(n) = 1 if n is an odd square not divisible by 3, otherwise 0.

Offset 0, canonical program `A033683.P11546619599251774441`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033684, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033683 (n : ℕ) : ℤ :=
  A033683.P11546619599251774441.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033684, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033683.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A033762.P13282187029160693838

`A122860(2*n+1)`
-/

namespace A033762.P13282187029160693838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122860 (2 * n + 1)

end

end A033762.P13282187029160693838

noncomputable section

/-- A033762: Product t2(q^d); d | 3, where t2 = theta2(q) / (2 * q^(1/4)).

Offset 0, canonical program `A033762.P13282187029160693838`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122860, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033762 (n : ℕ) : ℤ :=
  A033762.P13282187029160693838.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122860, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033762.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A033876.P16870416633292688167

`A037965(n+2)-A001700(n)`
-/

namespace A033876.P16870416633292688167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037965 (n + 2) - A001700 n

end

end A033876.P16870416633292688167

noncomputable section

/-- A033876: Expansion of 1/(2*x) * (1/(1-4*x)^(3/2)-1).

Offset 0, canonical program `A033876.P16870416633292688167`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037965, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033876 (n : ℕ) : ℤ :=
  A033876.P16870416633292688167.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037965, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033876.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A033950.P9371750250849887585

`record[(n+1)/A002878((n+1)%A000005(n+1))]`
-/

namespace A033950.P9371750250849887585
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A002878 (Int.tmod (n + 1 : ℤ) (A000005 (n + 1))).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033950.P9371750250849887585

noncomputable section

/-- A033950: Refactorable numbers: number of divisors of k divides k. Also known as tau numbers.

Offset 1, canonical program `A033950.P9371750250849887585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5257 terms. -/
def A033950 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A033950.P9371750250849887585.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5257 terms. -/
def A033950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034096.P8391659666020544807

`lt[9, A091453(n)]`
-/

namespace A034096.P8391659666020544807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A034096.P8391659666020544807

noncomputable section

/-- A034096: Fractional part of square root of n starts with digit 0 (squares excluded).

Offset 1, canonical program `A034096.P8391659666020544807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 970 terms. -/
def A034096 (n : ℕ) : ℤ :=
  (A034096.P8391659666020544807.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 970 terms. -/
def A034096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034103.P13525611423669296742

`A153152(eq[7, A023961(n+1)])`
-/

namespace A034103.P13525611423669296742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034103.P13525611423669296742

noncomputable section

/-- A034103: Fractional part of square root of a(n) starts with digit 7.

Offset 1, canonical program `A034103.P13525611423669296742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1010 terms. -/
def A034103 (n : ℕ) : ℤ :=
  A034103.P13525611423669296742.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1010 terms. -/
def A034103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034116.P10121614997286246648

`eq[A010057(n), A023962(A028310(n))]`
-/

namespace A034116.P10121614997286246648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034116.P10121614997286246648

noncomputable section

/-- A034116: Fractional part of cube root of a(n) starts with digit 0 (cubes excluded).

Offset 1, canonical program `A034116.P10121614997286246648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 988 terms. -/
def A034116 (n : ℕ) : ℤ :=
  (A034116.P10121614997286246648.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 988 terms. -/
def A034116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034117.P5906547258211583866

`eq[1, A023962(n+1)]+1`
-/

namespace A034117.P5906547258211583866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A034117.P5906547258211583866

noncomputable section

/-- A034117: Fractional part of cube root of a(n) starts with digit 1.

Offset 1, canonical program `A034117.P5906547258211583866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1015 terms. -/
def A034117 (n : ℕ) : ℤ :=
  (A034117.P5906547258211583866.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1015 terms. -/
def A034117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034118.P6320064680366215771

`eq[2, A023962(n+1)]+1`
-/

namespace A034118.P6320064680366215771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A034118.P6320064680366215771

noncomputable section

/-- A034118: Fractional part of cube root of a(n) starts with digit 2.

Offset 1, canonical program `A034118.P6320064680366215771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1029 terms. -/
def A034118 (n : ℕ) : ℤ :=
  (A034118.P6320064680366215771.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1029 terms. -/
def A034118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034119.P16253224531342429159

`eq[3, A023962(n+1)]+1`
-/

namespace A034119.P16253224531342429159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A034119.P16253224531342429159

noncomputable section

/-- A034119: Fractional part of cube root of a(n) starts with digit 3.

Offset 1, canonical program `A034119.P16253224531342429159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1043 terms. -/
def A034119 (n : ℕ) : ℤ :=
  (A034119.P16253224531342429159.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1043 terms. -/
def A034119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034120.P11182899447975063192

`eq[4, A023962(n+2)]+2`
-/

namespace A034120.P11182899447975063192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A034120.P11182899447975063192

noncomputable section

/-- A034120: Fractional part of cube root of a(n) starts with digit 4.

Offset 1, canonical program `A034120.P11182899447975063192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1057 terms. -/
def A034120 (n : ℕ) : ℤ :=
  (A034120.P11182899447975063192.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1057 terms. -/
def A034120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034121.P11511500395363921303

`eq[5, A023962(n+1)]+1`
-/

namespace A034121.P11511500395363921303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A034121.P11511500395363921303

noncomputable section

/-- A034121: Fractional part of cube root of a(n) starts with digit 5.

Offset 1, canonical program `A034121.P11511500395363921303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 994 terms. -/
def A034121 (n : ℕ) : ℤ :=
  (A034121.P11511500395363921303.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 994 terms. -/
def A034121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034122.P303215718965264971

`eq[6, A023962(n+1)]+1`
-/

namespace A034122.P303215718965264971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A034122.P303215718965264971

noncomputable section

/-- A034122: Fractional part of cube root of a(n) starts with digit 6.

Offset 1, canonical program `A034122.P303215718965264971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 945 terms. -/
def A034122 (n : ℕ) : ℤ :=
  (A034122.P303215718965264971.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 945 terms. -/
def A034122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034123.P4075099621232858078

`1+eq[7, A023962(n+1)]`
-/

namespace A034123.P4075099621232858078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034123.P4075099621232858078

noncomputable section

/-- A034123: Fractional part of cube root of a(n) starts with digit 7.

Offset 1, canonical program `A034123.P4075099621232858078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 959 terms. -/
def A034123 (n : ℕ) : ℤ :=
  (A034123.P4075099621232858078.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 959 terms. -/
def A034123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034124.P8066930743423646155

`eq[8, A023962(n+1)]+1`
-/

namespace A034124.P8066930743423646155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A034124.P8066930743423646155

noncomputable section

/-- A034124: Numbers whose fractional part of the cube root starts with digit 8.

Offset 1, canonical program `A034124.P8066930743423646155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 973 terms. -/
def A034124 (n : ℕ) : ℤ :=
  (A034124.P8066930743423646155.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 973 terms. -/
def A034124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034125.P3477155785435770857

`eq[9, A023962(n+1)]+1`
-/

namespace A034125.P3477155785435770857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023962 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A034125.P3477155785435770857

noncomputable section

/-- A034125: Decimal part of cube root of n starts with digit 9.

Offset 1, canonical program `A034125.P3477155785435770857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 976 terms. -/
def A034125 (n : ℕ) : ℤ :=
  (A034125.P3477155785435770857.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 976 terms. -/
def A034125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034164.P16391364556815372290

`A108411(n)*A218540(n+2)`
-/

namespace A034164.P16391364556815372290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 n * A218540 (n + 2)

end

end A034164.P16391364556815372290

noncomputable section

/-- A034164: Related to triple factorial numbers 2*A034000(n+1).

Offset 0, canonical program `A034164.P16391364556815372290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A034164 (n : ℕ) : ℤ :=
  A034164.P16391364556815372290.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A034164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034444.P6574915864346323298

`2^A001221(n+1)`
-/

namespace A034444.P6574915864346323298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A034444.P6574915864346323298

noncomputable section

/-- A034444: a(n) is the number of unitary divisors of n (d such that d divides n, gcd(d, n/d) = 1).

Offset 1, canonical program `A034444.P6574915864346323298`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034444 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A034444.P6574915864346323298.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034444.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A034713.P16177796597939523709

`4*A034733(n+1)`
-/

namespace A034713.P16177796597939523709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A034733 (n + 1)

end

end A034713.P16177796597939523709

noncomputable section

/-- A034713: Dirichlet convolution of powers of 2 (2,4,8,...) with themselves.

Offset 1, canonical program `A034713.P16177796597939523709`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034733, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034713 (n : ℕ) : ℤ :=
  A034713.P16177796597939523709.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034733, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034713.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A034729.P14831145742905992677

`1/2*A055895(n+1)`
-/

namespace A034729.P14831145742905992677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A055895 (n + 1) : ℚ)

end

end A034729.P14831145742905992677

noncomputable section

/-- A034729: a(n) = Sum_{ k, k|n } 2^(k-1).

Offset 1, canonical program `A034729.P14831145742905992677`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034729 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A034729.P14831145742905992677.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034729.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A034974.P7253154564856362011

`A000005(A001405(n+1))`
-/

namespace A034974.P7253154564856362011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001405 (n + 1)).toNat

end

end A034974.P7253154564856362011

noncomputable section

/-- A034974: Number of divisors of binomial(n, floor(n/2)), the terms of A001405.

Offset 1, canonical program `A034974.P7253154564856362011`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034974 (n : ℕ) : ℤ :=
  A034974.P7253154564856362011.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034974.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A035004.P15043719525226089971

`A000005(A018252(n+1))`
-/

namespace A035004.P15043719525226089971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A018252 (n + 1)).toNat

end

end A035004.P15043719525226089971

noncomputable section

/-- A035004: Number of divisors of the n-th nonprime.

Offset 1, canonical program `A035004.P15043719525226089971`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035004 (n : ℕ) : ℤ :=
  A035004.P15043719525226089971.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035004.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A035028.P14100517736194194964

`Δ[Δ[A047665(n)]]`
-/

namespace A035028.P14100517736194194964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047665 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035028.P14100517736194194964

noncomputable section

/-- A035028: First differences of A002002.

Offset 0, canonical program `A035028.P14100517736194194964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A035028 (n : ℕ) : ℤ :=
  A035028.P14100517736194194964.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A035028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035151.P2523268833969222750

`∑{d}[n+1, A388073(#)]`
-/

namespace A035151.P2523268833969222750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A388073 d

end

end A035151.P2523268833969222750

noncomputable section

/-- A035151: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = -39.

Offset 1, canonical program `A035151.P2523268833969222750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035151 (n : ℕ) : ℤ :=
  A035151.P2523268833969222750.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035155.P10521752229398755010

`∑{d}[n+1, A390614(#)]`
-/

namespace A035155.P10521752229398755010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A390614 d

end

end A035155.P10521752229398755010

noncomputable section

/-- A035155: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = -35.

Offset 1, canonical program `A035155.P10521752229398755010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035155 (n : ℕ) : ℤ :=
  A035155.P10521752229398755010.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035162.P985168465731373250

`A051000(2*(n+1))%7`
-/

namespace A035162.P985168465731373250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051000 (2 * (n + 1))) 7

end

end A035162.P985168465731373250

noncomputable section

/-- A035162: Number of positive odd solutions to equation x^2 + 7y^2 = 8n.

Offset 1, canonical program `A035162.P985168465731373250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A035162 (n : ℕ) : ℤ :=
  A035162.P985168465731373250.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A035162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035191.P4075086936734830837

`A000005(A038502(n+1))`
-/

namespace A035191.P4075086936734830837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A038502 (n + 1)).toNat

end

end A035191.P4075086936734830837

noncomputable section

/-- A035191: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 9.

Offset 1, canonical program `A035191.P4075086936734830837`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035191 (n : ℕ) : ℤ :=
  A035191.P4075086936734830837.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035191.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A035203.P12856241678771434086

`∑{d}[n+1, A322829(#)]`
-/

namespace A035203.P12856241678771434086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A322829 d

end

end A035203.P12856241678771434086

noncomputable section

/-- A035203: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 21.

Offset 1, canonical program `A035203.P12856241678771434086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A035203 (n : ℕ) : ℤ :=
  A035203.P12856241678771434086.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A035203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035211.P5155710519321875222

`∑{d}[n+1, A011587(#)]`
-/

namespace A035211.P5155710519321875222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A011587 d

end

end A035211.P5155710519321875222

noncomputable section

/-- A035211: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 29.

Offset 1, canonical program `A035211.P5155710519321875222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035211 (n : ℕ) : ℤ :=
  A035211.P5155710519321875222.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035215.P18060281936179550698

`∑{d}[n+1, A391502(#)]`
-/

namespace A035215.P18060281936179550698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A391502 d

end

end A035215.P18060281936179550698

noncomputable section

/-- A035215: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 33.

Offset 1, canonical program `A035215.P18060281936179550698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035215 (n : ℕ) : ℤ :=
  A035215.P18060281936179550698.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035316.P17845884678165723091

`∑{d}[n+1, A037213(#)²]`
-/

namespace A035316.P17845884678165723091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A037213 d ^ 2

end

end A035316.P17845884678165723091

noncomputable section

/-- A035316: Sum of the square divisors of n.

Offset 1, canonical program `A035316.P17845884678165723091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035316 (n : ℕ) : ℤ :=
  A035316.P17845884678165723091.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035322.P14766267427097087689

`∑{d}[n+1, A074591(#)]-A074591(n+1)`
-/

namespace A035322.P14766267427097087689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074591 d - A074591 (n + 1)

end

end A035322.P14766267427097087689

noncomputable section

/-- A035322: Sum of composite divisors of n that are less than n and are not primes nor prime powers.

Offset 1, canonical program `A035322.P14766267427097087689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035322 (n : ℕ) : ℤ :=
  A035322.P14766267427097087689.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035531.P14844778978604630277

`A000120(n+1)+A001221(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A035531.P14844778978604630277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) + A001221 (n + 1) - 1

end

end A035531.P14844778978604630277

noncomputable section

/-- A035531: a(n) = A000120(n) + A001221(n) - 1.

Offset 1, canonical program `A035531.P14844778978604630277`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035531 (n : ℕ) : ℤ :=
  A035531.P14844778978604630277.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035531.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A036044.P16648927426293672306

`A055945(n)+A035327(n)`
-/

namespace A036044.P16648927426293672306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 n + A035327 n

end

end A036044.P16648927426293672306

noncomputable section

/-- A036044: BCR(n): write in binary, complement, reverse.

Offset 0, canonical program `A036044.P16648927426293672306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036044 (n : ℕ) : ℤ :=
  A036044.P16648927426293672306.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036147.P10275515469553901638

`A011782(n+1)%A100723(C(2, n)+1)`
-/

namespace A036147.P10275515469553901638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011782 (n + 1)) (A100723 (Nat.choose 2 n + 1))

end

end A036147.P10275515469553901638

noncomputable section

/-- A036147: a(n) = 2^n mod 149.

Offset 0, canonical program `A036147.P10275515469553901638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A036147 (n : ℕ) : ℤ :=
  A036147.P10275515469553901638.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A036147.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036434.P10301240313179279910

`comp[A000005(n+1)+n]+1`
-/

namespace A036434.P10301240313179279910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A036434.P10301240313179279910

noncomputable section

/-- A036434: Integers which cannot be written as k+tau(k) for some k.

Offset 1, canonical program `A036434.P10301240313179279910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036434 (n : ℕ) : ℤ :=
  (A036434.P10301240313179279910.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036436.P3368658604629938610

`record[(n+1)*A010052(A000005(n+2))+1]`
-/

namespace A036436.P3368658604629938610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010052 (A000005 (n + 2)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036436.P3368658604629938610

noncomputable section

/-- A036436: Numbers whose number of divisors is a square.

Offset 1, canonical program `A036436.P3368658604629938610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036436 (n : ℕ) : ℤ :=
  A036436.P3368658604629938610.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036455.P9092321913124468015

`eq[3, A000005(a(A000005(n)))]` with `a(0)=1, a(1)=1, a(2)=12`
-/

namespace A036455.P9092321913124468015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 12] fun n f2 =>
  A000005 (f2 (A000005 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036455.P9092321913124468015

noncomputable section

/-- A036455: Numbers n such that d(d(n)) is an odd prime, where d(k) is the number of divisors of k.

Offset 1, canonical program `A036455.P9092321913124468015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036455 (n : ℕ) : ℤ :=
  (A036455.P9092321913124468015.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036456.P315112515821829930

`eq[3, A000005(a(A000005(n)))]` with `a(0)=4, a(1)=1, a(2)=1, a(3)=12`
-/

namespace A036456.P315112515821829930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 1, 1, 12] fun n f2 =>
  A000005 (f2 (A000005 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036456.P315112515821829930

noncomputable section

/-- A036456: Numbers k for which exactly 4 applications of A000005 are needed to reach 2.

Offset 1, canonical program `A036456.P315112515821829930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036456 (n : ℕ) : ℤ :=
  (A036456.P315112515821829930.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036963.P11059957244332725726

`eq[2, ∏{e}[A007094(n), #+1]]`
-/

namespace A036963.P11059957244332725726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, (Nat.factorization (f3 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036963.P11059957244332725726

noncomputable section

/-- A036963: Primes with digits (0,...,7) taken as base 8 and converted to base 10.

Offset 1, canonical program `A036963.P11059957244332725726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1054 terms. -/
def A036963 (n : ℕ) : ℤ :=
  (A036963.P11059957244332725726.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1054 terms. -/
def A036963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036964.P16592301467344759646

`eq[1, ∑{e}[A007095(n), #]]`
-/

namespace A036964.P16592301467344759646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036964.P16592301467344759646

noncomputable section

/-- A036964: Primes with digits (0,...,8) taken as base 9 and converted to base 10.

Offset 1, canonical program `A036964.P16592301467344759646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 980 terms. -/
def A036964 (n : ℕ) : ℤ :=
  (A036964.P16592301467344759646.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 980 terms. -/
def A036964.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037198.P4959961532228558436

`eq[A000005(A001065(n+2)), A000005(n+2)]+2`
-/

namespace A037198.P4959961532228558436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001065 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A037198.P4959961532228558436

noncomputable section

/-- A037198: Number of divisors of (sigma(n)-n) = number of divisors of n.

Offset 1, canonical program `A037198.P4959961532228558436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2137 terms. -/
def A037198 (n : ℕ) : ℤ :=
  (A037198.P4959961532228558436.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2137 terms. -/
def A037198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037314.P11971780737559590080

`∑[A120437(n+1)]-A120437(n+1)`
-/

namespace A037314.P11971780737559590080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A120437 (n + 1)

end

end A037314.P11971780737559590080

noncomputable section

/-- A037314: Numbers whose base-3 and base-9 expansions have the same digit sum.

Offset 0, canonical program `A037314.P11971780737559590080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037314 (n : ℕ) : ℤ :=
  A037314.P11971780737559590080.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037350.P2569689792695505337

`eq[A055642(n), A102671(A007095(n))]`
-/

namespace A037350.P2569689792695505337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102671 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037350.P2569689792695505337

noncomputable section

/-- A037350: Numbers whose base-3 and base-9 expansions have no digits in common.

Offset 1, canonical program `A037350.P2569689792695505337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1554 terms. -/
def A037350 (n : ℕ) : ℤ :=
  (A037350.P2569689792695505337.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1554 terms. -/
def A037350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037410.P2759170275717859689

`A033042(comp[A256691(n+1)-1])`
-/

namespace A037410.P2759170275717859689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256691 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A037410.P2759170275717859689

noncomputable section

/-- A037410: Positive numbers having the same set of digits in base 2 and base 5.

Offset 1, canonical program `A037410.P2759170275717859689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9988 terms. -/
def A037410 (n : ℕ) : ℤ :=
  A037410.P2759170275717859689.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9988 terms. -/
def A037410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037479.P5811322619123370596

`A007095(n+1)`
-/

namespace A037479.P5811322619123370596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (n + 1)

end

end A037479.P5811322619123370596

noncomputable section

/-- A037479: a(n)=Sum{d(i)*10^i: i=0,1,...,m}, where Sum{d(i)*9^i: i=0,1,...,m} is the base 9 representation of n.

Offset 1, canonical program `A037479.P5811322619123370596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037479 (n : ℕ) : ℤ :=
  A037479.P5811322619123370596.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037691.P5639222139270324728

`A120741(n+1)-A037740(n+1)`
-/

namespace A037691.P5639222139270324728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120741 (n + 1) - A037740 (n + 1)

end

end A037691.P5639222139270324728

noncomputable section

/-- A037691: Base-7 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,0,3.

Offset 1, canonical program `A037691.P5639222139270324728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037691 (n : ℕ) : ℤ :=
  A037691.P5639222139270324728.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037693.P16096541330953735176

`A037735(n+1)+A037756(n+1)-A037798(n+1)`
-/

namespace A037693.P16096541330953735176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037735 (n + 1) + (A037756 (n + 1) - A037798 (n + 1))

end

end A037693.P16096541330953735176

noncomputable section

/-- A037693: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,0,3.

Offset 1, canonical program `A037693.P16096541330953735176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037693 (n : ℕ) : ℤ :=
  A037693.P16096541330953735176.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037706.P10401356775604242659

`xor(A037755(n+1), A037762(n+1))`
-/

namespace A037706.P10401356775604242659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037755 (n + 1)) (A037762 (n + 1))

end

end A037706.P10401356775604242659

noncomputable section

/-- A037706: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,0,2.

Offset 1, canonical program `A037706.P10401356775604242659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037706 (n : ℕ) : ℤ :=
  A037706.P10401356775604242659.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037726.P10810606024213061310

`A120741(n+1)-A037705(n+1)`
-/

namespace A037726.P10810606024213061310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120741 (n + 1) - A037705 (n + 1)

end

end A037726.P10810606024213061310

noncomputable section

/-- A037726: Base-7 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,3,1.

Offset 1, canonical program `A037726.P10810606024213061310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037726 (n : ℕ) : ℤ :=
  A037726.P10810606024213061310.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037728.P13868725644727566183

`∑[A013708(n)]-A037707(n+1)`
-/

namespace A037728.P13868725644727566183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A037707 (n + 1)

end

end A037728.P13868725644727566183

noncomputable section

/-- A037728: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,3,1.

Offset 1, canonical program `A037728.P13868725644727566183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037728 (n : ℕ) : ℤ :=
  A037728.P13868725644727566183.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037788.P16633097577509408614

`A037753(n+1)+A037767(n+1)-A037739(n+1)`
-/

namespace A037788.P16633097577509408614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037753 (n + 1) + (A037767 (n + 1) - A037739 (n + 1))

end

end A037788.P16633097577509408614

noncomputable section

/-- A037788: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 3,2,0,1.

Offset 1, canonical program `A037788.P16633097577509408614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A037788 (n : ℕ) : ℤ :=
  A037788.P16633097577509408614.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A037788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037852.P11291151360236801937

`A000005(n+1)+A176040(n+1)`
-/

namespace A037852.P11291151360236801937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A176040 (n + 1)

end

end A037852.P11291151360236801937

noncomputable section

/-- A037852: Number of normal subgroups of dihedral group with 2n elements.

Offset 1, canonical program `A037852.P11291151360236801937`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037852 (n : ℕ) : ℤ :=
  A037852.P11291151360236801937.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037852.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037869.P10536282920050209109

`∑{digits}[n+1, A199803(A027868(#))]`
-/

namespace A037869.P10536282920050209109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A199803 (A027868 x).toNat).sum

end

end A037869.P10536282920050209109

noncomputable section

/-- A037869: a(n) = (number of digits <=4)-(number of digits >4) in base 10 representation of n.

Offset 1, canonical program `A037869.P10536282920050209109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037869 (n : ℕ) : ℤ :=
  A037869.P10536282920050209109.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037913.P14316961981388322772

`val(A143051((n+1)²), 11)`
-/

namespace A037913.P14316961981388322772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A143051 ((n + 1) ^ 2)).toNat 11

end

end A037913.P14316961981388322772

noncomputable section

/-- A037913: Number of i such that |d(i) - d(i-1)| = 1, where Sum_{i=0..m} d(i)*10^i is the base-10 representation of n.

Offset 1, canonical program `A037913.P14316961981388322772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037913 (n : ℕ) : ℤ :=
  (A037913.P14316961981388322772.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037952.P12527518621144432041

`∑[A191529(n+1)]`
-/

namespace A037952.P12527518621144432041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037952.P12527518621144432041

noncomputable section

/-- A037952: a(n) = binomial(n, floor((n-1)/2)).

Offset 0, canonical program `A037952.P12527518621144432041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A037952 (n : ℕ) : ℤ :=
  A037952.P12527518621144432041.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A037952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038040.P16512896840577774730

`(n+1)*A000005(n+1)`
-/

namespace A038040.P16512896840577774730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000005 (n + 1)

end

end A038040.P16512896840577774730

noncomputable section

/-- A038040: a(n) = n*d(n), where d(n) = number of divisors of n (A000005).

Offset 1, canonical program `A038040.P16512896840577774730`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038040 (n : ℕ) : ℤ :=
  A038040.P16512896840577774730.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038040.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038139.P92478161767723614

`(A130883(n)*A147650(n+1))%9`
-/

namespace A038139.P92478161767723614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130883 n * A147650 (n + 1)) 9

end

end A038139.P92478161767723614

noncomputable section

/-- A038139: Order of n (mod 9).

Offset 1, canonical program `A038139.P92478161767723614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038139 (n : ℕ) : ℤ :=
  A038139.P92478161767723614.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038457.P7367632969564949406

`A040163(abs(1-∑[n])+1)`
-/

namespace A038457.P7367632969564949406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040163 (|1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)| + 1).toNat

end

end A038457.P7367632969564949406

noncomputable section

/-- A038457: |First digit-last digit| for triangular numbers.

Offset 0, canonical program `A038457.P7367632969564949406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A038457 (n : ℕ) : ℤ :=
  A038457.P7367632969564949406.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A038457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038483.P11163427702840003378

`A033044(eq[32, A131136(n)])`
-/

namespace A038483.P11163427702840003378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131136 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033044 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038483.P11163427702840003378

noncomputable section

/-- A038483: Sums of 4 distinct powers of 7.

Offset 1, canonical program `A038483.P11163427702840003378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. -/
def A038483 (n : ℕ) : ℤ :=
  A038483.P11163427702840003378.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. -/
def A038483.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038838.P4013668275804421176

`eq[1, A067856(n+1)+1]+1`
-/

namespace A038838.P4013668275804421176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A038838.P4013668275804421176

noncomputable section

/-- A038838: Numbers that are divisible by the square of an odd prime.

Offset 1, canonical program `A038838.P4013668275804421176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9463 terms. -/
def A038838 (n : ℕ) : ℤ :=
  (A038838.P4013668275804421176.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9463 terms. -/
def A038838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038879.P8445411459541825881

`∪[A141179(n+1), A141180(n+1)]`
-/

namespace A038879.P8445411459541825881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038879.P8445411459541825881

noncomputable section

/-- A038879: 10 is a square mod p.

Offset 1, canonical program `A038879.P8445411459541825881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038879 (n : ℕ) : ℤ :=
  (A038879.P8445411459541825881.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038885.P1081896548675431260

`∪[A141190(n+1), A141191(n+1)]`
-/

namespace A038885.P1081896548675431260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038885.P1081896548675431260

noncomputable section

/-- A038885: 14 is a square mod p.

Offset 1, canonical program `A038885.P1081896548675431260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038885 (n : ℕ) : ℤ :=
  (A038885.P1081896548675431260.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038893.P16828637796502352315

`∪[A139492(n+1), A141160(n+1)]`
-/

namespace A038893.P16828637796502352315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038893.P16828637796502352315

noncomputable section

/-- A038893: Odd primes p such that 21 is a square mod p.

Offset 1, canonical program `A038893.P16828637796502352315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038893 (n : ℕ) : ℤ :=
  (A038893.P16828637796502352315.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038912.P15475987441087132189

`p?[eq[A175629(n), A226162(2*n)]]`
-/

namespace A038912.P15475987441087132189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175629 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226162 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038912.P15475987441087132189

noncomputable section

/-- A038912: Primes p such that 35 is not a square mod p.

Offset 1, canonical program `A038912.P15475987441087132189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A038912 (n : ℕ) : ℤ :=
  (A038912.P15475987441087132189.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A038912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039011.P18413047402145941160

`eq[A064692(A072960(n+1)), A110592(n)]`
-/

namespace A039011.P18413047402145941160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A072960 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039011.P18413047402145941160

noncomputable section

/-- A039011: Numbers whose base-5 representation has the same number of 1's and 3's.

Offset 1, canonical program `A039011.P18413047402145941160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A039011 (n : ℕ) : ℤ :=
  (A039011.P18413047402145941160.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A039011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039394.P18372244674431872866

`∩[A011540(n+1), A039113(n+1)]`
-/

namespace A039394.P18372244674431872866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039394.P18372244674431872866

noncomputable section

/-- A039394: Numbers whose base-10 representation has the same nonzero number of 0's and 2's.

Offset 1, canonical program `A039394.P18372244674431872866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1382 terms. -/
def A039394 (n : ℕ) : ℤ :=
  (A039394.P18372244674431872866.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1382 terms. -/
def A039394.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039395.P16570160368346491329

`∩[A011533(n+1), A039114(n+1)]`
-/

namespace A039395.P16570160368346491329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039395.P16570160368346491329

noncomputable section

/-- A039395: Numbers whose base-10 representation has the same nonzero number of 0's and 3's.

Offset 1, canonical program `A039395.P16570160368346491329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1382 terms. -/
def A039395 (n : ℕ) : ℤ :=
  (A039395.P16570160368346491329.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1382 terms. -/
def A039395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039397.P9739263432564952466

`∩[A011535(n+1), A039116(n+1)]`
-/

namespace A039397.P9739263432564952466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039397.P9739263432564952466

noncomputable section

/-- A039397: Numbers whose base-10 representation has the same nonzero number of 0's and 5's.

Offset 1, canonical program `A039397.P9739263432564952466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1382 terms. -/
def A039397 (n : ℕ) : ℤ :=
  (A039397.P9739263432564952466.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1382 terms. -/
def A039397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039398.P1446720734037677552

`∩[A011536(n+1), A039117(n+1)]`
-/

namespace A039398.P1446720734037677552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039398.P1446720734037677552

noncomputable section

/-- A039398: Numbers whose base-10 representation has the same nonzero number of 0's and 6's.

Offset 1, canonical program `A039398.P1446720734037677552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1381 terms. -/
def A039398 (n : ℕ) : ℤ :=
  (A039398.P1446720734037677552.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1381 terms. -/
def A039398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039402.P8415178400949058947

`∩[A011531(n+1), A039120(n+1)]`
-/

namespace A039402.P8415178400949058947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039402.P8415178400949058947

noncomputable section

/-- A039402: Numbers whose base-10 representation has the same nonzero number of 1's and 2's.

Offset 1, canonical program `A039402.P8415178400949058947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2265 terms. -/
def A039402 (n : ℕ) : ℤ :=
  (A039402.P8415178400949058947.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2265 terms. -/
def A039402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039403.P15740295842774305992

`∩[A011533(n+1), A039121(n+1)]`
-/

namespace A039403.P15740295842774305992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039403.P15740295842774305992

noncomputable section

/-- A039403: Numbers whose base-10 representation has the same nonzero number of 1's and 3's.

Offset 1, canonical program `A039403.P15740295842774305992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3542 terms. -/
def A039403 (n : ℕ) : ℤ :=
  (A039403.P15740295842774305992.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3542 terms. -/
def A039403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039405.P17652400312243576433

`∩[A011535(n+1), A039123(n+1)]`
-/

namespace A039405.P17652400312243576433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039405.P17652400312243576433

noncomputable section

/-- A039405: Numbers whose base-10 representation has the same nonzero number of 1's and 5's.

Offset 1, canonical program `A039405.P17652400312243576433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3542 terms. -/
def A039405 (n : ℕ) : ℤ :=
  (A039405.P17652400312243576433.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3542 terms. -/
def A039405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039406.P1847135189155810694

`∩[A011536(n+1), A039124(n+1)]`
-/

namespace A039406.P1847135189155810694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039406.P1847135189155810694

noncomputable section

/-- A039406: Numbers whose base-10 representation has the same nonzero number of 1's and 6's.

Offset 1, canonical program `A039406.P1847135189155810694`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3353 terms. -/
def A039406 (n : ℕ) : ℤ :=
  (A039406.P1847135189155810694.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3353 terms. -/
def A039406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039407.P3529670576331872352

`∩[A011537(n+1), A039125(n+1)]`
-/

namespace A039407.P3529670576331872352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039407.P3529670576331872352

noncomputable section

/-- A039407: Numbers whose base-10 representation has the same nonzero number of 1's and 7's.

Offset 1, canonical program `A039407.P3529670576331872352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3353 terms. -/
def A039407 (n : ℕ) : ℤ :=
  (A039407.P3529670576331872352.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3353 terms. -/
def A039407.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039408.P8171368045936077793

`∩[A011538(n+1), A039126(n+1)]`
-/

namespace A039408.P8171368045936077793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039408.P8171368045936077793

noncomputable section

/-- A039408: Numbers whose base-10 representation has the same nonzero number of 1's and 8's.

Offset 1, canonical program `A039408.P8171368045936077793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3352 terms. -/
def A039408 (n : ℕ) : ℤ :=
  (A039408.P8171368045936077793.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3352 terms. -/
def A039408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039409.P1683326481173403432

`∩[A011531(n+1), A039127(n+1)]`
-/

namespace A039409.P1683326481173403432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039409.P1683326481173403432

noncomputable section

/-- A039409: Numbers whose base-10 representation has the same nonzero number of 1's and 9's.

Offset 1, canonical program `A039409.P1683326481173403432`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1843 terms. -/
def A039409 (n : ℕ) : ℤ :=
  (A039409.P1683326481173403432.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1843 terms. -/
def A039409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039410.P9900228273809720722

`∩[A011533(n+1), A039128(n+1)]`
-/

namespace A039410.P9900228273809720722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039410.P9900228273809720722

noncomputable section

/-- A039410: Numbers whose base-10 representation has the same nonzero number of 2's and 3's.

Offset 1, canonical program `A039410.P9900228273809720722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1808 terms. -/
def A039410 (n : ℕ) : ℤ :=
  (A039410.P9900228273809720722.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1808 terms. -/
def A039410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039412.P2176753813578698199

`∩[A011535(n+1), A039130(n+1)]`
-/

namespace A039412.P2176753813578698199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039412.P2176753813578698199

noncomputable section

/-- A039412: Numbers whose base-10 representation has the same nonzero number of 2's and 5's.

Offset 1, canonical program `A039412.P2176753813578698199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1808 terms. -/
def A039412 (n : ℕ) : ℤ :=
  (A039412.P2176753813578698199.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1808 terms. -/
def A039412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039413.P6162690583686503902

`∩[A011536(n+1), A039131(n+1)]`
-/

namespace A039413.P6162690583686503902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039413.P6162690583686503902

noncomputable section

/-- A039413: Numbers whose base-10 representation has the same nonzero number of 2's and 6's.

Offset 1, canonical program `A039413.P6162690583686503902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1808 terms. -/
def A039413 (n : ℕ) : ℤ :=
  (A039413.P6162690583686503902.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1808 terms. -/
def A039413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039414.P14470572216190610609

`∩[A011537(n+1), A039132(n+1)]`
-/

namespace A039414.P14470572216190610609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039414.P14470572216190610609

noncomputable section

/-- A039414: Numbers whose base-10 representation has the same nonzero number of 2's and 7's.

Offset 1, canonical program `A039414.P14470572216190610609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1808 terms. -/
def A039414 (n : ℕ) : ℤ :=
  (A039414.P14470572216190610609.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1808 terms. -/
def A039414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039415.P17237837966761847788

`∩[A011538(n+1), A039133(n+1)]`
-/

namespace A039415.P17237837966761847788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039415.P17237837966761847788

noncomputable section

/-- A039415: Numbers whose base-10 representation has the same nonzero number of 2's and 8's.

Offset 1, canonical program `A039415.P17237837966761847788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1808 terms. -/
def A039415 (n : ℕ) : ℤ :=
  (A039415.P17237837966761847788.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1808 terms. -/
def A039415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039418.P1366118184551076561

`∩[A011535(n+1), A039136(n+1)]`
-/

namespace A039418.P1366118184551076561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039418.P1366118184551076561

noncomputable section

/-- A039418: Numbers whose base-10 representation has the same nonzero number of 3's and 5's.

Offset 1, canonical program `A039418.P1366118184551076561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1572 terms. -/
def A039418 (n : ℕ) : ℤ :=
  (A039418.P1366118184551076561.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1572 terms. -/
def A039418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039419.P7462469073655692770

`∩[A011536(n+1), A039137(n+1)]`
-/

namespace A039419.P7462469073655692770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039419.P7462469073655692770

noncomputable section

/-- A039419: Numbers whose base-10 representation has the same nonzero number of 3's and 6's.

Offset 1, canonical program `A039419.P7462469073655692770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1572 terms. -/
def A039419 (n : ℕ) : ℤ :=
  (A039419.P7462469073655692770.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1572 terms. -/
def A039419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039420.P17081233854631710980

`∩[A011533(n+1), A039138(n+1)]`
-/

namespace A039420.P17081233854631710980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039420.P17081233854631710980

noncomputable section

/-- A039420: Numbers whose base-10 representation has the same nonzero number of 3's and 7's.

Offset 1, canonical program `A039420.P17081233854631710980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1571 terms. -/
def A039420 (n : ℕ) : ℤ :=
  (A039420.P17081233854631710980.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1571 terms. -/
def A039420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039421.P10239379647912935684

`∩[A011533(n+1), A039139(n+1)]`
-/

namespace A039421.P10239379647912935684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039421.P10239379647912935684

noncomputable section

/-- A039421: Numbers whose base-10 representation has the same nonzero number of 3's and 8's.

Offset 1, canonical program `A039421.P10239379647912935684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1571 terms. -/
def A039421 (n : ℕ) : ℤ :=
  (A039421.P10239379647912935684.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1571 terms. -/
def A039421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039422.P3003242442274941271

`∩[A011533(n+1), A039140(n+1)]`
-/

namespace A039422.P3003242442274941271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039422.P3003242442274941271

noncomputable section

/-- A039422: Numbers whose base-10 representation has the same nonzero number of 3's and 9's.

Offset 1, canonical program `A039422.P3003242442274941271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1571 terms. -/
def A039422 (n : ℕ) : ℤ :=
  (A039422.P3003242442274941271.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1571 terms. -/
def A039422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039430.P7399236189774878461

`∩[A011535(n+1), A039148(n+1)]`
-/

namespace A039430.P7399236189774878461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039430.P7399236189774878461

noncomputable section

/-- A039430: Numbers whose base-10 representation has the same nonzero number of 5's and 8's.

Offset 1, canonical program `A039430.P7399236189774878461`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1556 terms. -/
def A039430 (n : ℕ) : ℤ :=
  (A039430.P7399236189774878461.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1556 terms. -/
def A039430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039432.P9652476414258714487

`∩[A011536(n+1), A039150(n+1)]`
-/

namespace A039432.P9652476414258714487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039432.P9652476414258714487

noncomputable section

/-- A039432: Numbers whose base-10 representation has the same nonzero number of 6's and 7's.

Offset 1, canonical program `A039432.P9652476414258714487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1556 terms. -/
def A039432 (n : ℕ) : ℤ :=
  (A039432.P9652476414258714487.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1556 terms. -/
def A039432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039434.P5326896242687316667

`∩[A011536(n+1), A039152(n+1)]`
-/

namespace A039434.P5326896242687316667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039434.P5326896242687316667

noncomputable section

/-- A039434: Numbers whose base-10 representation has the same nonzero number of 6's and 9's.

Offset 1, canonical program `A039434.P5326896242687316667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1555 terms. -/
def A039434 (n : ℕ) : ℤ :=
  (A039434.P5326896242687316667.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1555 terms. -/
def A039434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039700.P14322332737517484424

`eq[val(n+1, 3), A001221(n+1)]+1`
-/

namespace A039700.P14322332737517484424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A039700.P14322332737517484424

noncomputable section

/-- A039700: Numbers k such that the largest power of 3 dividing k equals 3^omega(k).

Offset 1, canonical program `A039700.P14322332737517484424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1492 terms. -/
def A039700 (n : ℕ) : ℤ :=
  (A039700.P14322332737517484424.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1492 terms. -/
def A039700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039727.P15659781134038850177

`((n+1)*A050821(A028310(n)))%A005408(n)`
-/

namespace A039727.P15659781134038850177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * A050821 (A028310 n).toNat) (A005408 n)

end

end A039727.P15659781134038850177

noncomputable section

/-- A039727: [ Even numbers in the sequence generated by b(n)=|b(n-1)+2b(n-2)-n| ], divided by 2.

Offset 1, canonical program `A039727.P15659781134038850177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039727 (n : ℕ) : ℤ :=
  A039727.P15659781134038850177.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039728.P3387211495281761254

`A050823(n+1)/2`
-/

namespace A039728.P3387211495281761254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050823 (n + 1) : ℚ) / 2

end

end A039728.P3387211495281761254

noncomputable section

/-- A039728: (Even numbers in Hofstadter Q-sequence)/2.

Offset 1, canonical program `A039728.P3387211495281761254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039728 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A039728.P3387211495281761254.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039729.P6700865526674361114

`A050827(n+1)/2`
-/

namespace A039729.P6700865526674361114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050827 (n + 1) : ℚ) / 2

end

end A039729.P6700865526674361114

noncomputable section

/-- A039729: [ Even numbers in the sequence generated by a(n)=a(a(n-2))+a(n-a(n-2)) ], divided by 2.

Offset 1, canonical program `A039729.P6700865526674361114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039729 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A039729.P6700865526674361114.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039769.P9411596185916552793

`lt[1, A318828(n+2)%(n+1)]+2`
-/

namespace A039769.P9411596185916552793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318828 (n + 2)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A039769.P9411596185916552793

noncomputable section

/-- A039769: Composite integers k such that gcd(phi(k), k - 1) > 1.

Offset 1, canonical program `A039769.P9411596185916552793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039769 (n : ℕ) : ℤ :=
  (A039769.P9411596185916552793.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039985.P12648521438215909424

`xor(A011655(n), A039983(n+1))`
-/

namespace A039985.P12648521438215909424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011655 n) (A039983 (n + 1))

end

end A039985.P12648521438215909424

noncomputable section

/-- A039985: An example of a d-perfect sequence.

Offset 1, canonical program `A039985.P12648521438215909424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039985 (n : ℕ) : ℤ :=
  A039985.P12648521438215909424.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043290.P10258835075994519670

`val(A309002(n+1), 17)!`
-/

namespace A043290.P10258835075994519670
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.valuation (A309002 (n + 1)).toNat 17)

end

end A043290.P10258835075994519670

noncomputable section

/-- A043290: Maximal run length in base 16 representation of n.

Offset 1, canonical program `A043290.P10258835075994519670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A043290 (n : ℕ) : ℤ :=
  (A043290.P10258835075994519670.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A043290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043305.P4009443292463290629

`record[(n+1)*A361465(n+1)]`
-/

namespace A043305.P4009443292463290629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A361465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043305.P4009443292463290629

noncomputable section

/-- A043305: Numbers k such that the numerator of the sum of the reciprocals of the divisors of k (=A017665(k)) is a power of 2.

Offset 1, canonical program `A043305.P4009443292463290629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A043305 (n : ℕ) : ℤ :=
  A043305.P4009443292463290629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A043305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043397.P4464241023056186748

`eq[1, A268643(A307913(n+1))]`
-/

namespace A043397.P4464241023056186748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A307913 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043397.P4464241023056186748

noncomputable section

/-- A043397: Numbers whose base-7 representation contains exactly one 1.

Offset 1, canonical program `A043397.P4464241023056186748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 865 terms. -/
def A043397 (n : ℕ) : ℤ :=
  (A043397.P4464241023056186748.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 865 terms. -/
def A043397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043398.P15921891173828809090

`eq[2, A268643(A307913(n+1))]`
-/

namespace A043398.P15921891173828809090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A307913 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043398.P15921891173828809090

noncomputable section

/-- A043398: Numbers whose base-7 representation contains exactly two 1's.

Offset 1, canonical program `A043398.P15921891173828809090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A043398 (n : ℕ) : ℤ :=
  (A043398.P15921891173828809090.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A043398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043401.P1017218747689233538

`eq[1, A316863(A307913(n+1))]`
-/

namespace A043401.P1017218747689233538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A307913 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043401.P1017218747689233538

noncomputable section

/-- A043401: Numbers whose base-7 representation contains exactly one 2.

Offset 1, canonical program `A043401.P1017218747689233538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 864 terms. -/
def A043401 (n : ℕ) : ℤ :=
  (A043401.P1017218747689233538.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 864 terms. -/
def A043401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043402.P12936859337194893635

`eq[2, A316863(A307913(n+1))]`
-/

namespace A043402.P12936859337194893635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A307913 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043402.P12936859337194893635

noncomputable section

/-- A043402: Numbers whose base-7 representation contains exactly two 2's.

Offset 1, canonical program `A043402.P12936859337194893635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A043402 (n : ℕ) : ℤ :=
  (A043402.P12936859337194893635.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A043402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043405.P10085483638679098183

`eq[1, A316865(A307913(n+1))]`
-/

namespace A043405.P10085483638679098183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 (A307913 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043405.P10085483638679098183

noncomputable section

/-- A043405: Numbers whose base-7 representation contains exactly one 3.

Offset 1, canonical program `A043405.P10085483638679098183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 864 terms. -/
def A043405 (n : ℕ) : ℤ :=
  (A043405.P10085483638679098183.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 864 terms. -/
def A043405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043406.P15114839911339223726

`eq[2, A316865(A307913(n+1))]`
-/

namespace A043406.P15114839911339223726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 (A307913 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043406.P15114839911339223726

noncomputable section

/-- A043406: Numbers whose base-7 representation contains exactly two 3's.

Offset 1, canonical program `A043406.P15114839911339223726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A043406 (n : ℕ) : ℤ :=
  (A043406.P15114839911339223726.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A043406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043434.P9059207754723185637

`eq[2, A316864(A007094(n))]`
-/

namespace A043434.P9059207754723185637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043434.P9059207754723185637

noncomputable section

/-- A043434: Numbers having two 3's in base 8.

Offset 1, canonical program `A043434.P9059207754723185637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. -/
def A043434 (n : ℕ) : ℤ :=
  (A043434.P9059207754723185637.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. -/
def A043434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043437.P12782922583909026684

`eq[1, A316865(A007094(n))]`
-/

namespace A043437.P12782922583909026684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043437.P12782922583909026684

noncomputable section

/-- A043437: Numbers having one 4 in base 8.

Offset 1, canonical program `A043437.P12782922583909026684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1372 terms. -/
def A043437 (n : ℕ) : ℤ :=
  (A043437.P12782922583909026684.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1372 terms. -/
def A043437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043441.P6379859131163105572

`eq[1, A316866(A007094(n))]`
-/

namespace A043441.P6379859131163105572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043441.P6379859131163105572

noncomputable section

/-- A043441: Numbers having one 5 in base 8.

Offset 1, canonical program `A043441.P6379859131163105572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1372 terms. -/
def A043441 (n : ℕ) : ℤ :=
  (A043441.P6379859131163105572.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1372 terms. -/
def A043441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043445.P5603443380075508067

`eq[1, A316867(A007094(n))]`
-/

namespace A043445.P5603443380075508067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043445.P5603443380075508067

noncomputable section

/-- A043445: Numbers having exactly one 6 in base 8.

Offset 1, canonical program `A043445.P5603443380075508067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1372 terms. -/
def A043445 (n : ℕ) : ℤ :=
  (A043445.P5603443380075508067.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1372 terms. -/
def A043445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043450.P5047331127486138788

`eq[2, A102679(A007094(n))]`
-/

namespace A043450.P5047331127486138788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043450.P5047331127486138788

noncomputable section

/-- A043450: Numbers having two 7's in base 8.

Offset 1, canonical program `A043450.P5047331127486138788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. -/
def A043450 (n : ℕ) : ℤ :=
  (A043450.P5047331127486138788.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. -/
def A043450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043453.P3959600562205998710

`eq[A055641(A007095(n)), A057427(n)]`
-/

namespace A043453.P3959600562205998710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A007095 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043453.P3959600562205998710

noncomputable section

/-- A043453: Numbers having one 0 in base 9.

Offset 1, canonical program `A043453.P3959600562205998710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1672 terms. -/
def A043453 (n : ℕ) : ℤ :=
  (A043453.P3959600562205998710.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1672 terms. -/
def A043453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043466.P4392991474352702089

`eq[2, A316864(A007095(n))]`
-/

namespace A043466.P4392991474352702089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043466.P4392991474352702089

noncomputable section

/-- A043466: Numbers having two 3's in base 9.

Offset 1, canonical program `A043466.P4392991474352702089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 384 terms. -/
def A043466 (n : ℕ) : ℤ :=
  (A043466.P4392991474352702089.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 384 terms. -/
def A043466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043469.P1102294554062349445

`eq[1, A316865(A007095(n))]`
-/

namespace A043469.P1102294554062349445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043469.P1102294554062349445

noncomputable section

/-- A043469: Numbers having one 4 in base 9.

Offset 1, canonical program `A043469.P1102294554062349445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A043469 (n : ℕ) : ℤ :=
  (A043469.P1102294554062349445.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A043469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043473.P2283782173635327789

`eq[1, A316866(A007095(n))]`
-/

namespace A043473.P2283782173635327789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043473.P2283782173635327789

noncomputable section

/-- A043473: Numbers having exactly one 5 in base 9.

Offset 1, canonical program `A043473.P2283782173635327789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A043473 (n : ℕ) : ℤ :=
  (A043473.P2283782173635327789.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A043473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043481.P16324422325216548464

`eq[1, A316868(A007095(n))]`
-/

namespace A043481.P16324422325216548464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043481.P16324422325216548464

noncomputable section

/-- A043481: Numbers having one 7 in base 9.

Offset 1, canonical program `A043481.P16324422325216548464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A043481 (n : ℕ) : ℤ :=
  (A043481.P16324422325216548464.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A043481.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043509.P6603774125387812743

`eq[A008461(n+1), A316866(n)]`
-/

namespace A043509.P6603774125387812743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043509.P6603774125387812743

noncomputable section

/-- A043509: Numbers having exactly one 5 in base 10.

Offset 1, canonical program `A043509.P6603774125387812743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2916 terms. -/
def A043509 (n : ℕ) : ℤ :=
  (A043509.P6603774125387812743.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2916 terms. -/
def A043509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043513.P16611777798555394452

`eq[A008461(n+1), A316867(n)]`
-/

namespace A043513.P16611777798555394452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043513.P16611777798555394452

noncomputable section

/-- A043513: Numbers having one 6 in base 10.

Offset 1, canonical program `A043513.P16611777798555394452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2916 terms. -/
def A043513 (n : ℕ) : ℤ :=
  (A043513.P16611777798555394452.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2916 terms. -/
def A043513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043514.P17552009662386232543

`eq[2, A316864(A061601(n))]`
-/

namespace A043514.P17552009662386232543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A061601 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043514.P17552009662386232543

noncomputable section

/-- A043514: Numbers having two 6's in base 10.

Offset 1, canonical program `A043514.P17552009662386232543`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A043514 (n : ℕ) : ℤ :=
  (A043514.P17552009662386232543.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A043514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043518.P17478239837040593349

`eq[2, A316863(A061601(n))]`
-/

namespace A043518.P17478239837040593349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A061601 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043518.P17478239837040593349

noncomputable section

/-- A043518: Numbers having two 7's in base 10.

Offset 1, canonical program `A043518.P17478239837040593349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A043518 (n : ℕ) : ℤ :=
  (A043518.P17478239837040593349.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A043518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045087.P3584374173035891200

`A023709(eq[2, A062756(n)]+1)`
-/

namespace A045087.P3584374173035891200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A045087.P3584374173035891200

noncomputable section

/-- A045087: Numbers whose base-4 representation contains no 1's and exactly two 2's.

Offset 1, canonical program `A045087.P3584374173035891200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2304 terms. -/
def A045087 (n : ℕ) : ℤ :=
  A045087.P3584374173035891200.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2304 terms. -/
def A045087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045119.P11400290046664927110

`A023717(eq[2, A062756(n)])`
-/

namespace A045119.P11400290046664927110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045119.P11400290046664927110

noncomputable section

/-- A045119: Numbers whose base-4 representation contains exactly two 1's and no 3's.

Offset 1, canonical program `A045119.P11400290046664927110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2304 terms. -/
def A045119 (n : ℕ) : ℤ :=
  A045119.P11400290046664927110.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2304 terms. -/
def A045119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045377.P3285065259095593402

`∪[A045392(n+1), A045464(n+1)]`
-/

namespace A045377.P3285065259095593402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045377.P3285065259095593402

noncomputable section

/-- A045377: Primes congruent to {0, 2, 6} mod 7.

Offset 1, canonical program `A045377.P3285065259095593402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045377 (n : ℕ) : ℤ :=
  (A045377.P3285065259095593402.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045387.P7630780652864986613

`A045374((n+1)%(2*n+1)+1)`
-/

namespace A045387.P7630780652864986613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045374 ((n + 1) % (2 * n + 1) + 1)

end

end A045387.P7630780652864986613

noncomputable section

/-- A045387: Primes congruent to {2, 4} mod 7.

Offset 1, canonical program `A045387.P7630780652864986613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045387 (n : ℕ) : ℤ :=
  A045387.P7630780652864986613.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045459.P13155566144370101843

`∪[A045463(n+1), A045471(n+1)]`
-/

namespace A045459.P13155566144370101843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045463 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045459.P13155566144370101843

noncomputable section

/-- A045459: Primes congruent to {0, 1, 4, 6} mod 7.

Offset 1, canonical program `A045459.P13155566144370101843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045459 (n : ℕ) : ℤ :=
  (A045459.P13155566144370101843.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045460.P779687424357472890

`∪[A045471(n+1), A045464(n+1)]`
-/

namespace A045460.P779687424357472890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045460.P779687424357472890

noncomputable section

/-- A045460: Primes congruent to {0, 4, 6} mod 7.

Offset 1, canonical program `A045460.P779687424357472890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045460 (n : ℕ) : ℤ :=
  (A045460.P779687424357472890.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045532.P6946035463198391959

`(n+1)*10^(A004216(A000040(n+1))+1)+A000040(n+1)`
-/

namespace A045532.P6946035463198391959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (10 : ℚ) ^ (A004216 (A000040 (n + 1)).toNat + 1 : ℤ) + (A000040 (n + 1) : ℚ)

end

end A045532.P6946035463198391959

noncomputable section

/-- A045532: Concatenate n with n-th prime.

Offset 1, canonical program `A045532.P6946035463198391959`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004216, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A045532 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A045532.P6946035463198391959.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004216, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A045532.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A045694.P7872206853554572603

`∑{d}[n+1, A019308(#-1)*A154269((n+1)/#)]`
-/

namespace A045694.P7872206853554572603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A019308 (d - 1) * A154269 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A045694.P7872206853554572603

noncomputable section

/-- A045694: Number of ternary words of length n (beginning with 0) with autocorrelation function 2^(n-1).

Offset 1, canonical program `A045694.P7872206853554572603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A045694 (n : ℕ) : ℤ :=
  A045694.P7872206853554572603.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A045694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045749.P16244404807237622354

`comp[A187571(n+1)]`
-/

namespace A045749.P16244404807237622354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A045749.P16244404807237622354

noncomputable section

/-- A045749: Extension of Beatty sequence; complement of A045750.

Offset 0, canonical program `A045749.P16244404807237622354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045749 (n : ℕ) : ℤ :=
  (A045749.P16244404807237622354.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045765.P13008518942715425430

`comp[1-A000005(n+1)+n]`
-/

namespace A045765.P13008518942715425430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000005 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A045765.P13008518942715425430

noncomputable section

/-- A045765: k - d(k) never takes these values, where d(k) = A000005(k).

Offset 1, canonical program `A045765.P13008518942715425430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045765 (n : ℕ) : ℤ :=
  (A045765.P13008518942715425430.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045803.P1981501651766823381

`A045800(n+1)+A045807(n+1)-A045809(n+2)`
-/

namespace A045803.P1981501651766823381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045800 (n + 1) + (A045807 (n + 1) - A045809 (n + 2))

end

end A045803.P1981501651766823381

noncomputable section

/-- A045803: 3-ish numbers (end in 17, 19, 31, 33).

Offset 1, canonical program `A045803.P1981501651766823381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045803 (n : ℕ) : ℤ :=
  A045803.P1981501651766823381.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045901.P13923899749826472928

`A020703(A170950(n+1))`
-/

namespace A045901.P13923899749826472928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A170950 (n + 1)).toNat

end

end A045901.P13923899749826472928

noncomputable section

/-- A045901: Group the natural numbers into blocks: B_1 = 1, B_2 = 2,3,4, B_3 = 5,6,7,8,9, ..., each block ending in a square. Permute each block B_k by beginning with the central term, followed by the transposed symmetric pairs from B_k.

Offset 1, canonical program `A045901.P13923899749826472928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045901 (n : ℕ) : ℤ :=
  A045901.P13923899749826472928.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046100.P13811187242506642601

`lt[A299090(n+1), 3]+1`
-/

namespace A046100.P13811187242506642601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299090 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A046100.P13811187242506642601

noncomputable section

/-- A046100: Biquadratefree numbers: numbers that are not divisible by any 4th power greater than 1.

Offset 1, canonical program `A046100.P13811187242506642601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046100 (n : ℕ) : ℤ :=
  (A046100.P13811187242506642601.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046316.P8314194811840766040

`eq[1, A369058(n+1)]+1`
-/

namespace A046316.P8314194811840766040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369058 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046316.P8314194811840766040

noncomputable section

/-- A046316: Numbers of the form p*q*r where p,q,r are (not necessarily distinct) odd primes.

Offset 1, canonical program `A046316.P8314194811840766040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6529 terms. -/
def A046316 (n : ℕ) : ℤ :=
  (A046316.P8314194811840766040.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6529 terms. -/
def A046316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046470.P11553915186870651729

`2*A028260(n+1)`
-/

namespace A046470.P11553915186870651729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028260 (n + 1)

end

end A046470.P11553915186870651729

noncomputable section

/-- A046470: Even numbers with an odd number of prime factors (counted with multiplicity).

Offset 1, canonical program `A046470.P11553915186870651729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046470 (n : ℕ) : ℤ :=
  A046470.P11553915186870651729.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046640.P10355392584185486359

`A045763(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A046640.P10355392584185486359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045763 (n + 1) + 1

end

end A046640.P10355392584185486359

noncomputable section

/-- A046640: a(n) = A045763(n) + 1.

Offset 1, canonical program `A046640.P10355392584185486359`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045763, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046640 (n : ℕ) : ℤ :=
  A046640.P10355392584185486359.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045763, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046640.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A046687.P16814962762525960109

`eq[1, gcd(n+1, A279363(n+1))]+1`
-/

namespace A046687.P16814962762525960109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A279363 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A046687.P16814962762525960109

noncomputable section

/-- A046687: Numbers k such that k and sum of 4th powers of divisors of k are relatively prime.

Offset 1, canonical program `A046687.P16814962762525960109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4718 terms. -/
def A046687 (n : ℕ) : ℤ :=
  (A046687.P16814962762525960109.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4718 terms. -/
def A046687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046798.P7458873546335195562

`A000005(A000051(n))`
-/

namespace A046798.P7458873546335195562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000051 n).toNat

end

end A046798.P7458873546335195562

noncomputable section

/-- A046798: Number of divisors of 2^n + 1.

Offset 0, canonical program `A046798.P7458873546335195562`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046798 (n : ℕ) : ℤ :=
  A046798.P7458873546335195562.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046798.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046839.P16105332668956259502

`lt[A001158(n+1)%A000005(n+1), 1]+1`
-/

namespace A046839.P16105332668956259502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001158 (n + 1)) (A000005 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A046839.P16105332668956259502

noncomputable section

/-- A046839: Numbers k such that the number of divisors of k divides the sum of cubes of divisors of k.

Offset 1, canonical program `A046839.P16105332668956259502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7812 terms. -/
def A046839 (n : ℕ) : ℤ :=
  (A046839.P16105332668956259502.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7812 terms. -/
def A046839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046840.P11712278196667640381

`eq[0, A001159(n+1)%A000005(n+1)]+1`
-/

namespace A046840.P11712278196667640381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001159 (n + 1)) (A000005 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046840.P11712278196667640381

noncomputable section

/-- A046840: Numbers k such that the number of divisors of k divides the sum of the 4th powers of the divisors of k.

Offset 1, canonical program `A046840.P11712278196667640381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6066 terms. -/
def A046840 (n : ℕ) : ℤ :=
  (A046840.P11712278196667640381.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6066 terms. -/
def A046840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046992.P5723550036857346414

`A002815(n+1)-(n+1)`
-/

namespace A046992.P5723550036857346414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002815 (n + 1) - (n + 1 : ℤ)

end

end A046992.P5723550036857346414

noncomputable section

/-- A046992: a(n) = Sum_{k=1..n} pi(k) (cf. A000720).

Offset 1, canonical program `A046992.P5723550036857346414`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046992 (n : ℕ) : ℤ :=
  A046992.P5723550036857346414.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046992.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A047098.P2815314934957914121

`A321957(n)+2*C(3*n, n)-8^n`
-/

namespace A047098.P2815314934957914121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321957 n + (2 * Nat.choose (3 * n) n : ℤ) - (8 ^ n : ℤ)

end

end A047098.P2815314934957914121

noncomputable section

/-- A047098: a(n) = 2*binomial(3*n, n) - Sum_{k=0..n} binomial(3*n, k).

Offset 0, canonical program `A047098.P2815314934957914121`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321957, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A047098 (n : ℕ) : ℤ :=
  A047098.P2815314934957914121.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321957, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A047098.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A047924.P14531844885665270262

`abs(A288709(n+1)-n)`
-/

namespace A047924.P14531844885665270262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A288709 (n + 1) - (n : ℤ)|

end

end A047924.P14531844885665270262

noncomputable section

/-- A047924: a(n) = B_{A_n+1}+1, where A_n = floor(n*phi) = A000201(n), B_n = floor(n*phi^2) = A001950(n) and phi is the golden ratio.

Offset 0, canonical program `A047924.P14531844885665270262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047924 (n : ℕ) : ℤ :=
  A047924.P14531844885665270262.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048106.P2251062442645378634

`2^(1+A001221(n+1))-A000005(n+1)`
-/

namespace A048106.P2251062442645378634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (1 + A001221 (n + 1) : ℤ) - (A000005 (n + 1) : ℚ)

end

end A048106.P2251062442645378634

noncomputable section

/-- A048106: Number of unitary divisors of n (A034444) - number of non-unitary divisors of n (A048105).

Offset 1, canonical program `A048106.P2251062442645378634`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048106 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048106.P2251062442645378634.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048106.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A048166.P12188423200704413564

`lt[(n+1)%A000005(A007947(n+1)), 1]+1`
-/

namespace A048166.P12188423200704413564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A000005 (A007947 (n + 1)).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A048166.P12188423200704413564

noncomputable section

/-- A048166: Numbers k that are divisible by the number of unitary divisors of k (A034444).

Offset 1, canonical program `A048166.P12188423200704413564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7090 terms. -/
def A048166 (n : ℕ) : ℤ :=
  (A048166.P12188423200704413564.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7090 terms. -/
def A048166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048448.P11536706727464176124

`A000040(n+1)+∑{p}[A158611(n+1), #]`
-/

namespace A048448.P11536706727464176124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ)

end

end A048448.P11536706727464176124

noncomputable section

/-- A048448: a(n) = prime(n-1) + prime(n+1) (assuming prime(i) = 0 for i < 1).

Offset 0, canonical program `A048448.P11536706727464176124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048448 (n : ℕ) : ℤ :=
  A048448.P11536706727464176124.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048691.P12736965295069668205

`A000005(A000290(n+1))`
-/

namespace A048691.P12736965295069668205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000290 (n + 1)).toNat

end

end A048691.P12736965295069668205

noncomputable section

/-- A048691: a(n) = d(n^2), where d(k) = A000005(k) is the number of divisors of k.

Offset 1, canonical program `A048691.P12736965295069668205`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048691 (n : ℕ) : ℤ :=
  A048691.P12736965295069668205.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048691.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048719.P18299439018409905840

`3*A048718(n)`
-/

namespace A048719.P18299439018409905840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A048718 n

end

end A048719.P18299439018409905840

noncomputable section

/-- A048719: Binary expansion matches ((0)*0011)*(0*).

Offset 0, canonical program `A048719.P18299439018409905840`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048718, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048719 (n : ℕ) : ℤ :=
  A048719.P18299439018409905840.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048718, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048719.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A048784.P252615845458894527

`A000005(A000984(n))`
-/

namespace A048784.P252615845458894527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000984 n).toNat

end

end A048784.P252615845458894527

noncomputable section

/-- A048784: a(n) = tau(binomial(2*n,n)), where tau = number of divisors (A000005).

Offset 0, canonical program `A048784.P252615845458894527`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048784 (n : ℕ) : ℤ :=
  A048784.P252615845458894527.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048784.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048865.P11145010694177444749

`A000720(n+1)-A001221(n+1)`
-/

namespace A048865.P11145010694177444749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A001221 (n + 1)

end

end A048865.P11145010694177444749

noncomputable section

/-- A048865: a(n) is the number of primes in the reduced residue system mod n.

Offset 1, canonical program `A048865.P11145010694177444749`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048865 (n : ℕ) : ℤ :=
  A048865.P11145010694177444749.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048865.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A048899.P11859723561859631620

`A066601(5^n)`
-/

namespace A048899.P11859723561859631620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066601 (5 ^ n)

end

end A048899.P11859723561859631620

noncomputable section

/-- A048899: One of the two successive approximations up to 5^n for 5-adic integer sqrt(-1).

Offset 0, canonical program `A048899.P11859723561859631620`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066601, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048899 (n : ℕ) : ℤ :=
  A048899.P11859723561859631620.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066601, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048899.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049234.P3422205690596115663

`A000005(A052147(n+1))`
-/

namespace A049234.P3422205690596115663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A052147 (n + 1)).toNat

end

end A049234.P3422205690596115663

noncomputable section

/-- A049234: Number of divisors of prime(n) + 2.

Offset 1, canonical program `A049234.P3422205690596115663`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052147, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049234 (n : ℕ) : ℤ :=
  A049234.P3422205690596115663.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052147, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049234.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049236.P12657372269658951537

`A001221(A052147(n+1))`
-/

namespace A049236.P12657372269658951537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A052147 (n + 1)).toNat

end

end A049236.P12657372269658951537

noncomputable section

/-- A049236: a(n) is the number of distinct prime factors of prime(n) + 2.

Offset 1, canonical program `A049236.P12657372269658951537`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A052147, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A049236 (n : ℕ) : ℤ :=
  A049236.P12657372269658951537.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A052147, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A049236.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049238.P1185425134299913023

`A000005(A040976(n+2))`
-/

namespace A049238.P1185425134299913023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A040976 (n + 2)).toNat

end

end A049238.P1185425134299913023

noncomputable section

/-- A049238: a(n) is the number of divisors of prime(n) - 2.

Offset 2, canonical program `A049238.P1185425134299913023`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049238 (n : ℕ) : ℤ :=
  A049238.P1185425134299913023.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049238.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049482.P14194032820589337229

`p?[n+1-C(10, A000005(n+1)²)]`
-/

namespace A049482.P14194032820589337229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.choose 10 (A000005 (n + 1) ^ 2).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049482.P14194032820589337229

noncomputable section

/-- A049482: Primes p such that p + 210 is also prime.

Offset 1, canonical program `A049482.P14194032820589337229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3923 terms. -/
def A049482 (n : ℕ) : ℤ :=
  A049482.P14194032820589337229.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3923 terms. -/
def A049482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049509.P18024564109362952829

`A000720(A030432(n+1))`
-/

namespace A049509.P18024564109362952829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A030432 (n + 1)).toNat

end

end A049509.P18024564109362952829

noncomputable section

/-- A049509: Numbers k such that prime(k) == 7 (mod 10).

Offset 1, canonical program `A049509.P18024564109362952829`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030432, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049509 (n : ℕ) : ℤ :=
  A049509.P18024564109362952829.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030432, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049509.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049573.P10186833783548255734

`A158611(A086858(n+5)+n+1)`
-/

namespace A049573.P10186833783548255734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A086858 (n + 5) + (n + 1 : ℤ)).toNat

end

end A049573.P10186833783548255734

noncomputable section

/-- A049573: Primes p such that x^41 = 2 has a solution mod p.

Offset 1, canonical program `A049573.P10186833783548255734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A049573 (n : ℕ) : ℤ :=
  A049573.P10186833783548255734.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A049573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049642.P13855088796741878616

`eq[0, A245656(n+1)]+1`
-/

namespace A049642.P13855088796741878616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245656 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049642.P13855088796741878616

noncomputable section

/-- A049642: Numbers k such that the number of divisors of k does not divide the sum of divisors of k.

Offset 1, canonical program `A049642.P13855088796741878616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3690 terms. -/
def A049642 (n : ℕ) : ℤ :=
  (A049642.P13855088796741878616.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3690 terms. -/
def A049642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049645.P576075873221011945

`lt[A000203(n+1)%A000005(n+1)², 1]+1`
-/

namespace A049645.P576075873221011945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (A000005 (n + 1) ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A049645.P576075873221011945

noncomputable section

/-- A049645: Numbers k such that the square of the number of divisors of k divides the sum of the divisors of k.

Offset 1, canonical program `A049645.P576075873221011945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049645 (n : ℕ) : ℤ :=
  (A049645.P576075873221011945.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049671.P13365479765326664954

`A049672(n)+A000045(n)`
-/

namespace A049671.P13365479765326664954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049672 n + A000045 n

end

end A049671.P13365479765326664954

noncomputable section

/-- A049671: a(n) = (F(n) + F(4*n))/2, where F=A000045 (the Fibonacci sequence).

Offset 0, canonical program `A049671.P13365479765326664954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A049671 (n : ℕ) : ℤ :=
  A049671.P13365479765326664954.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A049671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049766.P13668387565428548660

`A004125(n+1)+A161680(n+1)`
-/

namespace A049766.P13668387565428548660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (n + 1) + A161680 (n + 1)

end

end A049766.P13668387565428548660

noncomputable section

/-- A049766: a(n) = Sum_{k=1..n} T(n,k), array T as in A049765.

Offset 1, canonical program `A049766.P13668387565428548660`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049766 (n : ℕ) : ℤ :=
  A049766.P13668387565428548660.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049766.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049820.P9428372222244335888

`n+1-A000005(n+1)`
-/

namespace A049820.P9428372222244335888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000005 (n + 1)

end

end A049820.P9428372222244335888

noncomputable section

/-- A049820: a(n) = n - d(n), where d(n) is the number of divisors of n (A000005).

Offset 1, canonical program `A049820.P9428372222244335888`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049820 (n : ℕ) : ℤ :=
  A049820.P9428372222244335888.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049820.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050450.P4021675749699126775

`A050999(n+1)-A050453(n+1)`
-/

namespace A050450.P4021675749699126775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050999 (n + 1) - A050453 (n + 1)

end

end A050450.P4021675749699126775

noncomputable section

/-- A050450: a(n) = Sum_{d|n, d=1 mod 4} d^2.

Offset 1, canonical program `A050450.P4021675749699126775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050450 (n : ℕ) : ℤ :=
  A050450.P4021675749699126775.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050451.P9220370011251437069

`A051000(n+1)-A050454(n+1)`
-/

namespace A050451.P9220370011251437069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051000 (n + 1) - A050454 (n + 1)

end

end A050451.P9220370011251437069

noncomputable section

/-- A050451: a(n) = Sum_{d|n, d=1 mod 4} d^3.

Offset 1, canonical program `A050451.P9220370011251437069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050451 (n : ℕ) : ℤ :=
  A050451.P9220370011251437069.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050482.P1462171223400709831

`A004125(A000040(n+1))`
-/

namespace A050482.P1462171223400709831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (A000040 (n + 1)).toNat

end

end A050482.P1462171223400709831

noncomputable section

/-- A050482: Sum of remainders when n-th prime is divided by all preceding integers.

Offset 1, canonical program `A050482.P1462171223400709831`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A050482 (n : ℕ) : ℤ :=
  A050482.P1462171223400709831.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A050482.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A050625.P8966498542950054992

`lt[A055642(n), A051064(n+1)]+1`
-/

namespace A050625.P8966498542950054992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A050625.P8966498542950054992

noncomputable section

/-- A050625: Divisible by 3^k (where k is digit length of a(n)).

Offset 1, canonical program `A050625.P8966498542950054992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A050625 (n : ℕ) : ℤ :=
  (A050625.P8966498542950054992.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A050625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050704.P1369494930655348781

`eq[1, A105700(A075255(n+1))]+1`
-/

namespace A050704.P1369494930655348781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A075255 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A050704.P1369494930655348781

noncomputable section

/-- A050704: Composite numbers k with the property that k minus the sum of the prime factors of k is prime.

Offset 1, canonical program `A050704.P1369494930655348781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1350 terms. -/
def A050704 (n : ℕ) : ℤ :=
  (A050704.P1369494930655348781.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1350 terms. -/
def A050704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051348.P7480873453457337069

`A000045(n+1)/A113176(n+1)`
-/

namespace A051348.P7480873453457337069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) / (A113176 (n + 1) : ℚ)

end

end A051348.P7480873453457337069

noncomputable section

/-- A051348: a(n) = F(n) / Product_{p|n} F(p), where F(k) is k-th Fibonacci number and the p's in product are the distinct primes dividing n.

Offset 1, canonical program `A051348.P7480873453457337069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A051348 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051348.P7480873453457337069.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A051348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051361.P4102761191167575367

`A052387(n)-A256857(n)`
-/

namespace A051361.P4102761191167575367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052387 n - A256857 n

end

end A051361.P4102761191167575367

noncomputable section

/-- A051361: A class of Boolean functions of n variables and rank 3.

Offset 0, canonical program `A051361.P4102761191167575367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051361 (n : ℕ) : ℤ :=
  A051361.P4102761191167575367.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051542.P15319725995359775341

`A051538(n+2)/A051538(n+1)`
-/

namespace A051542.P15319725995359775341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051538 (n + 2) : ℚ) / (A051538 (n + 1) : ℚ)

end

end A051542.P15319725995359775341

noncomputable section

/-- A051542: Quotients of consecutive values of LCM {b(1),...,b(n)}, b() = A000330.

Offset 1, canonical program `A051542.P15319725995359775341`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051538, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051542 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051542.P15319725995359775341.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051538, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051542.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A051638.P12166677434659216956

`1/2*(3*A006047(n)-2^A062756(n))`
-/

namespace A051638.P12166677434659216956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((3 * A006047 n : ℚ) - (2 : ℚ) ^ (A062756 n : ℤ))

end

end A051638.P12166677434659216956

noncomputable section

/-- A051638: a(n) = Sum_{k=0..n} (C(n,k) mod 3).

Offset 0, canonical program `A051638.P12166677434659216956`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006047, A062756, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A051638 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051638.P12166677434659216956.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006047, A062756, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A051638.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A000788.P8338375810879423652

`A083741(n+1)+A136013(n+1)`
-/

namespace A000788.P8338375810879423652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083741 (n + 1) + A136013 (n + 1)

end

end A000788.P8338375810879423652

noncomputable section

/-- A000788: Total number of 1's in binary expansions of 0, ..., n.

Offset 0, canonical program `A000788.P8338375810879423652`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083741, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000788 (n : ℕ) : ℤ :=
  A000788.P8338375810879423652.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083741, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000788.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A002441.P17499156723092439294

`A007094(A000290(n+1))`
-/

namespace A002441.P17499156723092439294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A000290 (n + 1)).toNat

end

end A002441.P17499156723092439294

noncomputable section

/-- A002441: Squares written in base 8.

Offset 1, canonical program `A002441.P17499156723092439294`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007094, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002441 (n : ℕ) : ℤ :=
  A002441.P17499156723092439294.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007094, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002441.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A002442.P13203077275270554307

`A007095(A000290(n+1))`
-/

namespace A002442.P13203077275270554307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A000290 (n + 1)).toNat

end

end A002442.P13203077275270554307

noncomputable section

/-- A002442: Squares written in base 9.

Offset 1, canonical program `A002442.P13203077275270554307`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007095, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002442 (n : ℕ) : ℤ :=
  A002442.P13203077275270554307.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007095, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002442.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A003156.P13416231378439649425

`A079523(n+1)-n`
-/

namespace A003156.P13416231378439649425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079523 (n + 1) - (n : ℤ)

end

end A003156.P13416231378439649425

noncomputable section

/-- A003156: A self-generating sequence (see Comments for definition).

Offset 1, canonical program `A003156.P13416231378439649425`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003156 (n : ℕ) : ℤ :=
  A003156.P13416231378439649425.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003156.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A003157.P4569272790691930079

`A036554(n+1)+n+1`
-/

namespace A003157.P4569272790691930079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1) + (n + 1 : ℤ)

end

end A003157.P4569272790691930079

noncomputable section

/-- A003157: A self-generating sequence (see Comments in A003156 for the definition).

Offset 1, canonical program `A003157.P4569272790691930079`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036554, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003157 (n : ℕ) : ℤ :=
  A003157.P4569272790691930079.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036554, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003157.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A003605.P2942983274760748228

`n+A006166(n)`
-/

namespace A003605.P2942983274760748228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A006166 n

end

end A003605.P2942983274760748228

noncomputable section

/-- A003605: Unique monotonic sequence of nonnegative integers satisfying a(a(n)) = 3n.

Offset 0, canonical program `A003605.P2942983274760748228`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006166, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003605 (n : ℕ) : ℤ :=
  A003605.P2942983274760748228.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006166, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003605.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004428.P8127486929248826252

`floor(A007954(n)^(1/A055642(n)))`
-/

namespace A004428.P8127486929248826252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007954 n : ℝ) ^ (1 / (A055642 n : ℚ) : ℝ)⌋

end

end A004428.P8127486929248826252

noncomputable section

/-- A004428: Geometric mean of digits of n (rounded down).

Offset 0, canonical program `A004428.P8127486929248826252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004428 (n : ℕ) : ℤ :=
  A004428.P8127486929248826252.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004638.P15092359656829141479

`A007094((n+1)^3)`
-/

namespace A004638.P15092359656829141479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 ((n + 1) ^ 3)

end

end A004638.P15092359656829141479

noncomputable section

/-- A004638: Cubes written in base 8.

Offset 1, canonical program `A004638.P15092359656829141479`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007094, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004638 (n : ℕ) : ℤ :=
  A004638.P15092359656829141479.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007094, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004638.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004639.P12073377836634223053

`A007095((n+1)^3)`
-/

namespace A004639.P12073377836634223053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 ((n + 1) ^ 3)

end

end A004639.P12073377836634223053

noncomputable section

/-- A004639: Cubes written in base 9.

Offset 1, canonical program `A004639.P12073377836634223053`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007095, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004639 (n : ℕ) : ℤ :=
  A004639.P12073377836634223053.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007095, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004639.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004682.P15892170561098935702

`A007094(A000040(n+1))`
-/

namespace A004682.P15892170561098935702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A000040 (n + 1)).toNat

end

end A004682.P15892170561098935702

noncomputable section

/-- A004682: Primes written in base 8.

Offset 1, canonical program `A004682.P15892170561098935702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A004682 (n : ℕ) : ℤ :=
  A004682.P15892170561098935702.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A004682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004683.P11169989558280829634

`A007095(eq[1, ∑{e}[n, #]])`
-/

namespace A004683.P11169989558280829634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A004683.P11169989558280829634

noncomputable section

/-- A004683: Primes written in base 9.

Offset 1, canonical program `A004683.P11169989558280829634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A004683 (n : ℕ) : ℤ :=
  A004683.P11169989558280829634.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A004683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007624.P2362214832513877708

`filter[A058080(n+1), A049240(#)]`
-/

namespace A007624.P2362214832513877708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A007624.P2362214832513877708

noncomputable section

/-- A007624: Numbers m such that the product of proper divisors of m = m^k, k>1.

Offset 1, canonical program `A007624.P2362214832513877708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9905 terms. -/
def A007624 (n : ℕ) : ℤ :=
  A007624.P2362214832513877708.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9905 terms. -/
def A007624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008314.P17030209366717782596

`A034868(n)/A000034(A070824(n+1))`
-/

namespace A008314.P17030209366717782596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034868 n : ℚ) / (A000034 (A070824 (n + 1)).toNat : ℚ)

end

end A008314.P17030209366717782596

noncomputable section

/-- A008314: Irregular triangle read by rows: one half of the coefficients of the expansion of (2*x)^n in terms of Chebyshev T-polynomials.

Offset 0, canonical program `A008314.P17030209366717782596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008314 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A008314.P17030209366717782596.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008315.P15103667333557069867

`2*A034868(n)-A014462(n+1)`
-/

namespace A008315.P15103667333557069867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034868 n - A014462 (n + 1)

end

end A008315.P15103667333557069867

noncomputable section

/-- A008315: Catalan triangle read by rows. Also triangle of expansions of powers of x in terms of Chebyshev polynomials U_n(x).

Offset 0, canonical program `A008315.P15103667333557069867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008315 (n : ℕ) : ℤ :=
  A008315.P15103667333557069867.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011532.P8211375854146369303

`comp[A052404(n+1)]`
-/

namespace A011532.P8211375854146369303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A011532.P8211375854146369303

noncomputable section

/-- A011532: Numbers that contain a 2.

Offset 1, canonical program `A011532.P8211375854146369303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5751 terms. -/
def A011532 (n : ℕ) : ℤ :=
  (A011532.P8211375854146369303.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5751 terms. -/
def A011532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013597.P2064454081418839404

`A013632(2^n)`
-/

namespace A013597.P2064454081418839404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (2 ^ n)

end

end A013597.P2064454081418839404

noncomputable section

/-- A013597: a(n) = nextprime(2^n) - 2^n.

Offset 0, canonical program `A013597.P2064454081418839404`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013632, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A013597 (n : ℕ) : ℤ :=
  A013597.P2064454081418839404.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013632, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A013597.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014243.P4267779412180644665

`A000032(n+2)-A057854(n+1)`
-/

namespace A014243.P4267779412180644665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 2) - A057854 (n + 1)

end

end A014243.P4267779412180644665

noncomputable section

/-- A014243: a(n) = ((n+1)-st Lucas number) - (n-th non-Lucas number).

Offset 1, canonical program `A014243.P4267779412180644665`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057854, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014243 (n : ℕ) : ℤ :=
  A014243.P4267779412180644665.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057854, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014243.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014685.P5961631929682614758

`1-Δ[A065357(n)/2]+n`
-/

namespace A014685.P5961631929682614758
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065357 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n) + (n : ℚ)

end

end A014685.P5961631929682614758

noncomputable section

/-- A014685: In sequence of positive integers add 1 to first prime and subtract 1 from 2nd prime; add 1 to 3rd prime and subtract 1 from 4th prime and so on.

Offset 1, canonical program `A014685.P5961631929682614758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014685 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A014685.P5961631929682614758.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018824.P6282990863347909248

`A047700(n+8)`
-/

namespace A018824.P6282990863347909248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047700 (n + 8)

end

end A018824.P6282990863347909248

noncomputable section

/-- A018824: n is the sum of k nonzero squares for all 5 <= k <= n-14 (contains all integers >= 19 except 33).

Offset 1, canonical program `A018824.P6282990863347909248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. -/
def A018824 (n : ℕ) : ℤ :=
  A018824.P6282990863347909248.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. -/
def A018824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023162.P291127662282880267

`eq[n, A132634(n+1)%(n+1)]+1`
-/

namespace A023162.P291127662282880267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132634 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A023162.P291127662282880267

noncomputable section

/-- A023162: Numbers k such that F(k) == -1 (mod k), where F(n) = A000045(n) is the n-th Fibonacci number.

Offset 1, canonical program `A023162.P291127662282880267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1767 terms. -/
def A023162 (n : ℕ) : ℤ :=
  (A023162.P291127662282880267.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1767 terms. -/
def A023162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023217.P2024308431007413825

`p?[floor(A030432(n+1)/5)]`
-/

namespace A023217.P2024308431007413825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030432 (n + 1) : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023217.P2024308431007413825

noncomputable section

/-- A023217: Primes p such that 5*p + 2 is also prime.

Offset 1, canonical program `A023217.P2024308431007413825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9573 terms. -/
def A023217 (n : ℕ) : ℤ :=
  A023217.P2024308431007413825.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9573 terms. -/
def A023217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023239.P3515851609114574213

`p?[floor(A030432(n+1)/10)]`
-/

namespace A023239.P3515851609114574213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030432 (n + 1) : ℚ) / 10⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023239.P3515851609114574213

noncomputable section

/-- A023239: Primes p such that 10*p + 7 is also prime.

Offset 1, canonical program `A023239.P3515851609114574213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6997 terms. -/
def A023239 (n : ℕ) : ℤ :=
  A023239.P3515851609114574213.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6997 terms. -/
def A023239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023807.P955337341818787670

`lt[A247555(2*n), A087508(A109048(9*n+14))]`
-/

namespace A023807.P955337341818787670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247555 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087508 (A109048 (9 * n + 14)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023807.P955337341818787670

noncomputable section

/-- A023807: Xenodromes: all digits in base 13 are different.

Offset 1, canonical program `A023807.P955337341818787670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A023807 (n : ℕ) : ℤ :=
  (A023807.P955337341818787670.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A023807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024930.P12887729101472218413

`A093005(n+1)-A078471(n+1)`
-/

namespace A024930.P12887729101472218413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093005 (n + 1) - A078471 (n + 1)

end

end A024930.P12887729101472218413

noncomputable section

/-- A024930: a(n) = sum of remainders of n mod 1,3,5,...,2k-1, where k = [ (n+1)/2 ].

Offset 1, canonical program `A024930.P12887729101472218413`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078471, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024930 (n : ℕ) : ℤ :=
  A024930.P12887729101472218413.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078471, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024930.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A029628.P6623095559692305680

`A034868(n)+2*A014462(n+1)`
-/

namespace A029628.P6623095559692305680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034868 n + 2 * A014462 (n + 1)

end

end A029628.P6623095559692305680

noncomputable section

/-- A029628: Numbers to left of central numbers of the (3,2)-Pascal triangle A029618.

Offset 0, canonical program `A029628.P6623095559692305680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029628 (n : ℕ) : ℤ :=
  A029628.P6623095559692305680.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029644.P14451125049666601969

`2*A014462(n+1)-A034868(n)`
-/

namespace A029644.P14451125049666601969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014462 (n + 1) - A034868 n

end

end A029644.P14451125049666601969

noncomputable section

/-- A029644: Numbers to the left of the central numbers of the (1,2)-Pascal triangle A029635.

Offset 0, canonical program `A029644.P14451125049666601969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029644 (n : ℕ) : ℤ :=
  A029644.P14451125049666601969.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030433.P5160408850318071491

`10*A102700(n+1)+9`
-/

namespace A030433.P5160408850318071491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A102700 (n + 1) + 9

end

end A030433.P5160408850318071491

noncomputable section

/-- A030433: Primes of form 10*k + 9.

Offset 1, canonical program `A030433.P5160408850318071491`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102700, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A030433 (n : ℕ) : ℤ :=
  A030433.P5160408850318071491.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102700, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A030433.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A031448.P3285887168020942697

`∩[A072600(n+1), A089648(n+1)]`
-/

namespace A031448.P3285887168020942697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089648 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031448.P3285887168020942697

noncomputable section

/-- A031448: Numbers whose base-2 representation has one fewer 0's than 1's.

Offset 1, canonical program `A031448.P3285887168020942697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1936 terms. -/
def A031448 (n : ℕ) : ℤ :=
  (A031448.P3285887168020942697.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1936 terms. -/
def A031448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037038.P14570702450093468220

`A099801(2*(n+1))-A230980(n)`
-/

namespace A037038.P14570702450093468220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (2 * (n + 1)) - A230980 n

end

end A037038.P14570702450093468220

noncomputable section

/-- A037038: Number of primes between n and 4n+1.

Offset 1, canonical program `A037038.P14570702450093468220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037038 (n : ℕ) : ℤ :=
  A037038.P14570702450093468220.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037711.P5672376970988767785

`A037753(n+1)+∑[A037739(n+1)-A037767(n+1)]`
-/

namespace A037711.P5672376970988767785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037739 (n + 1) - A037767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037753 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037711.P5672376970988767785

noncomputable section

/-- A037711: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,2,0.

Offset 1, canonical program `A037711.P5672376970988767785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A037711 (n : ℕ) : ℤ :=
  A037711.P5672376970988767785.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A037711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038800.P14492955848077110763

`Δ[A099801(A004273(2*n)+n)]`
-/

namespace A038800.P14492955848077110763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (A004273 (2 * n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038800.P14492955848077110763

noncomputable section

/-- A038800: Number of primes between 10n and 10n+9.

Offset 0, canonical program `A038800.P14492955848077110763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A038800 (n : ℕ) : ℤ :=
  A038800.P14492955848077110763.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A038800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038801.P2729700346565965031

`A099801(5*n+4)`
-/

namespace A038801.P2729700346565965031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (5 * n + 4)

end

end A038801.P2729700346565965031

noncomputable section

/-- A038801: Number of primes less than 10n.

Offset 1, canonical program `A038801.P2729700346565965031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038801 (n : ℕ) : ℤ :=
  A038801.P2729700346565965031.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039956.P6592204116604427737

`2*A056911(n+1)`
-/

namespace A039956.P6592204116604427737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056911 (n + 1)

end

end A039956.P6592204116604427737

noncomputable section

/-- A039956: Even squarefree numbers.

Offset 1, canonical program `A039956.P6592204116604427737`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056911, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A039956 (n : ℕ) : ℤ :=
  A039956.P6592204116604427737.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056911, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A039956.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A042986.P11013070106792504483

`∪[A003631(n+1), A045349(n+1)]`
-/

namespace A042986.P11013070106792504483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042986.P11013070106792504483

noncomputable section

/-- A042986: Primes congruent to {0, 1, 2, 3} mod 5.

Offset 1, canonical program `A042986.P11013070106792504483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042986 (n : ℕ) : ℤ :=
  (A042986.P11013070106792504483.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A042989.P12066112418713372453

`∪[A045325(n+1), A042995(n+1)]`
-/

namespace A042989.P12066112418713372453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042989.P12066112418713372453

noncomputable section

/-- A042989: Primes congruent to {0, 2, 3, 4, 5} mod 7.

Offset 1, canonical program `A042989.P12066112418713372453`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042989 (n : ℕ) : ℤ :=
  (A042989.P12066112418713372453.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A042994.P13618748023607742261

`∪[A042995(n+1), A045342(n+1)]`
-/

namespace A042994.P13618748023607742261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042994.P13618748023607742261

noncomputable section

/-- A042994: Primes congruent to {0, 1, 2, 3, 5} (mod 7).

Offset 1, canonical program `A042994.P13618748023607742261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042994 (n : ℕ) : ℤ :=
  (A042994.P13618748023607742261.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045322.P12367082732951431422

`∪[A045325(n+1), A045335(n+1)]`
-/

namespace A045322.P12367082732951431422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045322.P12367082732951431422

noncomputable section

/-- A045322: Primes congruent to {0, 2, 3, 4, 6} (mod 7).

Offset 1, canonical program `A045322.P12367082732951431422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045322 (n : ℕ) : ℤ :=
  (A045322.P12367082732951431422.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002999.P3630414621016357249

`A004277(n)+A001815(n)`
-/

namespace A002999.P3630414621016357249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + A001815 n

end

end A002999.P3630414621016357249

noncomputable section

/-- A002999: Expansion of (1 + x*exp(x))^2.

Offset 0, canonical program `A002999.P3630414621016357249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. -/
def A002999 (n : ℕ) : ℤ :=
  A002999.P3630414621016357249.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. -/
def A002999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005067.P16153284212930227781

`∑{p}[n+1, A303972(#)]`
-/

namespace A005067.P16153284212930227781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A303972 p

end

end A005067.P16153284212930227781

noncomputable section

/-- A005067: Sum of cubes of odd primes dividing n.

Offset 1, canonical program `A005067.P16153284212930227781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005067 (n : ℕ) : ℤ :=
  A005067.P16153284212930227781.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005084.P8221435788932631472

`∑{p}[n+1, #*A005083(#)]`
-/

namespace A005084.P8221435788932631472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℤ) * A005083 p

end

end A005084.P8221435788932631472

noncomputable section

/-- A005084: Sum of cubes of primes = 3 mod 4 dividing n.

Offset 1, canonical program `A005084.P8221435788932631472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005084 (n : ℕ) : ℤ :=
  A005084.P8221435788932631472.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005085.P17408966888142263945

`∑{p}[n+1, A005083(#)²]`
-/

namespace A005085.P17408966888142263945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A005083 p ^ 2

end

end A005085.P17408966888142263945

noncomputable section

/-- A005085: Sum of 4th powers of primes = 3 mod 4 dividing n.

Offset 1, canonical program `A005085.P17408966888142263945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005085 (n : ℕ) : ℤ :=
  A005085.P17408966888142263945.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005090.P16469068268029111629

`A001221(n+1)-A005088(n+1)-A079978(n+1)`
-/

namespace A005090.P16469068268029111629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A005088 (n + 1) - A079978 (n + 1)

end

end A005090.P16469068268029111629

noncomputable section

/-- A005090: Number of primes == 2 mod 3 dividing n.

Offset 1, canonical program `A005090.P16469068268029111629`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A005088, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A005090 (n : ℕ) : ℤ :=
  A005090.P16469068268029111629.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A005088, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A005090.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007862.P13725744150973773245

`∑{d}[n+1, A010054(#)]`
-/

namespace A007862.P13725744150973773245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010054 d

end

end A007862.P13725744150973773245

noncomputable section

/-- A007862: Number of triangular numbers that divide n.

Offset 1, canonical program `A007862.P13725744150973773245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007862 (n : ℕ) : ℤ :=
  A007862.P13725744150973773245.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023214.P17104771354373498863

`p?[A005098(n+1)-1]`
-/

namespace A023214.P17104771354373498863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023214.P17104771354373498863

noncomputable section

/-- A023214: Primes p such that 4*p + 5 is also prime.

Offset 1, canonical program `A023214.P17104771354373498863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 881 terms. -/
def A023214 (n : ℕ) : ℤ :=
  A023214.P17104771354373498863.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 881 terms. -/
def A023214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023507.P330678373377985328

`A008472(A006093(n+1))`
-/

namespace A023507.P330678373377985328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A006093 (n + 1)).toNat

end

end A023507.P330678373377985328

noncomputable section

/-- A023507: a(n) = sum of distinct prime divisors of prime(n) - 1.

Offset 1, canonical program `A023507.P330678373377985328`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023507 (n : ℕ) : ℤ :=
  A023507.P330678373377985328.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023507.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023580.P3856719567750778929

`A008472(A113935(n+1))`
-/

namespace A023580.P3856719567750778929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A113935 (n + 1)).toNat

end

end A023580.P3856719567750778929

noncomputable section

/-- A023580: Sum of distinct prime divisors of prime(n)+3.

Offset 1, canonical program `A023580.P3856719567750778929`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, A113935, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A023580 (n : ℕ) : ℤ :=
  A023580.P3856719567750778929.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, A113935, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A023580.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023891.P8679455862173637145

`A023890(n+1)-1`
-/

namespace A023891.P8679455862173637145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (n + 1) - 1

end

end A023891.P8679455862173637145

noncomputable section

/-- A023891: Sum of composite divisors of n.

Offset 1, canonical program `A023891.P8679455862173637145`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023890, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023891 (n : ℕ) : ℤ :=
  A023891.P8679455862173637145.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023890, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023891.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A024450.P13748385754044755097

`∑[A001248(n+1)]`
-/

namespace A024450.P13748385754044755097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024450.P13748385754044755097

noncomputable section

/-- A024450: Sum of squares of the first n primes.

Offset 1, canonical program `A024450.P13748385754044755097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024450 (n : ℕ) : ℤ :=
  A024450.P13748385754044755097.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024997.P7212347742338721382

`Δ[A025178(n+2)]`
-/

namespace A024997.P7212347742338721382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025178 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024997.P7212347742338721382

noncomputable section

/-- A024997: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is an integer, s(0) = 0 = s(n), |s(i) - s(i-1)| = 1 for i = 1,2; |s(i) - s(i-1)| <= 1 for i >= 3. Also a(n) = T(n,n), where T is the array defined in A024996.

Offset 3, canonical program `A024997.P7212347742338721382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A024997 (n : ℕ) : ℤ :=
  A024997.P7212347742338721382.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A024997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025556.P8005776244439152155

`A025528(n+2)-1`
-/

namespace A025556.P8005776244439152155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (n + 2) - 1

end

end A025556.P8005776244439152155

noncomputable section

/-- A025556: a(n) = sum of the exponents in the prime factorization of LCM{1,3,6,...,C(n+1,2)}.

Offset 1, canonical program `A025556.P8005776244439152155`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A025556 (n : ℕ) : ℤ :=
  A025556.P8005776244439152155.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A025556.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A025561.P1153676137757357368

`A025528(A028310(n))-n²%A152271(n)`
-/

namespace A025561.P1153676137757357368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (A028310 n).toNat - Int.tmod (n ^ 2 : ℤ) (A152271 n)

end

end A025561.P1153676137757357368

noncomputable section

/-- A025561: a(n) = sum of the exponents in the prime factorization of LCM{1, n-1, ..., C(n-[ n/2 ],[ n/2 ])}.

Offset 1, canonical program `A025561.P1153676137757357368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1927 terms. -/
def A025561 (n : ℕ) : ℤ :=
  A025561.P1153676137757357368.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1927 terms. -/
def A025561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033687.P2538927358754509175

`A002324(3*n+1)`
-/

namespace A033687.P2538927358754509175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (3 * n + 1)

end

end A033687.P2538927358754509175

noncomputable section

/-- A033687: Theta series of hexagonal lattice A_2 with respect to deep hole divided by 3.

Offset 0, canonical program `A033687.P2538927358754509175`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002324, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033687 (n : ℕ) : ℤ :=
  A033687.P2538927358754509175.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002324, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033687.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A035321.P11913534039744093094

`∑{d}[n+1, A074591(#)]`
-/

namespace A035321.P11913534039744093094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074591 d

end

end A035321.P11913534039744093094

noncomputable section

/-- A035321: Sum of composite divisors of n that are not primes nor prime powers.

Offset 1, canonical program `A035321.P11913534039744093094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035321 (n : ℕ) : ℤ :=
  A035321.P11913534039744093094.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046644.P16655248551205198622

`∏{e}[n+1, A046161(#)]`
-/

namespace A046644.P16655248551205198622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A046161 (Nat.factorization (f1 n) p)

end

end A046644.P16655248551205198622

noncomputable section

/-- A046644: From square root of Riemann zeta function: form Dirichlet series Sum b_n/n^s whose square is zeta function; sequence gives denominator of b_n.

Offset 1, canonical program `A046644.P16655248551205198622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046644 (n : ℕ) : ℤ :=
  A046644.P16655248551205198622.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049092.P669335479257422354

`p?[A013929(n+1)+1]`
-/

namespace A049092.P669335479257422354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049092.P669335479257422354

noncomputable section

/-- A049092: Primes p such that p-1 is not squarefree.

Offset 1, canonical program `A049092.P669335479257422354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049092 (n : ℕ) : ℤ :=
  A049092.P669335479257422354.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050449.P3812122387069373176

`∑{d}[n+1, #]-A082052(n+1)`
-/

namespace A050449.P3812122387069373176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A082052 (n + 1)

end

end A050449.P3812122387069373176

noncomputable section

/-- A050449: a(n) = Sum_{d|n, d == 1 (mod 4)} d.

Offset 1, canonical program `A050449.P3812122387069373176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050449 (n : ℕ) : ℤ :=
  A050449.P3812122387069373176.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050465.P7394313666540459640

`∑{d}[n+1, A038189(#)*A308422((n+1)/#)]`
-/

namespace A050465.P7394313666540459640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038189 d * A308422 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050465.P7394313666540459640

noncomputable section

/-- A050465: a(n) = Sum_{d|n, n/d=3 mod 4} d^2.

Offset 1, canonical program `A050465.P7394313666540459640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050465 (n : ℕ) : ℤ :=
  A050465.P7394313666540459640.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001196.P5634847783591410852

`3*A000695(n)`
-/

namespace A001196.P5634847783591410852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000695 n

end

end A001196.P5634847783591410852

noncomputable section

/-- A001196: Double-bitters: only even length runs in binary expansion.

Offset 0, canonical program `A001196.P5634847783591410852`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001196 (n : ℕ) : ℤ :=
  A001196.P5634847783591410852.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001196.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A002251.P8899938186717577679

`A019444(n+1)-1`
-/

namespace A002251.P8899938186717577679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019444 (n + 1) - 1

end

end A002251.P8899938186717577679

noncomputable section

/-- A002251: Start with the nonnegative integers; then swap L(k) and U(k) for all k >= 1, where L = A000201, U = A001950 (lower and upper Wythoff sequences).

Offset 0, canonical program `A002251.P8899938186717577679`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002251 (n : ℕ) : ℤ :=
  A002251.P8899938186717577679.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002251.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004488.P15486159278781190577

`abs(A168237(A300222(n))-n-n)`
-/

namespace A004488.P15486159278781190577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168237 (A300222 n).toNat - (n : ℤ) - (n : ℤ)|

end

end A004488.P15486159278781190577

noncomputable section

/-- A004488: Tersum n + n.

Offset 0, canonical program `A004488.P15486159278781190577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004488 (n : ℕ) : ℤ :=
  A004488.P15486159278781190577.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004488.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005066.P399766481183112072

`A005079(n+1)+A005083(n+1)`
-/

namespace A005066.P399766481183112072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005079 (n + 1) + A005083 (n + 1)

end

end A005066.P399766481183112072

noncomputable section

/-- A005066: Sum of squares of odd primes dividing n.

Offset 1, canonical program `A005066.P399766481183112072`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005079, A005083, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A005066 (n : ℕ) : ℤ :=
  A005066.P399766481183112072.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005079, A005083, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A005066.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A005074.P9342362923832243696

`A008472(n+1)-A005070(n+1)-3*A079978(n+1)`
-/

namespace A005074.P9342362923832243696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) - A005070 (n + 1) - 3 * A079978 (n + 1)

end

end A005074.P9342362923832243696

noncomputable section

/-- A005074: Sum of primes = 2 mod 3 dividing n.

Offset 1, canonical program `A005074.P9342362923832243696`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005070, A008472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A005074 (n : ℕ) : ℤ :=
  A005074.P9342362923832243696.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005070, A008472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A005074.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014201.P10815389346971354780

`A038589(n)-1`
-/

namespace A014201.P10815389346971354780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038589 n - 1

end

end A014201.P10815389346971354780

noncomputable section

/-- A014201: Number of solutions to x^2 + x*y + y^2 <= n excluding (0,0).

Offset 0, canonical program `A014201.P10815389346971354780`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038589, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014201 (n : ℕ) : ℤ :=
  A014201.P10815389346971354780.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038589, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014201.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014550.P16425550045670577789

`A007088(xor(n, floor(n/2)))`
-/

namespace A014550.P16425550045670577789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A014550.P16425550045670577789

noncomputable section

/-- A014550: Binary reflected Gray code.

Offset 0, canonical program `A014550.P16425550045670577789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014550 (n : ℕ) : ℤ :=
  A014550.P16425550045670577789.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020991.P16966038769123620304

`A020988(A000523(n+1))+A000695(n)`
-/

namespace A020991.P16966038769123620304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020988 (A000523 (n + 1)).toNat + A000695 n

end

end A020991.P16966038769123620304

noncomputable section

/-- A020991: Largest value of k for which Golay-Rudin-Shapiro sequence A020986(k) = n.

Offset 1, canonical program `A020991.P16966038769123620304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020991 (n : ℕ) : ℤ :=
  A020991.P16966038769123620304.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024622.P7610113690782019861

`A025528(2^n)+1`
-/

namespace A024622.P7610113690782019861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (2 ^ n) + 1

end

end A024622.P7610113690782019861

noncomputable section

/-- A024622: Position of 2^n among the powers of primes (A000961).

Offset 0, canonical program `A024622.P7610113690782019861`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024622 (n : ℕ) : ℤ :=
  A024622.P7610113690782019861.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024622.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A024912.P17686755528931629700

`(A081759(n+1)+1)/2`
-/

namespace A024912.P17686755528931629700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081759 (n + 1) + 1 : ℚ) / 2

end

end A024912.P17686755528931629700

noncomputable section

/-- A024912: Numbers k such that 10*k + 1 is prime.

Offset 1, canonical program `A024912.P17686755528931629700`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081759, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024912 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A024912.P17686755528931629700.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081759, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024912.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A028838.P7018118556481425172

`eq[1, A000120(A007953(n))]`
-/

namespace A028838.P7018118556481425172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028838.P7018118556481425172

noncomputable section

/-- A028838: Numbers whose sum of digits is a power of 2.

Offset 1, canonical program `A028838.P7018118556481425172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 883 terms. -/
def A028838 (n : ℕ) : ℤ :=
  (A028838.P7018118556481425172.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 883 terms. -/
def A028838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028839.P5547678190636867317

`eq[1, A053186(A007953(n)+1)]`
-/

namespace A028839.P5547678190636867317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A007953 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028839.P5547678190636867317

noncomputable section

/-- A028839: Sum of digits of n is a square.

Offset 1, canonical program `A028839.P5547678190636867317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1242 terms. -/
def A028839 (n : ℕ) : ℤ :=
  (A028839.P5547678190636867317.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1242 terms. -/
def A028839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028840.P997673951894890904

`eq[0, A066628(A007953(n))]`
-/

namespace A028840.P997673951894890904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066628 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028840.P997673951894890904

noncomputable section

/-- A028840: Numbers k such that sum of digits of k is a Fibonacci number.

Offset 1, canonical program `A028840.P997673951894890904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1339 terms. -/
def A028840 (n : ℕ) : ℤ :=
  (A028840.P997673951894890904.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1339 terms. -/
def A028840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030231.P6726175487153187534

`record[(n+1)%A318833(n+1)]`
-/

namespace A030231.P6726175487153187534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A318833 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030231.P6726175487153187534

noncomputable section

/-- A030231: Numbers with an even number of distinct prime factors.

Offset 1, canonical program `A030231.P6726175487153187534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030231 (n : ℕ) : ℤ :=
  A030231.P6726175487153187534.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032532.P5515615733425822167

`floor(A007088(n+1)/(n+1))`
-/

namespace A032532.P5515615733425822167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007088 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A032532.P5515615733425822167

noncomputable section

/-- A032532: Integer part of decimal 'base-2 looking' numbers divided by their actual base-2 values (denominator of a(n) is n, numerator is n written in binary but read in decimal).

Offset 1, canonical program `A032532.P5515615733425822167`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A032532 (n : ℕ) : ℤ :=
  A032532.P5515615733425822167.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A032532.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A033052.P18311306593688986534

`A000695(A000695(n))`
-/

namespace A033052.P18311306593688986534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A000695 n).toNat

end

end A033052.P18311306593688986534

noncomputable section

/-- A033052: a(1) = 1, a(2n) = 16a(n), a(2n+1) = a(2n)+1.

Offset 0, canonical program `A033052.P18311306593688986534`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033052 (n : ℕ) : ℤ :=
  A033052.P18311306593688986534.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033052.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A034690.P9760820959884422482

`∑{d}[n+1, A007953(#)]`
-/

namespace A034690.P9760820959884422482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007953 d

end

end A034690.P9760820959884422482

noncomputable section

/-- A034690: Sum of digits of all the divisors of n.

Offset 1, canonical program `A034690.P9760820959884422482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034690 (n : ℕ) : ℤ :=
  A034690.P9760820959884422482.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037305.P16443273878400568055

`eq[A000120(n+1), A053828(n+1)]+1`
-/

namespace A037305.P16443273878400568055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037305.P16443273878400568055

noncomputable section

/-- A037305: Numbers whose base-2 and base-7 expansions have the same digit sum.

Offset 1, canonical program `A037305.P16443273878400568055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. -/
def A037305 (n : ℕ) : ℤ :=
  (A037305.P16443273878400568055.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. -/
def A037305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037312.P9470529839342891948

`eq[A053735(n+1), A053828(n+1)]+1`
-/

namespace A037312.P9470529839342891948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037312.P9470529839342891948

noncomputable section

/-- A037312: Numbers whose base-3 and base-7 expansions have the same digit sum.

Offset 1, canonical program `A037312.P9470529839342891948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 936 terms. -/
def A037312 (n : ℕ) : ℤ :=
  (A037312.P9470529839342891948.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 936 terms. -/
def A037312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037318.P8915559083621152750

`eq[A053737(n+1), A053828(n+1)]+1`
-/

namespace A037318.P8915559083621152750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037318.P8915559083621152750

noncomputable section

/-- A037318: Numbers whose base-4 and base-7 expansions have the same digit sum.

Offset 1, canonical program `A037318.P8915559083621152750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1885 terms. -/
def A037318 (n : ℕ) : ℤ :=
  (A037318.P8915559083621152750.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1885 terms. -/
def A037318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037320.P1331506852405638817

`eq[A053737(n+1), A053830(n+1)]+1`
-/

namespace A037320.P1331506852405638817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037320.P1331506852405638817

noncomputable section

/-- A037320: Numbers whose base-4 and base-9 expansions have the same digit sum.

Offset 1, canonical program `A037320.P1331506852405638817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 462 terms. -/
def A037320 (n : ℕ) : ℤ :=
  (A037320.P1331506852405638817.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 462 terms. -/
def A037320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037321.P15475933279029128881

`eq[A007953(n+1), A053737(n+1)]+1`
-/

namespace A037321.P15475933279029128881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037321.P15475933279029128881

noncomputable section

/-- A037321: Numbers whose base-4 and base-10 expansions have the same digit sum.

Offset 1, canonical program `A037321.P15475933279029128881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 733 terms. -/
def A037321 (n : ℕ) : ℤ :=
  (A037321.P15475933279029128881.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 733 terms. -/
def A037321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037323.P17015445517775980560

`eq[A053824(n+1), A053828(n+1)]+1`
-/

namespace A037323.P17015445517775980560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037323.P17015445517775980560

noncomputable section

/-- A037323: Numbers whose base-5 and base-7 expansions have the same digit sum.

Offset 1, canonical program `A037323.P17015445517775980560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1422 terms. -/
def A037323 (n : ℕ) : ℤ :=
  (A037323.P17015445517775980560.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1422 terms. -/
def A037323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037325.P14374460937970162386

`eq[A053824(n+1), A053830(n+1)]+1`
-/

namespace A037325.P14374460937970162386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037325.P14374460937970162386

noncomputable section

/-- A037325: Numbers whose base-5 and base-9 expansions have the same digit sum.

Offset 1, canonical program `A037325.P14374460937970162386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2206 terms. -/
def A037325 (n : ℕ) : ℤ :=
  (A037325.P14374460937970162386.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2206 terms. -/
def A037325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037326.P11070516741793264278

`eq[A007953(n+1), A053824(n+1)]+1`
-/

namespace A037326.P11070516741793264278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037326.P11070516741793264278

noncomputable section

/-- A037326: Numbers whose base-5 and base-10 expansions have the same digit sum.

Offset 1, canonical program `A037326.P11070516741793264278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A037326 (n : ℕ) : ℤ :=
  (A037326.P11070516741793264278.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A037326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037327.P2711885308898884377

`eq[A053827(abs(1-n)+1), A053828(n)]`
-/

namespace A037327.P2711885308898884377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037327.P2711885308898884377

noncomputable section

/-- A037327: Numbers whose base-6 and base-7 expansions have the same digit sum.

Offset 1, canonical program `A037327.P2711885308898884377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 720 terms. -/
def A037327 (n : ℕ) : ℤ :=
  (A037327.P2711885308898884377.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 720 terms. -/
def A037327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037329.P4618377847170052962

`eq[A053827(n+1), A053830(n+1)]+1`
-/

namespace A037329.P4618377847170052962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037329.P4618377847170052962

noncomputable section

/-- A037329: Numbers whose base-6 and base-9 expansions have the same digit sum.

Offset 1, canonical program `A037329.P4618377847170052962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 539 terms. -/
def A037329 (n : ℕ) : ℤ :=
  (A037329.P4618377847170052962.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 539 terms. -/
def A037329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037330.P5230164147977362729

`eq[A007953(n+1), A053827(n+1)]+1`
-/

namespace A037330.P5230164147977362729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037330.P5230164147977362729

noncomputable section

/-- A037330: Numbers whose base-6 and base-10 expansions have the same digit sum.

Offset 1, canonical program `A037330.P5230164147977362729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 437 terms. -/
def A037330 (n : ℕ) : ℤ :=
  (A037330.P5230164147977362729.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 437 terms. -/
def A037330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037333.P9690759292249465831

`eq[A007953(n+1), A053828(n+1)]+1`
-/

namespace A037333.P9690759292249465831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037333.P9690759292249465831

noncomputable section

/-- A037333: Numbers whose base-7 and base-10 expansions have the same digit sum.

Offset 1, canonical program `A037333.P9690759292249465831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1461 terms. -/
def A037333 (n : ℕ) : ℤ :=
  (A037333.P9690759292249465831.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1461 terms. -/
def A037333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037336.P7361509405523581352

`eq[A007953(n+1), A053830(n+1)]+1`
-/

namespace A037336.P7361509405523581352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037336.P7361509405523581352

noncomputable section

/-- A037336: Numbers whose base-9 and base-10 expansions have the same digit sum.

Offset 1, canonical program `A037336.P7361509405523581352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 498 terms. -/
def A037336 (n : ℕ) : ℤ :=
  (A037336.P7361509405523581352.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 498 terms. -/
def A037336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037409.P18189841594398077675

`A000695(record[xor(n, A036987(n))])`
-/

namespace A037409.P18189841594398077675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A036987 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037409.P18189841594398077675

noncomputable section

/-- A037409: Positive numbers having the same set of digits in base 2 and base 4.

Offset 1, canonical program `A037409.P18189841594398077675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9987 terms. -/
def A037409 (n : ℕ) : ℤ :=
  A037409.P18189841594398077675.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9987 terms. -/
def A037409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037415.P11765629124754090229

`A007088(record[xor(n, A036987(n))])`
-/

namespace A037415.P11765629124754090229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A036987 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037415.P11765629124754090229

noncomputable section

/-- A037415: Positive numbers having the same set of digits in base 2 and base 10.

Offset 1, canonical program `A037415.P11765629124754090229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037415 (n : ℕ) : ℤ :=
  A037415.P11765629124754090229.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038446.P7323680706482103064

`A007088(eq[0, a(n-1)+1-val(n, 2)])` with `a(0)=-4`
-/

namespace A038446.P7323680706482103064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-4] fun n f2 =>
  f2 (n - 1) + (1 - (SequenceMachineLib.valuation n 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038446.P7323680706482103064

noncomputable section

/-- A038446: Sums of 4 distinct powers of 10.

Offset 1, canonical program `A038446.P7323680706482103064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1365 terms. -/
def A038446 (n : ℕ) : ℤ :=
  A038446.P7323680706482103064.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1365 terms. -/
def A038446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038447.P12987802424834006961

`A007088(A014313(n+1))`
-/

namespace A038447.P12987802424834006961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A014313 (n + 1)).toNat

end

end A038447.P12987802424834006961

noncomputable section

/-- A038447: Sums of 5 distinct powers of 10.

Offset 1, canonical program `A038447.P12987802424834006961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3003 terms. -/
def A038447 (n : ℕ) : ℤ :=
  A038447.P12987802424834006961.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3003 terms. -/
def A038447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038448.P7841120313809932083

`A007088(A023688(n+1))`
-/

namespace A038448.P7841120313809932083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A023688 (n + 1)).toNat

end

end A038448.P7841120313809932083

noncomputable section

/-- A038448: Sums of 6 distinct powers of 10.

Offset 1, canonical program `A038448.P7841120313809932083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5005 terms. -/
def A038448 (n : ℕ) : ℤ :=
  A038448.P7841120313809932083.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5005 terms. -/
def A038448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038449.P17780705603722431930

`A007088(A023689(n+1))`
-/

namespace A038449.P17780705603722431930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A023689 (n + 1)).toNat

end

end A038449.P17780705603722431930

noncomputable section

/-- A038449: Sums of 7 distinct powers of 10.

Offset 1, canonical program `A038449.P17780705603722431930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6435 terms. -/
def A038449 (n : ℕ) : ℤ :=
  A038449.P17780705603722431930.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6435 terms. -/
def A038449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038450.P3054908784782646193

`A007088(eq[8, dr(A007088(n))])`
-/

namespace A038450.P3054908784782646193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007088 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A038450.P3054908784782646193

noncomputable section

/-- A038450: Sums of 8 distinct powers of 10.

Offset 1, canonical program `A038450.P3054908784782646193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6435 terms. -/
def A038450 (n : ℕ) : ℤ :=
  A038450.P3054908784782646193.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6435 terms. -/
def A038450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038451.P17744406379322907093

`A007088(eq[9, dr(A007088(n))])`
-/

namespace A038451.P17744406379322907093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007088 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A038451.P17744406379322907093

noncomputable section

/-- A038451: Sums of 9 distinct powers of 10.

Offset 1, canonical program `A038451.P17744406379322907093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5005 terms. -/
def A038451 (n : ℕ) : ℤ :=
  A038451.P17744406379322907093.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5005 terms. -/
def A038451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038471.P15695832334258013745

`A000695(eq[0, a(and(n, n-1))+1])` with `a(0)=-3`
-/

namespace A038471.P15695832334258013745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-3] fun n f2 =>
  f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038471.P15695832334258013745

noncomputable section

/-- A038471: Sums of 3 distinct powers of 4.

Offset 1, canonical program `A038471.P15695832334258013745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A038471 (n : ℕ) : ℤ :=
  A038471.P15695832334258013745.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A038471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038472.P13262767256945248339

`A000695(eq[4, A000120(n)])`
-/

namespace A038472.P13262767256945248339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038472.P13262767256945248339

noncomputable section

/-- A038472: Sums of 4 distinct powers of 4.

Offset 1, canonical program `A038472.P13262767256945248339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. -/
def A038472 (n : ℕ) : ℤ :=
  A038472.P13262767256945248339.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. -/
def A038472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038473.P3228666784314917464

`A000695(eq[5, A000120(n)])`
-/

namespace A038473.P3228666784314917464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038473.P3228666784314917464

noncomputable section

/-- A038473: Sums of 5 distinct powers of 4.

Offset 1, canonical program `A038473.P3228666784314917464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1613 terms. -/
def A038473 (n : ℕ) : ℤ :=
  A038473.P3228666784314917464.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1613 terms. -/
def A038473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038550.P5719490266772145792

`eq[1, A318451(n+1)]+1`
-/

namespace A038550.P5719490266772145792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318451 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A038550.P5719490266772145792

noncomputable section

/-- A038550: Products of an odd prime and a power of two (sorted).

Offset 1, canonical program `A038550.P5719490266772145792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038550 (n : ℕ) : ℤ :=
  (A038550.P5719490266772145792.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040997.P3657260690685809057

`abs(2*A000030(n+1)-A007953(n+1))`
-/

namespace A040997.P3657260690685809057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A000030 (n + 1) - A007953 (n + 1)|

end

end A040997.P3657260690685809057

noncomputable section

/-- A040997: Absolute value of first digit of n minus sum of other digits of n.

Offset 1, canonical program `A040997.P3657260690685809057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040997 (n : ℕ) : ℤ :=
  A040997.P3657260690685809057.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046951.P3618498099021746421

`A000005(n+1)-A056595(n+1)`
-/

namespace A046951.P3618498099021746421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A056595 (n + 1)

end

end A046951.P3618498099021746421

noncomputable section

/-- A046951: a(n) is the number of squares dividing n.

Offset 1, canonical program `A046951.P3618498099021746421`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056595, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046951 (n : ℕ) : ℤ :=
  A046951.P3618498099021746421.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056595, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046951.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A048111.P1097856479310663445

`filter[A048108(n+1), A380454(#)]`
-/

namespace A048111.P1097856479310663445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380454 (f1 j).toNat = 1) n)

end

end A048111.P1097856479310663445

noncomputable section

/-- A048111: Number of unitary divisors of n (A034444) < number of non-unitary divisors of n (A048105).

Offset 1, canonical program `A048111.P1097856479310663445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6119 terms. -/
def A048111 (n : ℕ) : ℤ :=
  A048111.P1097856479310663445.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6119 terms. -/
def A048111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048572.P13017132504727043006

`A007953(a(n-1)*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A048572.P13017132504727043006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A007953 (a (n - 1) * a (n - 2)).toNat

end

end A048572.P13017132504727043006

noncomputable section

/-- A048572: a(n) = sum of digits of a(n-1)*a(n-2).

Offset 1, canonical program `A048572.P13017132504727043006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048572 (n : ℕ) : ℤ :=
  A048572.P13017132504727043006.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049076.P17652482635542047239

`1+A078442(n+1)`
-/

namespace A049076.P17652482635542047239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A078442 (n + 1)

end

end A049076.P17652482635542047239

noncomputable section

/-- A049076: Number of steps in the prime index chain for the n-th prime.

Offset 1, canonical program `A049076.P17652482635542047239`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078442, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049076 (n : ℕ) : ℤ :=
  A049076.P17652482635542047239.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078442, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049076.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049097.P11962630923123470473

`p?[or(n, A008966(n+1))+n]`
-/

namespace A049097.P11962630923123470473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A008966 (n + 1)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049097.P11962630923123470473

noncomputable section

/-- A049097: Primes p such that p+1 is squarefree.

Offset 1, canonical program `A049097.P11962630923123470473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6702 terms. -/
def A049097 (n : ℕ) : ℤ :=
  A049097.P11962630923123470473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6702 terms. -/
def A049097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050926.P6020126411824028661

`A007088(A007908(n+1))`
-/

namespace A050926.P6020126411824028661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A007908 (n + 1)).toNat

end

end A050926.P6020126411824028661

noncomputable section

/-- A050926: Binary representation of A007908(n).

Offset 1, canonical program `A050926.P6020126411824028661`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A050926 (n : ℕ) : ℤ :=
  A050926.P6020126411824028661.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A050926.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A001370.P13283257347180374488

`A007953(A000079(n))`
-/

namespace A001370.P13283257347180374488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A000079 n).toNat

end

end A001370.P13283257347180374488

noncomputable section

/-- A001370: Sum of digits of 2^n.

Offset 0, canonical program `A001370.P13283257347180374488`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001370 (n : ℕ) : ℤ :=
  A001370.P13283257347180374488.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001370.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A001737.P2090765106335531527

`A007088(A000290(n))`
-/

namespace A001737.P2090765106335531527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000290 n).toNat

end

end A001737.P2090765106335531527

noncomputable section

/-- A001737: Squares written in base 2.

Offset 0, canonical program `A001737.P2090765106335531527`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001737 (n : ℕ) : ℤ :=
  A001737.P2090765106335531527.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001737.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004090.P12560450015442128281

`A007953(A000045(n))`
-/

namespace A004090.P12560450015442128281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A000045 n).toNat

end

end A004090.P12560450015442128281

noncomputable section

/-- A004090: Sum of digits of Fibonacci numbers.

Offset 0, canonical program `A004090.P12560450015442128281`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004090 (n : ℕ) : ℤ :=
  A004090.P12560450015442128281.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004090.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004092.P17027968154304682565

`A007953(2*n)`
-/

namespace A004092.P17027968154304682565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (2 * n)

end

end A004092.P17027968154304682565

noncomputable section

/-- A004092: Sum of digits of even numbers.

Offset 0, canonical program `A004092.P17027968154304682565`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004092 (n : ℕ) : ℤ :=
  A004092.P17027968154304682565.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004092.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004155.P2911733724081887475

`A007953(2*n+1)`
-/

namespace A004155.P2911733724081887475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (2 * n + 1)

end

end A004155.P2911733724081887475

noncomputable section

/-- A004155: Sum of digits of n-th odd number.

Offset 0, canonical program `A004155.P2911733724081887475`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004155 (n : ℕ) : ℤ :=
  A004155.P2911733724081887475.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004155.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004157.P13225285824347406028

`A007953(A000217(n))`
-/

namespace A004157.P13225285824347406028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A000217 n).toNat

end

end A004157.P13225285824347406028

noncomputable section

/-- A004157: Sum of digits of n-th triangular number.

Offset 0, canonical program `A004157.P13225285824347406028`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004157 (n : ℕ) : ℤ :=
  A004157.P13225285824347406028.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004157.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004159.P2005974215749459282

`A007953(A000290(n))`
-/

namespace A004159.P2005974215749459282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A000290 n).toNat

end

end A004159.P2005974215749459282

noncomputable section

/-- A004159: Sum of digits of n^2.

Offset 0, canonical program `A004159.P2005974215749459282`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004159 (n : ℕ) : ℤ :=
  A004159.P2005974215749459282.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004159.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004160.P15965055405082273229

`A007953(A000292(n+1))`
-/

namespace A004160.P15965055405082273229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A000292 (n + 1)).toNat

end

end A004160.P15965055405082273229

noncomputable section

/-- A004160: Sum of digits of the n-th tetrahedral number.

Offset 1, canonical program `A004160.P15965055405082273229`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004160 (n : ℕ) : ℤ :=
  A004160.P15965055405082273229.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004160.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004426.P7142668766808473070

`floor(A007953(n)/A055642(n))`
-/

namespace A004426.P7142668766808473070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007953 n : ℚ) / (A055642 n : ℚ)⌋

end

end A004426.P7142668766808473070

noncomputable section

/-- A004426: Arithmetic mean of digits of n (rounded down).

Offset 0, canonical program `A004426.P7142668766808473070`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A055642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A004426 (n : ℕ) : ℤ :=
  A004426.P7142668766808473070.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A055642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A004426.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004427.P8245107043003752294

`ceil(A007953(n)/A055642(n))`
-/

namespace A004427.P8245107043003752294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007953 n : ℚ) / (A055642 n : ℚ)⌉

end

end A004427.P8245107043003752294

noncomputable section

/-- A004427: Arithmetic mean of digits of n (rounded up).

Offset 0, canonical program `A004427.P8245107043003752294`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A055642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A004427 (n : ℕ) : ℤ :=
  A004427.P8245107043003752294.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A055642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A004427.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004632.P3387701604835768164

`A007088((n+1)^3)`
-/

namespace A004632.P3387701604835768164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ((n + 1) ^ 3)

end

end A004632.P3387701604835768164

noncomputable section

/-- A004632: Cubes written in base 2.

Offset 1, canonical program `A004632.P3387701604835768164`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004632 (n : ℕ) : ℤ :=
  A004632.P3387701604835768164.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004632.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004676.P4552260834261095781

`A007088(A000040(n+1))`
-/

namespace A004676.P4552260834261095781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000040 (n + 1)).toNat

end

end A004676.P4552260834261095781

noncomputable section

/-- A004676: Primes written in base 2.

Offset 1, canonical program `A004676.P4552260834261095781`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004676 (n : ℕ) : ℤ :=
  A004676.P4552260834261095781.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004676.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004685.P3602064584758155543

`A007088(A000045(n))`
-/

namespace A004685.P3602064584758155543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000045 n).toNat

end

end A004685.P3602064584758155543

noncomputable section

/-- A004685: Fibonacci numbers written in base 2.

Offset 0, canonical program `A004685.P3602064584758155543`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004685 (n : ℕ) : ℤ :=
  A004685.P3602064584758155543.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004685.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004710.P6274734826505923524

`eq[1, A104015(n)]+1`
-/

namespace A004710.P6274734826505923524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104015 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A004710.P6274734826505923524

noncomputable section

/-- A004710: Positions of ones in binary expansion of Euler's constant gamma.

Offset 1, canonical program `A004710.P6274734826505923524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4993 terms. -/
def A004710 (n : ℕ) : ℤ :=
  (A004710.P6274734826505923524.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4993 terms. -/
def A004710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005069.P14103743043716433580

`A005078(n+1)+A005082(n+1)`
-/

namespace A005069.P14103743043716433580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005078 (n + 1) + A005082 (n + 1)

end

end A005069.P14103743043716433580

noncomputable section

/-- A005069: Sum of odd primes dividing n.

Offset 1, canonical program `A005069.P14103743043716433580`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005078, A005082, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A005069 (n : ℕ) : ℤ :=
  A005069.P14103743043716433580.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005078, A005082, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A005069.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007424.P14149509109381921245

`2-A008966(n+1)`
-/

namespace A007424.P14149509109381921245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A008966 (n + 1)

end

end A007424.P14149509109381921245

noncomputable section

/-- A007424: a(n) = 1 if n is squarefree, otherwise 2.

Offset 1, canonical program `A007424.P14149509109381921245`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007424 (n : ℕ) : ℤ :=
  A007424.P14149509109381921245.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007424.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007605.P14521423581831153617

`A007953(A000040(n+1))`
-/

namespace A007605.P14521423581831153617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A000040 (n + 1)).toNat

end

end A007605.P14521423581831153617

noncomputable section

/-- A007605: Sum of digits of n-th prime.

Offset 1, canonical program `A007605.P14521423581831153617`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007605 (n : ℕ) : ℤ :=
  A007605.P14521423581831153617.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007605.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007913.P11359412940648999332

`(n+1)^3/A059479(n+1)`
-/

namespace A007913.P11359412940648999332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℚ) / (A059479 (n + 1) : ℚ)

end

end A007913.P11359412940648999332

noncomputable section

/-- A007913: Squarefree part of n: a(n) is the smallest positive number m such that n/m is a square.

Offset 1, canonical program `A007913.P11359412940648999332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007913 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007913.P11359412940648999332.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037313.P8558036857328974010

`eq[A053735(n+1), A053829(n+1)]+1`
-/

namespace A037313.P8558036857328974010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037313.P8558036857328974010

noncomputable section

/-- A037313: Numbers whose base-3 and base-8 expansions have the same digit sum.

Offset 1, canonical program `A037313.P8558036857328974010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 391 terms. -/
def A037313 (n : ℕ) : ℤ :=
  (A037313.P8558036857328974010.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 391 terms. -/
def A037313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037319.P5983094485819459083

`eq[A053737(abs(1-n)+1), A053829(n)]`
-/

namespace A037319.P5983094485819459083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037319.P5983094485819459083

noncomputable section

/-- A037319: Numbers whose base-4 and base-8 expansions have the same digit sum.

Offset 1, canonical program `A037319.P5983094485819459083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 367 terms. -/
def A037319 (n : ℕ) : ℤ :=
  (A037319.P5983094485819459083.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 367 terms. -/
def A037319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037324.P67861108556400582

`eq[A053824(n+1), A053829(n+1)]+1`
-/

namespace A037324.P67861108556400582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037324.P67861108556400582

noncomputable section

/-- A037324: Numbers whose base-5 and base-8 expansions have the same digit sum.

Offset 1, canonical program `A037324.P67861108556400582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 632 terms. -/
def A037324 (n : ℕ) : ℤ :=
  (A037324.P67861108556400582.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 632 terms. -/
def A037324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037328.P5898598248866345973

`eq[A053827(n+1), A053829(n+1)]+1`
-/

namespace A037328.P5898598248866345973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037328.P5898598248866345973

noncomputable section

/-- A037328: Numbers whose base-6 and base-8 expansions have the same digit sum.

Offset 1, canonical program `A037328.P5898598248866345973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 733 terms. -/
def A037328 (n : ℕ) : ℤ :=
  (A037328.P5898598248866345973.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 733 terms. -/
def A037328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037334.P9109918387143520907

`eq[A053829(n+1), A053830(n+1)]+1`
-/

namespace A037334.P9109918387143520907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037334.P9109918387143520907

noncomputable section

/-- A037334: Numbers whose base-8 and base-9 expansions have the same digit sum.

Offset 1, canonical program `A037334.P9109918387143520907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 548 terms. -/
def A037334 (n : ℕ) : ℤ :=
  (A037334.P9109918387143520907.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 548 terms. -/
def A037334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037335.P16214437495867601186

`eq[A007953(n+1), A053829(n+1)]+1`
-/

namespace A037335.P16214437495867601186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037335.P16214437495867601186

noncomputable section

/-- A037335: Numbers whose base-8 and base-10 expansions have the same digit sum.

Offset 1, canonical program `A037335.P16214437495867601186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A037335 (n : ℕ) : ℤ :=
  (A037335.P16214437495867601186.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A037335.provenance : SequenceMachineLib.Provenance := .conjectured

