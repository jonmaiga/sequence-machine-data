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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B001.C013

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

/-! ## A011371.P12398255777927387864

`n-A000120(n)`
-/

namespace A011371.P12398255777927387864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000120 n

end

end A011371.P12398255777927387864

noncomputable section

/-- A011371: a(n) = n minus (number of 1's in binary expansion of n). Also highest power of 2 dividing n!.

Offset 0, canonical program `A011371.P12398255777927387864`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A011371 (n : ℕ) : ℤ :=
  A011371.P12398255777927387864.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A011371.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A027484.P13959384681277011822

`A021003(n+2)-(n+2)`
-/

namespace A027484.P13959384681277011822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021003 (n + 2) - (n + 2 : ℤ)

end

end A027484.P13959384681277011822

noncomputable section

/-- A027484: a(n) = n*(n^4-1)/2.

Offset 2, canonical program `A027484.P13959384681277011822`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+2)*((n+2)^4-1)/2` (program `A027484.P4086361051666705444`, by `A027484.P4086361051666705444.correct`). Lean does not check the parsing of the name. -/
def A027484 (n : ℕ) : ℤ :=
  A027484.P13959384681277011822.a (n - 2)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+2)*((n+2)^4-1)/2` (program `A027484.P4086361051666705444`, by `A027484.P4086361051666705444.correct`). Lean does not check the parsing of the name. -/
def A027484.provenance : SequenceMachineLib.Provenance := .verified

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

/-! ## A000010.P4673923239450215316

`A173557(n+1)*A003557(n+1)`
-/

namespace A000010.P4673923239450215316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1) * A003557 (n + 1)

end

end A000010.P4673923239450215316

noncomputable section

/-- A000010: Euler totient function phi(n): count numbers <= n and prime to n.

Offset 1, canonical program `A000010.P4673923239450215316`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000010 (n : ℕ) : ℤ :=
  A000010.P4673923239450215316.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000010.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A000069.P3917626109476666468

`2*(n+1)-1-A000120(n)%2`
-/

namespace A000069.P3917626109476666468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - 1 - Int.tmod (A000120 n) 2

end

end A000069.P3917626109476666468

noncomputable section

/-- A000069: Odious numbers: numbers with an odd number of 1's in their binary expansion.

Offset 1, canonical program `A000069.P3917626109476666468`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000069 (n : ℕ) : ℤ :=
  A000069.P3917626109476666468.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000069.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000849.P3482926112530532576

`A000720(A002110(n))`
-/

namespace A000849.P3482926112530532576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A002110 n).toNat

end

end A000849.P3482926112530532576

noncomputable section

/-- A000849: Number of primes <= product of first n primes, A002110(n).

Offset 0, canonical program `A000849.P3482926112530532576`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000849 (n : ℕ) : ℤ :=
  A000849.P3482926112530532576.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000849.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A002734.P13802522267690957899

`A007913(A000037(n+1))`
-/

namespace A002734.P13802522267690957899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000037 (n + 1)).toNat

end

end A002734.P13802522267690957899

noncomputable section

/-- A002734: Remove squares!

Offset 1, canonical program `A002734.P13802522267690957899`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002734 (n : ℕ) : ℤ :=
  A002734.P13802522267690957899.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002734.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A003755.P15968671754711060225

`A001109(n+1)*A049684(n+1)`
-/

namespace A003755.P15968671754711060225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 (n + 1) * A049684 (n + 1)

end

end A003755.P15968671754711060225

noncomputable section

/-- A003755: Number of spanning trees in S_4 X P_n.

Offset 1, canonical program `A003755.P15968671754711060225`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003755 (n : ℕ) : ℤ :=
  A003755.P15968671754711060225.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003755.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A006862.P2963727191997132236

`A002110(n)+1`
-/

namespace A006862.P2963727191997132236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n + 1

end

end A006862.P2963727191997132236

noncomputable section

/-- A006862: Euclid numbers: 1 + product of the first n primes.

Offset 0, canonical program `A006862.P2963727191997132236`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006862 (n : ℕ) : ℤ :=
  A006862.P2963727191997132236.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006862.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A007302.P9391695390720510300

`A000120(xor(n, 3*n))`
-/

namespace A007302.P9391695390720510300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.xor n (3 * n))

end

end A007302.P9391695390720510300

noncomputable section

/-- A007302: Optimal cost function between two processors at distance n.

Offset 0, canonical program `A007302.P9391695390720510300`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007302 (n : ℕ) : ℤ :=
  A007302.P9391695390720510300.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007302.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A007948.P9205423498154585874

`A071773(n+1)*A007947(n+1)`
-/

namespace A007948.P9205423498154585874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (n + 1) * A007947 (n + 1)

end

end A007948.P9205423498154585874

noncomputable section

/-- A007948: Largest cubefree number dividing n.

Offset 1, canonical program `A007948.P9205423498154585874`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007948 (n : ℕ) : ℤ :=
  A007948.P9205423498154585874.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007948.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A013635.P11014015188186242465

`A007917(n+2)+n+3`
-/

namespace A013635.P11014015188186242465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (n + 2) + (n + 3 : ℤ)

end

end A013635.P11014015188186242465

noncomputable section

/-- A013635: a(n) = prevprime(n) + n.

Offset 3, canonical program `A013635.P11014015188186242465`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A013635 (n : ℕ) : ℤ :=
  A013635.P11014015188186242465.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A013635.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A013946.P5517598004296153502

`A007913((n+1)²+4)`
-/

namespace A013946.P5517598004296153502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 1) ^ 2 + 4)

end

end A013946.P5517598004296153502

noncomputable section

/-- A013946: Least d for which the number with continued fraction [n,n,n,n...] is in Q(sqrt(d)).

Offset 1, canonical program `A013946.P5517598004296153502`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A013946 (n : ℕ) : ℤ :=
  A013946.P5517598004296153502.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A013946.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014234.P9622496422059102575

`A007917(2^(n+1))`
-/

namespace A014234.P9622496422059102575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (2 ^ (n + 1))

end

end A014234.P9622496422059102575

noncomputable section

/-- A014234: Largest prime <= 2^n.

Offset 1, canonical program `A014234.P9622496422059102575`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014234 (n : ℕ) : ℤ :=
  A014234.P9622496422059102575.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014234.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A014684.P14857736222881351984

`A005171(n+1)+n`
-/

namespace A014684.P14857736222881351984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) + (n : ℤ)

end

end A014684.P14857736222881351984

noncomputable section

/-- A014684: In the sequence of positive integers subtract 1 from each prime number.

Offset 1, canonical program `A014684.P14857736222881351984`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005171, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014684 (n : ℕ) : ℤ :=
  A014684.P14857736222881351984.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005171, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014684.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014729.P12363565627862594585

`A014445(n)²`
-/

namespace A014729.P12363565627862594585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014445 n ^ 2

end

end A014729.P12363565627862594585

noncomputable section

/-- A014729: Squares of even Fibonacci numbers.

Offset 0, canonical program `A014729.P12363565627862594585`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014729 (n : ℕ) : ℤ :=
  A014729.P12363565627862594585.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014729.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019554.P934973065694448032

`sqrt((n+1)*A007913(n+1))`
-/

namespace A019554.P934973065694448032
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n + 1 : ℤ) * A007913 (n + 1) : ℝ)

end

end A019554.P934973065694448032

noncomputable section

/-- A019554: Smallest number whose square is divisible by n.

Offset 1, canonical program `A019554.P934973065694448032`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019554 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A019554.P934973065694448032.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019554.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A022461.P17113546120949204048

`A006094(n+2)%A000040(n+1)`
-/

namespace A022461.P17113546120949204048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006094 (n + 2)) (A000040 (n + 1))

end

end A022461.P17113546120949204048

noncomputable section

/-- A022461: a(n) = prime(n+1)*prime(n+2) mod prime(n).

Offset 1, canonical program `A022461.P17113546120949204048`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022461 (n : ℕ) : ℤ :=
  A022461.P17113546120949204048.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022461.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A023508.P14059105083037945661

`A001222(A006093(n+1))`
-/

namespace A023508.P14059105083037945661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006093 (n + 1)).toNat

end

end A023508.P14059105083037945661

noncomputable section

/-- A023508: Sum of exponents in prime-power factorization of n-th prime - 1.

Offset 1, canonical program `A023508.P14059105083037945661`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023508 (n : ℕ) : ℤ :=
  A023508.P14059105083037945661.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023508.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A023580.P3856719567750778929`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023580 (n : ℕ) : ℤ :=
  A023580.P3856719567750778929.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023580.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023581.P13752346375982736493

`A001222(A113935(n+1))`
-/

namespace A023581.P13752346375982736493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A113935 (n + 1)).toNat

end

end A023581.P13752346375982736493

noncomputable section

/-- A023581: Sum of exponents in prime-power factorization of p(n)+3.

Offset 1, canonical program `A023581.P13752346375982736493`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023581 (n : ℕ) : ℤ :=
  A023581.P13752346375982736493.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023581.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023816.P10013856517239639057

`A022559(2*n)-2*A022559(n)`
-/

namespace A023816.P10013856517239639057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (2 * n) - 2 * A022559 n

end

end A023816.P10013856517239639057

noncomputable section

/-- A023816: Sum of exponents in prime-power factorization of C(2n,n).

Offset 0, canonical program `A023816.P10013856517239639057`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023816 (n : ℕ) : ℤ :=
  A023816.P10013856517239639057.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023816.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023819.P15358664152866393371

`A022559(3*n)-A022559(2*n)-A022559(n)`
-/

namespace A023819.P15358664152866393371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (3 * n) - A022559 (2 * n) - A022559 n

end

end A023819.P15358664152866393371

noncomputable section

/-- A023819: Sum of exponents in prime-power factorization of C(3n,n).

Offset 0, canonical program `A023819.P15358664152866393371`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023819 (n : ℕ) : ℤ :=
  A023819.P15358664152866393371.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023819.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023826.P15834259250542609692

`A022559(4*n)-A022559(3*n)-A022559(n)`
-/

namespace A023826.P15834259250542609692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (4 * n) - A022559 (3 * n) - A022559 n

end

end A023826.P15834259250542609692

noncomputable section

/-- A023826: Sum of exponents in prime-power factorization of C(4n,n).

Offset 0, canonical program `A023826.P15834259250542609692`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023826 (n : ℕ) : ℤ :=
  A023826.P15834259250542609692.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023826.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023834.P16787518251000114194

`A022559(4*n)-2*A022559(2*n)`
-/

namespace A023834.P16787518251000114194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (4 * n) - 2 * A022559 (2 * n)

end

end A023834.P16787518251000114194

noncomputable section

/-- A023834: Sum of exponents in prime-power factorization of C(4n,2n).

Offset 0, canonical program `A023834.P16787518251000114194`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023834 (n : ℕ) : ℤ :=
  A023834.P16787518251000114194.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023834.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023852.P8552689552939452037

`A022559(6*n)-A022559(5*n)-A022559(n)`
-/

namespace A023852.P8552689552939452037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (6 * n) - A022559 (5 * n) - A022559 n

end

end A023852.P8552689552939452037

noncomputable section

/-- A023852: Sum of exponents in prime-power factorization of binomial(6n, n).

Offset 0, canonical program `A023852.P8552689552939452037`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023852 (n : ℕ) : ℤ :=
  A023852.P8552689552939452037.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023852.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023853.P3578139371174769499

`A022559(6*n)-A022559(4*n)-A022559(2*n)`
-/

namespace A023853.P3578139371174769499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (6 * n) - A022559 (4 * n) - A022559 (2 * n)

end

end A023853.P3578139371174769499

noncomputable section

/-- A023853: Sum of exponents in prime-power factorization of binomial(6n, 2n).

Offset 0, canonical program `A023853.P3578139371174769499`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023853 (n : ℕ) : ℤ :=
  A023853.P3578139371174769499.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023853.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023854.P5029670943387420428

`A022559(6*n)-2*A022559(3*n)`
-/

namespace A023854.P5029670943387420428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (6 * n) - 2 * A022559 (3 * n)

end

end A023854.P5029670943387420428

noncomputable section

/-- A023854: Sum of exponents in prime-power factorization of binomial(6n, 3n).

Offset 0, canonical program `A023854.P5029670943387420428`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023854 (n : ℕ) : ℤ :=
  A023854.P5029670943387420428.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023854.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A023978.P11474590108139116730

`A022559(3*n)-3*A022559(n)`
-/

namespace A023978.P11474590108139116730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (3 * n) - 3 * A022559 n

end

end A023978.P11474590108139116730

noncomputable section

/-- A023978: Sum of exponents in prime-power factorization of multinomial coefficient M(3n; n,n,n).

Offset 0, canonical program `A023978.P11474590108139116730`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023978 (n : ℕ) : ℤ :=
  A023978.P11474590108139116730.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023978.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023979.P10012353997069429693

`A022559(4*n)-4*A022559(n)`
-/

namespace A023979.P10012353997069429693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (4 * n) - 4 * A022559 n

end

end A023979.P10012353997069429693

noncomputable section

/-- A023979: Sum of exponents in prime-power factorization of multinomial coefficient M(4n; n,n,n,n).

Offset 0, canonical program `A023979.P10012353997069429693`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023979 (n : ℕ) : ℤ :=
  A023979.P10012353997069429693.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023979.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023980.P13035758360106054050

`A022559(4*n)-A022559(2*n)-2*A022559(n)`
-/

namespace A023980.P13035758360106054050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (4 * n) - A022559 (2 * n) - 2 * A022559 n

end

end A023980.P13035758360106054050

noncomputable section

/-- A023980: Sum of exponents in prime-power factorization of multinomial coefficient M(4n;2n,n,n).

Offset 0, canonical program `A023980.P13035758360106054050`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023980 (n : ℕ) : ℤ :=
  A023980.P13035758360106054050.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023980.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023981.P8513506632808306074

`A022559(5*n)-5*A022559(n)`
-/

namespace A023981.P8513506632808306074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (5 * n) - 5 * A022559 n

end

end A023981.P8513506632808306074

noncomputable section

/-- A023981: Sum of exponents in prime-power factorization of multinomial coefficient M(5n; n,n,n,n,n).

Offset 0, canonical program `A023981.P8513506632808306074`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023981 (n : ℕ) : ℤ :=
  A023981.P8513506632808306074.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023981.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023982.P10936420451098235543

`A022559(5*n)-A022559(3*n)-2*A022559(n)`
-/

namespace A023982.P10936420451098235543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (5 * n) - A022559 (3 * n) - 2 * A022559 n

end

end A023982.P10936420451098235543

noncomputable section

/-- A023982: Sum of exponents in prime-power factorization of multinomial coefficient M(5n;3n,n,n).

Offset 0, canonical program `A023982.P10936420451098235543`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023982 (n : ℕ) : ℤ :=
  A023982.P10936420451098235543.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023982.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023983.P6771169843760342550

`A022559(5*n)-2*A022559(2*n)-A022559(n)`
-/

namespace A023983.P6771169843760342550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (5 * n) - 2 * A022559 (2 * n) - A022559 n

end

end A023983.P6771169843760342550

noncomputable section

/-- A023983: Sum of exponents in prime-power factorization of multinomial coefficient M(5n;2n,2n,n).

Offset 0, canonical program `A023983.P6771169843760342550`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023983 (n : ℕ) : ℤ :=
  A023983.P6771169843760342550.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023983.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023984.P15441145881468557615

`A022559(6*n)-6*A022559(n)`
-/

namespace A023984.P15441145881468557615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (6 * n) - 6 * A022559 n

end

end A023984.P15441145881468557615

noncomputable section

/-- A023984: Sum of exponents in prime-power factorization of multinomial coefficient M(6n; n,n,n,n,n,n).

Offset 0, canonical program `A023984.P15441145881468557615`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023984 (n : ℕ) : ℤ :=
  A023984.P15441145881468557615.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023984.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023985.P1168665927109515625

`A022559(6*n)-3*A022559(2*n)`
-/

namespace A023985.P1168665927109515625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (6 * n) - 3 * A022559 (2 * n)

end

end A023985.P1168665927109515625

noncomputable section

/-- A023985: Sum of exponents in prime-power factorization of multinomial coefficient M(6n,2n,2n,2n).

Offset 0, canonical program `A023985.P1168665927109515625`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023985 (n : ℕ) : ℤ :=
  A023985.P1168665927109515625.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023985.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023992.P14069554627008389637

`A022559(4*(n+2))-A022559(2*(n+2))-A022559(n+4)-A022559(n)`
-/

namespace A023992.P14069554627008389637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (4 * (n + 2)) - A022559 (2 * (n + 2)) - A022559 (n + 4) - A022559 n

end

end A023992.P14069554627008389637

noncomputable section

/-- A023992: Sum of exponents of primes in multinomial coefficient M(4n; n+2,2n,n-2).

Offset 2, canonical program `A023992.P14069554627008389637`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023992 (n : ℕ) : ℤ :=
  A023992.P14069554627008389637.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023992.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023993.P237544004253746633

`A022559(3*(n+1))-A022559(n+3)-2*A022559(n)`
-/

namespace A023993.P237544004253746633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (3 * (n + 1)) - A022559 (n + 3) - 2 * A022559 n

end

end A023993.P237544004253746633

noncomputable section

/-- A023993: Sum of exponents of primes in multinomial coefficient M(3n; n+2,n-1,n-1).

Offset 1, canonical program `A023993.P237544004253746633`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023993 (n : ℕ) : ℤ :=
  A023993.P237544004253746633.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023993.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A024451.P12203805704166071334

`a(n-1)*A000040(n)+A002110(n-1)` with `a(0)=0`
-/

namespace A024451.P12203805704166071334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) * A000040 n + A002110 (n - 1)

end

end A024451.P12203805704166071334

noncomputable section

/-- A024451: a(n) is the numerator of Sum_{i = 1..n} 1/prime(i).

Offset 0, canonical program `A024451.P12203805704166071334`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024451 (n : ℕ) : ℤ :=
  A024451.P12203805704166071334.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024451.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A024528.P11729440654111446191

`A000040(n)*a(n-1)+A002110(n-1)` with `a(0)=1`
-/

namespace A024528.P11729440654111446191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 n * a (n - 1) + A002110 (n - 1)

end

end A024528.P11729440654111446191

noncomputable section

/-- A024528: a(n) = n-th elementary symmetric function of {1, prime(1), prime(2), ..., prime(n)}.

Offset 0, canonical program `A024528.P11729440654111446191`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024528 (n : ℕ) : ℤ :=
  A024528.P11729440654111446191.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024528.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A026492.P15606881641265336009

`1+A000120(3*n)%2`
-/

namespace A026492.P15606881641265336009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + Int.tmod (A000120 (3 * n)) 2

end

end A026492.P15606881641265336009

noncomputable section

/-- A026492: a(n) = t(3n), where t = A001285 (Thue-Morse sequence).

Offset 0, canonical program `A026492.P15606881641265336009`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026492 (n : ℕ) : ℤ :=
  A026492.P15606881641265336009.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026492.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A026498.P16536631461196853276

`1+A000120(3*n+1)%2`
-/

namespace A026498.P16536631461196853276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + Int.tmod (A000120 (3 * n + 1)) 2

end

end A026498.P16536631461196853276

noncomputable section

/-- A026498: a(n) = t(1+3n), where t = A001285 (Thue-Morse sequence).

Offset 0, canonical program `A026498.P16536631461196853276`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026498 (n : ℕ) : ℤ :=
  A026498.P16536631461196853276.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026498.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A026513.P10329277851152650728

`1+A000120(3*n+2)%2`
-/

namespace A026513.P10329277851152650728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + Int.tmod (A000120 (3 * n + 2)) 2

end

end A026513.P10329277851152650728

noncomputable section

/-- A026513: a(n) = t(2+3n), where t = A001285 (Thue-Morse sequence).

Offset 0, canonical program `A026513.P10329277851152650728`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026513 (n : ℕ) : ℤ :=
  A026513.P10329277851152650728.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026513.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A026517.P14532650133324434253

`1+A000120(5*n)%2`
-/

namespace A026517.P14532650133324434253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + Int.tmod (A000120 (5 * n)) 2

end

end A026517.P14532650133324434253

noncomputable section

/-- A026517: a(n) = t(5n), where t = A001285 (Thue-Morse sequence).

Offset 0, canonical program `A026517.P14532650133324434253`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026517 (n : ℕ) : ℤ :=
  A026517.P14532650133324434253.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026517.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A026535.P9991868265811698580

`1+A000120(5*n+1)%2`
-/

namespace A026535.P9991868265811698580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + Int.tmod (A000120 (5 * n + 1)) 2

end

end A026535.P9991868265811698580

noncomputable section

/-- A026535: a(n) = t(1+5n) where t = A001285 (Thue-Morse sequence).

Offset 0, canonical program `A026535.P9991868265811698580`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026535 (n : ℕ) : ℤ :=
  A026535.P9991868265811698580.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026535.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A028334.P17947733201026886086

`A001223(n+2)/2`
-/

namespace A028334.P17947733201026886086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001223 (n + 2) : ℚ) / 2

end

end A028334.P17947733201026886086

noncomputable section

/-- A028334: Differences between consecutive odd primes, divided by 2.

Offset 2, canonical program `A028334.P17947733201026886086`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028334 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028334.P17947733201026886086.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028334.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A032441.P1610435470742881743

`A033192(n)+1`
-/

namespace A032441.P1610435470742881743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033192 n + 1

end

end A032441.P1610435470742881743

noncomputable section

/-- A032441: a(n) = Sum_{i=0..2} binomial(Fibonacci(n),i).

Offset 0, canonical program `A032441.P1610435470742881743`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032441 (n : ℕ) : ℤ :=
  A032441.P1610435470742881743.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032441.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A033272.P13508540407970114624

`A001227(n+1)-A005087(n+1)`
-/

namespace A033272.P13508540407970114624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A005087 (n + 1)

end

end A033272.P13508540407970114624

noncomputable section

/-- A033272: Number of odd nonprimes dividing n.

Offset 1, canonical program `A033272.P13508540407970114624`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005087, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033272 (n : ℕ) : ℤ :=
  A033272.P13508540407970114624.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005087, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033272.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A033556.P16565901460105986289

`2*a(n-1)-A007917(a(n-1)-1)` with `a(0)=3`
-/

namespace A033556.P16565901460105986289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  2 * a (n - 1) - A007917 (a (n - 1) - 1).toNat

end

end A033556.P16565901460105986289

noncomputable section

/-- A033556: a(n+1) = 2a(n) - {largest prime < a(n)}.

Offset 0, canonical program `A033556.P16565901460105986289`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033556 (n : ℕ) : ℤ :=
  A033556.P16565901460105986289.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033556.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A036263.P14888342997651084870

`A001223(n+2)-A001223(n+1)`
-/

namespace A036263.P14888342997651084870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2) - A001223 (n + 1)

end

end A036263.P14888342997651084870

noncomputable section

/-- A036263: Second differences of primes.

Offset 1, canonical program `A036263.P14888342997651084870`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036263 (n : ℕ) : ℤ :=
  A036263.P14888342997651084870.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036263.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036555.P297954735964110707

`A000120(3*n)`
-/

namespace A036555.P297954735964110707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (3 * n)

end

end A036555.P297954735964110707

noncomputable section

/-- A036555: Hamming weight of 3n: number of 1's in binary expansion of 3n.

Offset 0, canonical program `A036555.P297954735964110707`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036555 (n : ℕ) : ℤ :=
  A036555.P297954735964110707.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036555.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036561.P7490084913005378529

`2^(A004736(n+1)-1)*3^(A002260(n+1)-1)`
-/

namespace A036561.P7490084913005378529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A004736 (n + 1) - 1 : ℤ) * (3 : ℚ) ^ (A002260 (n + 1) - 1 : ℤ)

end

end A036561.P7490084913005378529

noncomputable section

/-- A036561: Nicomachus triangle read by rows, T(n, k) = 2^(n - k)*3^k, for 0 <= k <= n.

Offset 0, canonical program `A036561.P7490084913005378529`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036561 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A036561.P7490084913005378529.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036561.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036682.P4573644156298680558

`A001872(n)+2*A001628(n)`
-/

namespace A036682.P4573644156298680558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001872 n + 2 * A001628 n

end

end A036682.P4573644156298680558

noncomputable section

/-- A036682: T(n+3,3) with T as in A036355.

Offset 0, canonical program `A036682.P4573644156298680558`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036682 (n : ℕ) : ℤ :=
  A036682.P4573644156298680558.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036682.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036683.P2745491018697872798

`A001628(n)+3*A001872(n)+A001873(n)`
-/

namespace A036683.P2745491018697872798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001628 n + 3 * A001872 n + A001873 n

end

end A036683.P2745491018697872798

noncomputable section

/-- A036683: T(n+4,4) with T as in A036355.

Offset 0, canonical program `A036683.P2745491018697872798`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036683 (n : ℕ) : ℤ :=
  A036683.P2745491018697872798.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036683.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A038812.P17631679600982750051

`A028505(10*(n+1))`
-/

namespace A038812.P17631679600982750051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028505 (10 * (n + 1))

end

end A038812.P17631679600982750051

noncomputable section

/-- A038812: Number of primes less than 1000n.

Offset 1, canonical program `A038812.P17631679600982750051`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038812 (n : ℕ) : ℤ :=
  A038812.P17631679600982750051.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038812.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000082.P16648937404349228138

`A181797(n+1)*A003557(n+1)`
-/

namespace A000082.P16648937404349228138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181797 (n + 1) * A003557 (n + 1)

end

end A000082.P16648937404349228138

noncomputable section

/-- A000082: a(n) = n^2*Product_{p|n} (1 + 1/p).

Offset 1, canonical program `A000082.P16648937404349228138`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181797, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000082 (n : ℕ) : ℤ :=
  A000082.P16648937404349228138.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181797, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000082.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A000740.P14835443835842648949

`A027375(n+1)/2`
-/

namespace A000740.P14835443835842648949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027375 (n + 1) : ℚ) / 2

end

end A000740.P14835443835842648949

noncomputable section

/-- A000740: Number of 2n-bead balanced binary necklaces of fundamental period 2n, equivalent to reversed complement; also Dirichlet convolution of b_n=2^(n-1) with mu(n); also number of components of Mandelbrot set corresponding to Julia sets with an attractive n-cycle.

Offset 1, canonical program `A000740.P14835443835842648949`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027375, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000740 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000740.P14835443835842648949.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027375, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000740.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A002129.P14132575705783117531

`A000593(n+1)-A146076(n+1)`
-/

namespace A002129.P14132575705783117531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) - A146076 (n + 1)

end

end A002129.P14132575705783117531

noncomputable section

/-- A002129: Generalized sum of divisors function: excess of sum of odd divisors of n over sum of even divisors of n.

Offset 1, canonical program `A002129.P14132575705783117531`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000593, A146076, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A002129 (n : ℕ) : ℤ :=
  A002129.P14132575705783117531.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000593, A146076, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A002129.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A005879.P17126699458363166872

`4*A005880(n)`
-/

namespace A005879.P17126699458363166872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A005880 n

end

end A005879.P17126699458363166872

noncomputable section

/-- A005879: Theta series of D_4 lattice with respect to deep hole.

Offset 0, canonical program `A005879.P17126699458363166872`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005879 (n : ℕ) : ℤ :=
  A005879.P17126699458363166872.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005879.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A007504.P14310834286015847203

`A014284(n+1)-1`
-/

namespace A007504.P14310834286015847203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (n + 1) - 1

end

end A007504.P14310834286015847203

noncomputable section

/-- A007504: Sum of the first n primes.

Offset 0, canonical program `A007504.P14310834286015847203`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007504 (n : ℕ) : ℤ :=
  A007504.P14310834286015847203.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007504.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A024934.P986363156688133824

`a(n-1)+A000720(n-1)-A105221(n)` with `a(0)=0, a(1)=0`
-/

namespace A024934.P986363156688133824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + A000720 (n - 1) - A105221 n

end

end A024934.P986363156688133824

noncomputable section

/-- A024934: Sum of remainders n mod p, over all primes p < n.

Offset 0, canonical program `A024934.P986363156688133824`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024934 (n : ℕ) : ℤ :=
  A024934.P986363156688133824.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024934.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A034602.P9526103643021856479

`A263882(n+3)/A000040(n+3)`
-/

namespace A034602.P9526103643021856479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263882 (n + 3) : ℚ) / (A000040 (n + 3) : ℚ)

end

end A034602.P9526103643021856479

noncomputable section

/-- A034602: Wolstenholme quotient W_p = (binomial(2p-1,p) - 1)/p^3 for prime p=A000040(n).

Offset 3, canonical program `A034602.P9526103643021856479`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034602 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A034602.P9526103643021856479.a (n - 3))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034602.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A034947.P12901732433088194458

`2-A099545(n+1)`
-/

namespace A034947.P12901732433088194458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A099545 (n + 1)

end

end A034947.P12901732433088194458

noncomputable section

/-- A034947: Jacobi (or Kronecker) symbol (-1/n).

Offset 1, canonical program `A034947.P12901732433088194458`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034947 (n : ℕ) : ℤ :=
  A034947.P12901732433088194458.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034947.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A004216.P11701108540860389608

`A055642(n+1)-1`
-/

namespace A004216.P11701108540860389608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (n + 1) - 1

end

end A004216.P11701108540860389608

noncomputable section

/-- A004216: a(n) = floor(log_10(n)).

Offset 1, canonical program `A004216.P11701108540860389608`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004216 (n : ℕ) : ℤ :=
  A004216.P11701108540860389608.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004216.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019523.P11857034925577887048

`a(n-1)*10^A055642(A000045(n+1))+A000045(n+1)` with `a(0)=1`
-/

namespace A019523.P11857034925577887048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (10 : ℚ) ^ (A055642 (A000045 (n + 1)).toNat : ℤ) + (A000045 (n + 1) : ℚ)

end

end A019523.P11857034925577887048

noncomputable section

/-- A019523: Concatenation of Fibonacci(1) through Fibonacci(n).

Offset 1, canonical program `A019523.P11857034925577887048`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019523 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A019523.P11857034925577887048.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019523.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000031.P16543801865445953573

`∑{d}[n, A059966(#)]+1`
-/

namespace A000031.P16543801865445953573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059966 d + 1

end

end A000031.P16543801865445953573

noncomputable section

/-- A000031: Number of n-bead necklaces with 2 colors when turning over is not allowed; also number of output sequences from a simple n-stage cycling shift register; also number of binary irreducible polynomials whose degree divides n.

Offset 0, canonical program `A000031.P16543801865445953573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A000031 (n : ℕ) : ℤ :=
  A000031.P16543801865445953573.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A000031.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A001283.P9612674106324682864

`(A108872(n+1)+1)*A003057(n+2)`
-/

namespace A001283.P9612674106324682864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108872 (n + 1) + 1) * A003057 (n + 2)

end

end A001283.P9612674106324682864

noncomputable section

/-- A001283: Triangle read by rows, in which row n consists of n(n+m) for m = 1 .. n-1.

Offset 2, canonical program `A001283.P9612674106324682864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001283 (n : ℕ) : ℤ :=
  A001283.P9612674106324682864.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001283.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A001616.P911781339430000004

`∑{d}[n+1, A055155(#)*A271102((n+1)/#)]`
-/

namespace A001616.P911781339430000004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055155 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A001616.P911781339430000004

noncomputable section

/-- A001616: Number of parabolic vertices of Gamma_0(n).

Offset 1, canonical program `A001616.P911781339430000004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001616 (n : ℕ) : ℤ :=
  A001616.P911781339430000004.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001616.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A003985.P15061473656309770427

`and(A002260(n+1), A004736(n+1))`
-/

namespace A003985.P15061473656309770427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002260 (n + 1)) (A004736 (n + 1))

end

end A003985.P15061473656309770427

noncomputable section

/-- A003985: Triangle with subscripts (1,1),(2,1),(1,2),(3,1),(2,2),(1,3), etc. in which entry (i,j) is i AND j.

Offset 1, canonical program `A003985.P15061473656309770427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003985 (n : ℕ) : ℤ :=
  A003985.P15061473656309770427.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003988.P17998764845825661795

`floor(A004736(n+1)/A002260(n+1))`
-/

namespace A003988.P17998764845825661795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004736 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)⌋

end

end A003988.P17998764845825661795

noncomputable section

/-- A003988: Triangle with subscripts (1,1),(2,1),(1,2),(3,1),(2,2),(1,3), etc. in which entry (i,j) is [ i/j ].

Offset 1, canonical program `A003988.P17998764845825661795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003988 (n : ℕ) : ℤ :=
  A003988.P17998764845825661795.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003988.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A004198.P12357337643379645634

`A003986(n)-A003987(n)`
-/

namespace A004198.P12357337643379645634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 n - A003987 n

end

end A004198.P12357337643379645634

noncomputable section

/-- A004198: Table of x AND y, where (x,y) = (0,0),(0,1),(1,0),(0,2),(1,1),(2,0),...

Offset 0, canonical program `A004198.P12357337643379645634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004198 (n : ℕ) : ℤ :=
  A004198.P12357337643379645634.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004199.P14394472422688968774

`floor(A002260(n+1)/A004736(n+1))`
-/

namespace A004199.P14394472422688968774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002260 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ)⌋

end

end A004199.P14394472422688968774

noncomputable section

/-- A004199: Table of [ x/y ], where (x,y) = (1,1),(1,2),(2,1),(1,3),(2,2),(3,1),...

Offset 1, canonical program `A004199.P14394472422688968774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004199 (n : ℕ) : ℤ :=
  A004199.P14394472422688968774.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004199.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A004936.P716954522649507303

`(A000108(n)/A170829(n))²`
-/

namespace A004936.P716954522649507303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000108 n : ℚ) / (A170829 n : ℚ)) ^ 2

end

end A004936.P716954522649507303

noncomputable section

/-- A004936: Numerator of (binomial(2*n-2,n-1)/n!)^2.

Offset 1, canonical program `A004936.P716954522649507303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A004936 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A004936.P716954522649507303.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A004936.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A006073.P326677615052813534

`A006049(eq[1, Δ[A006049(n+1)]]+1)`
-/

namespace A006073.P326677615052813534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A006073.P326677615052813534

noncomputable section

/-- A006073: Numbers k such that k, k+1 and k+2 all have the same number of distinct prime divisors.

Offset 1, canonical program `A006073.P326677615052813534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3156 terms. -/
def A006073 (n : ℕ) : ℤ :=
  A006073.P326677615052813534.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3156 terms. -/
def A006073.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A006532.P9061832762431259574

`lt[A007913(A000203(n+1)), 2]+1`
-/

namespace A006532.P9061832762431259574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000203 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A006532.P9061832762431259574

noncomputable section

/-- A006532: Numbers whose sum of divisors is a square.

Offset 1, canonical program `A006532.P9061832762431259574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 564 terms. -/
def A006532 (n : ℕ) : ℤ :=
  (A006532.P9061832762431259574.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 564 terms. -/
def A006532.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A007854.P11965289805532718598

`2*A067336(n)-A049027(n)`
-/

namespace A007854.P11965289805532718598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067336 n - A049027 n

end

end A007854.P11965289805532718598

noncomputable section

/-- A007854: Expansion of 1/(1 - 3*x*C(x)), where C(x) = (1 - sqrt(1 - 4*x))/(2*x) = g.f. for the Catalan numbers A000108.

Offset 0, canonical program `A007854.P11965289805532718598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A007854 (n : ℕ) : ℤ :=
  A007854.P11965289805532718598.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A007854.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A007912.P16337960636681677811

`A007911(n+3)%(n+3)`
-/

namespace A007912.P16337960636681677811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007911 (n + 3)) (n + 3 : ℤ)

end

end A007912.P16337960636681677811

noncomputable section

/-- A007912: Quantum factorials: (n-1)!! - (n-2)!! (mod n).

Offset 3, canonical program `A007912.P16337960636681677811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A007912 (n : ℕ) : ℤ :=
  A007912.P16337960636681677811.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A007912.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A008904.P9528914656138212503

`A000030(A251984(4*n*a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A008904.P9528914656138212503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000030 (A251984 (4 * ((n : ℤ) * a (n - 1))).toNat).toNat

end

end A008904.P9528914656138212503

noncomputable section

/-- A008904: a(n) is the final nonzero digit of n!.

Offset 0, canonical program `A008904.P9528914656138212503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A008904 (n : ℕ) : ℤ :=
  A008904.P9528914656138212503.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A008904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008912.P182979477162641956

`lt[0, char[A008867(n+2)]]`
-/

namespace A008912.P182979477162641956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008867 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A008912.P182979477162641956

noncomputable section

/-- A008912: Truncated triangular numbers (of form n*(n-3)/2 - k^2+k*n+1 for 1<=k<n).

Offset 1, canonical program `A008912.P182979477162641956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1520 terms. -/
def A008912 (n : ℕ) : ℤ :=
  (A008912.P182979477162641956.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1520 terms. -/
def A008912.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A011262.P4477044997236671341

`A007913(n+1)²*A003557(n+1)`
-/

namespace A011262.P4477044997236671341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) ^ 2 * A003557 (n + 1)

end

end A011262.P4477044997236671341

noncomputable section

/-- A011262: In the prime factorization of n, increment odd powers and decrement even powers (multiplicative and self-inverse).

Offset 1, canonical program `A011262.P4477044997236671341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011262 (n : ℕ) : ℤ :=
  A011262.P4477044997236671341.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011794.P10538726268991914883

`A046854(n)+(1-A010054(n))*a(n-1)` with `a(0)=1`
-/

namespace A011794.P10538726268991914883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A046854 n + (1 - A010054 n) * a (n - 1)

end

end A011794.P10538726268991914883

noncomputable section

/-- A011794: Triangle defined by T(n+1, k) = T(n, k-1) + T(n-1, k), T(n,1) = 1, T(1,k) = 1, T(2,k) = min(2,k).

Offset 1, canonical program `A011794.P10538726268991914883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011794 (n : ℕ) : ℤ :=
  A011794.P10538726268991914883.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011794.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A013621.P15224404741451774442

`A013612(n)*A130321(n)`
-/

namespace A013621.P15224404741451774442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013612 n * A130321 n

end

end A013621.P15224404741451774442

noncomputable section

/-- A013621: Triangle of coefficients in expansion of (2+5*x)^n.

Offset 0, canonical program `A013621.P15224404741451774442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7340 terms. -/
def A013621 (n : ℕ) : ℤ :=
  A013621.P15224404741451774442.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7340 terms. -/
def A013621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013623.P10183538247220725976

`A013614(n)*A130321(n)`
-/

namespace A013623.P10183538247220725976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013614 n * A130321 n

end

end A013623.P10183538247220725976

noncomputable section

/-- A013623: Triangle of coefficients in expansion of (2 + 7*x)^n.

Offset 0, canonical program `A013623.P10183538247220725976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5751 terms. -/
def A013623 (n : ℕ) : ℤ :=
  A013623.P10183538247220725976.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5751 terms. -/
def A013623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013624.P5198726075486126688

`A013614(n)*A140303(n)`
-/

namespace A013624.P5198726075486126688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013614 n * A140303 n

end

end A013624.P5198726075486126688

noncomputable section

/-- A013624: Triangle of coefficients in expansion of (3+7x)^n.

Offset 0, canonical program `A013624.P5198726075486126688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5315 terms. -/
def A013624 (n : ℕ) : ℤ :=
  A013624.P5198726075486126688.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5315 terms. -/
def A013624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013637.P17117425938026762676

`A007917(n+2)*(n+3)`
-/

namespace A013637.P17117425938026762676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (n + 2) * (n + 3 : ℤ)

end

end A013637.P17117425938026762676

noncomputable section

/-- A013637: n*prevprime(n).

Offset 3, canonical program `A013637.P17117425938026762676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013637 (n : ℕ) : ℤ :=
  A013637.P17117425938026762676.a (n - 3)

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

/-! ## A014242.P916885412522519883

`A000071(n+3)-comp[A000071(n+3)]`
-/

namespace A014242.P916885412522519883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 3) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A014242.P916885412522519883

noncomputable section

/-- A014242: (n-th Fibonacci number that is not 1) - (n-th number that is 1 or not a Fibonacci number).

Offset 1, canonical program `A014242.P916885412522519883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A014242 (n : ℕ) : ℤ :=
  A014242.P916885412522519883.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A014242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014251.P12711182458160669696

`A000071(n+4)-comp[A000071(n+4)]`
-/

namespace A014251.P12711182458160669696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 4) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A014251.P12711182458160669696

noncomputable section

/-- A014251: a(n) = b(n) - c(n) where b(n) is the n-th Fibonacci number greater than 2 and c(n) is the n-th number not in sequence b( ).

Offset 1, canonical program `A014251.P12711182458160669696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A014251 (n : ℕ) : ℤ :=
  A014251.P12711182458160669696.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A014251.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A014413.P14567634354021645646

`A007318(eq[1, A340507(n)])`
-/

namespace A014413.P14567634354021645646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014413.P14567634354021645646

noncomputable section

/-- A014413: Triangular array formed from elements to right of middle of Pascal's triangle.

Offset 1, canonical program `A014413.P14567634354021645646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A014413 (n : ℕ) : ℤ :=
  A014413.P14567634354021645646.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A014413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014461.P5744230117709901210

`A014459(lt[1, A014459(n+1)]+1)`
-/

namespace A014461.P5744230117709901210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014459 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A014461.P5744230117709901210

noncomputable section

/-- A014461: Odd numbers in the triangle of Eulerian numbers that are not 1.

Offset 1, canonical program `A014461.P5744230117709901210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 735 terms. -/
def A014461 (n : ℕ) : ℤ :=
  A014461.P5744230117709901210.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 735 terms. -/
def A014461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014468.P6043171638105082105

`A014467(A049068(n+1))`
-/

namespace A014468.P6043171638105082105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014467 (A049068 (n + 1)).toNat

end

end A014468.P6043171638105082105

noncomputable section

/-- A014468: Triangular array formed from elements to right of middle of rows of the triangle of Eulerian numbers that are greater than 1.

Offset 1, canonical program `A014468.P6043171638105082105`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1156 terms. -/
def A014468 (n : ℕ) : ℤ :=
  A014468.P6043171638105082105.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1156 terms. -/
def A014468.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A014732.P7709679231101198463

`A014449(n+1)²`
-/

namespace A014732.P7709679231101198463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014449 (n + 1) ^ 2

end

end A014732.P7709679231101198463

noncomputable section

/-- A014732: Squares of numbers in triangle of Eulerian numbers that are not 1.

Offset 1, canonical program `A014732.P7709679231101198463`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014449, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014732 (n : ℕ) : ℤ :=
  A014732.P7709679231101198463.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014449, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014732.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014733.P14996875845063408463

`A014450(n+1)²`
-/

namespace A014733.P14996875845063408463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014450 (n + 1) ^ 2

end

end A014733.P14996875845063408463

noncomputable section

/-- A014733: Squares of even numbers in triangle of Eulerian numbers.

Offset 1, canonical program `A014733.P14996875845063408463`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014733 (n : ℕ) : ℤ :=
  A014733.P14996875845063408463.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014733.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014734.P18424674520400166600

`A014459(n+1)²`
-/

namespace A014734.P18424674520400166600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014459 (n + 1) ^ 2

end

end A014734.P18424674520400166600

noncomputable section

/-- A014734: Squares of odd numbers in triangle of Eulerian numbers.

Offset 1, canonical program `A014734.P18424674520400166600`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014459, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014734 (n : ℕ) : ℤ :=
  A014734.P18424674520400166600.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014459, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014734.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014748.P6580484843925837837

`A014467(n+1)²`
-/

namespace A014748.P6580484843925837837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014467 (n + 1) ^ 2

end

end A014748.P6580484843925837837

noncomputable section

/-- A014748: Squares of numbers in array formed from elements to the right of middle of rows of triangle of Eulerian numbers.

Offset 0, canonical program `A014748.P6580484843925837837`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014467, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014748 (n : ℕ) : ℤ :=
  A014748.P6580484843925837837.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014467, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014748.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014957.P10597532944830016708

`record[A000265(A014866(n+1))]`
-/

namespace A014957.P10597532944830016708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A014866 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014957.P10597532944830016708

noncomputable section

/-- A014957: Positive integers k that divide 16^k - 1.

Offset 1, canonical program `A014957.P10597532944830016708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 810 terms. -/
def A014957 (n : ℕ) : ℤ :=
  A014957.P10597532944830016708.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 810 terms. -/
def A014957.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015634.P4293513486807038876

`∑[A117108(n+1)]`
-/

namespace A015634.P4293513486807038876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015634.P4293513486807038876

noncomputable section

/-- A015634: Number of ordered quadruples of integers from [ 1..n ] with no global factor.

Offset 1, canonical program `A015634.P4293513486807038876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A015634 (n : ℕ) : ℤ :=
  A015634.P4293513486807038876.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A015634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015726.P17361478466068332891

`A010052(n*comp[A055236(3*(n+1))])`
-/

namespace A015726.P17361478466068332891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055236 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015726.P17361478466068332891

noncomputable section

/-- A015726: Inverse of 1717th cyclotomic polynomial.

Offset 0, canonical program `A015726.P17361478466068332891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A015726 (n : ℕ) : ℤ :=
  A015726.P17361478466068332891.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A015726.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A015915.P7648696316371349775

`A005408(eq[A054024(2*n+1), A054024(2*n+9)])`
-/

namespace A015915.P7648696316371349775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (2 * n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A015915.P7648696316371349775

noncomputable section

/-- A015915: Numbers k such that sigma(k) + 8 = sigma(k+8).

Offset 1, canonical program `A015915.P7648696316371349775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 356 terms. -/
def A015915 (n : ℕ) : ℤ :=
  A015915.P7648696316371349775.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 356 terms. -/
def A015915.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A018161.P6356870683678075885

`A018125(2*n)`
-/

namespace A018161.P6356870683678075885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018125 (2 * n)

end

end A018161.P6356870683678075885

noncomputable section

/-- A018161: Powers of fifth root of 16 rounded up.

Offset 0, canonical program `A018161.P6356870683678075885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 416 terms. -/
def A018161 (n : ℕ) : ℤ :=
  A018161.P6356870683678075885.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 416 terms. -/
def A018161.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A020904.P1504925668642329860

`lt[1, A020903(A002260(n+1))]`
-/

namespace A020904.P1504925668642329860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020903 (A002260 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A020904.P1504925668642329860

noncomputable section

/-- A020904: Positions of 2 in A020903; complement of A191777.

Offset 1, canonical program `A020904.P1504925668642329860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4730 terms. -/
def A020904 (n : ℕ) : ℤ :=
  (A020904.P1504925668642329860.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4730 terms. -/
def A020904.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A020940.P2412854877094668045

`A038801(A000040(n+1))`
-/

namespace A020940.P2412854877094668045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038801 (A000040 (n + 1)).toNat

end

end A020940.P2412854877094668045

noncomputable section

/-- A020940: Greatest k such that (k-th prime) < (10 times n-th prime).

Offset 1, canonical program `A020940.P2412854877094668045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A020940 (n : ℕ) : ℤ :=
  A020940.P2412854877094668045.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A020940.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A022166.P334113423595562006

`A157638(n)/A007318(n)`
-/

namespace A022166.P334113423595562006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157638 n : ℚ) / (A007318 n : ℚ)

end

end A022166.P334113423595562006

noncomputable section

/-- A022166: Triangle of Gaussian binomial coefficients (or q-binomial coefficients) [n,k] for q = 2.

Offset 0, canonical program `A022166.P334113423595562006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 645 terms. -/
def A022166 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A022166.P334113423595562006.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 645 terms. -/
def A022166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022290.P8838379397811908335

`n-∑[A000071(val(A288534(n), 2)+1)]`
-/

namespace A022290.P8838379397811908335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (SequenceMachineLib.valuation (A288534 n).toNat 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022290.P8838379397811908335

noncomputable section

/-- A022290: Replace 2^k in binary expansion of n with Fibonacci(k+2).

Offset 0, canonical program `A022290.P8838379397811908335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022290 (n : ℕ) : ℤ :=
  A022290.P8838379397811908335.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022290.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A022447.P13400589638145703350

`A062298(A288469(n+1)+A000007(n))`
-/

namespace A022447.P13400589638145703350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A288469 (n + 1) + A000007 n).toNat

end

end A022447.P13400589638145703350

noncomputable section

/-- A022447: Fractal sequence of the dispersion of the primes.

Offset 1, canonical program `A022447.P13400589638145703350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022447 (n : ℕ) : ℤ :=
  A022447.P13400589638145703350.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022447.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A023546.P15832084740815402753

`∑[A028242(∑[A097806(n)])]`
-/

namespace A023546.P15832084740815402753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023546.P15832084740815402753

noncomputable section

/-- A023546: Convolution of natural numbers >= 2 and A023531.

Offset 1, canonical program `A023546.P15832084740815402753`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023546 (n : ℕ) : ℤ :=
  A023546.P15832084740815402753.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023562.P8681614604525983552

`∑[∑[A097806(n)]-1]`
-/

namespace A023562.P8681614604525983552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023562.P8681614604525983552

noncomputable section

/-- A023562: Convolution of A023531 and odd numbers.

Offset 1, canonical program `A023562.P8681614604525983552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023562 (n : ℕ) : ℤ :=
  A023562.P8681614604525983552.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023562.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-- A023574: Sum of exponents in prime-power factorization of prime(n)-3; a(1) = a(2) = 0.

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

/-! ## A023818.P1614633070137310882

`A022559(2*(n+2))-(A022559(n+4)+A022559(n))`
-/

namespace A023818.P1614633070137310882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (2 * (n + 2)) - (A022559 (n + 4) + A022559 n)

end

end A023818.P1614633070137310882

noncomputable section

/-- A023818: Sum of exponents in prime-power factorization of C(2n,n-2).

Offset 2, canonical program `A023818.P1614633070137310882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023818 (n : ℕ) : ℤ :=
  A023818.P1614633070137310882.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023847.P14275358432901394298

`A022559(5*n)-(A022559(2*n)+A022559(3*n))`
-/

namespace A023847.P14275358432901394298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (5 * n) - (A022559 (2 * n) + A022559 (3 * n))

end

end A023847.P14275358432901394298

noncomputable section

/-- A023847: Sum of exponents in prime-power factorization of binomial(5n, 2n).

Offset 0, canonical program `A023847.P14275358432901394298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023847 (n : ℕ) : ℤ :=
  A023847.P14275358432901394298.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023847.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A024458.P8977965682072535931

`A128620(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A024458.P8977965682072535931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A128620 n - a (n - 2)

end

end A024458.P8977965682072535931

noncomputable section

/-- A024458: a(n) = s(1)*s(n) + s(2)*s(n-1) + ... + s(k)*s(n+1-k), where k = floor((n+1)/2), s = (Fibonacci numbers).

Offset 1, canonical program `A024458.P8977965682072535931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. -/
def A024458 (n : ℕ) : ℤ :=
  A024458.P8977965682072535931.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. -/
def A024458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024463.P13038753844099683083

`Δ[n*∑[A131524(n+2)]]`
-/

namespace A024463.P13038753844099683083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131524 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024463.P13038753844099683083

noncomputable section

/-- A024463: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = (Fibonacci numbers), t = (odd natural numbers).

Offset 1, canonical program `A024463.P13038753844099683083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 920 terms. -/
def A024463 (n : ℕ) : ℤ :=
  A024463.P13038753844099683083.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 920 terms. -/
def A024463.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024469.P6946807686841820033

`∪[A027980(n), A061171(n)]`
-/

namespace A024469.P6946807686841820033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027980 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061171 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A024469.P6946807686841820033

noncomputable section

/-- A024469: a(n) = s(1)s(n) + s(2)s(n-1) + ... + s(k)s(n+1-k), where k = [ (n+1)/2 ], s = (Lucas numbers).

Offset 1, canonical program `A024469.P6946807686841820033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A024469 (n : ℕ) : ℤ :=
  (A024469.P6946807686841820033.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A024469.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A024615.P1121594222135408077

`eq[0, A024614(n+1)%2]+1`
-/

namespace A024615.P1121594222135408077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024614 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024615.P1121594222135408077

noncomputable section

/-- A024615: Positions of even numbers in A024614.

Offset 1, canonical program `A024615.P1121594222135408077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2683 terms. -/
def A024615 (n : ℕ) : ℤ :=
  (A024615.P1121594222135408077.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2683 terms. -/
def A024615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024616.P13687596449847597735

`eq[1, A024614(n+1)%2]+1`
-/

namespace A024616.P13687596449847597735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024614 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024616.P13687596449847597735

noncomputable section

/-- A024616: Positions of odd numbers in A024614.

Offset 1, canonical program `A024616.P13687596449847597735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7317 terms. -/
def A024616 (n : ℕ) : ℤ :=
  (A024616.P13687596449847597735.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7317 terms. -/
def A024616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024618.P1991265973536153053

`eq[1, A001222(A024614(n+1))]+1`
-/

namespace A024618.P1991265973536153053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A024614 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024618.P1991265973536153053

noncomputable section

/-- A024618: Positions of primes in A024614.

Offset 1, canonical program `A024618.P1991265973536153053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2481 terms. -/
def A024618 (n : ℕ) : ℤ :=
  (A024618.P1991265973536153053.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2481 terms. -/
def A024618.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A024703.P14754064723573950428

`A239669(n+3)-4`
-/

namespace A024703.P14754064723573950428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239669 (n + 3) - 4

end

end A024703.P14754064723573950428

noncomputable section

/-- A024703: Prime divisors, including repetitions, of n-th term of A024702.

Offset 3, canonical program `A024703.P14754064723573950428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A024703 (n : ℕ) : ℤ :=
  A024703.P14754064723573950428.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A024703.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-- A026180: a(n) = s(k), where k is the n-th number such that s(j)<s(k) for all j<k, where s = A026177.

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

/-! ## A026330.P9256312715949612537

`A026307(2*(n+1))-(A026307(2*n+1)+A026307(2*n+1))`
-/

namespace A026330.P9256312715949612537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026307 (2 * (n + 1)) - (A026307 (2 * n + 1) + A026307 (2 * n + 1))

end

end A026330.P9256312715949612537

noncomputable section

/-- A026330: a(n) = number of (s(0), s(1), ..., s(n)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| <= 1 for i = 1,2,...,n, s(0) = 2, s(2n) = n+1. Also a(n) = T(2n,n+1), where T is the array in A026323.

Offset 0, canonical program `A026330.P9256312715949612537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A026330 (n : ℕ) : ℤ :=
  A026330.P9256312715949612537.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A026330.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A026938.P10285562476436993961

`A064189(∑[A010054(3*n+4)+n])`
-/

namespace A026938.P10285562476436993961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (3 * n + 4) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A026938.P10285562476436993961

noncomputable section

/-- A026938: Greatest number in row of n array T given by A026300.

Offset 0, canonical program `A026938.P10285562476436993961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A026938 (n : ℕ) : ℤ :=
  A026938.P10285562476436993961.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A026938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027012.P9178525586700888906

`A027963(record[gcd(n, ∑[n])+3])`
-/

namespace A027012.P9178525586700888906
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027963 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A027012.P9178525586700888906

noncomputable section

/-- A027012: a(n) = T(2*n, n+1), T given by A027011.

Offset 1, canonical program `A027012.P9178525586700888906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A027012 (n : ℕ) : ℤ :=
  A027012.P9178525586700888906.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A027012.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A027170.P895611629998342497

`2*A014430(n)+A014473(n)-1`
-/

namespace A027170.P895611629998342497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014430 n + (A014473 n - 1)

end

end A027170.P895611629998342497

noncomputable section

/-- A027170: Triangular array T read by rows (4-diamondization of Pascal's triangle). Step 1: t(n,k) = C(n+2,k+1) + C(n+1,k) + C(n+1,k+1) + C(n,k). Step 2: T(n,k) = t(n,k) - t(0,0) + 1. Domain: 0 <= k <= n, n >= 0.

Offset 0, canonical program `A027170.P895611629998342497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027170 (n : ℕ) : ℤ :=
  A027170.P895611629998342497.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027170.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A027833.P2673229578852313683

`Δ[eq[2, A001223(n+1)]]`
-/

namespace A027833.P2673229578852313683
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A027833.P2673229578852313683

noncomputable section

/-- A027833: Distances between successive 2's in sequence A001223 of differences between consecutive primes.

Offset 1, canonical program `A027833.P2673229578852313683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5422 terms. -/
def A027833 (n : ℕ) : ℤ :=
  A027833.P2673229578852313683.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5422 terms. -/
def A027833.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A027863.P18204088403806704990

`eq[1, A102853(n+1)]`
-/

namespace A027863.P18204088403806704990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A027863.P18204088403806704990

noncomputable section

/-- A027863: Numbers k such that k^2 + (k+1)^2 + (k+2)^2 is prime.

Offset 1, canonical program `A027863.P18204088403806704990`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 625 terms. -/
def A027863 (n : ℕ) : ℤ :=
  (A027863.P18204088403806704990.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 625 terms. -/
def A027863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027911.P10626631908770896148

`(2*n+1)/(n+1)*A026307(2*n)`
-/

namespace A027911.P10626631908770896148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (n + 1 : ℚ) * (A026307 (2 * n) : ℚ)

end

end A027911.P10626631908770896148

noncomputable section

/-- A027911: a(n) = T(2*n+1,n), with T given by A027907.

Offset 0, canonical program `A027911.P10626631908770896148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A027911 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A027911.P10626631908770896148.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A027911.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A027954.P3493308697241277458

`A014166(record[gcd(n, 1-a(n-1))])` with `a(0)=1`
-/

namespace A027954.P3493308697241277458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.gcd (n : ℤ) (1 - (f1 (n - 1) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014166 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A027954.P3493308697241277458

noncomputable section

/-- A027954: a(n) = T(2n+1, n+2), T given by A027948.

Offset 1, canonical program `A027954.P3493308697241277458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A027954 (n : ℕ) : ℤ :=
  A027954.P3493308697241277458.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A027954.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A028266.P10744337187639313587

`A028263(eq[2, gcd(2, A028263(n))])`
-/

namespace A028266.P10744337187639313587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A028263 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A028266.P10744337187639313587

noncomputable section

/-- A028266: Even elements in 3-Pascal triangle A028262 (by row).

Offset 0, canonical program `A028266.P10744337187639313587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8527 terms. -/
def A028266 (n : ℕ) : ℤ :=
  A028266.P10744337187639313587.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8527 terms. -/
def A028266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028276.P15109551320821074576

`A028263(n)+A007318(n)`
-/

namespace A028276.P15109551320821074576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 n + A007318 n

end

end A028276.P15109551320821074576

noncomputable section

/-- A028276: Elements in 4-Pascal triangle A028275 (by row) that are not 1.

Offset 0, canonical program `A028276.P15109551320821074576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028276 (n : ℕ) : ℤ :=
  A028276.P15109551320821074576.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028276.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-- A029416: Expansion of 1/((1-x^6)*(1-x^7)*(1-x^8)*(1-x^12)).

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

/-- A029417: Expansion of 1/((1-x^6)*(1-x^7)*(1-x^9)*(1-x^10)).

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

/-- A029418: Expansion of 1/((1-x^6)*(1-x^7)*(1-x^9)*(1-x^11)).

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

/-- A029419: Expansion of 1/((1-x^6)*(1-x^7)*(1-x^9)*(1-x^12)).

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

/-- A029423: Expansion of 1/((1-x^6)*(1-x^8)*(1-x^9)*(1-x^10)).

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

/-! ## A029607.P1574991405031157313

`A029605(lt[2, A029605(n)])`
-/

namespace A029607.P1574991405031157313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029605 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029607.P1574991405031157313

noncomputable section

/-- A029607: Even numbers in the (2,3)-Pascal triangle A029600 that are different from 2.

Offset 1, canonical program `A029607.P1574991405031157313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9843 terms. -/
def A029607 (n : ℕ) : ℤ :=
  A029607.P1574991405031157313.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9843 terms. -/
def A029607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029709.P13486042084338906989

`eq[4, A001223(n+1)]+1`
-/

namespace A029709.P13486042084338906989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A029709.P13486042084338906989

noncomputable section

/-- A029709: Numbers k such that k-th and (k+1)-th primes differ by 4.

Offset 1, canonical program `A029709.P13486042084338906989`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5419 terms. -/
def A029709 (n : ℕ) : ℤ :=
  (A029709.P13486042084338906989.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5419 terms. -/
def A029709.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A032440.P7459206147418244554

`A001611(n)+C(A001611(n), 3)`
-/

namespace A032440.P7459206147418244554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + (Nat.choose (A001611 n).toNat 3 : ℤ)

end

end A032440.P7459206147418244554

noncomputable section

/-- A032440: Sum_{i=0..3} binomial(Fibonacci(n),i).

Offset 0, canonical program `A032440.P7459206147418244554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A032440 (n : ℕ) : ℤ :=
  A032440.P7459206147418244554.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A032440.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A033811.P13473248571032266694

`A023537(n+2)-(n+2)`
-/

namespace A033811.P13473248571032266694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023537 (n + 2) - (n + 2 : ℤ)

end

end A033811.P13473248571032266694

noncomputable section

/-- A033811: Convolution of natural numbers n >= 1 with Lucas numbers L(k)(A000032) for k >= 2.

Offset 1, canonical program `A033811.P13473248571032266694`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A033811 (n : ℕ) : ℤ :=
  A033811.P13473248571032266694.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A033811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034028.P14737218398777476874

`comp[A034027(n+1)]`
-/

namespace A034028.P14737218398777476874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A034028.P14737218398777476874

noncomputable section

/-- A034028: Numbers n not of form (x^2+2y^2 with x >= y >= 0).

Offset 1, canonical program `A034028.P14737218398777476874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034028 (n : ℕ) : ℤ :=
  (A034028.P14737218398777476874.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034036.P767606872198546965

`comp[A034035(n+1)]`
-/

namespace A034036.P767606872198546965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A034036.P767606872198546965

noncomputable section

/-- A034036: Numbers of the form (x^2+xy+2y^2 with x>=0, y>=0).

Offset 1, canonical program `A034036.P767606872198546965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3052 terms. -/
def A034036 (n : ℕ) : ℤ :=
  (A034036.P767606872198546965.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3052 terms. -/
def A034036.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A034678.P2173923683494407018

`∑{d}[n+1, A065827(#)*A334657((n+1)/#)]`
-/

namespace A034678.P2173923683494407018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065827 d * A334657 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034678.P2173923683494407018

noncomputable section

/-- A034678: Sum of fourth powers of unitary divisors.

Offset 1, canonical program `A034678.P2173923683494407018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034678 (n : ℕ) : ℤ :=
  A034678.P2173923683494407018.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034678.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A034748.P1038499301982470669

`∑{d}[n+1, #*A007436((n+1)/#)]`
-/

namespace A034748.P1038499301982470669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A007436 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034748.P1038499301982470669

noncomputable section

/-- A034748: Dirichlet convolution of Fibonacci numbers with phi(n).

Offset 1, canonical program `A034748.P1038499301982470669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A034748 (n : ℕ) : ℤ :=
  A034748.P1038499301982470669.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A034748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034749.P16979121441155564528

`∑{d}[n+1, A007436(#)*A034731((n+1)/#)]`
-/

namespace A034749.P16979121441155564528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007436 d * A034731 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034749.P16979121441155564528

noncomputable section

/-- A034749: Dirichlet convolution of Fibonacci numbers with Catalan numbers.

Offset 1, canonical program `A034749.P16979121441155564528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A034749 (n : ℕ) : ℤ :=
  A034749.P16979121441155564528.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A034749.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A034784.P9791422119006832211

`lt[A010051(n+1), A101264(n)]`
-/

namespace A034784.P9791422119006832211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A034784.P9791422119006832211

noncomputable section

/-- A034784: Numbers n such that A034693(n) = 2.

Offset 1, canonical program `A034784.P9791422119006832211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8919 terms. -/
def A034784 (n : ℕ) : ℤ :=
  (A034784.P9791422119006832211.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8919 terms. -/
def A034784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034852.P3004687004049579186

`A007318(n)-A034851(n)`
-/

namespace A034852.P3004687004049579186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A034851 n

end

end A034852.P3004687004049579186

noncomputable section

/-- A034852: Rows of (Pascal's triangle - Losanitsch's triangle) (n >= 0, k >= 0).

Offset 0, canonical program `A034852.P3004687004049579186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034852 (n : ℕ) : ℤ :=
  A034852.P3004687004049579186.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034871.P10370109262443921469

`A074909(A259361(n)²+n)`
-/

namespace A034871.P10370109262443921469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A259361 n ^ 2 + (n : ℤ)).toNat

end

end A034871.P10370109262443921469

noncomputable section

/-- A034871: Odd-numbered rows of Pascal's triangle.

Offset 0, canonical program `A034871.P10370109262443921469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5851 terms. -/
def A034871 (n : ℕ) : ℤ :=
  A034871.P10370109262443921469.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5851 terms. -/
def A034871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034872.P500524105011552358

`A034851(ceil(n²/2)+n)`
-/

namespace A034872.P500524105011552358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (⌈(n ^ 2 : ℚ) / 2⌉ + (n : ℤ)).toNat

end

end A034872.P500524105011552358

noncomputable section

/-- A034872: Central column of Losanitsch's triangle A034851.

Offset 0, canonical program `A034872.P500524105011552358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A034872 (n : ℕ) : ℤ :=
  A034872.P500524105011552358.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A034872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034964.P11682848730202211862

`A000040(n+1)+2*A131019(n+1)`
-/

namespace A034964.P11682848730202211862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2 * A131019 (n + 1)

end

end A034964.P11682848730202211862

noncomputable section

/-- A034964: Sums of five consecutive primes.

Offset 1, canonical program `A034964.P11682848730202211862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034964 (n : ℕ) : ℤ :=
  A034964.P11682848730202211862.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034964.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A035714.P17015648478226489726

`∑[2*A035713(n)]-A035713(n)`
-/

namespace A035714.P17015648478226489726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035713 n

end

end A035714.P17015648478226489726

noncomputable section

/-- A035714: Coordination sequence for 19-dimensional cubic lattice.

Offset 0, canonical program `A035714.P17015648478226489726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035714 (n : ℕ) : ℤ :=
  A035714.P17015648478226489726.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035716.P6992411018503788900

`A035607(eq[21, A004736(n+1)])`
-/

namespace A035716.P6992411018503788900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035716.P6992411018503788900

noncomputable section

/-- A035716: Coordination sequence for 21-dimensional cubic lattice.

Offset 0, canonical program `A035716.P6992411018503788900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A035716 (n : ℕ) : ℤ :=
  A035716.P6992411018503788900.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A035716.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035722.P10431710349201618195

`A266213(eq[28, A004736(n+1)])`
-/

namespace A035722.P10431710349201618195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035722.P10431710349201618195

noncomputable section

/-- A035722: Coordination sequence for 27-dimensional cubic lattice.

Offset 0, canonical program `A035722.P10431710349201618195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A035722 (n : ℕ) : ℤ :=
  A035722.P10431710349201618195.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A035722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035725.P14868640989616806064

`∑[2*A035724(n)]-A035724(n)`
-/

namespace A035725.P14868640989616806064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035724 n

end

end A035725.P14868640989616806064

noncomputable section

/-- A035725: Coordination sequence for 30-dimensional cubic lattice.

Offset 0, canonical program `A035725.P14868640989616806064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035725 (n : ℕ) : ℤ :=
  A035725.P14868640989616806064.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035730.P4778937612577439523

`A035607(eq[35, A004736(n+1)])`
-/

namespace A035730.P4778937612577439523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035730.P4778937612577439523

noncomputable section

/-- A035730: Coordination sequence for 35-dimensional cubic lattice.

Offset 0, canonical program `A035730.P4778937612577439523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A035730 (n : ℕ) : ℤ :=
  A035730.P4778937612577439523.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A035730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035736.P17590245496951904625

`A035607(eq[41, A004736(n+1)])`
-/

namespace A035736.P17590245496951904625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035736.P17590245496951904625

noncomputable section

/-- A035736: Coordination sequence for 41-dimensional cubic lattice.

Offset 0, canonical program `A035736.P17590245496951904625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A035736 (n : ℕ) : ℤ :=
  A035736.P17590245496951904625.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A035736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035753.P4090825401291878675

`A035711(2*n)`
-/

namespace A035753.P4090825401291878675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035711 (2 * n)

end

end A035753.P4090825401291878675

noncomputable section

/-- A035753: Coordination sequence for C_16 lattice.

Offset 0, canonical program `A035753.P4090825401291878675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035753 (n : ℕ) : ℤ :=
  A035753.P4090825401291878675.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035754.P12613801996385797281

`A035712(2*n)`
-/

namespace A035754.P12613801996385797281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035712 (2 * n)

end

end A035754.P12613801996385797281

noncomputable section

/-- A035754: Coordination sequence for C_17 lattice.

Offset 0, canonical program `A035754.P12613801996385797281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035754 (n : ℕ) : ℤ :=
  A035754.P12613801996385797281.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035755.P17301947102453587029

`A035713(2*n)`
-/

namespace A035755.P17301947102453587029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035713 (2 * n)

end

end A035755.P17301947102453587029

noncomputable section

/-- A035755: Coordination sequence for C_18 lattice.

Offset 0, canonical program `A035755.P17301947102453587029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035755 (n : ℕ) : ℤ :=
  A035755.P17301947102453587029.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035760.P18332467969710151844

`A035718(2*n)`
-/

namespace A035760.P18332467969710151844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035718 (2 * n)

end

end A035760.P18332467969710151844

noncomputable section

/-- A035760: Coordination sequence for C_23 lattice.

Offset 0, canonical program `A035760.P18332467969710151844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035760 (n : ℕ) : ℤ :=
  A035760.P18332467969710151844.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035761.P16161289228915293443

`A035719(2*n)`
-/

namespace A035761.P16161289228915293443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035719 (2 * n)

end

end A035761.P16161289228915293443

noncomputable section

/-- A035761: Coordination sequence for C_24 lattice.

Offset 0, canonical program `A035761.P16161289228915293443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035761 (n : ℕ) : ℤ :=
  A035761.P16161289228915293443.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035762.P6827177797753924345

`A035720(2*n)`
-/

namespace A035762.P6827177797753924345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035720 (2 * n)

end

end A035762.P6827177797753924345

noncomputable section

/-- A035762: Coordination sequence for C_25 lattice.

Offset 0, canonical program `A035762.P6827177797753924345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035762 (n : ℕ) : ℤ :=
  A035762.P6827177797753924345.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035763.P8579594105794458103

`A035721(2*n)`
-/

namespace A035763.P8579594105794458103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035721 (2 * n)

end

end A035763.P8579594105794458103

noncomputable section

/-- A035763: Coordination sequence for C_26 lattice.

Offset 0, canonical program `A035763.P8579594105794458103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035763 (n : ℕ) : ℤ :=
  A035763.P8579594105794458103.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035765.P14421996176404588701

`A035723(2*n)`
-/

namespace A035765.P14421996176404588701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035723 (2 * n)

end

end A035765.P14421996176404588701

noncomputable section

/-- A035765: Coordination sequence for C_28 lattice.

Offset 0, canonical program `A035765.P14421996176404588701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035765 (n : ℕ) : ℤ :=
  A035765.P14421996176404588701.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035766.P4903701500395149219

`A035724(2*n)`
-/

namespace A035766.P4903701500395149219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035724 (2 * n)

end

end A035766.P4903701500395149219

noncomputable section

/-- A035766: Coordination sequence for C_29 lattice.

Offset 0, canonical program `A035766.P4903701500395149219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035766 (n : ℕ) : ℤ :=
  A035766.P4903701500395149219.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035768.P14573455193302129756

`A035726(2*n)`
-/

namespace A035768.P14573455193302129756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035726 (2 * n)

end

end A035768.P14573455193302129756

noncomputable section

/-- A035768: Coordination sequence for C_31 lattice.

Offset 0, canonical program `A035768.P14573455193302129756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035768 (n : ℕ) : ℤ :=
  A035768.P14573455193302129756.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035770.P16356936723901136099

`A035728(2*n)`
-/

namespace A035770.P16356936723901136099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035728 (2 * n)

end

end A035770.P16356936723901136099

noncomputable section

/-- A035770: Coordination sequence for C_33 lattice.

Offset 0, canonical program `A035770.P16356936723901136099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4173 terms. -/
def A035770 (n : ℕ) : ℤ :=
  A035770.P16356936723901136099.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4173 terms. -/
def A035770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035771.P4108631056450841646

`A035729(2*n)`
-/

namespace A035771.P4108631056450841646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035729 (2 * n)

end

end A035771.P4108631056450841646

noncomputable section

/-- A035771: Coordination sequence for C_34 lattice.

Offset 0, canonical program `A035771.P4108631056450841646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3456 terms. -/
def A035771 (n : ℕ) : ℤ :=
  A035771.P4108631056450841646.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3456 terms. -/
def A035771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035773.P16451583216531439100

`A035731(2*n)`
-/

namespace A035773.P16451583216531439100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035731 (2 * n)

end

end A035773.P16451583216531439100

noncomputable section

/-- A035773: Coordination sequence for C_36 lattice.

Offset 0, canonical program `A035773.P16451583216531439100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2454 terms. -/
def A035773 (n : ℕ) : ℤ :=
  A035773.P16451583216531439100.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2454 terms. -/
def A035773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035774.P5127492517742638998

`A035732(2*n)`
-/

namespace A035774.P5127492517742638998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035732 (2 * n)

end

end A035774.P5127492517742638998

noncomputable section

/-- A035774: Coordination sequence for C_37 lattice.

Offset 0, canonical program `A035774.P5127492517742638998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2100 terms. -/
def A035774 (n : ℕ) : ℤ :=
  A035774.P5127492517742638998.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2100 terms. -/
def A035774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035777.P9262208341548291042

`A035735(2*n)`
-/

namespace A035777.P9262208341548291042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035735 (2 * n)

end

end A035777.P9262208341548291042

noncomputable section

/-- A035777: Coordination sequence for C_40 lattice.

Offset 0, canonical program `A035777.P9262208341548291042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1386 terms. -/
def A035777 (n : ℕ) : ℤ :=
  A035777.P9262208341548291042.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1386 terms. -/
def A035777.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A036957.P14141534106226946657

`eq[1, A001222(A007091(n+1))]+1`
-/

namespace A036957.P14141534106226946657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007091 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036957.P14141534106226946657

noncomputable section

/-- A036957: Primes with digits (0,...,4) taken as base 5 and converted to base 10.

Offset 1, canonical program `A036957.P14141534106226946657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A036957 (n : ℕ) : ℤ :=
  (A036957.P14141534106226946657.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A036957.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A037896.P17461005331305696964

`A002523(eq[1, A193929(n)])`
-/

namespace A037896.P17461005331305696964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037896.P17461005331305696964

noncomputable section

/-- A037896: Primes of the form k^4 + 1.

Offset 1, canonical program `A037896.P17461005331305696964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 790 terms. -/
def A037896 (n : ℕ) : ℤ :=
  A037896.P17461005331305696964.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 790 terms. -/
def A037896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037917.P2836793027716772773

`eq[0, A174340(n+2)]+2`
-/

namespace A037917.P2836793027716772773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174340 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A037917.P2836793027716772773

noncomputable section

/-- A037917: Numbers n such that the Fibonacci number F(n) is divisible by a square.

Offset 1, canonical program `A037917.P2836793027716772773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A037917 (n : ℕ) : ℤ :=
  (A037917.P2836793027716772773.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A037917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037918.P7428307511424955456

`eq[A104714(n), A109009(n)]`
-/

namespace A037918.P7428307511424955456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104714 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109009 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037918.P7428307511424955456

noncomputable section

/-- A037918: Numbers n such that the Fibonacci number F(n) is squarefree.

Offset 1, canonical program `A037918.P7428307511424955456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1091 terms. -/
def A037918 (n : ℕ) : ℤ :=
  (A037918.P7428307511424955456.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1091 terms. -/
def A037918.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A038216.P16300750487479131636

`A013617(n)*A130321(n)`
-/

namespace A038216.P16300750487479131636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013617 n * A130321 n

end

end A038216.P16300750487479131636

noncomputable section

/-- A038216: Triangle whose (i,j)-th entry is binomial(i,j)*2^(i-j)*10^j.

Offset 0, canonical program `A038216.P16300750487479131636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4539 terms. -/
def A038216 (n : ℕ) : ℤ :=
  A038216.P16300750487479131636.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4539 terms. -/
def A038216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038217.P11166805108262565731

`A013618(n)*A130321(n)`
-/

namespace A038217.P11166805108262565731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013618 n * A130321 n

end

end A038217.P11166805108262565731

noncomputable section

/-- A038217: Triangle whose (i,j)-th entry is binomial(i,j)*2^(i-j)*11^j.

Offset 0, canonical program `A038217.P11166805108262565731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4259 terms. -/
def A038217 (n : ℕ) : ℤ :=
  A038217.P11166805108262565731.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4259 terms. -/
def A038217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038229.P16179588272599030162

`A013618(n)*A140303(n)`
-/

namespace A038229.P16179588272599030162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013618 n * A140303 n

end

end A038229.P16179588272599030162

noncomputable section

/-- A038229: Triangle whose (i,j)-th entry is binomial(i,j)*3^(i-j)*11^j.

Offset 0, canonical program `A038229.P16179588272599030162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4067 terms. -/
def A038229 (n : ℕ) : ℤ :=
  A038229.P16179588272599030162.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4067 terms. -/
def A038229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038243.P17559097150477924643

`A013612(A061579(n))`
-/

namespace A038243.P17559097150477924643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013612 (A061579 n).toNat

end

end A038243.P17559097150477924643

noncomputable section

/-- A038243: Triangle whose (i,j)-th entry is 5^(i-j)*binomial(i,j).

Offset 0, canonical program `A038243.P17559097150477924643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8515 terms. -/
def A038243 (n : ℕ) : ℤ :=
  A038243.P17559097150477924643.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8515 terms. -/
def A038243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038248.P5226553571580903322

`lcm(A013610(n), A038244(n))`
-/

namespace A038248.P5226553571580903322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013610 n) (A038244 n)

end

end A038248.P5226553571580903322

noncomputable section

/-- A038248: Triangle whose (i,j)-th entry is binomial(i,j)*5^(i-j)*6^j.

Offset 0, canonical program `A038248.P5226553571580903322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4895 terms. -/
def A038248 (n : ℕ) : ℤ :=
  (A038248.P5226553571580903322.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4895 terms. -/
def A038248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038251.P17483344904607417422

`A000351(A025581(n))*A013616(n)`
-/

namespace A038251.P17483344904607417422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A025581 n).toNat * A013616 n

end

end A038251.P17483344904607417422

noncomputable section

/-- A038251: Triangle whose (i,j)-th entry is binomial(i,j)*5^(i-j)*9^j.

Offset 0, canonical program `A038251.P17483344904607417422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4053 terms. -/
def A038251 (n : ℕ) : ℤ :=
  A038251.P17483344904607417422.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4053 terms. -/
def A038251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038253.P3757305968337782990

`A000351(A025581(n))*A013618(n)`
-/

namespace A038253.P3757305968337782990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A025581 n).toNat * A013618 n

end

end A038253.P3757305968337782990

noncomputable section

/-- A038253: Triangle whose (i,j)-th entry is binomial(i,j)*5^(i-j)*11^j.

Offset 0, canonical program `A038253.P3757305968337782990`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3625 terms. -/
def A038253 (n : ℕ) : ℤ :=
  A038253.P3757305968337782990.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3625 terms. -/
def A038253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038275.P16286396353460600798

`lcm(A013616(n), A027466(n))`
-/

namespace A038275.P16286396353460600798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013616 n) (A027466 n)

end

end A038275.P16286396353460600798

noncomputable section

/-- A038275: Triangle whose (i,j)-th entry is binomial(i,j)*7^(i-j)*9^j.

Offset 0, canonical program `A038275.P16286396353460600798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3615 terms. -/
def A038275 (n : ℕ) : ℤ :=
  (A038275.P16286396353460600798.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3615 terms. -/
def A038275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038277.P4730209142109428037

`lcm(A013618(n), A027466(n))`
-/

namespace A038277.P4730209142109428037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013618 n) (A027466 n)

end

end A038277.P4730209142109428037

noncomputable section

/-- A038277: Triangle whose (i,j)-th entry is binomial(i,j)*7^(i-j)*11^j.

Offset 0, canonical program `A038277.P4730209142109428037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3363 terms. -/
def A038277 (n : ℕ) : ℤ :=
  (A038277.P4730209142109428037.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3363 terms. -/
def A038277.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038285.P11789365728904312411

`A036565(n)*A038231(n)`
-/

namespace A038285.P11789365728904312411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036565 n * A038231 n

end

end A038285.P11789365728904312411

noncomputable section

/-- A038285: Triangle whose (i,j)-th entry is binomial(i,j)*8^(i-j)*7^j.

Offset 0, canonical program `A038285.P11789365728904312411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3779 terms. -/
def A038285 (n : ℕ) : ℤ :=
  A038285.P11789365728904312411.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3779 terms. -/
def A038285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038304.P16871392387466480336

`A038244(n)*A130321(n)`
-/

namespace A038304.P16871392387466480336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038244 n * A130321 n

end

end A038304.P16871392387466480336

noncomputable section

/-- A038304: Triangle whose (i,j)-th entry is binomial(i,j)*10^(i-j)*2^j.

Offset 0, canonical program `A038304.P16871392387466480336`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4476 terms. -/
def A038304 (n : ℕ) : ℤ :=
  A038304.P16871392387466480336.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4476 terms. -/
def A038304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038307.P4193007568946257475

`A038247(n)*A130321(n)`
-/

namespace A038307.P4193007568946257475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038247 n * A130321 n

end

end A038307.P4193007568946257475

noncomputable section

/-- A038307: Triangle whose (i,j)-th entry is binomial(i,j)*10^(i-j)*5^j.

Offset 0, canonical program `A038307.P4193007568946257475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3767 terms. -/
def A038307 (n : ℕ) : ℤ :=
  A038307.P4193007568946257475.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3767 terms. -/
def A038307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038317.P3117406455626042156

`lcm(A013610(n), A038315(n))`
-/

namespace A038317.P3117406455626042156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013610 n) (A038315 n)

end

end A038317.P3117406455626042156

noncomputable section

/-- A038317: Triangle whose (i,j)-th entry is binomial(i,j)*11^(i-j)*3^j.

Offset 0, canonical program `A038317.P3117406455626042156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4016 terms. -/
def A038317 (n : ℕ) : ℤ :=
  (A038317.P3117406455626042156.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4016 terms. -/
def A038317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038319.P6713445332554745158

`A000351(A002262(n))*A038315(n)`
-/

namespace A038319.P6713445332554745158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A002262 n).toNat * A038315 n

end

end A038319.P6713445332554745158

noncomputable section

/-- A038319: Triangle whose (i,j)-th entry is binomial(i,j)*11^(i-j)*5^j.

Offset 0, canonical program `A038319.P6713445332554745158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3593 terms. -/
def A038319 (n : ℕ) : ℤ :=
  A038319.P6713445332554745158.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3593 terms. -/
def A038319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038321.P10357941656397293464

`lcm(A013614(n), A038315(n))`
-/

namespace A038321.P10357941656397293464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013614 n) (A038315 n)

end

end A038321.P10357941656397293464

noncomputable section

/-- A038321: Triangle whose (i,j)-th entry is binomial(i,j)*11^(i-j)*7^j.

Offset 0, canonical program `A038321.P10357941656397293464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3345 terms. -/
def A038321 (n : ℕ) : ℤ :=
  (A038321.P10357941656397293464.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3345 terms. -/
def A038321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038323.P3138295503608263290

`lcm(A013616(n), A038315(n))`
-/

namespace A038323.P3138295503608263290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013616 n) (A038315 n)

end

end A038323.P3138295503608263290

noncomputable section

/-- A038323: Triangle whose (i,j)-th entry is binomial(i,j)*11^(i-j)*9^j.

Offset 0, canonical program `A038323.P3138295503608263290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3110 terms. -/
def A038323 (n : ℕ) : ℤ :=
  (A038323.P3138295503608263290.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3110 terms. -/
def A038323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038327.P13753667775385349031

`A038255(n)*A130321(n)`
-/

namespace A038327.P13753667775385349031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038255 n * A130321 n

end

end A038327.P13753667775385349031

noncomputable section

/-- A038327: Triangle whose (i,j)-th entry is binomial(i,j)*12^(i-j)*1^j.

Offset 0, canonical program `A038327.P13753667775385349031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4189 terms. -/
def A038327 (n : ℕ) : ℤ :=
  A038327.P13753667775385349031.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4189 terms. -/
def A038327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038333.P10434678551363861500

`A036565(n)*A038255(n)`
-/

namespace A038333.P10434678551363861500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036565 n * A038255 n

end

end A038333.P10434678551363861500

noncomputable section

/-- A038333: Triangle whose (i,j)-th entry is binomial(i,j)*12^(i-j)*7^j.

Offset 0, canonical program `A038333.P10434678551363861500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3260 terms. -/
def A038333 (n : ℕ) : ℤ :=
  A038333.P10434678551363861500.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3260 terms. -/
def A038333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038387.P4721270746372343696

`gcd(2*A007913(2*(n+1)), A000578(n+1))`
-/

namespace A038387.P4721270746372343696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A007913 (2 * (n + 1))) (A000578 (n + 1))

end

end A038387.P4721270746372343696

noncomputable section

/-- A038387: a(n) is the smallest number such that the arithmetic mean (A) and geometric mean (G) of n and a(n) are both integers.

Offset 1, canonical program `A038387.P4721270746372343696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038387 (n : ℕ) : ℤ :=
  (A038387.P4721270746372343696.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038444.P7379367993067628945

`lcm(A052216(A014132(n+1)), A057077(n))`
-/

namespace A038444.P7379367993067628945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A052216 (A014132 (n + 1)).toNat) (A057077 n)

end

end A038444.P7379367993067628945

noncomputable section

/-- A038444: Sums of 2 distinct powers of 10.

Offset 1, canonical program `A038444.P7379367993067628945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4950 terms. -/
def A038444 (n : ℕ) : ℤ :=
  (A038444.P7379367993067628945.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4950 terms. -/
def A038444.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A038474.P669043294200865699

`A055237(A007401(n+1))`
-/

namespace A038474.P669043294200865699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055237 (A007401 (n + 1)).toNat

end

end A038474.P669043294200865699

noncomputable section

/-- A038474: Sums of two distinct powers of 5.

Offset 1, canonical program `A038474.P669043294200865699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A038474 (n : ℕ) : ℤ :=
  A038474.P669043294200865699.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A038474.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A038478.P5368968624079595123

`A055257(A007401(n+1))`
-/

namespace A038478.P5368968624079595123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055257 (A007401 (n + 1)).toNat

end

end A038478.P5368968624079595123

noncomputable section

/-- A038478: Sums of 2 distinct powers of 6.

Offset 1, canonical program `A038478.P5368968624079595123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8256 terms. -/
def A038478 (n : ℕ) : ℤ :=
  A038478.P5368968624079595123.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8256 terms. -/
def A038478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038481.P1610050288320443512

`lcm(2, A055258(A007401(n+1)))`
-/

namespace A038481.P1610050288320443512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A055258 (A007401 (n + 1)).toNat)

end

end A038481.P1610050288320443512

noncomputable section

/-- A038481: Sums of 2 distinct powers of 7.

Offset 0, canonical program `A038481.P1610050288320443512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7021 terms. -/
def A038481 (n : ℕ) : ℤ :=
  (A038481.P1610050288320443512.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7021 terms. -/
def A038481.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038484.P6088182014072777916

`A055259(A007401(n+1))`
-/

namespace A038484.P6088182014072777916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055259 (A007401 (n + 1)).toNat

end

end A038484.P6088182014072777916

noncomputable section

/-- A038484: Sums of 2 distinct powers of 8.

Offset 1, canonical program `A038484.P6088182014072777916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6105 terms. -/
def A038484 (n : ℕ) : ℤ :=
  A038484.P6088182014072777916.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6105 terms. -/
def A038484.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A038822.P13838086464784480300

`A028505(n+1)%A028505(A000038(n)+n)`
-/

namespace A038822.P13838086464784480300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028505 (n + 1)) (A028505 (A000038 n + (n : ℤ)).toNat)

end

end A038822.P13838086464784480300

noncomputable section

/-- A038822: Number of primes between 100n and 100n+99.

Offset 0, canonical program `A038822.P13838086464784480300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038822 (n : ℕ) : ℤ :=
  A038822.P13838086464784480300.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038822.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A038991.P10290637620050896521

`∑{d}[n+1, A000290(#)*A027847((n+1)/#)]`
-/

namespace A038991.P10290637620050896521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000290 d * A027847 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A038991.P10290637620050896521

noncomputable section

/-- A038991: Number of sublattices of index n in generic 4-dimensional lattice.

Offset 1, canonical program `A038991.P10290637620050896521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038991 (n : ℕ) : ℤ :=
  A038991.P10290637620050896521.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039634.P12108157023021413697

`floor((n+1)/gcd(A034008(n), A292599(n+1)))`
-/

namespace A039634.P12108157023021413697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (Int.gcd (A034008 n) (A292599 (n + 1)) : ℚ)⌋

end

end A039634.P12108157023021413697

noncomputable section

/-- A039634: Fixed point of "n -> n/2 or (n-1)/2 until result is prime".

Offset 1, canonical program `A039634.P12108157023021413697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A039634 (n : ℕ) : ℤ :=
  A039634.P12108157023021413697.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A039634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039637.P13487055312355376623

`a(floor(n/2))%A067558(n+1)+1` with `a(0)=1, a(1)=1`
-/

namespace A039637.P13487055312355376623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.tmod (a ⌊(n : ℚ) / 2⌋.toNat) (A067558 (n + 1)) + 1

end

end A039637.P13487055312355376623

noncomputable section

/-- A039637: Number of steps to fixed point of "n -> n/2 or (n+1)/2 until result is prime".

Offset 1, canonical program `A039637.P13487055312355376623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039637 (n : ℕ) : ℤ :=
  A039637.P13487055312355376623.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039637.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A039736.P7194080173085563073

`∑{p}[A040976(n+1), A010051(#)]`
-/

namespace A039736.P7194080173085563073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A010051 p

end

end A039736.P7194080173085563073

noncomputable section

/-- A039736: a(n) = number of primes q<p having (p mod q) = 2, where p = n-th prime.

Offset 1, canonical program `A039736.P7194080173085563073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9602 terms. -/
def A039736 (n : ℕ) : ℤ :=
  A039736.P7194080173085563073.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9602 terms. -/
def A039736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039738.P12802691868891967207

`A171157(A001750(n+1)%A008864(n+1))`
-/

namespace A039738.P12802691868891967207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171157 (Int.tmod (A001750 (n + 1)) (A008864 (n + 1))).toNat

end

end A039738.P12802691868891967207

noncomputable section

/-- A039738: a(n)=number of primes q<p having (p mod q)=4, where p=n-th prime.

Offset 1, canonical program `A039738.P12802691868891967207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A039738 (n : ℕ) : ℤ :=
  A039738.P12802691868891967207.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A039738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039972.P18230919153733483121

`A007317(n+1)%3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A039972.P18230919153733483121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007317 (n + 1)) 3

end

end A039972.P18230919153733483121

noncomputable section

/-- A039972: An example of a d-perfect sequence: a(n) = A007317(n) mod 3.

Offset 1, canonical program `A039972.P18230919153733483121`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007317, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A039972 (n : ℕ) : ℤ :=
  A039972.P18230919153733483121.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007317, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A039972.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A042940.P5946304399982424661

`A038846(n+1)-A045724(n+1)`
-/

namespace A042940.P5946304399982424661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038846 (n + 1) - A045724 (n + 1)

end

end A042940.P5946304399982424661

noncomputable section

/-- A042940: Convolution of Catalan numbers A000108(n+1), n >= 0, with A038846.

Offset 0, canonical program `A042940.P5946304399982424661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A042940 (n : ℕ) : ℤ :=
  A042940.P5946304399982424661.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A042940.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A042985.P49255986044683829

`A038846(n)+A038846(n)-A045724(n)`
-/

namespace A042985.P49255986044683829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038846 n + (A038846 n - A045724 n)

end

end A042985.P49255986044683829

noncomputable section

/-- A042985: Convolution of A000108 (Catalan numbers) with A038846.

Offset 0, canonical program `A042985.P49255986044683829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A042985 (n : ℕ) : ℤ :=
  A042985.P49255986044683829.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A042985.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A001461.P15334845350633274781

`A060280(n+1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A001461.P15334845350633274781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A060280 (n + 1) + a (n - 1)

end

end A001461.P15334845350633274781

noncomputable section

/-- A001461: Partial sums of A006206.

Offset 1, canonical program `A001461.P15334845350633274781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 489 terms. -/
def A001461 (n : ℕ) : ℤ :=
  A001461.P15334845350633274781.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 489 terms. -/
def A001461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001481.P14266788823695492218

`eq[1, A229062(n)]`
-/

namespace A001481.P14266788823695492218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001481.P14266788823695492218

noncomputable section

/-- A001481: Numbers that are the sum of 2 squares.

Offset 1, canonical program `A001481.P14266788823695492218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001481 (n : ℕ) : ℤ :=
  (A001481.P14266788823695492218.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001481.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A001874.P15521270161370233978

`A038137((n+4)²-∑[n+1])`
-/

namespace A001874.P15521270161370233978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 ((n + 4) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001874.P15521270161370233978

noncomputable section

/-- A001874: Convolved Fibonacci numbers.

Offset 0, canonical program `A001874.P15521270161370233978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A001874 (n : ℕ) : ℤ :=
  A001874.P15521270161370233978.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A001874.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A002808.P568819275912777150

`lt[2, A000005(n+1)]+1`
-/

namespace A002808.P568819275912777150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A002808.P568819275912777150

noncomputable section

/-- A002808: The composite numbers: numbers n of the form x*y for x > 1 and y > 1.

Offset 1, canonical program `A002808.P568819275912777150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002808 (n : ℕ) : ℤ :=
  (A002808.P568819275912777150.a (n - 1) : ℤ)

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

/-! ## A003136.P5015395237831385942

`eq[1, A353816(n)]`
-/

namespace A003136.P5015395237831385942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003136.P5015395237831385942

noncomputable section

/-- A003136: Loeschian numbers: numbers of the form x^2 + xy + y^2; norms of vectors in A2 lattice.

Offset 1, canonical program `A003136.P5015395237831385942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003136 (n : ℕ) : ℤ :=
  (A003136.P5015395237831385942.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003136.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A003247.P11452999673818249551

`∑[A001950(n+1)-A003259(n+1)]`
-/

namespace A003247.P11452999673818249551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1) - A003259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003247.P11452999673818249551

noncomputable section

/-- A003247: Complement of A003248.

Offset 1, canonical program `A003247.P11452999673818249551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003247 (n : ℕ) : ℤ :=
  A003247.P11452999673818249551.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003247.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A004435.P8512248828130465738

`filter[A004439(n+1), A049240(#)]`
-/

namespace A004435.P8512248828130465738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A004435.P8512248828130465738

noncomputable section

/-- A004435: Positive integers that are not the sum of 2 distinct square integers.

Offset 1, canonical program `A004435.P8512248828130465738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9937 terms. -/
def A004435 (n : ℕ) : ℤ :=
  A004435.P8512248828130465738.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9937 terms. -/
def A004435.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A005361.P7238185687981551187

`A000005((n+1)/A007947(n+1))`
-/

namespace A005361.P7238185687981551187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A005361.P7238185687981551187

noncomputable section

/-- A005361: Product of exponents of prime factorization of n.

Offset 1, canonical program `A005361.P7238185687981551187`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005361 (n : ℕ) : ℤ :=
  A005361.P7238185687981551187.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005361.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A006206.P821304944829276785

`A063524(n)+A060280(n+1)`
-/

namespace A006206.P821304944829276785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A060280 (n + 1)

end

end A006206.P821304944829276785

noncomputable section

/-- A006206: Number of aperiodic binary necklaces of length n with no subsequence 00, excluding the necklace "0".

Offset 1, canonical program `A006206.P821304944829276785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 491 terms. -/
def A006206 (n : ℕ) : ℤ :=
  A006206.P821304944829276785.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 491 terms. -/
def A006206.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A006318.P13323005805950744778

`A080247(∑[n])`
-/

namespace A006318.P13323005805950744778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080247 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006318.P13323005805950744778

noncomputable section

/-- A006318: Large Schröder numbers (or large Schroeder numbers, or big Schroeder numbers).

Offset 0, canonical program `A006318.P13323005805950744778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A006318 (n : ℕ) : ℤ :=
  A006318.P13323005805950744778.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A006318.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A007304.P8931890627172899564

`eq[1, A354926(n+2)]+2`
-/

namespace A007304.P8931890627172899564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354926 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A007304.P8931890627172899564

noncomputable section

/-- A007304: Sphenic numbers: products of 3 distinct primes.

Offset 1, canonical program `A007304.P8931890627172899564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9724 terms. -/
def A007304 (n : ℕ) : ℤ :=
  (A007304.P8931890627172899564.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9724 terms. -/
def A007304.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A007435.P9180709624338983869`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A245282, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007435 (n : ℕ) : ℤ :=
  A007435.P9180709624338983869.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A245282, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007435.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A008308.P12166395998688324628

`A059419(comp[comp[n²+n]+n]+1)`
-/

namespace A008308.P12166395998688324628
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059419 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A008308.P12166395998688324628

noncomputable section

/-- A008308: Triangle of tangent numbers.

Offset 1, canonical program `A008308.P12166395998688324628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1446 terms. -/
def A008308 (n : ℕ) : ℤ :=
  A008308.P12166395998688324628.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1446 terms. -/
def A008308.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A009205.P2297388309160115762

`gcd(A000005(n+1), A000203(n+1))`
-/

namespace A009205.P2297388309160115762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (n + 1)) (A000203 (n + 1))

end

end A009205.P2297388309160115762

noncomputable section

/-- A009205: a(n) = gcd(d(n), sigma(n)).

Offset 1, canonical program `A009205.P2297388309160115762`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A009205 (n : ℕ) : ℤ :=
  (A009205.P2297388309160115762.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A009205.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A009278.P8639639460306029723

`lcm(A000005(n+1), A000203(n+1))`
-/

namespace A009278.P8639639460306029723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (n + 1)) (A000203 (n + 1))

end

end A009278.P8639639460306029723

noncomputable section

/-- A009278: a(n) = lcm(d(n), sigma(n)).

Offset 1, canonical program `A009278.P8639639460306029723`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A009278 (n : ℕ) : ℤ :=
  (A009278.P8639639460306029723.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A009278.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A010553.P11932377395426747626

`A000005(A000005(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A010553.P11932377395426747626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (n + 1)).toNat

end

end A010553.P11932377395426747626

noncomputable section

/-- A010553: a(n) = tau(tau(n)).

Offset 1, canonical program `A010553.P11932377395426747626`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(A000005(n+1))` (program `A010553.P11932377395426747626`, by `A010553.P11932377395426747626.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A010553 (n : ℕ) : ℤ :=
  A010553.P11932377395426747626.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(A000005(n+1))` (program `A010553.P11932377395426747626`, by `A010553.P11932377395426747626.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A010553.provenance : SequenceMachineLib.Provenance := .verified

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

/-! ## A014765.P5858277931662177310

`A014630(n+1)²`
-/

namespace A014765.P5858277931662177310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014630 (n + 1) ^ 2

end

end A014765.P5858277931662177310

noncomputable section

/-- A014765: Squares of distinct elements in triangle of Eulerian numbers.

Offset 1, canonical program `A014765.P5858277931662177310`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014630, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014765 (n : ℕ) : ℤ :=
  A014765.P5858277931662177310.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014630, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014765.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A014962.P11562702008569150727

`record[A000265(A067946(n+1))]`
-/

namespace A014962.P11562702008569150727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A067946 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014962.P11562702008569150727

noncomputable section

/-- A014962: Odd numbers k that divide 25^k - 1.

Offset 1, canonical program `A014962.P11562702008569150727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A014962 (n : ℕ) : ℤ :=
  A014962.P11562702008569150727.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A014962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015919.P3585954114832443963

`filter[A176176(n+1), A008966(#)]`
-/

namespace A015919.P3585954114832443963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A015919.P3585954114832443963

noncomputable section

/-- A015919: Positive integers k such that 2^k == 2 (mod k).

Offset 1, canonical program `A015919.P3585954114832443963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9671 terms. -/
def A015919 (n : ℕ) : ℤ :=
  A015919.P3585954114832443963.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9671 terms. -/
def A015919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015921.P682807466615567953

`record[gcd(A082494(n+1)+4, n+1)]`
-/

namespace A015921.P682807466615567953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A082494 (n + 1) + 4) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015921.P682807466615567953

noncomputable section

/-- A015921: Positive integers n such that 2^n == 4 (mod n).

Offset 1, canonical program `A015921.P682807466615567953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 710 terms. -/
def A015921 (n : ℕ) : ℤ :=
  (A015921.P682807466615567953.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 710 terms. -/
def A015921.provenance : SequenceMachineLib.Provenance := .conjectured

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

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
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

/-! ## A018145.P3977841845538844577

`ceil(A018146(2*n)/A018146(n))`
-/

namespace A018145.P3977841845538844577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018146 (2 * n) : ℚ) / (A018146 n : ℚ)⌉

end

end A018145.P3977841845538844577

noncomputable section

/-- A018145: Powers of fifth root of 11 rounded to nearest integer.

Offset 0, canonical program `A018145.P3977841845538844577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A018145 (n : ℕ) : ℤ :=
  A018145.P3977841845538844577.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A018145.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A020668.P7056058439816876017

`comp[or(n, 2*A229062(n))]`
-/

namespace A020668.P7056058439816876017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (2 * A229062 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A020668.P7056058439816876017

noncomputable section

/-- A020668: Numbers of the form x^2 + 4*y^2.

Offset 1, canonical program `A020668.P7056058439816876017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6287 terms. -/
def A020668 (n : ℕ) : ℤ :=
  (A020668.P7056058439816876017.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6287 terms. -/
def A020668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020672.P16459092017734974211

`eq[A164848(n+1), A229062(n)]`
-/

namespace A020672.P16459092017734974211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020672.P16459092017734974211

noncomputable section

/-- A020672: Numbers of form x^2 + 9 y^2.

Offset 1, canonical program `A020672.P16459092017734974211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7030 terms. -/
def A020672 (n : ℕ) : ℤ :=
  (A020672.P16459092017734974211.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7030 terms. -/
def A020672.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A022544.P10438858882280228119

`eq[0, A229062(n)]`
-/

namespace A022544.P10438858882280228119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A022544.P10438858882280228119

noncomputable section

/-- A022544: Numbers that are not the sum of 2 squares.

Offset 1, canonical program `A022544.P10438858882280228119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022544 (n : ℕ) : ℤ :=
  (A022544.P10438858882280228119.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022544.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A023591.P7298037230346281186

`A051903(A072055(n+1))`
-/

namespace A023591.P7298037230346281186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A072055 (n + 1)).toNat

end

end A023591.P7298037230346281186

noncomputable section

/-- A023591: Greatest exponent in prime-power factorization of 2*prime(n)+1.

Offset 1, canonical program `A023591.P7298037230346281186`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023591 (n : ℕ) : ℤ :=
  A023591.P7298037230346281186.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023591.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023645.P14181426108447540437

`A000005(n+1)-2+(n+1)%2`
-/

namespace A023645.P14181426108447540437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - 2 + (((n + 1) % 2 : ℕ) : ℤ)

end

end A023645.P14181426108447540437

noncomputable section

/-- A023645: a(n) = tau(n)-1 if n is odd or tau(n)-2 if n is even.

Offset 1, canonical program `A023645.P14181426108447540437`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023645 (n : ℕ) : ℤ :=
  A023645.P14181426108447540437.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023645.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023695.P1436911764056398350

`eq[2, gcd(n, A105203(n))]`
-/

namespace A023695.P1436911764056398350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A105203 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023695.P1436911764056398350

noncomputable section

/-- A023695: Numbers with exactly 4 1's in their ternary expansion.

Offset 1, canonical program `A023695.P1436911764056398350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4032 terms. -/
def A023695 (n : ℕ) : ℤ :=
  (A023695.P1436911764056398350.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4032 terms. -/
def A023695.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A026003.P8914940708846238751

`A247630(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A026003.P8914940708846238751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A247630 n + a (n - 2)

end

end A026003.P8914940708846238751

noncomputable section

/-- A026003: a(n) = T([n/2],[(n+1)/2]), where T = Delannoy triangle (A008288).

Offset 0, canonical program `A026003.P8914940708846238751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A026003 (n : ℕ) : ℤ :=
  A026003.P8914940708846238751.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A026003.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A027555.P8297131878136320084

`A033999(A002262(n))*A100100(A061579(n))`
-/

namespace A027555.P8297131878136320084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002262 n).toNat * A100100 (A061579 n).toNat

end

end A027555.P8297131878136320084

noncomputable section

/-- A027555: Triangle of binomial coefficients C(-n,k).

Offset 0, canonical program `A027555.P8297131878136320084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A027555 (n : ℕ) : ℤ :=
  A027555.P8297131878136320084.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A027555.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A028412.P14917559016390442593

`A102310(n+1)/A104762(n+1)`
-/

namespace A028412.P14917559016390442593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102310 (n + 1) : ℚ) / (A104762 (n + 1) : ℚ)

end

end A028412.P14917559016390442593

noncomputable section

/-- A028412: Rectangular array of numbers Fibonacci(m(n+1))/Fibonacci(m), m >= 1, n >= 0, read by downward antidiagonals.

Offset 0, canonical program `A028412.P14917559016390442593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 923 terms. -/
def A028412 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028412.P14917559016390442593.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 923 terms. -/
def A028412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028442.P16090401491980094714

`A100306(n+2)-1`
-/

namespace A028442.P16090401491980094714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100306 (n + 2) - 1

end

end A028442.P16090401491980094714

noncomputable section

/-- A028442: Numbers k such that Mertens's function M(k) (A002321) is zero.

Offset 1, canonical program `A028442.P16090401491980094714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A028442 (n : ℕ) : ℤ :=
  A028442.P16090401491980094714.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A028442.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A029639.P17803277838601311190

`A029652(lt[1, A029652(n+1)]+1)`
-/

namespace A029639.P17803277838601311190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029652 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A029639.P17803277838601311190

noncomputable section

/-- A029639: Odd numbers in the (1,2)-Pascal triangle A029635 that are different from 1.

Offset 0, canonical program `A029639.P17803277838601311190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9473 terms. -/
def A029639 (n : ℕ) : ℤ :=
  A029639.P17803277838601311190.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9473 terms. -/
def A029639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029653.P15740320911286042854

`A028326(n)-A097805(n)`
-/

namespace A029653.P15740320911286042854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A097805 n

end

end A029653.P15740320911286042854

noncomputable section

/-- A029653: Numbers in (2,1)-Pascal triangle (by row).

Offset 0, canonical program `A029653.P15740320911286042854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029653 (n : ℕ) : ℤ :=
  A029653.P15740320911286042854.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029653.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A029742.P171420543975748930

`comp[A262037(n)]`
-/

namespace A029742.P171420543975748930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262037 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A029742.P171420543975748930

noncomputable section

/-- A029742: Nonpalindromic numbers.

Offset 1, canonical program `A029742.P171420543975748930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9802 terms. -/
def A029742 (n : ℕ) : ℤ :=
  (A029742.P171420543975748930.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9802 terms. -/
def A029742.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A031367.P15709645054624701543

`(n+1)*A060280(n+1)`
-/

namespace A031367.P15709645054624701543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A060280 (n + 1)

end

end A031367.P15709645054624701543

noncomputable section

/-- A031367: Inflation orbit counts.

Offset 1, canonical program `A031367.P15709645054624701543`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060280, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A031367 (n : ℕ) : ℤ :=
  A031367.P15709645054624701543.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060280, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A031367.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A033282.P16262282567658621791

`A086810(comp[∑[n]])`
-/

namespace A033282.P16262282567658621791
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A033282.P16262282567658621791

noncomputable section

/-- A033282: Triangle read by rows: T(n, k) is the number of diagonal dissections of a convex n-gon into k+1 regions.

Offset 3, canonical program `A033282.P16262282567658621791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9408 terms. -/
def A033282 (n : ℕ) : ℤ :=
  A033282.P16262282567658621791.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9408 terms. -/
def A033282.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A033883.P11300718746933929236

`A033879(A263837(n+1))`
-/

namespace A033883.P11300718746933929236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A263837 (n + 1)).toNat

end

end A033883.P11300718746933929236

noncomputable section

/-- A033883: Deficiency of the deficient or perfect numbers: m = 2n - sigma(n) for n such that m >= 0.

Offset 0, canonical program `A033883.P11300718746933929236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033883 (n : ℕ) : ℤ :=
  A033883.P11300718746933929236.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033884.P16185199075458043016

`A033879(A005100(n+1))`
-/

namespace A033884.P16185199075458043016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A005100 (n + 1)).toNat

end

end A033884.P16185199075458043016

noncomputable section

/-- A033884: Deficiency of n-th deficient number: 2k - sigma(k) for k such that this is > 0.

Offset 1, canonical program `A033884.P16185199075458043016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033884 (n : ℕ) : ℤ :=
  A033884.P16185199075458043016.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033884.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A035116.P9275486073209873569

`A000005(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A035116.P9275486073209873569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) ^ 2

end

end A035116.P9275486073209873569

noncomputable section

/-- A035116: a(n) = tau(n)^2, where tau(n) = A000005(n).

Offset 1, canonical program `A035116.P9275486073209873569`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)²` (program `A035116.P9275486073209873569`, by `A035116.P9275486073209873569.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A035116 (n : ℕ) : ℤ :=
  A035116.P9275486073209873569.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)²` (program `A035116.P9275486073209873569`, by `A035116.P9275486073209873569.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A035116.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A035146.P2109457745238657454

`A035179(A000265(n+1))`
-/

namespace A035146.P2109457745238657454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035179 (A000265 (n + 1)).toNat

end

end A035146.P2109457745238657454

noncomputable section

/-- A035146: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = -44.

Offset 1, canonical program `A035146.P2109457745238657454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035146 (n : ℕ) : ℤ :=
  A035146.P2109457745238657454.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035146.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A035207.P10094144340329401523

`A000005(5*(n+1))-A000005(n+1)`
-/

namespace A035207.P10094144340329401523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * (n + 1)) - A000005 (n + 1)

end

end A035207.P10094144340329401523

noncomputable section

/-- A035207: Coefficients in expansion of Dirichlet series Product_p (1 - (Kronecker(m,p) + 1)*p^(-s) + Kronecker(m,p)*p^(-2s))^(-1) for m = 25.

Offset 1, canonical program `A035207.P10094144340329401523`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035207 (n : ℕ) : ℤ :=
  A035207.P10094144340329401523.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035207.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A035250.P3307557265857479001

`∑[A101264(n)+1]-A095117(n)`
-/

namespace A035250.P3307557265857479001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A095117 n

end

end A035250.P3307557265857479001

noncomputable section

/-- A035250: Number of primes between n and 2n (inclusive).

Offset 1, canonical program `A035250.P3307557265857479001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035250 (n : ℕ) : ℤ :=
  A035250.P3307557265857479001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035250.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A036450.P17654615826854850628

`A000005(A000005(A000005(n+1)))`
-/

namespace A036450.P17654615826854850628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (A000005 (n + 1)).toNat).toNat

end

end A036450.P17654615826854850628

noncomputable section

/-- A036450: a(n) = d(d(d(n))), the 3rd iterate of the number-of-divisors function with an initial value of n.

Offset 1, canonical program `A036450.P17654615826854850628`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036450 (n : ℕ) : ℤ :=
  A036450.P17654615826854850628.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036450.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A038283.P4750763514084286301

`A038231(n)*A232646(n+1)`
-/

namespace A038283.P4750763514084286301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038231 n * A232646 (n + 1)

end

end A038283.P4750763514084286301

noncomputable section

/-- A038283: Triangle whose (i,j)-th entry is binomial(i,j)*8^(i-j)*5^j.

Offset 0, canonical program `A038283.P4750763514084286301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4216 terms. -/
def A038283 (n : ℕ) : ℤ :=
  A038283.P4750763514084286301.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4216 terms. -/
def A038283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038305.P6107892818087992147

`lcm(A165293(n+1), A317498(n))`
-/

namespace A038305.P6107892818087992147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A165293 (n + 1)) (A317498 n)

end

end A038305.P6107892818087992147

noncomputable section

/-- A038305: Triangle whose (i,j)-th entry is binomial(i,j)*10^(i-j)*3^j.

Offset 0, canonical program `A038305.P6107892818087992147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4202 terms. -/
def A038305 (n : ℕ) : ℤ :=
  (A038305.P6107892818087992147.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4202 terms. -/
def A038305.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A038566.P5775218228113679093

`A002260(A169581(n+1))`
-/

namespace A038566.P5775218228113679093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A169581 (n + 1)).toNat

end

end A038566.P5775218228113679093

noncomputable section

/-- A038566: Numerators in canonical bijection from positive integers to positive rationals <= 1: arrange fractions by increasing denominator then by increasing numerator.

Offset 1, canonical program `A038566.P5775218228113679093`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A169581, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A038566 (n : ℕ) : ℤ :=
  A038566.P5775218228113679093.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A169581, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A038566.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A038567.P2197162168153652474

`round(sqrt(2*A169581(n+1)))`
-/

namespace A038567.P2197162168153652474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A169581 (n + 1) : ℝ))

end

end A038567.P2197162168153652474

noncomputable section

/-- A038567: Denominators in canonical bijection from positive integers to positive rationals <= 1.

Offset 0, canonical program `A038567.P2197162168153652474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038567 (n : ℕ) : ℤ :=
  A038567.P2197162168153652474.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038567.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A039433.P8533780217810886953

`∩[A011536(n+1), A039151(n+1)]`
-/

namespace A039433.P8533780217810886953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039433.P8533780217810886953

noncomputable section

/-- A039433: Numbers whose base-10 representation has the same nonzero number of 6's and 8's.

Offset 1, canonical program `A039433.P8533780217810886953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1556 terms. -/
def A039433 (n : ℕ) : ℤ :=
  (A039433.P8533780217810886953.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1556 terms. -/
def A039433.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A039636.P10786167837322776309

`A136480(2*A292599(n+1))`
-/

namespace A039636.P10786167837322776309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (2 * A292599 (n + 1)).toNat

end

end A039636.P10786167837322776309

noncomputable section

/-- A039636: Number of steps to fixed point of "n -> n/2 or (n-1)/2 until result is prime".

Offset 1, canonical program `A039636.P10786167837322776309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039636 (n : ℕ) : ℤ :=
  A039636.P10786167837322776309.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039636.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A039913.P15406212472898835494

`A108037(n)+A098356(n)`
-/

namespace A039913.P15406212472898835494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108037 n + A098356 n

end

end A039913.P15406212472898835494

noncomputable section

/-- A039913: Triangular "Fibonacci array".

Offset 0, canonical program `A039913.P15406212472898835494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039913 (n : ℕ) : ℤ :=
  A039913.P15406212472898835494.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039913.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A039991.P3632847028178845373

`A140883(n)-A053120(n)`
-/

namespace A039991.P3632847028178845373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140883 n - A053120 n

end

end A039991.P3632847028178845373

noncomputable section

/-- A039991: Triangle of coefficients of cos(x)^n in polynomial for cos(nx).

Offset 0, canonical program `A039991.P3632847028178845373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039991 (n : ℕ) : ℤ :=
  A039991.P3632847028178845373.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039991.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A003641.P16057933161370365951

`2^(A001221(A039957(n+1))-1)`
-/

namespace A003641.P16057933161370365951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (A039957 (n + 1)).toNat - 1 : ℤ)

end

end A003641.P16057933161370365951

noncomputable section

/-- A003641: Number of genera of imaginary quadratic field with discriminant -k, k = A039957(n).

Offset 1, canonical program `A003641.P16057933161370365951`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A039957, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A003641 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A003641.P16057933161370365951.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A039957, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A003641.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A004682.P15892170561098935702`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007094, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004682 (n : ℕ) : ℤ :=
  A004682.P15892170561098935702.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007094, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004682.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A008310.P17268367655090345264

`A118800(A091995(n+1)-1)`
-/

namespace A008310.P17268367655090345264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118800 (A091995 (n + 1) - 1).toNat

end

end A008310.P17268367655090345264

noncomputable section

/-- A008310: Triangle of coefficients of Chebyshev polynomials T_n(x).

Offset 0, canonical program `A008310.P17268367655090345264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5111 terms. -/
def A008310 (n : ℕ) : ℤ :=
  A008310.P17268367655090345264.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5111 terms. -/
def A008310.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A018120.P6271314406010207698

`floor(sqrt(A018138(n)))`
-/

namespace A018120.P6271314406010207698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A018138 n)

end

end A018120.P6271314406010207698

noncomputable section

/-- A018120: Powers of fifth root of 3 rounded down.

Offset 0, canonical program `A018120.P6271314406010207698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 524 terms. -/
def A018120 (n : ℕ) : ℤ :=
  A018120.P6271314406010207698.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 524 terms. -/
def A018120.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A026490.P17991794138142751536

`Δ[A284389(n+1)+and(1, A014689(n+1))]`
-/

namespace A026490.P17991794138142751536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284389 (n + 1) + Int.land 1 (A014689 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026490.P17991794138142751536

noncomputable section

/-- A026490: Length of n-th run of identical symbols in A026465.

Offset 1, canonical program `A026490.P17991794138142751536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A026490 (n : ℕ) : ℤ :=
  A026490.P17991794138142751536.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A026490.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A032090.P1511666356782873879

`A032089(A028310(n))-(1-n)%2`
-/

namespace A032090.P1511666356782873879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032089 (A028310 n).toNat - Int.tmod (1 - (n : ℤ)) 2

end

end A032090.P1511666356782873879

noncomputable section

/-- A032090: "BHK" (reversible, identity, unlabeled) transform of 0,1,1,1...

Offset 1, canonical program `A032090.P1511666356782873879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 482 terms. -/
def A032090 (n : ℕ) : ℤ :=
  A032090.P1511666356782873879.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 482 terms. -/
def A032090.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A022884.P12664025452067953784

`eq[A001223(n+1), A001223(n+3)]+1`
-/

namespace A022884.P12664025452067953784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A022884.P12664025452067953784

noncomputable section

/-- A022884: Numbers k such that prime(k) + prime(k+3) = prime(k+1) + prime(k+2).

Offset 1, canonical program `A022884.P12664025452067953784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4572 terms. -/
def A022884 (n : ℕ) : ℤ :=
  (A022884.P12664025452067953784.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4572 terms. -/
def A022884.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A025532.P16291911250862818187

`A025528(n+1)-A001222(n+1)`
-/

namespace A025532.P16291911250862818187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (n + 1) - A001222 (n + 1)

end

end A025532.P16291911250862818187

noncomputable section

/-- A025532: a(n) is the sum of exponents in the prime factorization of lcm{C(n,0), C(n,1), ..., C(n,n)}.

Offset 0, canonical program `A025532.P16291911250862818187`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A025528, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A025532 (n : ℕ) : ℤ :=
  A025532.P16291911250862818187.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A025528, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A025532.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A026302.P15826279593268322431

`A026307(2*n)`
-/

namespace A026302.P15826279593268322431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026307 (2 * n)

end

end A026302.P15826279593268322431

noncomputable section

/-- A026302: a(n) = number of (s(0), s(1), ..., s(n)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| <= 1 for i = 1,2,...,n, s(0) = 0, s(2n) = n. Also a(n) = T(2n,n), where T is the array in A026300.

Offset 0, canonical program `A026302.P15826279593268322431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A026302 (n : ℕ) : ℤ :=
  A026302.P15826279593268322431.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A026302.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A024630.P17423776978083074999

`2*A007088(floor(n/2))+n%2`
-/

namespace A024630.P17423776978083074999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007088 ⌊(n : ℚ) / 2⌋.toNat + ((n % 2 : ℕ) : ℤ)

end

end A024630.P17423776978083074999

noncomputable section

/-- A024630: n written in fractional base 4/2.

Offset 0, canonical program `A024630.P17423776978083074999`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024630 (n : ℕ) : ℤ :=
  A024630.P17423776978083074999.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024630.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A001370.P17131759642291135112

`A007953(2^n)`
-/

namespace A001370.P17131759642291135112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (2 ^ n)

end

end A001370.P17131759642291135112

noncomputable section

/-- A001370: Sum of digits of 2^n.

Offset 0, canonical program `A001370.P17131759642291135112`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001370 (n : ℕ) : ℤ :=
  A001370.P17131759642291135112.a n

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

/-! ## A004157.P5529880660930307136

`A007953(n*(n+1)/2)`
-/

namespace A004157.P5529880660930307136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway ((n * (n + 1) : ℚ) / 2)).toNat

end

end A004157.P5529880660930307136

noncomputable section

/-- A004157: Sum of digits of n-th triangular number.

Offset 0, canonical program `A004157.P5529880660930307136`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004157 (n : ℕ) : ℤ :=
  A004157.P5529880660930307136.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004157.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004159.P12894520007403696170

`A007953(n²)`
-/

namespace A004159.P12894520007403696170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n ^ 2)

end

end A004159.P12894520007403696170

noncomputable section

/-- A004159: Sum of digits of n^2.

Offset 0, canonical program `A004159.P12894520007403696170`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004159 (n : ℕ) : ℤ :=
  A004159.P12894520007403696170.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004159.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004160.P14798979868102147836

`A007953((n+1)*(n+2)*(n+3)/6)`
-/

namespace A004160.P14798979868102147836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway (((n + 1) * (n + 2) * (n + 3) : ℚ) / 6)).toNat

end

end A004160.P14798979868102147836

noncomputable section

/-- A004160: Sum of digits of the n-th tetrahedral number.

Offset 1, canonical program `A004160.P14798979868102147836`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004160 (n : ℕ) : ℤ :=
  A004160.P14798979868102147836.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004160.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004164.P6725332808826144637

`A007953(n^3)`
-/

namespace A004164.P6725332808826144637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n ^ 3)

end

end A004164.P6725332808826144637

noncomputable section

/-- A004164: Sum of digits of n^3.

Offset 0, canonical program `A004164.P6725332808826144637`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004164 (n : ℕ) : ℤ :=
  A004164.P6725332808826144637.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004164.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 0, canonical program `A004426.P7142668766808473070`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004426 (n : ℕ) : ℤ :=
  A004426.P7142668766808473070.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
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

Offset 0, canonical program `A004427.P8245107043003752294`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004427 (n : ℕ) : ℤ :=
  A004427.P8245107043003752294.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
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

