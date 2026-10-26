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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A346633.P1782636682428832130

`A029837(n+1)-A209281(n+1)`
-/

namespace A346633.P1782636682428832130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1) - A209281 (n + 1)

end

end A346633.P1782636682428832130

noncomputable section

/-- A346633: Sum of even-indexed parts (even bisection) of the n-th composition in standard order.

Offset 0, canonical program `A346633.P1782636682428832130`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346633 (n : ℕ) : ℤ :=
  A346633.P1782636682428832130.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346633.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380667.P7577621012878425073

`(A020985(n+1)-A020985(n))/2`
-/

namespace A380667.P7577621012878425073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020985 (n + 1) - A020985 n : ℚ) / 2

end

end A380667.P7577621012878425073

noncomputable section

/-- A380667: First differences of the Golay-Rudin-Shapiro sequence (A020985), divided by 2.

Offset 0, canonical program `A380667.P7577621012878425073`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380667 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A380667.P7577621012878425073.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380667.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A268355.P15495533362919716179

`8^A244413(n+1)`
-/

namespace A268355.P15495533362919716179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (A244413 (n + 1) : ℤ)

end

end A268355.P15495533362919716179

noncomputable section

/-- A268355: Highest power of 8 dividing n.

Offset 1, canonical program `A268355.P15495533362919716179`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268355 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A268355.P15495533362919716179.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268355.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A309873.P5021135503689677303

`1-2*A096268(n)`
-/

namespace A309873.P5021135503689677303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A096268 n

end

end A309873.P5021135503689677303

noncomputable section

/-- A309873: Period-doubling turn sequence, +1 when the 2-adic valuation of n is even or -1 when odd.

Offset 1, canonical program `A309873.P5021135503689677303`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309873 (n : ℕ) : ℤ :=
  A309873.P5021135503689677303.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309873.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A324904.P9223201305748335672

`A324902(n+1)+A324903(n+1)`
-/

namespace A324904.P9223201305748335672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324902 (n + 1) + A324903 (n + 1)

end

end A324904.P9223201305748335672

noncomputable section

/-- A324904: The 2-adic valuation of A318466(n), where A318466(n) = 2*n OR sigma(n).

Offset 1, canonical program `A324904.P9223201305748335672`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324904 (n : ℕ) : ℤ :=
  A324904.P9223201305748335672.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324904.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A357872.P17060854756529812207

`(n+1)*(3/2)^(A096268(n)-A182581(n+1))`
-/

namespace A357872.P17060854756529812207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((3 : ℚ) / 2) ^ (A096268 n - A182581 (n + 1) : ℤ)

end

end A357872.P17060854756529812207

noncomputable section

/-- A357872: a(n) = n * (3/2)^(v(n, 2) - v(n, 3)) where v(n, k) = valuation(n, k) mod 2 for n > 0.

Offset 1, canonical program `A357872.P17060854756529812207`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A357872 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A357872.P17060854756529812207.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A357872.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A363228.P8730947747563985722

`floor(A090739(n+1)/2)`
-/

namespace A363228.P8730947747563985722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A090739 (n + 1) : ℚ) / 2⌋

end

end A363228.P8730947747563985722

noncomputable section

/-- A363228: Exponent of 4 in 9^n - 1.

Offset 1, canonical program `A363228.P8730947747563985722`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363228 (n : ℕ) : ℤ :=
  A363228.P8730947747563985722.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363228.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375961.P871565758720273220

`A371093(n)+1`
-/

namespace A375961.P871565758720273220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371093 n + 1

end

end A375961.P871565758720273220

noncomputable section

/-- A375961: 2-adic valuation of 6*n + 2.

Offset 0, canonical program `A375961.P871565758720273220`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375961 (n : ℕ) : ℤ :=
  A375961.P871565758720273220.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375961.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378999.P10244368131065604543

`A378998(A000290(n+1))`
-/

namespace A378999.P10244368131065604543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378998 (A000290 (n + 1)).toNat

end

end A378999.P10244368131065604543

noncomputable section

/-- A378999: Number of trailing 1-bits in the binary representation of sigma(n^2).

Offset 1, canonical program `A378999.P10244368131065604543`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378999 (n : ℕ) : ℤ :=
  A378999.P10244368131065604543.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378999.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379007.P14069209523982296756

`A000225(A037227(n+1))`
-/

namespace A379007.P14069209523982296756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A037227 (n + 1)).toNat

end

end A379007.P14069209523982296756

noncomputable section

/-- A379007: a(n) = (n^2) XOR ((n^2)-1).

Offset 1, canonical program `A379007.P14069209523982296756`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379007 (n : ℕ) : ℤ :=
  A379007.P14069209523982296756.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379007.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382487.P7296272307731951991

`A072078(n+1)-A001511(n+1)`
-/

namespace A382487.P7296272307731951991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072078 (n + 1) - A001511 (n + 1)

end

end A382487.P7296272307731951991

noncomputable section

/-- A382487: The number of divisors of n whose largest prime factor is 3.

Offset 1, canonical program `A382487.P7296272307731951991`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382487 (n : ℕ) : ℤ :=
  A382487.P7296272307731951991.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382487.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387377.P768530691220600906

`A181351(A064614(n+1))`
-/

namespace A387377.P768530691220600906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181351 (A064614 (n + 1)).toNat

end

end A387377.P768530691220600906

noncomputable section

/-- A387377: In the prime factorization of n, replace 2's with 3's, replace 3's with 5's and replace 5's with 2's.

Offset 1, canonical program `A387377.P768530691220600906`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387377 (n : ℕ) : ℤ :=
  A387377.P768530691220600906.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387377.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A285388.P13702077894044627960

`(n+1)*A201555(n+1)/2^A285717(n+1)`
-/

namespace A285388.P13702077894044627960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A201555 (n + 1) : ℚ) / (2 : ℚ) ^ (A285717 (n + 1) : ℤ)

end

end A285388.P13702077894044627960

noncomputable section

/-- A285388: a(n) = numerator of ((1/n) * Sum_{k=0..n^2-1} binomial(2k,k)/4^k).

Offset 1, canonical program `A285388.P13702077894044627960`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285388 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A285388.P13702077894044627960.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285388.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A285406.P13392758496350615043

`A056220(n+1)-A285717(n+1)`
-/

namespace A285406.P13392758496350615043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (n + 1) - A285717 (n + 1)

end

end A285406.P13392758496350615043

noncomputable section

/-- A285406: Base-2 logarithm of denominator of Sum_{k=0..n^2-1} (-1)^k*sqrt(Pi)/(Gamma(1/2-k)*Gamma(1+k)*n).

Offset 1, canonical program `A285406.P13392758496350615043`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285406 (n : ℕ) : ℤ :=
  A285406.P13392758496350615043.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285406.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369257.P15625440583035575775

`(A001227(n+1)+A053866(n+1))/2`
-/

namespace A369257.P15625440583035575775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001227 (n + 1) + A053866 (n + 1) : ℚ) / 2

end

end A369257.P15625440583035575775

noncomputable section

/-- A369257: a(n) = number of odd divisors of n that have an even number of prime factors with multiplicity.

Offset 1, canonical program `A369257.P15625440583035575775`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369257 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A369257.P15625440583035575775.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369257.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A263021.P16204132987011673581

`A260109(Δ[n²])/3`
-/

namespace A263021.P16204132987011673581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260109 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A263021.P16204132987011673581

noncomputable section

/-- A263021: Expansion of f(-x^3)^6 / (phi(-x) * phi(-x^3)) in powers of x where phi(), f() are Ramanujan theta functions.

Offset 0, canonical program `A263021.P16204132987011673581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A263021 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A263021.P16204132987011673581.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A263021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267369.P3092922467413671371

`(n+1)²-A267368(n)`
-/

namespace A267369.P3092922467413671371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A267368 n

end

end A267369.P3092922467413671371

noncomputable section

/-- A267369: Total number of OFF (white) cells after n iterations of the "Rule 126" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267369.P3092922467413671371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267369 (n : ℕ) : ℤ :=
  A267369.P3092922467413671371.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267446.P12235518874921593537

`∑[A267445(n)]`
-/

namespace A267446.P12235518874921593537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267446.P12235518874921593537

noncomputable section

/-- A267446: Total number of ON (black) cells after n iterations of the "Rule 129" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267446.P12235518874921593537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267446 (n : ℕ) : ℤ :=
  A267446.P12235518874921593537.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267447.P294490523274346836

`Δ[n²]-A267445(n)`
-/

namespace A267447.P294490523274346836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A267445 n

end

end A267447.P294490523274346836

noncomputable section

/-- A267447: Number of OFF (white) cells in the n-th iteration of the "Rule 129" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267447.P294490523274346836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267447 (n : ℕ) : ℤ :=
  A267447.P294490523274346836.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268477.P4055541825993668443

`p?[A268415(n+1)]`
-/

namespace A268477.P4055541825993668443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A268477.P4055541825993668443

noncomputable section

/-- A268477: Balanced odious primes: primes with an odd number of runs of 1's in their binary expansion.

Offset 1, canonical program `A268477.P4055541825993668443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1158 terms. -/
def A268477 (n : ℕ) : ℤ :=
  A268477.P4055541825993668443.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1158 terms. -/
def A268477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269529.P254350868632863170

`A020985(A005351(n))`
-/

namespace A269529.P254350868632863170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A005351 n).toNat

end

end A269529.P254350868632863170

noncomputable section

/-- A269529: An analog of the Golay-Rudin-Shapiro sequence (A020985) in base -2 (see comments).

Offset 0, canonical program `A269529.P254350868632863170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A269529 (n : ℕ) : ℤ :=
  A269529.P254350868632863170.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A269529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269845.P12932834634170086123

`A181118(n+1)²`
-/

namespace A269845.P12932834634170086123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181118 (n + 1) ^ 2

end

end A269845.P12932834634170086123

noncomputable section

/-- A269845: Irregular triangle read by rows: T(n,k) = (k/2+1/2)^2 if odd-k otherwise T(n,k) = (n-k/2)^2 where n >= 1, k = 0..2*n-1.

Offset 1, canonical program `A269845.P12932834634170086123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A269845 (n : ℕ) : ℤ :=
  A269845.P12932834634170086123.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A269845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274079.P11049046374545540560

`A000096(A056556(n))+A056560(n)+2`
-/

namespace A274079.P11049046374545540560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A056556 n).toNat + (A056560 n + 2)

end

end A274079.P11049046374545540560

noncomputable section

/-- A274079: Table read by rows: the n-th row is the list of numbers diagonally up and to the right of n in the natural numbers read by antidiagonals.

Offset 1, canonical program `A274079.P11049046374545540560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274079 (n : ℕ) : ℤ :=
  A274079.P11049046374545540560.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279064.P15784993445143598710

`eq[A010052(2*n)+A010052(n), A050605(n+1)]`
-/

namespace A279064.P15784993445143598710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 * n) + A010052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A279064.P15784993445143598710

noncomputable section

/-- A279064: Numbers n such that the sum of numbers less than n that do not divide n is even.

Offset 1, canonical program `A279064.P15784993445143598710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A279064 (n : ℕ) : ℤ :=
  (A279064.P15784993445143598710.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A279064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279211.P6609687660226102696

`A002260(n+1)+A204002(n+1)-4`
-/

namespace A279211.P6609687660226102696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (A204002 (n + 1) - 4)

end

end A279211.P6609687660226102696

noncomputable section

/-- A279211: Fill an array by antidiagonals upwards; in the n-th cell, enter the number of earlier cells that can be seen from that cell.

Offset 0, canonical program `A279211.P6609687660226102696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A279211 (n : ℕ) : ℤ :=
  A279211.P6609687660226102696.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A279211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280843.P6908964579885282676

`A049502(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280843.P6908964579885282676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 (A000203 (n + 1)).toNat

end

end A280843.P6908964579885282676

noncomputable section

/-- A280843: a(n) = A049502(sigma(n)).

Offset 1, canonical program `A280843.P6908964579885282676`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049502, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280843 (n : ℕ) : ℤ :=
  A280843.P6908964579885282676.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049502, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280843.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A281497.P13334527158016198165

`A049502(A003188(n+1))`
-/

namespace A281497.P13334527158016198165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 (A003188 (n + 1)).toNat

end

end A281497.P13334527158016198165

noncomputable section

/-- A281497: Write n in binary reflected Gray code and sum the positions where there is a '1' followed immediately to the left by a '0', counting the rightmost digit as position 1.

Offset 1, canonical program `A281497.P13334527158016198165`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049502, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A281497 (n : ℕ) : ℤ :=
  A281497.P13334527158016198165.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049502, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A281497.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A283427.P12910337542420709598

`record[A054272(n+1)%(A033046(n)+1)]`
-/

namespace A283427.P12910337542420709598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054272 (n + 1)) (A033046 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283427.P12910337542420709598

noncomputable section

/-- A283427: a(n) is the number of consecutive smallest prime totatives of primorial A002110(n).

Offset 1, canonical program `A283427.P12910337542420709598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A283427 (n : ℕ) : ℤ :=
  A283427.P12910337542420709598.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A283427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284004.P4142446306002711801

`A002110(A209281(n+1))`
-/

namespace A284004.P4142446306002711801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A209281 (n + 1)).toNat

end

end A284004.P4142446306002711801

noncomputable section

/-- A284004: a(n) = A046523(A284003(n)).

Offset 0, canonical program `A284004.P4142446306002711801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284004 (n : ℕ) : ℤ :=
  A284004.P4142446306002711801.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285962.P11120950042759192256

`∑[A036578(abs(1-n))!]`
-/

namespace A285962.P11120950042759192256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A036578 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285962.P11120950042759192256

noncomputable section

/-- A285962: Positions of 1 in A285960; complement of A285961.

Offset 1, canonical program `A285962.P11120950042759192256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285962 (n : ℕ) : ℤ :=
  (A285962.P11120950042759192256.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286564.P14826098464724168033

`val(A007401(n+2)-(n+1), A193739(A007401(n+2)))`
-/

namespace A286564.P14826098464724168033
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007401 (n + 2) - (n + 1 : ℤ)).toNat (A193739 (A007401 (n + 2)).toNat).toNat

end

end A286564.P14826098464724168033

noncomputable section

/-- A286564: Triangular table A286563 reversed.

Offset 1, canonical program `A286564.P14826098464724168033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A286564 (n : ℕ) : ℤ :=
  (A286564.P14826098464724168033.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A286564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290450.P10399462195155768375

`p?[A076368(n+2)%5*A000040(n+1)]`
-/

namespace A290450.P10399462195155768375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076368 (n + 2)) 5 * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290450.P10399462195155768375

noncomputable section

/-- A290450: Primes with property that the next prime has the same last digit.

Offset 1, canonical program `A290450.P10399462195155768375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1391 terms. -/
def A290450 (n : ℕ) : ℤ :=
  A290450.P10399462195155768375.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1391 terms. -/
def A290450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292441.P17800705899153561225

`A056043(2*gcd(n, C(2, n)))`
-/

namespace A292441.P17800705899153561225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056043 (2 * Nat.gcd n (Nat.choose 2 n))

end

end A292441.P17800705899153561225

noncomputable section

/-- A292441: Largest m such that m^2 divides A000984(n).

Offset 0, canonical program `A292441.P17800705899153561225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3009 terms. -/
def A292441 (n : ℕ) : ℤ :=
  A292441.P17800705899153561225.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3009 terms. -/
def A292441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299763.P9872008477996207838

`1+A182986(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A299763.P9872008477996207838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A182986 (n + 1)

end

end A299763.P9872008477996207838

noncomputable section

/-- A299763: a(n) = 1 + A182986(n).

Offset 1, canonical program `A299763.P9872008477996207838`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A182986, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A299763 (n : ℕ) : ℤ :=
  A299763.P9872008477996207838.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A182986, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A299763.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A305722.P15996365835608789780

`∑[A019564(n)]`
-/

namespace A305722.P15996365835608789780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019564 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305722.P15996365835608789780

noncomputable section

/-- A305722: Crystal ball sequence for the lattice C_8.

Offset 0, canonical program `A305722.P15996365835608789780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305722 (n : ℕ) : ℤ :=
  A305722.P15996365835608789780.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305723.P14653554493018338077

`∑[A035746(n)]`
-/

namespace A305723.P14653554493018338077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035746 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305723.P14653554493018338077

noncomputable section

/-- A305723: Crystal ball sequence for the lattice C_9.

Offset 0, canonical program `A305723.P14653554493018338077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305723 (n : ℕ) : ℤ :=
  A305723.P14653554493018338077.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306546.P4171820241899143861

`A006370(A259445(n+1))`
-/

namespace A306546.P4171820241899143861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A259445 (n + 1)).toNat

end

end A306546.P4171820241899143861

noncomputable section

/-- A306546: Modified Collatz Map such that odd numbers are treated the same, but even numbers have all factors of 2 removed.

Offset 1, canonical program `A306546.P4171820241899143861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306546 (n : ℕ) : ℤ :=
  A306546.P4171820241899143861.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307563.P16467976950140794453

`floor(A164385(n+1)/6)`
-/

namespace A307563.P16467976950140794453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A164385 (n + 1) : ℚ) / 6⌋

end

end A307563.P16467976950140794453

noncomputable section

/-- A307563: Numbers k such that both 6k - 1 and 6k + 7 are prime.

Offset 1, canonical program `A307563.P16467976950140794453`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307563 (n : ℕ) : ℤ :=
  A307563.P16467976950140794453.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313595.P182879092079943348

`2*A313575(n)-A313565(n)`
-/

namespace A313595.P182879092079943348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313575 n - A313565 n

end

end A313595.P182879092079943348

noncomputable section

/-- A313595: Coordination sequence Gal.6.464.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313595.P182879092079943348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2405 terms. -/
def A313595 (n : ℕ) : ℤ :=
  A313595.P182879092079943348.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2405 terms. -/
def A313595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313739.P2057595720554128706

`A004525(n)+A313698(n)-A004396(A004525(n))`
-/

namespace A313739.P2057595720554128706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313698 n - A004396 (A004525 n).toNat)

end

end A313739.P2057595720554128706

noncomputable section

/-- A313739: Coordination sequence Gal.6.159.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313739.P2057595720554128706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2311 terms. -/
def A313739 (n : ℕ) : ℤ :=
  A313739.P2057595720554128706.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2311 terms. -/
def A313739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313801.P717888020838785705

`abs(A008592(n)-A313682(n))`
-/

namespace A313801.P717888020838785705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313682 n|

end

end A313801.P717888020838785705

noncomputable section

/-- A313801: Coordination sequence Gal.5.291.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313801.P717888020838785705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2265 terms. -/
def A313801 (n : ℕ) : ℤ :=
  A313801.P717888020838785705.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2265 terms. -/
def A313801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313905.P339684935486502025

`abs(A008592(n)-A313525(n))`
-/

namespace A313905.P339684935486502025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313525 n|

end

end A313905.P339684935486502025

noncomputable section

/-- A313905: Coordination sequence Gal.6.352.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313905.P339684935486502025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2317 terms. -/
def A313905 (n : ℕ) : ℤ :=
  A313905.P339684935486502025.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2317 terms. -/
def A313905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314959.P7859421504801099217

`A004525(n)+A314899(n)-A004396(A004525(n))`
-/

namespace A314959.P7859421504801099217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314899 n - A004396 (A004525 n).toNat)

end

end A314959.P7859421504801099217

noncomputable section

/-- A314959: Coordination sequence Gal.6.340.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314959.P7859421504801099217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2383 terms. -/
def A314959 (n : ℕ) : ℤ :=
  A314959.P7859421504801099217.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2383 terms. -/
def A314959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315053.P5459368638815230742

`A004396(n)+A314899(n)-A004525(n)`
-/

namespace A315053.P5459368638815230742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314899 n - A004525 n)

end

end A315053.P5459368638815230742

noncomputable section

/-- A315053: Coordination sequence Gal.6.345.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315053.P5459368638815230742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A315053 (n : ℕ) : ℤ :=
  A315053.P5459368638815230742.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A315053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315069.P429606285114840225

`abs(A008592(n)-A314020(n))`
-/

namespace A315069.P429606285114840225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314020 n|

end

end A315069.P429606285114840225

noncomputable section

/-- A315069: Coordination sequence Gal.6.325.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315069.P429606285114840225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2307 terms. -/
def A315069 (n : ℕ) : ℤ :=
  A315069.P429606285114840225.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2307 terms. -/
def A315069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315333.P16393821972172640477

`A315275(n)+A008676(A016777(n))`
-/

namespace A315333.P16393821972172640477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315275 n + A008676 (A016777 n).toNat

end

end A315333.P16393821972172640477

noncomputable section

/-- A315333: Coordination sequence Gal.5.292.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315333.P16393821972172640477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2278 terms. -/
def A315333 (n : ℕ) : ℤ :=
  A315333.P16393821972172640477.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2278 terms. -/
def A315333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315335.P12030960458542249

`A314899(n)+A004396(n)`
-/

namespace A315335.P12030960458542249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314899 n + A004396 n

end

end A315335.P12030960458542249

noncomputable section

/-- A315335: Coordination sequence Gal.6.624.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315335.P12030960458542249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2244 terms. -/
def A315335 (n : ℕ) : ℤ :=
  A315335.P12030960458542249.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2244 terms. -/
def A315335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315479.P4180751109111946087

`A313698(n)+A004525(n)`
-/

namespace A315479.P4180751109111946087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313698 n + A004525 n

end

end A315479.P4180751109111946087

noncomputable section

/-- A315479: Coordination sequence Gal.6.210.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315479.P4180751109111946087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2260 terms. -/
def A315479 (n : ℕ) : ℤ :=
  A315479.P4180751109111946087.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2260 terms. -/
def A315479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315518.P4860043378548832056

`A315468(n)+A110654(A057354(n))`
-/

namespace A315518.P4860043378548832056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315468 n + A110654 (A057354 n).toNat

end

end A315518.P4860043378548832056

noncomputable section

/-- A315518: Coordination sequence Gal.5.291.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315518.P4860043378548832056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2261 terms. -/
def A315518 (n : ℕ) : ℤ :=
  A315518.P4860043378548832056.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2261 terms. -/
def A315518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315549.P12001438916279019003

`A314899(n)+n`
-/

namespace A315549.P12001438916279019003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314899 n + (n : ℤ)

end

end A315549.P12001438916279019003

noncomputable section

/-- A315549: Coordination sequence Gal.6.628.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315549.P12001438916279019003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2202 terms. -/
def A315549 (n : ℕ) : ℤ :=
  A315549.P12001438916279019003.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2202 terms. -/
def A315549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315726.P3826273257408320648

`2*A313682(n)-A008574(n)`
-/

namespace A315726.P3826273257408320648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313682 n - A008574 n

end

end A315726.P3826273257408320648

noncomputable section

/-- A315726: Coordination sequence Gal.6.252.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315726.P3826273257408320648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2319 terms. -/
def A315726 (n : ℕ) : ℤ :=
  A315726.P3826273257408320648.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2319 terms. -/
def A315726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315739.P13129759353165828185

`A315680(n)+Δ[A011862(n)]`
-/

namespace A315739.P13129759353165828185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315680 n + (f1 (n + 1) - f1 n)

end

end A315739.P13129759353165828185

noncomputable section

/-- A315739: Coordination sequence Gal.5.135.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315739.P13129759353165828185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2259 terms. -/
def A315739 (n : ℕ) : ℤ :=
  A315739.P13129759353165828185.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2259 terms. -/
def A315739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315742.P4234331020117959484

`A313682(n)+n`
-/

namespace A315742.P4234331020117959484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313682 n + (n : ℤ)

end

end A315742.P4234331020117959484

noncomputable section

/-- A315742: Coordination sequence Gal.5.302.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315742.P4234331020117959484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2216 terms. -/
def A315742 (n : ℕ) : ℤ :=
  A315742.P4234331020117959484.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2216 terms. -/
def A315742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316272.P3024077072028453439

`A073846(A304337(n+1))`
-/

namespace A316272.P3024077072028453439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A304337 (n + 1)).toNat

end

end A316272.P3024077072028453439

noncomputable section

/-- A316272: A fractal-like sequence: erasing all pairs of consecutive terms that include a prime and a composite number (in any order) leaves the sequence unchanged.

Offset 1, canonical program `A316272.P3024077072028453439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A316272 (n : ℕ) : ℤ :=
  A316272.P3024077072028453439.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A316272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316715.P11769109710965712386

`A107782(2*A003726(n+1))+1`
-/

namespace A316715.P11769109710965712386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107782 (2 * A003726 (n + 1)).toNat + 1

end

end A316715.P11769109710965712386

noncomputable section

/-- A316715: a(n) is the number of 1s in A316713(n). That is, a(n) is the number of B-sequences (A278039) used in the tribonacci ABC-representation of n >= 0.

Offset 0, canonical program `A316715.P11769109710965712386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A316715 (n : ℕ) : ℤ :=
  A316715.P11769109710965712386.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A316715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316851.P8837201044806511717

`A070770(lt[A056559(n), A056558(n)])`
-/

namespace A316851.P8837201044806511717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070770 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A316851.P8837201044806511717

noncomputable section

/-- A316851: Consider integer triangles as listed in rows of table A316841. Sequence gives perimeters of these triangles in the same order.

Offset 1, canonical program `A316851.P8837201044806511717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A316851 (n : ℕ) : ℤ :=
  A316851.P8837201044806511717.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A316851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324472.P9683868638575580254

`A038459(A059126(3*n+1))%(n+1)`
-/

namespace A324472.P9683868638575580254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038459 (A059126 (3 * n + 1)).toNat) (n + 1 : ℤ)

end

end A324472.P9683868638575580254

noncomputable section

/-- A324472: a(n) = 1000 mod n.

Offset 1, canonical program `A324472.P9683868638575580254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A324472 (n : ℕ) : ℤ :=
  A324472.P9683868638575580254.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A324472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324652.P15448140147024622737

`eq[1, A324658(n+1)+1]+1`
-/

namespace A324652.P15448140147024622737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324658 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A324652.P15448140147024622737

noncomputable section

/-- A324652: Numbers k such that A318468(k) (bitwise-AND of 2*k and sigma(k)) is equal to 2*k.

Offset 1, canonical program `A324652.P15448140147024622737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A324652 (n : ℕ) : ℤ :=
  (A324652.P15448140147024622737.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A324652.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324718.P17421159723006763235

`A324639(eq[1, A324639(n+1)%2]+1)`
-/

namespace A324718.P17421159723006763235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324639 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A324718.P17421159723006763235

noncomputable section

/-- A324718: Odd numbers n for which bitand(2n,sigma(n)) = 2*bitand(n,sigma(n)-n), where bitand is bitwise-AND, A004198.

Offset 1, canonical program `A324718.P17421159723006763235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5879 terms. -/
def A324718 (n : ℕ) : ℤ :=
  A324718.P17421159723006763235.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5879 terms. -/
def A324718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325003.P6363565412475937123

`A198321(n+2)`
-/

namespace A325003.P6363565412475937123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198321 (n + 2)

end

end A325003.P6363565412475937123

noncomputable section

/-- A325003: Triangle read by rows: T(n,k) is the number of achiral colorings of the facets (or vertices) of a regular n-dimensional simplex using exactly k colors.

Offset 1, canonical program `A325003.P6363565412475937123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1325 terms. -/
def A325003 (n : ℕ) : ℤ :=
  A325003.P6363565412475937123.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1325 terms. -/
def A325003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326813.P11104410736738472879

`and(1, A162419(n+1))*A115362(n)`
-/

namespace A326813.P11104410736738472879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A162419 (n + 1)) * A115362 n

end

end A326813.P11104410736738472879

noncomputable section

/-- A326813: Dirichlet g.f.: zeta(2*s) / (1 - 2^(-s)).

Offset 1, canonical program `A326813.P11104410736738472879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326813 (n : ℕ) : ℤ :=
  A326813.P11104410736738472879.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333363.P17407315961805387594

`A059126(record[xor(3, n)])`
-/

namespace A333363.P17407315961805387594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059126 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A333363.P17407315961805387594

noncomputable section

/-- A333363: Horizontal visibility sequence at the onset of chaos in the 3-period cascade.

Offset 1, canonical program `A333363.P17407315961805387594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3072 terms. -/
def A333363 (n : ℕ) : ℤ :=
  A333363.P17407315961805387594.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3072 terms. -/
def A333363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333428.P1752145011509704751

`∩[A333427(n+1)-1, A333427(n+1)]`
-/

namespace A333428.P1752145011509704751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333427 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333428.P1752145011509704751

noncomputable section

/-- A333428: Starts of runs of 3 consecutive primorial base Niven numbers (A333426).

Offset 1, canonical program `A333428.P1752145011509704751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A333428 (n : ℕ) : ℤ :=
  (A333428.P1752145011509704751.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A333428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335740.P3229018989197612016

`comp[A335738(n+1)-2]+2`
-/

namespace A335740.P3229018989197612016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335738 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A335740.P3229018989197612016

noncomputable section

/-- A335740: Factorize each integer m >= 2 as the product of powers of nonunit squarefree numbers with distinct exponents that are powers of 2. The sequence lists m such that the factor with the largest exponent is not a power of 2.

Offset 1, canonical program `A335740.P3229018989197612016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335740 (n : ℕ) : ℤ :=
  (A335740.P3229018989197612016.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340068.P1048881016749436141

`∑[A151774(n)]`
-/

namespace A340068.P1048881016749436141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151774 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340068.P1048881016749436141

noncomputable section

/-- A340068: a(n) is the number of integers in the set {n+1, n+2, ..., 2*n} whose representation in base 2 contain exactly three digits 1's.

Offset 1, canonical program `A340068.P1048881016749436141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340068 (n : ℕ) : ℤ :=
  A340068.P1048881016749436141.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340372.P5948154074390075712

`∑{d}[n+1, A053866(#)*A080545((n+1)/#)]`
-/

namespace A340372.P5948154074390075712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053866 d * A080545 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A340372.P5948154074390075712

noncomputable section

/-- A340372: a(n) = 1 if n has no more than one odd prime factor to an odd power in its prime factorization, 0 otherwise.

Offset 1, canonical program `A340372.P5948154074390075712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340372 (n : ℕ) : ℤ :=
  A340372.P5948154074390075712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340503.P1192746617364733996

`and(3, 2*(n+4)-A020987(n))`
-/

namespace A340503.P1192746617364733996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 ((2 * (n + 4) : ℤ) - A020987 n)

end

end A340503.P1192746617364733996

noncomputable section

/-- A340503: Fixed under 0 -> 02, 1 -> 32, 2 -> 01, 3 -> 31.

Offset 1, canonical program `A340503.P1192746617364733996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340503 (n : ℕ) : ℤ :=
  A340503.P1192746617364733996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342385.P11220617682431407402

`A144217(n+1)+A004247(n)`
-/

namespace A342385.P11220617682431407402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144217 (n + 1) + A004247 n

end

end A342385.P11220617682431407402

noncomputable section

/-- A342385: Triangle T(n,k) read by rows (n >= 0, 0 <= k <= n): first column is A001477 and column k > 0 is k*A028310.

Offset 0, canonical program `A342385.P11220617682431407402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342385 (n : ℕ) : ℤ :=
  A342385.P11220617682431407402.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344344.P11501963061493860304

`∩[A344343(n+1)-1, A344343(n+1)]`
-/

namespace A344344.P11501963061493860304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344343 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344344.P11501963061493860304

noncomputable section

/-- A344344: Starts of runs of 4 consecutive Gray-code Niven numbers (A344341).

Offset 1, canonical program `A344344.P11501963061493860304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 557 terms. -/
def A344344 (n : ℕ) : ℤ :=
  (A344344.P11501963061493860304.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 557 terms. -/
def A344344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355709.P10371335287816262552

`eq[A169611(n+1)+1, A169611(A004277(n))]`
-/

namespace A355709.P10371335287816262552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A355709.P10371335287816262552

noncomputable section

/-- A355709: Numbers k such that k and k+1 have the same number of 3-smooth divisors.

Offset 1, canonical program `A355709.P10371335287816262552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. -/
def A355709 (n : ℕ) : ℤ :=
  (A355709.P10371335287816262552.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. -/
def A355709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356241.P11760164375224009749

`∑{p}[n+1, A151774(#)]`
-/

namespace A356241.P11760164375224009749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A151774 p

end

end A356241.P11760164375224009749

noncomputable section

/-- A356241: a(n) is the number of distinct Fermat numbers dividing n.

Offset 1, canonical program `A356241.P11760164375224009749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356241 (n : ℕ) : ℤ :=
  A356241.P11760164375224009749.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357367.P4873515078796916862

`A086810(n)*A130493(n+1)`
-/

namespace A357367.P4873515078796916862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 n * A130493 (n + 1)

end

end A357367.P4873515078796916862

noncomputable section

/-- A357367: Triangle read by rows. T(n, k) = binomial(n - 1, k - 1)*(n + k)! / k!.

Offset 0, canonical program `A357367.P4873515078796916862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1306 terms. -/
def A357367 (n : ℕ) : ℤ :=
  A357367.P4873515078796916862.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1306 terms. -/
def A357367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360282.P12012788412935324034

`A092392(n)*A198321(n)`
-/

namespace A360282.P12012788412935324034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 n * A198321 n

end

end A360282.P12012788412935324034

noncomputable section

/-- A360282: Triangle read by rows. T(n, k) = (1/2) * binomial(2*(n - k + 1), n - k + 1) * binomial(2*n - k, k - 1) for n > 0, T(0, 0) = 1.

Offset 0, canonical program `A360282.P12012788412935324034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A360282 (n : ℕ) : ℤ :=
  A360282.P12012788412935324034.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A360282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362197.P8596603980637624740

`A008862(n)-n`
-/

namespace A362197.P8596603980637624740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008862 n - (n : ℤ)

end

end A362197.P8596603980637624740

noncomputable section

/-- A362197: Number of Grassmannian permutations of size n that avoid a pattern, sigma, where sigma is a pattern of size 10 with exactly one descent.

Offset 0, canonical program `A362197.P8596603980637624740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362197 (n : ℕ) : ℤ :=
  A362197.P8596603980637624740.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372054.P363222448260310864

`(n+1)*A182986(n+1)+1`
-/

namespace A372054.P363222448260310864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A182986 (n + 1) + 1

end

end A372054.P363222448260310864

noncomputable section

/-- A372054: a(0)=1; thereafter a(n) = (n+1)*prime(n)+1.

Offset 0, canonical program `A372054.P363222448260310864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372054 (n : ℕ) : ℤ :=
  A372054.P363222448260310864.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373839.P9268052509882335273

`eq[n, n*A373838(n)]`
-/

namespace A373839.P9268052509882335273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A373838 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A373839.P9268052509882335273

noncomputable section

/-- A373839: Numbers k such that k and A276150(k) are both multiples of 3, where A276150 is the digit sum in the primorial base.

Offset 1, canonical program `A373839.P9268052509882335273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5556 terms. -/
def A373839 (n : ℕ) : ℤ :=
  (A373839.P9268052509882335273.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5556 terms. -/
def A373839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382729.P18152922907771322413

`∑[A382723(n)]`
-/

namespace A382729.P18152922907771322413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382729.P18152922907771322413

noncomputable section

/-- A382729: Total number of entries in rows 0,1,...,n of Pascal's triangle not divisible by 4.

Offset 0, canonical program `A382729.P18152922907771322413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7154 terms. -/
def A382729 (n : ℕ) : ℤ :=
  A382729.P18152922907771322413.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7154 terms. -/
def A382729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393211.P1663722993318290328

`n+1-A176965(A087230(n+1))`
-/

namespace A393211.P1663722993318290328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A176965 (A087230 (n + 1)).toNat

end

end A393211.P1663722993318290328

noncomputable section

/-- A393211: Number computed by Wolfram's 2-state 2-symbol Turing machine 773 when started with n on the tape.

Offset 1, canonical program `A393211.P1663722993318290328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393211 (n : ℕ) : ℤ :=
  A393211.P1663722993318290328.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393232.P14261252287719027146

`A047241(A087230(n+1))`
-/

namespace A393232.P14261252287719027146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (A087230 (n + 1)).toNat

end

end A393232.P14261252287719027146

noncomputable section

/-- A393232: Halting time for Wolfram's 2-state 2-symbol Turing machine 897 when started with n on the tape.

Offset 1, canonical program `A393232.P14261252287719027146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393232 (n : ℕ) : ℤ :=
  A393232.P14261252287719027146.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393233.P12718541263085678576

`A163980(A087230(n+1))`
-/

namespace A393233.P12718541263085678576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163980 (A087230 (n + 1)).toNat

end

end A393233.P12718541263085678576

noncomputable section

/-- A393233: Halting time for Wolfram's 2-state 2-symbol Turing machine 919 when started with n on the tape.

Offset 1, canonical program `A393233.P12718541263085678576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393233 (n : ℕ) : ℤ :=
  A393233.P12718541263085678576.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262095.P10827467733905052003

`A000005(n+1)-A086971(n+1)`
-/

namespace A262095.P10827467733905052003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A086971 (n + 1)

end

end A262095.P10827467733905052003

noncomputable section

/-- A262095: Number of non-semiprime divisors of n.

Offset 1, canonical program `A262095.P10827467733905052003`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086971, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262095 (n : ℕ) : ℤ :=
  A262095.P10827467733905052003.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086971, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262095.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A265029.P2055403291823061890

`Δ[A264619(n)]`
-/

namespace A265029.P2055403291823061890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265029.P2055403291823061890

noncomputable section

/-- A265029: First differences of A264619.

Offset 1, canonical program `A265029.P2055403291823061890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265029 (n : ℕ) : ℤ :=
  A265029.P2055403291823061890.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266640.P4776473646735869985

`A265754(A054429(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A266640.P4776473646735869985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265754 (A054429 (n + 1)).toNat

end

end A266640.P4776473646735869985

noncomputable section

/-- A266640: Reversed reduced frequency counts for A004001: a(n) = A265754(A054429(n)).

Offset 1, canonical program `A266640.P4776473646735869985`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054429, A265754, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A266640 (n : ℕ) : ℤ :=
  A266640.P4776473646735869985.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054429, A265754, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A266640.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A267135.P1163518685697158345

`2*(n+1)-A138971(n+1)`
-/

namespace A267135.P1163518685697158345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A138971 (n + 1)

end

end A267135.P1163518685697158345

noncomputable section

/-- A267135: a(n) = n minus the number of primes of form 4m + 1 that are less than n-th prime of form 4m + 3.

Offset 1, canonical program `A267135.P1163518685697158345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267135 (n : ℕ) : ℤ :=
  A267135.P1163518685697158345.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268412.P6473001848089326556

`comp[A268415(n+1)]`
-/

namespace A268412.P6473001848089326556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A268412.P6473001848089326556

noncomputable section

/-- A268412: Balanced evil numbers: numbers with an even number of runs of 1's in their binary expansion.

Offset 0, canonical program `A268412.P6473001848089326556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268412 (n : ℕ) : ℤ :=
  (A268412.P6473001848089326556.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270301.P17533543848909741744

`8*A008366(n+2)`
-/

namespace A270301.P17533543848909741744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A008366 (n + 2)

end

end A270301.P17533543848909741744

noncomputable section

/-- A270301: Numbers which are representable as a sum of sixteen but no fewer consecutive nonnegative integers.

Offset 1, canonical program `A270301.P17533543848909741744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A270301 (n : ℕ) : ℤ :=
  A270301.P17533543848909741744.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A270301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272718.P14404705752265822826

`A018806(n+1)-A178881(n+1)`
-/

namespace A272718.P14404705752265822826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018806 (n + 1) - A178881 (n + 1)

end

end A272718.P14404705752265822826

noncomputable section

/-- A272718: Partial sums of gcd-sum sequence A018804.

Offset 1, canonical program `A272718.P14404705752265822826`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018806, A178881, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A272718 (n : ℕ) : ℤ :=
  A272718.P14404705752265822826.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018806, A178881, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A272718.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A273529.P14030670400839210133

`p?[A017077(A064816(n+1))]`
-/

namespace A273529.P14030670400839210133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (A064816 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A273529.P14030670400839210133

noncomputable section

/-- A273529: Primes p of the form x^2 + y^2 such that p+1 is the sum of the two nonzero squares in exactly 2 ways.

Offset 1, canonical program `A273529.P14030670400839210133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 282 terms. -/
def A273529 (n : ℕ) : ℤ :=
  A273529.P14030670400839210133.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 282 terms. -/
def A273529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275953.P16174222313952605767

`A265906(n+2)-A265906(n+1)`
-/

namespace A275953.P16174222313952605767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265906 (n + 2) - A265906 (n + 1)

end

end A275953.P16174222313952605767

noncomputable section

/-- A275953: First differences of A265906; second differences of A265905.

Offset 1, canonical program `A275953.P16174222313952605767`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265906, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A275953 (n : ℕ) : ℤ :=
  A275953.P16174222313952605767.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265906, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A275953.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276792.P14653190003130318019

`A276788(n+1)+A276789(n+1)+1`
-/

namespace A276792.P14653190003130318019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276788 (n + 1) + A276789 (n + 1) + 1

end

end A276792.P14653190003130318019

noncomputable section

/-- A276792: First differences of A003146.

Offset 1, canonical program `A276792.P14653190003130318019`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276788, A276789, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A276792 (n : ℕ) : ℤ :=
  A276792.P14653190003130318019.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276788, A276789, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A276792.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276795.P13975714103099137732

`xor(A003817(n), A264619(n))`
-/

namespace A276795.P13975714103099137732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003817 n) (A264619 n)

end

end A276795.P13975714103099137732

noncomputable section

/-- A276795: Folding numbers with an odd number of bits (see A277238 for definition).

Offset 1, canonical program `A276795.P13975714103099137732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276795 (n : ℕ) : ℤ :=
  A276795.P13975714103099137732.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276934.P15106644444833656235

`A276933(n)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276934.P15106644444833656235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276933 n : ℚ) / 6

end

end A276934.P15106644444833656235

noncomputable section

/-- A276934: Row 3 of A276616: a(n) = A276933(n) / 6.

Offset 0, canonical program `A276934.P15106644444833656235`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276933, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276934 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A276934.P15106644444833656235.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276933, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276934.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276952.P13654825874652364893

`A276950(n)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A276952.P13654825874652364893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A276950 n + a (n - 1)

end

end A276952.P13654825874652364893

noncomputable section

/-- A276952: Partial sums of A276950.

Offset 0, canonical program `A276952.P13654825874652364893`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276952 (n : ℕ) : ℤ :=
  A276952.P13654825874652364893.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276950, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276952.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277287.P3519925831238150495

`A000984(n)+A257838(n)`
-/

namespace A277287.P3519925831238150495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + A257838 n

end

end A277287.P3519925831238150495

noncomputable section

/-- A277287: a(n) = binomial(2*n,n) + Sum_{k=1..n} binomial(2*n-k,n-k)*Fibonacci(k).

Offset 0, canonical program `A277287.P3519925831238150495`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257838, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277287 (n : ℕ) : ℤ :=
  A277287.P3519925831238150495.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257838, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277287.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A279760.P659119532778669263

`char[A224787(n+1)]`
-/

namespace A279760.P659119532778669263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A279760.P659119532778669263

noncomputable section

/-- A279760: Expansion of Product_{k>=1} 1/(1 - x^(prime(k)^3)).

Offset 0, canonical program `A279760.P659119532778669263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A279760 (n : ℕ) : ℤ :=
  (A279760.P659119532778669263.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A279760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281492.P13006118302952997106

`A121444(3*n)`
-/

namespace A281492.P13006118302952997106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121444 (3 * n)

end

end A281492.P13006118302952997106

noncomputable section

/-- A281492: Expansion of f(x, x^3) * f(x^4, x^5) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A281492.P13006118302952997106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A281492 (n : ℕ) : ℤ :=
  A281492.P13006118302952997106.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A281492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282234.P11292878467166924070

`A007932(A000045(n+1))`
-/

namespace A282234.P11292878467166924070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (A000045 (n + 1)).toNat

end

end A282234.P11292878467166924070

noncomputable section

/-- A282234: a(n) = Fibonacci(n) represented in bijective base-3 numeration.

Offset 1, canonical program `A282234.P11292878467166924070`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A282234 (n : ℕ) : ℤ :=
  A282234.P11292878467166924070.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A282234.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A282252.P10656512343650803153

`A001405(A025581(n))*A109187(n)`
-/

namespace A282252.P10656512343650803153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A025581 n).toNat * A109187 n

end

end A282252.P10656512343650803153

noncomputable section

/-- A282252: Exponential Riordan array [Bessel_I(0,2*x)^2, x].

Offset 0, canonical program `A282252.P10656512343650803153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A282252 (n : ℕ) : ℤ :=
  A282252.P10656512343650803153.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A282252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289496.P2094922246552871225

`A289493(A103517(n))-A289495(n+1)`
-/

namespace A289496.P2094922246552871225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289493 (A103517 n).toNat - A289495 (n + 1)

end

end A289496.P2094922246552871225

noncomputable section

/-- A289496: Number of primes in the interval [5n, 6n].

Offset 1, canonical program `A289496.P2094922246552871225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A289496 (n : ℕ) : ℤ :=
  A289496.P2094922246552871225.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A289496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292618.P456009917632285157

`A022891(eq[1, A022890(n+2)-A022890(n+1)]+1)`
-/

namespace A292618.P456009917632285157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022890 (n + 2) - A022890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A292618.P456009917632285157

noncomputable section

/-- A292618: The first prime of 8 consecutive primes a, b, c, d, e, f, g, h such that a + g = c + e and b + h = d + f.

Offset 1, canonical program `A292618.P456009917632285157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 600 terms. -/
def A292618 (n : ℕ) : ℤ :=
  A292618.P456009917632285157.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 600 terms. -/
def A292618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293575.P9230853573519528425

`A056595(n+1)-1`
-/

namespace A293575.P9230853573519528425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056595 (n + 1) - 1

end

end A293575.P9230853573519528425

noncomputable section

/-- A293575: Difference between the number of proper divisors of n and the number of squares dividing n.

Offset 1, canonical program `A293575.P9230853573519528425`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293575 (n : ℕ) : ℤ :=
  A293575.P9230853573519528425.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293575.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A293959.P4536624460785763287

`A265754(n+1)-1`
-/

namespace A293959.P4536624460785763287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265754 (n + 1) - 1

end

end A293959.P4536624460785763287

noncomputable section

/-- A293959: Construct a triangle T(n,k) (0 <= k <= n) of strings of integers, where T(0,0) = {0}, T(n,n) = {n}, and otherwise T(n,k) is the concatenation of T(n-1,k-1) and T(n-1,k). The sequence is obtained by reading across the rows of the triangle, concatenating the successive strings.

Offset 0, canonical program `A293959.P4536624460785763287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A293959 (n : ℕ) : ℤ :=
  A293959.P4536624460785763287.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A293959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295112.P4111876458135597642

`n-∑[∑[A168058(n)]]`
-/

namespace A295112.P4111876458135597642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168058 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295112.P4111876458135597642

noncomputable section

/-- A295112: a(n) = Sum_{k=0..n} binomial(n,2*k)*binomial(2*k,k)/(2*k-1).

Offset 0, canonical program `A295112.P4111876458135597642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A295112 (n : ℕ) : ℤ :=
  A295112.P4111876458135597642.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A295112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303809.P15019410293216701756

`∏{e}[n+1, 2^2^A238949(#)]`
-/

namespace A303809.P15019410293216701756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (2 : ℝ) ^ ((2 : ℚ) ^ (A238949 (Nat.factorization (f1 n) p) : ℤ) : ℝ)

end

end A303809.P15019410293216701756

noncomputable section

/-- A303809: Multiplicative with a(p^k) = 2^a(k).

Offset 1, canonical program `A303809.P15019410293216701756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303809 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A303809.P15019410293216701756.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304817.P8075664180131459050

`A183096(n+1)+1`
-/

namespace A304817.P8075664180131459050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183096 (n + 1) + 1

end

end A304817.P8075664180131459050

noncomputable section

/-- A304817: Number of divisors of n that are either 1 or not a perfect power.

Offset 1, canonical program `A304817.P8075664180131459050`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183096, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304817 (n : ℕ) : ℤ :=
  A304817.P8075664180131459050.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183096, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304817.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A307414.P5147274626846036237

`eq[A014285(n+1), A306834(n+1)]+1`
-/

namespace A307414.P5147274626846036237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306834 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A307414.P5147274626846036237

noncomputable section

/-- A307414: Numbers k such that A014285(k) and A007504(k) are coprime.

Offset 1, canonical program `A307414.P5147274626846036237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6095 terms. -/
def A307414 (n : ℕ) : ℤ :=
  (A307414.P5147274626846036237.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6095 terms. -/
def A307414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308199.P4084788755827198599

`A278040(n)-1`
-/

namespace A308199.P4084788755827198599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n - 1

end

end A308199.P4084788755827198599

noncomputable section

/-- A308199: The tribonacci representation of a(n) is obtained by appending 0,0 to the tribonacci representation of n (cf. A278038).

Offset 0, canonical program `A308199.P4084788755827198599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308199 (n : ℕ) : ℤ :=
  A308199.P4084788755827198599.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311691.P15690846151857527722

`A313698(n)-A057354(2*n+1)`
-/

namespace A311691.P15690846151857527722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313698 n - A057354 (2 * n + 1)

end

end A311691.P15690846151857527722

noncomputable section

/-- A311691: Coordination sequence Gal.5.60.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311691.P15690846151857527722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. -/
def A311691 (n : ℕ) : ℤ :=
  A311691.P15690846151857527722.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. -/
def A311691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312143.P2878235992731397495

`A313682(n)-A253262(n)`
-/

namespace A312143.P2878235992731397495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313682 n - A253262 n

end

end A312143.P2878235992731397495

noncomputable section

/-- A312143: Coordination sequence Gal.5.55.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312143.P2878235992731397495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2486 terms. -/
def A312143 (n : ℕ) : ℤ :=
  A312143.P2878235992731397495.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2486 terms. -/
def A312143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312194.P11075138989351160431

`A314899(n)-A134667(A004525(n))`
-/

namespace A312194.P11075138989351160431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314899 n - A134667 (A004525 n).toNat

end

end A312194.P11075138989351160431

noncomputable section

/-- A312194: Coordination sequence Gal.6.156.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312194.P11075138989351160431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. -/
def A312194 (n : ℕ) : ℤ :=
  A312194.P11075138989351160431.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. -/
def A312194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312210.P10071697695240117449

`A311196(n)+A312206(n)-A008574(n)`
-/

namespace A312210.P10071697695240117449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311196 n + (A312206 n - A008574 n)

end

end A312210.P10071697695240117449

noncomputable section

/-- A312210: Coordination sequence Gal.6.159.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312210.P10071697695240117449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2326 terms. -/
def A312210 (n : ℕ) : ℤ :=
  A312210.P10071697695240117449.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2326 terms. -/
def A312210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312684.P12134066676930196282

`abs(A008592(n)-A315630(n))`
-/

namespace A312684.P12134066676930196282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315630 n|

end

end A312684.P12134066676930196282

noncomputable section

/-- A312684: Coordination sequence Gal.6.252.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312684.P12134066676930196282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2333 terms. -/
def A312684 (n : ℕ) : ℤ :=
  A312684.P12134066676930196282.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2333 terms. -/
def A312684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313118.P9114111145320884075

`A312976(n)+Δ[A011864(n)]`
-/

namespace A313118.P9114111145320884075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312976 n + (f1 (n + 1) - f1 n)

end

end A313118.P9114111145320884075

noncomputable section

/-- A313118: Coordination sequence Gal.6.234.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313118.P9114111145320884075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2390 terms. -/
def A313118 (n : ℕ) : ℤ :=
  A313118.P9114111145320884075.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2390 terms. -/
def A313118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313284.P7231035941228258190

`A314203(n)-A253262(n)`
-/

namespace A313284.P7231035941228258190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314203 n - A253262 n

end

end A313284.P7231035941228258190

noncomputable section

/-- A313284: Coordination sequence Gal.5.88.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313284.P7231035941228258190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2315 terms. -/
def A313284 (n : ℕ) : ℤ :=
  A313284.P7231035941228258190.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2315 terms. -/
def A313284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313592.P2623346939342566519

`abs(A008592(n)-A313853(n))`
-/

namespace A313592.P2623346939342566519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313853 n|

end

end A313592.P2623346939342566519

noncomputable section

/-- A313592: Coordination sequence Gal.6.347.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313592.P2623346939342566519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2316 terms. -/
def A313592 (n : ℕ) : ℤ :=
  A313592.P2623346939342566519.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2316 terms. -/
def A313592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313715.P10014129678615076953

`A313703(n)+A313736(n)-A313721(n)`
-/

namespace A313715.P10014129678615076953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313703 n + (A313736 n - A313721 n)

end

end A313715.P10014129678615076953

noncomputable section

/-- A313715: Coordination sequence Gal.6.363.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313715.P10014129678615076953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2331 terms. -/
def A313715 (n : ℕ) : ℤ :=
  A313715.P10014129678615076953.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2331 terms. -/
def A313715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313912.P13734627626942033207

`abs(A008592(n)-A313515(n))`
-/

namespace A313912.P13734627626942033207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313515 n|

end

end A313912.P13734627626942033207

noncomputable section

/-- A313912: Coordination sequence Gal.6.207.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313912.P13734627626942033207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2320 terms. -/
def A313912 (n : ℕ) : ℤ :=
  A313912.P13734627626942033207.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2320 terms. -/
def A313912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313927.P15646847580110018084

`A313125(n)+A004396(n)`
-/

namespace A313927.P15646847580110018084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313125 n + A004396 n

end

end A313927.P15646847580110018084

noncomputable section

/-- A313927: Coordination sequence Gal.5.135.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313927.P15646847580110018084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2229 terms. -/
def A313927 (n : ℕ) : ℤ :=
  A313927.P15646847580110018084.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2229 terms. -/
def A313927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313935.P10691927420047468944

`A313772(n)+A002264(A030118(n))`
-/

namespace A313935.P10691927420047468944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313772 n + A002264 (A030118 n).toNat

end

end A313935.P10691927420047468944

noncomputable section

/-- A313935: Coordination sequence Gal.6.651.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313935.P10691927420047468944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2153 terms. -/
def A313935 (n : ℕ) : ℤ :=
  A313935.P10691927420047468944.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2153 terms. -/
def A313935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314201.P5631130414281267533

`A004396(n)+A314085(n)-A004525(A004396(n))`
-/

namespace A314201.P5631130414281267533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314085 n - A004525 (A004396 n).toNat)

end

end A314201.P5631130414281267533

noncomputable section

/-- A314201: Coordination sequence Gal.6.157.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314201.P5631130414281267533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2377 terms. -/
def A314201 (n : ℕ) : ℤ :=
  A314201.P5631130414281267533.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2377 terms. -/
def A314201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314225.P10774632468107869878

`A008458(n)+A310501(n)-A314210(n)`
-/

namespace A314225.P10774632468107869878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A310501 n - A314210 n)

end

end A314225.P10774632468107869878

noncomputable section

/-- A314225: Coordination sequence Gal.5.316.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314225.P10774632468107869878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2208 terms. -/
def A314225 (n : ℕ) : ℤ :=
  A314225.P10774632468107869878.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2208 terms. -/
def A314225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314720.P2366857365604543786

`abs(A008592(n)-A314210(n))`
-/

namespace A314720.P2366857365604543786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314210 n|

end

end A314720.P2366857365604543786

noncomputable section

/-- A314720: Coordination sequence Gal.6.245.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314720.P2366857365604543786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2250 terms. -/
def A314720 (n : ℕ) : ℤ :=
  A314720.P2366857365604543786.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2250 terms. -/
def A314720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314740.P9773231279088824093

`A312979(n)-A092202(n+2)`
-/

namespace A314740.P9773231279088824093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312979 n - A092202 (n + 2)

end

end A314740.P9773231279088824093

noncomputable section

/-- A314740: Coordination sequence Gal.5.116.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314740.P9773231279088824093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2405 terms. -/
def A314740 (n : ℕ) : ℤ :=
  A314740.P9773231279088824093.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2405 terms. -/
def A314740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315024.P11300834451067595507

`A314885(n)+Δ[A011864(n)]`
-/

namespace A315024.P11300834451067595507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314885 n + (f1 (n + 1) - f1 n)

end

end A315024.P11300834451067595507

noncomputable section

/-- A315024: Coordination sequence Gal.6.196.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315024.P11300834451067595507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2353 terms. -/
def A315024 (n : ℕ) : ℤ :=
  A315024.P11300834451067595507.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2353 terms. -/
def A315024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315060.P16370269308654090789

`A313855(n)-A330025(n-A330025(n))`
-/

namespace A315060.P16370269308654090789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313855 n - A330025 ((n : ℤ) - A330025 n).toNat

end

end A315060.P16370269308654090789

noncomputable section

/-- A315060: Coordination sequence Gal.5.141.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315060.P16370269308654090789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2360 terms. -/
def A315060 (n : ℕ) : ℤ :=
  A315060.P16370269308654090789.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2360 terms. -/
def A315060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315203.P6226893025600850173

`abs(A008592(n)-A310504(n))`
-/

namespace A315203.P6226893025600850173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310504 n|

end

end A315203.P6226893025600850173

noncomputable section

/-- A315203: Coordination sequence Gal.6.321.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315203.P6226893025600850173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2387 terms. -/
def A315203 (n : ℕ) : ℤ :=
  A315203.P6226893025600850173.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2387 terms. -/
def A315203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315326.P6667046397507400523

`2*A314885(n)-A008574(n)`
-/

namespace A315326.P6667046397507400523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314885 n - A008574 n

end

end A315326.P6667046397507400523

noncomputable section

/-- A315326: Coordination sequence Gal.6.204.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315326.P6667046397507400523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2353 terms. -/
def A315326 (n : ℕ) : ℤ :=
  A315326.P6667046397507400523.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2353 terms. -/
def A315326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315421.P8258673194195671996

`A313515(n)+A004525(n)`
-/

namespace A315421.P8258673194195671996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313515 n + A004525 n

end

end A315421.P8258673194195671996

noncomputable section

/-- A315421: Coordination sequence Gal.6.356.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315421.P8258673194195671996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2281 terms. -/
def A315421 (n : ℕ) : ℤ :=
  A315421.P8258673194195671996.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2281 terms. -/
def A315421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315459.P17608540704289415769

`A315681(n)-∑[A022003(n)]`
-/

namespace A315459.P17608540704289415769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315681 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315459.P17608540704289415769

noncomputable section

/-- A315459: Coordination sequence Gal.6.134.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315459.P17608540704289415769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A315459 (n : ℕ) : ℤ :=
  A315459.P17608540704289415769.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A315459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315509.P2705733174138675004

`abs(A008592(n)-A312976(n))`
-/

namespace A315509.P2705733174138675004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312976 n|

end

end A315509.P2705733174138675004

noncomputable section

/-- A315509: Coordination sequence Gal.6.633.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315509.P2705733174138675004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2304 terms. -/
def A315509 (n : ℕ) : ℤ :=
  A315509.P2705733174138675004.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2304 terms. -/
def A315509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315635.P8833083240830505052

`A315172(n)+A008612(A016813(n))`
-/

namespace A315635.P8833083240830505052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315172 n + A008612 (A016813 n).toNat

end

end A315635.P8833083240830505052

noncomputable section

/-- A315635: Coordination sequence Gal.5.138.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315635.P8833083240830505052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2338 terms. -/
def A315635 (n : ℕ) : ℤ :=
  A315635.P8833083240830505052.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2338 terms. -/
def A315635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315874.P5730925477117979781

`A047448(n+1)+A004525(A315832(n)+A047448(n+1))`
-/

namespace A315874.P5730925477117979781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047448 (n + 1) + A004525 (A315832 n + A047448 (n + 1)).toNat

end

end A315874.P5730925477117979781

noncomputable section

/-- A315874: Coordination sequence Gal.5.211.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315874.P5730925477117979781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1786 terms. -/
def A315874 (n : ℕ) : ℤ :=
  A315874.P5730925477117979781.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1786 terms. -/
def A315874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319972.P7349616405294569184

`7*A278040(n)+6*A278039(n)+4*(n+1)+13`
-/

namespace A319972.P7349616405294569184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A278040 n + 6 * A278039 n + (4 * (n + 1) : ℤ) + 13

end

end A319972.P7349616405294569184

noncomputable section

/-- A319972: a(n) = A003146(A003146(n)).

Offset 1, canonical program `A319972.P7349616405294569184`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278039, A278040, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319972 (n : ℕ) : ℤ :=
  A319972.P7349616405294569184.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278039, A278040, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319972.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322409.P9722259027104702857

`A278040(A278040(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322409.P9722259027104702857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 (A278040 n).toNat

end

end A322409.P9722259027104702857

noncomputable section

/-- A322409: Compound tribonacci sequence with a(n) = A278040(A278040(n)), for n >= 0.

Offset 0, canonical program `A322409.P9722259027104702857`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322409 (n : ℕ) : ℤ :=
  A322409.P9722259027104702857.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322409.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322410.P10476249854560897128

`A278040(A278039(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322410.P10476249854560897128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 (A278039 n).toNat

end

end A322410.P10476249854560897128

noncomputable section

/-- A322410: Compound tribonacci sequence with a(n) = A278040(A278039(n)), for n >= 0.

Offset 0, canonical program `A322410.P10476249854560897128`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278039, A278040, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A322410 (n : ℕ) : ℤ :=
  A322410.P10476249854560897128.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278039, A278040, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A322410.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322431.P11477619645148095533

`eq[0, A121444(n)]`
-/

namespace A322431.P11477619645148095533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121444 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322431.P11477619645148095533

noncomputable section

/-- A322431: Numbers k such that the coefficient of x^k in the expansion of Product_{j>=1} (1-x^j)^10 is zero.

Offset 1, canonical program `A322431.P11477619645148095533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3981 terms. -/
def A322431 (n : ℕ) : ℤ :=
  (A322431.P11477619645148095533.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3981 terms. -/
def A322431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323901.P12439125084005686553

`A002487(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323901.P12439125084005686553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A163511 n).toNat

end

end A323901.P12439125084005686553

noncomputable section

/-- A323901: a(n) = A002487(A163511(n)).

Offset 0, canonical program `A323901.P12439125084005686553`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323901 (n : ℕ) : ℤ :=
  A323901.P12439125084005686553.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323901.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324183.P17718046273459172401

`A000005(A163511(n))`
-/

namespace A324183.P17718046273459172401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A163511 n).toNat

end

end A324183.P17718046273459172401

noncomputable section

/-- A324183: a(n) = d(A163511(n)), where d(n) is A000005, the number of divisors of n.

Offset 0, canonical program `A324183.P17718046273459172401`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324183 (n : ℕ) : ℤ :=
  A324183.P17718046273459172401.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324183.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324184.P13572072800245294565

`A000203(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324184.P13572072800245294565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A163511 n).toNat

end

end A324184.P13572072800245294565

noncomputable section

/-- A324184: a(n) = sigma(A163511(n)).

Offset 0, canonical program `A324184.P13572072800245294565`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324184 (n : ℕ) : ℤ :=
  A324184.P13572072800245294565.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324184.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324185.P14252950843010352268

`A033879(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324185.P14252950843010352268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A163511 n).toNat

end

end A324185.P14252950843010352268

noncomputable section

/-- A324185: Deficiency of n permuted by A163511: a(n) = A033879(A163511(n)) = 2*A163511(n) - sigma(A163511(n)).

Offset 0, canonical program `A324185.P14252950843010352268`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324185 (n : ℕ) : ℤ :=
  A324185.P14252950843010352268.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324185.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324186.P10448595320496770779

`A000593(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324186.P10448595320496770779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A163511 n).toNat

end

end A324186.P10448595320496770779

noncomputable section

/-- A324186: Sum of odd divisors permuted by A163511: a(n) = A000593(A163511(n)).

Offset 0, canonical program `A324186.P10448595320496770779`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324186 (n : ℕ) : ℤ :=
  A324186.P10448595320496770779.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324186.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324188.P10044735737893625335

`A324121(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324188.P10044735737893625335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324121 (A163511 n).toNat

end

end A324188.P10044735737893625335

noncomputable section

/-- A324188: a(n) = A324121(A163511(n)).

Offset 0, canonical program `A324188.P10044735737893625335`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324188 (n : ℕ) : ℤ :=
  A324188.P10044735737893625335.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324188.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324189.P7792579227676348933

`A324122(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324189.P7792579227676348933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324122 (A163511 n).toNat

end

end A324189.P7792579227676348933

noncomputable section

/-- A324189: a(n) = A324122(A163511(n)).

Offset 0, canonical program `A324189.P7792579227676348933`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324189 (n : ℕ) : ℤ :=
  A324189.P7792579227676348933.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324189.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326398.P10411674836388057102

`ceil(2/A111742(n+1))`
-/

namespace A326398.P10411674836388057102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (A111742 (n + 1) : ℚ)⌉

end

end A326398.P10411674836388057102

noncomputable section

/-- A326398: a(n) is the smallest k > 0 such that the concatenation prime(n)k is composite.

Offset 1, canonical program `A326398.P10411674836388057102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326398 (n : ℕ) : ℤ :=
  A326398.P10411674836388057102.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327222.P12522913140232998755

`char[A327224(n+1)]`
-/

namespace A327222.P12522913140232998755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A327222.P12522913140232998755

noncomputable section

/-- A327222: a(n) = [(2n+4)r] - [nr+4r] - [nr], where [ ] = floor and r = sqrt(2).

Offset 0, canonical program `A327222.P12522913140232998755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327222 (n : ℕ) : ℤ :=
  (A327222.P12522913140232998755.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328196.P7657334495966535076

`Δ[A328190(n+1)]`
-/

namespace A328196.P7657334495966535076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A328196.P7657334495966535076

noncomputable section

/-- A328196: First differences of A328190.

Offset 1, canonical program `A328196.P7657334495966535076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A328196 (n : ℕ) : ℤ :=
  A328196.P7657334495966535076.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A328196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329273.P5366949048814216937

`A008347(A166597(n))%A014076(A013632(n))`
-/

namespace A329273.P5366949048814216937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008347 (A166597 n).toNat) (A014076 (A013632 n).toNat)

end

end A329273.P5366949048814216937

noncomputable section

/-- A329273: a(1)=1. If n is prime, a(n)=0; if not, a(n) = (the smallest prime number greater than n) minus (the largest prime number smaller than n) minus 1.

Offset 1, canonical program `A329273.P5366949048814216937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A329273 (n : ℕ) : ℤ :=
  A329273.P5366949048814216937.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A329273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330558.P13107326556388055266

`A330557(n)-A330556(n)`
-/

namespace A330558.P13107326556388055266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330557 n - A330556 n

end

end A330558.P13107326556388055266

noncomputable section

/-- A330558: a(n) = number of primes p <= 2*n+1 with Delta(p) == 0 mod 4, where Delta(p) = nextprime(p) - p.

Offset 0, canonical program `A330558.P13107326556388055266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330558 (n : ℕ) : ℤ :=
  A330558.P13107326556388055266.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331748.P790098222198747257

`xor(A002487(A163511(n)), A002487(n))`
-/

namespace A331748.P790098222198747257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002487 (A163511 n).toNat) (A002487 n)

end

end A331748.P790098222198747257

noncomputable section

/-- A331748: a(n) = A002487(n) XOR A002487(A163511(n)).

Offset 0, canonical program `A331748.P790098222198747257`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331748 (n : ℕ) : ℤ :=
  A331748.P790098222198747257.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331748.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331749.P3262571390583388432

`A002487(A163511(n))-A002487(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A331749.P3262571390583388432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A163511 n).toNat - A002487 n

end

end A331749.P3262571390583388432

noncomputable section

/-- A331749: a(n) = A002487(A163511(n)) - A002487(n).

Offset 0, canonical program `A331749.P3262571390583388432`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331749 (n : ℕ) : ℤ :=
  A331749.P3262571390583388432.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331749.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A332799.P4620929770745415607

`17*A008366(n+1)`
-/

namespace A332799.P4620929770745415607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A008366 (n + 1)

end

end A332799.P4620929770745415607

noncomputable section

/-- A332799: Numbers whose smallest prime factor is 17.

Offset 1, canonical program `A332799.P4620929770745415607`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008366, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332799 (n : ℕ) : ℤ :=
  A332799.P4620929770745415607.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008366, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332799.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333839.P8771621751461839963

`∑[A033597(n+4)-(n+4)]`
-/

namespace A333839.P8771621751461839963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033597 (n + 4) - (n + 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333839.P8771621751461839963

noncomputable section

/-- A333839: a(n) = Sum_{k = 4..n} ((prevprime(k) + nextprime(k))/2 - k).

Offset 4, canonical program `A333839.P8771621751461839963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333839 (n : ℕ) : ℤ :=
  A333839.P8771621751461839963.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335420.P3300100389546647521

`A000120(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A335420.P3300100389546647521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A163511 n).toNat

end

end A335420.P3300100389546647521

noncomputable section

/-- A335420: a(n) = A000120(A163511(n)).

Offset 0, canonical program `A335420.P3300100389546647521`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335420 (n : ℕ) : ℤ :=
  A335420.P3300100389546647521.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335420.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336407.P9817670677513642301

`A153238(n+1)+n`
-/

namespace A336407.P9817670677513642301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153238 (n + 1) + (n : ℤ)

end

end A336407.P9817670677513642301

noncomputable section

/-- A336407: a(n) is the number of composites < n-th odd composite.

Offset 1, canonical program `A336407.P9817670677513642301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336407 (n : ℕ) : ℤ :=
  A336407.P9817670677513642301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336407.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345212.P17671319425580127952

`eq[A001221(n+1), A086971(n+1)]+1`
-/

namespace A345212.P17671319425580127952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A345212.P17671319425580127952

noncomputable section

/-- A345212: Numbers with equal numbers of prime and semiprime divisors.

Offset 1, canonical program `A345212.P17671319425580127952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A345212 (n : ℕ) : ℤ :=
  (A345212.P17671319425580127952.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A345212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345315.P17248214990085666330

`A076290(n+1)+A000005(n+1)-A086971(n+1)`
-/

namespace A345315.P17248214990085666330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076290 (n + 1) + A000005 (n + 1) - A086971 (n + 1)

end

end A345315.P17248214990085666330

noncomputable section

/-- A345315: a(n) = Sum_{d|n} d^[Omega(d) = 2], where [ ] is the Iverson bracket.

Offset 1, canonical program `A345315.P17248214990085666330`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076290, A086971, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345315 (n : ℕ) : ℤ :=
  A345315.P17248214990085666330.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076290, A086971, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345315.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345446.P4602347465364053125

`A086971(n+1)-A086971(∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A345446.P4602347465364053125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (n + 1) - A086971 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

end

end A345446.P4602347465364053125

noncomputable section

/-- A345446: Number of semiprime divisors of n whose square does not divide n.

Offset 1, canonical program `A345446.P4602347465364053125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345446 (n : ℕ) : ℤ :=
  A345446.P4602347465364053125.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348098.P9969083464390464746

`A348097(eq[1, A348097(n+2)-A348097(n+1)]+1)`
-/

namespace A348098.P9969083464390464746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348097 (n + 2) - A348097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A348098.P9969083464390464746

noncomputable section

/-- A348098: Number k such that k and k+1 both have an equal number of unitary and nonunitary prime divisors (A348097).

Offset 1, canonical program `A348098.P9969083464390464746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1152 terms. -/
def A348098 (n : ℕ) : ℤ :=
  A348098.P9969083464390464746.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1152 terms. -/
def A348098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348122.P4903118865110952081

`∩[A348121(n+1)-1, A348121(n+1)]`
-/

namespace A348122.P4903118865110952081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348121 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348122.P4903118865110952081

noncomputable section

/-- A348122: Numbers k such that k and k+1 both have more nonunitary than unitary prime divisors (A348121).

Offset 1, canonical program `A348122.P4903118865110952081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A348122 (n : ℕ) : ℤ :=
  (A348122.P4903118865110952081.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A348122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348841.P490662357377440860

`A000720(n+1)-A055460(n+1)`
-/

namespace A348841.P490662357377440860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A055460 (n + 1)

end

end A348841.P490662357377440860

noncomputable section

/-- A348841: Number of primes with even exponents >= 2 in the prime power factorization of n!, for n >= 1.

Offset 1, canonical program `A348841.P490662357377440860`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055460, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348841 (n : ℕ) : ℤ :=
  A348841.P490662357377440860.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055460, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348841.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349330.P17425887972492855764

`A035316(n+1)+A056595(n+1)`
-/

namespace A349330.P17425887972492855764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (n + 1) + A056595 (n + 1)

end

end A349330.P17425887972492855764

noncomputable section

/-- A349330: a(n) = Sum_{d|n} d^c(d), where c is the characteristic function of squares (A010052).

Offset 1, canonical program `A349330.P17425887972492855764`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349330 (n : ℕ) : ℤ :=
  A349330.P17425887972492855764.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349330.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349834.P13091528776294325392

`A208887(4*n+1)`
-/

namespace A349834.P13091528776294325392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208887 (4 * n + 1)

end

end A349834.P13091528776294325392

noncomputable section

/-- A349834: Expansion of sqrt(1 + 4*x)/(1 - 4*x).

Offset 0, canonical program `A349834.P13091528776294325392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A349834 (n : ℕ) : ℤ :=
  A349834.P13091528776294325392.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A349834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350331.P13927814064560633855

`A001221(n+1)+A086971(n+1)`
-/

namespace A350331.P13927814064560633855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + A086971 (n + 1)

end

end A350331.P13927814064560633855

noncomputable section

/-- A350331: Number of divisors of n that are prime or the product of 2 (not necessarily distinct) primes.

Offset 1, canonical program `A350331.P13927814064560633855`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A086971, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A350331 (n : ℕ) : ℤ :=
  A350331.P13927814064560633855.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A086971, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A350331.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350373.P14960891234703651044

`eq[6, A086971(A028310(n))]`
-/

namespace A350373.P14960891234703651044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350373.P14960891234703651044

noncomputable section

/-- A350373: Numbers with exactly 6 semiprime divisors.

Offset 1, canonical program `A350373.P14960891234703651044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A350373 (n : ℕ) : ℤ :=
  (A350373.P14960891234703651044.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A350373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350704.P136889457551582597

`filter[A156543(n+1), A066247(#)]`
-/

namespace A350704.P136889457551582597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A350704.P136889457551582597

noncomputable section

/-- A350704: Composite numbers that have no Sophie Germain prime factors.

Offset 1, canonical program `A350704.P136889457551582597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4746 terms. -/
def A350704 (n : ℕ) : ℤ :=
  A350704.P136889457551582597.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4746 terms. -/
def A350704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354199.P14179796124610273351

`A053866(n+1)*(1-A353814(n+1))`
-/

namespace A354199.P14179796124610273351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (n + 1) * (1 - A353814 (n + 1))

end

end A354199.P14179796124610273351

noncomputable section

/-- A354199: a(n) = 1 if in the prime factorization of n there is no prime factor of form 4k+1 and any prime factor of form 4k+3 occurs with an even multiplicity, otherwise 0.

Offset 1, canonical program `A354199.P14179796124610273351`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353814, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354199 (n : ℕ) : ℤ :=
  A354199.P14179796124610273351.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353814, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354199.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360157.P14177147188931133787

`A068068(A066990(n+1)/(A073353(n+1)-(n+1)))`
-/

namespace A360157.P14177147188931133787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068068 (SequenceMachineLib.roundAway ((A066990 (n + 1) : ℚ) / (A073353 (n + 1) - (n + 1 : ℤ) : ℚ))).toNat

end

end A360157.P14177147188931133787

noncomputable section

/-- A360157: a(n) is the number of unitary divisors of n that are odd squares.

Offset 1, canonical program `A360157.P14177147188931133787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360157 (n : ℕ) : ℤ :=
  A360157.P14177147188931133787.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360477.P935886871947782901

`comp[A359869(n+1)-1]+1`
-/

namespace A360477.P935886871947782901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359869 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A360477.P935886871947782901

noncomputable section

/-- A360477: Numbers whose product of distinct prime factors is greater than or equal to the sum of its prime factors (with repetition).

Offset 1, canonical program `A360477.P935886871947782901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360477 (n : ℕ) : ℤ :=
  (A360477.P935886871947782901.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364255.P6900546977642634575

`gcd(n, A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A364255.P6900546977642634575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A163511 n)

end

end A364255.P6900546977642634575

noncomputable section

/-- A364255: a(n) = gcd(n, A163511(n)).

Offset 0, canonical program `A364255.P6900546977642634575`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364255 (n : ℕ) : ℤ :=
  (A364255.P6900546977642634575.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364255.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364258.P6786196179042320049

`A163511(n)-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A364258.P6786196179042320049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 n - (n : ℤ)

end

end A364258.P6786196179042320049

noncomputable section

/-- A364258: a(n) = A163511(n) - n.

Offset 0, canonical program `A364258.P6786196179042320049`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364258 (n : ℕ) : ℤ :=
  A364258.P6786196179042320049.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364258.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365333.P16754517503052846213

`A325837(A008833(n+1))`
-/

namespace A365333.P16754517503052846213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325837 (A008833 (n + 1)).toNat

end

end A365333.P16754517503052846213

noncomputable section

/-- A365333: The number of exponentially odd coreful divisors of the largest square dividing n.

Offset 1, canonical program `A365333.P16754517503052846213`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365333 (n : ℕ) : ℤ :=
  A365333.P16754517503052846213.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365333.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365335.P17558981587538508230

`A325837(A000188(n+1))`
-/

namespace A365335.P17558981587538508230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325837 (A000188 (n + 1)).toNat

end

end A365335.P17558981587538508230

noncomputable section

/-- A365335: The number of exponentially odd coreful divisors of the square root of the largest square dividing n.

Offset 1, canonical program `A365335.P17558981587538508230`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365335 (n : ℕ) : ℤ :=
  A365335.P17558981587538508230.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365335.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365807.P7768995048888628650

`A010052(A163511(n))`
-/

namespace A365807.P7768995048888628650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A163511 n).toNat

end

end A365807.P7768995048888628650

noncomputable section

/-- A365807: a(n) = 1 if A163511(n) is a square, 0 otherwise.

Offset 0, canonical program `A365807.P7768995048888628650`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365807 (n : ℕ) : ℤ :=
  A365807.P7768995048888628650.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365807.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366275.P12360444593326866610

`A163511(A057889(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366275.P12360444593326866610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A057889 n).toNat

end

end A366275.P12360444593326866610

noncomputable section

/-- A366275: The Cat's tongue permutation: a(n) = A163511(A057889(n)).

Offset 0, canonical program `A366275.P12360444593326866610`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057889, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366275 (n : ℕ) : ℤ :=
  A366275.P12360444593326866610.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057889, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366275.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366797.P9156922134602193647

`A001227(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366797.P9156922134602193647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A163511 n).toNat

end

end A366797.P9156922134602193647

noncomputable section

/-- A366797: Number of odd divisors permuted by A163511: a(n) = A001227(A163511(n)).

Offset 0, canonical program `A366797.P9156922134602193647`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366797 (n : ℕ) : ℤ :=
  A366797.P9156922134602193647.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366797.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366873.P10214570237099345026

`A113415(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366873.P10214570237099345026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113415 (A163511 n).toNat

end

end A366873.P10214570237099345026

noncomputable section

/-- A366873: a(n) = A113415(A163511(n)), where A113415(n) is the average of number of and sum of odd divisors of n.

Offset 0, canonical program `A366873.P10214570237099345026`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113415, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366873 (n : ℕ) : ℤ :=
  A366873.P10214570237099345026.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113415, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366873.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366887.P16462098823577047798

`A206787(A163511(n))`
-/

namespace A366887.P16462098823577047798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206787 (A163511 n).toNat

end

end A366887.P16462098823577047798

noncomputable section

/-- A366887: Sum of the odd squarefree divisors permuted by A163511.

Offset 0, canonical program `A366887.P16462098823577047798`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366887 (n : ℕ) : ℤ :=
  A366887.P16462098823577047798.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366887.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366903.P9543273992660669983

`∑{d}[n+1, #*A355825(#)]`
-/

namespace A366903.P9543273992660669983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A355825 d

end

end A366903.P9543273992660669983

noncomputable section

/-- A366903: The sum of exponentially odious divisors of n.

Offset 1, canonical program `A366903.P9543273992660669983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366903 (n : ℕ) : ℤ :=
  A366903.P9543273992660669983.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369255.P8598601348355343696

`A000035(A140773(n+1))`
-/

namespace A369255.P8598601348355343696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A140773 (n + 1)).toNat

end

end A369255.P8598601348355343696

noncomputable section

/-- A369255: Parity of A140773, where A140773 is the inverse Möbius transform of A038548.

Offset 1, canonical program `A369255.P8598601348355343696`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140773, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369255 (n : ℕ) : ℤ :=
  A369255.P8598601348355343696.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140773, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369255.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373263.P11936545737331509118

`1-(A372573(n+1)+A373260(n+1))`
-/

namespace A373263.P11936545737331509118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A372573 (n + 1) + A373260 (n + 1))

end

end A373263.P11936545737331509118

noncomputable section

/-- A373263: a(n) = 1 if A276085(n) == -1 (mod 3), otherwise 0, where A276085 is the primorial base log-function.

Offset 1, canonical program `A373263.P11936545737331509118`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, A373260, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373263 (n : ℕ) : ℤ :=
  A373263.P11936545737331509118.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, A373260, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373263.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373376.P10229871634249009273

`∪[A335657(n+1), A016825(n)]`
-/

namespace A373376.P10229871634249009273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A373376.P10229871634249009273

noncomputable section

/-- A373376: Numbers k such that gcd(A001414(k), A003415(k)) is odd, where A001414 is the sum of prime factors with repetition, and A003415 is the arithmetic derivative.

Offset 1, canonical program `A373376.P10229871634249009273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373376 (n : ℕ) : ℤ :=
  (A373376.P10229871634249009273.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373586.P5907604992002336986

`record[gcd(n+1, A374206(2*(n+1)))]`
-/

namespace A373586.P5907604992002336986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A374206 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373586.P5907604992002336986

noncomputable section

/-- A373586: Numbers k for which A373149(k) is even, where A373149 is fully additive with a(2) = 1 and a(p) = prevprime(p) for odd primes p.

Offset 1, canonical program `A373586.P5907604992002336986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373586 (n : ℕ) : ℤ :=
  (A373586.P5907604992002336986.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373837.P16736449207211495558

`eq[1, A373836(n+1)]+1`
-/

namespace A373837.P16736449207211495558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373836 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373837.P16736449207211495558

noncomputable section

/-- A373837: Numbers k such that bigomega(k) and A276085(k) are both multiples of 3, where bigomega (A001222) and A276085 are fully additive with a(p) = 1 and a(p) = p#/p respectively.

Offset 1, canonical program `A373837.P16736449207211495558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5322 terms. -/
def A373837 (n : ℕ) : ℤ :=
  (A373837.P16736449207211495558.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5322 terms. -/
def A373837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374120.P17872071964718822810

`record[(n+1)*A374119(n+1)]`
-/

namespace A374120.P17872071964718822810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A374119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374120.P17872071964718822810

noncomputable section

/-- A374120: Numbers k such that A113177(k) and A276085(k) are both multiples of 3, where A113177 and A276085 are fully additive with a(p) = Fibonacci(p) and a(p) = p#/p, respectively.

Offset 1, canonical program `A374120.P17872071964718822810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374120 (n : ℕ) : ℤ :=
  A374120.P17872071964718822810.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376599.P86518609693394274

`Δ[A375735(n+1)]`
-/

namespace A376599.P86518609693394274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376599.P86518609693394274

noncomputable section

/-- A376599: Second differences of consecutive non-prime-powers inclusive (A024619). First differences of A375735.

Offset 1, canonical program `A376599.P86518609693394274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A376599 (n : ℕ) : ℤ :=
  A376599.P86518609693394274.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A376599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377540.P8485193340030685808

`eq[1, A161996(n+1)]+1`
-/

namespace A377540.P8485193340030685808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161996 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377540.P8485193340030685808

noncomputable section

/-- A377540: Numbers k such that at least one of the numbers 6k-1 or 6k+1 is prime.

Offset 1, canonical program `A377540.P8485193340030685808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377540 (n : ℕ) : ℤ :=
  (A377540.P8485193340030685808.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377844.P397277366577125668

`eq[1, A295662(n+1)]+1`
-/

namespace A377844.P397277366577125668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295662 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377844.P397277366577125668

noncomputable section

/-- A377844: Numbers that have a single odd exponent larger than 1 in their prime factorization.

Offset 1, canonical program `A377844.P397277366577125668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5748 terms. -/
def A377844 (n : ℕ) : ℤ :=
  (A377844.P397277366577125668.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5748 terms. -/
def A377844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378040.P15613936278681359725

`record[A377783(A100727(n))]`
-/

namespace A378040.P15613936278681359725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377783 (A100727 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378040.P15613936278681359725

noncomputable section

/-- A378040: Union of A377783(n) = least nonsquarefree number > prime(n).

Offset 1, canonical program `A378040.P15613936278681359725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A378040 (n : ℕ) : ℤ :=
  A378040.P15613936278681359725.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A378040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385076.P9368700758001390996

`A000005(n+1)+n*A086971(n+1)`
-/

namespace A385076.P9368700758001390996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (n : ℤ) * A086971 (n + 1)

end

end A385076.P9368700758001390996

noncomputable section

/-- A385076: a(n) = Sum_{d|n} n^[Omega(d) = 2], where [ ] is the Iverson bracket.

Offset 1, canonical program `A385076.P9368700758001390996`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086971, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385076 (n : ℕ) : ℤ :=
  A385076.P9368700758001390996.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086971, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385076.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385406.P6181901928708286412

`A056023(A057028(n+1))`
-/

namespace A385406.P6181901928708286412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A057028 (n + 1)).toNat

end

end A385406.P6181901928708286412

noncomputable section

/-- A385406: Triangle read by rows: T(n, k) = n*(n+1)/2 - floor((n-1)/2) - (-1)^k * floor(k/2).

Offset 1, canonical program `A385406.P6181901928708286412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9989 terms. -/
def A385406 (n : ℕ) : ℤ :=
  A385406.P6181901928708286412.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9989 terms. -/
def A385406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385614.P9354234976025821991

`A066846(lt[1, A173075(n)])`
-/

namespace A385614.P9354234976025821991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066846 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A385614.P9354234976025821991

noncomputable section

/-- A385614: Numbers of the form x^x + y^y, 1 < x < y.

Offset 1, canonical program `A385614.P9354234976025821991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1485 terms. -/
def A385614 (n : ℕ) : ℤ :=
  A385614.P9354234976025821991.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1485 terms. -/
def A385614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386822.P5436816925973816835

`A362227(A023758(n+1))`
-/

namespace A386822.P5436816925973816835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362227 (A023758 (n + 1)).toNat

end

end A386822.P5436816925973816835

noncomputable section

/-- A386822: Irregular table T(n,k) = Product_{j = 1..k} prime(j)^(n-j+1), n >= 0, k = 1..n.

Offset 0, canonical program `A386822.P5436816925973816835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A386822 (n : ℕ) : ℤ :=
  A386822.P5436816925973816835.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A386822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388261.P13160057128574407376

`∩[A066039(n+1), A237589(n+1)]`
-/

namespace A388261.P13160057128574407376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388261.P13160057128574407376

noncomputable section

/-- A388261: Primes that are the sum of some first primes minus one.

Offset 1, canonical program `A388261.P13160057128574407376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 575 terms. -/
def A388261 (n : ℕ) : ℤ :=
  (A388261.P13160057128574407376.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 575 terms. -/
def A388261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390260.P12756077447559123677

`2*A063775(16*(n+1))-3*A063775(n+1)`
-/

namespace A390260.P12756077447559123677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063775 (16 * (n + 1)) - 3 * A063775 (n + 1)

end

end A390260.P12756077447559123677

noncomputable section

/-- A390260: Expansion of Sum_{k>=1} (-1)^(k+1)*x^(k^4)/(1-x^(k^4)).

Offset 1, canonical program `A390260.P12756077447559123677`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390260 (n : ℕ) : ℤ :=
  A390260.P12756077447559123677.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390260.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390329.P16154196424399310055

`lt[A067434(n+1)%2, 1]+1`
-/

namespace A390329.P16154196424399310055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067434 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A390329.P16154196424399310055

noncomputable section

/-- A390329: Numbers k such that the number of distinct prime divisors of binomial(2k, k) is even.

Offset 1, canonical program `A390329.P16154196424399310055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. -/
def A390329 (n : ℕ) : ℤ :=
  (A390329.P16154196424399310055.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. -/
def A390329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390379.P7564342032490603690

`∪[A389947(n+1), A392564(n+1)]`
-/

namespace A390379.P7564342032490603690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390379.P7564342032490603690

noncomputable section

/-- A390379: Powers k^m, 2 <= m <= 3, with k neither squarefree nor squareful.

Offset 1, canonical program `A390379.P7564342032490603690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390379 (n : ℕ) : ℤ :=
  (A390379.P7564342032490603690.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390958.P3512256824104388828

`A390957(A072587(n+1))`
-/

namespace A390958.P3512256824104388828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390957 (A072587 (n + 1)).toNat

end

end A390958.P3512256824104388828

noncomputable section

/-- A390958: The number of non-bi-unitary divisors of the numbers that are not exponentially odd.

Offset 1, canonical program `A390958.P3512256824104388828`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072587, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390958 (n : ℕ) : ℤ :=
  A390958.P3512256824104388828.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072587, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390958.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A264721.P17314925042243665480

`A053726(n+1)+A005097(A053726(n+1)-(n+1))`
-/

namespace A264721.P17314925042243665480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053726 (n + 1) + A005097 (A053726 (n + 1) - (n + 1 : ℤ)).toNat

end

end A264721.P17314925042243665480

noncomputable section

/-- A264721: Composite numbers that are greater than the average of their closest flanking primes.

Offset 1, canonical program `A264721.P17314925042243665480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264721 (n : ℕ) : ℤ :=
  A264721.P17314925042243665480.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266459.P6080024581555885958

`A267001(A020703(n+1)-1)`
-/

namespace A266459.P6080024581555885958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267001 (A020703 (n + 1) - 1).toNat

end

end A266459.P6080024581555885958

noncomputable section

/-- A266459: Triangle read by rows giving successive states of cellular automaton generated by "Rule 27" initiated with a single ON (black) cell.

Offset 0, canonical program `A266459.P6080024581555885958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266459 (n : ℕ) : ℤ :=
  A266459.P6080024581555885958.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266669.P16161379745779361122

`A266605(A020703(n+1)-1)`
-/

namespace A266669.P16161379745779361122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266605 (A020703 (n + 1) - 1).toNat

end

end A266669.P16161379745779361122

noncomputable section

/-- A266669: Triangle read by rows giving successive states of cellular automaton generated by "Rule 53" initiated with a single ON (black) cell.

Offset 0, canonical program `A266669.P16161379745779361122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266669 (n : ℕ) : ℤ :=
  A266669.P16161379745779361122.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267679.P2639550459389939186

`(1-(A267349(n)+A266174(n)))²`
-/

namespace A267679.P2639550459389939186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (A267349 n + A266174 n)) ^ 2

end

end A267679.P2639550459389939186

noncomputable section

/-- A267679: Triangle read by rows giving successive states of cellular automaton generated by "Rule 201" initiated with a single ON (black) cell.

Offset 0, canonical program `A267679.P2639550459389939186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267679 (n : ℕ) : ℤ :=
  A267679.P2639550459389939186.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269758.P3897110207471360773

`A000079(A262978(n+1))`
-/

namespace A269758.P3897110207471360773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A262978 (n + 1)).toNat

end

end A269758.P3897110207471360773

noncomputable section

/-- A269758: Prime powers with squarefree neighbors.

Offset 1, canonical program `A269758.P3897110207471360773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A269758 (n : ℕ) : ℤ :=
  A269758.P3897110207471360773.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A269758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270428.P3446457217873923368

`eq[1, A355825(n+1)]+1`
-/

namespace A270428.P3446457217873923368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355825 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A270428.P3446457217873923368

noncomputable section

/-- A270428: Exponentially odious numbers: 1 together with positive integers n such that all exponents in prime factorization of n are odious numbers (A000069).

Offset 1, canonical program `A270428.P3446457217873923368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270428 (n : ℕ) : ℤ :=
  (A270428.P3446457217873923368.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272190.P4499530173300394129

`A030513(n+1)²`
-/

namespace A272190.P4499530173300394129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1) ^ 2

end

end A272190.P4499530173300394129

noncomputable section

/-- A272190: Either 6th power of a prime, or product of the square of two different primes.

Offset 1, canonical program `A272190.P4499530173300394129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272190 (n : ℕ) : ℤ :=
  A272190.P4499530173300394129.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273165.P13852452285329225728

`A000005(A091236(n+1))/2`
-/

namespace A273165.P13852452285329225728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A091236 (n + 1)).toNat : ℚ) / 2

end

end A273165.P13852452285329225728

noncomputable section

/-- A273165: One half the number of divisors of nonprime numbers that are 3 (mod 4).

Offset 1, canonical program `A273165.P13852452285329225728`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091236, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A273165 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A273165.P13852452285329225728.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091236, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A273165.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A273409.P13603559143851020891

`∑[A147562(n+1)+1-a(n-1)]` with `a(0)=1`
-/

namespace A273409.P13603559143851020891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A147562 (n + 1) + 1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273409.P13603559143851020891

noncomputable section

/-- A273409: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 678", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A273409.P13603559143851020891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4490 terms. -/
def A273409 (n : ℕ) : ℤ :=
  A273409.P13603559143851020891.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4490 terms. -/
def A273409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274359.P5756310034310855443

`∩[A005237(n+1), A030634(n+1)]`
-/

namespace A274359.P5756310034310855443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274359.P5756310034310855443

noncomputable section

/-- A274359: Numbers k such that k and k+1 both have 16 divisors.

Offset 1, canonical program `A274359.P5756310034310855443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 661 terms. -/
def A274359 (n : ℕ) : ℤ :=
  (A274359.P5756310034310855443.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 661 terms. -/
def A274359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275606.P16564742963572456798

`A328818(n)²%3`
-/

namespace A275606.P16564742963572456798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328818 n ^ 2) 3

end

end A275606.P16564742963572456798

noncomputable section

/-- A275606: Spiral constructed on the nodes of the triangular net such that a(n) = signum(A274920(n)).

Offset 0, canonical program `A275606.P16564742963572456798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A275606 (n : ℕ) : ℤ :=
  A275606.P16564742963572456798.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A275606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276931.P10992499058279843691

`A276932(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276931.P10992499058279843691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276932 n : ℚ) / 2

end

end A276931.P10992499058279843691

noncomputable section

/-- A276931: Row 2 of A276616: a(n) = A276932(n)/2.

Offset 0, canonical program `A276931.P10992499058279843691`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276931 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A276931.P10992499058279843691.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276932, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276931.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277521.P5832681459461376919

`filter[A145551(n+1), A245656(#)]`
-/

namespace A277521.P5832681459461376919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A277521.P5832681459461376919

noncomputable section

/-- A277521: Numbers k such that number of divisors of k and sum of divisors of k divides product of divisors of k and the average of the divisors of k is an integer.

Offset 1, canonical program `A277521.P5832681459461376919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A277521 (n : ℕ) : ℤ :=
  A277521.P5832681459461376919.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A277521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278998.P826195583929111342

`lt[0, A109091(n+1)]`
-/

namespace A278998.P826195583929111342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109091 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A278998.P826195583929111342

noncomputable section

/-- A278998: Numbers of the form (5h+1)*5^k-1 or (5h+4)*5^k-1 for h,k in N.

Offset 1, canonical program `A278998.P826195583929111342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A278998 (n : ℕ) : ℤ :=
  (A278998.P826195583929111342.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A278998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278999.P7909097224008119104

`lt[A109091(n+1), 0]`
-/

namespace A278999.P7909097224008119104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109091 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A278999.P7909097224008119104

noncomputable section

/-- A278999: Numbers of the form (5h+2)*5^k-1 or (5h+3)*5^k-1 for h,k in N.

Offset 1, canonical program `A278999.P7909097224008119104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A278999 (n : ℕ) : ℤ :=
  (A278999.P7909097224008119104.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A278999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281490.P3523098735893646296

`A307597(9*n+7)`
-/

namespace A281490.P3523098735893646296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 (9 * n + 7)

end

end A281490.P3523098735893646296

noncomputable section

/-- A281490: Expansion of f(x, x^3) * f(x, x^8) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A281490.P3523098735893646296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7282 terms. -/
def A281490 (n : ℕ) : ℤ :=
  A281490.P3523098735893646296.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7282 terms. -/
def A281490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281491.P16396584514886976107

`A307597(9*n+4)`
-/

namespace A281491.P16396584514886976107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 (9 * n + 4)

end

end A281491.P16396584514886976107

noncomputable section

/-- A281491: Expansion of f(x, x^3) * f(x^2, x^7) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A281491.P16396584514886976107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7282 terms. -/
def A281491 (n : ℕ) : ℤ :=
  A281491.P16396584514886976107.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7282 terms. -/
def A281491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284203.P3141137211132390266

`∑{d}[n+1, A164292(#)]`
-/

namespace A284203.P3141137211132390266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A164292 d

end

end A284203.P3141137211132390266

noncomputable section

/-- A284203: Number of twin prime (A001097) divisors of n.

Offset 1, canonical program `A284203.P3141137211132390266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A284203 (n : ℕ) : ℤ :=
  A284203.P3141137211132390266.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A284203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284599.P274400123540582278

`∑{d}[n+1, #*A164292(#)]`
-/

namespace A284599.P274400123540582278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A164292 d

end

end A284599.P274400123540582278

noncomputable section

/-- A284599: Sum of twin prime (A001097) divisors of n.

Offset 1, canonical program `A284599.P274400123540582278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284599 (n : ℕ) : ℤ :=
  A284599.P274400123540582278.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284777.P2957116488474719438

`xor(1, A284776(n+2))`
-/

namespace A284777.P2957116488474719438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A284776 (n + 2))

end

end A284777.P2957116488474719438

noncomputable section

/-- A284777: Positions of 1 in A284775; complement of A284776.

Offset 1, canonical program `A284777.P2957116488474719438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A284777 (n : ℕ) : ℤ :=
  A284777.P2957116488474719438.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A284777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284795.P7559142428192758508

`lt[3, and(6, A284775(A065033(n+1))+3)]+n+1`
-/

namespace A284795.P7559142428192758508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 6 (A284775 (A065033 (n + 1)).toNat + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + (n + 1)

end

end A284795.P7559142428192758508

noncomputable section

/-- A284795: Positions of 0's in A284793.

Offset 1, canonical program `A284795.P7559142428192758508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A284795 (n : ℕ) : ℤ :=
  (A284795.P7559142428192758508.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A284795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284817.P1561688684894145384

`2*(n+1)-1-A284776(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284817.P1561688684894145384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - 1 - A284776 (n + 1)

end

end A284817.P1561688684894145384

noncomputable section

/-- A284817: a(n) = 2n - 1 - A284776(n).

Offset 1, canonical program `A284817.P1561688684894145384`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284776, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284817 (n : ℕ) : ℤ :=
  A284817.P1561688684894145384.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284776, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284817.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286046.P6614005406053025473

`A286044(n+1)+A286049(n+2)-A286044(n+2)`
-/

namespace A286046.P6614005406053025473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286044 (n + 1) + (A286049 (n + 2) - A286044 (n + 2))

end

end A286046.P6614005406053025473

noncomputable section

/-- A286046: {011->1}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A286046.P6614005406053025473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A286046 (n : ℕ) : ℤ :=
  A286046.P6614005406053025473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A286046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286064.P11784658490324997277

`char[A286066(n+1)-1]`
-/

namespace A286064.P11784658490324997277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286066 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286064.P11784658490324997277

noncomputable section

/-- A286064: {0110->1}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A286064.P11784658490324997277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286064 (n : ℕ) : ℤ :=
  (A286064.P11784658490324997277.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286609.P10170324973133728481

`eq[char[A286608(n+1)], A000007(n)]`
-/

namespace A286609.P10170324973133728481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286608 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A286609.P10170324973133728481

noncomputable section

/-- A286609: Numbers k for which the binary representation of the primes that divide k (A087207) is more than k.

Offset 1, canonical program `A286609.P10170324973133728481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8070 terms. -/
def A286609 (n : ℕ) : ℤ :=
  (A286609.P10170324973133728481.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8070 terms. -/
def A286609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286691.P8678306413782919878

`1-A286801((n+1)%3+n)`
-/

namespace A286691.P8678306413782919878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A286801 ((n + 1) % 3 + n)

end

end A286691.P8678306413782919878

noncomputable section

/-- A286691: {0->010, 1->110}-transform of the Pell word, A171588.

Offset 1, canonical program `A286691.P8678306413782919878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286691 (n : ℕ) : ℤ :=
  A286691.P8678306413782919878.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286875.P4619628546979306351

`A008475(gcd(((n+1)/∏{p}[n+1, #])², ∑[2*n]))`
-/

namespace A286875.P4619628546979306351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (Int.gcd (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)) ^ 2)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

end

end A286875.P4619628546979306351

noncomputable section

/-- A286875: If n = Product (p_j^k_j) then a(n) = Sum (k_j >= 2, p_j^k_j).

Offset 1, canonical program `A286875.P4619628546979306351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286875 (n : ℕ) : ℤ :=
  A286875.P4619628546979306351.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287105.P8825308527181193328

`A287075(n+1)-n`
-/

namespace A287105.P8825308527181193328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287075 (n + 1) - (n : ℤ)

end

end A287105.P8825308527181193328

noncomputable section

/-- A287105: Positions of 0 in A287104.

Offset 1, canonical program `A287105.P8825308527181193328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287105 (n : ℕ) : ℤ :=
  A287105.P8825308527181193328.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287304.P8493549014237283987

`p?[A020333(n+1)+1]`
-/

namespace A287304.P8493549014237283987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020333 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A287304.P8493549014237283987

noncomputable section

/-- A287304: Primes that can be generated by the concatenation in base 5, in ascending order, of two consecutive integers read in base 10.

Offset 1, canonical program `A287304.P8493549014237283987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A287304 (n : ℕ) : ℤ :=
  A287304.P8493549014237283987.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A287304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295663.P17834831274286769221

`A295664(n+1)-A056169(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295663.P17834831274286769221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295664 (n + 1) - A056169 (n + 1)

end

end A295663.P17834831274286769221

noncomputable section

/-- A295663: a(n) = A295664(n) - A056169(n); 2-adic valuation of tau(n) minus the number of unitary prime divisors of n.

Offset 1, canonical program `A295663.P17834831274286769221`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056169, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295663 (n : ℕ) : ℤ :=
  A295663.P17834831274286769221.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056169, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295663.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A300852.P6997038708606362003

`∑{d}[n+1, #*#%2]-A300893(n+1)`
-/

namespace A300852.P6997038708606362003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d * (d % 2) : ℕ) : ℤ) - A300893 (n + 1)

end

end A300852.P6997038708606362003

noncomputable section

/-- A300852: L.g.f.: log(Product_{k>=1} (1 + x^prime(k))) = Sum_{n>=1} a(n)*x^n/n.

Offset 1, canonical program `A300852.P6997038708606362003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300852 (n : ℕ) : ℤ :=
  A300852.P6997038708606362003.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301690.P1630092406018096562

`A006368(A315832(n)-A047448(n+1))`
-/

namespace A301690.P1630092406018096562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A315832 n - A047448 (n + 1)).toNat

end

end A301690.P1630092406018096562

noncomputable section

/-- A301690: Coordination sequence for node of type V1 in "krf" 2-D tiling (or net).

Offset 0, canonical program `A301690.P1630092406018096562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2889 terms. -/
def A301690 (n : ℕ) : ℤ :=
  A301690.P1630092406018096562.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2889 terms. -/
def A301690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301691.P10328658122602155112

`∑[A006368(A315832(n)-A047448(n+1))]`
-/

namespace A301691.P10328658122602155112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A315832 n - A047448 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301691.P10328658122602155112

noncomputable section

/-- A301691: Partial sums of A301690.

Offset 0, canonical program `A301691.P10328658122602155112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2899 terms. -/
def A301691 (n : ℕ) : ℤ :=
  A301691.P10328658122602155112.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2899 terms. -/
def A301691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303481.P903145872744022410

`(n+1)*A303385(n+1)`
-/

namespace A303481.P903145872744022410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A303385 (n + 1)

end

end A303481.P903145872744022410

noncomputable section

/-- A303481: Total volume of the family of rectangular prisms with dimensions p, q and p + q where p divides q, n = p + q and p < q.

Offset 1, canonical program `A303481.P903145872744022410`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A303385, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A303481 (n : ℕ) : ℤ :=
  A303481.P903145872744022410.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A303385, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A303481.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A305801.P4138315772594876190

`A305800(n+1)+A157928(n)`
-/

namespace A305801.P4138315772594876190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (n + 1) + A157928 n

end

end A305801.P4138315772594876190

noncomputable section

/-- A305801: Lexicographically earliest infinite sequence such that a(i) = a(j) => f(i) = f(j), where f(n) = 0 if n is an odd prime, with f(n) = n for all other n.

Offset 1, canonical program `A305801.P4138315772594876190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305801 (n : ℕ) : ℤ :=
  A305801.P4138315772594876190.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309081.P14085195362335014076

`∑[A344299(n+1)]`
-/

namespace A309081.P14085195362335014076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309081.P14085195362335014076

noncomputable section

/-- A309081: a(n) = n - floor(n/2^2) + floor(n/3^2) - floor(n/4^2) + ...

Offset 1, canonical program `A309081.P14085195362335014076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309081 (n : ℕ) : ℤ :=
  A309081.P14085195362335014076.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309083.P4186422859926366372

`∑[A344299(sqrt(A008833(n+1)))]`
-/

namespace A309083.P4186422859926366372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344299 (SequenceMachineLib.roundAway (Real.sqrt (A008833 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309083.P4186422859926366372

noncomputable section

/-- A309083: a(n) = n - floor(n/2^4) + floor(n/3^4) - floor(n/4^4) + ...

Offset 1, canonical program `A309083.P4186422859926366372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309083 (n : ℕ) : ℤ :=
  A309083.P4186422859926366372.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309760.P6501201679857975216

`∩[2*n, A138026(n+1)]`
-/

namespace A309760.P6501201679857975216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309760.P6501201679857975216

noncomputable section

/-- A309760: Even numbers k such that k-p is composite where p is the largest prime <= k.

Offset 1, canonical program `A309760.P6501201679857975216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5580 terms. -/
def A309760 (n : ℕ) : ℤ :=
  (A309760.P6501201679857975216.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5580 terms. -/
def A309760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311256.P1958209585559977164

`A008574(n)+A315690(n)-A315684(n)`
-/

namespace A311256.P1958209585559977164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A315690 n - A315684 n)

end

end A311256.P1958209585559977164

noncomputable section

/-- A311256: Coordination sequence Gal.5.52.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311256.P1958209585559977164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A311256 (n : ℕ) : ℤ :=
  A311256.P1958209585559977164.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A311256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311261.P2737762260615231918

`4*n+A028310(n)+A313480(n)-A315680(n)`
-/

namespace A311261.P2737762260615231918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + (A028310 n + (A313480 n - A315680 n))

end

end A311261.P2737762260615231918

noncomputable section

/-- A311261: Coordination sequence Gal.5.97.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311261.P2737762260615231918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A311261 (n : ℕ) : ℤ :=
  A311261.P2737762260615231918.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A311261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311548.P8775752580352239183

`A314971(n)-A004396(n)`
-/

namespace A311548.P8775752580352239183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314971 n - A004396 n

end

end A311548.P8775752580352239183

noncomputable section

/-- A311548: Coordination sequence Gal.5.54.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311548.P8775752580352239183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A311548 (n : ℕ) : ℤ :=
  A311548.P8775752580352239183.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A311548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311798.P17873321092687646606

`A313026(n)+A313682(n)-A314088(n)`
-/

namespace A311798.P17873321092687646606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313026 n + (A313682 n - A314088 n)

end

end A311798.P17873321092687646606

noncomputable section

/-- A311798: Coordination sequence Gal.5.52.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311798.P17873321092687646606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A311798 (n : ℕ) : ℤ :=
  A311798.P17873321092687646606.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A311798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313089.P10705222389675751159

`abs(A008592(n)-A315478(n))`
-/

namespace A313089.P10705222389675751159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315478 n|

end

end A313089.P10705222389675751159

noncomputable section

/-- A313089: Coordination sequence Gal.6.221.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313089.P10705222389675751159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1986 terms. -/
def A313089 (n : ℕ) : ℤ :=
  A313089.P10705222389675751159.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1986 terms. -/
def A313089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313153.P1548300830717326996

`abs(A008592(n)-A315446(n))`
-/

namespace A313153.P1548300830717326996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315446 n|

end

end A313153.P1548300830717326996

noncomputable section

/-- A313153: Coordination sequence Gal.5.113.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313153.P1548300830717326996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. -/
def A313153 (n : ℕ) : ℤ :=
  A313153.P1548300830717326996.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. -/
def A313153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313589.P17445481109569787276

`abs(A008592(n)-A313855(n))`
-/

namespace A313589.P17445481109569787276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313855 n|

end

end A313589.P17445481109569787276

noncomputable section

/-- A313589: Coordination sequence Gal.5.141.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313589.P17445481109569787276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2377 terms. -/
def A313589 (n : ℕ) : ℤ :=
  A313589.P17445481109569787276.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2377 terms. -/
def A313589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313696.P9738400648610204729

`A313543(n)+Δ[A011864(n)]`
-/

namespace A313696.P9738400648610204729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313543 n + (f1 (n + 1) - f1 n)

end

end A313696.P9738400648610204729

noncomputable section

/-- A313696: Coordination sequence Gal.6.327.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313696.P9738400648610204729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2383 terms. -/
def A313696 (n : ℕ) : ℤ :=
  A313696.P9738400648610204729.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2383 terms. -/
def A313696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313842.P14836794253891960675

`abs(A008592(n)-A313610(n))`
-/

namespace A313842.P14836794253891960675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313610 n|

end

end A313842.P14836794253891960675

noncomputable section

/-- A313842: Coordination sequence Gal.5.289.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313842.P14836794253891960675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2333 terms. -/
def A313842 (n : ℕ) : ℤ :=
  A313842.P14836794253891960675.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2333 terms. -/
def A313842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313887.P5397836189599980398

`abs(A008592(n)-A313543(n))`
-/

namespace A313887.P5397836189599980398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313543 n|

end

end A313887.P5397836189599980398

noncomputable section

/-- A313887: Coordination sequence Gal.6.331.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313887.P5397836189599980398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2185 terms. -/
def A313887 (n : ℕ) : ℤ :=
  A313887.P5397836189599980398.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2185 terms. -/
def A313887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313908.P15756257840792461538

`abs(A008592(n)-A313519(n))`
-/

namespace A313908.P15756257840792461538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313519 n|

end

end A313908.P15756257840792461538

noncomputable section

/-- A313908: Coordination sequence Gal.6.639.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313908.P15756257840792461538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A313908 (n : ℕ) : ℤ :=
  A313908.P15756257840792461538.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A313908.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314072.P13997368567095779612

`A314129(n)-A238470(3*n)`
-/

namespace A314072.P13997368567095779612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314129 n - A238470 (3 * n)

end

end A314072.P13997368567095779612

noncomputable section

/-- A314072: Coordination sequence Gal.5.312.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314072.P13997368567095779612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2275 terms. -/
def A314072 (n : ℕ) : ℤ :=
  A314072.P13997368567095779612.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2275 terms. -/
def A314072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314244.P5686595112287362026

`A004396(A314157(n))+2*n`
-/

namespace A314244.P5686595112287362026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314157 n).toNat + (2 * n : ℤ)

end

end A314244.P5686595112287362026

noncomputable section

/-- A314244: Coordination sequence Gal.6.644.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314244.P5686595112287362026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1834 terms. -/
def A314244 (n : ℕ) : ℤ :=
  A314244.P5686595112287362026.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1834 terms. -/
def A314244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314668.P7034939924142127577

`A008458(n)+A008576(n)-A312101(n)`
-/

namespace A314668.P7034939924142127577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008576 n - A312101 n)

end

end A314668.P7034939924142127577

noncomputable section

/-- A314668: Coordination sequence Gal.6.115.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314668.P7034939924142127577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2495 terms. -/
def A314668 (n : ℕ) : ℤ :=
  A314668.P7034939924142127577.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2495 terms. -/
def A314668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314706.P17212367775506694373

`A008458(n)+A008576(n)-A311861(n)`
-/

namespace A314706.P17212367775506694373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008576 n - A311861 n)

end

end A314706.P17212367775506694373

noncomputable section

/-- A314706: Coordination sequence Gal.6.130.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314706.P17212367775506694373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2552 terms. -/
def A314706 (n : ℕ) : ℤ :=
  A314706.P17212367775506694373.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2552 terms. -/
def A314706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314736.P3794098761063289759

`A314428(n)+A004396(A006369(n)-A004396(n))`
-/

namespace A314736.P3794098761063289759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314428 n + A004396 (A006369 n - A004396 n).toNat

end

end A314736.P3794098761063289759

noncomputable section

/-- A314736: Coordination sequence Gal.5.115.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314736.P3794098761063289759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. -/
def A314736 (n : ℕ) : ℤ :=
  A314736.P3794098761063289759.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. -/
def A314736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314832.P15623759407353891444

`abs(A008592(n)-A314157(n))`
-/

namespace A314832.P15623759407353891444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314157 n|

end

end A314832.P15623759407353891444

noncomputable section

/-- A314832: Coordination sequence Gal.6.245.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314832.P15623759407353891444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2266 terms. -/
def A314832 (n : ℕ) : ℤ :=
  A314832.P15623759407353891444.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2266 terms. -/
def A314832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314890.P4689153716661690256

`abs(A008592(n)-A314127(n))`
-/

namespace A314890.P4689153716661690256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314127 n|

end

end A314890.P4689153716661690256

noncomputable section

/-- A314890: Coordination sequence Gal.6.152.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314890.P4689153716661690256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2315 terms. -/
def A314890 (n : ℕ) : ℤ :=
  A314890.P4689153716661690256.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2315 terms. -/
def A314890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314974.P14920294554282777166

`A004396(n)+A314742(n)-A004525(A004396(n))`
-/

namespace A314974.P14920294554282777166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314742 n - A004525 (A004396 n).toNat)

end

end A314974.P14920294554282777166

noncomputable section

/-- A314974: Coordination sequence Gal.6.343.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314974.P14920294554282777166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2280 terms. -/
def A314974 (n : ℕ) : ℤ :=
  A314974.P14920294554282777166.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2280 terms. -/
def A314974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315188.P8680427825676772158

`2*A315478(n)-A008458(n)`
-/

namespace A315188.P8680427825676772158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315478 n - A008458 n

end

end A315188.P8680427825676772158

noncomputable section

/-- A315188: Coordination sequence Gal.6.265.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315188.P8680427825676772158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2246 terms. -/
def A315188 (n : ℕ) : ℤ :=
  A315188.P8680427825676772158.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2246 terms. -/
def A315188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315264.P7587987662611308662

`abs(10*n-A310455(n))`
-/

namespace A315264.P7587987662611308662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A310455 n|

end

end A315264.P7587987662611308662

noncomputable section

/-- A315264: Coordination sequence Gal.6.328.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315264.P7587987662611308662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2336 terms. -/
def A315264 (n : ℕ) : ℤ :=
  A315264.P7587987662611308662.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2336 terms. -/
def A315264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317295.P6293647833958562741

`filter[A084345(n+2), A347523(#)]`
-/

namespace A317295.P6293647833958562741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084345 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A317295.P6293647833958562741

noncomputable section

/-- A317295: Numbers with a composite number of 1's in their binary expansion.

Offset 1, canonical program `A317295.P6293647833958562741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9985 terms. -/
def A317295 (n : ℕ) : ℤ :=
  A317295.P6293647833958562741.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9985 terms. -/
def A317295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317594.P6397274018169493983

`A038459(A013598(n+1))+A023443(n)`
-/

namespace A317594.P6397274018169493983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (A013598 (n + 1)).toNat + A023443 n

end

end A317594.P6397274018169493983

noncomputable section

/-- A317594: Lexicographically first sequence of different terms such that erasing the last three digits of a(n+1) and adding this new reshaped integer to a(n) gives back a(n+1).

Offset 1, canonical program `A317594.P6397274018169493983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A317594 (n : ℕ) : ℤ :=
  A317594.P6397274018169493983.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A317594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319661.P15202188947145428024

`log2(A003642(n+1))`
-/

namespace A319661.P15202188947145428024
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A003642 (n + 1) : ℝ)

end

end A319661.P15202188947145428024

noncomputable section

/-- A319661: 2-rank of the class group of imaginary quadratic field with discriminant -k, k = A191483(n).

Offset 1, canonical program `A319661.P15202188947145428024`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319661 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A319661.P15202188947145428024.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319661.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323761.P17464288942560498770

`A211776(n+1)/A266265(n+1)*A323760(n+1)`
-/

namespace A323761.P17464288942560498770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211776 (n + 1) : ℚ) / (A266265 (n + 1) : ℚ) * (A323760 (n + 1) : ℚ)

end

end A323761.P17464288942560498770

noncomputable section

/-- A323761: Denominator of Product_{d|n} (pod(d)/tau(d)) where pod(k) = the product of the divisors of k and tau(k) = the number of the divisors of k.

Offset 1, canonical program `A323761.P17464288942560498770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A323761 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A323761.P17464288942560498770.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A323761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324507.P9101657935171306601

`A211776(n+1)/A007955(n+1)*A324506(n+1)`
-/

namespace A324507.P9101657935171306601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211776 (n + 1) : ℚ) / (A007955 (n + 1) : ℚ) * (A324506 (n + 1) : ℚ)

end

end A324507.P9101657935171306601

noncomputable section

/-- A324507: a(n) = denominator of Product_{d|n} (d/tau(d)) where tau(k) = the number of divisors of k (A000005).

Offset 1, canonical program `A324507.P9101657935171306601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A324507 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A324507.P9101657935171306601.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A324507.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327752.P6389492624928042465

`record[A008475(5*n+11)]`
-/

namespace A327752.P6389492624928042465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (5 * n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327752.P6389492624928042465

noncomputable section

/-- A327752: Primes powers (A246655) congruent to 1 mod 5.

Offset 1, canonical program `A327752.P6389492624928042465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2429 terms. -/
def A327752 (n : ℕ) : ℤ :=
  A327752.P6389492624928042465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2429 terms. -/
def A327752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327753.P1018549127462246212

`record[A008475(5*n+4)]`
-/

namespace A327753.P1018549127462246212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (5 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327753.P1018549127462246212

noncomputable section

/-- A327753: Primes powers (A246655) congruent to 4 mod 5.

Offset 1, canonical program `A327753.P1018549127462246212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2432 terms. -/
def A327753 (n : ℕ) : ℤ :=
  A327753.P1018549127462246212.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2432 terms. -/
def A327753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327976.P13806618716666500198

`xor(A110240(n+1), 2*A265281(n))`
-/

namespace A327976.P13806618716666500198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A110240 (n + 1)) (2 * A265281 n)

end

end A327976.P13806618716666500198

noncomputable section

/-- A327976: Bitwise XOR of trajectories (centrally aligned) of rule 30, and its mirror image, rule 86, when both are started from a lone 1-bit, with the latter delayed by one step: a(n) = A110240(n) XOR 2*A265281(n-1).

Offset 1, canonical program `A327976.P13806618716666500198`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110240, A265281, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A327976 (n : ℕ) : ℤ :=
  A327976.P13806618716666500198.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110240, A265281, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A327976.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328101.P6975989960955687215

`A000035(floor(A265281(n+1)/2^(n+2)))`
-/

namespace A328101.P6975989960955687215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ⌊(A265281 (n + 1) : ℚ) / (2 ^ (n + 2) : ℚ)⌋.toNat

end

end A328101.P6975989960955687215

noncomputable section

/-- A328101: Column immediately right of the middle column of rule-30 1-D cellular automaton, when started from a lone 1 cell.

Offset 1, canonical program `A328101.P6975989960955687215`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265281, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328101 (n : ℕ) : ℤ :=
  A328101.P6975989960955687215.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265281, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328101.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328708.P9117693535644354588

`A046079(n+1)-A024361(n+1)`
-/

namespace A328708.P9117693535644354588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (n + 1) - A024361 (n + 1)

end

end A328708.P9117693535644354588

noncomputable section

/-- A328708: Number of non-primitive Pythagorean triples with leg n.

Offset 1, canonical program `A328708.P9117693535644354588`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024361, A046079, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328708 (n : ℕ) : ℤ :=
  A328708.P9117693535644354588.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024361, A046079, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328708.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A329835.P4757636539096207399

`comp[A329836(n+1)-1]+1`
-/

namespace A329835.P4757636539096207399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329836 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A329835.P4757636539096207399

noncomputable section

/-- A329835: Beatty sequence for (9+sqrt(101))/10.

Offset 1, canonical program `A329835.P4757636539096207399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329835 (n : ℕ) : ℤ :=
  (A329835.P4757636539096207399.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330724.P16993520120125291857

`A001414(A038509(n+1))`
-/

namespace A330724.P16993520120125291857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A038509 (n + 1)).toNat

end

end A330724.P16993520120125291857

noncomputable section

/-- A330724: Sum of prime factors (with multiplicity) of the n-th composite number coprime to 6.

Offset 1, canonical program `A330724.P16993520120125291857`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A038509, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A330724 (n : ℕ) : ℤ :=
  A330724.P16993520120125291857.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A038509, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A330724.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331078.P2556841124686977371

`∑[ceil(∏{e}[n+1, #+1]/2)*A034836(n+1)]`
-/

namespace A331078.P2556841124686977371
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℚ) / 2⌉ * A034836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331078.P2556841124686977371

noncomputable section

/-- A331078: a(n) = Sum_{k = 1..n} [u_2(k)*u_3(k)], where u_2 = A038548, u_3 = A034836.

Offset 1, canonical program `A331078.P2556841124686977371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331078 (n : ℕ) : ℤ :=
  A331078.P2556841124686977371.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331130.P5600848552238636263

`∑[A034836(n+1)*A034836(n+2)]`
-/

namespace A331130.P5600848552238636263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (n + 1) * A034836 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331130.P5600848552238636263

noncomputable section

/-- A331130: a(n) = Sum_{i=1..n} u_3(i)*u_3(i+1), where u_3(n) = A034836(n).

Offset 1, canonical program `A331130.P5600848552238636263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A331130 (n : ℕ) : ℤ :=
  A331130.P5600848552238636263.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A331130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332049.P9341534089412861099

`A057661(n+1)-1`
-/

namespace A332049.P9341534089412861099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057661 (n + 1) - 1

end

end A332049.P9341534089412861099

noncomputable section

/-- A332049: a(n) = (1/2) * Sum_{d|n, d > 1} d * phi(d).

Offset 1, canonical program `A332049.P9341534089412861099`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057661, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332049 (n : ℕ) : ℤ :=
  A332049.P9341534089412861099.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057661, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332049.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A332269.P10183402854127300414

`∪[A030513(n+1), A030514(n+1)]`
-/

namespace A332269.P10183402854127300414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332269.P10183402854127300414

noncomputable section

/-- A332269: Numbers m with only one divisor d such that sqrt(m) < d < m.

Offset 1, canonical program `A332269.P10183402854127300414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332269 (n : ℕ) : ℤ :=
  (A332269.P10183402854127300414.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333312.P3354544449326470189

`∪[2*A153238(n+1)+3, A156683(A009005(n+1))]`
-/

namespace A333312.P3354544449326470189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153238 (n + 1) + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156683 (A009005 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A333312.P3354544449326470189

noncomputable section

/-- A333312: Positive integers m >= 2 such that there are at least two values of v such that the sequence {v, ..., v + m - 1} of m nonnegative integers can be partitioned into two subsets of consecutive integers with the same sum.

Offset 1, canonical program `A333312.P3354544449326470189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333312 (n : ℕ) : ℤ :=
  (A333312.P3354544449326470189.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333326.P2975719134818226365

`lt[3, A325937(n+1)]+1`
-/

namespace A333326.P2975719134818226365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A333326.P2975719134818226365

noncomputable section

/-- A333326: Odd numbers k such that k is the product of 2 numbers greater than one, in two or more ways.

Offset 1, canonical program `A333326.P2975719134818226365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333326 (n : ℕ) : ℤ :=
  (A333326.P2975719134818226365.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334871.P12161263468435973650

`A331740(n+1)+A299090(A000188(n+1))`
-/

namespace A334871.P12161263468435973650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331740 (n + 1) + A299090 (A000188 (n + 1)).toNat

end

end A334871.P12161263468435973650

noncomputable section

/-- A334871: Number of steps needed to reach 1 when starting from n and iterating with A334870.

Offset 1, canonical program `A334871.P12161263468435973650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A334871 (n : ℕ) : ℤ :=
  A334871.P12161263468435973650.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A334871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334919.P14357513930265192530

`lt[1, A046079(3*n+1)]`
-/

namespace A334919.P14357513930265192530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A334919.P14357513930265192530

noncomputable section

/-- A334919: Numbers of the form i + j + 3*i*j for i,j >= 1 together with numbers of the form -i - j + 3*i*j for i,j >= 2.

Offset 1, canonical program `A334919.P14357513930265192530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334919 (n : ℕ) : ℤ :=
  (A334919.P14357513930265192530.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335021.P18155568080400955392

`A325937(A028310(n)+1)-1`
-/

namespace A335021.P18155568080400955392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (A028310 n + 1).toNat - 1

end

end A335021.P18155568080400955392

noncomputable section

/-- A335021: a(n) = Sum_{d|n, 1 < d < n} (-1)^(d + 1).

Offset 1, canonical program `A335021.P18155568080400955392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335021 (n : ℕ) : ℤ :=
  A335021.P18155568080400955392.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339804.P4837831604045285266

`(n+1)*A153485(n+1)-A279847(n+1)`
-/

namespace A339804.P4837831604045285266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A153485 (n + 1) - A279847 (n + 1)

end

end A339804.P4837831604045285266

noncomputable section

/-- A339804: a(n) = Sum_{k=1..floor(n/2)} k * (n-k) * floor((n-k)/k).

Offset 1, canonical program `A339804.P4837831604045285266`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153485, A279847, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A339804 (n : ℕ) : ℤ :=
  A339804.P4837831604045285266.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153485, A279847, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A339804.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346009.P10450314313708159874

`A062799(n+1)/A000005(n+1)*A346010(n+1)`
-/

namespace A346009.P10450314313708159874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062799 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ) * (A346010 (n + 1) : ℚ)

end

end A346009.P10450314313708159874

noncomputable section

/-- A346009: a(n) is the numerator of the average number of distinct prime factors of the divisors of n.

Offset 1, canonical program `A346009.P10450314313708159874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346009 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A346009.P10450314313708159874.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348196.P10190356890292704948

`A066339((n+1)²)`
-/

namespace A348196.P10190356890292704948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 ((n + 1) ^ 2)

end

end A348196.P10190356890292704948

noncomputable section

/-- A348196: Number of primes of the form 4k+1 < n^2.

Offset 1, canonical program `A348196.P10190356890292704948`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066339, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348196 (n : ℕ) : ℤ :=
  A348196.P10190356890292704948.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066339, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348196.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348907.P8875665345231982490

`A008578(A342165(n+2))`
-/

namespace A348907.P8875665345231982490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A342165 (n + 2)).toNat

end

end A348907.P8875665345231982490

noncomputable section

/-- A348907: If n is prime, a(n) = n, else a(n) = a(n-pi(n)), n >= 2; where pi is the prime counting function A000720.

Offset 2, canonical program `A348907.P8875665345231982490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A348907 (n : ℕ) : ℤ :=
  A348907.P8875665345231982490.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A348907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348933.P13259023024269002684

`∩[A007310(n+1), A072864(n+1)]`
-/

namespace A348933.P13259023024269002684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348933.P13259023024269002684

noncomputable section

/-- A348933: Numbers k congruent to 1 or 5 mod 6, for which A348930(k^2) < k^2.

Offset 1, canonical program `A348933.P13259023024269002684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3517 terms. -/
def A348933 (n : ℕ) : ℤ :=
  (A348933.P13259023024269002684.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3517 terms. -/
def A348933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348969.P3434171516532769019

`(n+1)/A348968(n+1)`
-/

namespace A348969.P3434171516532769019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A348968 (n + 1) : ℚ)

end

end A348969.P3434171516532769019

noncomputable section

/-- A348969: a(n) = n / gcd(n, A099377(n)).

Offset 1, canonical program `A348969.P3434171516532769019`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348969 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348969.P3434171516532769019.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348969.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349664.P7684518333172414269

`A046079((n+1)²)`
-/

namespace A349664.P7684518333172414269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 ((n + 1) ^ 2)

end

end A349664.P7684518333172414269

noncomputable section

/-- A349664: a(n) is the number of solutions for n^4 = z^2 - x^2 with {z,x} >= 1.

Offset 1, canonical program `A349664.P7684518333172414269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A349664 (n : ℕ) : ℤ :=
  A349664.P7684518333172414269.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A349664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352735.P7182467444972131953

`∩[A011538(n+1), A052406(n+1)]`
-/

namespace A352735.P7182467444972131953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352735.P7182467444972131953

noncomputable section

/-- A352735: Lucky numbers in Chinese: Numbers whose decimal expansion contains 8 but not 4.

Offset 1, canonical program `A352735.P7182467444972131953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3439 terms. -/
def A352735 (n : ℕ) : ℤ :=
  (A352735.P7182467444972131953.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3439 terms. -/
def A352735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352775.P2048892064585624364

`A352753(n+1)+A352754(n+1)`
-/

namespace A352775.P2048892064585624364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352753 (n + 1) + A352754 (n + 1)

end

end A352775.P2048892064585624364

noncomputable section

/-- A352775: a(n) = pi(n) * (Sum_{n <= q < 2n, q prime} q) + (pi(2n-1) - pi(n-1)) * (Sum_{p <= n, p prime} p).

Offset 1, canonical program `A352775.P2048892064585624364`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A352753, A352754, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A352775 (n : ℕ) : ℤ :=
  A352775.P2048892064585624364.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A352753, A352754, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A352775.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353446.P1225759683580056269

`A008486(A353352(n+1))-Δ[A006218(n)]`
-/

namespace A353446.P1225759683580056269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A353352 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A353446.P1225759683580056269

noncomputable section

/-- A353446: Let g be the inverse Möbius transform of the Eisenstein integer-valued function f defined in A353445. a(n) is twice the real part of g(n).

Offset 1, canonical program `A353446.P1225759683580056269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353446 (n : ℕ) : ℤ :=
  A353446.P1225759683580056269.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353798.P2681432505353467180

`val(A000040(A034836(n+1)), 7)`
-/

namespace A353798.P2681432505353467180
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (A034836 (n + 1)).toNat).toNat 7

end

end A353798.P2681432505353467180

noncomputable section

/-- A353798: a(n) = 1 if n is either 4th power of a prime (A030514), or product of a prime and the square of a different prime (A054753), otherwise 0.

Offset 1, canonical program `A353798.P2681432505353467180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353798 (n : ℕ) : ℤ :=
  (A353798.P2681432505353467180.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354145.P7144256352306792372

`∩[A102467(n+1), A125493(n+1)]`
-/

namespace A354145.P7144256352306792372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354145.P7144256352306792372

noncomputable section

/-- A354145: Deficient numbers that are neither prime powers nor semiprimes.

Offset 1, canonical program `A354145.P7144256352306792372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 502 terms. -/
def A354145 (n : ℕ) : ℤ :=
  (A354145.P7144256352306792372.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 502 terms. -/
def A354145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356229.P13870738333208729634

`A287170(2*(n+1))`
-/

namespace A356229.P13870738333208729634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (2 * (n + 1))

end

end A356229.P13870738333208729634

noncomputable section

/-- A356229: Number of maximal gapless submultisets of the prime indices of 2n.

Offset 1, canonical program `A356229.P13870738333208729634`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A287170, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356229 (n : ℕ) : ℤ :=
  A356229.P13870738333208729634.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A287170, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356229.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359161.P8726554361443463211

`filter[A091113(n+1), A353557(#)]`
-/

namespace A359161.P8726554361443463211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353557 (f1 j).toNat = 1) n)

end

end A359161.P8726554361443463211

noncomputable section

/-- A359161: Numbers of the form 4u+1 with an even number of prime factors (counted with multiplicity).

Offset 1, canonical program `A359161.P8726554361443463211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6282 terms. -/
def A359161 (n : ℕ) : ℤ :=
  A359161.P8726554361443463211.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6282 terms. -/
def A359161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359163.P2654985658167397465

`filter[A091236(n+1), A353557(#)]`
-/

namespace A359163.P2654985658167397465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353557 (f1 j).toNat = 1) n)

end

end A359163.P2654985658167397465

noncomputable section

/-- A359163: Numbers of the form 4u+3 with an even number of prime factors (counted with multiplicity).

Offset 1, canonical program `A359163.P2654985658167397465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6172 terms. -/
def A359163 (n : ℕ) : ℤ :=
  A359163.P2654985658167397465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6172 terms. -/
def A359163.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360395.P2153048624438428772

`floor(3*(A285973(n+1)-n)/2)`
-/

namespace A360395.P2153048624438428772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * (A285973 (n + 1) - (n : ℤ)) : ℚ) / 2⌋

end

end A360395.P2153048624438428772

noncomputable section

/-- A360395: Intersection of A026430 and A360393.

Offset 1, canonical program `A360395.P2153048624438428772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360395 (n : ℕ) : ℤ :=
  A360395.P2153048624438428772.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363155.P8045732877436553929

`A363928(5*n+4)`
-/

namespace A363155.P8045732877436553929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363928 (5 * n + 4)

end

end A363155.P8045732877436553929

noncomputable section

/-- A363155: Expansion of Sum_{k>0} k * x^(3*k-1) / (1 - x^(5*k-2)).

Offset 1, canonical program `A363155.P8045732877436553929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363155 (n : ℕ) : ℤ :=
  A363155.P8045732877436553929.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363156.P4260273011259054206

`A363928(A016885(n))`
-/

namespace A363156.P4260273011259054206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363928 (A016885 n).toNat

end

end A363156.P4260273011259054206

noncomputable section

/-- A363156: Expansion of Sum_{k>0} k * x^k / (1 - x^(5*k-2)).

Offset 1, canonical program `A363156.P4260273011259054206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363156 (n : ℕ) : ℤ :=
  A363156.P4260273011259054206.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363157.P11495080749246290306

`A363928(5*n+2)`
-/

namespace A363157.P11495080749246290306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363928 (5 * n + 2)

end

end A363157.P11495080749246290306

noncomputable section

/-- A363157: Expansion of Sum_{k>0} k * x^(4*k-1) / (1 - x^(5*k-2)).

Offset 1, canonical program `A363157.P11495080749246290306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363157 (n : ℕ) : ℤ :=
  A363157.P11495080749246290306.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363158.P2370107232160215343

`A363928(5*n+1)`
-/

namespace A363158.P2370107232160215343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363928 (5 * n + 1)

end

end A363158.P2370107232160215343

noncomputable section

/-- A363158: Expansion of Sum_{k>0} k * x^(2*k) / (1 - x^(5*k-2)).

Offset 1, canonical program `A363158.P2370107232160215343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363158 (n : ℕ) : ℤ :=
  A363158.P2370107232160215343.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A363158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364015.P9253596090287980520

`A364012(n+1)-A121443(n+1)`
-/

namespace A364015.P9253596090287980520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364012 (n + 1) - A121443 (n + 1)

end

end A364015.P9253596090287980520

noncomputable section

/-- A364015: Expansion of Sum_{k>0} k * x^(2*k) / (1 + x^(3*k)).

Offset 1, canonical program `A364015.P9253596090287980520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364015 (n : ℕ) : ℤ :=
  A364015.P9253596090287980520.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366938.P18390479391884880701

`∑[A320901(n+1)]`
-/

namespace A366938.P18390479391884880701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366938.P18390479391884880701

noncomputable section

/-- A366938: a(n) = Sum_{k=1..n} (-1)^(k-1) * binomial(k+2,3) * floor(n/k).

Offset 1, canonical program `A366938.P18390479391884880701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366938 (n : ℕ) : ℤ :=
  A366938.P18390479391884880701.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367418.P8234545043169317715

`A268335(n+1)/A367417(n+1)`
-/

namespace A367418.P8234545043169317715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268335 (n + 1) : ℚ) / (A367417 (n + 1) : ℚ)

end

end A367418.P8234545043169317715

noncomputable section

/-- A367418: The exponentially odd numbers (A268335) divided by their squarefree kernels (A007947).

Offset 1, canonical program `A367418.P8234545043169317715`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, A367417, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A367418 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367418.P8234545043169317715.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, A367417, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A367418.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A371907.P13863929953614005785

`A357215(n+1)-A371906(n+1)`
-/

namespace A371907.P13863929953614005785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357215 (n + 1) - A371906 (n + 1)

end

end A371907.P13863929953614005785

noncomputable section

/-- A371907: a(n) = sum of 2^(k-1) such that floor(n/prime(k)) is even.

Offset 1, canonical program `A371907.P13863929953614005785`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A371906, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371907 (n : ℕ) : ℤ :=
  A371907.P13863929953614005785.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A371906, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371907.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373470.P8197949945481650246

`A043555(n+1)-A043555(n)`
-/

namespace A373470.P8197949945481650246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043555 (n + 1) - A043555 n

end

end A373470.P8197949945481650246

noncomputable section

/-- A373470: First differences of A043555 = number of runs in base-3 representation of n.

Offset 0, canonical program `A373470.P8197949945481650246`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A043555, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373470 (n : ℕ) : ℤ :=
  A373470.P8197949945481650246.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A043555, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373470.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374061.P16980433022031769018

`floor(A035185(n+1)/2)`
-/

namespace A374061.P16980433022031769018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A035185 (n + 1) : ℚ) / 2⌋

end

end A374061.P16980433022031769018

noncomputable section

/-- A374061: Number of solutions to a^2 + n = 2 * b^2 with 0 < a < b.

Offset 1, canonical program `A374061.P16980433022031769018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374061 (n : ℕ) : ℤ :=
  A374061.P16980433022031769018.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374460.P17083838947933679680

`lt[1, A368711(n+1)]+1`
-/

namespace A374460.P17083838947933679680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368711 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A374460.P17083838947933679680

noncomputable section

/-- A374460: Indices of the nonsquarefree terms in the sequence of exponentially odd numbers (A268335).

Offset 1, canonical program `A374460.P17083838947933679680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1380 terms. -/
def A374460 (n : ℕ) : ℤ :=
  (A374460.P17083838947933679680.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1380 terms. -/
def A374460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380892.P2425458622169530326

`∩[A074315(n+1), A000384(n)]`
-/

namespace A380892.P2425458622169530326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380892.P2425458622169530326

noncomputable section

/-- A380892: Hexagonal numbers that are abundant.

Offset 1, canonical program `A380892.P2425458622169530326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1430 terms. -/
def A380892 (n : ℕ) : ℤ :=
  (A380892.P2425458622169530326.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1430 terms. -/
def A380892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382966.P5975578079117178061

`A056170(A375072(n+1))`
-/

namespace A382966.P5975578079117178061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A375072 (n + 1)).toNat

end

end A382966.P5975578079117178061

noncomputable section

/-- A382966: The number of non-unitary prime divisors of the n-th biquadratefree number that is not cubefree.

Offset 1, canonical program `A382966.P5975578079117178061`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056170, A375072, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382966 (n : ℕ) : ℤ :=
  A382966.P5975578079117178061.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056170, A375072, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382966.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383031.P8911448093977400013

`eq[1, A368472(n+1)]+1`
-/

namespace A383031.P8911448093977400013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368472 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A383031.P8911448093977400013

noncomputable section

/-- A383031: Indices of the squarefree terms in the sequence of exponentially odd numbers.

Offset 1, canonical program `A383031.P8911448093977400013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8620 terms. -/
def A383031 (n : ℕ) : ℤ :=
  (A383031.P8911448093977400013.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8620 terms. -/
def A383031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386024.P17777215466388512273

`∩[A160337(n+1), A329760(n+1)]`
-/

namespace A386024.P17777215466388512273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386024.P17777215466388512273

noncomputable section

/-- A386024: Primes having only {0, 1, 3, 5} as digits.

Offset 1, canonical program `A386024.P17777215466388512273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 535 terms. -/
def A386024 (n : ℕ) : ℤ :=
  (A386024.P17777215466388512273.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 535 terms. -/
def A386024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386107.P9360061858123555193

`∩[A001729(n+1), A361822(n+1)]`
-/

namespace A386107.P9360061858123555193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386107.P9360061858123555193

noncomputable section

/-- A386107: Primes having only {1, 3, 4, 7} as digits.

Offset 1, canonical program `A386107.P9360061858123555193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 290 terms. -/
def A386107 (n : ℕ) : ℤ :=
  (A386107.P9360061858123555193.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 290 terms. -/
def A386107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386113.P5229020975382995121

`∩[A030096(n+1), A329760(n+1)]`
-/

namespace A386113.P5229020975382995121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386113.P5229020975382995121

noncomputable section

/-- A386113: Primes having only {1, 3, 5, 9} as digits.

Offset 1, canonical program `A386113.P5229020975382995121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 881 terms. -/
def A386113 (n : ℕ) : ℤ :=
  (A386113.P5229020975382995121.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 881 terms. -/
def A386113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386125.P13342514555091089234

`∩[A038616(n+1), A152313(n+1)]`
-/

namespace A386125.P13342514555091089234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386125.P13342514555091089234

noncomputable section

/-- A386125: Primes having only {1, 4, 6, 9} as digits.

Offset 1, canonical program `A386125.P13342514555091089234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 573 terms. -/
def A386125 (n : ℕ) : ℤ :=
  (A386125.P13342514555091089234.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 573 terms. -/
def A386125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389838.P12199354101649347898

`∪[A002808(n+1), A053726(n+1)]`
-/

namespace A389838.P12199354101649347898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389838.P12199354101649347898

noncomputable section

/-- A389838: Numbers of the form j*k or j*k + (j-1)*(k-1) with j, k > 1.

Offset 1, canonical program `A389838.P12199354101649347898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389838 (n : ℕ) : ℤ :=
  (A389838.P12199354101649347898.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390126.P4203344648687792492

`∪[A177492(n+1), A177493(n+1)]`
-/

namespace A390126.P4203344648687792492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390126.P4203344648687792492

noncomputable section

/-- A390126: Powers k^m, m = 2..3, of squarefree composite k.

Offset 1, canonical program `A390126.P4203344648687792492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390126 (n : ℕ) : ℤ :=
  (A390126.P4203344648687792492.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391497.P15735606706962389679

`∩[A362148(n+1), A375072(n+1)]`
-/

namespace A391497.P15735606706962389679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391497.P15735606706962389679

noncomputable section

/-- A391497: Biquadratefree numbers that are neither cubefree nor cubefull.

Offset 1, canonical program `A391497.P15735606706962389679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5507 terms. -/
def A391497 (n : ℕ) : ℤ :=
  (A391497.P15735606706962389679.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5507 terms. -/
def A391497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396283.P13868189083896900489

`(n+1)*(A000290(n+1)-2*A024916(n+1))+A350123(n+1)`
-/

namespace A396283.P13868189083896900489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000290 (n + 1) - 2 * A024916 (n + 1)) + A350123 (n + 1)

end

end A396283.P13868189083896900489

noncomputable section

/-- A396283: a(n) = Sum_{k=1..n} (n mod k)^2.

Offset 1, canonical program `A396283.P13868189083896900489`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350123, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396283 (n : ℕ) : ℤ :=
  A396283.P13868189083896900489.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350123, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396283.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A396284.P3005908805938491279

`(n+1)*(A000578(n+1)-3*((n+1)*A024916(n+1)-A350123(n+1)))-A356249(n+1)`
-/

namespace A396284.P3005908805938491279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000578 (n + 1) - 3 * ((n + 1 : ℤ) * A024916 (n + 1) - A350123 (n + 1))) - A356249 (n + 1)

end

end A396284.P3005908805938491279

noncomputable section

/-- A396284: a(n) = Sum_{k=1..n} (n mod k)^3.

Offset 1, canonical program `A396284.P3005908805938491279`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350123, A356249, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A396284 (n : ℕ) : ℤ :=
  A396284.P3005908805938491279.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350123, A356249, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A396284.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A398169.P3202459588062377713

`filter[A367695(n+1), A212793(#)]`
-/

namespace A398169.P3202459588062377713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A398169.P3202459588062377713

noncomputable section

/-- A398169: Squarefree numbers k such that k+1 is an exponentially odd number.

Offset 1, canonical program `A398169.P3202459588062377713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8348 terms. -/
def A398169 (n : ℕ) : ℤ :=
  A398169.P3202459588062377713.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8348 terms. -/
def A398169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264732.P18216673104599297167

`filter[A155563(n+2), A353814(#)]`
-/

namespace A264732.P18216673104599297167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155563 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A264732.P18216673104599297167

noncomputable section

/-- A264732: Löschian numbers (A003136) which are the sum of 2 nonzero squares.

Offset 1, canonical program `A264732.P18216673104599297167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5326 terms. -/
def A264732 (n : ℕ) : ℤ :=
  A264732.P18216673104599297167.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5326 terms. -/
def A264732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267423.P14088695122642526854

`A267525(n)*A267676(n)`
-/

namespace A267423.P14088695122642526854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267525 n * A267676 n

end

end A267423.P14088695122642526854

noncomputable section

/-- A267423: Triangle read by rows giving successive states of cellular automaton generated by "Rule 133" initiated with a single ON (black) cell.

Offset 0, canonical program `A267423.P14088695122642526854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267423 (n : ℕ) : ℤ :=
  A267423.P14088695122642526854.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277855.P13714581098425057374

`A055881(eq[A099563(n+1), A265893(n)])`
-/

namespace A277855.P13714581098425057374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A277855.P13714581098425057374

noncomputable section

/-- A277855: Irregular triangle read by rows: T(n,k) is the maximum length of the longest common subsequence of k distinct permutations of n items with n>=1 and 1<=k<=n!

Offset 1, canonical program `A277855.P13714581098425057374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A277855 (n : ℕ) : ℤ :=
  A277855.P13714581098425057374.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A277855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279622.P1478079407013024484

`lt[2, A004396(A061395(n+1))]+1`
-/

namespace A279622.P1478079407013024484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A061395 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A279622.P1478079407013024484

noncomputable section

/-- A279622: Numbers with a prime factor greater than 5.

Offset 1, canonical program `A279622.P1478079407013024484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279622 (n : ℕ) : ℤ :=
  (A279622.P1478079407013024484.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285725.P10187750537591551827

`A061395(n+1)-((n-1)%2+1)`
-/

namespace A285725.P10187750537591551827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) - (Int.tmod ((n : ℤ) - 1) 2 + 1)

end

end A285725.P10187750537591551827

noncomputable section

/-- A285725: a(1) = 0; for n > 1, a(n) = A252735(n) - A000035(n).

Offset 1, canonical program `A285725.P10187750537591551827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285725 (n : ℕ) : ℤ :=
  A285725.P10187750537591551827.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310396.P16584741270594359869

`A130824(n)+A092038(A314157(n)-A130824(n))`
-/

namespace A310396.P16584741270594359869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n + A092038 (A314157 n - A130824 n).toNat

end

end A310396.P16584741270594359869

noncomputable section

/-- A310396: Coordination sequence Gal.6.320.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310396.P16584741270594359869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2266 terms. -/
def A310396 (n : ℕ) : ℤ :=
  A310396.P16584741270594359869.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2266 terms. -/
def A310396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310404.P2932539923178756672

`A310378(n)+A004525(A310420(n)-A310378(n))`
-/

namespace A310404.P2932539923178756672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310378 n + A004525 (A310420 n - A310378 n).toNat

end

end A310404.P2932539923178756672

noncomputable section

/-- A310404: Coordination sequence Gal.6.338.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310404.P2932539923178756672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2330 terms. -/
def A310404 (n : ℕ) : ℤ :=
  A310404.P2932539923178756672.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2330 terms. -/
def A310404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310520.P9429967964652236068

`abs(A008592(n)-A315186(n))`
-/

namespace A310520.P9429967964652236068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315186 n|

end

end A310520.P9429967964652236068

noncomputable section

/-- A310520: Coordination sequence Gal.6.331.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310520.P9429967964652236068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2294 terms. -/
def A310520 (n : ℕ) : ℤ :=
  A310520.P9429967964652236068.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2294 terms. -/
def A310520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311165.P16138864998668461834

`A008574(n)+A313803(n)-A313799(n)`
-/

namespace A311165.P16138864998668461834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A313803 n - A313799 n)

end

end A311165.P16138864998668461834

noncomputable section

/-- A311165: Coordination sequence Gal.5.78.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311165.P16138864998668461834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2257 terms. -/
def A311165 (n : ℕ) : ℤ :=
  A311165.P16138864998668461834.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2257 terms. -/
def A311165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311549.P16203180800236196570

`A314742(n)-A004525(A004396(n))`
-/

namespace A311549.P16203180800236196570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314742 n - A004525 (A004396 n).toNat

end

end A311549.P16203180800236196570

noncomputable section

/-- A311549: Coordination sequence Gal.6.132.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311549.P16203180800236196570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2367 terms. -/
def A311549 (n : ℕ) : ℤ :=
  A311549.P16203180800236196570.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2367 terms. -/
def A311549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311889.P1219721333135851208

`A008574(n)+A004396(A312507(n)-A008574(n))`
-/

namespace A311889.P1219721333135851208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004396 (A312507 n - A008574 n).toNat

end

end A311889.P1219721333135851208

noncomputable section

/-- A311889: Coordination sequence Gal.6.129.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311889.P1219721333135851208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2476 terms. -/
def A311889 (n : ℕ) : ℤ :=
  A311889.P1219721333135851208.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2476 terms. -/
def A311889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311907.P15737395164403453455

`A313894(n)-(A313803(n)-A313799(n)+n)`
-/

namespace A311907.P15737395164403453455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n - (A313803 n - A313799 n + (n : ℤ))

end

end A311907.P15737395164403453455

noncomputable section

/-- A311907: Coordination sequence Gal.5.78.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311907.P15737395164403453455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2257 terms. -/
def A311907 (n : ℕ) : ℤ :=
  A311907.P15737395164403453455.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2257 terms. -/
def A311907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313639.P9445063185818086660

`abs(A008592(n)-A313825(n))`
-/

namespace A313639.P9445063185818086660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313825 n|

end

end A313639.P9445063185818086660

noncomputable section

/-- A313639: Coordination sequence Gal.6.204.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313639.P9445063185818086660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2353 terms. -/
def A313639 (n : ℕ) : ℤ :=
  A313639.P9445063185818086660.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2353 terms. -/
def A313639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314032.P4483602225519338393

`abs(A008592(n)-(A315329(n)+A312507(n))/2)`
-/

namespace A314032.P4483602225519338393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A008592 n : ℚ) - (A315329 n + A312507 n : ℚ) / 2|

end

end A314032.P4483602225519338393

noncomputable section

/-- A314032: Coordination sequence Gal.6.324.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314032.P4483602225519338393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2287 terms. -/
def A314032 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A314032.P4483602225519338393.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2287 terms. -/
def A314032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323701.P14769873866229796665

`Δ[A061395(2*A076873(n+1))]`
-/

namespace A323701.P14769873866229796665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A076873 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323701.P14769873866229796665

noncomputable section

/-- A323701: a(n) is the number of primes p such that A007504(n) <= p < A007504(n+1).

Offset 1, canonical program `A323701.P14769873866229796665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A323701 (n : ℕ) : ℤ :=
  A323701.P14769873866229796665.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A323701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327829.P6390908241327507115

`∩[A000469(n+1), A063989(n+1)]`
-/

namespace A327829.P6390908241327507115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327829.P6390908241327507115

noncomputable section

/-- A327829: Squarefree numbers with a prime number of prime factors.

Offset 1, canonical program `A327829.P6390908241327507115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6930 terms. -/
def A327829 (n : ℕ) : ℤ :=
  (A327829.P6390908241327507115.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6930 terms. -/
def A327829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331281.P996979535116224856

`A057427(C(A086436(n+1), A061395(n+1)))`
-/

namespace A331281.P996979535116224856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (Nat.choose (A086436 (n + 1)).toNat (A061395 (n + 1)).toNat)

end

end A331281.P996979535116224856

noncomputable section

/-- A331281: If A061395(n) <= A001222(n), then a(n) = 1, otherwise a(n) = 0.

Offset 1, canonical program `A331281.P996979535116224856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331281 (n : ℕ) : ℤ :=
  A331281.P996979535116224856.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331282.P7456881985685693272

`char[lt[A061395(n+1), ∑{e}[n+1, #]]]`
-/

namespace A331282.P7456881985685693272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A331282.P7456881985685693272

noncomputable section

/-- A331282: If A061395(n) < A001222(n), then a(n) = 1, otherwise a(n) = 0.

Offset 1, canonical program `A331282.P7456881985685693272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331282 (n : ℕ) : ℤ :=
  (A331282.P7456881985685693272.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332422.P2549243754206614322

`∑{p}[n+1, A181983(A026238(#))]`
-/

namespace A332422.P2549243754206614322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A181983 (A026238 p).toNat

end

end A332422.P2549243754206614322

noncomputable section

/-- A332422: If n = Product (p_j^k_j) then a(n) = Sum ((-1)^(pi(p_j) + 1) * pi(p_j)), where pi = A000720.

Offset 1, canonical program `A332422.P2549243754206614322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332422 (n : ℕ) : ℤ :=
  A332422.P2549243754206614322.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334469.P12018164679622748302

`record[3-A000040(A061395(n+2))+n]`
-/

namespace A334469.P12018164679622748302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A000040 (A061395 (n + 2)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334469.P12018164679622748302

noncomputable section

/-- A334469: Indices of zero or positive first differences in A217287.

Offset 1, canonical program `A334469.P12018164679622748302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5504 terms. -/
def A334469 (n : ℕ) : ℤ :=
  A334469.P12018164679622748302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5504 terms. -/
def A334469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339273.P10031977836032368190

`4*A000404(n+1)`
-/

namespace A339273.P10031977836032368190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000404 (n + 1)

end

end A339273.P10031977836032368190

noncomputable section

/-- A339273: Sums of two nonzero even squares.

Offset 1, canonical program `A339273.P10031977836032368190`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339273 (n : ℕ) : ℤ :=
  A339273.P10031977836032368190.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339273.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353351.P1500515307686791628

`A000005(n+1)-A353352(n+1)`
-/

namespace A353351.P1500515307686791628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A353352 (n + 1)

end

end A353351.P1500515307686791628

noncomputable section

/-- A353351: Number of divisors d of n for which A048675(d) is not a multiple of 3.

Offset 1, canonical program `A353351.P1500515307686791628`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353352, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353351 (n : ℕ) : ℤ :=
  A353351.P1500515307686791628.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353352, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353351.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355769.P9165720454597640322

`∩[A000404(n+1)-1, A000404(n+1)]`
-/

namespace A355769.P9165720454597640322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355769.P9165720454597640322

noncomputable section

/-- A355769: Numbers k such that both k and k+1 can be written as the sum of two nonzero squares.

Offset 1, canonical program `A355769.P9165720454597640322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2130 terms. -/
def A355769 (n : ℕ) : ℤ :=
  (A355769.P9165720454597640322.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2130 terms. -/
def A355769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366605.P16691471640151617697

`A046799(2*n)`
-/

namespace A366605.P16691471640151617697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 (2 * n)

end

end A366605.P16691471640151617697

noncomputable section

/-- A366605: Number of distinct prime divisors of 4^n + 1.

Offset 0, canonical program `A366605.P16691471640151617697`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046799, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366605 (n : ℕ) : ℤ :=
  A366605.P16691471640151617697.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046799, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366605.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366655.P3595836475585718572

`A046799(3*n)`
-/

namespace A366655.P3595836475585718572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 (3 * n)

end

end A366655.P3595836475585718572

noncomputable section

/-- A366655: Number of distinct prime divisors of 8^n + 1.

Offset 0, canonical program `A366655.P3595836475585718572`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046799, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366655 (n : ℕ) : ℤ :=
  A366655.P3595836475585718572.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046799, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366655.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367406.P6026648702494217252

`A268335(n+1)*A367417(n+1)`
-/

namespace A367406.P6026648702494217252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1) * A367417 (n + 1)

end

end A367406.P6026648702494217252

noncomputable section

/-- A367406: The exponentially odd numbers (A268335) multiplied by their squarefree kernels (A007947).

Offset 1, canonical program `A367406.P6026648702494217252`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, A367417, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A367406 (n : ℕ) : ℤ :=
  A367406.P6026648702494217252.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, A367417, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A367406.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370082.P6772525730967909071

`7*A004613(n+1)-3`
-/

namespace A370082.P6772525730967909071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A004613 (n + 1) - 3

end

end A370082.P6772525730967909071

noncomputable section

/-- A370082: The number of square lattice nodes inside the n-th largest octagon with angles 3*Pi/4, along the perimeter of which there are only 8 lattice nodes - at the vertices of the octagon.

Offset 1, canonical program `A370082.P6772525730967909071`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004613, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370082 (n : ℕ) : ℤ :=
  A370082.P6772525730967909071.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004613, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370082.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A371698.P14444851263575026749

`2*A002003(n+1)-(1+(n+1)*(2^(n+1)-1))`
-/

namespace A371698.P14444851263575026749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002003 (n + 1) - (1 + (n + 1 : ℤ) * ((2 ^ (n + 1) : ℤ) - 1))

end

end A371698.P14444851263575026749

noncomputable section

/-- A371698: Number of partial order-preserving or -reversing transformations of a chain of length n.

Offset 1, canonical program `A371698.P14444851263575026749`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371698 (n : ℕ) : ℤ :=
  A371698.P14444851263575026749.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371698.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372442.P7915193120500991903

`A070939(n+2)-A061395(n+2)`
-/

namespace A372442.P7915193120500991903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 2) - A061395 (n + 2)

end

end A372442.P7915193120500991903

noncomputable section

/-- A372442: (Greatest binary index of n) minus (greatest prime index of n).

Offset 2, canonical program `A372442.P7915193120500991903`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061395, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372442 (n : ℕ) : ℤ :=
  A372442.P7915193120500991903.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061395, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372442.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372771.P4411749344407229713

`comp[A004273(comp[A004613(n+1)])]`
-/

namespace A372771.P4411749344407229713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A372771.P4411749344407229713

noncomputable section

/-- A372771: Numbers m such that the congruence x^(m+1) == m (mod m+1) is solvable.

Offset 1, canonical program `A372771.P4411749344407229713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372771 (n : ℕ) : ℤ :=
  (A372771.P4411749344407229713.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377880.P16509850841699067558

`∪[A000469(n+1), A067259(n+1)]`
-/

namespace A377880.P16509850841699067558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A377880.P16509850841699067558

noncomputable section

/-- A377880: Nonprime cubefree numbers.

Offset 1, canonical program `A377880.P16509850841699067558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377880 (n : ℕ) : ℤ :=
  (A377880.P16509850841699067558.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381542.P14309629720636309362

`eq[A051903(n+1), A061395(2*(n+1))]+1`
-/

namespace A381542.P14309629720636309362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A381542.P14309629720636309362

noncomputable section

/-- A381542: Numbers > 1 whose greatest prime index equals their greatest prime multiplicity.

Offset 1, canonical program `A381542.P14309629720636309362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A381542 (n : ℕ) : ℤ :=
  (A381542.P14309629720636309362.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A381542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386018.P6227341428964575611

`∩[A160337(n+1), A386342(n+1)]`
-/

namespace A386018.P6227341428964575611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386018.P6227341428964575611

noncomputable section

/-- A386018: Primes having only {0, 1, 2, 5} as digits.

Offset 1, canonical program `A386018.P6227341428964575611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A386018 (n : ℕ) : ℤ :=
  (A386018.P6227341428964575611.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A386018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391183.P5927529628571283999

`char[A002479(n+1)]`
-/

namespace A391183.P5927529628571283999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A391183.P5927529628571283999

noncomputable section

/-- A391183: a(n) = 1 if n is a number of the form x^2 + 2*y^2, and otherwise 0.

Offset 0, canonical program `A391183.P5927529628571283999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391183 (n : ℕ) : ℤ :=
  (A391183.P5927529628571283999.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395545.P10009443539781568918

`A035317(A007401(n+1))`
-/

namespace A395545.P10009443539781568918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035317 (A007401 (n + 1)).toNat

end

end A395545.P10009443539781568918

noncomputable section

/-- A395545: Square array A(n,k), n>=1, k>=1, read by descending antidiagonals A(n,k) = Sum_{i=0..k} binomial(n-i, i)*binomial(k+i, 2*i+1).

Offset 1, canonical program `A395545.P10009443539781568918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A395545 (n : ℕ) : ℤ :=
  A395545.P10009443539781568918.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A395545.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397450.P15353059364789468864

`∑[char[A000404(n+1)-1]]`
-/

namespace A397450.P15353059364789468864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397450.P15353059364789468864

noncomputable section

/-- A397450: a(n) is the number of positive integers <= n that are the sum of 2 nonzero squares.

Offset 1, canonical program `A397450.P15353059364789468864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397450 (n : ℕ) : ℤ :=
  (A397450.P15353059364789468864.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265892.P3280630500737208173

`A265893(A265609(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265892.P3280630500737208173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265893 (A265609 n).toNat

end

end A265892.P3280630500737208173

noncomputable section

/-- A265892: Array read by ascending antidiagonals: A(n,k) = A265893(A265609(n,k)), with n as row >= 0, k as column >= 0; the number of significant digits counted without trailing zeros in the factorial base representation of rising factorial n^(k) = (n+k-1)!/(n-1)!.

Offset 0, canonical program `A265892.P3280630500737208173`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265609, A265893, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A265892 (n : ℕ) : ℤ :=
  A265892.P3280630500737208173.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265609, A265893, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A265892.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A289614.P14969575610608167341

`A289615(n)+A289616(n)-A289652(n)`
-/

namespace A289614.P14969575610608167341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289615 n + A289616 n - A289652 n

end

end A289614.P14969575610608167341

noncomputable section

/-- A289614: a(n) is the number of permutations of length n that avoid the pattern 321 and the mesh pattern (12, 283) or the same sequence for the mesh pattern (12, 433).

Offset 0, canonical program `A289614.P14969575610608167341`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289615, A289616, A289652, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A289614 (n : ℕ) : ℤ :=
  A289614.P14969575610608167341.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289615, A289616, A289652, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A289614.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A313023.P12828604169227298714

`A004525(A004396(n))+A313228(n)-A004396(n)`
-/

namespace A313023.P12828604169227298714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A313228 n - A004396 n)

end

end A313023.P12828604169227298714

noncomputable section

/-- A313023: Coordination sequence Gal.6.130.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313023.P12828604169227298714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2468 terms. -/
def A313023 (n : ℕ) : ℤ :=
  A313023.P12828604169227298714.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2468 terms. -/
def A313023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314156.P13342112998699093357

`A313779(n)+∑[A022003(n)]`
-/

namespace A314156.P13342112998699093357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313779 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314156.P13342112998699093357

noncomputable section

/-- A314156: Coordination sequence Gal.6.651.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314156.P13342112998699093357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A314156 (n : ℕ) : ℤ :=
  A314156.P13342112998699093357.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A314156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315410.P5887304458522211187

`abs(A008592(n)-A313259(n))`
-/

namespace A315410.P5887304458522211187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313259 n|

end

end A315410.P5887304458522211187

noncomputable section

/-- A315410: Coordination sequence Gal.6.322.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315410.P5887304458522211187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2332 terms. -/
def A315410 (n : ℕ) : ℤ :=
  A315410.P5887304458522211187.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2332 terms. -/
def A315410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314165.P12623348579880038257

`A310465(n)+A004525(A008458(n)-A310465(n))`
-/

namespace A314165.P12623348579880038257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310465 n + A004525 (A008458 n - A310465 n).toNat

end

end A314165.P12623348579880038257

noncomputable section

/-- A314165: Coordination sequence Gal.5.307.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314165.P12623348579880038257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. -/
def A314165 (n : ℕ) : ℤ :=
  A314165.P12623348579880038257.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. -/
def A314165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315254.P4856332562113004887

`abs(A008592(n)-A310465(n))`
-/

namespace A315254.P4856332562113004887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310465 n|

end

end A315254.P4856332562113004887

noncomputable section

/-- A315254: Coordination sequence Gal.6.232.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315254.P4856332562113004887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2322 terms. -/
def A315254 (n : ℕ) : ℤ :=
  A315254.P4856332562113004887.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2322 terms. -/
def A315254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268087.P6457942966447393227

`A162909(n+1)+A162910(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268087.P6457942966447393227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162909 (n + 1) + A162910 (n + 1)

end

end A268087.P6457942966447393227

noncomputable section

/-- A268087: a(n) = A162909(n) + A162910(n).

Offset 1, canonical program `A268087.P6457942966447393227`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162909, A162910, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A268087 (n : ℕ) : ℤ :=
  A268087.P6457942966447393227.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162909, A162910, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A268087.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A274920.P7331687866389573952

`(12-A328818(n))%3`
-/

namespace A274920.P7331687866389573952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (12 - A328818 n) 3

end

end A274920.P7331687866389573952

noncomputable section

/-- A274920: Spiral constructed on the nodes of the triangular net in which each new term is the least nonnegative integers distinct from its neighbors.

Offset 0, canonical program `A274920.P7331687866389573952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A274920 (n : ℕ) : ℤ :=
  A274920.P7331687866389573952.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A274920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275716.P7951773903952206727

`ceil(A163511(4*n+3)/3)`
-/

namespace A275716.P7951773903952206727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A163511 (4 * n + 3) : ℚ) / 3⌉

end

end A275716.P7951773903952206727

noncomputable section

/-- A275716: Permutation of natural numbers: a(0) = 1, a(1) = 2, a(2n) = A273669(a(n)), a(2n+1) = A273664(a(n)).

Offset 0, canonical program `A275716.P7951773903952206727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A275716 (n : ℕ) : ℤ :=
  A275716.P7951773903952206727.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A275716.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283988.P2763794539889423270

`A283978(2*(n+1)-1)`
-/

namespace A283988.P2763794539889423270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283978 (2 * (n + 1) - 1)

end

end A283988.P2763794539889423270

noncomputable section

/-- A283988: a(n) = A002487(n-1) AND A002487(n), where AND is bitwise-and (A004198).

Offset 1, canonical program `A283988.P2763794539889423270`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283978, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283988 (n : ℕ) : ℤ :=
  A283988.P2763794539889423270.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283978, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283988.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284447.P16300961384300992767

`A092569(A258996(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284447.P16300961384300992767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (A258996 (n + 1)).toNat

end

end A284447.P16300961384300992767

noncomputable section

/-- A284447: Permutation of the positive integers: a(n) = A258996(A092569(n)) = A092569(A258996(n)).

Offset 1, canonical program `A284447.P16300961384300992767`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092569, A258996, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284447 (n : ℕ) : ℤ :=
  A284447.P16300961384300992767.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092569, A258996, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284447.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284460.P11071859189159221971

`A231550(A258996(n+1))`
-/

namespace A284460.P11071859189159221971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231550 (A258996 (n + 1)).toNat

end

end A284460.P11071859189159221971

noncomputable section

/-- A284460: Permutation of the positive integers: this permutation transforms the enumeration system of positive irreducible fractions A245327/A245328 into the enumeration system A002487/A002487' (Calkin-Wilf), and A020651/A020650 (Yu-Ting inverted) into A162911/A162912(Drib).

Offset 1, canonical program `A284460.P11071859189159221971`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A231550, A258996, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284460 (n : ℕ) : ℤ :=
  A284460.P11071859189159221971.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A231550, A258996, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284460.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A287375.P16270847010936485648

`2*A287374(n+1)`
-/

namespace A287375.P16270847010936485648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A287374 (n + 1)

end

end A287375.P16270847010936485648

noncomputable section

/-- A287375: Positions of 2 in A101666.

Offset 1, canonical program `A287375.P16270847010936485648`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A287374, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A287375 (n : ℕ) : ℤ :=
  A287375.P16270847010936485648.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A287374, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A287375.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A308993.P18444456858046890751

`A066990(A057521(n+1)*A071974(n+1))`
-/

namespace A308993.P18444456858046890751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 (A057521 (n + 1) * A071974 (n + 1)).toNat

end

end A308993.P18444456858046890751

noncomputable section

/-- A308993: Multiplicative with a(p) = 1 and a(p^e) = p^a(e) for any e > 1 and prime number p.

Offset 1, canonical program `A308993.P18444456858046890751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. -/
def A308993 (n : ℕ) : ℤ :=
  A308993.P18444456858046890751.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. -/
def A308993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318448.P18323809931802074675

`A318447(n+1)+A294898(n+1)`
-/

namespace A318448.P18323809931802074675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318447 (n + 1) + A294898 (n + 1)

end

end A318448.P18323809931802074675

noncomputable section

/-- A318448: a(n) = Sum_{d|n} A294898(d), where A294898(d) = A005187(d) - sigma(d).

Offset 1, canonical program `A318448.P18323809931802074675`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318447, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318448 (n : ℕ) : ℤ :=
  A318448.P18323809931802074675.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318447, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318448.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318652.P1218394255038798337

`A046645(n+1)-A318513(n+1)`
-/

namespace A318652.P1218394255038798337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1) - A318513 (n + 1)

end

end A318652.P1218394255038798337

noncomputable section

/-- A318652: The 2-adic valuation of A046644(n)/A318512(n) (A318651).

Offset 1, canonical program `A318652.P1218394255038798337`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, A318513, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318652 (n : ℕ) : ℤ :=
  A318652.P1218394255038798337.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, A318513, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318652.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324187.P6887987960075682770

`A106315(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324187.P6887987960075682770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106315 (A163511 n).toNat

end

end A324187.P6887987960075682770

noncomputable section

/-- A324187: a(n) = A106315(A163511(n)).

Offset 0, canonical program `A324187.P6887987960075682770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A106315, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324187 (n : ℕ) : ℤ :=
  A324187.P6887987960075682770.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A106315, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324187.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324194.P16246264380367185644

`A192895(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324194.P16246264380367185644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192895 (A163511 n).toNat

end

end A324194.P16246264380367185644

noncomputable section

/-- A324194: A000120-deficiency of n permuted by A163511: a(n) = A192895(A163511(n)).

Offset 0, canonical program `A324194.P16246264380367185644`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A192895, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324194 (n : ℕ) : ℤ :=
  A324194.P16246264380367185644.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A192895, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324194.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A332769.P9976973925860660972

`A258996(A054429(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332769.P9976973925860660972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258996 (A054429 (n + 1)).toNat

end

end A332769.P9976973925860660972

noncomputable section

/-- A332769: Permutation of the positive integers: a(n) = A258996(A054429(n)) = A054429(A258996(n)).

Offset 1, canonical program `A332769.P9976973925860660972`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054429, A258996, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A332769 (n : ℕ) : ℤ :=
  A332769.P9976973925860660972.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054429, A258996, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A332769.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333046.P18395749149837300678

`(n+1)*A325446(n+1)`
-/

namespace A333046.P18395749149837300678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A325446 (n + 1)

end

end A333046.P18395749149837300678

noncomputable section

/-- A333046: a(1) = 1; a(n) = n * Sum_{d|n, d < n, gcd(d, n/d) = 1} a(d) / d.

Offset 1, canonical program `A333046.P18395749149837300678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333046 (n : ℕ) : ℤ :=
  A333046.P18395749149837300678.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333242.P7039414772818827549

`A000720(A262275(n+1))`
-/

namespace A333242.P7039414772818827549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A262275 (n + 1)).toNat

end

end A333242.P7039414772818827549

noncomputable section

/-- A333242: Prime numbers with an odd number of steps in their prime index chain.

Offset 1, canonical program `A333242.P7039414772818827549`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333242 (n : ℕ) : ℤ :=
  A333242.P7039414772818827549.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333242.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333243.P1594209930039266344

`A000040(A262275(n+1))`
-/

namespace A333243.P1594209930039266344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A262275 (n + 1)).toNat

end

end A333243.P1594209930039266344

noncomputable section

/-- A333243: Prime numbers with prime indices in A262275.

Offset 1, canonical program `A333243.P1594209930039266344`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333243 (n : ℕ) : ℤ :=
  A333243.P1594209930039266344.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333243.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333623.P14520114881090528427

`lt[(n+1)%A319715(n+1), 1]+1`
-/

namespace A333623.P14520114881090528427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A319715 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A333623.P14520114881090528427

noncomputable section

/-- A333623: Numbers k such that k is divisible by the sum of digits of all the divisors of k in primorial base (A319715).

Offset 1, canonical program `A333623.P14520114881090528427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A333623 (n : ℕ) : ℤ :=
  (A333623.P14520114881090528427.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A333623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340346.P2733100525772459955

`A183091(n+1)/A183091(A111701(n+1))`
-/

namespace A340346.P2733100525772459955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183091 (n + 1) : ℚ) / (A183091 (A111701 (n + 1)).toNat : ℚ)

end

end A340346.P2733100525772459955

noncomputable section

/-- A340346: The largest divisor of n that is a term of A055932 (numbers divisible by all primes smaller than their largest prime factor).

Offset 1, canonical program `A340346.P2733100525772459955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A340346 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A340346.P2733100525772459955.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A340346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343303.P7519863497709517625

`A231089(n+1)+A033999(p?[A016777(n)])`
-/

namespace A343303.P7519863497709517625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231089 (n + 1) + A033999 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A343303.P7519863497709517625

noncomputable section

/-- A343303: Numbers in A231626 but not in A343302; first of 5 consecutive deficient numbers in arithmetic progression with common difference > 1.

Offset 1, canonical program `A343303.P7519863497709517625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 611 terms. -/
def A343303 (n : ℕ) : ℤ :=
  A343303.P7519863497709517625.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 611 terms. -/
def A343303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343504.P12989595719974363290

`lcm(a(A257687(n)), A099563(n))` with `a(0)=1`
-/

namespace A343504.P12989595719974363290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (A257687 n).toNat : ℤ) (A099563 n)

end

end A343504.P12989595719974363290

noncomputable section

/-- A343504: a(n) is the least common multiple of the nonzero digits in factorial base expansion of n.

Offset 0, canonical program `A343504.P12989595719974363290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343504 (n : ℕ) : ℤ :=
  (A343504.P12989595719974363290.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348677.P12041509539647670039

`A001223(A000720(A262275(n+1))-1)`
-/

namespace A348677.P12041509539647670039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A000720 (A262275 (n + 1)).toNat - 1).toNat

end

end A348677.P12041509539647670039

noncomputable section

/-- A348677: a(n) is the difference between A262275(n) and the next lower prime.

Offset 1, canonical program `A348677.P12041509539647670039`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348677 (n : ℕ) : ℤ :=
  A348677.P12041509539647670039.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348677.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349612.P9375249722541774064

`∑{d}[A349394(n+1), A125131(#)]`
-/

namespace A349612.P9375249722541774064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A125131 d

end

end A349612.P9375249722541774064

noncomputable section

/-- A349612: Dirichlet convolution of A342001 [{arithmetic derivative of n}/A003557(n)] with A325126 [Dirichlet inverse of rad(n)].

Offset 1, canonical program `A349612.P9375249722541774064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349612 (n : ℕ) : ℤ :=
  A349612.P9375249722541774064.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350162.P14962107190166092220

`2*A350166(n+1)-A014200(n+1)`
-/

namespace A350162.P14962107190166092220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A350166 (n + 1) - A014200 (n + 1)

end

end A350162.P14962107190166092220

noncomputable section

/-- A350162: a(n) = Sum_{k=1..n} (-1)^(k+1) * floor(n/(2*k-1))^2.

Offset 1, canonical program `A350162.P14962107190166092220`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014200, A350166, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A350162 (n : ℕ) : ℤ :=
  A350162.P14962107190166092220.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014200, A350166, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A350162.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350389.P11774881852585828410

`(n+1)/A350388(n+1)`
-/

namespace A350389.P11774881852585828410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A350388 (n + 1) : ℚ)

end

end A350389.P11774881852585828410

noncomputable section

/-- A350389: a(n) is the largest unitary divisor of n that is an exponentially odd number (A268335).

Offset 1, canonical program `A350389.P11774881852585828410`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350389 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A350389.P11774881852585828410.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350389.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351518.P3848727873794154647

`A007947(n+1)/A351517(n+1)`
-/

namespace A351518.P3848727873794154647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A351517 (n + 1) : ℚ)

end

end A351518.P3848727873794154647

noncomputable section

/-- A351518: a(n) = Product_{p|n, p prime} p^((pi(p)+1) mod 2).

Offset 1, canonical program `A351518.P3848727873794154647`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351517, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351518 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A351518.P3848727873794154647.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351517, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351518.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351568.P13453391376652961444

`A000203(A350388(n+1))`
-/

namespace A351568.P13453391376652961444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A350388 (n + 1)).toNat

end

end A351568.P13453391376652961444

noncomputable section

/-- A351568: Sum of the divisors of the largest unitary divisor of n that is a square.

Offset 1, canonical program `A351568.P13453391376652961444`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351568 (n : ℕ) : ℤ :=
  A351568.P13453391376652961444.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351568.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353381.P8581295006819981312

`∑{d}[n+1, abs(A353354((n+1)/#))]`
-/

namespace A353381.P8581295006819981312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), |A353354 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat|

end

end A353381.P8581295006819981312

noncomputable section

/-- A353381: Number of divisors of n not in A353355.

Offset 1, canonical program `A353381.P8581295006819981312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353381 (n : ℕ) : ℤ :=
  A353381.P8581295006819981312.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355222.P17906569904308679321

`A182324(n)-A054054(A056142(n))`
-/

namespace A355222.P17906569904308679321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182324 n - A054054 (A056142 n).toNat

end

end A355222.P17906569904308679321

noncomputable section

/-- A355222: The k-th leftmost digit of a(n) is the greatest of the k leftmost digits of n.

Offset 0, canonical program `A355222.P17906569904308679321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A355222 (n : ℕ) : ℤ :=
  A355222.P17906569904308679321.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A355222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358179.P5604913156474970621

`A038580(A262275(n+1))`
-/

namespace A358179.P5604913156474970621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (A262275 (n + 1)).toNat

end

end A358179.P5604913156474970621

noncomputable section

/-- A358179: Prime numbers with prime indices in A333244.

Offset 1, canonical program `A358179.P5604913156474970621`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358179 (n : ℕ) : ℤ :=
  A358179.P5604913156474970621.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358179.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359042.P13411366105931231401

`A230877(n)+A080791(n)`
-/

namespace A359042.P13411366105931231401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230877 n + A080791 n

end

end A359042.P13411366105931231401

noncomputable section

/-- A359042: Sum of partial sums of the n-th composition in standard order (A066099).

Offset 0, canonical program `A359042.P13411366105931231401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A359042 (n : ℕ) : ℤ :=
  A359042.P13411366105931231401.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A359042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359433.P4608172396385939507

`(-1)^∑{e}[n+1, #]*A125131(∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A359433.P4608172396385939507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * A125131 (∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

end

end A359433.P4608172396385939507

noncomputable section

/-- A359433: Dirichlet inverse of A071773.

Offset 1, canonical program `A359433.P4608172396385939507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359433 (n : ℕ) : ℤ :=
  A359433.P4608172396385939507.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360540.P10431117392450693366

`(n+1)/A360539(n+1)`
-/

namespace A360540.P10431117392450693366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A360539 (n + 1) : ℚ)

end

end A360540.P10431117392450693366

noncomputable section

/-- A360540: a(n) is the cubefull part of n: the largest divisor of n that is a cubefull number (A036966).

Offset 1, canonical program `A360540.P10431117392450693366`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360539, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360540 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A360540.P10431117392450693366.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360539, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360540.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363341.P11856642166053254809

`A014200(2*(n+1))-(n+1)`
-/

namespace A363341.P11856642166053254809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A363341.P11856642166053254809

noncomputable section

/-- A363341: Number of positive integers k <= n such that round(n/k) is odd.

Offset 1, canonical program `A363341.P11856642166053254809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A363341 (n : ℕ) : ℤ :=
  A363341.P11856642166053254809.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A363341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366147.P10283015225632227018

`A000005(A360539(n+1))`
-/

namespace A366147.P10283015225632227018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A360539 (n + 1)).toNat

end

end A366147.P10283015225632227018

noncomputable section

/-- A366147: The number of divisors of the cubefree part of n (A360539).

Offset 1, canonical program `A366147.P10283015225632227018`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360539, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366147 (n : ℕ) : ℤ :=
  A366147.P10283015225632227018.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360539, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366147.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366309.P14240225199999852292

`2^A366247(n+1)`
-/

namespace A366309.P14240225199999852292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A366247 (n + 1) : ℤ)

end

end A366309.P14240225199999852292

noncomputable section

/-- A366309: The number of infinitary divisors of n that are terms of A366243.

Offset 1, canonical program `A366309.P14240225199999852292`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366247, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366309 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A366309.P14240225199999852292.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366247, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366309.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366444.P3140154605378599213

`A054523(n+1)*A231425(n+1)`
-/

namespace A366444.P3140154605378599213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1) * A231425 (n + 1)

end

end A366444.P3140154605378599213

noncomputable section

/-- A366444: Triangle read by rows: T(n,k) = phi(n/k)*A023900(k) if k divides n, T(n,k) = 0 otherwise (n >= 1, 1 <= k <= n).

Offset 1, canonical program `A366444.P3140154605378599213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366444 (n : ℕ) : ℤ :=
  A366444.P3140154605378599213.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367989.P10767245961528974005

`A035316(A350388(n+1))`
-/

namespace A367989.P10767245961528974005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (A350388 (n + 1)).toNat

end

end A367989.P10767245961528974005

noncomputable section

/-- A367989: The sum of square divisors of the largest unitary divisor of n that is a square.

Offset 1, canonical program `A367989.P10767245961528974005`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, A350388, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A367989 (n : ℕ) : ℤ :=
  A367989.P10767245961528974005.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, A350388, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A367989.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368470.P5926755419945979817

`A322483(n+1)/A367987(n+1)`
-/

namespace A368470.P5926755419945979817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322483 (n + 1) : ℚ) / (A367987 (n + 1) : ℚ)

end

end A368470.P5926755419945979817

noncomputable section

/-- A368470: a(n) is the number of exponentially odd divisors of the largest unitary divisor of n that is an exponentially odd number (A268335).

Offset 1, canonical program `A368470.P5926755419945979817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368470 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A368470.P5926755419945979817.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368884.P4906600944682773301

`A360539(A057521(n+1))`
-/

namespace A368884.P4906600944682773301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360539 (A057521 (n + 1)).toNat

end

end A368884.P4906600944682773301

noncomputable section

/-- A368884: The largest unitary divisor of n that is the square of a squarefree number (A062503).

Offset 1, canonical program `A368884.P4906600944682773301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368884 (n : ℕ) : ℤ :=
  A368884.P4906600944682773301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375033.P7202399145950353671

`A051903(A350388(n+1))`
-/

namespace A375033.P7202399145950353671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A350388 (n + 1)).toNat

end

end A375033.P7202399145950353671

noncomputable section

/-- A375033: The maximum even exponent in the prime factorization of n, or 0 if no such exponent exists.

Offset 1, canonical program `A375033.P7202399145950353671`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A350388, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375033 (n : ℕ) : ℤ :=
  A375033.P7202399145950353671.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A350388, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375033.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375847.P17445799609961011630

`A051903(A360539(n+1))`
-/

namespace A375847.P17445799609961011630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A360539 (n + 1)).toNat

end

end A375847.P17445799609961011630

noncomputable section

/-- A375847: The maximum exponent in the prime factorization of the largest unitary cubefree divisor of n.

Offset 1, canonical program `A375847.P17445799609961011630`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A360539, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375847 (n : ℕ) : ℤ :=
  A375847.P17445799609961011630.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A360539, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375847.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380413.P10440904803708736813

`A378086(A068361(n+1))`
-/

namespace A380413.P10440904803708736813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378086 (A068361 (n + 1)).toNat

end

end A380413.P10440904803708736813

noncomputable section

/-- A380413: Terms appearing twice in A378086 (number of nonsquarefree numbers < prime(n)).

Offset 1, canonical program `A380413.P10440904803708736813`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068361, A378086, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380413 (n : ℕ) : ℤ :=
  A380413.P10440904803708736813.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068361, A378086, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380413.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380549.P9090149559368070588

`lt[A172187(n+2), A172187(A364085(n+1))]`
-/

namespace A380549.P9090149559368070588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172187 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172187 (A364085 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A380549.P9090149559368070588

noncomputable section

/-- A380549: List of numbers of the form i + 3*j + 4*i*j for i, j >= 1.

Offset 1, canonical program `A380549.P9090149559368070588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4672 terms. -/
def A380549 (n : ℕ) : ℤ :=
  (A380549.P9090149559368070588.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4672 terms. -/
def A380549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382291.P6985755138510803654

`2^A382290(n+1)`
-/

namespace A382291.P6985755138510803654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A382290 (n + 1) : ℤ)

end

end A382291.P6985755138510803654

noncomputable section

/-- A382291: a(n) = A037445(n)/A034444(n).

Offset 1, canonical program `A382291.P6985755138510803654`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A382290, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382291 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382291.P6985755138510803654.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A382290, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382291.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382903.P2846374962855123125

`A360539(A046100(n+1))`
-/

namespace A382903.P2846374962855123125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360539 (A046100 (n + 1)).toNat

end

end A382903.P2846374962855123125

noncomputable section

/-- A382903: The largest cubefree unitary divisor of the n-th biquadratefree number.

Offset 1, canonical program `A382903.P2846374962855123125`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A360539, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382903 (n : ℕ) : ℤ :=
  A382903.P2846374962855123125.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A360539, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382903.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262870.P16818378714008051339

`A294146(n+1)+A294285(n+1)-A294283(n+1)`
-/

namespace A262870.P16818378714008051339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294146 (n + 1) + (A294285 (n + 1) - A294283 (n + 1))

end

end A262870.P16818378714008051339

noncomputable section

/-- A262870: Sum of the squarefree numbers appearing among the larger parts of the partitions of n into two parts.

Offset 1, canonical program `A262870.P16818378714008051339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262870 (n : ℕ) : ℤ :=
  A262870.P16818378714008051339.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268384.P16231980144868817348

`a(A246159(n))` with `a(0)=0, a(1)=1`
-/

namespace A268384.P16231980144868817348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A246159 n).toNat

end

end A268384.P16231980144868817348

noncomputable section

/-- A268384: Characteristic function of A001317.

Offset 0, canonical program `A268384.P16231980144868817348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268384 (n : ℕ) : ℤ :=
  (A268384.P16231980144868817348.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273494.P14320960571010168640

`A245325(n+1)+A245326(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A273494.P14320960571010168640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245325 (n + 1) + A245326 (n + 1)

end

end A273494.P14320960571010168640

noncomputable section

/-- A273494: a(n) = A245325(n) + A245326(n).

Offset 1, canonical program `A273494.P14320960571010168640`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A245325, A245326, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A273494 (n : ℕ) : ℤ :=
  A273494.P14320960571010168640.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A245325, A245326, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A273494.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A275340.P3805728007378759890

`A113502(n+1)+1`
-/

namespace A275340.P3805728007378759890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113502 (n + 1) + 1

end

end A275340.P3805728007378759890

noncomputable section

/-- A275340: Nontrivial centered polygonal numbers: numbers of the form A101321(n,k) where n >= 1 and k >= 2.

Offset 1, canonical program `A275340.P3805728007378759890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275340 (n : ℕ) : ℤ :=
  A275340.P3805728007378759890.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277780.P4452864541001446991

`A050985(n+1)*A000578(1+A048766(A008834(n+1)))`
-/

namespace A277780.P4452864541001446991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (n + 1) * A000578 (1 + A048766 (A008834 (n + 1)).toNat).toNat

end

end A277780.P4452864541001446991

noncomputable section

/-- A277780: a(n) is the least k > n such that n*k^2 is a cube.

Offset 1, canonical program `A277780.P4452864541001446991`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008834, A050985, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A277780 (n : ℕ) : ℤ :=
  A277780.P4452864541001446991.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008834, A050985, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A277780.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277802.P17096893089026203100

`A048798(A004709(n+1))`
-/

namespace A277802.P17096893089026203100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048798 (A004709 (n + 1)).toNat

end

end A277802.P17096893089026203100

noncomputable section

/-- A277802: The least k > 0 such that k*A004709(n) is a cube.

Offset 1, canonical program `A277802.P17096893089026203100`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A048798, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A277802 (n : ℕ) : ℤ :=
  A277802.P17096893089026203100.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A048798, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A277802.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277822.P8229571769565338857

`A268726(and(A001969(n+1), A006257(n)))`
-/

namespace A277822.P8229571769565338857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268726 (Int.land (A001969 (n + 1)) (A006257 n)).toNat

end

end A277822.P8229571769565338857

noncomputable section

/-- A277822: a(n) = index of the column where n is located in array A277880.

Offset 0, canonical program `A277822.P8229571769565338857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277822 (n : ℕ) : ℤ :=
  A277822.P8229571769565338857.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280799.P17483720520370020034

`A049502(A000010(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280799.P17483720520370020034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 (A000010 (n + 1)).toNat

end

end A280799.P17483720520370020034

noncomputable section

/-- A280799: a(n) = A049502(phi(n)).

Offset 1, canonical program `A280799.P17483720520370020034`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A049502, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280799 (n : ℕ) : ℤ :=
  A280799.P17483720520370020034.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A049502, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280799.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A280815.P16401283528998720651

`A049502(A051953(n+1))`
-/

namespace A280815.P16401283528998720651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 (A051953 (n + 1)).toNat

end

end A280815.P16401283528998720651

noncomputable section

/-- A280815: a(n) = A049502(cototient(n)).

Offset 1, canonical program `A280815.P16401283528998720651`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049502, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280815 (n : ℕ) : ℤ :=
  A280815.P16401283528998720651.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049502, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280815.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A283977.P3008186910418949964

`A283976(n)-A283978(n)`
-/

namespace A283977.P3008186910418949964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 n - A283978 n

end

end A283977.P3008186910418949964

noncomputable section

/-- A283977: a(2n) = A002487(n), a(2n+1) = A002487(n) XOR A002487(n+1), where XOR is bitwise-xor (A003987).

Offset 0, canonical program `A283977.P3008186910418949964`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283976, A283978, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A283977 (n : ℕ) : ℤ :=
  A283977.P3008186910418949964.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283976, A283978, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A283977.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284288.P13047089995370413038

`eq[1, A296084(n+2)]+2`
-/

namespace A284288.P13047089995370413038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296084 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A284288.P13047089995370413038

noncomputable section

/-- A284288: Numbers n such that the average of the strong divisors of n is an integer.

Offset 1, canonical program `A284288.P13047089995370413038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9513 terms. -/
def A284288 (n : ℕ) : ℤ :=
  (A284288.P13047089995370413038.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9513 terms. -/
def A284288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286265.P4047765915956604991

`lt[n+1, A092693(n+1)]+1`
-/

namespace A286265.P4047765915956604991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092693 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A286265.P4047765915956604991

noncomputable section

/-- A286265: Totient abundant numbers: numbers k such that A092693(k) > k.

Offset 1, canonical program `A286265.P4047765915956604991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3708 terms. -/
def A286265 (n : ℕ) : ℤ :=
  (A286265.P4047765915956604991.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3708 terms. -/
def A286265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286572.P16582161449152449290

`1/2*(2+(A053574(n+1)+A000203(n+1))²-A053574(n+1)-3*A000203(n+1))`
-/

namespace A286572.P16582161449152449290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A053574 (n + 1) + A000203 (n + 1)) ^ 2 - A053574 (n + 1) - 3 * A000203 (n + 1) : ℚ)

end

end A286572.P16582161449152449290

noncomputable section

/-- A286572: Compound filter (2-adic valuation of phi(n) & sigma(n)): a(n) = P(A053574(n), A000203(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286572.P16582161449152449290`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053574, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286572 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286572.P16582161449152449290.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053574, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286572.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A288931.P14639471004149022968

`eq[1, A288929(n+1)]+1`
-/

namespace A288931.P14639471004149022968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288931.P14639471004149022968

noncomputable section

/-- A288931: Positions of 1 in A288929; complement of A288930.

Offset 1, canonical program `A288931.P14639471004149022968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6662 terms. -/
def A288931 (n : ℕ) : ℤ :=
  (A288931.P14639471004149022968.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6662 terms. -/
def A288931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291711.P15975325620196948492

`A007953(A381579(n+1))`
-/

namespace A291711.P15975325620196948492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A381579 (n + 1)).toNat

end

end A291711.P15975325620196948492

noncomputable section

/-- A291711: The minimum number of coins needed to pay for n units in the currency system of values 1, 3, 8, 21, 55, 144, ..., Fibonacci(2k), ...

Offset 1, canonical program `A291711.P15975325620196948492`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A381579, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A291711 (n : ℕ) : ℤ :=
  A291711.P15975325620196948492.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A381579, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A291711.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294063.P13359154590265481169

`A294061(2*(n+1))`
-/

namespace A294063.P13359154590265481169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294061 (2 * (n + 1))

end

end A294063.P13359154590265481169

noncomputable section

/-- A294063: Sum of the differences of the larger and smaller parts in the partitions of 2n into two parts with the larger part squarefree.

Offset 1, canonical program `A294063.P13359154590265481169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A294063 (n : ℕ) : ℤ :=
  A294063.P13359154590265481169.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A294063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295307.P10274143985494883344

`eq[1, A295303(n+1)]+1`
-/

namespace A295307.P10274143985494883344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295303 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A295307.P10274143985494883344

noncomputable section

/-- A295307: Numbers k such that k > phi(sigma(k)), where phi = A000010 and sigma = A000203.

Offset 1, canonical program `A295307.P10274143985494883344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295307 (n : ℕ) : ℤ :=
  (A295307.P10274143985494883344.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295308.P2202808230107505075

`dr(and(10, A295303(n+1)))`
-/

namespace A295308.P2202808230107505075
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.land 10 (A295303 (n + 1)))

end

end A295308.P2202808230107505075

noncomputable section

/-- A295308: Characteristic function for A066694: a(n) = 1 if n < phi(sigma(n)), 0 otherwise.

Offset 1, canonical program `A295308.P2202808230107505075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295308 (n : ℕ) : ℤ :=
  (A295308.P2202808230107505075.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295311.P16426649915299872850

`(n+1)/A295310(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295311.P16426649915299872850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A295310 (n + 1) : ℚ)

end

end A295311.P16426649915299872850

noncomputable section

/-- A295311: a(n) = n / A295310(n) = n / gcd(n, phi(sigma(n))).

Offset 1, canonical program `A295311.P16426649915299872850`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295310, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295311 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A295311.P16426649915299872850.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295310, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295311.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295312.P2048515004002335457

`A062401(n+1)/A295310(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295312.P2048515004002335457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062401 (n + 1) : ℚ) / (A295310 (n + 1) : ℚ)

end

end A295312.P2048515004002335457

noncomputable section

/-- A295312: a(n) = A062401(n) / A295310(n) = phi(sigma(n)) / gcd(n, phi(sigma(n))).

Offset 1, canonical program `A295312.P2048515004002335457`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062401, A295310, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A295312 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A295312.P2048515004002335457.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062401, A295310, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A295312.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A296213.P8375901246265267104

`char[A063532(n+1)-1]`
-/

namespace A296213.P8375901246265267104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063532 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A296213.P8375901246265267104

noncomputable section

/-- A296213: a(n) = 1 if both 1+phi(k) and 1+sigma(k) are squares, 0 otherwise.

Offset 1, canonical program `A296213.P8375901246265267104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296213 (n : ℕ) : ℤ :=
  (A296213.P8375901246265267104.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297116.P10389749861646648007

`A297115(2*n+1)`
-/

namespace A297116.P10389749861646648007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297115 (2 * n + 1)

end

end A297116.P10389749861646648007

noncomputable section

/-- A297116: Odd bisection of A297115, Möbius transform of A000120 (binary weight of n).

Offset 1, canonical program `A297116.P10389749861646648007`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A297115, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A297116 (n : ℕ) : ℤ :=
  A297116.P10389749861646648007.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A297115, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A297116.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A300914.P11875812938548948969

`record[A046640(n+1)-1]`
-/

namespace A300914.P11875812938548948969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046640 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300914.P11875812938548948969

noncomputable section

/-- A300914: Records in A045763.

Offset 1, canonical program `A300914.P11875812938548948969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 310 terms. -/
def A300914 (n : ℕ) : ℤ :=
  A300914.P11875812938548948969.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 310 terms. -/
def A300914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303973.P17946534861844191776

`∑{d}[n+1, A053191(#)*A303385((n+1)/#)]`
-/

namespace A303973.P17946534861844191776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053191 d * A303385 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A303973.P17946534861844191776

noncomputable section

/-- A303973: Total volume of all rectangular prisms with dimensions (p,p,q) such that n = p + q, p divides q and p < q.

Offset 1, canonical program `A303973.P17946534861844191776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303973 (n : ℕ) : ℤ :=
  A303973.P17946534861844191776.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306528.P17599500303172333272

`eq[A109395(n+1), A332881(n+1)]+1`
-/

namespace A306528.P17599500303172333272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332881 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A306528.P17599500303172333272

noncomputable section

/-- A306528: Numbers k such that gcd(k, phi(k)) = gcd(k, psi(k)).

Offset 1, canonical program `A306528.P17599500303172333272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306528 (n : ℕ) : ℤ :=
  (A306528.P17599500303172333272.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316345.P14622171126567751218

`1-A151666(A246159(n))`
-/

namespace A316345.P14622171126567751218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A151666 (A246159 n).toNat

end

end A316345.P14622171126567751218

noncomputable section

/-- A316345: An example of a word that is uniform morphic and recurrent, but neither pure morphic nor primitive morphic.

Offset 0, canonical program `A316345.P14622171126567751218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A316345 (n : ℕ) : ℤ :=
  A316345.P14622171126567751218.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A316345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318445.P14423617105751206309

`A211779(n+1)+A318447(n+1)`
-/

namespace A318445.P14423617105751206309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211779 (n + 1) + A318447 (n + 1)

end

end A318445.P14423617105751206309

noncomputable section

/-- A318445: a(n) = Sum_{d|n, d

Offset 1, canonical program `A318445.P14423617105751206309`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211779, A318447, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318445 (n : ℕ) : ℤ :=
  A318445.P14423617105751206309.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211779, A318447, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318445.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318491.P1337820018592044348

`lcm(n+1, A060640(n+1))/(n+1)`
-/

namespace A318491.P1337820018592044348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A060640 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A318491.P1337820018592044348

noncomputable section

/-- A318491: a(n) is the numerator of Sum_{d|n} Sum_{j|d} 1/j.

Offset 1, canonical program `A318491.P1337820018592044348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318491 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318491.P1337820018592044348.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318492.P15145094631320190754

`(n+1)/gcd(n+1, A060640(n+1))`
-/

namespace A318492.P15145094631320190754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A060640 (n + 1)) : ℚ)

end

end A318492.P15145094631320190754

noncomputable section

/-- A318492: a(n) is the denominator of Sum_{d|n} Sum_{j|d} 1/j.

Offset 1, canonical program `A318492.P15145094631320190754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318492 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318492.P15145094631320190754.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322432.P15750206088003482334

`eq[0, A121361(n)]`
-/

namespace A322432.P15750206088003482334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121361 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322432.P15750206088003482334

noncomputable section

/-- A322432: Numbers k such that the coefficient of x^k in the expansion of Product_{j>=1} (1-x^j)^14 is zero.

Offset 1, canonical program `A322432.P15750206088003482334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4350 terms. -/
def A322432 (n : ℕ) : ℤ :=
  (A322432.P15750206088003482334.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4350 terms. -/
def A322432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324182.P8996620141129556705

`A083254(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324182.P8996620141129556705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (A163511 n).toNat

end

end A324182.P8996620141129556705

noncomputable section

/-- A324182: a(n) = A083254(A163511(n)), where A083254(n) = 2*phi(n) - n, the Möbius transform of the deficiency of n.

Offset 0, canonical program `A324182.P8996620141129556705`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083254, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324182 (n : ℕ) : ℤ :=
  A324182.P8996620141129556705.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083254, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324182.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328103.P14408953863942436734

`xor(A110240(n), A267357(n))`
-/

namespace A328103.P14408953863942436734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A110240 n) (A267357 n)

end

end A328103.P14408953863942436734

noncomputable section

/-- A328103: Bitwise XOR of trajectories of rule 30 and rule 124, when both are started from a lone 1 cell: a(n) = A110240(n) XOR A267357(n).

Offset 0, canonical program `A328103.P14408953863942436734`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110240, A267357, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328103 (n : ℕ) : ℤ :=
  A328103.P14408953863942436734.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110240, A267357, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328103.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A329376.P15315639946828072060

`gcd(A010848(n+1), A360539(n+1))`
-/

namespace A329376.P15315639946828072060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010848 (n + 1)) (A360539 (n + 1))

end

end A329376.P15315639946828072060

noncomputable section

/-- A329376: Multiplicative with a(p^e) = p when e = 2, otherwise a(p^e) = 1.

Offset 1, canonical program `A329376.P15315639946828072060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329376 (n : ℕ) : ℤ :=
  (A329376.P15315639946828072060.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330393.P4639006219673885269

`A003602(n+1)+A007814(n+1)`
-/

namespace A330393.P4639006219673885269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1) + A007814 (n + 1)

end

end A330393.P4639006219673885269

noncomputable section

/-- A330393: A 2-regular sequence whose reciprocal is not 2-regular.

Offset 0, canonical program `A330393.P4639006219673885269`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330393 (n : ℕ) : ℤ :=
  A330393.P4639006219673885269.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330393.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331176.P12674402394166952486

`n+1-A109395(n+1)`
-/

namespace A331176.P12674402394166952486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A109395 (n + 1)

end

end A331176.P12674402394166952486

noncomputable section

/-- A331176: a(n) = n - n/gcd(n, phi(n)), where phi is Euler totient function.

Offset 1, canonical program `A331176.P12674402394166952486`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A109395, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331176 (n : ℕ) : ℤ :=
  A331176.P12674402394166952486.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A109395, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331176.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331893.P3755749678923990802

`∩[A331891(n+1), A331892(n+1)]`
-/

namespace A331893.P3755749678923990802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331893.P3755749678923990802

noncomputable section

/-- A331893: Positive numbers k such that both k and -k are a palindromes in negabinary representation.

Offset 1, canonical program `A331893.P3755749678923990802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 930 terms. -/
def A331893 (n : ℕ) : ℤ :=
  (A331893.P3755749678923990802.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 930 terms. -/
def A331893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331894.P10099918075872049775

`∩[A180204(n+1), A331891(n+1)]`
-/

namespace A331894.P10099918075872049775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331894.P10099918075872049775

noncomputable section

/-- A331894: Positive numbers such that both their binary and negabinary representations are palindromic.

Offset 1, canonical program `A331894.P10099918075872049775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 270 terms. -/
def A331894 (n : ℕ) : ℤ :=
  (A331894.P10099918075872049775.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 270 terms. -/
def A331894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333293.P15015957038887528182

`(A319087(n+1)+A319087(n+2))/2`
-/

namespace A333293.P15015957038887528182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319087 (n + 1) + A319087 (n + 2) : ℚ) / 2

end

end A333293.P15015957038887528182

noncomputable section

/-- A333293: a(n) = Sum_{k=1..n-1} k^2*phi(k) + n^2*phi(n)/2, where phi = A000010.

Offset 2, canonical program `A333293.P15015957038887528182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A333293 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A333293.P15015957038887528182.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A333293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336567.P8607660645956000214

`A335341(n+1)-A003557(n+1)`
-/

namespace A336567.P8607660645956000214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335341 (n + 1) - A003557 (n + 1)

end

end A336567.P8607660645956000214

noncomputable section

/-- A336567: Sum of proper divisors of {n divided by its largest squarefree divisor}.

Offset 1, canonical program `A336567.P8607660645956000214`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A335341, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336567 (n : ℕ) : ℤ :=
  A336567.P8607660645956000214.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A335341, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336567.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338245.P9307757376313236030

`A117966(record[A330740(n)])`
-/

namespace A338245.P9307757376313236030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330740 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338245.P9307757376313236030

noncomputable section

/-- A338245: Nonnegative values in A117966, in order of appearance.

Offset 0, canonical program `A338245.P9307757376313236030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9842 terms. -/
def A338245 (n : ℕ) : ℤ :=
  A338245.P9307757376313236030.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9842 terms. -/
def A338245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338453.P14158950893179917223

`∩[A338452(n+1)-1, A338452(n+1)]`
-/

namespace A338453.P14158950893179917223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338452 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338452 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338453.P14158950893179917223

noncomputable section

/-- A338453: Starts of runs of 3 consecutive numbers with the same total binary weight of their divisors (A093653).

Offset 1, canonical program `A338453.P14158950893179917223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A338453 (n : ℕ) : ℤ :=
  (A338453.P14158950893179917223.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A338453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338514.P16262333784085285906

`∩[A093705(n+1)-1, A093705(n+1)]`
-/

namespace A338514.P16262333784085285906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093705 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093705 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338514.P16262333784085285906

noncomputable section

/-- A338514: Numbers k such that k and k+1 are both divisible by the total binary weight of their divisors (A093653).

Offset 1, canonical program `A338514.P16262333784085285906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A338514 (n : ℕ) : ℤ :=
  (A338514.P16262333784085285906.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A338514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340196.P13204647791419670441

`n+1-A340195(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340196.P13204647791419670441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A340195 (n + 1)

end

end A340196.P13204647791419670441

noncomputable section

/-- A340196: a(n) = n - A340195(n).

Offset 1, canonical program `A340196.P13204647791419670441`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A340195, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340196 (n : ℕ) : ℤ :=
  A340196.P13204647791419670441.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A340195, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340196.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341636.P2295451022923596252

`∑{d}[n+1, #*A333645((n+1)/#)]`
-/

namespace A341636.P2295451022923596252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A333645 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341636.P2295451022923596252

noncomputable section

/-- A341636: a(n) = Sum_{d|n} phi(d) * tau(d) * tau(n/d).

Offset 1, canonical program `A341636.P2295451022923596252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341636 (n : ℕ) : ℤ :=
  A341636.P2295451022923596252.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344875.P1341474813427060519

`2*(n+1)-A323410(2*(n+1))`
-/

namespace A344875.P1341474813427060519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A323410 (2 * (n + 1))

end

end A344875.P1341474813427060519

noncomputable section

/-- A344875: Multiplicative with a(2^e) = 2^(1+e) - 1, and a(p^e) = p^e - 1 for odd primes p.

Offset 1, canonical program `A344875.P1341474813427060519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344875 (n : ℕ) : ℤ :=
  A344875.P1341474813427060519.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345039.P8520321823126508405

`A057860(n+1)%A008619(A016035(n+1))`
-/

namespace A345039.P8520321823126508405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057860 (n + 1)) (A008619 (A016035 (n + 1)).toNat)

end

end A345039.P8520321823126508405

noncomputable section

/-- A345039: Number of partitions of n into two composite parts that share a nontrivial divisor.

Offset 1, canonical program `A345039.P8520321823126508405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345039 (n : ℕ) : ℤ :=
  A345039.P8520321823126508405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345938.P13711634937950283158

`A047994(n+1)/A345937(n+1)`
-/

namespace A345938.P13711634937950283158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047994 (n + 1) : ℚ) / (A345937 (n + 1) : ℚ)

end

end A345938.P13711634937950283158

noncomputable section

/-- A345938: a(n) = uphi(n) / gcd(n-1, uphi(n)), where uphi is unitary totient (or unitary phi) function, A047994.

Offset 1, canonical program `A345938.P13711634937950283158`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A345937, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345938 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345938.P13711634937950283158.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A345937, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345938.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345939.P16885342451554269271

`n/A345937(n+1)`
-/

namespace A345939.P16885342451554269271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A345937 (n + 1) : ℚ)

end

end A345939.P16885342451554269271

noncomputable section

/-- A345939: a(n) = (n-1) / gcd(n-1, uphi(n)), where uphi is unitary totient (or unitary phi) function, A047994.

Offset 1, canonical program `A345939.P16885342451554269271`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A345937, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345939 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345939.P16885342451554269271.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A345937, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345939.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349137.P16019714478779195286

`A000010(A003602(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349137.P16019714478779195286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A003602 (n + 1)).toNat

end

end A349137.P16019714478779195286

noncomputable section

/-- A349137: a(n) = phi(A003602(n)), where A003602 is Kimberling's paraphrase of the binary number system, and phi is Euler totient function.

Offset 1, canonical program `A349137.P16019714478779195286`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A003602, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349137 (n : ℕ) : ℤ :=
  A349137.P16019714478779195286.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A003602, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349137.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349370.P8267721681669448935

`∑{d}[n+1, A003602(#)*A003602((n+1)/#)]`
-/

namespace A349370.P8267721681669448935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003602 d * A003602 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349370.P8267721681669448935

noncomputable section

/-- A349370: Dirichlet convolution of Kimberling's paraphrase, A003602, with itself.

Offset 1, canonical program `A349370.P8267721681669448935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349370 (n : ℕ) : ℤ :=
  A349370.P8267721681669448935.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350343.P17281856427666000810

`A350342(n+1)²`
-/

namespace A350343.P17281856427666000810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350342 (n + 1) ^ 2

end

end A350343.P17281856427666000810

noncomputable section

/-- A350343: Square numbers k that are abelian orders.

Offset 1, canonical program `A350343.P17281856427666000810`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350342, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350343 (n : ℕ) : ℤ :=
  A350343.P17281856427666000810.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350342, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350343.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350344.P2038863926175919238

`filter[A050384(n+1), A355816(#)]`
-/

namespace A350344.P2038863926175919238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A350344.P2038863926175919238

noncomputable section

/-- A350344: Composite k such that k^2 is an abelian order.

Offset 1, canonical program `A350344.P2038863926175919238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7069 terms. -/
def A350344 (n : ℕ) : ℤ :=
  A350344.P2038863926175919238.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7069 terms. -/
def A350344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351114.P13024542866936842174

`A063524(A289412(n+1))`
-/

namespace A351114.P13024542866936842174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A289412 (n + 1)).toNat

end

end A351114.P13024542866936842174

noncomputable section

/-- A351114: Characteristic function of balanced numbers: a(n) = 1 if phi(n) divides sigma(n), otherwise 0.

Offset 1, canonical program `A351114.P13024542866936842174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351114 (n : ℕ) : ℤ :=
  A351114.P13024542866936842174.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351247.P9442226858346152668

`∑{d}[n+1, A239442(#)*A351246((n+1)/#)]`
-/

namespace A351247.P9442226858346152668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A239442 d * A351246 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351247.P9442226858346152668

noncomputable section

/-- A351247: a(n) = n^7 * Sum_{p|n, p prime} 1/p^7.

Offset 1, canonical program `A351247.P9442226858346152668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351247 (n : ℕ) : ℤ :=
  A351247.P9442226858346152668.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351460.P8243129244187876021

`A003602(n+1)+A001065(A008578(3*n+1))`
-/

namespace A351460.P8243129244187876021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1) + A001065 (A008578 (3 * n + 1)).toNat

end

end A351460.P8243129244187876021

noncomputable section

/-- A351460: Lexicographically earliest infinite sequence such that a(i) = a(j) => A006530(i) = A006530(j), A206787(i) = A206787(j) and A336651(i) = A336651(j) for all i, j >= 1.

Offset 1, canonical program `A351460.P8243129244187876021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 410 terms. -/
def A351460 (n : ℕ) : ℤ :=
  A351460.P8243129244187876021.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 410 terms. -/
def A351460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353498.P9279087021698104160

`and(A019427(n)²²², A318829(n+1))`
-/

namespace A353498.P9279087021698104160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((A019427 n ^ 2) ^ 2) ^ 2) (A318829 (n + 1))

end

end A353498.P9279087021698104160

noncomputable section

/-- A353498: a(n) = 1 if n > 1 and the 2-adic valuation of phi(n) does not exceed the 2-adic valuation of n-1, otherwise 0.

Offset 1, canonical program `A353498.P9279087021698104160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353498 (n : ℕ) : ℤ :=
  A353498.P9279087021698104160.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353637.P5440180522401724762

`∏{d}[A353636(n+1), A001221(#)]`
-/

namespace A353637.P5440180522401724762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A353637.P5440180522401724762

noncomputable section

/-- A353637: a(n) = 1 if phi(sigma(n)) is equal to phi(n), otherwise 0.

Offset 1, canonical program `A353637.P5440180522401724762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353637 (n : ℕ) : ℤ :=
  A353637.P5440180522401724762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353644.P12499979160227092597

`A000010(n+1)/A353643(n+1)`
-/

namespace A353644.P12499979160227092597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A353643 (n + 1) : ℚ)

end

end A353644.P12499979160227092597

noncomputable section

/-- A353644: a(n) = phi(n) / gcd(phi(n), phi(sigma(n))).

Offset 1, canonical program `A353644.P12499979160227092597`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A353643, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353644 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A353644.P12499979160227092597.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A353643, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353644.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353646.P14527440753907412208

`A062401(n+1)/A353643(n+1)`
-/

namespace A353646.P14527440753907412208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062401 (n + 1) : ℚ) / (A353643 (n + 1) : ℚ)

end

end A353646.P14527440753907412208

noncomputable section

/-- A353646: a(n) = phi(sigma(n)) / gcd(phi(n), phi(sigma(n))).

Offset 1, canonical program `A353646.P14527440753907412208`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062401, A353643, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353646 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A353646.P14527440753907412208.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062401, A353643, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353646.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353681.P403205491971656766

`ceil(A353636(n+1)/A008000(n))`
-/

namespace A353681.P403205491971656766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A353636 (n + 1) : ℚ) / (A008000 n : ℚ)⌉

end

end A353681.P403205491971656766

noncomputable section

/-- A353681: a(n) = 1 if phi(sigma(n)) > phi(n), otherwise 0.

Offset 1, canonical program `A353681.P403205491971656766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353681 (n : ℕ) : ℤ :=
  A353681.P403205491971656766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356473.P6255297414268024719

`(n+1)/gcd(n+1, A209295(n+1))`
-/

namespace A356473.P6255297414268024719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A209295 (n + 1)) : ℚ)

end

end A356473.P6255297414268024719

noncomputable section

/-- A356473: Denominator of the average of gcd(i,n) for i = 1..n.

Offset 1, canonical program `A356473.P6255297414268024719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356473 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A356473.P6255297414268024719.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358654.P4638968349516908894

`A003602(eq[A001511(n+1), A023416(n)]+1)-1`
-/

namespace A358654.P4638968349516908894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) - 1

end

end A358654.P4638968349516908894

noncomputable section

/-- A358654: a(n) = A025480(A353654(n+1) - 1).

Offset 0, canonical program `A358654.P4638968349516908894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 403 terms. -/
def A358654 (n : ℕ) : ℤ :=
  A358654.P4638968349516908894.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 403 terms. -/
def A358654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359164.P14566603840914614086

`A003602(n+1)-A349136(n+1)`
-/

namespace A359164.P14566603840914614086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1) - A349136 (n + 1)

end

end A359164.P14566603840914614086

noncomputable section

/-- A359164: Difference between Kimberling's paraphrase, A003602, and its Möbius transform.

Offset 1, canonical program `A359164.P14566603840914614086`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, A349136, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359164 (n : ℕ) : ℤ :=
  A359164.P14566603840914614086.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, A349136, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359164.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359464.P323897448991584528

`ceil(A064179(n+1)/2)`
-/

namespace A359464.P323897448991584528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A064179 (n + 1) : ℚ) / 2⌉

end

end A359464.P323897448991584528

noncomputable section

/-- A359464: a(n) = 1 if the total number of 1-bits in the exponents of prime factorization n is even, otherwise 0.

Offset 1, canonical program `A359464.P323897448991584528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359464 (n : ℕ) : ℤ :=
  A359464.P323897448991584528.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362160.P8719433231678747217

`A003188(A281589(n+1)-1)`
-/

namespace A362160.P8719433231678747217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A281589 (n + 1) - 1).toNat

end

end A362160.P8719433231678747217

noncomputable section

/-- A362160: Irregular triangle read by rows: The n-th row contains 2^n integers corresponding to the words of the n-bit Gray code with the most significant bits changing fastest.

Offset 0, canonical program `A362160.P8719433231678747217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362160 (n : ℕ) : ℤ :=
  A362160.P8719433231678747217.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365487.P17055502377782531562

`A000005(A008834(n+1))`
-/

namespace A365487.P17055502377782531562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008834 (n + 1)).toNat

end

end A365487.P17055502377782531562

noncomputable section

/-- A365487: The number of divisors of the largest cube dividing n.

Offset 1, canonical program `A365487.P17055502377782531562`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008834, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365487 (n : ℕ) : ℤ :=
  A365487.P17055502377782531562.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008834, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365487.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365498.P11326829355514865455

`A286324(n+1)/A368172(n+1)`
-/

namespace A365498.P11326829355514865455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286324 (n + 1) : ℚ) / (A368172 (n + 1) : ℚ)

end

end A365498.P11326829355514865455

noncomputable section

/-- A365498: Dirichlet g.f.: zeta(s) * Product_{p prime} (1 + 1/p^s - 1/p^(3*s)).

Offset 1, canonical program `A365498.P11326829355514865455`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368172, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365498 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A365498.P11326829355514865455.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368172, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365498.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366893.P9479425675284615300

`A003602(A000007(n²)+n)`
-/

namespace A366893.P9479425675284615300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A000007 (n ^ 2) + (n : ℤ)).toNat

end

end A366893.P9479425675284615300

noncomputable section

/-- A366893: Lexicographically earliest infinite sequence such that a(i) = a(j) => A366892(i) = A366892(j) for all i, j >= 0.

Offset 0, canonical program `A366893.P9479425675284615300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A366893 (n : ℕ) : ℤ :=
  A366893.P9479425675284615300.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A366893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368105.P6887596357651866009

`∑{d}[n+1, A227291(#)*A325837((n+1)/#)]`
-/

namespace A368105.P6887596357651866009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A227291 d * A325837 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368105.P6887596357651866009

noncomputable section

/-- A368105: The number of bi-unitary divisors of n that are powerful (A001694).

Offset 1, canonical program `A368105.P6887596357651866009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368105 (n : ℕ) : ℤ :=
  A368105.P6887596357651866009.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369667.P13821816702914872275

`char[A369668(n+1)]`
-/

namespace A369667.P13821816702914872275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369668 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A369667.P13821816702914872275

noncomputable section

/-- A369667: a(n) = 1 if n' == 3 (mod 4) and n has an even number of prime factors with multiplicity, otherwise 0. Here n' stands for the arithmetic derivative of n, A003415(n).

Offset 0, canonical program `A369667.P13821816702914872275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369667 (n : ℕ) : ℤ :=
  (A369667.P13821816702914872275.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372059.P3781003696721754099

`filter[A117285(n+1), A355937(#)]`
-/

namespace A372059.P3781003696721754099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A372059.P3781003696721754099

noncomputable section

/-- A372059: Indices of record high-points in A280741.

Offset 1, canonical program `A372059.P3781003696721754099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5177 terms. -/
def A372059 (n : ℕ) : ℤ :=
  A372059.P3781003696721754099.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5177 terms. -/
def A372059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372950.P9193589771118210262

`∑{d}[n+1, A068970(#)*A238533((n+1)/#)]`
-/

namespace A372950.P9193589771118210262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068970 d * A238533 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372950.P9193589771118210262

noncomputable section

/-- A372950: a(n) = Sum_{1 <= x_1, x_2 <= n} ( n/gcd(x_1, x_2, n) )^3.

Offset 1, canonical program `A372950.P9193589771118210262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372950 (n : ℕ) : ℤ :=
  A372950.P9193589771118210262.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373184.P13347508952625175779

`A168570(n+1)+A327625(n+1)+A284413(n+1)`
-/

namespace A373184.P13347508952625175779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168570 (n + 1) + (A327625 (n + 1) + A284413 (n + 1))

end

end A373184.P13347508952625175779

noncomputable section

/-- A373184: G.f. A(x) satisfies A(x) = 1/(1 - x)^2 - 1 + A(x^3).

Offset 1, canonical program `A373184.P13347508952625175779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373184 (n : ℕ) : ℤ :=
  A373184.P13347508952625175779.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373186.P9548359750285709063

`∑{d}[n+1, A057661(#)*A195459((n+1)/#)]`
-/

namespace A373186.P9548359750285709063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057661 d * A195459 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373186.P9548359750285709063

noncomputable section

/-- A373186: Expansion of Sum_{k>=0} x^(3^k) / (1 - x^(3^k))^3.

Offset 1, canonical program `A373186.P9548359750285709063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1835 terms. -/
def A373186 (n : ℕ) : ℤ :=
  A373186.P9548359750285709063.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1835 terms. -/
def A373186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378684.P885690523636202921

`A378200(A378200(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378684.P885690523636202921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378200 (A378200 (n + 1)).toNat

end

end A378684.P885690523636202921

noncomputable section

/-- A378684: a(n) = A378200(A378200(n)).

Offset 1, canonical program `A378684.P885690523636202921`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378200, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378684 (n : ℕ) : ℤ :=
  A378684.P885690523636202921.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378200, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378684.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378762.P3404448250858099609

`A378200(A378200(A378200(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378762.P3404448250858099609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378200 (A378200 (A378200 (n + 1)).toNat).toNat

end

end A378762.P3404448250858099609

noncomputable section

/-- A378762: a(n) = A378200(A378200(A378200(n))).

Offset 1, canonical program `A378762.P3404448250858099609`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378200, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378762 (n : ℕ) : ℤ :=
  A378762.P3404448250858099609.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378200, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378762.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380164.P6797350675087028144

`A000010(A350388(n+1))`
-/

namespace A380164.P6797350675087028144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A350388 (n + 1)).toNat

end

end A380164.P6797350675087028144

noncomputable section

/-- A380164: a(n) is the value of the Euler totient function when applied to the largest unitary divisor of n that is a square.

Offset 1, canonical program `A380164.P6797350675087028144`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A350388, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380164 (n : ℕ) : ℤ :=
  A380164.P6797350675087028144.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A350388, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380164.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382129.P11262417196826873827

`A000040(A003602(n+1))`
-/

namespace A382129.P11262417196826873827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A003602 (n + 1)).toNat

end

end A382129.P11262417196826873827

noncomputable section

/-- A382129: Fractalization of the prime numbers.

Offset 1, canonical program `A382129.P11262417196826873827`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382129 (n : ℕ) : ℤ :=
  A382129.P11262417196826873827.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382129.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385138.P14446959269686956335

`A064987(n+1)/A385137(n+1)`
-/

namespace A385138.P14446959269686956335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (A385137 (n + 1) : ℚ)

end

end A385138.P14446959269686956335

noncomputable section

/-- A385138: The sum of divisors d of n such that n/d is a 5-rough number (A007310).

Offset 1, canonical program `A385138.P14446959269686956335`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A385137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385138 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A385138.P14446959269686956335.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A385137, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385138.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A387319.P17597783198726216255

`A343311(n+1)-A063524(n)`
-/

namespace A387319.P17597783198726216255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1) - A063524 n

end

end A387319.P17597783198726216255

noncomputable section

/-- A387319: Numbers k for which modulo 3 and modulo another multiple of 3 are coincident among the fractions (2*k mod m)/m for 1 <= m <= k.

Offset 1, canonical program `A387319.P17597783198726216255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387319 (n : ℕ) : ℤ :=
  A387319.P17597783198726216255.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387351.P5126227165797472721

`A387350(n+1)+A005652(n+1)`
-/

namespace A387351.P5126227165797472721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387350 (n + 1) + A005652 (n + 1)

end

end A387351.P5126227165797472721

noncomputable section

/-- A387351: Positions of -1's in A387348.

Offset 1, canonical program `A387351.P5126227165797472721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387351 (n : ℕ) : ℤ :=
  A387351.P5126227165797472721.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389481.P15172081649911050968

`p?[A080541(p?[2*n+1])]`
-/

namespace A389481.P15172081649911050968
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080541 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A389481.P15172081649911050968

noncomputable section

/-- A389481: Primes that remain prime when their binary digits are rotated once to the right.

Offset 1, canonical program `A389481.P15172081649911050968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A389481 (n : ℕ) : ℤ :=
  A389481.P15172081649911050968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A389481.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390128.P3065140226531891146

`filter[A375072(n+1), A389905(#)]`
-/

namespace A390128.P3065140226531891146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A390128.P3065140226531891146

noncomputable section

/-- A390128: Biquadratefree numbers that are neither cubefree nor squareful.

Offset 1, canonical program `A390128.P3065140226531891146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5907 terms. -/
def A390128 (n : ℕ) : ℤ :=
  A390128.P3065140226531891146.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5907 terms. -/
def A390128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391319.P17833975388560488226

`filter[A362148(n+1), A389905(#)]`
-/

namespace A391319.P17833975388560488226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A391319.P17833975388560488226

noncomputable section

/-- A391319: Numbers that are neither cubefree nor powerful.

Offset 1, canonical program `A391319.P17833975388560488226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9779 terms. -/
def A391319 (n : ℕ) : ℤ :=
  A391319.P17833975388560488226.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9779 terms. -/
def A391319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394380.P12740966740896101419

`A264810(2^(n+1)-1)`
-/

namespace A394380.P12740966740896101419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264810 (2 ^ (n + 1) - 1)

end

end A394380.P12740966740896101419

noncomputable section

/-- A394380: Number of totients below 2^n.

Offset 1, canonical program `A394380.P12740966740896101419`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A264810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394380 (n : ℕ) : ℤ :=
  A394380.P12740966740896101419.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A264810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394380.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A394381.P15980332945039088340

`A264810(A000149(n+1))`
-/

namespace A394381.P15980332945039088340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264810 (A000149 (n + 1)).toNat

end

end A394381.P15980332945039088340

noncomputable section

/-- A394381: Number of totients below exp(n).

Offset 1, canonical program `A394381.P15980332945039088340`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A264810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394381 (n : ℕ) : ℤ :=
  A394381.P15980332945039088340.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A264810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394381.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A273711.P5353043427219471615

`A001221(n+1)*A007875(n+1)`
-/

namespace A273711.P5353043427219471615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) * A007875 (n + 1)

end

end A273711.P5353043427219471615

noncomputable section

/-- A273711: The Hadamard product of omega(n) and A007875(n).

Offset 1, canonical program `A273711.P5353043427219471615`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A007875, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A273711 (n : ℕ) : ℤ :=
  A273711.P5353043427219471615.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A007875, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A273711.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277331.P10020327164330900423

`A253563(A003714(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277331.P10020327164330900423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253563 (A003714 n).toNat

end

end A277331.P10020327164330900423

noncomputable section

/-- A277331: a(n) = A253563(A003714(n)).

Offset 0, canonical program `A277331.P10020327164330900423`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, A253563, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A277331 (n : ℕ) : ℤ :=
  A277331.P10020327164330900423.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, A253563, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A277331.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277335.P13601565206693033398

`3*A003714(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277335.P13601565206693033398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003714 n

end

end A277335.P13601565206693033398

noncomputable section

/-- A277335: Fibbinary numbers multiplied by three: a(n) = 3*A003714(n); Numbers where all 1-bits occur in runs of even length.

Offset 0, canonical program `A277335.P13601565206693033398`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277335 (n : ℕ) : ℤ :=
  A277335.P13601565206693033398.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277335.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277455.P11217868120756742316

`A003415(A001006(n))`
-/

namespace A277455.P11217868120756742316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A001006 n).toNat

end

end A277455.P11217868120756742316

noncomputable section

/-- A277455: Arithmetic derivatives of the Motzkin numbers.

Offset 0, canonical program `A277455.P11217868120756742316`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277455 (n : ℕ) : ℤ :=
  A277455.P11217868120756742316.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277455.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A285096.P16169422435609313154

`∩[A061385(n+1), A069709(n+1)]`
-/

namespace A285096.P16169422435609313154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285096.P16169422435609313154

noncomputable section

/-- A285096: Primes with integer arithmetic mean of digits = 2 in base 10.

Offset 1, canonical program `A285096.P16169422435609313154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 571 terms. -/
def A285096 (n : ℕ) : ℤ :=
  (A285096.P16169422435609313154.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 571 terms. -/
def A285096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285225.P10692360427278529095

`p?[A061387(n+1)]`
-/

namespace A285225.P10692360427278529095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A285225.P10692360427278529095

noncomputable section

/-- A285225: Primes with integer arithmetic mean of digits = 4 in base 10.

Offset 1, canonical program `A285225.P10692360427278529095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 760 terms. -/
def A285225 (n : ℕ) : ℤ :=
  A285225.P10692360427278529095.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 760 terms. -/
def A285225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285226.P16444782336951835408

`p?[A061388(n+1)]`
-/

namespace A285226.P16444782336951835408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A285226.P16444782336951835408

noncomputable section

/-- A285226: Primes with integer arithmetic mean of digits = 5 in base 10.

Offset 1, canonical program `A285226.P16444782336951835408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 840 terms. -/
def A285226 (n : ℕ) : ℤ :=
  A285226.P16444782336951835408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 840 terms. -/
def A285226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292763.P17011171486369911549

`eq[1, A354032(n+1)]+1`
-/

namespace A292763.P17011171486369911549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354032 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A292763.P17011171486369911549

noncomputable section

/-- A292763: Numbers m such that sigma(m)+phi(m) == 2 mod 4.

Offset 1, canonical program `A292763.P17011171486369911549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A292763 (n : ℕ) : ℤ :=
  (A292763.P17011171486369911549.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A292763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294278.P17650262410649944853

`lt[A007875(n+1), A007875(A028310(n))]`
-/

namespace A294278.P17650262410649944853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294278.P17650262410649944853

noncomputable section

/-- A294278: Numbers k such that omega(k) > omega(k+1) (where omega(m) = A001221(m), the number of distinct primes dividing m).

Offset 1, canonical program `A294278.P17650262410649944853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3645 terms. -/
def A294278 (n : ℕ) : ℤ :=
  (A294278.P17650262410649944853.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3645 terms. -/
def A294278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294442.P13782676266892454172

`A093873(A092754(n+1))`
-/

namespace A294442.P13782676266892454172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093873 (A092754 (n + 1)).toNat

end

end A294442.P13782676266892454172

noncomputable section

/-- A294442: Kepler's tree of fractions, read across rows (the fraction i/j is represented as the pair i,j).

Offset 0, canonical program `A294442.P13782676266892454172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5905 terms. -/
def A294442 (n : ℕ) : ℤ :=
  A294442.P13782676266892454172.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5905 terms. -/
def A294442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297250.P2128841080923313740

`lt[A257075(A330740(n)), 0]`
-/

namespace A297250.P2128841080923313740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257075 (A330740 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A297250.P2128841080923313740

noncomputable section

/-- A297250: Numbers whose base-3 digits having equal up-variation and down-variation; see Comments.

Offset 1, canonical program `A297250.P2128841080923313740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A297250 (n : ℕ) : ℤ :=
  (A297250.P2128841080923313740.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A297250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300252.P5081431345107026110

`A003415(n+1)-A300251(n+1)`
-/

namespace A300252.P5081431345107026110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) - A300251 (n + 1)

end

end A300252.P5081431345107026110

noncomputable section

/-- A300252: Difference between arithmetic derivative (A003415) and its Möbius transform (A300251).

Offset 1, canonical program `A300252.P5081431345107026110`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A300251, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A300252 (n : ℕ) : ℤ :=
  A300252.P5081431345107026110.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A300251, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A300252.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A300253.P12261115453388229747

`gcd(A003415(n+1), A300251(n+1))`
-/

namespace A300253.P12261115453388229747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 (n + 1)) (A300251 (n + 1))

end

end A300253.P12261115453388229747

noncomputable section

/-- A300253: GCD of arithmetic derivative (A003415) and its Möbius transform (A300251).

Offset 1, canonical program `A300253.P12261115453388229747`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A300251, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A300253 (n : ℕ) : ℤ :=
  (A300253.P12261115453388229747.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A300251, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A300253.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A305876.P10182350532949549985

`A003714(2^n)`
-/

namespace A305876.P10182350532949549985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (2 ^ n)

end

end A305876.P10182350532949549985

noncomputable section

/-- A305876: a(n) = Fibbinary(2^n).

Offset 0, canonical program `A305876.P10182350532949549985`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305876 (n : ℕ) : ℤ :=
  A305876.P10182350532949549985.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305876.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A307342.P15063499458322460120

`eq[4, A318473(n+1)]+1`
-/

namespace A307342.P15063499458322460120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318473 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A307342.P15063499458322460120

noncomputable section

/-- A307342: Products of four primes, except fourth powers of primes.

Offset 1, canonical program `A307342.P15063499458322460120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9186 terms. -/
def A307342 (n : ℕ) : ℤ :=
  (A307342.P15063499458322460120.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9186 terms. -/
def A307342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308735.P3671418607265980863

`∩[A074173(n+1)-2, A074173(n+1)]`
-/

namespace A308735.P3671418607265980863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074173 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308735.P3671418607265980863

noncomputable section

/-- A308735: Numbers k such that k, k+2, k+4 are of the form p^2*q where p and q are distinct primes.

Offset 1, canonical program `A308735.P3671418607265980863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. -/
def A308735 (n : ℕ) : ℤ :=
  (A308735.P3671418607265980863.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. -/
def A308735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309076.P2241331786193624643

`A356327(A003714(n))`
-/

namespace A309076.P2241331786193624643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356327 (A003714 n).toNat

end

end A309076.P2241331786193624643

noncomputable section

/-- A309076: The Zeckendorf representation of n read as a NegaFibonacci representation.

Offset 0, canonical program `A309076.P2241331786193624643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. -/
def A309076 (n : ℕ) : ℤ :=
  A309076.P2241331786193624643.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. -/
def A309076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316561.P12406151038005718592

`record[∏{p}[A061387(n+2), #]]`
-/

namespace A316561.P12406151038005718592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061387 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316561.P12406151038005718592

noncomputable section

/-- A316561: Squarefree numbers whose arithmetic mean of digits is 4.

Offset 1, canonical program `A316561.P12406151038005718592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6779 terms. -/
def A316561 (n : ℕ) : ℤ :=
  (A316561.P12406151038005718592.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6779 terms. -/
def A316561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319677.P17823138448930020068

`(n+1)/A323409(n+1)`
-/

namespace A319677.P17823138448930020068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A323409 (n + 1) : ℚ)

end

end A319677.P17823138448930020068

noncomputable section

/-- A319677: Denominator of A047994(n)/n where A047994 is the unitary totient function.

Offset 1, canonical program `A319677.P17823138448930020068`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323409, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319677 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A319677.P17823138448930020068.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323409, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319677.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319683.P12610436916634477773

`A319684(n+1)-A003415(n+1)`
-/

namespace A319683.P12610436916634477773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319684 (n + 1) - A003415 (n + 1)

end

end A319683.P12610436916634477773

noncomputable section

/-- A319683: Sum of A003415(d) over the proper divisors d of n, where A003415 is arithmetic derivative.

Offset 1, canonical program `A319683.P12610436916634477773`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A319684, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319683 (n : ℕ) : ℤ :=
  A319683.P12610436916634477773.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A319684, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319683.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A320584.P6049506944665547150

`eq[1, A003415(A182324(n)-n)]`
-/

namespace A320584.P6049506944665547150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A182324 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320584.P6049506944665547150

noncomputable section

/-- A320584: Numbers whose first digit is prime.

Offset 1, canonical program `A320584.P6049506944665547150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4444 terms. -/
def A320584 (n : ℕ) : ℤ :=
  (A320584.P6049506944665547150.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4444 terms. -/
def A320584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327866.P12650850147369526583

`A010052(A003415(n))`
-/

namespace A327866.P12650850147369526583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A003415 n).toNat

end

end A327866.P12650850147369526583

noncomputable section

/-- A327866: a(n) = 1 if arithmetic derivative of n is square, 0 otherwise. Cf. A003415.

Offset 0, canonical program `A327866.P12650850147369526583`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A010052, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A327866 (n : ℕ) : ℤ :=
  A327866.P12650850147369526583.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A010052, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A327866.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328160.P15930249408114745958

`p?[2*A276305(n+1)-1]`
-/

namespace A328160.P15930249408114745958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276305 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A328160.P15930249408114745958

noncomputable section

/-- A328160: Terms k of A112998 such that k+2 is nonsquarefree.

Offset 1, canonical program `A328160.P15930249408114745958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A328160 (n : ℕ) : ℤ :=
  A328160.P15930249408114745958.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A328160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328310.P2472833898533372449

`A051903(A003415(n+2))-A051903(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328310.P2472833898533372449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A003415 (n + 2)).toNat - A051903 (n + 2)

end

end A328310.P2472833898533372449

noncomputable section

/-- A328310: a(n) = A051903(A003415(n)) - A051903(n).

Offset 2, canonical program `A328310.P2472833898533372449`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328310 (n : ℕ) : ℤ :=
  A328310.P2472833898533372449.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328310.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A329039.P4210899274647080376

`A003415(n+1)-A069359(n+1)`
-/

namespace A329039.P4210899274647080376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) - A069359 (n + 1)

end

end A329039.P4210899274647080376

noncomputable section

/-- A329039: If n = Product p_i^e_i, a(n) = n * Sum ((e_i - 1)/p_i).

Offset 1, canonical program `A329039.P4210899274647080376`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A069359, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A329039 (n : ℕ) : ℤ :=
  A329039.P4210899274647080376.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A069359, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A329039.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A329935.P4917152360086528643

`∩[A019506(n+1)-1, A019506(n+1)]`
-/

namespace A329935.P4917152360086528643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019506 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329935.P4917152360086528643

noncomputable section

/-- A329935: Numbers k such that k and k+1 are both hoax numbers (A019506).

Offset 1, canonical program `A329935.P4917152360086528643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 308 terms. -/
def A329935 (n : ℕ) : ℤ :=
  (A329935.P4917152360086528643.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 308 terms. -/
def A329935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331109.P2249905351014711055

`2^∑{e}[n+1, A112310(#)]`
-/

namespace A331109.P2249905351014711055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), A112310 (Nat.factorization (f1 n) p) : ℤ)

end

end A331109.P2249905351014711055

noncomputable section

/-- A331109: The number of dual-Zeckendorf-infinitary divisors of n = Product_{i} p(i)^r(i): divisors d = Product_{i} p(i)^s(i), such that the dual Zeckendorf expansion (A104326) of each s(i) contains only terms that are in the dual Zeckendorf expansion of r(i).

Offset 1, canonical program `A331109.P2249905351014711055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331109 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A331109.P2249905351014711055.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333618.P6178487430166416808

`∑{d}[n+1, A112310(#)]`
-/

namespace A333618.P6178487430166416808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A112310 d

end

end A333618.P6178487430166416808

noncomputable section

/-- A333618: a(n) is the total number of terms (1-digits) in the dual Zeckendorf representation of all divisors of n.

Offset 1, canonical program `A333618.P6178487430166416808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333618 (n : ℕ) : ℤ :=
  A333618.P6178487430166416808.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340070.P6497847320767913254

`gcd(A003415(n+1), A069359(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340070.P6497847320767913254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 (n + 1)) (A069359 (n + 1))

end

end A340070.P6497847320767913254

noncomputable section

/-- A340070: a(n) = gcd(A003415(n), A069359(n)).

Offset 1, canonical program `A340070.P6497847320767913254`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A069359, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340070 (n : ℕ) : ℤ :=
  (A340070.P6497847320767913254.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A069359, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340070.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341746.P1855135683892942832

`A341916(A053644(n+1)*A280995(n+1))`
-/

namespace A341746.P1855135683892942832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341916 (A053644 (n + 1) * A280995 (n + 1)).toNat

end

end A341746.P1855135683892942832

noncomputable section

/-- A341746: If the runs in the binary expansion of n are (r_1, ..., r_k), then the runs in the binary expansion of a(n) are (r_1 + ... + r_k, r_1, ..., r_{k-1}).

Offset 1, canonical program `A341746.P1855135683892942832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A341746 (n : ℕ) : ℤ :=
  A341746.P1855135683892942832.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A341746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341998.P3260792565066439335

`A003557(A003415(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341998.P3260792565066439335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A003415 (n + 2)).toNat

end

end A341998.P3260792565066439335

noncomputable section

/-- A341998: Arithmetic derivative of n divided by its largest squarefree divisor: a(n) = A003557(A003415(n)).

Offset 2, canonical program `A341998.P3260792565066439335`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341998 (n : ℕ) : ℤ :=
  A341998.P3260792565066439335.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341998.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342001.P4805983025243635594

`A003415(n+1)/A003557(n+1)`
-/

namespace A342001.P4805983025243635594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A342001.P4805983025243635594

noncomputable section

/-- A342001: Arithmetic derivative without its inherited divisor; the arithmetic derivative of n divided by A003557(n), which is a common divisor of both n and A003415(n).

Offset 1, canonical program `A342001.P4805983025243635594`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342001 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A342001.P4805983025243635594.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342001.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342003.P12697586407558100656

`A051903(A003415(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342003.P12697586407558100656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A003415 (n + 2)).toNat

end

end A342003.P12697586407558100656

noncomputable section

/-- A342003: Maximal exponent in the prime factorization of the arithmetic derivative of n: a(n) = A051903(A003415(n)).

Offset 2, canonical program `A342003.P12697586407558100656`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342003 (n : ℕ) : ℤ :=
  A342003.P12697586407558100656.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342003.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342014.P7987334312565012006

`A003415(n+1)%(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342014.P7987334312565012006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 (n + 1)) (n + 1 : ℤ)

end

end A342014.P7987334312565012006

noncomputable section

/-- A342014: Arithmetic derivative of n, taken modulo n: a(n) = A003415(n) mod n.

Offset 1, canonical program `A342014.P7987334312565012006`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342014 (n : ℕ) : ℤ :=
  A342014.P7987334312565012006.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342014.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342413.P16306425456188570454

`gcd(A000010(n+1), A003415(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342413.P16306425456188570454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (A003415 (n + 1))

end

end A342413.P16306425456188570454

noncomputable section

/-- A342413: a(n) = gcd(phi(n), A003415(n)), where A003415(n) is the arithmetic derivative of n, and phi is Euler totient function.

Offset 1, canonical program `A342413.P16306425456188570454`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342413 (n : ℕ) : ℤ :=
  (A342413.P16306425456188570454.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342413.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342458.P90921969619416405

`gcd(A001615(n+1), A003415(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342458.P90921969619416405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001615 (n + 1)) (A003415 (n + 1))

end

end A342458.P90921969619416405

noncomputable section

/-- A342458: a(n) = gcd(A001615(n), A003415(n)), where A001615 is Dedekind psi, and A003415 is the arithmetic derivative of n.

Offset 1, canonical program `A342458.P90921969619416405`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342458 (n : ℕ) : ℤ :=
  (A342458.P90921969619416405.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342458.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342925.P15548023362340798578

`A003415(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342925.P15548023362340798578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000203 (n + 1)).toNat

end

end A342925.P15548023362340798578

noncomputable section

/-- A342925: a(n) = A003415(sigma(n)), where A003415 is the arithmetic derivative, and sigma is the sum of divisors of n.

Offset 1, canonical program `A342925.P15548023362340798578`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342925 (n : ℕ) : ℤ :=
  A342925.P15548023362340798578.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342925.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342926.P4470252803445258283

`A003415(A000203(n+1))-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342926.P4470252803445258283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000203 (n + 1)).toNat - (n + 1 : ℤ)

end

end A342926.P4470252803445258283

noncomputable section

/-- A342926: a(n) = A003415(sigma(n)) - n, where A003415 is the arithmetic derivative, and sigma is the sum of divisors of n.

Offset 1, canonical program `A342926.P4470252803445258283`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342926 (n : ℕ) : ℤ :=
  A342926.P4470252803445258283.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342926.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343223.P16005087766060085566

`gcd(A003415(n+1), A003415(A000203(n+1))-(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A343223.P16005087766060085566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 (n + 1)) (A003415 (A000203 (n + 1)).toNat - (n + 1 : ℤ))

end

end A343223.P16005087766060085566

noncomputable section

/-- A343223: a(n) = gcd(A003415(n), A003415(sigma(n))-n), where A003415 is the arithmetic derivative, and sigma is the sum of divisors of n.

Offset 1, canonical program `A343223.P16005087766060085566`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343223 (n : ℕ) : ℤ :=
  (A343223.P16005087766060085566.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343223.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343224.P18101851413978261599

`A000203(n+1)-A003415(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A343224.P18101851413978261599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A003415 (n + 1)

end

end A343224.P18101851413978261599

noncomputable section

/-- A343224: a(n) = sigma(n) - A003415(n), where A003415 is the arithmetic derivative, and sigma is the sum of divisors of n.

Offset 1, canonical program `A343224.P18101851413978261599`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343224 (n : ℕ) : ℤ :=
  A343224.P18101851413978261599.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343224.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343226.P5865503827985673324

`gcd(A000203(n+1), n+1+A003415(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A343226.P5865503827985673324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) ((n + 1 : ℤ) + A003415 (n + 1))

end

end A343226.P5865503827985673324

noncomputable section

/-- A343226: a(n) = gcd(sigma(n), n+A003415(n)), where A003415 is the arithmetic derivative, and sigma is the sum of divisors of n.

Offset 1, canonical program `A343226.P5865503827985673324`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343226 (n : ℕ) : ℤ :=
  (A343226.P5865503827985673324.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343226.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343228.P395779845011442952

`A289831(A060372(n))`
-/

namespace A343228.P395779845011442952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A060372 n).toNat

end

end A343228.P395779845011442952

noncomputable section

/-- A343228: A binary encoding of the digits "+1" in balanced ternary representation of n.

Offset 0, canonical program `A343228.P395779845011442952`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060372, A289831, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A343228 (n : ℕ) : ℤ :=
  A343228.P395779845011442952.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060372, A289831, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A343228.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344024.P3749631349074452751

`A003415(A001615(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344024.P3749631349074452751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A001615 (n + 1)).toNat

end

end A344024.P3749631349074452751

noncomputable section

/-- A344024: a(n) = A003415(A001615(n)).

Offset 1, canonical program `A344024.P3749631349074452751`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344024 (n : ℕ) : ℤ :=
  A344024.P3749631349074452751.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344024.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344178.P7382453285315687724

`A003415(n+1)-A051953(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344178.P7382453285315687724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) - A051953 (n + 1)

end

end A344178.P7382453285315687724

noncomputable section

/-- A344178: Difference between the arithmetic derivative of n and the cototient of n: a(n) = A003415(n) - A051953(n).

Offset 1, canonical program `A344178.P7382453285315687724`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344178 (n : ℕ) : ℤ :=
  A344178.P7382453285315687724.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344178.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345201.P2335743236257920929

`A022290(A057889(A003714(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345201.P2335743236257920929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A057889 (A003714 n).toNat).toNat

end

end A345201.P2335743236257920929

noncomputable section

/-- A345201: Bit-reverse the odd part of the Zeckendorf representation of n: a(n) = A022290(A057889(A003714(n))).

Offset 0, canonical program `A345201.P2335743236257920929`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, A022290, A057889, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345201 (n : ℕ) : ℤ :=
  A345201.P2335743236257920929.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, A022290, A057889, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345201.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347870.P16417163983135192984

`A003415(A000203(n+1))%2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347870.P16417163983135192984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 (A000203 (n + 1)).toNat) 2

end

end A347870.P16417163983135192984

noncomputable section

/-- A347870: a(n) = A003415(sigma(n)) mod 2, where A003415 is the arithmetic derivative, and sigma is the sum of divisors of n.

Offset 1, canonical program `A347870.P16417163983135192984`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347870 (n : ℕ) : ℤ :=
  A347870.P16417163983135192984.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347870.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347871.P15661038044456868434

`(n+1+A003415(A000203(n+1)))%2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347871.P15661038044456868434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) + A003415 (A000203 (n + 1)).toNat) 2

end

end A347871.P15661038044456868434

noncomputable section

/-- A347871: a(n) = (n+A003415(sigma(n))) mod 2, where A003415 gives the arithmetic derivative of its argument.

Offset 1, canonical program `A347871.P15661038044456868434`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347871 (n : ℕ) : ℤ :=
  A347871.P15661038044456868434.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347871.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347955.P12154340568705559514

`∑{d}[n+1, A319684(#)*A349136((n+1)/#)]`
-/

namespace A347955.P12154340568705559514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A319684 d * A349136 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347955.P12154340568705559514

noncomputable section

/-- A347955: Dirichlet convolution of A003415 (arithmetic derivative) with A003602 (a Kimberling paraphrase).

Offset 1, canonical program `A347955.P12154340568705559514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347955 (n : ℕ) : ℤ :=
  A347955.P12154340568705559514.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347955.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348028.P15680681678257223699

`gcd(A000203(n+1), A003415(n+1))`
-/

namespace A348028.P15680681678257223699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A003415 (n + 1))

end

end A348028.P15680681678257223699

noncomputable section

/-- A348028: Greatest common divisor of A003415 (arithmetic derivative) and sigma, the sum of divisors function.

Offset 1, canonical program `A348028.P15680681678257223699`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348028 (n : ℕ) : ℤ :=
  (A348028.P15680681678257223699.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348028.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348513.P206487317806841830

`n+1-A254503(n+1)`
-/

namespace A348513.P206487317806841830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A254503 (n + 1)

end

end A348513.P206487317806841830

noncomputable section

/-- A348513: Möbius transform of A048146, the sum of non-unitary divisors of n.

Offset 1, canonical program `A348513.P206487317806841830`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A254503, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348513 (n : ℕ) : ℤ :=
  A348513.P206487317806841830.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A254503, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348513.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351572.P4940805872886659141

`A003415(A350388(n+1))`
-/

namespace A351572.P4940805872886659141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A350388 (n + 1)).toNat

end

end A351572.P4940805872886659141

noncomputable section

/-- A351572: Arithmetic derivative of the largest unitary divisor of n that is a square.

Offset 1, canonical program `A351572.P4940805872886659141`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A350388, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351572 (n : ℕ) : ℤ :=
  A351572.P4940805872886659141.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A350388, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351572.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351714.P12398140737547645289

`lt[lcm(n, A116543(n))-n, n]`
-/

namespace A351714.P12398140737547645289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) (A116543 n) : ℤ) - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A351714.P12398140737547645289

noncomputable section

/-- A351714: Lucas-Niven numbers: numbers that are divisible by the number of terms in their minimal (or greedy) representation in terms of the Lucas numbers (A130310).

Offset 1, canonical program `A351714.P12398140737547645289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1993 terms. -/
def A351714 (n : ℕ) : ℤ :=
  (A351714.P12398140737547645289.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1993 terms. -/
def A351714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353493.P11274573970098312358

`A003415(n)%4`
-/

namespace A353493.P11274573970098312358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 n) 4

end

end A353493.P11274573970098312358

noncomputable section

/-- A353493: The arithmetic derivative of n, reduced modulo 4.

Offset 0, canonical program `A353493.P11274573970098312358`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353493 (n : ℕ) : ℤ :=
  A353493.P11274573970098312358.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353493.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353494.P3598383137759262776

`round(gcd(4, A003415(n))/8)`
-/

namespace A353494.P3598383137759262776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.gcd 4 (A003415 n) : ℚ) / 8)

end

end A353494.P3598383137759262776

noncomputable section

/-- A353494: a(n) = 1 if the arithmetic derivative of n is a multiple of 4, otherwise 0.

Offset 0, canonical program `A353494.P3598383137759262776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353494 (n : ℕ) : ℤ :=
  A353494.P3598383137759262776.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353495.P17772211378509351063

`C(A003415(n)+5, 3)%2`
-/

namespace A353495.P17772211378509351063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003415 n + 5).toNat 3 % 2

end

end A353495.P17772211378509351063

noncomputable section

/-- A353495: a(n) = 1 if the arithmetic derivative of n is of the form 4k+2, otherwise 0.

Offset 0, canonical program `A353495.P17772211378509351063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353495 (n : ℕ) : ℤ :=
  (A353495.P17772211378509351063.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353579.P9200688838139276790

`record[A006068(A180200(n))+1]`
-/

namespace A353579.P9200688838139276790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A180200 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353579.P9200688838139276790

noncomputable section

/-- A353579: Numbers in the smallest subset of N containing 1 and closed under the mappings k->2^n + k, k->3*2^{n+1} + k, and k->3*2^{n+2} + k where n = ceiling(log_2(k)).

Offset 1, canonical program `A353579.P9200688838139276790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 714 terms. -/
def A353579 (n : ℕ) : ℤ :=
  A353579.P9200688838139276790.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 714 terms. -/
def A353579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353830.P1157779251727351386

`-A338241(A140263(2*n))`
-/

namespace A353830.P1157779251727351386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A338241 (A140263 (2 * n)).toNat

end

end A353830.P1157779251727351386

noncomputable section

/-- A353830: The positions of nonzero digits in the balanced ternary expansions of n and a(n) are the same, and the k-th rightmost nonzero digit in a(n) equals the product of the k rightmost nonzero digits in n.

Offset 0, canonical program `A353830.P1157779251727351386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1094 terms. -/
def A353830 (n : ℕ) : ℤ :=
  A353830.P1157779251727351386.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1094 terms. -/
def A353830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355003.P5537165438358420567

`gcd(A003415(n+1), A277791(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A355003.P5537165438358420567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 (n + 1)) (A277791 (n + 1))

end

end A355003.P5537165438358420567

noncomputable section

/-- A355003: a(n) = gcd(A003415(n), A277791(n)), where A003415 is the arithmetic derivative and A277791 is the denominator of sum of reciprocals of proper divisors of n.

Offset 1, canonical program `A355003.P5537165438358420567`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A277791, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355003 (n : ℕ) : ℤ :=
  (A355003.P5537165438358420567.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A277791, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355003.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355450.P7145778670325853768

`A355451(1+(n+1)²)`
-/

namespace A355450.P7145778670325853768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355451 (1 + (n + 1) ^ 2)

end

end A355450.P7145778670325853768

noncomputable section

/-- A355450: a(n) = 1 if n is odd and phi(x) = n^2 + 1 has no solutions, otherwise 0.

Offset 1, canonical program `A355450.P7145778670325853768`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355451, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355450 (n : ℕ) : ℤ :=
  A355450.P7145778670325853768.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355451, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355450.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A357073.P15388237282562208061

`A003714(n+1)%(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A357073.P15388237282562208061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003714 (n + 1)) (n + 1 : ℤ)

end

end A357073.P15388237282562208061

noncomputable section

/-- A357073: For n >= 1, a(n) = A003714(n) mod n.

Offset 1, canonical program `A357073.P15388237282562208061`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357073 (n : ℕ) : ℤ :=
  A357073.P15388237282562208061.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357073.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A357316.P2864619349203397894

`A356874(floor(A003714(col(n))*2^(row(n)-col(n)-1)))`
-/

namespace A357316.P2864619349203397894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356874 ⌊(A003714 (SequenceMachineLib.triCol n) : ℚ) * (2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) - 1 : ℤ)⌋.toNat

end

end A357316.P2864619349203397894

noncomputable section

/-- A357316: A distension of the Wythoff array by inclusion of intermediate rows. Square array A(n,k), n >= 0, k >= 0, read by descending antidiagonals. If S is the set such that Sum_{i in S} F_i is the Zeckendorf representation of n then A(n,k) = Sum_{i in S} F_{i+k-2}.

Offset 0, canonical program `A357316.P2864619349203397894`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, A356874, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A357316 (n : ℕ) : ℤ :=
  A357316.P2864619349203397894.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, A356874, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A357316.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359430.P17743289433619034511

`val(gcd(3, A003415(n)), 3)`
-/

namespace A359430.P17743289433619034511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.gcd 3 (A003415 n)) 3

end

end A359430.P17743289433619034511

noncomputable section

/-- A359430: a(n) = 1 if the arithmetic derivative of n is a multiple of 3, otherwise 0.

Offset 0, canonical program `A359430.P17743289433619034511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359430 (n : ℕ) : ℤ :=
  (A359430.P17743289433619034511.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359820.P4426895942293485706

`(n+A003415(n))%2`
-/

namespace A359820.P4426895942293485706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) + A003415 n) 2

end

end A359820.P4426895942293485706

noncomputable section

/-- A359820: a(n) = 1 if n and n' are of different parity, otherwise 0. Here n' stands for the arithmetic derivative of n, A003415(n).

Offset 0, canonical program `A359820.P4426895942293485706`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359820 (n : ℕ) : ℤ :=
  A359820.P4426895942293485706.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359820.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360758.P7102341119995455638

`eq[2, A096501(A003415(n)+1)]`
-/

namespace A360758.P7102341119995455638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (A003415 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A360758.P7102341119995455638

noncomputable section

/-- A360758: Numbers k for which k' - 1 and k' + 1 are twin primes, where the prime denotes the arithmetic derivative.

Offset 1, canonical program `A360758.P7102341119995455638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A360758 (n : ℕ) : ℤ :=
  (A360758.P7102341119995455638.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A360758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362594.P5891847164442960394

`filter[A378767(n+1), A295316(#)]`
-/

namespace A362594.P5891847164442960394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A362594.P5891847164442960394

noncomputable section

/-- A362594: Exponentially odd numbers that are neither squarefree nor prime powers.

Offset 1, canonical program `A362594.P5891847164442960394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5751 terms. -/
def A362594 (n : ℕ) : ℤ :=
  A362594.P5891847164442960394.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5751 terms. -/
def A362594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365170.P4762611898248662452

`∑{d}[n+1, A254503(#)*A295295((n+1)/#)]`
-/

namespace A365170.P4762611898248662452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A254503 d * A295295 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365170.P4762611898248662452

noncomputable section

/-- A365170: The sum of divisors d of n such that gcd(d, n/d) is squarefree.

Offset 1, canonical program `A365170.P4762611898248662452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365170 (n : ℕ) : ℤ :=
  A365170.P4762611898248662452.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365174.P1377516069112288599

`∑{d}[n+1, A254503(#)*A365336((n+1)/#)]`
-/

namespace A365174.P1377516069112288599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A254503 d * A365336 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365174.P1377516069112288599

noncomputable section

/-- A365174: The sum of divisors d of n such that gcd(d, n/d) is an exponentially odd number (A268335).

Offset 1, canonical program `A365174.P1377516069112288599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365174 (n : ℕ) : ℤ :=
  A365174.P1377516069112288599.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368748.P2060391924120103936

`A001223(n+1)-A080101(n+1)-1`
-/

namespace A368748.P2060391924120103936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) - A080101 (n + 1) - 1

end

end A368748.P2060391924120103936

noncomputable section

/-- A368748: a(n) is the number of numbers between prime(n) and prime(n+1) that are not prime powers.

Offset 1, canonical program `A368748.P2060391924120103936`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368748 (n : ℕ) : ℤ :=
  A368748.P2060391924120103936.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368748.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369049.P9666257041072368809

`(n+2)%A003415(n+2)`
-/

namespace A369049.P9666257041072368809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A003415 (n + 2))

end

end A369049.P9666257041072368809

noncomputable section

/-- A369049: a(n) = n mod n', where n' is the arithmetic derivative of n, A003415.

Offset 2, canonical program `A369049.P9666257041072368809`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369049 (n : ℕ) : ℤ :=
  A369049.P9666257041072368809.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369049.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369052.P13766350415687932564

`n-2*A003415(n)`
-/

namespace A369052.P13766350415687932564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A003415 n

end

end A369052.P13766350415687932564

noncomputable section

/-- A369052: a(n) = n - n'*2, where n' is the arithmetic derivative of n, A003415.

Offset 0, canonical program `A369052.P13766350415687932564`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369052 (n : ℕ) : ℤ :=
  A369052.P13766350415687932564.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369052.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369252.P4904178596976423146

`A003415(A046316(n+1))`
-/

namespace A369252.P4904178596976423146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A046316 (n + 1)).toNat

end

end A369252.P4904178596976423146

noncomputable section

/-- A369252: Arithmetic derivative applied to the numbers of the form p*q*r where p,q,r are (not necessarily distinct) odd primes.

Offset 1, canonical program `A369252.P4904178596976423146`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A046316, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369252 (n : ℕ) : ℤ :=
  A369252.P4904178596976423146.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A046316, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369252.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369660.P11962281434868844871

`A369965(A003415(n))`
-/

namespace A369660.P11962281434868844871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369965 (A003415 n).toNat

end

end A369660.P11962281434868844871

noncomputable section

/-- A369660: a(n) = 1 if n' is of the form 4k+2, and n' has an even number of prime factors, otherwise a(n) = 0, where n' stands for the arithmetic derivative of n, A003415.

Offset 0, canonical program `A369660.P11962281434868844871`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A369965, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369660 (n : ℕ) : ℤ :=
  A369660.P11962281434868844871.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A369965, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369660.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369967.P2338115965869939887

`1-A011558(A003415(n))`
-/

namespace A369967.P2338115965869939887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A011558 (A003415 n).toNat

end

end A369967.P2338115965869939887

noncomputable section

/-- A369967: a(n) = 1 if the arithmetic derivative of n is a multiple of 5, otherwise 0.

Offset 0, canonical program `A369967.P2338115965869939887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369967 (n : ℕ) : ℤ :=
  A369967.P2338115965869939887.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370129.P9840769803165545033

`A003415(A002110(col(n))+A002110(row(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A370129.P9840769803165545033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A002110 (SequenceMachineLib.triCol n) + A002110 (SequenceMachineLib.triRow n)).toNat

end

end A370129.P9840769803165545033

noncomputable section

/-- A370129: Triangle read by rows: T(n,k) = A003415(A002110(n)+A002110(k)), 0 <= k <= n; arithmetic derivatives of the sums of two primorial numbers.

Offset 0, canonical program `A370129.P9840769803165545033`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370129 (n : ℕ) : ℤ :=
  A370129.P9840769803165545033.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370129.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370136.P9101358364246055497

`A003415(A370135(n+1))`
-/

namespace A370136.P9101358364246055497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A370135 (n + 1)).toNat

end

end A370136.P9101358364246055497

noncomputable section

/-- A370136: Triangle read by rows: T(n,k) = arithmetic derivative of ((A002110(n) + A002110(k)) / A002110(k)), 1 <= k <= n.

Offset 1, canonical program `A370136.P9101358364246055497`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370136 (n : ℕ) : ℤ :=
  A370136.P9101358364246055497.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370136.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370596.P16435059816555867442

`eq[(-1)^n, A003415(A327491(n))]`
-/

namespace A370596.P16435059816555867442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A327491 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370596.P16435059816555867442

noncomputable section

/-- A370596: Numbers k such that A007814(k) is a prime number.

Offset 1, canonical program `A370596.P16435059816555867442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2073 terms. -/
def A370596 (n : ℕ) : ℤ :=
  (A370596.P16435059816555867442.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2073 terms. -/
def A370596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373364.P8547950682954605811

`gcd(A001414(n+1), A003415(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373364.P8547950682954605811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001414 (n + 1)) (A003415 (n + 1))

end

end A373364.P8547950682954605811

noncomputable section

/-- A373364: a(n) = gcd(A001414(n), A003415(n)), where A001414 is the sum of prime factors with repetition, and A003415 is the arithmetic derivative.

Offset 1, canonical program `A373364.P8547950682954605811`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373364 (n : ℕ) : ℤ :=
  (A373364.P8547950682954605811.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373364.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373480.P17278960438644468592

`A003415(n+2)%A001414(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373480.P17278960438644468592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 (n + 2)) (A001414 (n + 2))

end

end A373480.P17278960438644468592

noncomputable section

/-- A373480: a(n) = A003415(n) mod A001414(n), where A003415 is the arithmetic derivative, and A001414 is the sum of prime factors with multiplicity.

Offset 2, canonical program `A373480.P17278960438644468592`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373480 (n : ℕ) : ℤ :=
  A373480.P17278960438644468592.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373480.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373643.P3675062936320699717

`A001223(n+1)-A061398(n+1)-A080101(n+1)-1`
-/

namespace A373643.P3675062936320699717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) - A061398 (n + 1) - A080101 (n + 1) - 1

end

end A373643.P3675062936320699717

noncomputable section

/-- A373643: Number of k between consecutive primes such that k is neither squarefree nor prime powers.

Offset 1, canonical program `A373643.P3675062936320699717`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061398, A080101, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373643 (n : ℕ) : ℤ :=
  A373643.P3675062936320699717.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061398, A080101, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373643.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375270.P13061720832720025766

`filter[A115975(n+1), A181183(#)]`
-/

namespace A375270.P13061720832720025766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A375270.P13061720832720025766

noncomputable section

/-- A375270: Numbers of the form p^Fibonacci(2*k), where p is a prime and k >= 0.

Offset 1, canonical program `A375270.P13061720832720025766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6558 terms. -/
def A375270 (n : ℕ) : ℤ :=
  A375270.P13061720832720025766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6558 terms. -/
def A375270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379967.P12250939003195279045

`A003415(A003557(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379967.P12250939003195279045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A003557 (n + 1)).toNat

end

end A379967.P12250939003195279045

noncomputable section

/-- A379967: Arithmetic derivative of {n divided by its largest squarefree divisor}: a(n) = A003415(A003557(n)).

Offset 1, canonical program `A379967.P12250939003195279045`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379967 (n : ℕ) : ℤ :=
  A379967.P12250939003195279045.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379967.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382113.P6513657586340795000

`A022290(A006068(A003714(n)))`
-/

namespace A382113.P6513657586340795000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A006068 (A003714 n).toNat).toNat

end

end A382113.P6513657586340795000

noncomputable section

/-- A382113: Gray code transformation of the Zeckendorf representation of n.

Offset 0, canonical program `A382113.P6513657586340795000`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, A006068, A022290, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382113 (n : ℕ) : ℤ :=
  A382113.P6513657586340795000.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, A006068, A022290, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382113.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391585.P14461622973833260868

`∪[A003714(n), A048717(n)]`
-/

namespace A391585.P14461622973833260868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048717 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391585.P14461622973833260868

noncomputable section

/-- A391585: Numbers k such that 3*k = A048720(m,k) for some m, where A048720 is carryless base-2 multiplication.

Offset 1, canonical program `A391585.P14461622973833260868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391585 (n : ℕ) : ℤ :=
  (A391585.P14461622973833260868.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337688.P213648959849896231

`lt[1, A337690(n+1)]+1`
-/

namespace A337688.P213648959849896231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337690 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A337688.P213648959849896231

noncomputable section

/-- A337688: Numbers divisible by 2 or more primitive nondeficient numbers.

Offset 1, canonical program `A337688.P213648959849896231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A337688 (n : ℕ) : ℤ :=
  (A337688.P213648959849896231.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A337688.provenance : SequenceMachineLib.Provenance := .conjectured

